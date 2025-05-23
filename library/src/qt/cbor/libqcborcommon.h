#pragma once
#ifndef SRC_QT_CBORC_LIBQCBORCOMMON_H
#define SRC_QT_CBORC_LIBQCBORCOMMON_H

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
typedef struct QCborError QCborError;
#endif

#ifdef __cplusplus
typedef QCborError::Code Code;                     // C++ enum
typedef QCborError::QtGadgetHelper QtGadgetHelper; // C++ QFlags
typedef QCborKnownTags QCborKnownTags;             // C++ enum
typedef QCborNegativeInteger QCborNegativeInteger; // C++ enum
typedef QCborSimpleType QCborSimpleType;           // C++ enum
typedef QCborTag QCborTag;                         // C++ enum
#else
typedef int Code;                                // C ABI enum
typedef int QCborKnownTags;                      // C ABI enum
typedef unsigned char QCborSimpleType;           // C ABI enum
typedef unsigned long long QCborNegativeInteger; // C ABI enum
typedef unsigned long long QCborTag;             // C ABI enum
typedef void QtGadgetHelper;                     // C ABI QFlags
#endif

QTLIBC_API int QCborError_ToQCborError__Code(const QCborError* self);
QTLIBC_API libqt_string QCborError_ToString(const QCborError* self);
QTLIBC_API void QCborError_Delete(QCborError* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
