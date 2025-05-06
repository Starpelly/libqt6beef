#pragma once
#ifndef SRCC_LIBQBYTEARRAYMATCHER_H
#define SRCC_LIBQBYTEARRAYMATCHER_H

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
typedef struct QByteArrayMatcher QByteArrayMatcher;
typedef struct QStaticByteArrayMatcherBase QStaticByteArrayMatcherBase;
#endif

QByteArrayMatcher* QByteArrayMatcher_new();
QByteArrayMatcher* QByteArrayMatcher_new2(libqt_string pattern);
QByteArrayMatcher* QByteArrayMatcher_new3(const char* pattern, int length);
QByteArrayMatcher* QByteArrayMatcher_new4(QByteArrayMatcher* other);
void QByteArrayMatcher_OperatorAssign(QByteArrayMatcher* self, QByteArrayMatcher* other);
void QByteArrayMatcher_SetPattern(QByteArrayMatcher* self, libqt_string pattern);
int QByteArrayMatcher_IndexIn(const QByteArrayMatcher* self, libqt_string ba);
int QByteArrayMatcher_IndexIn2(const QByteArrayMatcher* self, const char* str, int lenVal);
libqt_string QByteArrayMatcher_Pattern(const QByteArrayMatcher* self);
int QByteArrayMatcher_IndexIn22(const QByteArrayMatcher* self, libqt_string ba, int from);
int QByteArrayMatcher_IndexIn3(const QByteArrayMatcher* self, const char* str, int lenVal, int from);
void QByteArrayMatcher_Delete(QByteArrayMatcher* self);

QStaticByteArrayMatcherBase* QStaticByteArrayMatcherBase_new(QStaticByteArrayMatcherBase* other);
QStaticByteArrayMatcherBase* QStaticByteArrayMatcherBase_new2(QStaticByteArrayMatcherBase* other);
void QStaticByteArrayMatcherBase_CopyAssign(QStaticByteArrayMatcherBase* self, QStaticByteArrayMatcherBase* other);
void QStaticByteArrayMatcherBase_MoveAssign(QStaticByteArrayMatcherBase* self, QStaticByteArrayMatcherBase* other);
void QStaticByteArrayMatcherBase_Delete(QStaticByteArrayMatcherBase* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
