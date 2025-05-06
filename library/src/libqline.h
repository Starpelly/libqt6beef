#pragma once
#ifndef SRCC_LIBQLINE_H
#define SRCC_LIBQLINE_H

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
typedef struct QLine QLine;
typedef struct QLineF QLineF;
typedef struct QPoint QPoint;
typedef struct QPointF QPointF;
#endif

#ifdef __cplusplus
typedef QLineF::IntersectType IntersectType;       // C++ QFlags
typedef QLineF::IntersectionType IntersectionType; // C++ enum
#else
typedef int IntersectType;    // C ABI QFlags
typedef int IntersectionType; // C ABI enum
#endif

QTLIBC_API QLine* QLine_new(QLine* other);
QTLIBC_API QLine* QLine_new2(QLine* other);
QTLIBC_API QLine* QLine_new3();
QTLIBC_API QLine* QLine_new4(QPoint* pt1, QPoint* pt2);
QTLIBC_API QLine* QLine_new5(int x1, int y1, int x2, int y2);
QTLIBC_API QLine* QLine_new6(QLine* param1);
QTLIBC_API void QLine_CopyAssign(QLine* self, QLine* other);
QTLIBC_API void QLine_MoveAssign(QLine* self, QLine* other);
QTLIBC_API bool QLine_IsNull(const QLine* self);
QTLIBC_API QPoint* QLine_P1(const QLine* self);
QTLIBC_API QPoint* QLine_P2(const QLine* self);
QTLIBC_API int QLine_X1(const QLine* self);
QTLIBC_API int QLine_Y1(const QLine* self);
QTLIBC_API int QLine_X2(const QLine* self);
QTLIBC_API int QLine_Y2(const QLine* self);
QTLIBC_API int QLine_Dx(const QLine* self);
QTLIBC_API int QLine_Dy(const QLine* self);
QTLIBC_API void QLine_Translate(QLine* self, QPoint* p);
QTLIBC_API void QLine_Translate2(QLine* self, int dx, int dy);
QTLIBC_API QLine* QLine_Translated(const QLine* self, QPoint* p);
QTLIBC_API QLine* QLine_Translated2(const QLine* self, int dx, int dy);
QTLIBC_API QPoint* QLine_Center(const QLine* self);
QTLIBC_API void QLine_SetP1(QLine* self, QPoint* p1);
QTLIBC_API void QLine_SetP2(QLine* self, QPoint* p2);
QTLIBC_API void QLine_SetPoints(QLine* self, QPoint* p1, QPoint* p2);
QTLIBC_API void QLine_SetLine(QLine* self, int x1, int y1, int x2, int y2);
QTLIBC_API bool QLine_OperatorEqual(const QLine* self, QLine* d);
QTLIBC_API bool QLine_OperatorNotEqual(const QLine* self, QLine* d);
QTLIBC_API QLineF* QLine_ToLineF(const QLine* self);
QTLIBC_API void QLine_Delete(QLine* self);

QTLIBC_API QLineF* QLineF_new(QLineF* other);
QTLIBC_API QLineF* QLineF_new2(QLineF* other);
QTLIBC_API QLineF* QLineF_new3();
QTLIBC_API QLineF* QLineF_new4(QPointF* pt1, QPointF* pt2);
QTLIBC_API QLineF* QLineF_new5(double x1, double y1, double x2, double y2);
QTLIBC_API QLineF* QLineF_new6(QLine* line);
QTLIBC_API QLineF* QLineF_new7(QLineF* param1);
QTLIBC_API void QLineF_CopyAssign(QLineF* self, QLineF* other);
QTLIBC_API void QLineF_MoveAssign(QLineF* self, QLineF* other);
QTLIBC_API QLineF* QLineF_FromPolar(double length, double angle);
QTLIBC_API bool QLineF_IsNull(const QLineF* self);
QTLIBC_API QPointF* QLineF_P1(const QLineF* self);
QTLIBC_API QPointF* QLineF_P2(const QLineF* self);
QTLIBC_API double QLineF_X1(const QLineF* self);
QTLIBC_API double QLineF_Y1(const QLineF* self);
QTLIBC_API double QLineF_X2(const QLineF* self);
QTLIBC_API double QLineF_Y2(const QLineF* self);
QTLIBC_API double QLineF_Dx(const QLineF* self);
QTLIBC_API double QLineF_Dy(const QLineF* self);
QTLIBC_API double QLineF_Length(const QLineF* self);
QTLIBC_API void QLineF_SetLength(QLineF* self, double lenVal);
QTLIBC_API double QLineF_Angle(const QLineF* self);
QTLIBC_API void QLineF_SetAngle(QLineF* self, double angle);
QTLIBC_API double QLineF_AngleTo(const QLineF* self, QLineF* l);
QTLIBC_API QLineF* QLineF_UnitVector(const QLineF* self);
QTLIBC_API QLineF* QLineF_NormalVector(const QLineF* self);
QTLIBC_API int QLineF_Intersects(const QLineF* self, QLineF* l);
QTLIBC_API QPointF* QLineF_PointAt(const QLineF* self, double t);
QTLIBC_API void QLineF_Translate(QLineF* self, QPointF* p);
QTLIBC_API void QLineF_Translate2(QLineF* self, double dx, double dy);
QTLIBC_API QLineF* QLineF_Translated(const QLineF* self, QPointF* p);
QTLIBC_API QLineF* QLineF_Translated2(const QLineF* self, double dx, double dy);
QTLIBC_API QPointF* QLineF_Center(const QLineF* self);
QTLIBC_API void QLineF_SetP1(QLineF* self, QPointF* p1);
QTLIBC_API void QLineF_SetP2(QLineF* self, QPointF* p2);
QTLIBC_API void QLineF_SetPoints(QLineF* self, QPointF* p1, QPointF* p2);
QTLIBC_API void QLineF_SetLine(QLineF* self, double x1, double y1, double x2, double y2);
QTLIBC_API bool QLineF_OperatorEqual(const QLineF* self, QLineF* d);
QTLIBC_API bool QLineF_OperatorNotEqual(const QLineF* self, QLineF* d);
QTLIBC_API QLine* QLineF_ToLine(const QLineF* self);
QTLIBC_API int QLineF_Intersects2(const QLineF* self, QLineF* l, QPointF* intersectionPoint);
QTLIBC_API void QLineF_Delete(QLineF* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
