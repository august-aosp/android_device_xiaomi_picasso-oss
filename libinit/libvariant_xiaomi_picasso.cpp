/*
 * Copyright (C) 2021-2025 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libvariant.h>

static const variant_info picasso_info = {
    .hwc_value = "",
    .sku_value = "",

    .brand = "Xiaomi",
    .device = "picasso",
    .marketname = "Redmi K30 5G",
    .model = "Redmi K30 5G",
    .build_fingerprint = "Redmi/picasso/picasso:12/RKQ1.200826.002/V13.0.5.0.SGICNXM:user/release-keys",

    .nfc = true,
};

const std::vector<variant_info> variants = {
    picasso_info,
};
