add_custom_target(hci_ipc_shared_property_target)
add_custom_target(CPUNET_shared_property_target)
set_property(TARGET hci_ipc_shared_property_target  PROPERTY KERNEL_HEX_NAME;zephyr.hex)
set_property(TARGET hci_ipc_shared_property_target  PROPERTY ZEPHYR_BINARY_DIR;/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/hci_ipc/zephyr)
set_property(TARGET hci_ipc_shared_property_target  PROPERTY KERNEL_ELF_NAME;zephyr.elf)
set_property(TARGET hci_ipc_shared_property_target  PROPERTY BUILD_BYPRODUCTS;/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/hci_ipc/zephyr/zephyr.hex;/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/hci_ipc/zephyr/zephyr.elf)
set_property(TARGET CPUNET_shared_property_target  PROPERTY PM_DOMAIN_PARTITIONS;/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/hci_ipc/partitions_CPUNET.yml)
set_property(TARGET CPUNET_shared_property_target  PROPERTY PM_DOMAIN_REGIONS;/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/hci_ipc/regions_CPUNET.yml)
set_property(TARGET CPUNET_shared_property_target  PROPERTY PM_DOMAIN_HEADER_FILES;/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/hci_ipc/zephyr/include/generated/pm_config.h)
set_property(TARGET CPUNET_shared_property_target  PROPERTY PM_DOMAIN_IMAGES;CPUNET:hci_ipc)
set_property(TARGET CPUNET_shared_property_target  PROPERTY PM_HEX_FILE;/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/hci_ipc/zephyr/merged_CPUNET.hex)
set_property(TARGET CPUNET_shared_property_target  PROPERTY PM_DOTCONF_FILES;/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/hci_ipc/pm_CPUNET.config)
set_property(TARGET CPUNET_shared_property_target  PROPERTY PM_APP_HEX;/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/hci_ipc/zephyr/app.hex)
set_property(TARGET hci_ipc_shared_property_target APPEND PROPERTY BUILD_BYPRODUCTS;/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/hci_ipc/zephyr/merged_CPUNET.hex)
