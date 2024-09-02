#!/usr/bin/env bash
#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

function blob_fixup() {
    case "${1}" in
        vendor/lib/hw/audio.primary.picasso.so)
            sed -i "s|/vendor/lib/liba2dpoffload\.so|liba2dpoffload_picasso\.so\x00\x00\x00" "${2}"
            ;;
        vendor/lib64/camera/components/com.mi.node.watermark.so)
            "${PATCHELF}" --add-needed "libwatermark_shim.so" "${2}"
            ;;
    esac
}

# If we're being sourced by the common script that we called,
# stop right here. No need to go down the rabbit hole.
if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

export DEVICE=picasso
export DEVICE_COMMON=sm8250-common
export VENDOR=xiaomi

"./../../${VENDOR}/${DEVICE_COMMON}/extract-files.sh" "$@"
