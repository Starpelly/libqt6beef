#pragma once
#ifndef SRC_QTC_LIBQPAGELAYOUT_H
#define SRC_QTC_LIBQPAGELAYOUT_H

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
typedef struct QMargins QMargins;
typedef struct QMarginsF QMarginsF;
typedef struct QPageLayout QPageLayout;
typedef struct QPageSize QPageSize;
typedef struct QRect QRect;
typedef struct QRectF QRectF;
#endif

#ifdef __cplusplus
typedef QPageLayout::Mode Mode;               // C++ enum
typedef QPageLayout::Orientation Orientation; // C++ enum
typedef QPageLayout::Unit Unit;               // C++ enum
#else
typedef int Mode;        // C ABI enum
typedef int Orientation; // C ABI enum
typedef int Unit;        // C ABI enum
#endif

QTLIBC_API QPageLayout* QPageLayout_new();
QTLIBC_API QPageLayout* QPageLayout_new2(QPageSize* pageSize, int orientation, QMarginsF* margins);
QTLIBC_API QPageLayout* QPageLayout_new3(QPageLayout* other);
QTLIBC_API QPageLayout* QPageLayout_new4(QPageSize* pageSize, int orientation, QMarginsF* margins, int units);
QTLIBC_API QPageLayout* QPageLayout_new5(QPageSize* pageSize, int orientation, QMarginsF* margins, int units, QMarginsF* minMargins);
QTLIBC_API void QPageLayout_OperatorAssign(QPageLayout* self, QPageLayout* other);
QTLIBC_API void QPageLayout_Swap(QPageLayout* self, QPageLayout* other);
QTLIBC_API bool QPageLayout_IsEquivalentTo(const QPageLayout* self, QPageLayout* other);
QTLIBC_API bool QPageLayout_IsValid(const QPageLayout* self);
QTLIBC_API void QPageLayout_SetMode(QPageLayout* self, int mode);
QTLIBC_API int QPageLayout_Mode(const QPageLayout* self);
QTLIBC_API void QPageLayout_SetPageSize(QPageLayout* self, QPageSize* pageSize);
QTLIBC_API QPageSize* QPageLayout_PageSize(const QPageLayout* self);
QTLIBC_API void QPageLayout_SetOrientation(QPageLayout* self, int orientation);
QTLIBC_API int QPageLayout_Orientation(const QPageLayout* self);
QTLIBC_API void QPageLayout_SetUnits(QPageLayout* self, int units);
QTLIBC_API int QPageLayout_Units(const QPageLayout* self);
QTLIBC_API bool QPageLayout_SetMargins(QPageLayout* self, QMarginsF* margins);
QTLIBC_API bool QPageLayout_SetLeftMargin(QPageLayout* self, double leftMargin);
QTLIBC_API bool QPageLayout_SetRightMargin(QPageLayout* self, double rightMargin);
QTLIBC_API bool QPageLayout_SetTopMargin(QPageLayout* self, double topMargin);
QTLIBC_API bool QPageLayout_SetBottomMargin(QPageLayout* self, double bottomMargin);
QTLIBC_API QMarginsF* QPageLayout_Margins(const QPageLayout* self);
QTLIBC_API QMarginsF* QPageLayout_MarginsWithUnits(const QPageLayout* self, int units);
QTLIBC_API QMargins* QPageLayout_MarginsPoints(const QPageLayout* self);
QTLIBC_API QMargins* QPageLayout_MarginsPixels(const QPageLayout* self, int resolution);
QTLIBC_API void QPageLayout_SetMinimumMargins(QPageLayout* self, QMarginsF* minMargins);
QTLIBC_API QMarginsF* QPageLayout_MinimumMargins(const QPageLayout* self);
QTLIBC_API QMarginsF* QPageLayout_MaximumMargins(const QPageLayout* self);
QTLIBC_API QRectF* QPageLayout_FullRect(const QPageLayout* self);
QTLIBC_API QRectF* QPageLayout_FullRectWithUnits(const QPageLayout* self, int units);
QTLIBC_API QRect* QPageLayout_FullRectPoints(const QPageLayout* self);
QTLIBC_API QRect* QPageLayout_FullRectPixels(const QPageLayout* self, int resolution);
QTLIBC_API QRectF* QPageLayout_PaintRect(const QPageLayout* self);
QTLIBC_API QRectF* QPageLayout_PaintRectWithUnits(const QPageLayout* self, int units);
QTLIBC_API QRect* QPageLayout_PaintRectPoints(const QPageLayout* self);
QTLIBC_API QRect* QPageLayout_PaintRectPixels(const QPageLayout* self, int resolution);
QTLIBC_API void QPageLayout_SetPageSize2(QPageLayout* self, QPageSize* pageSize, QMarginsF* minMargins);
QTLIBC_API void QPageLayout_Delete(QPageLayout* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
