#pragma once
#ifndef SRCC_LIBQMETATYPE_H
#define SRCC_LIBQMETATYPE_H

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
typedef struct QByteArrayView QByteArrayView;
typedef struct QDataStream QDataStream;
typedef struct QDebug QDebug;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaType QMetaType;
typedef struct QPartialOrdering QPartialOrdering;
#endif

#ifdef __cplusplus
typedef QCborSimpleType QCborSimpleType;                    // C++ enum
typedef QMetaType::ConverterFunction ConverterFunction;     // C++ QFlags
typedef QMetaType::MutableViewFunction MutableViewFunction; // C++ QFlags
typedef QMetaType::Type Type;                               // C++ enum
typedef QMetaType::TypeFlag TypeFlag;                       // C++ enum
typedef QMetaType::TypeFlags TypeFlags;                     // C++ QFlags
#else
typedef int TypeFlag;                  // C ABI enum
typedef int TypeFlags;                 // C ABI QFlags
typedef unsigned char QCborSimpleType; // C ABI enum
typedef unsigned char Type;            // C ABI enum
#endif

QTLIBC_API QMetaType* QMetaType_new(QMetaType* other);
QTLIBC_API QMetaType* QMetaType_new2(QMetaType* other);
QTLIBC_API QMetaType* QMetaType_new3(int typeVal);
QTLIBC_API QMetaType* QMetaType_new4();
QTLIBC_API QMetaType* QMetaType_new5(QMetaType* param1);
QTLIBC_API void QMetaType_CopyAssign(QMetaType* self, QMetaType* other);
QTLIBC_API void QMetaType_MoveAssign(QMetaType* self, QMetaType* other);
QTLIBC_API void QMetaType_RegisterNormalizedTypedef(libqt_string normalizedTypeName, QMetaType* typeVal);
QTLIBC_API int QMetaType_Type(const char* typeName);
QTLIBC_API int QMetaType_TypeWithTypeName(libqt_string typeName);
QTLIBC_API const char* QMetaType_TypeName(int typeVal);
QTLIBC_API int QMetaType_SizeOf(int typeVal);
QTLIBC_API int QMetaType_TypeFlags(int typeVal);
QTLIBC_API QMetaObject* QMetaType_MetaObjectForType(int typeVal);
QTLIBC_API void* QMetaType_Create(int typeVal);
QTLIBC_API void QMetaType_Destroy(int typeVal, void* data);
QTLIBC_API void* QMetaType_Construct(int typeVal, void* where, const void* copyVal);
QTLIBC_API void QMetaType_Destruct(int typeVal, void* where);
QTLIBC_API bool QMetaType_IsRegistered(int typeVal);
QTLIBC_API bool QMetaType_IsValid(const QMetaType* self);
QTLIBC_API bool QMetaType_IsRegistered2(const QMetaType* self);
QTLIBC_API int QMetaType_Id(const QMetaType* self);
QTLIBC_API ptrdiff_t QMetaType_SizeOf2(const QMetaType* self);
QTLIBC_API ptrdiff_t QMetaType_AlignOf(const QMetaType* self);
QTLIBC_API int QMetaType_Flags(const QMetaType* self);
QTLIBC_API QMetaObject* QMetaType_MetaObject(const QMetaType* self);
QTLIBC_API const char* QMetaType_Name(const QMetaType* self);
QTLIBC_API void* QMetaType_Create2(const QMetaType* self);
QTLIBC_API void QMetaType_DestroyWithData(const QMetaType* self, void* data);
QTLIBC_API void* QMetaType_ConstructWithWhere(const QMetaType* self, void* where);
QTLIBC_API void QMetaType_DestructWithData(const QMetaType* self, void* data);
QTLIBC_API QPartialOrdering* QMetaType_Compare(const QMetaType* self, const void* lhs, const void* rhs);
QTLIBC_API bool QMetaType_Equals(const QMetaType* self, const void* lhs, const void* rhs);
QTLIBC_API bool QMetaType_IsEqualityComparable(const QMetaType* self);
QTLIBC_API bool QMetaType_IsOrdered(const QMetaType* self);
QTLIBC_API bool QMetaType_Save(const QMetaType* self, QDataStream* stream, const void* data);
QTLIBC_API bool QMetaType_Load(const QMetaType* self, QDataStream* stream, void* data);
QTLIBC_API bool QMetaType_HasRegisteredDataStreamOperators(const QMetaType* self);
QTLIBC_API bool QMetaType_Save2(QDataStream* stream, int typeVal, const void* data);
QTLIBC_API bool QMetaType_Load2(QDataStream* stream, int typeVal, void* data);
QTLIBC_API QMetaType* QMetaType_FromName(QByteArrayView* name);
QTLIBC_API bool QMetaType_DebugStream(QMetaType* self, QDebug* dbg, const void* rhs);
QTLIBC_API bool QMetaType_HasRegisteredDebugStreamOperator(const QMetaType* self);
QTLIBC_API bool QMetaType_DebugStream2(QDebug* dbg, const void* rhs, int typeId);
QTLIBC_API bool QMetaType_HasRegisteredDebugStreamOperatorWithTypeId(int typeId);
QTLIBC_API bool QMetaType_Convert(QMetaType* fromType, const void* from, QMetaType* toType, void* to);
QTLIBC_API bool QMetaType_CanConvert(QMetaType* fromType, QMetaType* toType);
QTLIBC_API bool QMetaType_View(QMetaType* fromType, void* from, QMetaType* toType, void* to);
QTLIBC_API bool QMetaType_CanView(QMetaType* fromType, QMetaType* toType);
QTLIBC_API bool QMetaType_Convert2(const void* from, int fromTypeId, void* to, int toTypeId);
QTLIBC_API bool QMetaType_Compare2(const void* lhs, const void* rhs, int typeId, int* result);
QTLIBC_API bool QMetaType_Equals2(const void* lhs, const void* rhs, int typeId, int* result);
QTLIBC_API bool QMetaType_HasRegisteredConverterFunction(QMetaType* fromType, QMetaType* toType);
QTLIBC_API bool QMetaType_HasRegisteredMutableViewFunction(QMetaType* fromType, QMetaType* toType);
QTLIBC_API void QMetaType_UnregisterConverterFunction(QMetaType* from, QMetaType* to);
QTLIBC_API void QMetaType_UnregisterMutableViewFunction(QMetaType* from, QMetaType* to);
QTLIBC_API void QMetaType_UnregisterMetaType(QMetaType* typeVal);
QTLIBC_API void* QMetaType_Create22(int typeVal, const void* copyVal);
QTLIBC_API int QMetaType_Id1(const QMetaType* self, int param1);
QTLIBC_API void* QMetaType_Create1(const QMetaType* self, const void* copyVal);
QTLIBC_API void* QMetaType_Construct2(const QMetaType* self, void* where, const void* copyVal);
QTLIBC_API void QMetaType_Delete(QMetaType* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
