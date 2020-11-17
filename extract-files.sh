#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0

if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

DEVICE=land
VENDOR=xiaomi

# Load extractutils and do some sanity checks
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$MY_DIR" ]]; then MY_DIR="$PWD"; fi

ANDROID_ROOT="${MY_DIR}/../../.."

HELPER="${ANDROID_ROOT}/tools/extract-utils/extract_utils.sh"
if [ ! -f "$HELPER" ]; then
    echo "Unable to find helper script at $HELPER"
    exit 1
fi
. "$HELPER"

# Default to sanitizing the vendor folder before extraction
CLEAN_VENDOR=true

KANG=
SECTION=

while [ "${#}" -gt 0 ]; do
    case "${1}" in
        -n | --no-cleanup )
                CLEAN_VENDOR=false
                ;;
        -k | --kang )
                KANG="--kang"
                ;;
        -s | --section )
                SECTION="${2}"; shift
                CLEAN_VENDOR=false
                ;;
        * )
                SRC="${1}"
                ;;
    esac
    shift
done

if [ -z "$SRC" ]; then
    SRC=adb
fi

function blob_fixup() {
    case "${1}" in

    vendor/bin/gx_fpcmd|vendor/bin/gx_fpd)
        patchelf --remove-needed "libbacktrace.so" "${2}"
        patchelf --remove-needed "libunwind.so" "${2}"
        ;;

    vendor/lib64/hw/fingerprint.goodix.so)
        patchelf --remove-needed "libandroid_runtime.so" "${2}"
        ;;

    vendor/lib64/libfpservice.so)
        patchelf --add-needed "libshim_binder.so" "${2}"
        ;;

    esac
}

# Initialize the helper
setup_vendor "${DEVICE}" "${VENDOR}" "${ANDROID_ROOT}" false "${CLEAN_VENDOR}"

extract "${MY_DIR}"/proprietary-files.txt "${SRC}" \
        "${KANG}" --section "${SECTION}"

DEVICE_BLOB_ROOT="${ANDROID_ROOT}"/vendor/"${VENDOR}"/"${DEVICE}"/proprietary

extract "$MY_DIR"/proprietary-files.txt "$SRC" "$SECTION"
extract "$MY_DIR"/proprietary-files-qc.txt "$SRC" "$SECTION"

sed -i "s|/system/etc/camera|/vendor/etc/camera|g" "$DEVICE_BLOB_ROOT"/vendor/lib/libmmcamera2_sensor_modules.so

"$MY_DIR"/setup-makefiles.sh
