#pragma once
#ifndef SRC_CBORC_LIBQCBORARRAY_H
#define SRC_CBORC_LIBQCBORARRAY_H

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
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QCborArray__ConstIterator)
typedef QCborArray::ConstIterator QCborArray__ConstIterator;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QCborArray__Iterator)
typedef QCborArray::Iterator QCborArray__Iterator;
#endif
#else
typedef struct QCborArray QCborArray;
typedef struct QCborArray__ConstIterator QCborArray__ConstIterator;
typedef struct QCborArray__Iterator QCborArray__Iterator;
typedef struct QCborValue QCborValue;
typedef struct QCborValueConstRef QCborValueConstRef;
typedef struct QCborValueRef QCborValueRef;
typedef struct QJsonArray QJsonArray;
#endif

#ifdef __cplusplus
typedef QCborArray::ConstIterator::difference_type ConstIteratordifference_type;     // C++ QFlags
typedef QCborArray::ConstIterator::iterator_category ConstIteratoriterator_category; // C++ QFlags
typedef QCborArray::ConstIterator::pointer ConstIteratorpointer;                     // C++ QFlags
typedef QCborArray::ConstIterator::reference ConstIteratorreference;                 // C++ QFlags
typedef QCborArray::ConstIterator::value_type ConstIteratorvalue_type;               // C++ QFlags
typedef QCborArray::Iterator::difference_type Iteratordifference_type;               // C++ QFlags
typedef QCborArray::Iterator::iterator_category Iteratoriterator_category;           // C++ QFlags
typedef QCborArray::Iterator::pointer Iteratorpointer;                               // C++ QFlags
typedef QCborArray::Iterator::reference Iteratorreference;                           // C++ QFlags
typedef QCborArray::Iterator::value_type Iteratorvalue_type;                         // C++ QFlags
typedef QCborArray::const_pointer const_pointer;                                     // C++ QFlags
typedef QCborArray::const_reference const_reference;                                 // C++ QFlags
typedef QCborArray::difference_type difference_type;                                 // C++ QFlags
typedef QCborArray::iterator iterator;                                               // C++ QFlags
typedef QCborArray::pointer pointer;                                                 // C++ QFlags
typedef QCborArray::reference reference;                                             // C++ QFlags
typedef QCborArray::size_type size_type;                                             // C++ QFlags
typedef QCborArray::value_type value_type;                                           // C++ QFlags
#else
typedef QCborValue* ConstIteratorvalue_type;    // C ABI QFlags
typedef QCborValue* Iteratorvalue_type;         // C ABI QFlags
typedef QCborValueRef* ConstIteratorpointer;    // C ABI QFlags
typedef QCborValueRef* ConstIteratorreference;  // C ABI QFlags
typedef QCborValueRef* Iteratorpointer;         // C ABI QFlags
typedef QCborValueRef* Iteratorreference;       // C ABI QFlags
typedef long long difference_type;              // C ABI QFlags
typedef ptrdiff_t ConstIteratordifference_type; // C ABI QFlags
typedef ptrdiff_t Iteratordifference_type;      // C ABI QFlags
typedef ptrdiff_t size_type;                    // C ABI QFlags
#endif

QTLIBC_API QCborArray* QCborArray_new();
QTLIBC_API QCborArray* QCborArray_new2(QCborArray* other);
QTLIBC_API void QCborArray_OperatorAssign(QCborArray* self, QCborArray* other);
QTLIBC_API void QCborArray_Swap(QCborArray* self, QCborArray* other);
QTLIBC_API QCborValue* QCborArray_ToCborValue(const QCborArray* self);
QTLIBC_API ptrdiff_t QCborArray_Size(const QCborArray* self);
QTLIBC_API bool QCborArray_IsEmpty(const QCborArray* self);
QTLIBC_API void QCborArray_Clear(QCborArray* self);
QTLIBC_API QCborValue* QCborArray_At(const QCborArray* self, ptrdiff_t i);
QTLIBC_API QCborValue* QCborArray_First(const QCborArray* self);
QTLIBC_API QCborValue* QCborArray_Last(const QCborArray* self);
QTLIBC_API QCborValue* QCborArray_OperatorSubscript(const QCborArray* self, ptrdiff_t i);
QTLIBC_API QCborValueRef* QCborArray_First2(QCborArray* self);
QTLIBC_API QCborValueRef* QCborArray_Last2(QCborArray* self);
QTLIBC_API QCborValueRef* QCborArray_OperatorSubscriptWithQsizetype(QCborArray* self, ptrdiff_t i);
QTLIBC_API void QCborArray_Insert(QCborArray* self, ptrdiff_t i, QCborValue* value);
QTLIBC_API void QCborArray_Prepend(QCborArray* self, QCborValue* value);
QTLIBC_API void QCborArray_Append(QCborArray* self, QCborValue* value);
QTLIBC_API QCborValue* QCborArray_Extract(QCborArray* self, QCborArray__ConstIterator* it);
QTLIBC_API QCborValue* QCborArray_ExtractWithIt(QCborArray* self, QCborArray__Iterator* it);
QTLIBC_API void QCborArray_RemoveAt(QCborArray* self, ptrdiff_t i);
QTLIBC_API QCborValue* QCborArray_TakeAt(QCborArray* self, ptrdiff_t i);
QTLIBC_API void QCborArray_RemoveFirst(QCborArray* self);
QTLIBC_API void QCborArray_RemoveLast(QCborArray* self);
QTLIBC_API QCborValue* QCborArray_TakeFirst(QCborArray* self);
QTLIBC_API QCborValue* QCborArray_TakeLast(QCborArray* self);
QTLIBC_API bool QCborArray_Contains(const QCborArray* self, QCborValue* value);
QTLIBC_API int QCborArray_Compare(const QCborArray* self, QCborArray* other);
QTLIBC_API bool QCborArray_OperatorEqual(const QCborArray* self, QCborArray* other);
QTLIBC_API bool QCborArray_OperatorNotEqual(const QCborArray* self, QCborArray* other);
QTLIBC_API bool QCborArray_OperatorLesser(const QCborArray* self, QCborArray* other);
QTLIBC_API QCborArray__Iterator* QCborArray_Begin(QCborArray* self);
QTLIBC_API QCborArray__ConstIterator* QCborArray_ConstBegin(const QCborArray* self);
QTLIBC_API QCborArray__ConstIterator* QCborArray_Begin2(const QCborArray* self);
QTLIBC_API QCborArray__ConstIterator* QCborArray_Cbegin(const QCborArray* self);
QTLIBC_API QCborArray__Iterator* QCborArray_End(QCborArray* self);
QTLIBC_API QCborArray__ConstIterator* QCborArray_ConstEnd(const QCborArray* self);
QTLIBC_API QCborArray__ConstIterator* QCborArray_End2(const QCborArray* self);
QTLIBC_API QCborArray__ConstIterator* QCborArray_Cend(const QCborArray* self);
QTLIBC_API QCborArray__Iterator* QCborArray_Insert2(QCborArray* self, QCborArray__Iterator* before, QCborValue* value);
QTLIBC_API QCborArray__Iterator* QCborArray_Insert3(QCborArray* self, QCborArray__ConstIterator* before, QCborValue* value);
QTLIBC_API QCborArray__Iterator* QCborArray_Erase(QCborArray* self, QCborArray__Iterator* it);
QTLIBC_API QCborArray__Iterator* QCborArray_EraseWithIt(QCborArray* self, QCborArray__ConstIterator* it);
QTLIBC_API void QCborArray_PushBack(QCborArray* self, QCborValue* t);
QTLIBC_API void QCborArray_PushFront(QCborArray* self, QCborValue* t);
QTLIBC_API void QCborArray_PopFront(QCborArray* self);
QTLIBC_API void QCborArray_PopBack(QCborArray* self);
QTLIBC_API bool QCborArray_Empty(const QCborArray* self);
QTLIBC_API QCborArray* QCborArray_OperatorPlus(const QCborArray* self, QCborValue* v);
QTLIBC_API QCborArray* QCborArray_OperatorPlusAssign(QCborArray* self, QCborValue* v);
QTLIBC_API QCborArray* QCborArray_OperatorShiftLeft(QCborArray* self, QCborValue* v);
QTLIBC_API QCborArray* QCborArray_FromStringList(libqt_list /* of libqt_string */ list);
QTLIBC_API QCborArray* QCborArray_FromJsonArray(QJsonArray* array);
QTLIBC_API QJsonArray* QCborArray_ToJsonArray(const QCborArray* self);
QTLIBC_API void QCborArray_Delete(QCborArray* self);

QTLIBC_API QCborArray__Iterator* QCborArray__Iterator_new(QCborArray__Iterator* other);
QTLIBC_API QCborArray__Iterator* QCborArray__Iterator_new2();
QTLIBC_API QCborArray__Iterator* QCborArray__Iterator_new3(QCborArray__Iterator* param1);
QTLIBC_API void QCborArray__Iterator_OperatorAssign(QCborArray__Iterator* self, QCborArray__Iterator* other);
QTLIBC_API QCborValueRef* QCborArray__Iterator_OperatorMultiply(const QCborArray__Iterator* self);
QTLIBC_API QCborValueRef* QCborArray__Iterator_OperatorMinusGreater(QCborArray__Iterator* self);
QTLIBC_API QCborValueConstRef* QCborArray__Iterator_OperatorMinusGreater2(const QCborArray__Iterator* self);
QTLIBC_API QCborValueRef* QCborArray__Iterator_OperatorSubscript(const QCborArray__Iterator* self, ptrdiff_t j);
QTLIBC_API bool QCborArray__Iterator_OperatorEqual(const QCborArray__Iterator* self, QCborArray__Iterator* o);
QTLIBC_API bool QCborArray__Iterator_OperatorNotEqual(const QCborArray__Iterator* self, QCborArray__Iterator* o);
QTLIBC_API bool QCborArray__Iterator_OperatorLesser(const QCborArray__Iterator* self, QCborArray__Iterator* other);
QTLIBC_API bool QCborArray__Iterator_OperatorLesserOrEqual(const QCborArray__Iterator* self, QCborArray__Iterator* other);
QTLIBC_API bool QCborArray__Iterator_OperatorGreater(const QCborArray__Iterator* self, QCborArray__Iterator* other);
QTLIBC_API bool QCborArray__Iterator_OperatorGreaterOrEqual(const QCborArray__Iterator* self, QCborArray__Iterator* other);
QTLIBC_API bool QCborArray__Iterator_OperatorEqualWithQCborArrayConstIterator(const QCborArray__Iterator* self, QCborArray__ConstIterator* o);
QTLIBC_API bool QCborArray__Iterator_OperatorNotEqualWithQCborArrayConstIterator(const QCborArray__Iterator* self, QCborArray__ConstIterator* o);
QTLIBC_API bool QCborArray__Iterator_OperatorLesserWithOther(const QCborArray__Iterator* self, QCborArray__ConstIterator* other);
QTLIBC_API bool QCborArray__Iterator_OperatorLesserOrEqualWithOther(const QCborArray__Iterator* self, QCborArray__ConstIterator* other);
QTLIBC_API bool QCborArray__Iterator_OperatorGreaterWithOther(const QCborArray__Iterator* self, QCborArray__ConstIterator* other);
QTLIBC_API bool QCborArray__Iterator_OperatorGreaterOrEqualWithOther(const QCborArray__Iterator* self, QCborArray__ConstIterator* other);
QTLIBC_API QCborArray__Iterator* QCborArray__Iterator_OperatorPlusPlus(QCborArray__Iterator* self);
QTLIBC_API QCborArray__Iterator* QCborArray__Iterator_OperatorPlusPlusWithInt(QCborArray__Iterator* self, int param1);
QTLIBC_API QCborArray__Iterator* QCborArray__Iterator_OperatorMinusMinus(QCborArray__Iterator* self);
QTLIBC_API QCborArray__Iterator* QCborArray__Iterator_OperatorMinusMinusWithInt(QCborArray__Iterator* self, int param1);
QTLIBC_API QCborArray__Iterator* QCborArray__Iterator_OperatorPlusAssign(QCborArray__Iterator* self, ptrdiff_t j);
QTLIBC_API QCborArray__Iterator* QCborArray__Iterator_OperatorMinusAssign(QCborArray__Iterator* self, ptrdiff_t j);
QTLIBC_API QCborArray__Iterator* QCborArray__Iterator_OperatorPlus(const QCborArray__Iterator* self, ptrdiff_t j);
QTLIBC_API QCborArray__Iterator* QCborArray__Iterator_OperatorMinus(const QCborArray__Iterator* self, ptrdiff_t j);
QTLIBC_API ptrdiff_t QCborArray__Iterator_OperatorMinusWithQCborArrayIterator(const QCborArray__Iterator* self, QCborArray__Iterator* j);
QTLIBC_API void QCborArray__Iterator_Delete(QCborArray__Iterator* self);

QTLIBC_API QCborArray__ConstIterator* QCborArray__ConstIterator_new(QCborArray__ConstIterator* other);
QTLIBC_API QCborArray__ConstIterator* QCborArray__ConstIterator_new2();
QTLIBC_API QCborArray__ConstIterator* QCborArray__ConstIterator_new3(QCborArray__ConstIterator* param1);
QTLIBC_API void QCborArray__ConstIterator_OperatorAssign(QCborArray__ConstIterator* self, QCborArray__ConstIterator* other);
QTLIBC_API QCborValueConstRef* QCborArray__ConstIterator_OperatorMultiply(const QCborArray__ConstIterator* self);
QTLIBC_API QCborValueConstRef* QCborArray__ConstIterator_OperatorMinusGreater(const QCborArray__ConstIterator* self);
QTLIBC_API QCborValueConstRef* QCborArray__ConstIterator_OperatorSubscript(const QCborArray__ConstIterator* self, ptrdiff_t j);
QTLIBC_API bool QCborArray__ConstIterator_OperatorEqual(const QCborArray__ConstIterator* self, QCborArray__Iterator* o);
QTLIBC_API bool QCborArray__ConstIterator_OperatorNotEqual(const QCborArray__ConstIterator* self, QCborArray__Iterator* o);
QTLIBC_API bool QCborArray__ConstIterator_OperatorLesser(const QCborArray__ConstIterator* self, QCborArray__Iterator* other);
QTLIBC_API bool QCborArray__ConstIterator_OperatorLesserOrEqual(const QCborArray__ConstIterator* self, QCborArray__Iterator* other);
QTLIBC_API bool QCborArray__ConstIterator_OperatorGreater(const QCborArray__ConstIterator* self, QCborArray__Iterator* other);
QTLIBC_API bool QCborArray__ConstIterator_OperatorGreaterOrEqual(const QCborArray__ConstIterator* self, QCborArray__Iterator* other);
QTLIBC_API bool QCborArray__ConstIterator_OperatorEqualWithQCborArrayConstIterator(const QCborArray__ConstIterator* self, QCborArray__ConstIterator* o);
QTLIBC_API bool QCborArray__ConstIterator_OperatorNotEqualWithQCborArrayConstIterator(const QCborArray__ConstIterator* self, QCborArray__ConstIterator* o);
QTLIBC_API bool QCborArray__ConstIterator_OperatorLesserWithOther(const QCborArray__ConstIterator* self, QCborArray__ConstIterator* other);
QTLIBC_API bool QCborArray__ConstIterator_OperatorLesserOrEqualWithOther(const QCborArray__ConstIterator* self, QCborArray__ConstIterator* other);
QTLIBC_API bool QCborArray__ConstIterator_OperatorGreaterWithOther(const QCborArray__ConstIterator* self, QCborArray__ConstIterator* other);
QTLIBC_API bool QCborArray__ConstIterator_OperatorGreaterOrEqualWithOther(const QCborArray__ConstIterator* self, QCborArray__ConstIterator* other);
QTLIBC_API QCborArray__ConstIterator* QCborArray__ConstIterator_OperatorPlusPlus(QCborArray__ConstIterator* self);
QTLIBC_API QCborArray__ConstIterator* QCborArray__ConstIterator_OperatorPlusPlusWithInt(QCborArray__ConstIterator* self, int param1);
QTLIBC_API QCborArray__ConstIterator* QCborArray__ConstIterator_OperatorMinusMinus(QCborArray__ConstIterator* self);
QTLIBC_API QCborArray__ConstIterator* QCborArray__ConstIterator_OperatorMinusMinusWithInt(QCborArray__ConstIterator* self, int param1);
QTLIBC_API QCborArray__ConstIterator* QCborArray__ConstIterator_OperatorPlusAssign(QCborArray__ConstIterator* self, ptrdiff_t j);
QTLIBC_API QCborArray__ConstIterator* QCborArray__ConstIterator_OperatorMinusAssign(QCborArray__ConstIterator* self, ptrdiff_t j);
QTLIBC_API QCborArray__ConstIterator* QCborArray__ConstIterator_OperatorPlus(const QCborArray__ConstIterator* self, ptrdiff_t j);
QTLIBC_API QCborArray__ConstIterator* QCborArray__ConstIterator_OperatorMinus(const QCborArray__ConstIterator* self, ptrdiff_t j);
QTLIBC_API ptrdiff_t QCborArray__ConstIterator_OperatorMinusWithQCborArrayConstIterator(const QCborArray__ConstIterator* self, QCborArray__ConstIterator* j);
QTLIBC_API void QCborArray__ConstIterator_Delete(QCborArray__ConstIterator* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
