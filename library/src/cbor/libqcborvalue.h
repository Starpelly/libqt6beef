#pragma once
#ifndef SRC_CBORC_LIBQCBORVALUE_H
#define SRC_CBORC_LIBQCBORVALUE_H

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
typedef struct QCborArray QCborArray;
typedef struct QCborMap QCborMap;
typedef struct QCborParserError QCborParserError;
typedef struct QCborStreamReader QCborStreamReader;
typedef struct QCborStreamWriter QCborStreamWriter;
typedef struct QCborValue QCborValue;
typedef struct QCborValueConstRef QCborValueConstRef;
typedef struct QCborValueRef QCborValueRef;
typedef struct QDateTime QDateTime;
typedef struct QJsonValue QJsonValue;
typedef struct QRegularExpression QRegularExpression;
typedef struct QUrl QUrl;
typedef struct QUuid QUuid;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QCborValue::DiagnosticNotationOption DiagnosticNotationOption;   // C++ enum
typedef QCborValue::DiagnosticNotationOptions DiagnosticNotationOptions; // C++ QFlags
typedef QCborValue::EncodingOption EncodingOption;                       // C++ enum
typedef QCborValue::EncodingOptions EncodingOptions;                     // C++ QFlags
typedef QCborValue::QtGadgetHelper QtGadgetHelper;                       // C++ QFlags
typedef QCborValue::Type Type;                                           // C++ enum
#else
typedef int DiagnosticNotationOption;  // C ABI enum
typedef int DiagnosticNotationOptions; // C ABI QFlags
typedef int EncodingOption;            // C ABI enum
typedef int EncodingOptions;           // C ABI QFlags
typedef unsigned char Type;            // C ABI enum
typedef void QtGadgetHelper;           // C ABI QFlags
#endif

QTLIBC_API QCborParserError* QCborParserError_new(QCborParserError* other);
QTLIBC_API QCborParserError* QCborParserError_new2(QCborParserError* other);
QTLIBC_API void QCborParserError_CopyAssign(QCborParserError* self, QCborParserError* other);
QTLIBC_API void QCborParserError_MoveAssign(QCborParserError* self, QCborParserError* other);
QTLIBC_API libqt_string QCborParserError_ErrorString(const QCborParserError* self);
QTLIBC_API void QCborParserError_Delete(QCborParserError* self);

QTLIBC_API QCborValue* QCborValue_new();
QTLIBC_API QCborValue* QCborValue_new2(int t_);
QTLIBC_API QCborValue* QCborValue_new3(bool b_);
QTLIBC_API QCborValue* QCborValue_new4(int i);
QTLIBC_API QCborValue* QCborValue_new5(unsigned int u);
QTLIBC_API QCborValue* QCborValue_new6(long long i);
QTLIBC_API QCborValue* QCborValue_new7(double v);
QTLIBC_API QCborValue* QCborValue_new8(uint8_t st);
QTLIBC_API QCborValue* QCborValue_new9(libqt_string ba);
QTLIBC_API QCborValue* QCborValue_new10(libqt_string s);
QTLIBC_API QCborValue* QCborValue_new11(const char* s);
QTLIBC_API QCborValue* QCborValue_new12(QCborArray* a);
QTLIBC_API QCborValue* QCborValue_new13(QCborMap* m);
QTLIBC_API QCborValue* QCborValue_new14(uint64_t tag);
QTLIBC_API QCborValue* QCborValue_new15(int t_);
QTLIBC_API QCborValue* QCborValue_new16(QDateTime* dt);
QTLIBC_API QCborValue* QCborValue_new17(QUrl* url);
QTLIBC_API QCborValue* QCborValue_new18(QRegularExpression* rx);
QTLIBC_API QCborValue* QCborValue_new19(QUuid* uuid);
QTLIBC_API QCborValue* QCborValue_new20(QCborValue* other);
QTLIBC_API QCborValue* QCborValue_new21(uint64_t tag, QCborValue* taggedValue);
QTLIBC_API QCborValue* QCborValue_new22(int t_, QCborValue* tv);
QTLIBC_API void QCborValue_OperatorAssign(QCborValue* self, QCborValue* other);
QTLIBC_API void QCborValue_Swap(QCborValue* self, QCborValue* other);
QTLIBC_API int QCborValue_Type(const QCborValue* self);
QTLIBC_API bool QCborValue_IsInteger(const QCborValue* self);
QTLIBC_API bool QCborValue_IsByteArray(const QCborValue* self);
QTLIBC_API bool QCborValue_IsString(const QCborValue* self);
QTLIBC_API bool QCborValue_IsArray(const QCborValue* self);
QTLIBC_API bool QCborValue_IsMap(const QCborValue* self);
QTLIBC_API bool QCborValue_IsTag(const QCborValue* self);
QTLIBC_API bool QCborValue_IsFalse(const QCborValue* self);
QTLIBC_API bool QCborValue_IsTrue(const QCborValue* self);
QTLIBC_API bool QCborValue_IsBool(const QCborValue* self);
QTLIBC_API bool QCborValue_IsNull(const QCborValue* self);
QTLIBC_API bool QCborValue_IsUndefined(const QCborValue* self);
QTLIBC_API bool QCborValue_IsDouble(const QCborValue* self);
QTLIBC_API bool QCborValue_IsDateTime(const QCborValue* self);
QTLIBC_API bool QCborValue_IsUrl(const QCborValue* self);
QTLIBC_API bool QCborValue_IsRegularExpression(const QCborValue* self);
QTLIBC_API bool QCborValue_IsUuid(const QCborValue* self);
QTLIBC_API bool QCborValue_IsInvalid(const QCborValue* self);
QTLIBC_API bool QCborValue_IsContainer(const QCborValue* self);
QTLIBC_API bool QCborValue_IsSimpleType(const QCborValue* self);
QTLIBC_API bool QCborValue_IsSimpleTypeWithSt(const QCborValue* self, uint8_t st);
QTLIBC_API uint8_t QCborValue_ToSimpleType(const QCborValue* self);
QTLIBC_API long long QCborValue_ToInteger(const QCborValue* self);
QTLIBC_API bool QCborValue_ToBool(const QCborValue* self);
QTLIBC_API double QCborValue_ToDouble(const QCborValue* self);
QTLIBC_API uint64_t QCborValue_Tag(const QCborValue* self);
QTLIBC_API QCborValue* QCborValue_TaggedValue(const QCborValue* self);
QTLIBC_API libqt_string QCborValue_ToByteArray(const QCborValue* self);
QTLIBC_API libqt_string QCborValue_ToString(const QCborValue* self);
QTLIBC_API QDateTime* QCborValue_ToDateTime(const QCborValue* self);
QTLIBC_API QUrl* QCborValue_ToUrl(const QCborValue* self);
QTLIBC_API QRegularExpression* QCborValue_ToRegularExpression(const QCborValue* self);
QTLIBC_API QUuid* QCborValue_ToUuid(const QCborValue* self);
QTLIBC_API QCborArray* QCborValue_ToArray(const QCborValue* self);
QTLIBC_API QCborArray* QCborValue_ToArrayWithDefaultValue(const QCborValue* self, QCborArray* defaultValue);
QTLIBC_API QCborMap* QCborValue_ToMap(const QCborValue* self);
QTLIBC_API QCborMap* QCborValue_ToMapWithDefaultValue(const QCborValue* self, QCborMap* defaultValue);
QTLIBC_API QCborValue* QCborValue_OperatorSubscript(const QCborValue* self, libqt_string key);
QTLIBC_API QCborValue* QCborValue_OperatorSubscript2(const QCborValue* self, long long key);
QTLIBC_API QCborValueRef* QCborValue_OperatorSubscript3(QCborValue* self, long long key);
QTLIBC_API QCborValueRef* QCborValue_OperatorSubscript5(QCborValue* self, libqt_string key);
QTLIBC_API int QCborValue_Compare(const QCborValue* self, QCborValue* other);
QTLIBC_API bool QCborValue_OperatorEqual(const QCborValue* self, QCborValue* other);
QTLIBC_API bool QCborValue_OperatorNotEqual(const QCborValue* self, QCborValue* other);
QTLIBC_API bool QCborValue_OperatorLesser(const QCborValue* self, QCborValue* other);
QTLIBC_API QCborValue* QCborValue_FromVariant(QVariant* variant);
QTLIBC_API QVariant* QCborValue_ToVariant(const QCborValue* self);
QTLIBC_API QCborValue* QCborValue_FromJsonValue(QJsonValue* v);
QTLIBC_API QJsonValue* QCborValue_ToJsonValue(const QCborValue* self);
QTLIBC_API QCborValue* QCborValue_FromCbor(QCborStreamReader* reader);
QTLIBC_API QCborValue* QCborValue_FromCborWithBa(libqt_string ba);
QTLIBC_API QCborValue* QCborValue_FromCbor2(const char* data, ptrdiff_t lenVal);
QTLIBC_API QCborValue* QCborValue_FromCbor3(const unsigned char* data, ptrdiff_t lenVal);
QTLIBC_API libqt_string QCborValue_ToCbor(const QCborValue* self);
QTLIBC_API void QCborValue_ToCborWithWriter(const QCborValue* self, QCborStreamWriter* writer);
QTLIBC_API libqt_string QCborValue_ToDiagnosticNotation(const QCborValue* self);
QTLIBC_API uint8_t QCborValue_ToSimpleType1(const QCborValue* self, uint8_t defaultValue);
QTLIBC_API long long QCborValue_ToInteger1(const QCborValue* self, long long defaultValue);
QTLIBC_API bool QCborValue_ToBool1(const QCborValue* self, bool defaultValue);
QTLIBC_API double QCborValue_ToDouble1(const QCborValue* self, double defaultValue);
QTLIBC_API uint64_t QCborValue_Tag1(const QCborValue* self, uint64_t defaultValue);
QTLIBC_API QCborValue* QCborValue_TaggedValue1(const QCborValue* self, QCborValue* defaultValue);
QTLIBC_API libqt_string QCborValue_ToByteArray1(const QCborValue* self, libqt_string defaultValue);
QTLIBC_API libqt_string QCborValue_ToString1(const QCborValue* self, libqt_string defaultValue);
QTLIBC_API QDateTime* QCborValue_ToDateTime1(const QCborValue* self, QDateTime* defaultValue);
QTLIBC_API QUrl* QCborValue_ToUrl1(const QCborValue* self, QUrl* defaultValue);
QTLIBC_API QRegularExpression* QCborValue_ToRegularExpression1(const QCborValue* self, QRegularExpression* defaultValue);
QTLIBC_API QUuid* QCborValue_ToUuid1(const QCborValue* self, QUuid* defaultValue);
QTLIBC_API QCborValue* QCborValue_FromCbor22(libqt_string ba, QCborParserError* errorVal);
QTLIBC_API QCborValue* QCborValue_FromCbor32(const char* data, ptrdiff_t lenVal, QCborParserError* errorVal);
QTLIBC_API QCborValue* QCborValue_FromCbor33(const unsigned char* data, ptrdiff_t lenVal, QCborParserError* errorVal);
QTLIBC_API libqt_string QCborValue_ToCbor1(const QCborValue* self, int opt);
QTLIBC_API void QCborValue_ToCbor2(const QCborValue* self, QCborStreamWriter* writer, int opt);
QTLIBC_API libqt_string QCborValue_ToDiagnosticNotation1(const QCborValue* self, int opts);
QTLIBC_API void QCborValue_Delete(QCborValue* self);

QTLIBC_API QCborValueConstRef* QCborValueConstRef_new(QCborValueConstRef* other);
QTLIBC_API QCborValueConstRef* QCborValueConstRef_new2(QCborValueConstRef* param1);
QTLIBC_API QCborValue* QCborValueConstRef_ToQCborValue(const QCborValueConstRef* self);
QTLIBC_API int QCborValueConstRef_Type(const QCborValueConstRef* self);
QTLIBC_API bool QCborValueConstRef_IsInteger(const QCborValueConstRef* self);
QTLIBC_API bool QCborValueConstRef_IsByteArray(const QCborValueConstRef* self);
QTLIBC_API bool QCborValueConstRef_IsString(const QCborValueConstRef* self);
QTLIBC_API bool QCborValueConstRef_IsArray(const QCborValueConstRef* self);
QTLIBC_API bool QCborValueConstRef_IsMap(const QCborValueConstRef* self);
QTLIBC_API bool QCborValueConstRef_IsTag(const QCborValueConstRef* self);
QTLIBC_API bool QCborValueConstRef_IsFalse(const QCborValueConstRef* self);
QTLIBC_API bool QCborValueConstRef_IsTrue(const QCborValueConstRef* self);
QTLIBC_API bool QCborValueConstRef_IsBool(const QCborValueConstRef* self);
QTLIBC_API bool QCborValueConstRef_IsNull(const QCborValueConstRef* self);
QTLIBC_API bool QCborValueConstRef_IsUndefined(const QCborValueConstRef* self);
QTLIBC_API bool QCborValueConstRef_IsDouble(const QCborValueConstRef* self);
QTLIBC_API bool QCborValueConstRef_IsDateTime(const QCborValueConstRef* self);
QTLIBC_API bool QCborValueConstRef_IsUrl(const QCborValueConstRef* self);
QTLIBC_API bool QCborValueConstRef_IsRegularExpression(const QCborValueConstRef* self);
QTLIBC_API bool QCborValueConstRef_IsUuid(const QCborValueConstRef* self);
QTLIBC_API bool QCborValueConstRef_IsInvalid(const QCborValueConstRef* self);
QTLIBC_API bool QCborValueConstRef_IsContainer(const QCborValueConstRef* self);
QTLIBC_API bool QCborValueConstRef_IsSimpleType(const QCborValueConstRef* self);
QTLIBC_API bool QCborValueConstRef_IsSimpleTypeWithSt(const QCborValueConstRef* self, uint8_t st);
QTLIBC_API uint8_t QCborValueConstRef_ToSimpleType(const QCborValueConstRef* self);
QTLIBC_API uint64_t QCborValueConstRef_Tag(const QCborValueConstRef* self);
QTLIBC_API QCborValue* QCborValueConstRef_TaggedValue(const QCborValueConstRef* self);
QTLIBC_API long long QCborValueConstRef_ToInteger(const QCborValueConstRef* self);
QTLIBC_API bool QCborValueConstRef_ToBool(const QCborValueConstRef* self);
QTLIBC_API double QCborValueConstRef_ToDouble(const QCborValueConstRef* self);
QTLIBC_API libqt_string QCborValueConstRef_ToByteArray(const QCborValueConstRef* self);
QTLIBC_API libqt_string QCborValueConstRef_ToString(const QCborValueConstRef* self);
QTLIBC_API QDateTime* QCborValueConstRef_ToDateTime(const QCborValueConstRef* self);
QTLIBC_API QUrl* QCborValueConstRef_ToUrl(const QCborValueConstRef* self);
QTLIBC_API QRegularExpression* QCborValueConstRef_ToRegularExpression(const QCborValueConstRef* self);
QTLIBC_API QUuid* QCborValueConstRef_ToUuid(const QCborValueConstRef* self);
QTLIBC_API QCborArray* QCborValueConstRef_ToArray(const QCborValueConstRef* self);
QTLIBC_API QCborArray* QCborValueConstRef_ToArrayWithQCborArray(const QCborValueConstRef* self, QCborArray* a);
QTLIBC_API QCborMap* QCborValueConstRef_ToMap(const QCborValueConstRef* self);
QTLIBC_API QCborMap* QCborValueConstRef_ToMapWithQCborMap(const QCborValueConstRef* self, QCborMap* m);
QTLIBC_API QCborValue* QCborValueConstRef_OperatorSubscript(const QCborValueConstRef* self, libqt_string key);
QTLIBC_API QCborValue* QCborValueConstRef_OperatorSubscript2(const QCborValueConstRef* self, long long key);
QTLIBC_API int QCborValueConstRef_Compare(const QCborValueConstRef* self, QCborValue* other);
QTLIBC_API bool QCborValueConstRef_OperatorEqual(const QCborValueConstRef* self, QCborValue* other);
QTLIBC_API bool QCborValueConstRef_OperatorNotEqual(const QCborValueConstRef* self, QCborValue* other);
QTLIBC_API bool QCborValueConstRef_OperatorLesser(const QCborValueConstRef* self, QCborValue* other);
QTLIBC_API QVariant* QCborValueConstRef_ToVariant(const QCborValueConstRef* self);
QTLIBC_API QJsonValue* QCborValueConstRef_ToJsonValue(const QCborValueConstRef* self);
QTLIBC_API libqt_string QCborValueConstRef_ToCbor(const QCborValueConstRef* self);
QTLIBC_API void QCborValueConstRef_ToCborWithWriter(const QCborValueConstRef* self, QCborStreamWriter* writer);
QTLIBC_API libqt_string QCborValueConstRef_ToDiagnosticNotation(const QCborValueConstRef* self);
QTLIBC_API uint8_t QCborValueConstRef_ToSimpleType1(const QCborValueConstRef* self, uint8_t defaultValue);
QTLIBC_API uint64_t QCborValueConstRef_Tag1(const QCborValueConstRef* self, uint64_t defaultValue);
QTLIBC_API QCborValue* QCborValueConstRef_TaggedValue1(const QCborValueConstRef* self, QCborValue* defaultValue);
QTLIBC_API long long QCborValueConstRef_ToInteger1(const QCborValueConstRef* self, long long defaultValue);
QTLIBC_API bool QCborValueConstRef_ToBool1(const QCborValueConstRef* self, bool defaultValue);
QTLIBC_API double QCborValueConstRef_ToDouble1(const QCborValueConstRef* self, double defaultValue);
QTLIBC_API libqt_string QCborValueConstRef_ToByteArray1(const QCborValueConstRef* self, libqt_string defaultValue);
QTLIBC_API libqt_string QCborValueConstRef_ToString1(const QCborValueConstRef* self, libqt_string defaultValue);
QTLIBC_API QDateTime* QCborValueConstRef_ToDateTime1(const QCborValueConstRef* self, QDateTime* defaultValue);
QTLIBC_API QUrl* QCborValueConstRef_ToUrl1(const QCborValueConstRef* self, QUrl* defaultValue);
QTLIBC_API QRegularExpression* QCborValueConstRef_ToRegularExpression1(const QCborValueConstRef* self, QRegularExpression* defaultValue);
QTLIBC_API QUuid* QCborValueConstRef_ToUuid1(const QCborValueConstRef* self, QUuid* defaultValue);
QTLIBC_API libqt_string QCborValueConstRef_ToCbor1(const QCborValueConstRef* self, int opt);
QTLIBC_API void QCborValueConstRef_ToCbor2(const QCborValueConstRef* self, QCborStreamWriter* writer, int opt);
QTLIBC_API libqt_string QCborValueConstRef_ToDiagnosticNotation1(const QCborValueConstRef* self, int opt);
QTLIBC_API void QCborValueConstRef_Delete(QCborValueConstRef* self);

QTLIBC_API QCborValueRef* QCborValueRef_new(QCborValueRef* other);
QTLIBC_API QCborValueRef* QCborValueRef_new2(QCborValueRef* other);
QTLIBC_API QCborValueRef* QCborValueRef_new3(QCborValueRef* param1);
QTLIBC_API void QCborValueRef_OperatorAssign(QCborValueRef* self, QCborValue* other);
QTLIBC_API void QCborValueRef_OperatorAssignWithOther(QCborValueRef* self, QCborValueRef* other);
QTLIBC_API QCborValueRef* QCborValueRef_OperatorSubscript(QCborValueRef* self, long long key);
QTLIBC_API QCborValueRef* QCborValueRef_OperatorSubscript2(QCborValueRef* self, libqt_string key);
QTLIBC_API QCborValue* QCborValueRef_ToQCborValue(const QCborValueRef* self);
QTLIBC_API int QCborValueRef_Type(const QCborValueRef* self);
QTLIBC_API bool QCborValueRef_IsInteger(const QCborValueRef* self);
QTLIBC_API bool QCborValueRef_IsByteArray(const QCborValueRef* self);
QTLIBC_API bool QCborValueRef_IsString(const QCborValueRef* self);
QTLIBC_API bool QCborValueRef_IsArray(const QCborValueRef* self);
QTLIBC_API bool QCborValueRef_IsMap(const QCborValueRef* self);
QTLIBC_API bool QCborValueRef_IsTag(const QCborValueRef* self);
QTLIBC_API bool QCborValueRef_IsFalse(const QCborValueRef* self);
QTLIBC_API bool QCborValueRef_IsTrue(const QCborValueRef* self);
QTLIBC_API bool QCborValueRef_IsBool(const QCborValueRef* self);
QTLIBC_API bool QCborValueRef_IsNull(const QCborValueRef* self);
QTLIBC_API bool QCborValueRef_IsUndefined(const QCborValueRef* self);
QTLIBC_API bool QCborValueRef_IsDouble(const QCborValueRef* self);
QTLIBC_API bool QCborValueRef_IsDateTime(const QCborValueRef* self);
QTLIBC_API bool QCborValueRef_IsUrl(const QCborValueRef* self);
QTLIBC_API bool QCborValueRef_IsRegularExpression(const QCborValueRef* self);
QTLIBC_API bool QCborValueRef_IsUuid(const QCborValueRef* self);
QTLIBC_API bool QCborValueRef_IsInvalid(const QCborValueRef* self);
QTLIBC_API bool QCborValueRef_IsContainer(const QCborValueRef* self);
QTLIBC_API bool QCborValueRef_IsSimpleType(const QCborValueRef* self);
QTLIBC_API bool QCborValueRef_IsSimpleTypeWithSt(const QCborValueRef* self, uint8_t st);
QTLIBC_API uint8_t QCborValueRef_ToSimpleType(const QCborValueRef* self);
QTLIBC_API uint64_t QCborValueRef_Tag(const QCborValueRef* self);
QTLIBC_API QCborValue* QCborValueRef_TaggedValue(const QCborValueRef* self);
QTLIBC_API long long QCborValueRef_ToInteger(const QCborValueRef* self);
QTLIBC_API bool QCborValueRef_ToBool(const QCborValueRef* self);
QTLIBC_API double QCborValueRef_ToDouble(const QCborValueRef* self);
QTLIBC_API libqt_string QCborValueRef_ToByteArray(const QCborValueRef* self);
QTLIBC_API libqt_string QCborValueRef_ToString(const QCborValueRef* self);
QTLIBC_API QDateTime* QCborValueRef_ToDateTime(const QCborValueRef* self);
QTLIBC_API QUrl* QCborValueRef_ToUrl(const QCborValueRef* self);
QTLIBC_API QRegularExpression* QCborValueRef_ToRegularExpression(const QCborValueRef* self);
QTLIBC_API QUuid* QCborValueRef_ToUuid(const QCborValueRef* self);
QTLIBC_API QCborArray* QCborValueRef_ToArray(const QCborValueRef* self);
QTLIBC_API QCborArray* QCborValueRef_ToArrayWithQCborArray(const QCborValueRef* self, QCborArray* a);
QTLIBC_API QCborMap* QCborValueRef_ToMap(const QCborValueRef* self);
QTLIBC_API QCborMap* QCborValueRef_ToMapWithQCborMap(const QCborValueRef* self, QCborMap* m);
QTLIBC_API QCborValue* QCborValueRef_OperatorSubscript3(const QCborValueRef* self, libqt_string key);
QTLIBC_API QCborValue* QCborValueRef_OperatorSubscript5(const QCborValueRef* self, long long key);
QTLIBC_API int QCborValueRef_Compare(const QCborValueRef* self, QCborValue* other);
QTLIBC_API bool QCborValueRef_OperatorEqual(const QCborValueRef* self, QCborValue* other);
QTLIBC_API bool QCborValueRef_OperatorNotEqual(const QCborValueRef* self, QCborValue* other);
QTLIBC_API bool QCborValueRef_OperatorLesser(const QCborValueRef* self, QCborValue* other);
QTLIBC_API QVariant* QCborValueRef_ToVariant(const QCborValueRef* self);
QTLIBC_API QJsonValue* QCborValueRef_ToJsonValue(const QCborValueRef* self);
QTLIBC_API libqt_string QCborValueRef_ToCbor(QCborValueRef* self);
QTLIBC_API void QCborValueRef_ToCborWithWriter(QCborValueRef* self, QCborStreamWriter* writer);
QTLIBC_API libqt_string QCborValueRef_ToDiagnosticNotation(QCborValueRef* self);
QTLIBC_API uint8_t QCborValueRef_ToSimpleType1(const QCborValueRef* self, uint8_t defaultValue);
QTLIBC_API uint64_t QCborValueRef_Tag1(const QCborValueRef* self, uint64_t defaultValue);
QTLIBC_API QCborValue* QCborValueRef_TaggedValue1(const QCborValueRef* self, QCborValue* defaultValue);
QTLIBC_API long long QCborValueRef_ToInteger1(const QCborValueRef* self, long long defaultValue);
QTLIBC_API bool QCborValueRef_ToBool1(const QCborValueRef* self, bool defaultValue);
QTLIBC_API double QCborValueRef_ToDouble1(const QCborValueRef* self, double defaultValue);
QTLIBC_API libqt_string QCborValueRef_ToByteArray1(const QCborValueRef* self, libqt_string defaultValue);
QTLIBC_API libqt_string QCborValueRef_ToString1(const QCborValueRef* self, libqt_string defaultValue);
QTLIBC_API QDateTime* QCborValueRef_ToDateTime1(const QCborValueRef* self, QDateTime* defaultValue);
QTLIBC_API QUrl* QCborValueRef_ToUrl1(const QCborValueRef* self, QUrl* defaultValue);
QTLIBC_API QRegularExpression* QCborValueRef_ToRegularExpression1(const QCborValueRef* self, QRegularExpression* defaultValue);
QTLIBC_API QUuid* QCborValueRef_ToUuid1(const QCborValueRef* self, QUuid* defaultValue);
QTLIBC_API libqt_string QCborValueRef_ToCbor1(QCborValueRef* self, int opt);
QTLIBC_API void QCborValueRef_ToCbor2(QCborValueRef* self, QCborStreamWriter* writer, int opt);
QTLIBC_API libqt_string QCborValueRef_ToDiagnosticNotation1(QCborValueRef* self, int opt);
QTLIBC_API void QCborValueRef_Delete(QCborValueRef* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
