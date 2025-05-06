#pragma once
#ifndef SRC_QTC_LIBQBYTEARRAYVIEW_H
#define SRC_QTC_LIBQBYTEARRAYVIEW_H

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
#endif

#ifdef __cplusplus
typedef QByteArrayView::const_pointer const_pointer;     // C++ QFlags
typedef QByteArrayView::const_reference const_reference; // C++ QFlags
typedef QByteArrayView::difference_type difference_type; // C++ QFlags
typedef QByteArrayView::iterator iterator;               // C++ QFlags
typedef QByteArrayView::pointer pointer;                 // C++ QFlags
typedef QByteArrayView::reference reference;             // C++ QFlags
typedef QByteArrayView::size_type size_type;             // C++ QFlags
typedef QByteArrayView::storage_type storage_type;       // C++ QFlags
typedef QByteArrayView::value_type value_type;           // C++ QFlags
#else
typedef long long difference_type; // C ABI QFlags
typedef ptrdiff_t size_type;       // C ABI QFlags
#endif

QTLIBC_API QByteArrayView* QByteArrayView_new(QByteArrayView* other);
QTLIBC_API QByteArrayView* QByteArrayView_new2(QByteArrayView* other);
QTLIBC_API QByteArrayView* QByteArrayView_new3();
QTLIBC_API QByteArrayView* QByteArrayView_new4(QByteArrayView* param1);
QTLIBC_API void QByteArrayView_CopyAssign(QByteArrayView* self, QByteArrayView* other);
QTLIBC_API void QByteArrayView_MoveAssign(QByteArrayView* self, QByteArrayView* other);
QTLIBC_API libqt_string QByteArrayView_ToByteArray(const QByteArrayView* self);
QTLIBC_API ptrdiff_t QByteArrayView_Size(const QByteArrayView* self);
QTLIBC_API const char* QByteArrayView_Data(const QByteArrayView* self);
QTLIBC_API const char* QByteArrayView_ConstData(const QByteArrayView* self);
QTLIBC_API char QByteArrayView_OperatorSubscript(const QByteArrayView* self, ptrdiff_t n);
QTLIBC_API char QByteArrayView_At(const QByteArrayView* self, ptrdiff_t n);
QTLIBC_API QByteArrayView* QByteArrayView_First(const QByteArrayView* self, ptrdiff_t n);
QTLIBC_API QByteArrayView* QByteArrayView_Last(const QByteArrayView* self, ptrdiff_t n);
QTLIBC_API QByteArrayView* QByteArrayView_Sliced(const QByteArrayView* self, ptrdiff_t pos);
QTLIBC_API QByteArrayView* QByteArrayView_Sliced2(const QByteArrayView* self, ptrdiff_t pos, ptrdiff_t n);
QTLIBC_API QByteArrayView* QByteArrayView_Chopped(const QByteArrayView* self, ptrdiff_t lenVal);
QTLIBC_API void QByteArrayView_Truncate(QByteArrayView* self, ptrdiff_t n);
QTLIBC_API void QByteArrayView_Chop(QByteArrayView* self, ptrdiff_t n);
QTLIBC_API QByteArrayView* QByteArrayView_Trimmed(const QByteArrayView* self);
QTLIBC_API int16_t QByteArrayView_ToShort(const QByteArrayView* self);
QTLIBC_API uint16_t QByteArrayView_ToUShort(const QByteArrayView* self);
QTLIBC_API int QByteArrayView_ToInt(const QByteArrayView* self);
QTLIBC_API unsigned int QByteArrayView_ToUInt(const QByteArrayView* self);
QTLIBC_API long QByteArrayView_ToLong(const QByteArrayView* self);
QTLIBC_API unsigned long QByteArrayView_ToULong(const QByteArrayView* self);
QTLIBC_API long long QByteArrayView_ToLongLong(const QByteArrayView* self);
QTLIBC_API unsigned long long QByteArrayView_ToULongLong(const QByteArrayView* self);
QTLIBC_API float QByteArrayView_ToFloat(const QByteArrayView* self);
QTLIBC_API double QByteArrayView_ToDouble(const QByteArrayView* self);
QTLIBC_API bool QByteArrayView_StartsWith(const QByteArrayView* self, QByteArrayView* other);
QTLIBC_API bool QByteArrayView_StartsWithWithChar(const QByteArrayView* self, char c);
QTLIBC_API bool QByteArrayView_EndsWith(const QByteArrayView* self, QByteArrayView* other);
QTLIBC_API bool QByteArrayView_EndsWithWithChar(const QByteArrayView* self, char c);
QTLIBC_API ptrdiff_t QByteArrayView_IndexOf(const QByteArrayView* self, QByteArrayView* a);
QTLIBC_API ptrdiff_t QByteArrayView_IndexOfWithCh(const QByteArrayView* self, char ch);
QTLIBC_API bool QByteArrayView_Contains(const QByteArrayView* self, QByteArrayView* a);
QTLIBC_API bool QByteArrayView_ContainsWithChar(const QByteArrayView* self, char c);
QTLIBC_API ptrdiff_t QByteArrayView_LastIndexOf(const QByteArrayView* self, QByteArrayView* a);
QTLIBC_API ptrdiff_t QByteArrayView_LastIndexOf2(const QByteArrayView* self, QByteArrayView* a, ptrdiff_t from);
QTLIBC_API ptrdiff_t QByteArrayView_LastIndexOfWithCh(const QByteArrayView* self, char ch);
QTLIBC_API ptrdiff_t QByteArrayView_Count(const QByteArrayView* self, QByteArrayView* a);
QTLIBC_API ptrdiff_t QByteArrayView_CountWithCh(const QByteArrayView* self, char ch);
QTLIBC_API int QByteArrayView_Compare(const QByteArrayView* self, QByteArrayView* a);
QTLIBC_API bool QByteArrayView_IsValidUtf8(const QByteArrayView* self);
QTLIBC_API const char* QByteArrayView_Begin(const QByteArrayView* self);
QTLIBC_API const char* QByteArrayView_End(const QByteArrayView* self);
QTLIBC_API const char* QByteArrayView_Cbegin(const QByteArrayView* self);
QTLIBC_API const char* QByteArrayView_Cend(const QByteArrayView* self);
QTLIBC_API bool QByteArrayView_Empty(const QByteArrayView* self);
QTLIBC_API char QByteArrayView_Front(const QByteArrayView* self);
QTLIBC_API char QByteArrayView_Back(const QByteArrayView* self);
QTLIBC_API bool QByteArrayView_IsNull(const QByteArrayView* self);
QTLIBC_API bool QByteArrayView_IsEmpty(const QByteArrayView* self);
QTLIBC_API ptrdiff_t QByteArrayView_Length(const QByteArrayView* self);
QTLIBC_API char QByteArrayView_First2(const QByteArrayView* self);
QTLIBC_API char QByteArrayView_Last2(const QByteArrayView* self);
QTLIBC_API int16_t QByteArrayView_ToShort1(const QByteArrayView* self, bool* ok);
QTLIBC_API int16_t QByteArrayView_ToShort2(const QByteArrayView* self, bool* ok, int base);
QTLIBC_API uint16_t QByteArrayView_ToUShort1(const QByteArrayView* self, bool* ok);
QTLIBC_API uint16_t QByteArrayView_ToUShort2(const QByteArrayView* self, bool* ok, int base);
QTLIBC_API int QByteArrayView_ToInt1(const QByteArrayView* self, bool* ok);
QTLIBC_API int QByteArrayView_ToInt2(const QByteArrayView* self, bool* ok, int base);
QTLIBC_API unsigned int QByteArrayView_ToUInt1(const QByteArrayView* self, bool* ok);
QTLIBC_API unsigned int QByteArrayView_ToUInt2(const QByteArrayView* self, bool* ok, int base);
QTLIBC_API long QByteArrayView_ToLong1(const QByteArrayView* self, bool* ok);
QTLIBC_API long QByteArrayView_ToLong2(const QByteArrayView* self, bool* ok, int base);
QTLIBC_API unsigned long QByteArrayView_ToULong1(const QByteArrayView* self, bool* ok);
QTLIBC_API unsigned long QByteArrayView_ToULong2(const QByteArrayView* self, bool* ok, int base);
QTLIBC_API long long QByteArrayView_ToLongLong1(const QByteArrayView* self, bool* ok);
QTLIBC_API long long QByteArrayView_ToLongLong2(const QByteArrayView* self, bool* ok, int base);
QTLIBC_API unsigned long long QByteArrayView_ToULongLong1(const QByteArrayView* self, bool* ok);
QTLIBC_API unsigned long long QByteArrayView_ToULongLong2(const QByteArrayView* self, bool* ok, int base);
QTLIBC_API float QByteArrayView_ToFloat1(const QByteArrayView* self, bool* ok);
QTLIBC_API double QByteArrayView_ToDouble1(const QByteArrayView* self, bool* ok);
QTLIBC_API ptrdiff_t QByteArrayView_IndexOf2(const QByteArrayView* self, QByteArrayView* a, ptrdiff_t from);
QTLIBC_API ptrdiff_t QByteArrayView_IndexOf22(const QByteArrayView* self, char ch, ptrdiff_t from);
QTLIBC_API ptrdiff_t QByteArrayView_LastIndexOf22(const QByteArrayView* self, char ch, ptrdiff_t from);
QTLIBC_API int QByteArrayView_Compare2(const QByteArrayView* self, QByteArrayView* a, int cs);
QTLIBC_API void QByteArrayView_Delete(QByteArrayView* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
