#pragma once
#ifndef SRCC_LIBQQUATERNION_H
#define SRCC_LIBQQUATERNION_H

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
typedef struct QQuaternion QQuaternion;
typedef struct QVariant QVariant;
typedef struct QVector3D QVector3D;
typedef struct QVector4D QVector4D;
#endif

QTLIBC_API QQuaternion* QQuaternion_new(QQuaternion* other);
QTLIBC_API QQuaternion* QQuaternion_new2(QQuaternion* other);
QTLIBC_API QQuaternion* QQuaternion_new3();
QTLIBC_API QQuaternion* QQuaternion_new4(int param1);
QTLIBC_API QQuaternion* QQuaternion_new5(float scalar, float xpos, float ypos, float zpos);
QTLIBC_API QQuaternion* QQuaternion_new6(float scalar, QVector3D* vector);
QTLIBC_API QQuaternion* QQuaternion_new7(QVector4D* vector);
QTLIBC_API QQuaternion* QQuaternion_new8(QQuaternion* param1);
QTLIBC_API void QQuaternion_CopyAssign(QQuaternion* self, QQuaternion* other);
QTLIBC_API void QQuaternion_MoveAssign(QQuaternion* self, QQuaternion* other);
QTLIBC_API bool QQuaternion_IsNull(const QQuaternion* self);
QTLIBC_API bool QQuaternion_IsIdentity(const QQuaternion* self);
QTLIBC_API QVector3D* QQuaternion_Vector(const QQuaternion* self);
QTLIBC_API void QQuaternion_SetVector(QQuaternion* self, QVector3D* vector);
QTLIBC_API void QQuaternion_SetVector2(QQuaternion* self, float x, float y, float z);
QTLIBC_API float QQuaternion_X(const QQuaternion* self);
QTLIBC_API float QQuaternion_Y(const QQuaternion* self);
QTLIBC_API float QQuaternion_Z(const QQuaternion* self);
QTLIBC_API float QQuaternion_Scalar(const QQuaternion* self);
QTLIBC_API void QQuaternion_SetX(QQuaternion* self, float x);
QTLIBC_API void QQuaternion_SetY(QQuaternion* self, float y);
QTLIBC_API void QQuaternion_SetZ(QQuaternion* self, float z);
QTLIBC_API void QQuaternion_SetScalar(QQuaternion* self, float scalar);
QTLIBC_API float QQuaternion_DotProduct(QQuaternion* q1, QQuaternion* q2);
QTLIBC_API float QQuaternion_Length(const QQuaternion* self);
QTLIBC_API float QQuaternion_LengthSquared(const QQuaternion* self);
QTLIBC_API QQuaternion* QQuaternion_Normalized(const QQuaternion* self);
QTLIBC_API void QQuaternion_Normalize(QQuaternion* self);
QTLIBC_API QQuaternion* QQuaternion_Inverted(const QQuaternion* self);
QTLIBC_API QQuaternion* QQuaternion_Conjugated(const QQuaternion* self);
QTLIBC_API QVector3D* QQuaternion_RotatedVector(const QQuaternion* self, QVector3D* vector);
QTLIBC_API QQuaternion* QQuaternion_OperatorPlusAssign(QQuaternion* self, QQuaternion* quaternion);
QTLIBC_API QQuaternion* QQuaternion_OperatorMinusAssign(QQuaternion* self, QQuaternion* quaternion);
QTLIBC_API QQuaternion* QQuaternion_OperatorMultiplyAssign(QQuaternion* self, float factor);
QTLIBC_API QQuaternion* QQuaternion_OperatorMultiplyAssignWithQuaternion(QQuaternion* self, QQuaternion* quaternion);
QTLIBC_API QQuaternion* QQuaternion_OperatorDivideAssign(QQuaternion* self, float divisor);
QTLIBC_API QVector4D* QQuaternion_ToVector4D(const QQuaternion* self);
QTLIBC_API QVariant* QQuaternion_ToQVariant(const QQuaternion* self);
QTLIBC_API void QQuaternion_GetAxisAndAngle(const QQuaternion* self, QVector3D* axis, float* angle);
QTLIBC_API QQuaternion* QQuaternion_FromAxisAndAngle(QVector3D* axis, float angle);
QTLIBC_API void QQuaternion_GetAxisAndAngle2(const QQuaternion* self, float* x, float* y, float* z, float* angle);
QTLIBC_API QQuaternion* QQuaternion_FromAxisAndAngle2(float x, float y, float z, float angle);
QTLIBC_API QVector3D* QQuaternion_ToEulerAngles(const QQuaternion* self);
QTLIBC_API QQuaternion* QQuaternion_FromEulerAngles(QVector3D* eulerAngles);
QTLIBC_API void QQuaternion_GetEulerAngles(const QQuaternion* self, float* pitch, float* yaw, float* roll);
QTLIBC_API QQuaternion* QQuaternion_FromEulerAngles2(float pitch, float yaw, float roll);
QTLIBC_API void QQuaternion_GetAxes(const QQuaternion* self, QVector3D* xAxis, QVector3D* yAxis, QVector3D* zAxis);
QTLIBC_API QQuaternion* QQuaternion_FromAxes(QVector3D* xAxis, QVector3D* yAxis, QVector3D* zAxis);
QTLIBC_API QQuaternion* QQuaternion_FromDirection(QVector3D* direction, QVector3D* up);
QTLIBC_API QQuaternion* QQuaternion_RotationTo(QVector3D* from, QVector3D* to);
QTLIBC_API QQuaternion* QQuaternion_Slerp(QQuaternion* q1, QQuaternion* q2, float t);
QTLIBC_API QQuaternion* QQuaternion_Nlerp(QQuaternion* q1, QQuaternion* q2, float t);
QTLIBC_API void QQuaternion_Delete(QQuaternion* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
