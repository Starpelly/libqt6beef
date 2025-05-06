#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQMEDIAMETADATA_H
#define SRC_MULTIMEDIAC_LIBQMEDIAMETADATA_H

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
typedef struct QMediaMetaData QMediaMetaData;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QMediaMetaData::Key Key;                       // C++ enum
typedef QMediaMetaData::QtGadgetHelper QtGadgetHelper; // C++ QFlags
#else
typedef int Key;             // C ABI enum
typedef void QtGadgetHelper; // C ABI QFlags
#endif

QTLIBC_API QMediaMetaData* QMediaMetaData_new(QMediaMetaData* param1);
QTLIBC_API QMediaMetaData* QMediaMetaData_new2();
QTLIBC_API QVariant* QMediaMetaData_Value(const QMediaMetaData* self, int k);
QTLIBC_API void QMediaMetaData_Insert(QMediaMetaData* self, int k, QVariant* value);
QTLIBC_API void QMediaMetaData_Remove(QMediaMetaData* self, int k);
QTLIBC_API libqt_list /* of int */ QMediaMetaData_Keys(const QMediaMetaData* self);
QTLIBC_API QVariant* QMediaMetaData_OperatorSubscript(QMediaMetaData* self, int k);
QTLIBC_API void QMediaMetaData_Clear(QMediaMetaData* self);
QTLIBC_API bool QMediaMetaData_IsEmpty(const QMediaMetaData* self);
QTLIBC_API libqt_string QMediaMetaData_StringValue(const QMediaMetaData* self, int k);
QTLIBC_API libqt_string QMediaMetaData_MetaDataKeyToString(int k);
QTLIBC_API void QMediaMetaData_Delete(QMediaMetaData* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
