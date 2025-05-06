#pragma once
#ifndef SRCC_LIBQURLQUERY_H
#define SRCC_LIBQURLQUERY_H

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
typedef struct QUrl QUrl;
typedef struct QUrlQuery QUrlQuery;
#endif

#ifdef __cplusplus
typedef QUrlQuery::DataPtr DataPtr; // C++ QFlags
#else

#endif

QTLIBC_API QUrlQuery* QUrlQuery_new();
QTLIBC_API QUrlQuery* QUrlQuery_new2(QUrl* url);
QTLIBC_API QUrlQuery* QUrlQuery_new3(libqt_string queryString);
QTLIBC_API QUrlQuery* QUrlQuery_new4(QUrlQuery* other);
QTLIBC_API void QUrlQuery_OperatorAssign(QUrlQuery* self, QUrlQuery* other);
QTLIBC_API bool QUrlQuery_OperatorEqual(const QUrlQuery* self, QUrlQuery* other);
QTLIBC_API bool QUrlQuery_OperatorNotEqual(const QUrlQuery* self, QUrlQuery* other);
QTLIBC_API void QUrlQuery_Swap(QUrlQuery* self, QUrlQuery* other);
QTLIBC_API bool QUrlQuery_IsEmpty(const QUrlQuery* self);
QTLIBC_API bool QUrlQuery_IsDetached(const QUrlQuery* self);
QTLIBC_API void QUrlQuery_Clear(QUrlQuery* self);
QTLIBC_API libqt_string QUrlQuery_Query(const QUrlQuery* self);
QTLIBC_API void QUrlQuery_SetQuery(QUrlQuery* self, libqt_string queryString);
QTLIBC_API libqt_string QUrlQuery_ToString(const QUrlQuery* self);
QTLIBC_API void QUrlQuery_SetQueryDelimiters(QUrlQuery* self, QChar* valueDelimiter, QChar* pairDelimiter);
QTLIBC_API QChar* QUrlQuery_QueryValueDelimiter(const QUrlQuery* self);
QTLIBC_API QChar* QUrlQuery_QueryPairDelimiter(const QUrlQuery* self);
QTLIBC_API void QUrlQuery_SetQueryItems(QUrlQuery* self, libqt_list /* of libqt_pair  tuple of libqt_string and libqt_string  */ query);
QTLIBC_API libqt_list /* of libqt_pair  tuple of libqt_string and libqt_string  */ QUrlQuery_QueryItems(const QUrlQuery* self);
QTLIBC_API bool QUrlQuery_HasQueryItem(const QUrlQuery* self, libqt_string key);
QTLIBC_API void QUrlQuery_AddQueryItem(QUrlQuery* self, libqt_string key, libqt_string value);
QTLIBC_API void QUrlQuery_RemoveQueryItem(QUrlQuery* self, libqt_string key);
QTLIBC_API libqt_string QUrlQuery_QueryItemValue(const QUrlQuery* self, libqt_string key);
QTLIBC_API libqt_list /* of libqt_string */ QUrlQuery_AllQueryItemValues(const QUrlQuery* self, libqt_string key);
QTLIBC_API void QUrlQuery_RemoveAllQueryItems(QUrlQuery* self, libqt_string key);
QTLIBC_API libqt_string QUrlQuery_Query1(const QUrlQuery* self, int encoding);
QTLIBC_API libqt_string QUrlQuery_ToString1(const QUrlQuery* self, int encoding);
QTLIBC_API libqt_list /* of libqt_pair  tuple of libqt_string and libqt_string  */ QUrlQuery_QueryItems1(const QUrlQuery* self, int encoding);
QTLIBC_API libqt_string QUrlQuery_QueryItemValue2(const QUrlQuery* self, libqt_string key, int encoding);
QTLIBC_API libqt_list /* of libqt_string */ QUrlQuery_AllQueryItemValues2(const QUrlQuery* self, libqt_string key, int encoding);
QTLIBC_API void QUrlQuery_Delete(QUrlQuery* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
