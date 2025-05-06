#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQMULTIMEDIA_H
#define SRC_MULTIMEDIAC_LIBQMULTIMEDIA_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "../qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#else

#endif

#ifdef __cplusplus
typedef QMultimedia::AvailabilityStatus AvailabilityStatus; // C++ enum
typedef QMultimedia::EncodingMode EncodingMode;             // C++ enum
typedef QMultimedia::EncodingQuality EncodingQuality;       // C++ enum
typedef QMultimedia::SupportEstimate SupportEstimate;       // C++ enum
#else
typedef int AvailabilityStatus; // C ABI enum
typedef int EncodingMode;       // C ABI enum
typedef int EncodingQuality;    // C ABI enum
typedef int SupportEstimate;    // C ABI enum
#endif

#ifdef __cplusplus
} /* extern C */
#endif

#endif
