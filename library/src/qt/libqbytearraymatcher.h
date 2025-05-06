#pragma once
#ifndef SRC_QTC_LIBQBYTEARRAYMATCHER_H
#define SRC_QTC_LIBQBYTEARRAYMATCHER_H

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
typedef struct QByteArrayView QByteArrayView;
typedef struct QStaticByteArrayMatcherBase QStaticByteArrayMatcherBase;
#endif

QTLIBC_API QByteArrayMatcher* QByteArrayMatcher_new();
QTLIBC_API QByteArrayMatcher* QByteArrayMatcher_new2(libqt_string pattern);
QTLIBC_API QByteArrayMatcher* QByteArrayMatcher_new3(QByteArrayView* pattern);
QTLIBC_API QByteArrayMatcher* QByteArrayMatcher_new4(const char* pattern);
QTLIBC_API QByteArrayMatcher* QByteArrayMatcher_new5(QByteArrayMatcher* other);
QTLIBC_API QByteArrayMatcher* QByteArrayMatcher_new6(const char* pattern, ptrdiff_t length);
QTLIBC_API void QByteArrayMatcher_OperatorAssign(QByteArrayMatcher* self, QByteArrayMatcher* other);
QTLIBC_API void QByteArrayMatcher_SetPattern(QByteArrayMatcher* self, libqt_string pattern);
QTLIBC_API ptrdiff_t QByteArrayMatcher_IndexIn(const QByteArrayMatcher* self, const char* str, ptrdiff_t lenVal);
QTLIBC_API ptrdiff_t QByteArrayMatcher_IndexInWithData(const QByteArrayMatcher* self, QByteArrayView* data);
QTLIBC_API libqt_string QByteArrayMatcher_Pattern(const QByteArrayMatcher* self);
QTLIBC_API ptrdiff_t QByteArrayMatcher_IndexIn3(const QByteArrayMatcher* self, const char* str, ptrdiff_t lenVal, ptrdiff_t from);
QTLIBC_API ptrdiff_t QByteArrayMatcher_IndexIn2(const QByteArrayMatcher* self, QByteArrayView* data, ptrdiff_t from);
QTLIBC_API void QByteArrayMatcher_Delete(QByteArrayMatcher* self);

QTLIBC_API QStaticByteArrayMatcherBase* QStaticByteArrayMatcherBase_new(QStaticByteArrayMatcherBase* other);
QTLIBC_API void QStaticByteArrayMatcherBase_CopyAssign(QStaticByteArrayMatcherBase* self, QStaticByteArrayMatcherBase* other);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
