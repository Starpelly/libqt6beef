#pragma once
#ifndef SRC_QTC_LIBQSTRINGVIEW_H
#define SRC_QTC_LIBQSTRINGVIEW_H

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
typedef struct QRegularExpression QRegularExpression;
typedef struct QRegularExpressionMatch QRegularExpressionMatch;
typedef struct QStringView QStringView;
#endif

#ifdef __cplusplus
typedef QStringView::const_pointer const_pointer;     // C++ QFlags
typedef QStringView::const_reference const_reference; // C++ QFlags
typedef QStringView::difference_type difference_type; // C++ QFlags
typedef QStringView::iterator iterator;               // C++ QFlags
typedef QStringView::pointer pointer;                 // C++ QFlags
typedef QStringView::reference reference;             // C++ QFlags
typedef QStringView::size_type size_type;             // C++ QFlags
typedef QStringView::storage_type storage_type;       // C++ QFlags
typedef QStringView::value_type value_type;           // C++ QFlags
#else
typedef long long difference_type; // C ABI QFlags
typedef ptrdiff_t size_type;       // C ABI QFlags
#endif

QTLIBC_API QStringView* QStringView_new();
QTLIBC_API void QStringView_CopyAssign(QStringView* self, QStringView* other);
QTLIBC_API void QStringView_MoveAssign(QStringView* self, QStringView* other);
QTLIBC_API libqt_string QStringView_ToString(const QStringView* self);
QTLIBC_API ptrdiff_t QStringView_Size(const QStringView* self);
QTLIBC_API QChar* QStringView_Data(const QStringView* self);
QTLIBC_API QChar* QStringView_ConstData(const QStringView* self);
QTLIBC_API QChar* QStringView_OperatorSubscript(const QStringView* self, ptrdiff_t n);
QTLIBC_API libqt_string QStringView_ToLatin1(const QStringView* self);
QTLIBC_API libqt_string QStringView_ToUtf8(const QStringView* self);
QTLIBC_API libqt_string QStringView_ToLocal8Bit(const QStringView* self);
QTLIBC_API libqt_list /* of unsigned int */ QStringView_ToUcs4(const QStringView* self);
QTLIBC_API QChar* QStringView_At(const QStringView* self, ptrdiff_t n);
QTLIBC_API void QStringView_Truncate(QStringView* self, ptrdiff_t n);
QTLIBC_API void QStringView_Chop(QStringView* self, ptrdiff_t n);
QTLIBC_API int QStringView_CompareWithQChar(const QStringView* self, QChar* c);
QTLIBC_API int QStringView_Compare2(const QStringView* self, QChar* c, int cs);
QTLIBC_API bool QStringView_StartsWithWithQChar(const QStringView* self, QChar* c);
QTLIBC_API bool QStringView_StartsWith2(const QStringView* self, QChar* c, int cs);
QTLIBC_API bool QStringView_EndsWithWithQChar(const QStringView* self, QChar* c);
QTLIBC_API bool QStringView_EndsWith2(const QStringView* self, QChar* c, int cs);
QTLIBC_API ptrdiff_t QStringView_IndexOf(const QStringView* self, QChar* c);
QTLIBC_API bool QStringView_Contains(const QStringView* self, QChar* c);
QTLIBC_API ptrdiff_t QStringView_Count(const QStringView* self, QChar* c);
QTLIBC_API ptrdiff_t QStringView_LastIndexOf(const QStringView* self, QChar* c);
QTLIBC_API ptrdiff_t QStringView_LastIndexOf2(const QStringView* self, QChar* c, ptrdiff_t from);
QTLIBC_API ptrdiff_t QStringView_IndexOfWithRe(const QStringView* self, QRegularExpression* re);
QTLIBC_API ptrdiff_t QStringView_LastIndexOf5(const QStringView* self, QRegularExpression* re, ptrdiff_t from);
QTLIBC_API bool QStringView_ContainsWithRe(const QStringView* self, QRegularExpression* re);
QTLIBC_API ptrdiff_t QStringView_CountWithRe(const QStringView* self, QRegularExpression* re);
QTLIBC_API bool QStringView_IsRightToLeft(const QStringView* self);
QTLIBC_API bool QStringView_IsValidUtf16(const QStringView* self);
QTLIBC_API int16_t QStringView_ToShort(const QStringView* self);
QTLIBC_API uint16_t QStringView_ToUShort(const QStringView* self);
QTLIBC_API int QStringView_ToInt(const QStringView* self);
QTLIBC_API unsigned int QStringView_ToUInt(const QStringView* self);
QTLIBC_API long QStringView_ToLong(const QStringView* self);
QTLIBC_API unsigned long QStringView_ToULong(const QStringView* self);
QTLIBC_API long long QStringView_ToLongLong(const QStringView* self);
QTLIBC_API unsigned long long QStringView_ToULongLong(const QStringView* self);
QTLIBC_API float QStringView_ToFloat(const QStringView* self);
QTLIBC_API double QStringView_ToDouble(const QStringView* self);
QTLIBC_API QChar* QStringView_Begin(const QStringView* self);
QTLIBC_API QChar* QStringView_End(const QStringView* self);
QTLIBC_API QChar* QStringView_Cbegin(const QStringView* self);
QTLIBC_API QChar* QStringView_Cend(const QStringView* self);
QTLIBC_API bool QStringView_Empty(const QStringView* self);
QTLIBC_API QChar* QStringView_Front(const QStringView* self);
QTLIBC_API QChar* QStringView_Back(const QStringView* self);
QTLIBC_API QChar* QStringView_ConstBegin(const QStringView* self);
QTLIBC_API QChar* QStringView_ConstEnd(const QStringView* self);
QTLIBC_API bool QStringView_IsNull(const QStringView* self);
QTLIBC_API bool QStringView_IsEmpty(const QStringView* self);
QTLIBC_API ptrdiff_t QStringView_Length(const QStringView* self);
QTLIBC_API QChar* QStringView_First2(const QStringView* self);
QTLIBC_API QChar* QStringView_Last2(const QStringView* self);
QTLIBC_API ptrdiff_t QStringView_IndexOf2(const QStringView* self, QChar* c, ptrdiff_t from);
QTLIBC_API ptrdiff_t QStringView_IndexOf3(const QStringView* self, QChar* c, ptrdiff_t from, int cs);
QTLIBC_API bool QStringView_Contains2(const QStringView* self, QChar* c, int cs);
QTLIBC_API ptrdiff_t QStringView_Count2(const QStringView* self, QChar* c, int cs);
QTLIBC_API ptrdiff_t QStringView_LastIndexOf22(const QStringView* self, QChar* c, int cs);
QTLIBC_API ptrdiff_t QStringView_LastIndexOf32(const QStringView* self, QChar* c, ptrdiff_t from, int cs);
QTLIBC_API ptrdiff_t QStringView_IndexOf24(const QStringView* self, QRegularExpression* re, ptrdiff_t from);
QTLIBC_API ptrdiff_t QStringView_IndexOf34(const QStringView* self, QRegularExpression* re, ptrdiff_t from, QRegularExpressionMatch* rmatch);
QTLIBC_API ptrdiff_t QStringView_LastIndexOf35(const QStringView* self, QRegularExpression* re, ptrdiff_t from, QRegularExpressionMatch* rmatch);
QTLIBC_API bool QStringView_Contains24(const QStringView* self, QRegularExpression* re, QRegularExpressionMatch* rmatch);
QTLIBC_API int16_t QStringView_ToShort1(const QStringView* self, bool* ok);
QTLIBC_API int16_t QStringView_ToShort2(const QStringView* self, bool* ok, int base);
QTLIBC_API uint16_t QStringView_ToUShort1(const QStringView* self, bool* ok);
QTLIBC_API uint16_t QStringView_ToUShort2(const QStringView* self, bool* ok, int base);
QTLIBC_API int QStringView_ToInt1(const QStringView* self, bool* ok);
QTLIBC_API int QStringView_ToInt2(const QStringView* self, bool* ok, int base);
QTLIBC_API unsigned int QStringView_ToUInt1(const QStringView* self, bool* ok);
QTLIBC_API unsigned int QStringView_ToUInt2(const QStringView* self, bool* ok, int base);
QTLIBC_API long QStringView_ToLong1(const QStringView* self, bool* ok);
QTLIBC_API long QStringView_ToLong2(const QStringView* self, bool* ok, int base);
QTLIBC_API unsigned long QStringView_ToULong1(const QStringView* self, bool* ok);
QTLIBC_API unsigned long QStringView_ToULong2(const QStringView* self, bool* ok, int base);
QTLIBC_API long long QStringView_ToLongLong1(const QStringView* self, bool* ok);
QTLIBC_API long long QStringView_ToLongLong2(const QStringView* self, bool* ok, int base);
QTLIBC_API unsigned long long QStringView_ToULongLong1(const QStringView* self, bool* ok);
QTLIBC_API unsigned long long QStringView_ToULongLong2(const QStringView* self, bool* ok, int base);
QTLIBC_API float QStringView_ToFloat1(const QStringView* self, bool* ok);
QTLIBC_API double QStringView_ToDouble1(const QStringView* self, bool* ok);
QTLIBC_API void QStringView_Delete(QStringView* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
