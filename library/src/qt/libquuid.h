#pragma once
#ifndef SRC_QTC_LIBQUUID_H
#define SRC_QTC_LIBQUUID_H

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
typedef struct QAnyStringView QAnyStringView;
typedef struct QByteArrayView QByteArrayView;
typedef struct QUuid QUuid;
#endif

#ifdef __cplusplus
typedef QUuid::StringFormat StringFormat; // C++ enum
typedef QUuid::Variant Variant;           // C++ enum
typedef QUuid::Version Version;           // C++ enum
#else
typedef int StringFormat; // C ABI enum
typedef int Variant;      // C ABI enum
typedef int Version;      // C ABI enum
#endif

QTLIBC_API QUuid* QUuid_new(QUuid* other);
QTLIBC_API QUuid* QUuid_new2(QUuid* other);
QTLIBC_API QUuid* QUuid_new3();
QTLIBC_API QUuid* QUuid_new4(unsigned int l, uint16_t w1, uint16_t w2, unsigned char b1, unsigned char b2, unsigned char b3, unsigned char b4, unsigned char b5, unsigned char b6, unsigned char b7, unsigned char b8);
QTLIBC_API QUuid* QUuid_new5(char* stringVal);
QTLIBC_API QUuid* QUuid_new6(QUuid* param1);
QTLIBC_API void QUuid_CopyAssign(QUuid* self, QUuid* other);
QTLIBC_API void QUuid_MoveAssign(QUuid* self, QUuid* other);
QTLIBC_API QUuid* QUuid_FromString(char* stringVal);
QTLIBC_API libqt_string QUuid_ToString(const QUuid* self);
QTLIBC_API libqt_string QUuid_ToByteArray(const QUuid* self);
QTLIBC_API libqt_string QUuid_ToRfc4122(const QUuid* self);
QTLIBC_API QUuid* QUuid_FromRfc4122(QByteArrayView* param1);
QTLIBC_API bool QUuid_IsNull(const QUuid* self);
QTLIBC_API bool QUuid_OperatorEqual(const QUuid* self, QUuid* orig);
QTLIBC_API bool QUuid_OperatorNotEqual(const QUuid* self, QUuid* orig);
QTLIBC_API bool QUuid_OperatorLesser(const QUuid* self, QUuid* other);
QTLIBC_API bool QUuid_OperatorGreater(const QUuid* self, QUuid* other);
QTLIBC_API QUuid* QUuid_CreateUuid();
QTLIBC_API QUuid* QUuid_CreateUuidV3(QUuid* ns, libqt_string baseData);
QTLIBC_API QUuid* QUuid_CreateUuidV5(QUuid* ns, libqt_string baseData);
QTLIBC_API QUuid* QUuid_CreateUuidV32(QUuid* ns, libqt_string baseData);
QTLIBC_API QUuid* QUuid_CreateUuidV52(QUuid* ns, libqt_string baseData);
QTLIBC_API int QUuid_Variant(const QUuid* self);
QTLIBC_API int QUuid_Version(const QUuid* self);
QTLIBC_API libqt_string QUuid_ToString1(const QUuid* self, int mode);
QTLIBC_API libqt_string QUuid_ToByteArray1(const QUuid* self, int mode);
QTLIBC_API void QUuid_Delete(QUuid* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
