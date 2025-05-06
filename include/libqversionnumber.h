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
typedef struct QVersionNumber QVersionNumber;
#endif

QVersionNumber* QVersionNumber_new();
QVersionNumber* QVersionNumber_new2(libqt_list /* of int */ seg);
QVersionNumber* QVersionNumber_new3(int maj);
QVersionNumber* QVersionNumber_new4(int maj, int min);
QVersionNumber* QVersionNumber_new5(int maj, int min, int mic);
bool QVersionNumber_IsNull(const QVersionNumber* self);
bool QVersionNumber_IsNormalized(const QVersionNumber* self);
int QVersionNumber_MajorVersion(const QVersionNumber* self);
int QVersionNumber_MinorVersion(const QVersionNumber* self);
int QVersionNumber_MicroVersion(const QVersionNumber* self);
QVersionNumber* QVersionNumber_Normalized(const QVersionNumber* self);
libqt_list /* of int */ QVersionNumber_Segments(const QVersionNumber* self);
int QVersionNumber_SegmentAt(const QVersionNumber* self, int index);
int QVersionNumber_SegmentCount(const QVersionNumber* self);
bool QVersionNumber_IsPrefixOf(const QVersionNumber* self, QVersionNumber* other);
int QVersionNumber_Compare(QVersionNumber* v1, QVersionNumber* v2);
QVersionNumber* QVersionNumber_CommonPrefix(QVersionNumber* v1, QVersionNumber* v2);
libqt_string QVersionNumber_ToString(const QVersionNumber* self);
QVersionNumber* QVersionNumber_FromString(libqt_string stringVal);
QVersionNumber* QVersionNumber_FromString22(libqt_string stringVal, int* suffixIndex);
void QVersionNumber_Delete(QVersionNumber* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
