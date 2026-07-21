#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2020-2021 The OrangeFox Recovery Project
#
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
#
# 	Please maintain this if you use this script or any part of it
#

export LC_ALL="C"
export FOX_AB_DEVICE=1
export OF_AB_DEVICE_WITH_RECOVERY_PARTITION=1
export OF_USE_LZ4_COMPRESSION=1
export FOX_USE_TAR_BINARY=1
export FOX_USE_SED_BINARY=1
export FOX_USE_LZ4_BINARY=1
export FOX_USE_ZSTD_BINARY=1
export FOX_USE_DATE_BINARY=1
export OF_TWRP_COMPATIBILITY_MODE=1
export OF_NO_RELOAD_AFTER_DECRYPTION=1
export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
export FOX_DELETE_AROMAFM=1
export OF_USE_GREEN_LED=0
export FOX_VANILLA_BUILD=1
export OF_NO_MIUI_PATCH_WARNING=1
export OF_DISABLE_MIUI_OTA_BY_DEFAULT=1
export FOX_USE_GREP_BINARY=1
export FOX_USE_BUSYBOX_BINARY=1
export FOX_USE_XZ_UTILS=1
export OF_FORCE_PREBUILT_KERNEL=1
export OF_ENABLE_LPTOOLS=1
export OF_ENABLE_ALL_PARTITION_TOOLS=1
export FOX_VIRTUAL_AB_DEVICE=1
export OF_DYNAMIC_FULL_SIZE=11811160064
export OF_ENABLE_FS_COMPRESSION=1
export OF_DISPLAY_FORMAT_FILESYSTEMS_DEBUG_INFO=1
export FOX_SETTINGS_ROOT_DIRECTORY=/persist
export FOX_ALLOW_EARLY_SETTINGS_LOAD=1
export OF_UNBIND_SDCARD_F2FS=1
export OF_WIPE_METADATA_AFTER_DATAFORMAT=1
export FOX_USE_UPDATED_MAGISKBOOT=1
export OF_FORCE_DATA_FORMAT_F2FS=1
export FOX_MOVE_MAGISK_INSTALLER_TO_RAMDISK=1
export FOX_USE_FSCK_EROFS_BINARY=1
export FOX_USE_PATCHELF_BINARY=1
export OF_OPTIONS_LIST_NUM=6
export OF_USE_DMCTL=1
export OF_USE_AIDL_BOOT_CONTROL=1
export FOX_ENABLE_KERNELSU_SUPPORT=1
export FOX_ENABLE_KERNELSU_NEXT_SUPPORT=1
export FOX_ENABLE_SUKISU_SUPPORT=1
# For Xiaomi NUWA
export FOX_VARIANT="Xiaomi_nuwa"
export FOX_MAINTAINER_PATCH_VERSION=$(date +%y%m%d)
export OF_MAINTAINER="Adontoo"
export OF_MAGISK="/tmp/misc/Magisk-v30.7.zip"
export FOX_USE_SPECIFIC_MAGISK_ZIP=/tmp/misc/Magisk-v30.7.zip
export OF_SCREEN_H=2400
export OF_STATUS_H=116
export OF_STATUS_INDENT_LEFT=30
export OF_STATUS_INDENT_RIGHT=30
export OF_HIDE_NOTCH=1
export OF_SUPPORT_VBMETA_AVB2_PATCHING=1
export OF_ENABLE_FRP_ADDON=1
export OF_ENABLE_WLAN=1
export FOX_ADD_API_V36_PREBUILTS=1

F=$(find "device" -maxdepth 2 -name "nuwa")

if [ -f "/home/adontoo/android/Magisk-v30.7.zip" ]; then
        mkdir -p /tmp/misc/
        cp /home/adontoo/android/Magisk-v30.7.zip /tmp/misc/
        echo -e "${BLUE}-- Successfully Copy the Magisk.zip File to \"$OF_MAGISK\" ...${NC}"
fi

if [ -n "$FOX_USE_SPECIFIC_MAGISK_ZIP" ]; then
        if [ ! -f "$OF_MAGISK" ]; then
        # some colour codes
        RED='\033[0;31m'
        GREEN='\033[0;32m'
        ORANGE='\033[0;33m'
        BLUE='\033[0;34m'
        PURPLE='\033[0;35m'
        echo -e "${RED}-- File \"$OF_MAGISK\" not found  ...${NC}"
        echo -e "${ORANGE}-- Downloading...${NC}"
        mkdir -p /tmp/misc
        wget -O /tmp/misc/Magisk-v30.7.zip https://github.com/topjohnwu/Magisk/releases/download/v30.7/Magisk-v30.7.apk
        echo -e "${BLUE}-- Successfully Downloaded the Magisk.zip File \"$OF_MAGISK\" ...${NC}"
        echo -e "${PURPLE}-- Using A Custom Magisk.zip from the Downloaded file \"$OF_MAGISK\" ...${NC}"
        echo -e "${GREEN}-- Done!"
        fi
fi
#