# Install script for directory: /opt/nordic/ncs/v2.6.0/zephyr

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/opt/nordic/ncs/toolchains/580e4ef81c/opt/zephyr-sdk/arm-zephyr-eabi/bin/arm-zephyr-eabi-objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/zephyr/arch/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/zephyr/lib/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/zephyr/soc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/zephyr/boards/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/zephyr/subsys/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/zephyr/drivers/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/modules/nrf/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/modules/mcuboot/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/modules/mbedtls/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/modules/trusted-firmware-m/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/modules/cjson/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/modules/azure-sdk-for-c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/modules/cirrus-logic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/modules/openthread/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/modules/memfault-firmware-sdk/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/modules/canopennode/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/modules/chre/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/modules/lz4/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/modules/nanopb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/modules/zscilib/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/modules/cmsis/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/modules/cmsis-dsp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/modules/cmsis-nn/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/modules/fatfs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/modules/hal_nordic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/modules/st/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/modules/hal_wurthelektronik/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/modules/libmetal/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/modules/liblc3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/modules/littlefs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/modules/loramac-node/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/modules/lvgl/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/modules/mipi-sys-t/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/modules/nrf_hw_models/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/modules/open-amp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/modules/picolibc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/modules/segger/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/modules/tinycrypt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/modules/uoscore-uedhoc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/modules/zcbor/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/modules/nrfxlib/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/modules/connectedhomeip/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/zephyr/kernel/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/zephyr/cmake/flash/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/zephyr/cmake/usage/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/tomaitagaki/Documents/GitHub/nrf_read_adc/ble_adv_sniffer/sniffer/zephyr/cmake/reports/cmake_install.cmake")
endif()

