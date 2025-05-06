#pragma once
#ifndef SRCC_LIBQABSTRACTNATIVEEVENTFILTER_H
#define SRCC_LIBQABSTRACTNATIVEEVENTFILTER_H

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
typedef struct QAbstractNativeEventFilter QAbstractNativeEventFilter;
#endif

QTLIBC_API QAbstractNativeEventFilter* QAbstractNativeEventFilter_new();
QTLIBC_API bool QAbstractNativeEventFilter_NativeEventFilter(QAbstractNativeEventFilter* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QAbstractNativeEventFilter_OnNativeEventFilter(QAbstractNativeEventFilter* self, intptr_t slot);
QTLIBC_API bool QAbstractNativeEventFilter_QBaseNativeEventFilter(QAbstractNativeEventFilter* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QAbstractNativeEventFilter_Delete(QAbstractNativeEventFilter* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
