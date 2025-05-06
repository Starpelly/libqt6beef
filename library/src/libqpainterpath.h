#pragma once
#ifndef SRCC_LIBQPAINTERPATH_H
#define SRCC_LIBQPAINTERPATH_H

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
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QPainterPath__Element)
typedef QPainterPath::Element QPainterPath__Element;
#endif
#else
typedef struct QFont QFont;
typedef struct QPainterPath QPainterPath;
typedef struct QPainterPathStroker QPainterPathStroker;
typedef struct QPainterPath__Element QPainterPath__Element;
typedef struct QPen QPen;
typedef struct QPointF QPointF;
typedef struct QRectF QRectF;
typedef struct QRegion QRegion;
#endif

#ifdef __cplusplus
typedef QPainterPath::ElementType ElementType; // C++ enum
#else
typedef int ElementType; // C ABI enum
#endif

QTLIBC_API QPainterPath* QPainterPath_new();
QTLIBC_API QPainterPath* QPainterPath_new2(QPointF* startPoint);
QTLIBC_API QPainterPath* QPainterPath_new3(QPainterPath* other);
QTLIBC_API void QPainterPath_OperatorAssign(QPainterPath* self, QPainterPath* other);
QTLIBC_API void QPainterPath_Swap(QPainterPath* self, QPainterPath* other);
QTLIBC_API void QPainterPath_Clear(QPainterPath* self);
QTLIBC_API void QPainterPath_Reserve(QPainterPath* self, int size);
QTLIBC_API int QPainterPath_Capacity(const QPainterPath* self);
QTLIBC_API void QPainterPath_CloseSubpath(QPainterPath* self);
QTLIBC_API void QPainterPath_MoveTo(QPainterPath* self, QPointF* p);
QTLIBC_API void QPainterPath_MoveTo2(QPainterPath* self, double x, double y);
QTLIBC_API void QPainterPath_LineTo(QPainterPath* self, QPointF* p);
QTLIBC_API void QPainterPath_LineTo2(QPainterPath* self, double x, double y);
QTLIBC_API void QPainterPath_ArcMoveTo(QPainterPath* self, QRectF* rect, double angle);
QTLIBC_API void QPainterPath_ArcMoveTo2(QPainterPath* self, double x, double y, double w, double h, double angle);
QTLIBC_API void QPainterPath_ArcTo(QPainterPath* self, QRectF* rect, double startAngle, double arcLength);
QTLIBC_API void QPainterPath_ArcTo2(QPainterPath* self, double x, double y, double w, double h, double startAngle, double arcLength);
QTLIBC_API void QPainterPath_CubicTo(QPainterPath* self, QPointF* ctrlPt1, QPointF* ctrlPt2, QPointF* endPt);
QTLIBC_API void QPainterPath_CubicTo2(QPainterPath* self, double ctrlPt1x, double ctrlPt1y, double ctrlPt2x, double ctrlPt2y, double endPtx, double endPty);
QTLIBC_API void QPainterPath_QuadTo(QPainterPath* self, QPointF* ctrlPt, QPointF* endPt);
QTLIBC_API void QPainterPath_QuadTo2(QPainterPath* self, double ctrlPtx, double ctrlPty, double endPtx, double endPty);
QTLIBC_API QPointF* QPainterPath_CurrentPosition(const QPainterPath* self);
QTLIBC_API void QPainterPath_AddRect(QPainterPath* self, QRectF* rect);
QTLIBC_API void QPainterPath_AddRect2(QPainterPath* self, double x, double y, double w, double h);
QTLIBC_API void QPainterPath_AddEllipse(QPainterPath* self, QRectF* rect);
QTLIBC_API void QPainterPath_AddEllipse2(QPainterPath* self, double x, double y, double w, double h);
QTLIBC_API void QPainterPath_AddEllipse3(QPainterPath* self, QPointF* center, double rx, double ry);
QTLIBC_API void QPainterPath_AddText(QPainterPath* self, QPointF* point, QFont* f, libqt_string text);
QTLIBC_API void QPainterPath_AddText2(QPainterPath* self, double x, double y, QFont* f, libqt_string text);
QTLIBC_API void QPainterPath_AddPath(QPainterPath* self, QPainterPath* path);
QTLIBC_API void QPainterPath_AddRegion(QPainterPath* self, QRegion* region);
QTLIBC_API void QPainterPath_AddRoundedRect(QPainterPath* self, QRectF* rect, double xRadius, double yRadius);
QTLIBC_API void QPainterPath_AddRoundedRect2(QPainterPath* self, double x, double y, double w, double h, double xRadius, double yRadius);
QTLIBC_API void QPainterPath_ConnectPath(QPainterPath* self, QPainterPath* path);
QTLIBC_API bool QPainterPath_Contains(const QPainterPath* self, QPointF* pt);
QTLIBC_API bool QPainterPath_ContainsWithRect(const QPainterPath* self, QRectF* rect);
QTLIBC_API bool QPainterPath_Intersects(const QPainterPath* self, QRectF* rect);
QTLIBC_API void QPainterPath_Translate(QPainterPath* self, double dx, double dy);
QTLIBC_API void QPainterPath_TranslateWithOffset(QPainterPath* self, QPointF* offset);
QTLIBC_API QPainterPath* QPainterPath_Translated(const QPainterPath* self, double dx, double dy);
QTLIBC_API QPainterPath* QPainterPath_TranslatedWithOffset(const QPainterPath* self, QPointF* offset);
QTLIBC_API QRectF* QPainterPath_BoundingRect(const QPainterPath* self);
QTLIBC_API QRectF* QPainterPath_ControlPointRect(const QPainterPath* self);
QTLIBC_API int QPainterPath_FillRule(const QPainterPath* self);
QTLIBC_API void QPainterPath_SetFillRule(QPainterPath* self, int fillRule);
QTLIBC_API bool QPainterPath_IsEmpty(const QPainterPath* self);
QTLIBC_API QPainterPath* QPainterPath_ToReversed(const QPainterPath* self);
QTLIBC_API int QPainterPath_ElementCount(const QPainterPath* self);
QTLIBC_API QPainterPath__Element* QPainterPath_ElementAt(const QPainterPath* self, int i);
QTLIBC_API void QPainterPath_SetElementPositionAt(QPainterPath* self, int i, double x, double y);
QTLIBC_API double QPainterPath_Length(const QPainterPath* self);
QTLIBC_API double QPainterPath_PercentAtLength(const QPainterPath* self, double t);
QTLIBC_API QPointF* QPainterPath_PointAtPercent(const QPainterPath* self, double t);
QTLIBC_API double QPainterPath_AngleAtPercent(const QPainterPath* self, double t);
QTLIBC_API double QPainterPath_SlopeAtPercent(const QPainterPath* self, double t);
QTLIBC_API bool QPainterPath_IntersectsWithQPainterPath(const QPainterPath* self, QPainterPath* p);
QTLIBC_API bool QPainterPath_ContainsWithQPainterPath(const QPainterPath* self, QPainterPath* p);
QTLIBC_API QPainterPath* QPainterPath_United(const QPainterPath* self, QPainterPath* r);
QTLIBC_API QPainterPath* QPainterPath_Intersected(const QPainterPath* self, QPainterPath* r);
QTLIBC_API QPainterPath* QPainterPath_Subtracted(const QPainterPath* self, QPainterPath* r);
QTLIBC_API QPainterPath* QPainterPath_Simplified(const QPainterPath* self);
QTLIBC_API bool QPainterPath_OperatorEqual(const QPainterPath* self, QPainterPath* other);
QTLIBC_API bool QPainterPath_OperatorNotEqual(const QPainterPath* self, QPainterPath* other);
QTLIBC_API QPainterPath* QPainterPath_OperatorBitwiseAnd(const QPainterPath* self, QPainterPath* other);
QTLIBC_API QPainterPath* QPainterPath_OperatorBitwiseOr(const QPainterPath* self, QPainterPath* other);
QTLIBC_API QPainterPath* QPainterPath_OperatorPlus(const QPainterPath* self, QPainterPath* other);
QTLIBC_API QPainterPath* QPainterPath_OperatorMinus(const QPainterPath* self, QPainterPath* other);
QTLIBC_API void QPainterPath_OperatorBitwiseAndAssign(QPainterPath* self, QPainterPath* other);
QTLIBC_API void QPainterPath_OperatorBitwiseOrAssign(QPainterPath* self, QPainterPath* other);
QTLIBC_API QPainterPath* QPainterPath_OperatorPlusAssign(QPainterPath* self, QPainterPath* other);
QTLIBC_API QPainterPath* QPainterPath_OperatorMinusAssign(QPainterPath* self, QPainterPath* other);
QTLIBC_API void QPainterPath_AddRoundedRect4(QPainterPath* self, QRectF* rect, double xRadius, double yRadius, int mode);
QTLIBC_API void QPainterPath_AddRoundedRect7(QPainterPath* self, double x, double y, double w, double h, double xRadius, double yRadius, int mode);
QTLIBC_API void QPainterPath_Delete(QPainterPath* self);

QTLIBC_API QPainterPathStroker* QPainterPathStroker_new();
QTLIBC_API QPainterPathStroker* QPainterPathStroker_new2(QPen* pen);
QTLIBC_API void QPainterPathStroker_SetWidth(QPainterPathStroker* self, double width);
QTLIBC_API double QPainterPathStroker_Width(const QPainterPathStroker* self);
QTLIBC_API void QPainterPathStroker_SetCapStyle(QPainterPathStroker* self, int style);
QTLIBC_API int QPainterPathStroker_CapStyle(const QPainterPathStroker* self);
QTLIBC_API void QPainterPathStroker_SetJoinStyle(QPainterPathStroker* self, int style);
QTLIBC_API int QPainterPathStroker_JoinStyle(const QPainterPathStroker* self);
QTLIBC_API void QPainterPathStroker_SetMiterLimit(QPainterPathStroker* self, double length);
QTLIBC_API double QPainterPathStroker_MiterLimit(const QPainterPathStroker* self);
QTLIBC_API void QPainterPathStroker_SetCurveThreshold(QPainterPathStroker* self, double threshold);
QTLIBC_API double QPainterPathStroker_CurveThreshold(const QPainterPathStroker* self);
QTLIBC_API void QPainterPathStroker_SetDashPattern(QPainterPathStroker* self, int dashPattern);
QTLIBC_API void QPainterPathStroker_SetDashPatternWithDashPattern(QPainterPathStroker* self, libqt_list /* of double */ dashPattern);
QTLIBC_API libqt_list /* of double */ QPainterPathStroker_DashPattern(const QPainterPathStroker* self);
QTLIBC_API void QPainterPathStroker_SetDashOffset(QPainterPathStroker* self, double offset);
QTLIBC_API double QPainterPathStroker_DashOffset(const QPainterPathStroker* self);
QTLIBC_API QPainterPath* QPainterPathStroker_CreateStroke(const QPainterPathStroker* self, QPainterPath* path);
QTLIBC_API void QPainterPathStroker_Delete(QPainterPathStroker* self);

QTLIBC_API bool QPainterPath__Element_IsMoveTo(const QPainterPath__Element* self);
QTLIBC_API bool QPainterPath__Element_IsLineTo(const QPainterPath__Element* self);
QTLIBC_API bool QPainterPath__Element_IsCurveTo(const QPainterPath__Element* self);
QTLIBC_API QPointF* QPainterPath__Element_ToQPointF(const QPainterPath__Element* self);
QTLIBC_API bool QPainterPath__Element_OperatorEqual(const QPainterPath__Element* self, QPainterPath__Element* e);
QTLIBC_API bool QPainterPath__Element_OperatorNotEqual(const QPainterPath__Element* self, QPainterPath__Element* e);
QTLIBC_API void QPainterPath__Element_Delete(QPainterPath__Element* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
