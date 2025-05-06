#pragma once
#ifndef SRCC_LIBQJSONARRAY_H
#define SRCC_LIBQJSONARRAY_H

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
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QJsonArray__const_iterator)
typedef QJsonArray::const_iterator QJsonArray__const_iterator;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QJsonArray__iterator)
typedef QJsonArray::iterator QJsonArray__iterator;
#endif
#else
typedef struct QJsonArray QJsonArray;
typedef struct QJsonArray__const_iterator QJsonArray__const_iterator;
typedef struct QJsonArray__iterator QJsonArray__iterator;
typedef struct QJsonValue QJsonValue;
typedef struct QJsonValueConstRef QJsonValueConstRef;
typedef struct QJsonValueRef QJsonValueRef;
#endif

#ifdef __cplusplus
typedef QJsonArray::ConstIterator ConstIterator;                           // C++ QFlags
typedef QJsonArray::Iterator Iterator;                                     // C++ QFlags
typedef QJsonArray::const_pointer const_pointer;                           // C++ QFlags
typedef QJsonArray::const_reference const_reference;                       // C++ QFlags
typedef QJsonArray::difference_type difference_type;                       // C++ QFlags
typedef QJsonArray::iterator::difference_type iteratordifference_type;     // C++ QFlags
typedef QJsonArray::iterator::iterator_category iteratoriterator_category; // C++ QFlags
typedef QJsonArray::iterator::pointer iteratorpointer;                     // C++ QFlags
typedef QJsonArray::iterator::reference iteratorreference;                 // C++ QFlags
typedef QJsonArray::iterator::value_type iteratorvalue_type;               // C++ QFlags
typedef QJsonArray::pointer pointer;                                       // C++ QFlags
typedef QJsonArray::reference reference;                                   // C++ QFlags
typedef QJsonArray::size_type size_type;                                   // C++ QFlags
typedef QJsonArray::value_type value_type;                                 // C++ QFlags
#else
typedef QJsonArray__const_iterator* ConstIterator; // C ABI QFlags
typedef QJsonArray__iterator* Iterator;            // C ABI QFlags
typedef QJsonValue* iteratorvalue_type;            // C ABI QFlags
typedef QJsonValueRef* iteratorpointer;            // C ABI QFlags
typedef QJsonValueRef* iteratorreference;          // C ABI QFlags
typedef long long difference_type;                 // C ABI QFlags
typedef ptrdiff_t iteratordifference_type;         // C ABI QFlags
typedef ptrdiff_t size_type;                       // C ABI QFlags
#endif

QTLIBC_API QJsonArray* QJsonArray_new();
QTLIBC_API QJsonArray* QJsonArray_new2(QJsonArray* other);
QTLIBC_API void QJsonArray_OperatorAssign(QJsonArray* self, QJsonArray* other);
QTLIBC_API QJsonArray* QJsonArray_FromStringList(libqt_list /* of libqt_string */ list);
QTLIBC_API ptrdiff_t QJsonArray_Size(const QJsonArray* self);
QTLIBC_API ptrdiff_t QJsonArray_Count(const QJsonArray* self);
QTLIBC_API bool QJsonArray_IsEmpty(const QJsonArray* self);
QTLIBC_API QJsonValue* QJsonArray_At(const QJsonArray* self, ptrdiff_t i);
QTLIBC_API QJsonValue* QJsonArray_First(const QJsonArray* self);
QTLIBC_API QJsonValue* QJsonArray_Last(const QJsonArray* self);
QTLIBC_API void QJsonArray_Prepend(QJsonArray* self, QJsonValue* value);
QTLIBC_API void QJsonArray_Append(QJsonArray* self, QJsonValue* value);
QTLIBC_API void QJsonArray_RemoveAt(QJsonArray* self, ptrdiff_t i);
QTLIBC_API QJsonValue* QJsonArray_TakeAt(QJsonArray* self, ptrdiff_t i);
QTLIBC_API void QJsonArray_RemoveFirst(QJsonArray* self);
QTLIBC_API void QJsonArray_RemoveLast(QJsonArray* self);
QTLIBC_API void QJsonArray_Insert(QJsonArray* self, ptrdiff_t i, QJsonValue* value);
QTLIBC_API void QJsonArray_Replace(QJsonArray* self, ptrdiff_t i, QJsonValue* value);
QTLIBC_API bool QJsonArray_Contains(const QJsonArray* self, QJsonValue* element);
QTLIBC_API QJsonValueRef* QJsonArray_OperatorSubscript(QJsonArray* self, ptrdiff_t i);
QTLIBC_API QJsonValue* QJsonArray_OperatorSubscriptWithQsizetype(const QJsonArray* self, ptrdiff_t i);
QTLIBC_API bool QJsonArray_OperatorEqual(const QJsonArray* self, QJsonArray* other);
QTLIBC_API bool QJsonArray_OperatorNotEqual(const QJsonArray* self, QJsonArray* other);
QTLIBC_API void QJsonArray_Swap(QJsonArray* self, QJsonArray* other);
QTLIBC_API QJsonArray__iterator* QJsonArray_Begin(QJsonArray* self);
QTLIBC_API QJsonArray__const_iterator* QJsonArray_Begin2(const QJsonArray* self);
QTLIBC_API QJsonArray__const_iterator* QJsonArray_ConstBegin(const QJsonArray* self);
QTLIBC_API QJsonArray__const_iterator* QJsonArray_Cbegin(const QJsonArray* self);
QTLIBC_API QJsonArray__iterator* QJsonArray_End(QJsonArray* self);
QTLIBC_API QJsonArray__const_iterator* QJsonArray_End2(const QJsonArray* self);
QTLIBC_API QJsonArray__const_iterator* QJsonArray_ConstEnd(const QJsonArray* self);
QTLIBC_API QJsonArray__const_iterator* QJsonArray_Cend(const QJsonArray* self);
QTLIBC_API QJsonArray__iterator* QJsonArray_Insert2(QJsonArray* self, QJsonArray__iterator* before, QJsonValue* value);
QTLIBC_API QJsonArray__iterator* QJsonArray_Erase(QJsonArray* self, QJsonArray__iterator* it);
QTLIBC_API QJsonArray* QJsonArray_OperatorPlus(const QJsonArray* self, QJsonValue* v);
QTLIBC_API QJsonArray* QJsonArray_OperatorPlusAssign(QJsonArray* self, QJsonValue* v);
QTLIBC_API QJsonArray* QJsonArray_OperatorShiftLeft(QJsonArray* self, QJsonValue* v);
QTLIBC_API void QJsonArray_PushBack(QJsonArray* self, QJsonValue* t);
QTLIBC_API void QJsonArray_PushFront(QJsonArray* self, QJsonValue* t);
QTLIBC_API void QJsonArray_PopFront(QJsonArray* self);
QTLIBC_API void QJsonArray_PopBack(QJsonArray* self);
QTLIBC_API bool QJsonArray_Empty(const QJsonArray* self);
QTLIBC_API void QJsonArray_Delete(QJsonArray* self);

QTLIBC_API QJsonArray__iterator* QJsonArray__iterator_new(QJsonArray__iterator* other);
QTLIBC_API QJsonArray__iterator* QJsonArray__iterator_new2();
QTLIBC_API QJsonArray__iterator* QJsonArray__iterator_new3(QJsonArray* array, ptrdiff_t index);
QTLIBC_API QJsonArray__iterator* QJsonArray__iterator_new4(QJsonArray__iterator* other);
QTLIBC_API void QJsonArray__iterator_OperatorAssign(QJsonArray__iterator* self, QJsonArray__iterator* other);
QTLIBC_API QJsonValueRef* QJsonArray__iterator_OperatorMultiply(const QJsonArray__iterator* self);
QTLIBC_API QJsonValueConstRef* QJsonArray__iterator_OperatorMinusGreater(const QJsonArray__iterator* self);
QTLIBC_API QJsonValueRef* QJsonArray__iterator_OperatorMinusGreater2(QJsonArray__iterator* self);
QTLIBC_API QJsonValueRef* QJsonArray__iterator_OperatorSubscript(const QJsonArray__iterator* self, ptrdiff_t j);
QTLIBC_API bool QJsonArray__iterator_OperatorEqual(const QJsonArray__iterator* self, QJsonArray__iterator* o);
QTLIBC_API bool QJsonArray__iterator_OperatorNotEqual(const QJsonArray__iterator* self, QJsonArray__iterator* o);
QTLIBC_API bool QJsonArray__iterator_OperatorLesser(const QJsonArray__iterator* self, QJsonArray__iterator* other);
QTLIBC_API bool QJsonArray__iterator_OperatorLesserOrEqual(const QJsonArray__iterator* self, QJsonArray__iterator* other);
QTLIBC_API bool QJsonArray__iterator_OperatorGreater(const QJsonArray__iterator* self, QJsonArray__iterator* other);
QTLIBC_API bool QJsonArray__iterator_OperatorGreaterOrEqual(const QJsonArray__iterator* self, QJsonArray__iterator* other);
QTLIBC_API bool QJsonArray__iterator_OperatorEqualWithQJsonArrayconstIterator(const QJsonArray__iterator* self, QJsonArray__const_iterator* o);
QTLIBC_API bool QJsonArray__iterator_OperatorNotEqualWithQJsonArrayconstIterator(const QJsonArray__iterator* self, QJsonArray__const_iterator* o);
QTLIBC_API bool QJsonArray__iterator_OperatorLesserWithOther(const QJsonArray__iterator* self, QJsonArray__const_iterator* other);
QTLIBC_API bool QJsonArray__iterator_OperatorLesserOrEqualWithOther(const QJsonArray__iterator* self, QJsonArray__const_iterator* other);
QTLIBC_API bool QJsonArray__iterator_OperatorGreaterWithOther(const QJsonArray__iterator* self, QJsonArray__const_iterator* other);
QTLIBC_API bool QJsonArray__iterator_OperatorGreaterOrEqualWithOther(const QJsonArray__iterator* self, QJsonArray__const_iterator* other);
QTLIBC_API QJsonArray__iterator* QJsonArray__iterator_OperatorPlusPlus(QJsonArray__iterator* self);
QTLIBC_API QJsonArray__iterator* QJsonArray__iterator_OperatorPlusPlusWithInt(QJsonArray__iterator* self, int param1);
QTLIBC_API QJsonArray__iterator* QJsonArray__iterator_OperatorMinusMinus(QJsonArray__iterator* self);
QTLIBC_API QJsonArray__iterator* QJsonArray__iterator_OperatorMinusMinusWithInt(QJsonArray__iterator* self, int param1);
QTLIBC_API QJsonArray__iterator* QJsonArray__iterator_OperatorPlusAssign(QJsonArray__iterator* self, ptrdiff_t j);
QTLIBC_API QJsonArray__iterator* QJsonArray__iterator_OperatorMinusAssign(QJsonArray__iterator* self, ptrdiff_t j);
QTLIBC_API QJsonArray__iterator* QJsonArray__iterator_OperatorPlus(const QJsonArray__iterator* self, ptrdiff_t j);
QTLIBC_API QJsonArray__iterator* QJsonArray__iterator_OperatorMinus(const QJsonArray__iterator* self, ptrdiff_t j);
QTLIBC_API ptrdiff_t QJsonArray__iterator_OperatorMinusWithQJsonArrayiterator(const QJsonArray__iterator* self, QJsonArray__iterator* j);
QTLIBC_API void QJsonArray__iterator_Delete(QJsonArray__iterator* self);

QTLIBC_API QJsonArray__const_iterator* QJsonArray__const_iterator_new(QJsonArray__const_iterator* other);
QTLIBC_API QJsonArray__const_iterator* QJsonArray__const_iterator_new2();
QTLIBC_API QJsonArray__const_iterator* QJsonArray__const_iterator_new3(QJsonArray* array, ptrdiff_t index);
QTLIBC_API QJsonArray__const_iterator* QJsonArray__const_iterator_new4(QJsonArray__iterator* o);
QTLIBC_API QJsonArray__const_iterator* QJsonArray__const_iterator_new5(QJsonArray__const_iterator* other);
QTLIBC_API void QJsonArray__const_iterator_OperatorAssign(QJsonArray__const_iterator* self, QJsonArray__const_iterator* other);
QTLIBC_API QJsonValueConstRef* QJsonArray__const_iterator_OperatorMultiply(const QJsonArray__const_iterator* self);
QTLIBC_API QJsonValueConstRef* QJsonArray__const_iterator_OperatorMinusGreater(const QJsonArray__const_iterator* self);
QTLIBC_API QJsonValueConstRef* QJsonArray__const_iterator_OperatorSubscript(const QJsonArray__const_iterator* self, ptrdiff_t j);
QTLIBC_API bool QJsonArray__const_iterator_OperatorEqual(const QJsonArray__const_iterator* self, QJsonArray__const_iterator* o);
QTLIBC_API bool QJsonArray__const_iterator_OperatorNotEqual(const QJsonArray__const_iterator* self, QJsonArray__const_iterator* o);
QTLIBC_API bool QJsonArray__const_iterator_OperatorLesser(const QJsonArray__const_iterator* self, QJsonArray__const_iterator* other);
QTLIBC_API bool QJsonArray__const_iterator_OperatorLesserOrEqual(const QJsonArray__const_iterator* self, QJsonArray__const_iterator* other);
QTLIBC_API bool QJsonArray__const_iterator_OperatorGreater(const QJsonArray__const_iterator* self, QJsonArray__const_iterator* other);
QTLIBC_API bool QJsonArray__const_iterator_OperatorGreaterOrEqual(const QJsonArray__const_iterator* self, QJsonArray__const_iterator* other);
QTLIBC_API QJsonArray__const_iterator* QJsonArray__const_iterator_OperatorPlusPlus(QJsonArray__const_iterator* self);
QTLIBC_API QJsonArray__const_iterator* QJsonArray__const_iterator_OperatorPlusPlusWithInt(QJsonArray__const_iterator* self, int param1);
QTLIBC_API QJsonArray__const_iterator* QJsonArray__const_iterator_OperatorMinusMinus(QJsonArray__const_iterator* self);
QTLIBC_API QJsonArray__const_iterator* QJsonArray__const_iterator_OperatorMinusMinusWithInt(QJsonArray__const_iterator* self, int param1);
QTLIBC_API QJsonArray__const_iterator* QJsonArray__const_iterator_OperatorPlusAssign(QJsonArray__const_iterator* self, ptrdiff_t j);
QTLIBC_API QJsonArray__const_iterator* QJsonArray__const_iterator_OperatorMinusAssign(QJsonArray__const_iterator* self, ptrdiff_t j);
QTLIBC_API QJsonArray__const_iterator* QJsonArray__const_iterator_OperatorPlus(const QJsonArray__const_iterator* self, ptrdiff_t j);
QTLIBC_API QJsonArray__const_iterator* QJsonArray__const_iterator_OperatorMinus(const QJsonArray__const_iterator* self, ptrdiff_t j);
QTLIBC_API ptrdiff_t QJsonArray__const_iterator_OperatorMinusWithQJsonArrayconstIterator(const QJsonArray__const_iterator* self, QJsonArray__const_iterator* j);
QTLIBC_API void QJsonArray__const_iterator_Delete(QJsonArray__const_iterator* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
