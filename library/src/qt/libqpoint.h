#pragma once
#ifndef SRC_QTC_LIBQPOINT_H
#define SRC_QTC_LIBQPOINT_H

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
typedef struct QPoint QPoint;
typedef struct QPointF QPointF;
#endif

QTLIBC_API QPoint* QPoint_new(QPoint* other);
QTLIBC_API QPoint* QPoint_new2(QPoint* other);
QTLIBC_API QPoint* QPoint_new3();
QTLIBC_API QPoint* QPoint_new4(int xpos, int ypos);
QTLIBC_API QPoint* QPoint_new5(QPoint* param1);
QTLIBC_API void QPoint_CopyAssign(QPoint* self, QPoint* other);
QTLIBC_API void QPoint_MoveAssign(QPoint* self, QPoint* other);
QTLIBC_API bool QPoint_IsNull(const QPoint* self);
QTLIBC_API int QPoint_X(const QPoint* self);
QTLIBC_API int QPoint_Y(const QPoint* self);
QTLIBC_API void QPoint_SetX(QPoint* self, int x);
QTLIBC_API void QPoint_SetY(QPoint* self, int y);
QTLIBC_API int QPoint_ManhattanLength(const QPoint* self);
QTLIBC_API QPoint* QPoint_Transposed(const QPoint* self);
QTLIBC_API QPoint* QPoint_OperatorPlusAssign(QPoint* self, QPoint* p);
QTLIBC_API QPoint* QPoint_OperatorMinusAssign(QPoint* self, QPoint* p);
QTLIBC_API QPoint* QPoint_OperatorMultiplyAssign(QPoint* self, float factor);
QTLIBC_API QPoint* QPoint_OperatorMultiplyAssignWithFactor(QPoint* self, double factor);
QTLIBC_API QPoint* QPoint_OperatorMultiplyAssign2(QPoint* self, int factor);
QTLIBC_API QPoint* QPoint_OperatorDivideAssign(QPoint* self, double divisor);
QTLIBC_API int QPoint_DotProduct(QPoint* p1, QPoint* p2);
QTLIBC_API QPointF* QPoint_ToPointF(const QPoint* self);
QTLIBC_API void QPoint_Delete(QPoint* self);

QTLIBC_API QPointF* QPointF_new(QPointF* other);
QTLIBC_API QPointF* QPointF_new2(QPointF* other);
QTLIBC_API QPointF* QPointF_new3();
QTLIBC_API QPointF* QPointF_new4(QPoint* p);
QTLIBC_API QPointF* QPointF_new5(double xpos, double ypos);
QTLIBC_API QPointF* QPointF_new6(QPointF* param1);
QTLIBC_API void QPointF_CopyAssign(QPointF* self, QPointF* other);
QTLIBC_API void QPointF_MoveAssign(QPointF* self, QPointF* other);
QTLIBC_API double QPointF_ManhattanLength(const QPointF* self);
QTLIBC_API bool QPointF_IsNull(const QPointF* self);
QTLIBC_API double QPointF_X(const QPointF* self);
QTLIBC_API double QPointF_Y(const QPointF* self);
QTLIBC_API void QPointF_SetX(QPointF* self, double x);
QTLIBC_API void QPointF_SetY(QPointF* self, double y);
QTLIBC_API QPointF* QPointF_Transposed(const QPointF* self);
QTLIBC_API QPointF* QPointF_OperatorPlusAssign(QPointF* self, QPointF* p);
QTLIBC_API QPointF* QPointF_OperatorMinusAssign(QPointF* self, QPointF* p);
QTLIBC_API QPointF* QPointF_OperatorMultiplyAssign(QPointF* self, double c);
QTLIBC_API QPointF* QPointF_OperatorDivideAssign(QPointF* self, double c);
QTLIBC_API double QPointF_DotProduct(QPointF* p1, QPointF* p2);
QTLIBC_API QPoint* QPointF_ToPoint(const QPointF* self);
QTLIBC_API void QPointF_Delete(QPointF* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
