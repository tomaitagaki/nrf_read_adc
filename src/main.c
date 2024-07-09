#include <zephyr/kernel.h>
#include <zephyr/bluetooth/bluetooth.h>
#include <zephyr/bluetooth/hci.h>
#include <zephyr/sys/printk.h>
#include <zephyr/types.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>

#define DEVICE_NAME "MM"
#define DEVICE_NAME_LEN (sizeof(DEVICE_NAME) - 1)

static bool parse_ad(struct bt_data *data, void *user_data)
{
    struct net_buf_simple *ad = (struct net_buf_simple *)user_data;
    char name[DEVICE_NAME_LEN + 1];

    if (data->type == BT_DATA_NAME_COMPLETE || data->type == BT_DATA_NAME_SHORTENED) {
        memset(name, 0, sizeof(name));
        memcpy(name, data->data, MIN(data->data_len, DEVICE_NAME_LEN));
        if (strncmp(name, DEVICE_NAME, DEVICE_NAME_LEN) == 0) {
            printk("Found device: %s\n", name);
            while (ad->len > 0) {
                uint8_t len = net_buf_simple_pull_u8(ad);
                uint8_t type = net_buf_simple_pull_u8(ad);
                
                if (ad->len < len - 1) {
                    printk("Malformed advertising data: ");
                    for (int i = 0; i < ad->len; i++) {
                        printk("%02x ", ad->data[i]);
                    }
                    printk("\nlength: %d\n", len);
                    return false;
                }

                const uint8_t *data = ad->data;
                ad->data += len - 1;
                ad->len -= len - 1;

                if (type == BT_DATA_MANUFACTURER_DATA) {
                    printk("Manufacturer data: ");
                    for (int i = 0; i < len - 1; i++) {
                        printk("%02x ", data[i]);
                    }
                    printk("\n");
                }
            }
            return false; // Stop further parsing
        }
    }
    return true;
}

static void scan_cb(const struct bt_le_scan_recv_info *info, struct net_buf_simple *buf)
{
    bt_data_parse(buf, parse_ad, buf);
}

static struct bt_le_scan_cb scan_cb_data = {
    .recv = scan_cb,
};

static void bt_ready(int err)
{
    if (err) {
        printk("Bluetooth init failed (err %d)\n", err);
        return;
    }

    printk("Bluetooth initialized\n");

    /* Start scanning */
    err = bt_le_scan_start(BT_LE_SCAN_PASSIVE, NULL);
    if (err) {
        printk("Scanning failed to start (err %d)\n", err);
        return;
    }

    printk("Scanning started\n");
}

void main(void)
{
    int err;

    err = bt_enable(bt_ready);
    if (err) {
        printk("Bluetooth init failed (err %d)\n", err);
        return;
    }

    bt_le_scan_cb_register(&scan_cb_data);

    while (1) {
        k_sleep(K_SECONDS(1));
    }
}
