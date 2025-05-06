#pragma once
#ifndef SRCC_LIBQIODEVICEBASE_H
#define SRCC_LIBQIODEVICEBASE_H

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
typedef struct QIODeviceBase QIODeviceBase;
#endif

#ifdef __cplusplus
typedef QIODeviceBase::OpenMode OpenMode;         // C++ QFlags
typedef QIODeviceBase::OpenModeFlag OpenModeFlag; // C++ enum
#else
typedef int OpenMode;     // C ABI QFlags
typedef int OpenModeFlag; // C ABI enum
#endif

QIODeviceBase* QIODeviceBase_new(QIODeviceBase* other);
void QIODeviceBase_CopyAssign(QIODeviceBase* self, QIODeviceBase* other);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
