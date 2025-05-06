#pragma once
#ifndef SRC_QTC_LIBQEVENTPOINT_H
#define SRC_QTC_LIBQEVENTPOINT_H

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
typedef struct QEventPoint QEventPoint;
typedef struct QPointF QPointF;
typedef struct QPointingDevice QPointingDevice;
typedef struct QPointingDeviceUniqueId QPointingDeviceUniqueId;
typedef struct QSizeF QSizeF;
typedef struct QVector2D QVector2D;
#endif

#ifdef __cplusplus
typedef QEventPoint::QtGadgetHelper QtGadgetHelper; // C++ QFlags
typedef QEventPoint::State State;                   // C++ enum
typedef QEventPoint::States States;                 // C++ QFlags
#else
typedef int State;           // C ABI enum
typedef int States;          // C ABI QFlags
typedef void QtGadgetHelper; // C ABI QFlags
#endif

QTLIBC_API QEventPoint* QEventPoint_new();
QTLIBC_API QEventPoint* QEventPoint_new2(int pointId, uint8_t state, QPointF* scenePosition, QPointF* globalPosition);
QTLIBC_API QEventPoint* QEventPoint_new3(QEventPoint* other);
QTLIBC_API QEventPoint* QEventPoint_new4(int id);
QTLIBC_API QEventPoint* QEventPoint_new5(int id, QPointingDevice* device);
QTLIBC_API void QEventPoint_OperatorAssign(QEventPoint* self, QEventPoint* other);
QTLIBC_API bool QEventPoint_OperatorEqual(const QEventPoint* self, QEventPoint* other);
QTLIBC_API bool QEventPoint_OperatorNotEqual(const QEventPoint* self, QEventPoint* other);
QTLIBC_API void QEventPoint_Swap(QEventPoint* self, QEventPoint* other);
QTLIBC_API QPointF* QEventPoint_Position(const QEventPoint* self);
QTLIBC_API QPointF* QEventPoint_PressPosition(const QEventPoint* self);
QTLIBC_API QPointF* QEventPoint_GrabPosition(const QEventPoint* self);
QTLIBC_API QPointF* QEventPoint_LastPosition(const QEventPoint* self);
QTLIBC_API QPointF* QEventPoint_ScenePosition(const QEventPoint* self);
QTLIBC_API QPointF* QEventPoint_ScenePressPosition(const QEventPoint* self);
QTLIBC_API QPointF* QEventPoint_SceneGrabPosition(const QEventPoint* self);
QTLIBC_API QPointF* QEventPoint_SceneLastPosition(const QEventPoint* self);
QTLIBC_API QPointF* QEventPoint_GlobalPosition(const QEventPoint* self);
QTLIBC_API QPointF* QEventPoint_GlobalPressPosition(const QEventPoint* self);
QTLIBC_API QPointF* QEventPoint_GlobalGrabPosition(const QEventPoint* self);
QTLIBC_API QPointF* QEventPoint_GlobalLastPosition(const QEventPoint* self);
QTLIBC_API QPointF* QEventPoint_NormalizedPosition(const QEventPoint* self);
QTLIBC_API QPointF* QEventPoint_Pos(const QEventPoint* self);
QTLIBC_API QPointF* QEventPoint_StartPos(const QEventPoint* self);
QTLIBC_API QPointF* QEventPoint_ScenePos(const QEventPoint* self);
QTLIBC_API QPointF* QEventPoint_StartScenePos(const QEventPoint* self);
QTLIBC_API QPointF* QEventPoint_ScreenPos(const QEventPoint* self);
QTLIBC_API QPointF* QEventPoint_StartScreenPos(const QEventPoint* self);
QTLIBC_API QPointF* QEventPoint_StartNormalizedPos(const QEventPoint* self);
QTLIBC_API QPointF* QEventPoint_NormalizedPos(const QEventPoint* self);
QTLIBC_API QPointF* QEventPoint_LastPos(const QEventPoint* self);
QTLIBC_API QPointF* QEventPoint_LastScenePos(const QEventPoint* self);
QTLIBC_API QPointF* QEventPoint_LastScreenPos(const QEventPoint* self);
QTLIBC_API QPointF* QEventPoint_LastNormalizedPos(const QEventPoint* self);
QTLIBC_API QVector2D* QEventPoint_Velocity(const QEventPoint* self);
QTLIBC_API uint8_t QEventPoint_State(const QEventPoint* self);
QTLIBC_API QPointingDevice* QEventPoint_Device(const QEventPoint* self);
QTLIBC_API int QEventPoint_Id(const QEventPoint* self);
QTLIBC_API QPointingDeviceUniqueId* QEventPoint_UniqueId(const QEventPoint* self);
QTLIBC_API unsigned long QEventPoint_Timestamp(const QEventPoint* self);
QTLIBC_API unsigned long QEventPoint_LastTimestamp(const QEventPoint* self);
QTLIBC_API unsigned long QEventPoint_PressTimestamp(const QEventPoint* self);
QTLIBC_API double QEventPoint_TimeHeld(const QEventPoint* self);
QTLIBC_API double QEventPoint_Pressure(const QEventPoint* self);
QTLIBC_API double QEventPoint_Rotation(const QEventPoint* self);
QTLIBC_API QSizeF* QEventPoint_EllipseDiameters(const QEventPoint* self);
QTLIBC_API bool QEventPoint_IsAccepted(const QEventPoint* self);
QTLIBC_API void QEventPoint_SetAccepted(QEventPoint* self);
QTLIBC_API void QEventPoint_SetAccepted1(QEventPoint* self, bool accepted);
QTLIBC_API void QEventPoint_Delete(QEventPoint* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
