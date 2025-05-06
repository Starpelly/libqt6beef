#pragma once
#ifndef SRC_QTC_LIBQSTRINGMATCHER_H
#define SRC_QTC_LIBQSTRINGMATCHER_H

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
typedef struct QChar QChar;
typedef struct QStringMatcher QStringMatcher;
#endif

QTLIBC_API QStringMatcher* QStringMatcher_new();
QTLIBC_API QStringMatcher* QStringMatcher_new2(libqt_string pattern);
QTLIBC_API QStringMatcher* QStringMatcher_new3(QChar* uc, ptrdiff_t lenVal);
QTLIBC_API QStringMatcher* QStringMatcher_new4(QStringMatcher* other);
QTLIBC_API QStringMatcher* QStringMatcher_new5(libqt_string pattern, int cs);
QTLIBC_API QStringMatcher* QStringMatcher_new6(QChar* uc, ptrdiff_t lenVal, int cs);
QTLIBC_API void QStringMatcher_OperatorAssign(QStringMatcher* self, QStringMatcher* other);
QTLIBC_API void QStringMatcher_SetPattern(QStringMatcher* self, libqt_string pattern);
QTLIBC_API void QStringMatcher_SetCaseSensitivity(QStringMatcher* self, int cs);
QTLIBC_API ptrdiff_t QStringMatcher_IndexIn(const QStringMatcher* self, libqt_string str);
QTLIBC_API ptrdiff_t QStringMatcher_IndexIn2(const QStringMatcher* self, QChar* str, ptrdiff_t length);
QTLIBC_API libqt_string QStringMatcher_Pattern(const QStringMatcher* self);
QTLIBC_API int QStringMatcher_CaseSensitivity(const QStringMatcher* self);
QTLIBC_API ptrdiff_t QStringMatcher_IndexIn22(const QStringMatcher* self, libqt_string str, ptrdiff_t from);
QTLIBC_API ptrdiff_t QStringMatcher_IndexIn3(const QStringMatcher* self, QChar* str, ptrdiff_t length, ptrdiff_t from);
QTLIBC_API void QStringMatcher_Delete(QStringMatcher* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
