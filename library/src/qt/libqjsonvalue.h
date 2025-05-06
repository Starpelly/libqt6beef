#pragma once
#ifndef SRC_QTC_LIBQJSONVALUE_H
#define SRC_QTC_LIBQJSONVALUE_H

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
typedef struct QJsonObject QJsonObject;
typedef struct QJsonValue QJsonValue;
typedef struct QJsonValueConstRef QJsonValueConstRef;
typedef struct QJsonValueRef QJsonValueRef;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QJsonValue::Type Type; // C++ enum
#else
typedef unsigned char Type; // C ABI enum
#endif

QTLIBC_API QJsonValue* QJsonValue_new();
QTLIBC_API QJsonValue* QJsonValue_new2(bool b);
QTLIBC_API QJsonValue* QJsonValue_new3(double n);
QTLIBC_API QJsonValue* QJsonValue_new4(int n);
QTLIBC_API QJsonValue* QJsonValue_new5(long long v);
QTLIBC_API QJsonValue* QJsonValue_new6(libqt_string s);
QTLIBC_API QJsonValue* QJsonValue_new7(const char* s);
QTLIBC_API QJsonValue* QJsonValue_new8(QJsonArray* a);
QTLIBC_API QJsonValue* QJsonValue_new9(QJsonObject* o);
QTLIBC_API QJsonValue* QJsonValue_new10(QJsonValue* other);
QTLIBC_API QJsonValue* QJsonValue_new11(int param1);
QTLIBC_API void QJsonValue_OperatorAssign(QJsonValue* self, QJsonValue* other);
QTLIBC_API void QJsonValue_Swap(QJsonValue* self, QJsonValue* other);
QTLIBC_API QJsonValue* QJsonValue_FromVariant(QVariant* variant);
QTLIBC_API QVariant* QJsonValue_ToVariant(const QJsonValue* self);
QTLIBC_API int QJsonValue_Type(const QJsonValue* self);
QTLIBC_API bool QJsonValue_IsNull(const QJsonValue* self);
QTLIBC_API bool QJsonValue_IsBool(const QJsonValue* self);
QTLIBC_API bool QJsonValue_IsDouble(const QJsonValue* self);
QTLIBC_API bool QJsonValue_IsString(const QJsonValue* self);
QTLIBC_API bool QJsonValue_IsArray(const QJsonValue* self);
QTLIBC_API bool QJsonValue_IsObject(const QJsonValue* self);
QTLIBC_API bool QJsonValue_IsUndefined(const QJsonValue* self);
QTLIBC_API bool QJsonValue_ToBool(const QJsonValue* self);
QTLIBC_API int QJsonValue_ToInt(const QJsonValue* self);
QTLIBC_API long long QJsonValue_ToInteger(const QJsonValue* self);
QTLIBC_API double QJsonValue_ToDouble(const QJsonValue* self);
QTLIBC_API libqt_string QJsonValue_ToString(const QJsonValue* self);
QTLIBC_API libqt_string QJsonValue_ToStringWithDefaultValue(const QJsonValue* self, libqt_string defaultValue);
QTLIBC_API QJsonArray* QJsonValue_ToArray(const QJsonValue* self);
QTLIBC_API QJsonArray* QJsonValue_ToArrayWithDefaultValue(const QJsonValue* self, QJsonArray* defaultValue);
QTLIBC_API QJsonObject* QJsonValue_ToObject(const QJsonValue* self);
QTLIBC_API QJsonObject* QJsonValue_ToObjectWithDefaultValue(const QJsonValue* self, QJsonObject* defaultValue);
QTLIBC_API QJsonValue* QJsonValue_OperatorSubscript(const QJsonValue* self, libqt_string key);
QTLIBC_API QJsonValue* QJsonValue_OperatorSubscriptWithQsizetype(const QJsonValue* self, ptrdiff_t i);
QTLIBC_API bool QJsonValue_OperatorEqual(const QJsonValue* self, QJsonValue* other);
QTLIBC_API bool QJsonValue_OperatorNotEqual(const QJsonValue* self, QJsonValue* other);
QTLIBC_API bool QJsonValue_ToBool1(const QJsonValue* self, bool defaultValue);
QTLIBC_API int QJsonValue_ToInt1(const QJsonValue* self, int defaultValue);
QTLIBC_API long long QJsonValue_ToInteger1(const QJsonValue* self, long long defaultValue);
QTLIBC_API double QJsonValue_ToDouble1(const QJsonValue* self, double defaultValue);
QTLIBC_API void QJsonValue_Delete(QJsonValue* self);

QTLIBC_API QJsonValueConstRef* QJsonValueConstRef_new(QJsonValueConstRef* other);
QTLIBC_API QJsonValueConstRef* QJsonValueConstRef_new2(QJsonValueConstRef* param1);
QTLIBC_API QJsonValue* QJsonValueConstRef_ToQJsonValue(const QJsonValueConstRef* self);
QTLIBC_API QVariant* QJsonValueConstRef_ToVariant(const QJsonValueConstRef* self);
QTLIBC_API int QJsonValueConstRef_Type(const QJsonValueConstRef* self);
QTLIBC_API bool QJsonValueConstRef_IsNull(const QJsonValueConstRef* self);
QTLIBC_API bool QJsonValueConstRef_IsBool(const QJsonValueConstRef* self);
QTLIBC_API bool QJsonValueConstRef_IsDouble(const QJsonValueConstRef* self);
QTLIBC_API bool QJsonValueConstRef_IsString(const QJsonValueConstRef* self);
QTLIBC_API bool QJsonValueConstRef_IsArray(const QJsonValueConstRef* self);
QTLIBC_API bool QJsonValueConstRef_IsObject(const QJsonValueConstRef* self);
QTLIBC_API bool QJsonValueConstRef_IsUndefined(const QJsonValueConstRef* self);
QTLIBC_API bool QJsonValueConstRef_ToBool(const QJsonValueConstRef* self);
QTLIBC_API int QJsonValueConstRef_ToInt(const QJsonValueConstRef* self);
QTLIBC_API long long QJsonValueConstRef_ToInteger(const QJsonValueConstRef* self);
QTLIBC_API double QJsonValueConstRef_ToDouble(const QJsonValueConstRef* self);
QTLIBC_API libqt_string QJsonValueConstRef_ToString(const QJsonValueConstRef* self);
QTLIBC_API QJsonArray* QJsonValueConstRef_ToArray(const QJsonValueConstRef* self);
QTLIBC_API QJsonObject* QJsonValueConstRef_ToObject(const QJsonValueConstRef* self);
QTLIBC_API QJsonValue* QJsonValueConstRef_OperatorSubscriptWithQsizetype(const QJsonValueConstRef* self, ptrdiff_t i);
QTLIBC_API bool QJsonValueConstRef_OperatorEqual(const QJsonValueConstRef* self, QJsonValue* other);
QTLIBC_API bool QJsonValueConstRef_OperatorNotEqual(const QJsonValueConstRef* self, QJsonValue* other);
QTLIBC_API bool QJsonValueConstRef_ToBool1(const QJsonValueConstRef* self, bool defaultValue);
QTLIBC_API int QJsonValueConstRef_ToInt1(const QJsonValueConstRef* self, int defaultValue);
QTLIBC_API long long QJsonValueConstRef_ToInteger1(const QJsonValueConstRef* self, long long defaultValue);
QTLIBC_API double QJsonValueConstRef_ToDouble1(const QJsonValueConstRef* self, double defaultValue);
QTLIBC_API libqt_string QJsonValueConstRef_ToString1(const QJsonValueConstRef* self, libqt_string defaultValue);
QTLIBC_API void QJsonValueConstRef_Delete(QJsonValueConstRef* self);

QTLIBC_API QJsonValueRef* QJsonValueRef_new(QJsonValueRef* other);
QTLIBC_API QJsonValueRef* QJsonValueRef_new2(QJsonValueRef* param1);
QTLIBC_API QJsonValueRef* QJsonValueRef_new3(QJsonArray* array, ptrdiff_t idx);
QTLIBC_API QJsonValueRef* QJsonValueRef_new4(QJsonObject* object, ptrdiff_t idx);
QTLIBC_API void QJsonValueRef_OperatorAssign(QJsonValueRef* self, QJsonValue* val);
QTLIBC_API void QJsonValueRef_OperatorAssignWithVal(QJsonValueRef* self, QJsonValueRef* val);
QTLIBC_API QJsonValue* QJsonValueRef_ToQJsonValue(const QJsonValueRef* self);
QTLIBC_API QVariant* QJsonValueRef_ToVariant(const QJsonValueRef* self);
QTLIBC_API int QJsonValueRef_Type(const QJsonValueRef* self);
QTLIBC_API bool QJsonValueRef_IsNull(const QJsonValueRef* self);
QTLIBC_API bool QJsonValueRef_IsBool(const QJsonValueRef* self);
QTLIBC_API bool QJsonValueRef_IsDouble(const QJsonValueRef* self);
QTLIBC_API bool QJsonValueRef_IsString(const QJsonValueRef* self);
QTLIBC_API bool QJsonValueRef_IsArray(const QJsonValueRef* self);
QTLIBC_API bool QJsonValueRef_IsObject(const QJsonValueRef* self);
QTLIBC_API bool QJsonValueRef_IsUndefined(const QJsonValueRef* self);
QTLIBC_API bool QJsonValueRef_ToBool(const QJsonValueRef* self);
QTLIBC_API int QJsonValueRef_ToInt(const QJsonValueRef* self);
QTLIBC_API long long QJsonValueRef_ToInteger(const QJsonValueRef* self);
QTLIBC_API double QJsonValueRef_ToDouble(const QJsonValueRef* self);
QTLIBC_API libqt_string QJsonValueRef_ToString(const QJsonValueRef* self);
QTLIBC_API QJsonArray* QJsonValueRef_ToArray(const QJsonValueRef* self);
QTLIBC_API QJsonObject* QJsonValueRef_ToObject(const QJsonValueRef* self);
QTLIBC_API QJsonValue* QJsonValueRef_OperatorSubscriptWithQsizetype(const QJsonValueRef* self, ptrdiff_t i);
QTLIBC_API bool QJsonValueRef_OperatorEqual(const QJsonValueRef* self, QJsonValue* other);
QTLIBC_API bool QJsonValueRef_OperatorNotEqual(const QJsonValueRef* self, QJsonValue* other);
QTLIBC_API bool QJsonValueRef_ToBool1(const QJsonValueRef* self, bool defaultValue);
QTLIBC_API int QJsonValueRef_ToInt1(const QJsonValueRef* self, int defaultValue);
QTLIBC_API long long QJsonValueRef_ToInteger1(const QJsonValueRef* self, long long defaultValue);
QTLIBC_API double QJsonValueRef_ToDouble1(const QJsonValueRef* self, double defaultValue);
QTLIBC_API libqt_string QJsonValueRef_ToString1(const QJsonValueRef* self, libqt_string defaultValue);
QTLIBC_API void QJsonValueRef_Delete(QJsonValueRef* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
