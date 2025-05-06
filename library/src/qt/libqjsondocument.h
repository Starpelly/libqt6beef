#pragma once
#ifndef SRC_QTC_LIBQJSONDOCUMENT_H
#define SRC_QTC_LIBQJSONDOCUMENT_H

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
typedef struct QJsonArray QJsonArray;
typedef struct QJsonDocument QJsonDocument;
typedef struct QJsonObject QJsonObject;
typedef struct QJsonParseError QJsonParseError;
typedef struct QJsonValue QJsonValue;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QJsonDocument::JsonFormat JsonFormat;   // C++ enum
typedef QJsonParseError::ParseError ParseError; // C++ enum
#else
typedef int JsonFormat; // C ABI enum
typedef int ParseError; // C ABI enum
#endif

QTLIBC_API QJsonParseError* QJsonParseError_new(QJsonParseError* other);
QTLIBC_API QJsonParseError* QJsonParseError_new2(QJsonParseError* other);
QTLIBC_API void QJsonParseError_CopyAssign(QJsonParseError* self, QJsonParseError* other);
QTLIBC_API void QJsonParseError_MoveAssign(QJsonParseError* self, QJsonParseError* other);
QTLIBC_API libqt_string QJsonParseError_ErrorString(const QJsonParseError* self);
QTLIBC_API void QJsonParseError_Delete(QJsonParseError* self);

QTLIBC_API QJsonDocument* QJsonDocument_new();
QTLIBC_API QJsonDocument* QJsonDocument_new2(QJsonObject* object);
QTLIBC_API QJsonDocument* QJsonDocument_new3(QJsonArray* array);
QTLIBC_API QJsonDocument* QJsonDocument_new4(QJsonDocument* other);
QTLIBC_API void QJsonDocument_OperatorAssign(QJsonDocument* self, QJsonDocument* other);
QTLIBC_API void QJsonDocument_Swap(QJsonDocument* self, QJsonDocument* other);
QTLIBC_API QJsonDocument* QJsonDocument_FromVariant(QVariant* variant);
QTLIBC_API QVariant* QJsonDocument_ToVariant(const QJsonDocument* self);
QTLIBC_API QJsonDocument* QJsonDocument_FromJson(libqt_string json);
QTLIBC_API libqt_string QJsonDocument_ToJson(const QJsonDocument* self);
QTLIBC_API bool QJsonDocument_IsEmpty(const QJsonDocument* self);
QTLIBC_API bool QJsonDocument_IsArray(const QJsonDocument* self);
QTLIBC_API bool QJsonDocument_IsObject(const QJsonDocument* self);
QTLIBC_API QJsonObject* QJsonDocument_Object(const QJsonDocument* self);
QTLIBC_API QJsonArray* QJsonDocument_Array(const QJsonDocument* self);
QTLIBC_API void QJsonDocument_SetObject(QJsonDocument* self, QJsonObject* object);
QTLIBC_API void QJsonDocument_SetArray(QJsonDocument* self, QJsonArray* array);
QTLIBC_API QJsonValue* QJsonDocument_OperatorSubscript(const QJsonDocument* self, libqt_string key);
QTLIBC_API QJsonValue* QJsonDocument_OperatorSubscriptWithQsizetype(const QJsonDocument* self, ptrdiff_t i);
QTLIBC_API bool QJsonDocument_OperatorEqual(const QJsonDocument* self, QJsonDocument* other);
QTLIBC_API bool QJsonDocument_OperatorNotEqual(const QJsonDocument* self, QJsonDocument* other);
QTLIBC_API bool QJsonDocument_IsNull(const QJsonDocument* self);
QTLIBC_API QJsonDocument* QJsonDocument_FromJson2(libqt_string json, QJsonParseError* errorVal);
QTLIBC_API libqt_string QJsonDocument_ToJson1(const QJsonDocument* self, int format);
QTLIBC_API void QJsonDocument_Delete(QJsonDocument* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
