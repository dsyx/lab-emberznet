# This file was generated by Simplicity Studio from the following template:
#   app/esf_common/template/unix/Makefile
# Please do not edit it directly.

# This Makefile defines how to build a unix host application connected to an
# Ember NCP EZSP device.  This also works for Windows machines running
# Cygwin.

# Variables

# If using a different compiler than GCC, you can create a makefile
# that overrides the following variables.  
#   COMPILER - Compiler binary path
#   LINKER - Linker binary path
#   ARCHIVE - Optional archive tool, only necessary for building a library.
#     Must also set GENERATE_LIBRARY := 1 in your makefile.
#   COMPILER_INCLUDES - Any additional compiler includes each prefixed with -I
#   COMPILER_DEFINES - Any additional compiler defines each prefixed with -D
#   COMPILER_FLAGS - The set of compiler flags (not including dependencies)
#   LINKER_FLAGS - The set of linker flags
#   ARCHIVE_FLAGS - The set of archive tool flags.
#   DEPENDENCY_FLAGS - The set of dependency generation flags used to generate
#     dependencies at the same time compilation is executed.
#   DEPENDENCY_POST_PROCESS - An optional post processing step for massaging
#     generated dependencies.  Only necessary when using a compiler on the 
#     non-native platform (e.g. Windows compiler on Linux)
#   PLATFORM_HEADER_FILE - The header file defining the basic int8u, int32u,
#     and other typedefs and platform elements.
#   ARCHIVE_EXTENSION - The file extension for archives if not using the standard
#     .a file extension.
#
# Then pass the makefile to this one on the command line with:
#   "make -C app/builder/Z3GatewayHost INCLUDE_MAKEFILE=my-custom.mak"
#   or 
#   "cd app/builder/Z3GatewayHost; make INCLUDE_MAKEFILE=my-custom.mak"
#

ifdef INCLUDE_MAKEFILE
  include $(INCLUDE_MAKEFILE)
endif  

COMPILER ?= gcc
LINKER   ?= gcc
ARCHIVE  ?= ar
STD      ?= gnu99

ARCHIVE_EXTENSION ?= .a

CC = $(COMPILER)
LD = $(LINKER)
SHELL = /bin/sh

ifneq ($(CURDIR),$(shell dirname '$(abspath $(lastword $(MAKEFILE_LIST)))'))
$(error This makefile should only be invoked under its current directory ($(shell dirname '$(abspath $(lastword $(MAKEFILE_LIST)))')))
endif

COMPILER_INCLUDES ?= 

INCLUDES= -I./ \
  $(COMPILER_INCLUDES) \
  -I./../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6 \
  -I./../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework \
  -I./../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/../.. \
  -I./../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/../../stack \
  -I./../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/../util \
  -I./../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/../util/common \
  -I./../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/../util/ezsp \
  -I./../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/../util/serial \
  -I./../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/../util/zigbee-framework \
  -I./../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/cli \
  -I./../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/include \
  -I./../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/security \
  -I./../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/util \
  -I./Z3GatewayHost \
  -I./../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal \
  -I./../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/plugin \
  -I./../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/.. \
  -I./../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/generic \
  -I./../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/unix/host \
  -I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/unix/host/board \
  -I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/plugin/plugin-common/mbedtls \
  -I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls \
  -I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/include \
  -I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/include/mbedtls \
  -I../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/sl_crypto/include \
 \

APP_BUILDER_OUTPUT_DIRECTORY=.
APP_BUILDER_CONFIG_HEADER=$(APP_BUILDER_OUTPUT_DIRECTORY)/Z3GatewayHost.h
APP_BUILDER_STORAGE_FILE=$(APP_BUILDER_OUTPUT_DIRECTORY)/Z3GatewayHost_endpoint_config.h

PLATFORM_HEADER_FILE ?= \"../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/unix/compiler/gcc.h\"

DEFINES = \
  $(COMPILER_DEFINES) \
  -DUNIX \
  -DUNIX_HOST \
  -DPHY_NULL \
  -DCONFIGURATION_HEADER=\"../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/util/config.h\" \
  -DEZSP_HOST \
  -DGATEWAY_APP \
  -DZA_GENERATED_HEADER=\"$(APP_BUILDER_CONFIG_HEADER)\" \
  -DATTRIBUTE_STORAGE_CONFIGURATION=\"$(APP_BUILDER_STORAGE_FILE)\" \
  -DPLATFORM_HEADER=$(PLATFORM_HEADER_FILE) \
    -DBOARD_HOST \
  -DBOARD_HEADER=\"Z3GatewayHost_board.h\" \
  -DEM_AF_TEST_HARNESS_CODE \
  -DEM_AF_LINK_M \
  -DEM_AF_LINK_PTHREAD \
  -DEMBER_AF_API_EMBER_TYPES=\"stack/include/ember-types.h\" \
  -DEMBER_AF_API_DEBUG_PRINT=\"app/framework/util/print.h\" \
  -DEMBER_AF_API_AF_HEADER=\"app/framework/include/af.h\" \
  -DEMBER_AF_API_AF_SECURITY_HEADER=\"app/framework/security/af-security.h\" \
  -DEMBER_STACK_ZIGBEE \
  -DEZSP_ASH \
  -DMBEDTLS_CONFIG_FILE=\"mbedtls-config-generated.h\" \



COMPILER_FLAGS ?= \
  -Wall \
  -ggdb \
  -O0   \
  -std=$(STD)

APPLICATION_FILES= \
  ./znet-bookkeeping.c \
  ./call-command-handler.c \
  ./callback-stub.c \
  ./stack-handler-stub.c \
  ./znet-cli.c \
  ./Z3GatewayHost_callbacks.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/../util/common/library.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/../util/serial/command-interpreter2.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/../util/zigbee-framework/zigbee-device-common.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/../util/zigbee-framework/zigbee-device-host.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/../../stack/framework/event-control.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/generic/led-stub.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/generic/mem-util.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/plugin/antenna-stub/antenna-stub.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/plugin/buzzer-stub/buzzer-stub.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/address-table/address-table.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/basic/basic.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/concentrator/source-route-common.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/concentrator/source-route-host.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/counters/counters-cli.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/counters/counters-host.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/util/ezsp/ezsp-callbacks.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/util/ezsp/ezsp.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/ezsp-host/ezsp-host-io.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/ezsp-host/ezsp-host-queues.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/ezsp-host/ezsp-host-ui.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/util/ezsp/serial-interface-uart.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/ezsp-host/ash/ash-host-ui.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/ezsp-host/ash/ash-host.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/generic/ash-common.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin-host/gateway/backchannel-support.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/green-power-client/green-power-client.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/green-power-client/green-power-client-cli.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/green-power-common/green-power-common.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/stack/gp/gp-util.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/heartbeat/heartbeat.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/identify/identify.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/identify/identify-cli.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/level-control/level-control.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/util/plugin/plugin-common/linked-list/linked-list.c \
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
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/network-creator/network-creator.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/network-steering/network-steering.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/network-steering/network-steering-host.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/on-off/on-off.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/ota-common/ota-common.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/ota-server/ota-server.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/reporting/reporting.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/simple-main/simple-main.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/test-harness/test-harness.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/time-server/time-server.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/generic/crc.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/generic/endian.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/generic/random.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/generic/system-timer.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/unix/host/micro.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/unix/host/token-def-unix.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/unix/host/token.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/plugin/serial/ember-printf-convert.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/util/serial/linux-serial.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/cli/core-cli.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/cli/network-cli.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/cli/option-cli.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/cli/plugin-cli.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/cli/security-cli.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/cli/zcl-cli.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/cli/zdo-cli.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/security/af-node.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/security/af-security-common.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/security/af-trust-center.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/security/crypto-state.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/util/af-event.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/util/af-main-common.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/util/attribute-size.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/util/attribute-storage.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/util/attribute-table.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/util/client-api.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/util/message.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/util/multi-network.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/util/print.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/util/print-formatter.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/util/process-cluster-message.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/util/process-global-message.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/util/service-discovery-common.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/util/time-util.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/util/util.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/util/af-main-host.c \
  ../../../app/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/util/service-discovery-host.c \


LIBRARIES = \
 \


OUTPUT_DIR=$(APP_BUILDER_OUTPUT_DIRECTORY)/build
OUTPUT_DIR_CREATED= $(OUTPUT_DIR)/created
EXE_DIR=$(OUTPUT_DIR)/exe
# Build a list of object files from the source file list, but all objects
# live in the $(OUTPUT_DIR) above.  The list of object files
# created assumes that the file part of the filepath is unique
# (i.e. the bar.c of foo/bar.c is unique across all sub-directories included).
APPLICATION_OBJECTS= $(shell echo $(APPLICATION_FILES) | xargs -n1 echo | sed -e 's^.*/\(.*\)\.c^$(OUTPUT_DIR)/\1\.o^')

ifdef GENERATE_LIBRARY
TARGET_FILE= $(EXE_DIR)/Z3GatewayHost$(ARCHIVE_EXTENSION)
else
TARGET_FILE= $(EXE_DIR)/Z3GatewayHost
endif

# -MMD and -MF generates Makefile dependencies while at the same time compiling.
# -MP notes to add a dummy 'build' rule for each header file.  This 
# prevent a problem where a removed header file will generate an error because a
# dependency references it but it can't be found anymore.
DEPENDENCY_FLAGS ?= -MMD -MP -MF $(@D)/$(@F:.o=.d)

# Dependency post process is a way to massage generated dependencies.
# This is necessary for example when using Make under Cygwin but compiling
# using a native Windows compiler that generates native Windows paths
# that Cygwin will choke on.  Or if compiling on Linux using Wine to run a 
# Windows compiler, a similar problem can occur.  
DEPENDENCY_POST_PROCESS ?=

CPPFLAGS= $(INCLUDES) $(DEFINES) $(COMPILER_FLAGS) $(DEPENDENCY_FLAGS)
LINKER_FLAGS ?=

ifdef NO_READLINE
  CPPFLAGS += -DNO_READLINE
else
  LINKER_FLAGS +=  \
    -lreadline \
    -lncurses 
endif

# Conditionally include the math library if EM_AF_LINK_M is defined.
ifeq ($(findstring -DEM_AF_LINK_M,$(DEFINES)),-DEM_AF_LINK_M)
  LINKER_FLAGS += \
    -lm
endif

# Conditionally include the POSIX threads library if EM_AF_LINK_PTHREAD is
# defined.
ifeq ($(findstring -DEM_AF_LINK_PTHREAD,$(DEFINES)),-DEM_AF_LINK_PTHREAD)
  LINKER_FLAGS += \
    -lpthread
endif

ARCHIVE_FLAGS ?= rus

# Rules

.PHONY: all
all: $(TARGET_FILE)

ifneq ($(MAKECMDGOALS),clean)
-include $(APPLICATION_OBJECTS:.o=.d)
endif

ifdef GENERATE_LIBRARY
$(TARGET_FILE): $(APPLICATION_OBJECTS) $(LIBRARIES)
	$(ARCHIVE) $(ARCHIVE_FLAGS) $(TARGET_FILE) $^
	@echo -e '\n$@ build success'
else
$(TARGET_FILE): $(APPLICATION_OBJECTS) $(LIBRARIES)
	$(LD) $^ $(LINKER_FLAGS) -o $(TARGET_FILE)
	@echo -e '\n$@ build success'
endif

.PHONY: clean
clean:
	rm -rf $(OUTPUT_DIR)

$(OUTPUT_DIR_CREATED):
	mkdir -p $(OUTPUT_DIR)
	mkdir -p $(EXE_DIR)
	touch $(OUTPUT_DIR_CREATED)

# To facilitate generating all output files in a single output directory, we
# must create separate .o and .d rules for all the different sub-directories
# used by the source files.
# If additional directories are added that are not already in the
# $(APPLICATION_FILES) above, new rules will have to be created below.

# Object File rules

define make-deps 
$(OUTPUT_DIR)/$(notdir $(1:%.c=%.o)): $1 | $(OUTPUT_DIR_CREATED) 
endef 
 
$(foreach d, $(APPLICATION_FILES), $(eval $(call make-deps,$d))) 
 
%.o :
	$(CC) $(CPPFLAGS) -c $< -o $(OUTPUT_DIR)/$(@F)
	$(DEPENDENCY_POST_PROCESS)

# Dependency rules
# No explicit rules.  Dependencies are generated as part of the compile step.
