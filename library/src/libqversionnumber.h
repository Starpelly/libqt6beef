#pragma once
#ifndef SRCC_LIBQVERSIONNUMBER_H
#define SRCC_LIBQVERSIONNUMBER_H

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
typedef struct QTypeRevision QTypeRevision;
typedef struct QVersionNumber QVersionNumber;
#endif

QTLIBC_API QVersionNumber* QVersionNumber_new();
QTLIBC_API QVersionNumber* QVersionNumber_new2(libqt_list /* of int */ seg);
QTLIBC_API QVersionNumber* QVersionNumber_new3(int maj);
QTLIBC_API QVersionNumber* QVersionNumber_new4(int maj, int min);
QTLIBC_API QVersionNumber* QVersionNumber_new5(int maj, int min, int mic);
QTLIBC_API QVersionNumber* QVersionNumber_new6(QVersionNumber* param1);
QTLIBC_API bool QVersionNumber_IsNull(const QVersionNumber* self);
QTLIBC_API bool QVersionNumber_IsNormalized(const QVersionNumber* self);
QTLIBC_API int QVersionNumber_MajorVersion(const QVersionNumber* self);
QTLIBC_API int QVersionNumber_MinorVersion(const QVersionNumber* self);
QTLIBC_API int QVersionNumber_MicroVersion(const QVersionNumber* self);
QTLIBC_API QVersionNumber* QVersionNumber_Normalized(const QVersionNumber* self);
QTLIBC_API libqt_list /* of int */ QVersionNumber_Segments(const QVersionNumber* self);
QTLIBC_API int QVersionNumber_SegmentAt(const QVersionNumber* self, ptrdiff_t index);
QTLIBC_API ptrdiff_t QVersionNumber_SegmentCount(const QVersionNumber* self);
QTLIBC_API bool QVersionNumber_IsPrefixOf(const QVersionNumber* self, QVersionNumber* other);
QTLIBC_API int QVersionNumber_Compare(QVersionNumber* v1, QVersionNumber* v2);
QTLIBC_API QVersionNumber* QVersionNumber_CommonPrefix(QVersionNumber* v1, QVersionNumber* v2);
QTLIBC_API libqt_string QVersionNumber_ToString(const QVersionNumber* self);
QTLIBC_API QVersionNumber* QVersionNumber_FromString(char* stringVal);
QTLIBC_API QVersionNumber* QVersionNumber_FromString2(char* stringVal, ptrdiff_t* suffixIndex);
QTLIBC_API void QVersionNumber_Delete(QVersionNumber* self);

QTLIBC_API QTypeRevision* QTypeRevision_new(QTypeRevision* other);
QTLIBC_API QTypeRevision* QTypeRevision_new2(QTypeRevision* other);
QTLIBC_API QTypeRevision* QTypeRevision_new3();
QTLIBC_API QTypeRevision* QTypeRevision_new4(QTypeRevision* param1);
QTLIBC_API void QTypeRevision_CopyAssign(QTypeRevision* self, QTypeRevision* other);
QTLIBC_API void QTypeRevision_MoveAssign(QTypeRevision* self, QTypeRevision* other);
QTLIBC_API QTypeRevision* QTypeRevision_Zero();
QTLIBC_API bool QTypeRevision_HasMajorVersion(const QTypeRevision* self);
QTLIBC_API unsigned char QTypeRevision_MajorVersion(const QTypeRevision* self);
QTLIBC_API bool QTypeRevision_HasMinorVersion(const QTypeRevision* self);
QTLIBC_API unsigned char QTypeRevision_MinorVersion(const QTypeRevision* self);
QTLIBC_API bool QTypeRevision_IsValid(const QTypeRevision* self);
QTLIBC_API void QTypeRevision_Delete(QTypeRevision* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
