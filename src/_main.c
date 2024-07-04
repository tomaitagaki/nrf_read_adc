#include <zephyr/kernel.h>
#include <zephyr/bluetooth/bluetooth.h>
#include <zephyr/bluetooth/hci.h>
#include <zephyr/sys/printk.h>
#include <zephyr/types.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>

#define DEVICE_NAME "MilliMobile"
#define DEVICE_NAME_LEN (sizeof(DEVICE_NAME) - 1)

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

static bool parse_ad(struct bt_data *data, void *user_data)
{
    if (data->type == BT_DATA_MANUFACTURER_DATA) {
        printk("Manufacturer data: ");
        for (int i = 0; i < data->data_len; i++) {
            printk("%02x ", data->data[i]);
        }
        printk("\n");
    }

    return true;
}

static void scan_cb(const struct bt_le_scan_recv_info *info, struct net_buf_simple *buf)
{
    char name[DEVICE_NAME_LEN + 1];
    memset(name, 0, sizeof(name));

    /* Check if the packet has the desired device name */
    bt_data_parse(buf, parse_ad, buf);

    if (strncmp(name, DEVICE_NAME, DEVICE_NAME_LEN) == 0) {
        printk("Found device: %s\n", name);
    }
}

static struct bt_le_scan_cb scan_cb_data = {
    .recv = scan_cb,
};

int main(void)
{
    int err;

    err = bt_enable(bt_ready);
    if (err) {
        printk("Bluetooth init failed (err %d)\n", err);
        return 1;
    }

    bt_le_scan_cb_register(&scan_cb_data);

    while (1) {
        k_sleep(K_SECONDS(1));
    }

    return 0;
}
