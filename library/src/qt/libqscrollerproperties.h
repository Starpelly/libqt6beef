#pragma once
#ifndef SRC_QTC_LIBQSCROLLERPROPERTIES_H
#define SRC_QTC_LIBQSCROLLERPROPERTIES_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#else
typedef struct QScrollerProperties QScrollerProperties;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QScrollerProperties::FrameRates FrameRates;           // C++ enum
typedef QScrollerProperties::OvershootPolicy OvershootPolicy; // C++ enum
typedef QScrollerProperties::ScrollMetric ScrollMetric;       // C++ enum
#else
typedef int FrameRates;      // C ABI enum
typedef int OvershootPolicy; // C ABI enum
typedef int ScrollMetric;    // C ABI enum
#endif

QTLIBC_API QScrollerProperties* QScrollerProperties_new();
QTLIBC_API QScrollerProperties* QScrollerProperties_new2(QScrollerProperties* sp);
QTLIBC_API void QScrollerProperties_OperatorAssign(QScrollerProperties* self, QScrollerProperties* sp);
QTLIBC_API bool QScrollerProperties_OperatorEqual(const QScrollerProperties* self, QScrollerProperties* sp);
QTLIBC_API bool QScrollerProperties_OperatorNotEqual(const QScrollerProperties* self, QScrollerProperties* sp);
QTLIBC_API void QScrollerProperties_SetDefaultScrollerProperties(QScrollerProperties* sp);
QTLIBC_API void QScrollerProperties_UnsetDefaultScrollerProperties();
QTLIBC_API QVariant* QScrollerProperties_ScrollMetric(const QScrollerProperties* self, int metric);
QTLIBC_API void QScrollerProperties_SetScrollMetric(QScrollerProperties* self, int metric, QVariant* value);
QTLIBC_API void QScrollerProperties_Delete(QScrollerProperties* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
