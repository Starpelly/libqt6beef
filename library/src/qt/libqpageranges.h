#pragma once
#ifndef SRC_QTC_LIBQPAGERANGES_H
#define SRC_QTC_LIBQPAGERANGES_H

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
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QPageRanges__Range)
typedef QPageRanges::Range QPageRanges__Range;
#endif
#else
typedef struct QPageRanges QPageRanges;
typedef struct QPageRanges__Range QPageRanges__Range;
#endif

QTLIBC_API QPageRanges* QPageRanges_new();
QTLIBC_API QPageRanges* QPageRanges_new2(QPageRanges* other);
QTLIBC_API void QPageRanges_OperatorAssign(QPageRanges* self, QPageRanges* other);
QTLIBC_API void QPageRanges_Swap(QPageRanges* self, QPageRanges* other);
QTLIBC_API void QPageRanges_AddPage(QPageRanges* self, int pageNumber);
QTLIBC_API void QPageRanges_AddRange(QPageRanges* self, int from, int to);
QTLIBC_API libqt_list /* of QPageRanges__Range* */ QPageRanges_ToRangeList(const QPageRanges* self);
QTLIBC_API void QPageRanges_Clear(QPageRanges* self);
QTLIBC_API libqt_string QPageRanges_ToString(const QPageRanges* self);
QTLIBC_API QPageRanges* QPageRanges_FromString(libqt_string ranges);
QTLIBC_API bool QPageRanges_Contains(const QPageRanges* self, int pageNumber);
QTLIBC_API bool QPageRanges_IsEmpty(const QPageRanges* self);
QTLIBC_API int QPageRanges_FirstPage(const QPageRanges* self);
QTLIBC_API int QPageRanges_LastPage(const QPageRanges* self);
QTLIBC_API void QPageRanges_Detach(QPageRanges* self);
QTLIBC_API void QPageRanges_Delete(QPageRanges* self);

QTLIBC_API QPageRanges__Range* QPageRanges__Range_new(QPageRanges__Range* other);
QTLIBC_API QPageRanges__Range* QPageRanges__Range_new2(QPageRanges__Range* other);
QTLIBC_API QPageRanges__Range* QPageRanges__Range_new3();
QTLIBC_API QPageRanges__Range* QPageRanges__Range_new4(QPageRanges__Range* param1);
QTLIBC_API void QPageRanges__Range_CopyAssign(QPageRanges__Range* self, QPageRanges__Range* other);
QTLIBC_API void QPageRanges__Range_MoveAssign(QPageRanges__Range* self, QPageRanges__Range* other);
QTLIBC_API bool QPageRanges__Range_Contains(const QPageRanges__Range* self, int pageNumber);
QTLIBC_API void QPageRanges__Range_Delete(QPageRanges__Range* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
