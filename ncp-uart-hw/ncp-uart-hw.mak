# Architecture directories
ARCHITECTURE_DIR = efr32
BUILD_DIR = build
OUTPUT_DIR = $(BUILD_DIR)/$(ARCHITECTURE_DIR)
LST_DIR = lst
PROJECTNAME = ncp-uart-hw

# Stack and submodule directories
GLOBAL_BASE_DIR     = ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/..

SOURCE_FILES = \
../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emdrv/dmadrv/src/dmadrv.c \
../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emdrv/gpiointerrupt/src/gpiointerrupt.c \
../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emdrv/rtcdrv/src/rtcdriver.c \
../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emdrv/sleep/src/sleep.c \
../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emdrv/tempdrv/src/tempdrv.c \
../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emdrv/ustimer/src/ustimer.c \
../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emlib/src/em_adc.c \
../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emlib/src/em_cmu.c \
../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emlib/src/em_core.c \
../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emlib/src/em_emu.c \
../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emlib/src/em_gpio.c \
../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emlib/src/em_i2c.c \
../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emlib/src/em_ldma.c \
../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emlib/src/em_leuart.c \
../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emlib/src/em_msc.c \
../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emlib/src/em_prs.c \
../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emlib/src/em_rmu.c \
../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emlib/src/em_rtcc.c \
../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emlib/src/em_se.c \
../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emlib/src/em_system.c \
../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emlib/src/em_timer.c \
../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emlib/src/em_usart.c \
../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emlib/src/em_wdog.c \
../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/assert-crash-handlers.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/bootloader-interface-standalone.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/bootloader-interface.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/cstartup-common.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/diagnostic.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/faults-v7m.s79 \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/hal-config-gpio.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/hal-config.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/isr-stubs.s79 \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/led.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/long-token.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/mfg-token.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/micro-common.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/micro.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/mpu.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/sleep-efm32.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/token.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/generic/button-stub.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/generic/crc.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/generic/endian.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/generic/mem-util.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/generic/random.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/generic/token-def.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/plugin/adc/adc-efr32.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/plugin/antenna-stub/antenna-stub.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/plugin/buzzer-stub/buzzer-stub.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/plugin/debug-jtag/debug-jtag-efr32.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/plugin/debug/rtt/SEGGER_RTT.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/plugin/serial/cortexm/efm32/com.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/plugin/serial/ember-printf.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/plugin/serial/serial.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/plugin/sim-eeprom2/sim-eeprom2.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/bootloader/api/btl_interface.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/emdrv/uartdrv/src/uartdrv.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154/coexistence-802154.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154/coulomb-counter-802154.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/em260/command-handlers-secure-ezsp-stub.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/em260/em260-common.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/em260/serial-interface-uart.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/stack/config/ember-configuration.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/stack/framework/ccm-star.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/stack/framework/strong-random-api.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/aes.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/aesni.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/arc4.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/asn1parse.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/asn1write.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/base64.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/bignum.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/blowfish.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/camellia.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/ccm.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/certs.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/cipher.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/cipher_wrap.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/cmac.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/ctr_drbg.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/debug.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/des.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/dhm.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/ecdh.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/ecdsa.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/ecjpake.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/ecp.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/ecp_curves.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/entropy.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/entropy_poll.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/error.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/gcm.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/havege.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/hmac_drbg.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/md.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/md2.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/md4.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/md5.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/md_wrap.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/memory_buffer_alloc.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/net_sockets.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/oid.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/padlock.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/pem.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/pk.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/pk_wrap.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/pkcs11.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/pkcs12.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/pkcs5.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/pkparse.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/pkwrite.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/ripemd160.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/rsa.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/rsa_internal.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/sha1.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/sha256.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/sha512.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/ssl_cache.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/ssl_ciphersuites.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/ssl_cli.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/ssl_cookie.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/ssl_srv.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/ssl_ticket.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/ssl_tls.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/threading.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/timing.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/version.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/version_features.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/x509.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/x509_create.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/x509_crl.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/x509_crt.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/x509_csr.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/x509write_crt.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/x509write_csr.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/xtea.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/sl_crypto/src/aes_aes.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/sl_crypto/src/crypto_aes.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/sl_crypto/src/crypto_ble.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/sl_crypto/src/crypto_ecp.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/sl_crypto/src/crypto_management.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/sl_crypto/src/crypto_sha.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/sl_crypto/src/cryptoacc_aes.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/sl_crypto/src/cryptoacc_ccm.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/sl_crypto/src/cryptoacc_cmac.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/sl_crypto/src/cryptoacc_ecp.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/sl_crypto/src/cryptoacc_gcm.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/sl_crypto/src/cryptoacc_management.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/sl_crypto/src/cryptoacc_sha.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/sl_crypto/src/cryptoacc_trng.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/sl_crypto/src/entropy_adc.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/sl_crypto/src/entropy_rail.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/sl_crypto/src/radioaes.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/sl_crypto/src/radioaes_aes.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/sl_crypto/src/radioaes_ble.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/sl_crypto/src/se_aes.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/sl_crypto/src/se_ccm.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/sl_crypto/src/se_cmac.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/sl_crypto/src/se_ecp.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/sl_crypto/src/se_jpake.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/sl_crypto/src/se_management.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/sl_crypto/src/se_sha.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/sl_crypto/src/se_trng.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/sl_crypto/src/shax.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/sl_crypto/src/trng.c \
  ezsp-command-handler.c \
  ncp-bookkeeping.c \
  ncp-callback-stubs.c \
  ncp-callbacks.c \
  ncp-events.c \


LIB_FILES = \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/radio/rail_lib/autogen/librail_release/librail_efr32xg12_gcc_release.a \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/build/binding-table-library-cortexm3-gcc-efr32mg12p-rail/binding-table-library.a \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/build/cbke-163k1-stub-library-cortexm3-gcc-efr32mg12p-rail/cbke-163k1-stub-library.a \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/build/cbke-283k1-stub-library-cortexm3-gcc-efr32mg12p-rail/cbke-283k1-stub-library.a \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/build/cbke-library-dsa-sign-stub-cortexm3-gcc-efr32mg12p-rail/cbke-library-dsa-sign-stub.a \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/build/cbke-library-dsa-verify-283k1-stub-cortexm3-gcc-efr32mg12p-rail/cbke-library-dsa-verify-283k1-stub.a \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/build/cbke-library-dsa-verify-stub-cortexm3-gcc-efr32mg12p-rail/cbke-library-dsa-verify-stub.a \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/build/cbke-stub-library-cortexm3-gcc-efr32mg12p-rail/cbke-stub-library.a \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/build/debug-basic-library-cortexm3-gcc-efr32mg12p-rail/debug-basic-library.a \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/build/debug-extended-library-cortexm3-gcc-efr32mg12p-rail/debug-extended-library.a \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/build/em260-concentrator-library-cortexm3-gcc-efr32mg12p-rail/em260-concentrator-library.a \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/build/em260-uart-util-library-cortexm3-gcc-efr32mg12p-rail/em260-uart-util-library.a \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/build/em260-xncp-stub-library-cortexm3-gcc-efr32mg12p-rail/em260-xncp-stub-library.a \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/build/end-device-bind-library-cortexm3-gcc-efr32mg12p-rail/end-device-bind-library.a \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/build/gp-library-cortexm3-gcc-efr32mg12p-rail/gp-library.a \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/build/hal-library-cortexm3-gcc-efr32mg12p-rail/hal-library.a \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/build/install-code-library-cortexm3-gcc-efr32mg12p-rail/install-code-library.a \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/build/mfglib-library-cortexm3-gcc-efr32mg12p-rail/mfglib-library.a \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/build/multi-network-stub-library-cortexm3-gcc-efr32mg12p-rail/multi-network-stub-library.a \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/build/ncp-ash-buffers-rts-cts-library-cortexm3-gcc-efr32mg12p-rail/ncp-ash-buffers-rts-cts-library.a \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/build/ncp-binding-library-cortexm3-gcc-efr32mg12p-rail/ncp-binding-library.a \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/build/ncp-cbke-library-cortexm3-gcc-efr32mg12p-rail/ncp-cbke-library.a \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/build/ncp-gp-library-cortexm3-gcc-efr32mg12p-rail/ncp-gp-library.a \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/build/ncp-mfglib-library-cortexm3-gcc-efr32mg12p-rail/ncp-mfglib-library.a \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/build/ncp-pro-library-cortexm3-gcc-efr32mg12p-rail/ncp-pro-library.a \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/build/ncp-security-library-cortexm3-gcc-efr32mg12p-rail/ncp-security-library.a \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/build/ncp-zll-library-cortexm3-gcc-efr32mg12p-rail/ncp-zll-library.a \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/build/packet-validate-library-cortexm3-gcc-efr32mg12p-rail/packet-validate-library.a \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/build/security-library-core-cortexm3-gcc-efr32mg12p-rail/security-library-core.a \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/build/security-library-link-keys-cortexm3-gcc-efr32mg12p-rail/security-library-link-keys.a \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/build/sim-eeprom2-1to2-upgrade-stub-library-cortexm3-gcc-efr32mg12p-rail/sim-eeprom2-1to2-upgrade-stub-library.a \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/build/sim-eeprom2-library-cortexm3-gcc-efr32mg12p-rail/sim-eeprom2-library.a \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/build/zigbee-pro-stack-cortexm3-gcc-efr32mg12p-rail/zigbee-pro-stack.a \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/build/zigbee-r22-support-stub-library-cortexm3-gcc-efr32mg12p-rail/zigbee-r22-support-stub-library.a \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/build/zll-library-cortexm3-gcc-efr32mg12p-rail/zll-library.a \


CDEFS = -DSTA_GECKO_INFO_PAGE_BTL \
-DEFR32MG12P432F1024GL125 \
-DEFR32MG12P \
-DCORTEXM3 \
-DCORTEXM3_EFR32 \
-DCORTEXM3_EFR32_MICRO \
-DCORTEXM3_EFM32_MICRO \
-DEFR32_SERIES1_CONFIG2_MICRO \
-DCONFIGURATION_HEADER=\"ncp-configuration.h\" \
-DPLATFORM_HEADER=\"../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/compiler/gcc.h\" \
-DPSSTORE_SIZE=0" \
-DLONGTOKEN_SIZE=0" \
-DLOCKBITS_IN_MAINFLASH_SIZE=0" \
  -DHAL_CONFIG=1 \
  -DEMBER_AF_USE_HWCONF \
  -DEMBER_AF_NCP \
  -DEMBER_STACK_ZIGBEE \
  -DUSE_SIMEE2 \
  -DEZSP_UART \
  -DNO_USB \
  -DMBEDTLS_CONFIG_FILE=\"mbedtls-config-generated.h\" \
  -DEMLIB_USER_CONFIG \
  -DEMBER_SERIAL1_MODE=EMBER_SERIAL_BUFFER \
  -DEMBER_SERIAL1_TX_QUEUE_SIZE=2 \
  -DEMBER_SERIAL1_RX_QUEUE_SIZE=64 \
  -DEMBER_SERIAL1_RTSCTS \
  -DEMBER_SERIAL0_MODE=EMBER_SERIAL_FIFO \
  -DEMBER_SERIAL0_TX_QUEUE_SIZE=64 \
  -DEMBER_SERIAL0_RX_QUEUE_SIZE=64 \
  -DAPPLICATION_TOKEN_HEADER=\"ncp-token.h\" \
  -DAPPLICATION_MFG_TOKEN_HEADER=\"ncp-mfg-token.h\" \
  -DMBEDTLS_DEVICE_ACCELERATION_CONFIG_FILE=\"configs/config-device-acceleration.h\" \
  -DMBEDTLS_DEVICE_ACCELERATION_CONFIG_APP_FILE=\"config-device-acceleration-app.h\" \
  -DPHY_RAIL=1 \


ASMDEFS = -DSTA_GECKO_INFO_PAGE_BTL \
-DEFR32MG12P432F1024GL125 \
-DEFR32MG12P \
-DCORTEXM3 \
-DCORTEXM3_EFR32 \
-DCORTEXM3_EFR32_MICRO \
-DCORTEXM3_EFM32_MICRO \
-DEFR32_SERIES1_CONFIG2_MICRO \
-DCONFIGURATION_HEADER=\"ncp-configuration.h\" \
-DPLATFORM_HEADER=\"../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/compiler/gcc.h\" \
-DPSSTORE_SIZE=0" \
-DLONGTOKEN_SIZE=0" \
-DLOCKBITS_IN_MAINFLASH_SIZE=0" \
  -DHAL_CONFIG=1 \
  -DEMBER_AF_USE_HWCONF \
  -DEMBER_AF_NCP \
  -DEMBER_STACK_ZIGBEE \
  -DUSE_SIMEE2 \
  -DEZSP_UART \
  -DNO_USB \
  -DMBEDTLS_CONFIG_FILE=\"mbedtls-config-generated.h\" \
  -DEMLIB_USER_CONFIG \
  -DEMBER_SERIAL1_MODE=EMBER_SERIAL_BUFFER \
  -DEMBER_SERIAL1_TX_QUEUE_SIZE=2 \
  -DEMBER_SERIAL1_RX_QUEUE_SIZE=64 \
  -DEMBER_SERIAL1_RTSCTS \
  -DEMBER_SERIAL0_MODE=EMBER_SERIAL_FIFO \
  -DEMBER_SERIAL0_TX_QUEUE_SIZE=64 \
  -DEMBER_SERIAL0_RX_QUEUE_SIZE=64 \
  -DAPPLICATION_TOKEN_HEADER=\"ncp-token.h\" \
  -DAPPLICATION_MFG_TOKEN_HEADER=\"ncp-mfg-token.h\" \
  -DMBEDTLS_DEVICE_ACCELERATION_CONFIG_FILE=\"configs/config-device-acceleration.h\" \
  -DMBEDTLS_DEVICE_ACCELERATION_CONFIG_APP_FILE=\"config-device-acceleration-app.h\" \
  -DPHY_RAIL=1 \


CINC = -I./ \
-I$(ARM_IAR7_DIR)/ARM/INC \
-I..\..\..\app\SimplicityStudio_v4\developer\sdks\gecko_sdk_suite\v2.6 \
-I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/ncp \
-I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/ncp/../.. \
-I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/ncp/../../stack \
-I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/ncp/../util \
-I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal \
-I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/plugin \
-I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/.. \
-I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32 \
-I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/config \
-I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/efr32 \
-I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../CMSIS/Include \
-I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../Device/SiliconLabs-Restricted/efr32mg12p/Include \
-I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../Device/SiliconLabs/efr32mg12p/Include \
-I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emdrv/common/inc \
-I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emdrv/config \
-I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emdrv/dmadrv/inc \
-I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emdrv/gpiointerrupt/inc \
-I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emdrv/rtcdrv/inc \
-I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emdrv/sleep/inc \
-I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emdrv/spidrv/inc \
-I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emdrv/tempdrv/inc \
-I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emdrv/uartdrv/inc \
-I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emdrv/ustimer/inc \
-I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emlib/inc \
-I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../middleware/glib \
-I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../middleware/glib/glib \
-I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../radio/rail_lib/plugin \
-I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../halconfig/inc/hal-config \
-I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6 \
-I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/halconfig/inc/hal-config \
-I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/hardware/module/config \
-I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/hardware/kit/common/halconfig \
-I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/hardware/kit/common/bsp \
  -I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/bootloader \
  -I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/radio/rail_lib/chip/efr32/efr32xg1x \
  -I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/radio/rail_lib/common \
  -I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/radio/rail_lib/plugin/coexistence/common \
  -I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/radio/rail_lib/plugin/coexistence/hal/efr32 \
  -I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154 \
  -I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/radio/rail_lib/protocol/ble \
  -I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/radio/rail_lib/protocol/ieee802154 \
  -I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/radio/rail_lib/protocol/zwave \
  -I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/plugin/plugin-common/mbedtls \
  -I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls \
  -I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/include \
  -I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/include/mbedtls \
  -I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/sl_crypto/include \
  -Ihal-config \


TARGET = ncp-uart-hw

CSOURCES = $(filter %.c, $(SOURCE_FILES))
ASMSOURCES = $(filter %.s79, $(SOURCE_FILES))
ASMSOURCES2 = $(filter %.s, $(SOURCE_FILES))
ASMSOURCES3 = $(filter %.S, $(SOURCE_FILES))

COBJS = $(addprefix $(OUTPUT_DIR)/,$(CSOURCES:.c=.o))
ASMOBJS = $(addprefix $(OUTPUT_DIR)/,$(ASMSOURCES:.s79=.o))
ASMOBJS2 = $(addprefix $(OUTPUT_DIR)/,$(ASMSOURCES2:.s=.o))
ASMOBJS3 = $(addprefix $(OUTPUT_DIR)/,$(ASMSOURCES3:.S=.o))

OUTPUT_DIRS = $(sort $(dir $(COBJS)) $(dir $(ASMOBJS)) $(dir $(ASMOBJS2)) $(dir $(ASMOBJS3)))

ARCHITECTUREID = efr32~family[m]~series[1]~device_configuration[2]~performance[p]~radio[432]~flash[1024k]~temp[g]~package[l]~pins[125]~!module+brd4161a+gcc

# GNU ARM compiler
ifeq ($(findstring +gcc,$(ARCHITECTUREID)), +gcc)
$(info GCC Build)
	# Add linker circular reference as the order of objects may matter for any libraries used
	GROUP_START =-Wl,--start-group
	GROUP_END =-Wl,--end-group

	CCFLAGS = -g3 \
    -gdwarf-2 \
    -mcpu=cortex-m4 \
    -mthumb \
    -std=gnu99 \
    -Os  \
    -Wall  \
    -c  \
    -fmessage-length=0  \
    -ffunction-sections  \
    -fdata-sections  \
    -mfpu=fpv4-sp-d16  \
    -mfloat-abi=softfp \
	$(CDEFS) \
	$(CINC) \

	ASMFLAGS = -c \
	-g3 \
	-gdwarf-2 \
	-mcpu=cortex-m4 \
	-mthumb \
	-c \
	-x assembler-with-cpp \
	$(CINC) \
	$(ASMDEFS)

	LDFLAGS = -g3 \
	-gdwarf-2 \
	-mcpu=cortex-m4 \
	-mthumb -T "/home/shan/app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/gcc-cfg.ld" \
	-L"$(GLOBAL_BASE_DIR)/hal/micro/cortexm3/" \
	-Xlinker --defsym="SIMEEPROM_SIZE=36864" \
	-Xlinker --defsym="PSSTORE_SIZE=0" \
	-Xlinker --defsym="LONGTOKEN_SIZE=0" \
	-Xlinker --defsym="LOCKBITS_IN_MAINFLASH_SIZE=0" \
	-Xlinker --defsym="FLASH_SIZE=1048576" \
	-Xlinker --defsym="RAM_SIZE=262144" \
	-Xlinker --defsym="FLASH_PAGE_SIZE=2048" \
	-Xlinker --defsym="STA_GECKO_INFO_PAGE_BTL=1" \
	-Xlinker --defsym="EMBER_MALLOC_HEAP_SIZE=0" \
	-Xlinker --defsym="HEADER_SIZE=256" \
	-Xlinker --gc-sections \
	-Xlinker -Map="$(PROJECTNAME).map" \
	-mfpu=fpv4-sp-d16 \
	-mfloat-abi=softfp --specs=nano.specs -u _printf_float \
	-Wl,--start-group -lgcc -lc -lnosys   -Wl,--end-group

	ARCHFLAGS = r

	ELFTOOLFLAGS_BIN = -O binary
	ELFTOOLFLAGS_HEX = -O ihex
	ELFTOOLFLAGS_S37 = -O srec

	ifeq ($(OS),Windows_NT)
		ARCH = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc-ar.exe
		AS = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc.exe
		CC = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc.exe
		ELFTOOL = $(ARM_GNU_DIR)/bin/arm-none-eabi-objcopy.exe
		LD = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc.exe
	else
		ARCH = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc-ar
		AS = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc
		CC = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc
		ELFTOOL = $(ARM_GNU_DIR)/bin/arm-none-eabi-objcopy
		LD = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc
	endif

endif

# IAR 7.xx toolchain
ifeq ($(findstring +iar,$(ARCHITECTUREID)), +iar)
$(info IAR Build)

	# IAR is not sensitive to linker lib order thus no groups needed.
	GROUP_START =
	GROUP_END =
	CINC += -I$(ARM_IAR6_DIR)/ARM/INC

	ifndef ARM_IAR7_DIR
	$(error ARM_IAR7_DIR is not set. Please define ARM_IAR7_DIR pointing to your IAR 7.xx installation folder.)
	endif

	CCFLAGS = --cpu=cortex-m3 \
	--cpu_mode=thumb \
	--diag_suppress=Pa050 \
	-e \
	--endian=little \
	--fpu=none \
	--no_path_in_file_macros \
	--separate_cluster_for_initialized_variables \
	--dlib_config=$(ARM_IAR7_DIR)/ARM/inc/c/DLib_Config_Normal.h \
	--debug \
	--dependencies=m $*.d \
	-Ohz \
	$(CDEFS) \
	$(CINC)

	ASMFLAGS = --cpu cortex-M3 \
	--fpu None \
	-s+ \
	"-M<>" \
	-w+ \
	-t2 \
	-r \
	$(CINC) \
	$(ASMDEFS)

	LDFLAGS = --entry __iar_program_start \
	--diag_suppress=Lp012 \
	--config /home/shan/app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/iar-cfg.icf \
	--config_def STA_GECKO_INFO_PAGE_BTL=1 \
	--config_def EMBER_MALLOC_HEAP_SIZE=0

	ARCH = $(JAMEXE_PREFIX) $(ARM_IAR7_DIR)/arm/bin/iarchive.exe
	AS = $(JAMEXE_PREFIX) $(ARM_IAR7_DIR)/arm/bin/iasmarm.exe
	CC = $(JAMEXE_PREFIX) $(ARM_IAR7_DIR)/arm/bin/iccarm.exe
	ELFTOOL = $(JAMEXE_PREFIX) $(ARM_IAR7_DIR)/arm/bin/ielftool.exe
	LD = $(JAMEXE_PREFIX) $(ARM_IAR7_DIR)/arm/bin/ilinkarm.exe

	# No archiver arguments needed for IAR.
	ARCHFLAGS =

	ELFTOOLFLAGS_BIN = --bin
	ELFTOOLFLAGS_HEX = --ihex
	ELFTOOLFLAGS_S37 = --srec --srec-s3only

endif

.PHONY: all clean PROLOGUE

all: PROLOGUE $(OUTPUT_DIRS) $(COBJS) $(ASMOBJS) $(ASMOBJS2) $(ASMOBJS3) $(LIB_FILES)
	@echo 'Linking...'
	@$(LD) $(GROUP_START) $(LDFLAGS) $(COBJS) $(ASMOBJS) $(ASMOBJS2) $(ASMOBJS3) $(LIB_FILES) $(GROUP_END) -o $(OUTPUT_DIR)/$(TARGET).out
	@$(ELFTOOL) $(OUTPUT_DIR)/$(TARGET).out $(ELFTOOLFLAGS_BIN) $(OUTPUT_DIR)/$(TARGET).bin
	@$(ELFTOOL) $(OUTPUT_DIR)/$(TARGET).out $(ELFTOOLFLAGS_HEX) $(OUTPUT_DIR)/$(TARGET).hex
	@$(ELFTOOL) $(OUTPUT_DIR)/$(TARGET).out $(ELFTOOLFLAGS_S37) $(OUTPUT_DIR)/$(TARGET).s37
	@echo 'Done.'

PROLOGUE:
#	@echo $(COBJS)
#	@echo $(ASMOBJS)
#	@echo $(ASMOBJS2)

$(OUTPUT_DIRS):
	@mkdir -p $@

$(COBJS): %.o:
	@echo 'Building $(notdir $(@:%.o=%.c))...'
	@$(CC) $(CCFLAGS) -o $@ $(filter %$(@:$(OUTPUT_DIR)/%.o=%.c),$(CSOURCES)) > /dev/null \

$(ASMOBJS): %.o:
	@echo 'Building $(notdir $(@:%.o=%.s79))...'
	@$(AS) $(ASMFLAGS) -o $@ $(filter %$(@:$(OUTPUT_DIR)/%.o=%.s79),$(ASMSOURCES)) > /dev/null

$(ASMOBJS2): %.o:
	@echo 'Building $(notdir $(@:%.o=%.s))...'
	@$(AS) $(ASMFLAGS) -o $@ $(filter %$(@:$(OUTPUT_DIR)/%.o=%.s),$(ASMSOURCES2)) > /dev/null

$(ASMOBJS3): %.o:
	@echo 'Building $(notdir $(@:%.o=%.S))...'
	@$(AS) $(ASMFLAGS) -o $@ $(filter %$(@:$(OUTPUT_DIR)/%.o=%.S),$(ASMSOURCES3)) > /dev/null

clean:
	$(RM) -r $(COBJS)
	$(RM) -r $(ASMOBJS)
	$(RM) -r $(ASMOBJS2)
	$(RM) -r $(OUTPUT_DIR)
