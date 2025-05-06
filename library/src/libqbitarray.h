#pragma once
#ifndef SRCC_LIBQBITARRAY_H
#define SRCC_LIBQBITARRAY_H

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
typedef struct QBitArray QBitArray;
typedef struct QBitRef QBitRef;
#endif

#ifdef __cplusplus
typedef QBitArray::DataPtr DataPtr; // C++ QFlags
#else

#endif

QTLIBC_API QBitArray* QBitArray_new();
QTLIBC_API QBitArray* QBitArray_new2(ptrdiff_t size);
QTLIBC_API QBitArray* QBitArray_new3(QBitArray* other);
QTLIBC_API QBitArray* QBitArray_new4(ptrdiff_t size, bool val);
QTLIBC_API void QBitArray_OperatorAssign(QBitArray* self, QBitArray* other);
QTLIBC_API void QBitArray_Swap(QBitArray* self, QBitArray* other);
QTLIBC_API ptrdiff_t QBitArray_Size(const QBitArray* self);
QTLIBC_API ptrdiff_t QBitArray_Count(const QBitArray* self);
QTLIBC_API ptrdiff_t QBitArray_CountWithOn(const QBitArray* self, bool on);
QTLIBC_API bool QBitArray_IsEmpty(const QBitArray* self);
QTLIBC_API bool QBitArray_IsNull(const QBitArray* self);
QTLIBC_API void QBitArray_Resize(QBitArray* self, ptrdiff_t size);
QTLIBC_API void QBitArray_Detach(QBitArray* self);
QTLIBC_API bool QBitArray_IsDetached(const QBitArray* self);
QTLIBC_API void QBitArray_Clear(QBitArray* self);
QTLIBC_API bool QBitArray_TestBit(const QBitArray* self, ptrdiff_t i);
QTLIBC_API void QBitArray_SetBit(QBitArray* self, ptrdiff_t i);
QTLIBC_API void QBitArray_SetBit2(QBitArray* self, ptrdiff_t i, bool val);
QTLIBC_API void QBitArray_ClearBit(QBitArray* self, ptrdiff_t i);
QTLIBC_API bool QBitArray_ToggleBit(QBitArray* self, ptrdiff_t i);
QTLIBC_API bool QBitArray_At(const QBitArray* self, ptrdiff_t i);
QTLIBC_API QBitRef* QBitArray_OperatorSubscript(QBitArray* self, ptrdiff_t i);
QTLIBC_API bool QBitArray_OperatorSubscriptWithQsizetype(const QBitArray* self, ptrdiff_t i);
QTLIBC_API void QBitArray_OperatorBitwiseAndAssign(QBitArray* self, QBitArray* param1);
QTLIBC_API void QBitArray_OperatorBitwiseOrAssign(QBitArray* self, QBitArray* param1);
QTLIBC_API void QBitArray_OperatorBitwiseNotAssign(QBitArray* self, QBitArray* param1);
QTLIBC_API bool QBitArray_OperatorEqual(const QBitArray* self, QBitArray* other);
QTLIBC_API bool QBitArray_OperatorNotEqual(const QBitArray* self, QBitArray* other);
QTLIBC_API bool QBitArray_Fill(QBitArray* self, bool val);
QTLIBC_API void QBitArray_Fill2(QBitArray* self, bool val, ptrdiff_t first, ptrdiff_t last);
QTLIBC_API void QBitArray_Truncate(QBitArray* self, ptrdiff_t pos);
QTLIBC_API const char* QBitArray_Bits(const QBitArray* self);
QTLIBC_API QBitArray* QBitArray_FromBits(const char* data, ptrdiff_t lenVal);
QTLIBC_API unsigned int QBitArray_ToUInt32(const QBitArray* self, int endianness);
QTLIBC_API bool QBitArray_Fill22(QBitArray* self, bool val, ptrdiff_t size);
QTLIBC_API unsigned int QBitArray_ToUInt322(const QBitArray* self, int endianness, bool* ok);
QTLIBC_API void QBitArray_Delete(QBitArray* self);

QTLIBC_API QBitRef* QBitRef_new(QBitRef* other);
QTLIBC_API QBitRef* QBitRef_new2(QBitRef* param1);
QTLIBC_API bool QBitRef_ToBool(const QBitRef* self);
QTLIBC_API bool QBitRef_OperatorNot(const QBitRef* self);
QTLIBC_API void QBitRef_OperatorAssign(QBitRef* self, QBitRef* val);
QTLIBC_API void QBitRef_OperatorAssignWithVal(QBitRef* self, bool val);
QTLIBC_API void QBitRef_Delete(QBitRef* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
