#pragma once
#ifndef SRC_QTC_LIBQMATRIX4X4_H
#define SRC_QTC_LIBQMATRIX4X4_H

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
typedef struct QMatrix4x4 QMatrix4x4;
typedef struct QPoint QPoint;
typedef struct QPointF QPointF;
typedef struct QQuaternion QQuaternion;
typedef struct QRect QRect;
typedef struct QRectF QRectF;
typedef struct QTransform QTransform;
typedef struct QVariant QVariant;
typedef struct QVector3D QVector3D;
typedef struct QVector4D QVector4D;
#endif

#ifdef __cplusplus
typedef QMatrix4x4::Flag Flag;   // C++ enum
typedef QMatrix4x4::Flags Flags; // C++ QFlags
#else
typedef int Flag;  // C ABI enum
typedef int Flags; // C ABI QFlags
#endif

QTLIBC_API QMatrix4x4* QMatrix4x4_new(QMatrix4x4* other);
QTLIBC_API QMatrix4x4* QMatrix4x4_new2(QMatrix4x4* other);
QTLIBC_API QMatrix4x4* QMatrix4x4_new3();
QTLIBC_API QMatrix4x4* QMatrix4x4_new4(int param1);
QTLIBC_API QMatrix4x4* QMatrix4x4_new5(const float* values);
QTLIBC_API QMatrix4x4* QMatrix4x4_new6(float m11, float m12, float m13, float m14, float m21, float m22, float m23, float m24, float m31, float m32, float m33, float m34, float m41, float m42, float m43, float m44);
QTLIBC_API QMatrix4x4* QMatrix4x4_new7(const float* values, int cols, int rows);
QTLIBC_API QMatrix4x4* QMatrix4x4_new8(QTransform* transform);
QTLIBC_API QMatrix4x4* QMatrix4x4_new9(QMatrix4x4* param1);
QTLIBC_API void QMatrix4x4_CopyAssign(QMatrix4x4* self, QMatrix4x4* other);
QTLIBC_API void QMatrix4x4_MoveAssign(QMatrix4x4* self, QMatrix4x4* other);
QTLIBC_API QVector4D* QMatrix4x4_Column(const QMatrix4x4* self, int index);
QTLIBC_API void QMatrix4x4_SetColumn(QMatrix4x4* self, int index, QVector4D* value);
QTLIBC_API QVector4D* QMatrix4x4_Row(const QMatrix4x4* self, int index);
QTLIBC_API void QMatrix4x4_SetRow(QMatrix4x4* self, int index, QVector4D* value);
QTLIBC_API bool QMatrix4x4_IsAffine(const QMatrix4x4* self);
QTLIBC_API bool QMatrix4x4_IsIdentity(const QMatrix4x4* self);
QTLIBC_API void QMatrix4x4_SetToIdentity(QMatrix4x4* self);
QTLIBC_API void QMatrix4x4_Fill(QMatrix4x4* self, float value);
QTLIBC_API double QMatrix4x4_Determinant(const QMatrix4x4* self);
QTLIBC_API QMatrix4x4* QMatrix4x4_Inverted(const QMatrix4x4* self);
QTLIBC_API QMatrix4x4* QMatrix4x4_Transposed(const QMatrix4x4* self);
QTLIBC_API QMatrix4x4* QMatrix4x4_OperatorPlusAssign(QMatrix4x4* self, QMatrix4x4* other);
QTLIBC_API QMatrix4x4* QMatrix4x4_OperatorMinusAssign(QMatrix4x4* self, QMatrix4x4* other);
QTLIBC_API QMatrix4x4* QMatrix4x4_OperatorMultiplyAssign(QMatrix4x4* self, QMatrix4x4* other);
QTLIBC_API QMatrix4x4* QMatrix4x4_OperatorMultiplyAssignWithFactor(QMatrix4x4* self, float factor);
QTLIBC_API QMatrix4x4* QMatrix4x4_OperatorDivideAssign(QMatrix4x4* self, float divisor);
QTLIBC_API bool QMatrix4x4_OperatorEqual(const QMatrix4x4* self, QMatrix4x4* other);
QTLIBC_API bool QMatrix4x4_OperatorNotEqual(const QMatrix4x4* self, QMatrix4x4* other);
QTLIBC_API void QMatrix4x4_Scale(QMatrix4x4* self, QVector3D* vector);
QTLIBC_API void QMatrix4x4_Translate(QMatrix4x4* self, QVector3D* vector);
QTLIBC_API void QMatrix4x4_Rotate(QMatrix4x4* self, float angle, QVector3D* vector);
QTLIBC_API void QMatrix4x4_Scale2(QMatrix4x4* self, float x, float y);
QTLIBC_API void QMatrix4x4_Scale3(QMatrix4x4* self, float x, float y, float z);
QTLIBC_API void QMatrix4x4_ScaleWithFactor(QMatrix4x4* self, float factor);
QTLIBC_API void QMatrix4x4_Translate2(QMatrix4x4* self, float x, float y);
QTLIBC_API void QMatrix4x4_Translate3(QMatrix4x4* self, float x, float y, float z);
QTLIBC_API void QMatrix4x4_Rotate2(QMatrix4x4* self, float angle, float x, float y);
QTLIBC_API void QMatrix4x4_RotateWithQuaternion(QMatrix4x4* self, QQuaternion* quaternion);
QTLIBC_API void QMatrix4x4_Ortho(QMatrix4x4* self, QRect* rect);
QTLIBC_API void QMatrix4x4_OrthoWithRect(QMatrix4x4* self, QRectF* rect);
QTLIBC_API void QMatrix4x4_Ortho2(QMatrix4x4* self, float left, float right, float bottom, float top, float nearPlane, float farPlane);
QTLIBC_API void QMatrix4x4_Frustum(QMatrix4x4* self, float left, float right, float bottom, float top, float nearPlane, float farPlane);
QTLIBC_API void QMatrix4x4_Perspective(QMatrix4x4* self, float verticalAngle, float aspectRatio, float nearPlane, float farPlane);
QTLIBC_API void QMatrix4x4_LookAt(QMatrix4x4* self, QVector3D* eye, QVector3D* center, QVector3D* up);
QTLIBC_API void QMatrix4x4_Viewport(QMatrix4x4* self, QRectF* rect);
QTLIBC_API void QMatrix4x4_Viewport2(QMatrix4x4* self, float left, float bottom, float width, float height);
QTLIBC_API void QMatrix4x4_FlipCoordinates(QMatrix4x4* self);
QTLIBC_API void QMatrix4x4_CopyDataTo(const QMatrix4x4* self, float* values);
QTLIBC_API QTransform* QMatrix4x4_ToTransform(const QMatrix4x4* self);
QTLIBC_API QTransform* QMatrix4x4_ToTransformWithDistanceToPlane(const QMatrix4x4* self, float distanceToPlane);
QTLIBC_API QPoint* QMatrix4x4_Map(const QMatrix4x4* self, QPoint* point);
QTLIBC_API QPointF* QMatrix4x4_MapWithPoint(const QMatrix4x4* self, QPointF* point);
QTLIBC_API QVector3D* QMatrix4x4_Map2(const QMatrix4x4* self, QVector3D* point);
QTLIBC_API QVector3D* QMatrix4x4_MapVector(const QMatrix4x4* self, QVector3D* vector);
QTLIBC_API QVector4D* QMatrix4x4_Map3(const QMatrix4x4* self, QVector4D* point);
QTLIBC_API QRect* QMatrix4x4_MapRect(const QMatrix4x4* self, QRect* rect);
QTLIBC_API QRectF* QMatrix4x4_MapRectWithRect(const QMatrix4x4* self, QRectF* rect);
QTLIBC_API float* QMatrix4x4_Data(QMatrix4x4* self);
QTLIBC_API const float* QMatrix4x4_Data2(const QMatrix4x4* self);
QTLIBC_API const float* QMatrix4x4_ConstData(const QMatrix4x4* self);
QTLIBC_API void QMatrix4x4_Optimize(QMatrix4x4* self);
QTLIBC_API QVariant* QMatrix4x4_ToQVariant(const QMatrix4x4* self);
QTLIBC_API void QMatrix4x4_ProjectedRotate(QMatrix4x4* self, float angle, float x, float y, float z);
QTLIBC_API int QMatrix4x4_Flags(const QMatrix4x4* self);
QTLIBC_API QMatrix4x4* QMatrix4x4_Inverted1(const QMatrix4x4* self, bool* invertible);
QTLIBC_API void QMatrix4x4_Rotate4(QMatrix4x4* self, float angle, float x, float y, float z);
QTLIBC_API void QMatrix4x4_Viewport5(QMatrix4x4* self, float left, float bottom, float width, float height, float nearPlane);
QTLIBC_API void QMatrix4x4_Viewport6(QMatrix4x4* self, float left, float bottom, float width, float height, float nearPlane, float farPlane);
QTLIBC_API void QMatrix4x4_Delete(QMatrix4x4* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
