#pragma once
#ifndef SRC_QTC_LIBQRECT_H
#define SRC_QTC_LIBQRECT_H

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
typedef struct QPoint QPoint;
typedef struct QPointF QPointF;
typedef struct QRect QRect;
typedef struct QRectF QRectF;
typedef struct QSize QSize;
typedef struct QSizeF QSizeF;
#endif

QTLIBC_API QRect* QRect_new(QRect* other);
QTLIBC_API QRect* QRect_new2(QRect* other);
QTLIBC_API QRect* QRect_new3();
QTLIBC_API QRect* QRect_new4(QPoint* topleft, QPoint* bottomright);
QTLIBC_API QRect* QRect_new5(QPoint* topleft, QSize* size);
QTLIBC_API QRect* QRect_new6(int left, int top, int width, int height);
QTLIBC_API QRect* QRect_new7(QRect* param1);
QTLIBC_API void QRect_CopyAssign(QRect* self, QRect* other);
QTLIBC_API void QRect_MoveAssign(QRect* self, QRect* other);
QTLIBC_API bool QRect_IsNull(const QRect* self);
QTLIBC_API bool QRect_IsEmpty(const QRect* self);
QTLIBC_API bool QRect_IsValid(const QRect* self);
QTLIBC_API int QRect_Left(const QRect* self);
QTLIBC_API int QRect_Top(const QRect* self);
QTLIBC_API int QRect_Right(const QRect* self);
QTLIBC_API int QRect_Bottom(const QRect* self);
QTLIBC_API QRect* QRect_Normalized(const QRect* self);
QTLIBC_API int QRect_X(const QRect* self);
QTLIBC_API int QRect_Y(const QRect* self);
QTLIBC_API void QRect_SetLeft(QRect* self, int pos);
QTLIBC_API void QRect_SetTop(QRect* self, int pos);
QTLIBC_API void QRect_SetRight(QRect* self, int pos);
QTLIBC_API void QRect_SetBottom(QRect* self, int pos);
QTLIBC_API void QRect_SetX(QRect* self, int x);
QTLIBC_API void QRect_SetY(QRect* self, int y);
QTLIBC_API void QRect_SetTopLeft(QRect* self, QPoint* p);
QTLIBC_API void QRect_SetBottomRight(QRect* self, QPoint* p);
QTLIBC_API void QRect_SetTopRight(QRect* self, QPoint* p);
QTLIBC_API void QRect_SetBottomLeft(QRect* self, QPoint* p);
QTLIBC_API QPoint* QRect_TopLeft(const QRect* self);
QTLIBC_API QPoint* QRect_BottomRight(const QRect* self);
QTLIBC_API QPoint* QRect_TopRight(const QRect* self);
QTLIBC_API QPoint* QRect_BottomLeft(const QRect* self);
QTLIBC_API QPoint* QRect_Center(const QRect* self);
QTLIBC_API void QRect_MoveLeft(QRect* self, int pos);
QTLIBC_API void QRect_MoveTop(QRect* self, int pos);
QTLIBC_API void QRect_MoveRight(QRect* self, int pos);
QTLIBC_API void QRect_MoveBottom(QRect* self, int pos);
QTLIBC_API void QRect_MoveTopLeft(QRect* self, QPoint* p);
QTLIBC_API void QRect_MoveBottomRight(QRect* self, QPoint* p);
QTLIBC_API void QRect_MoveTopRight(QRect* self, QPoint* p);
QTLIBC_API void QRect_MoveBottomLeft(QRect* self, QPoint* p);
QTLIBC_API void QRect_MoveCenter(QRect* self, QPoint* p);
QTLIBC_API void QRect_Translate(QRect* self, int dx, int dy);
QTLIBC_API void QRect_TranslateWithQPoint(QRect* self, QPoint* p);
QTLIBC_API QRect* QRect_Translated(const QRect* self, int dx, int dy);
QTLIBC_API QRect* QRect_TranslatedWithQPoint(const QRect* self, QPoint* p);
QTLIBC_API QRect* QRect_Transposed(const QRect* self);
QTLIBC_API void QRect_MoveTo(QRect* self, int x, int t);
QTLIBC_API void QRect_MoveToWithQPoint(QRect* self, QPoint* p);
QTLIBC_API void QRect_SetRect(QRect* self, int x, int y, int w, int h);
QTLIBC_API void QRect_GetRect(const QRect* self, int* x, int* y, int* w, int* h);
QTLIBC_API void QRect_SetCoords(QRect* self, int x1, int y1, int x2, int y2);
QTLIBC_API void QRect_GetCoords(const QRect* self, int* x1, int* y1, int* x2, int* y2);
QTLIBC_API void QRect_Adjust(QRect* self, int x1, int y1, int x2, int y2);
QTLIBC_API QRect* QRect_Adjusted(const QRect* self, int x1, int y1, int x2, int y2);
QTLIBC_API QSize* QRect_Size(const QRect* self);
QTLIBC_API int QRect_Width(const QRect* self);
QTLIBC_API int QRect_Height(const QRect* self);
QTLIBC_API void QRect_SetWidth(QRect* self, int w);
QTLIBC_API void QRect_SetHeight(QRect* self, int h);
QTLIBC_API void QRect_SetSize(QRect* self, QSize* s);
QTLIBC_API QRect* QRect_OperatorBitwiseOr(const QRect* self, QRect* r);
QTLIBC_API QRect* QRect_OperatorBitwiseAnd(const QRect* self, QRect* r);
QTLIBC_API void QRect_OperatorBitwiseOrAssign(QRect* self, QRect* r);
QTLIBC_API void QRect_OperatorBitwiseAndAssign(QRect* self, QRect* r);
QTLIBC_API bool QRect_Contains(const QRect* self, QRect* r);
QTLIBC_API bool QRect_ContainsWithQPoint(const QRect* self, QPoint* p);
QTLIBC_API bool QRect_Contains2(const QRect* self, int x, int y);
QTLIBC_API bool QRect_Contains3(const QRect* self, int x, int y, bool proper);
QTLIBC_API QRect* QRect_United(const QRect* self, QRect* other);
QTLIBC_API QRect* QRect_Intersected(const QRect* self, QRect* other);
QTLIBC_API bool QRect_Intersects(const QRect* self, QRect* r);
QTLIBC_API QRect* QRect_MarginsAdded(const QRect* self, QMargins* margins);
QTLIBC_API QRect* QRect_MarginsRemoved(const QRect* self, QMargins* margins);
QTLIBC_API QRect* QRect_OperatorPlusAssign(QRect* self, QMargins* margins);
QTLIBC_API QRect* QRect_OperatorMinusAssign(QRect* self, QMargins* margins);
QTLIBC_API QRect* QRect_Span(QPoint* p1, QPoint* p2);
QTLIBC_API QRectF* QRect_ToRectF(const QRect* self);
QTLIBC_API bool QRect_Contains22(const QRect* self, QRect* r, bool proper);
QTLIBC_API bool QRect_Contains23(const QRect* self, QPoint* p, bool proper);
QTLIBC_API void QRect_Delete(QRect* self);

QTLIBC_API QRectF* QRectF_new(QRectF* other);
QTLIBC_API QRectF* QRectF_new2(QRectF* other);
QTLIBC_API QRectF* QRectF_new3();
QTLIBC_API QRectF* QRectF_new4(QPointF* topleft, QSizeF* size);
QTLIBC_API QRectF* QRectF_new5(QPointF* topleft, QPointF* bottomRight);
QTLIBC_API QRectF* QRectF_new6(double left, double top, double width, double height);
QTLIBC_API QRectF* QRectF_new7(QRect* rect);
QTLIBC_API QRectF* QRectF_new8(QRectF* param1);
QTLIBC_API void QRectF_CopyAssign(QRectF* self, QRectF* other);
QTLIBC_API void QRectF_MoveAssign(QRectF* self, QRectF* other);
QTLIBC_API bool QRectF_IsNull(const QRectF* self);
QTLIBC_API bool QRectF_IsEmpty(const QRectF* self);
QTLIBC_API bool QRectF_IsValid(const QRectF* self);
QTLIBC_API QRectF* QRectF_Normalized(const QRectF* self);
QTLIBC_API double QRectF_Left(const QRectF* self);
QTLIBC_API double QRectF_Top(const QRectF* self);
QTLIBC_API double QRectF_Right(const QRectF* self);
QTLIBC_API double QRectF_Bottom(const QRectF* self);
QTLIBC_API double QRectF_X(const QRectF* self);
QTLIBC_API double QRectF_Y(const QRectF* self);
QTLIBC_API void QRectF_SetLeft(QRectF* self, double pos);
QTLIBC_API void QRectF_SetTop(QRectF* self, double pos);
QTLIBC_API void QRectF_SetRight(QRectF* self, double pos);
QTLIBC_API void QRectF_SetBottom(QRectF* self, double pos);
QTLIBC_API void QRectF_SetX(QRectF* self, double pos);
QTLIBC_API void QRectF_SetY(QRectF* self, double pos);
QTLIBC_API QPointF* QRectF_TopLeft(const QRectF* self);
QTLIBC_API QPointF* QRectF_BottomRight(const QRectF* self);
QTLIBC_API QPointF* QRectF_TopRight(const QRectF* self);
QTLIBC_API QPointF* QRectF_BottomLeft(const QRectF* self);
QTLIBC_API QPointF* QRectF_Center(const QRectF* self);
QTLIBC_API void QRectF_SetTopLeft(QRectF* self, QPointF* p);
QTLIBC_API void QRectF_SetBottomRight(QRectF* self, QPointF* p);
QTLIBC_API void QRectF_SetTopRight(QRectF* self, QPointF* p);
QTLIBC_API void QRectF_SetBottomLeft(QRectF* self, QPointF* p);
QTLIBC_API void QRectF_MoveLeft(QRectF* self, double pos);
QTLIBC_API void QRectF_MoveTop(QRectF* self, double pos);
QTLIBC_API void QRectF_MoveRight(QRectF* self, double pos);
QTLIBC_API void QRectF_MoveBottom(QRectF* self, double pos);
QTLIBC_API void QRectF_MoveTopLeft(QRectF* self, QPointF* p);
QTLIBC_API void QRectF_MoveBottomRight(QRectF* self, QPointF* p);
QTLIBC_API void QRectF_MoveTopRight(QRectF* self, QPointF* p);
QTLIBC_API void QRectF_MoveBottomLeft(QRectF* self, QPointF* p);
QTLIBC_API void QRectF_MoveCenter(QRectF* self, QPointF* p);
QTLIBC_API void QRectF_Translate(QRectF* self, double dx, double dy);
QTLIBC_API void QRectF_TranslateWithQPointF(QRectF* self, QPointF* p);
QTLIBC_API QRectF* QRectF_Translated(const QRectF* self, double dx, double dy);
QTLIBC_API QRectF* QRectF_TranslatedWithQPointF(const QRectF* self, QPointF* p);
QTLIBC_API QRectF* QRectF_Transposed(const QRectF* self);
QTLIBC_API void QRectF_MoveTo(QRectF* self, double x, double y);
QTLIBC_API void QRectF_MoveToWithQPointF(QRectF* self, QPointF* p);
QTLIBC_API void QRectF_SetRect(QRectF* self, double x, double y, double w, double h);
QTLIBC_API void QRectF_GetRect(const QRectF* self, double* x, double* y, double* w, double* h);
QTLIBC_API void QRectF_SetCoords(QRectF* self, double x1, double y1, double x2, double y2);
QTLIBC_API void QRectF_GetCoords(const QRectF* self, double* x1, double* y1, double* x2, double* y2);
QTLIBC_API void QRectF_Adjust(QRectF* self, double x1, double y1, double x2, double y2);
QTLIBC_API QRectF* QRectF_Adjusted(const QRectF* self, double x1, double y1, double x2, double y2);
QTLIBC_API QSizeF* QRectF_Size(const QRectF* self);
QTLIBC_API double QRectF_Width(const QRectF* self);
QTLIBC_API double QRectF_Height(const QRectF* self);
QTLIBC_API void QRectF_SetWidth(QRectF* self, double w);
QTLIBC_API void QRectF_SetHeight(QRectF* self, double h);
QTLIBC_API void QRectF_SetSize(QRectF* self, QSizeF* s);
QTLIBC_API QRectF* QRectF_OperatorBitwiseOr(const QRectF* self, QRectF* r);
QTLIBC_API QRectF* QRectF_OperatorBitwiseAnd(const QRectF* self, QRectF* r);
QTLIBC_API void QRectF_OperatorBitwiseOrAssign(QRectF* self, QRectF* r);
QTLIBC_API void QRectF_OperatorBitwiseAndAssign(QRectF* self, QRectF* r);
QTLIBC_API bool QRectF_Contains(const QRectF* self, QRectF* r);
QTLIBC_API bool QRectF_ContainsWithQPointF(const QRectF* self, QPointF* p);
QTLIBC_API bool QRectF_Contains2(const QRectF* self, double x, double y);
QTLIBC_API QRectF* QRectF_United(const QRectF* self, QRectF* other);
QTLIBC_API QRectF* QRectF_Intersected(const QRectF* self, QRectF* other);
QTLIBC_API bool QRectF_Intersects(const QRectF* self, QRectF* r);
QTLIBC_API QRectF* QRectF_MarginsAdded(const QRectF* self, QMarginsF* margins);
QTLIBC_API QRectF* QRectF_MarginsRemoved(const QRectF* self, QMarginsF* margins);
QTLIBC_API QRectF* QRectF_OperatorPlusAssign(QRectF* self, QMarginsF* margins);
QTLIBC_API QRectF* QRectF_OperatorMinusAssign(QRectF* self, QMarginsF* margins);
QTLIBC_API QRect* QRectF_ToRect(const QRectF* self);
QTLIBC_API QRect* QRectF_ToAlignedRect(const QRectF* self);
QTLIBC_API void QRectF_Delete(QRectF* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
