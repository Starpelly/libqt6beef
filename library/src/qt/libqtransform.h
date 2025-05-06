#pragma once
#ifndef SRC_QTC_LIBQTRANSFORM_H
#define SRC_QTC_LIBQTRANSFORM_H

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
typedef struct QPainterPath QPainterPath;
typedef struct QPoint QPoint;
typedef struct QPointF QPointF;
typedef struct QRect QRect;
typedef struct QRectF QRectF;
typedef struct QRegion QRegion;
typedef struct QTransform QTransform;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QTransform::TransformationType TransformationType; // C++ enum
#else
typedef int TransformationType; // C ABI enum
#endif

QTLIBC_API QTransform* QTransform_new(QTransform* other);
QTLIBC_API QTransform* QTransform_new2(QTransform* other);
QTLIBC_API QTransform* QTransform_new3(int param1);
QTLIBC_API QTransform* QTransform_new4();
QTLIBC_API QTransform* QTransform_new5(double h11, double h12, double h13, double h21, double h22, double h23, double h31, double h32, double h33);
QTLIBC_API QTransform* QTransform_new6(double h11, double h12, double h21, double h22, double dx, double dy);
QTLIBC_API QTransform* QTransform_new7(QTransform* other);
QTLIBC_API void QTransform_CopyAssign(QTransform* self, QTransform* other);
QTLIBC_API void QTransform_MoveAssign(QTransform* self, QTransform* other);
QTLIBC_API void QTransform_OperatorAssign(QTransform* self, QTransform* param1);
QTLIBC_API bool QTransform_IsAffine(const QTransform* self);
QTLIBC_API bool QTransform_IsIdentity(const QTransform* self);
QTLIBC_API bool QTransform_IsInvertible(const QTransform* self);
QTLIBC_API bool QTransform_IsScaling(const QTransform* self);
QTLIBC_API bool QTransform_IsRotating(const QTransform* self);
QTLIBC_API bool QTransform_IsTranslating(const QTransform* self);
QTLIBC_API int QTransform_Type(const QTransform* self);
QTLIBC_API double QTransform_Determinant(const QTransform* self);
QTLIBC_API double QTransform_M11(const QTransform* self);
QTLIBC_API double QTransform_M12(const QTransform* self);
QTLIBC_API double QTransform_M13(const QTransform* self);
QTLIBC_API double QTransform_M21(const QTransform* self);
QTLIBC_API double QTransform_M22(const QTransform* self);
QTLIBC_API double QTransform_M23(const QTransform* self);
QTLIBC_API double QTransform_M31(const QTransform* self);
QTLIBC_API double QTransform_M32(const QTransform* self);
QTLIBC_API double QTransform_M33(const QTransform* self);
QTLIBC_API double QTransform_Dx(const QTransform* self);
QTLIBC_API double QTransform_Dy(const QTransform* self);
QTLIBC_API void QTransform_SetMatrix(QTransform* self, double m11, double m12, double m13, double m21, double m22, double m23, double m31, double m32, double m33);
QTLIBC_API QTransform* QTransform_Inverted(const QTransform* self);
QTLIBC_API QTransform* QTransform_Adjoint(const QTransform* self);
QTLIBC_API QTransform* QTransform_Transposed(const QTransform* self);
QTLIBC_API QTransform* QTransform_Translate(QTransform* self, double dx, double dy);
QTLIBC_API QTransform* QTransform_Scale(QTransform* self, double sx, double sy);
QTLIBC_API QTransform* QTransform_Shear(QTransform* self, double sh, double sv);
QTLIBC_API QTransform* QTransform_Rotate(QTransform* self, double a);
QTLIBC_API QTransform* QTransform_RotateRadians(QTransform* self, double a);
QTLIBC_API bool QTransform_OperatorEqual(const QTransform* self, QTransform* param1);
QTLIBC_API bool QTransform_OperatorNotEqual(const QTransform* self, QTransform* param1);
QTLIBC_API QTransform* QTransform_OperatorMultiplyAssign(QTransform* self, QTransform* param1);
QTLIBC_API QTransform* QTransform_OperatorMultiply(const QTransform* self, QTransform* o);
QTLIBC_API QVariant* QTransform_ToQVariant(const QTransform* self);
QTLIBC_API void QTransform_Reset(QTransform* self);
QTLIBC_API QPoint* QTransform_Map(const QTransform* self, QPoint* p);
QTLIBC_API QPointF* QTransform_MapWithQPointF(const QTransform* self, QPointF* p);
QTLIBC_API QLine* QTransform_MapWithQLine(const QTransform* self, QLine* l);
QTLIBC_API QLineF* QTransform_MapWithQLineF(const QTransform* self, QLineF* l);
QTLIBC_API QRegion* QTransform_MapWithQRegion(const QTransform* self, QRegion* r);
QTLIBC_API QPainterPath* QTransform_MapWithQPainterPath(const QTransform* self, QPainterPath* p);
QTLIBC_API QRect* QTransform_MapRect(const QTransform* self, QRect* param1);
QTLIBC_API QRectF* QTransform_MapRectWithQRectF(const QTransform* self, QRectF* param1);
QTLIBC_API void QTransform_Map2(const QTransform* self, int x, int y, int* tx, int* ty);
QTLIBC_API void QTransform_Map3(const QTransform* self, double x, double y, double* tx, double* ty);
QTLIBC_API QTransform* QTransform_OperatorMultiplyAssignWithDiv(QTransform* self, double div);
QTLIBC_API QTransform* QTransform_OperatorDivideAssign(QTransform* self, double div);
QTLIBC_API QTransform* QTransform_OperatorPlusAssign(QTransform* self, double div);
QTLIBC_API QTransform* QTransform_OperatorMinusAssign(QTransform* self, double div);
QTLIBC_API QTransform* QTransform_FromTranslate(double dx, double dy);
QTLIBC_API QTransform* QTransform_FromScale(double dx, double dy);
QTLIBC_API QTransform* QTransform_Inverted1(const QTransform* self, bool* invertible);
QTLIBC_API QTransform* QTransform_Rotate2(QTransform* self, double a, int axis);
QTLIBC_API QTransform* QTransform_RotateRadians2(QTransform* self, double a, int axis);
QTLIBC_API void QTransform_Delete(QTransform* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
