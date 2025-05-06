#pragma once
#ifndef SRCC_LIBQANYSTRINGVIEW_H
#define SRCC_LIBQANYSTRINGVIEW_H

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
typedef struct QAnyStringView QAnyStringView;
typedef struct QChar QChar;
#endif

#ifdef __cplusplus
typedef QAnyStringView::difference_type difference_type; // C++ QFlags
typedef QAnyStringView::size_type size_type;             // C++ QFlags
#else
typedef long long difference_type; // C ABI QFlags
typedef ptrdiff_t size_type;       // C ABI QFlags
#endif

QTLIBC_API QAnyStringView* QAnyStringView_new(char* other);
QTLIBC_API QAnyStringView* QAnyStringView_new2(char* other);
QTLIBC_API QAnyStringView* QAnyStringView_new3();
QTLIBC_API QAnyStringView* QAnyStringView_new4(libqt_string str);
QTLIBC_API QAnyStringView* QAnyStringView_new5(libqt_string str);
QTLIBC_API QAnyStringView* QAnyStringView_new6(QChar* c);
QTLIBC_API QAnyStringView* QAnyStringView_new7(char* param1);
QTLIBC_API void QAnyStringView_CopyAssign(QAnyStringView* self, QAnyStringView* other);
QTLIBC_API void QAnyStringView_MoveAssign(QAnyStringView* self, QAnyStringView* other);
QTLIBC_API libqt_string QAnyStringView_ToString(const QAnyStringView* self);
QTLIBC_API ptrdiff_t QAnyStringView_Size(const QAnyStringView* self);
QTLIBC_API const void* QAnyStringView_Data(const QAnyStringView* self);
QTLIBC_API int QAnyStringView_Compare(char* lhs, char* rhs);
QTLIBC_API bool QAnyStringView_Equal(char* lhs, char* rhs);
QTLIBC_API QChar* QAnyStringView_Front(const QAnyStringView* self);
QTLIBC_API QChar* QAnyStringView_Back(const QAnyStringView* self);
QTLIBC_API bool QAnyStringView_Empty(const QAnyStringView* self);
QTLIBC_API ptrdiff_t QAnyStringView_SizeBytes(const QAnyStringView* self);
QTLIBC_API bool QAnyStringView_IsNull(const QAnyStringView* self);
QTLIBC_API bool QAnyStringView_IsEmpty(const QAnyStringView* self);
QTLIBC_API ptrdiff_t QAnyStringView_Length(const QAnyStringView* self);
QTLIBC_API int QAnyStringView_Compare3(char* lhs, char* rhs, int cs);
QTLIBC_API void QAnyStringView_Delete(QAnyStringView* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
