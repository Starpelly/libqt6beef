#pragma once
#ifndef SRC_QTC_LIBQGRAPHICSTRANSFORM_H
#define SRC_QTC_LIBQGRAPHICSTRANSFORM_H

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
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection)
typedef QMetaObject::Connection QMetaObject__Connection;
#endif
#else
typedef struct QAnyStringView QAnyStringView;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QGraphicsRotation QGraphicsRotation;
typedef struct QGraphicsScale QGraphicsScale;
typedef struct QGraphicsTransform QGraphicsTransform;
typedef struct QMatrix4x4 QMatrix4x4;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QVector3D QVector3D;
#endif

QTLIBC_API QGraphicsTransform* QGraphicsTransform_new();
QTLIBC_API QGraphicsTransform* QGraphicsTransform_new2(QObject* parent);
QTLIBC_API QMetaObject* QGraphicsTransform_MetaObject(const QGraphicsTransform* self);
QTLIBC_API void* QGraphicsTransform_Metacast(QGraphicsTransform* self, const char* param1);
QTLIBC_API int QGraphicsTransform_Metacall(QGraphicsTransform* self, int param1, int param2, void** param3);
QTLIBC_API void QGraphicsTransform_OnMetacall(QGraphicsTransform* self, intptr_t slot);
QTLIBC_API int QGraphicsTransform_QBaseMetacall(QGraphicsTransform* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QGraphicsTransform_Tr(const char* s);
QTLIBC_API void QGraphicsTransform_ApplyTo(const QGraphicsTransform* self, QMatrix4x4* matrix);
QTLIBC_API void QGraphicsTransform_OnApplyTo(const QGraphicsTransform* self, intptr_t slot);
QTLIBC_API void QGraphicsTransform_QBaseApplyTo(const QGraphicsTransform* self, QMatrix4x4* matrix);
QTLIBC_API libqt_string QGraphicsTransform_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QGraphicsTransform_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QGraphicsTransform_Event(QGraphicsTransform* self, QEvent* event);
QTLIBC_API void QGraphicsTransform_OnEvent(QGraphicsTransform* self, intptr_t slot);
QTLIBC_API bool QGraphicsTransform_QBaseEvent(QGraphicsTransform* self, QEvent* event);
QTLIBC_API bool QGraphicsTransform_EventFilter(QGraphicsTransform* self, QObject* watched, QEvent* event);
QTLIBC_API void QGraphicsTransform_OnEventFilter(QGraphicsTransform* self, intptr_t slot);
QTLIBC_API bool QGraphicsTransform_QBaseEventFilter(QGraphicsTransform* self, QObject* watched, QEvent* event);
QTLIBC_API void QGraphicsTransform_TimerEvent(QGraphicsTransform* self, QTimerEvent* event);
QTLIBC_API void QGraphicsTransform_OnTimerEvent(QGraphicsTransform* self, intptr_t slot);
QTLIBC_API void QGraphicsTransform_QBaseTimerEvent(QGraphicsTransform* self, QTimerEvent* event);
QTLIBC_API void QGraphicsTransform_ChildEvent(QGraphicsTransform* self, QChildEvent* event);
QTLIBC_API void QGraphicsTransform_OnChildEvent(QGraphicsTransform* self, intptr_t slot);
QTLIBC_API void QGraphicsTransform_QBaseChildEvent(QGraphicsTransform* self, QChildEvent* event);
QTLIBC_API void QGraphicsTransform_CustomEvent(QGraphicsTransform* self, QEvent* event);
QTLIBC_API void QGraphicsTransform_OnCustomEvent(QGraphicsTransform* self, intptr_t slot);
QTLIBC_API void QGraphicsTransform_QBaseCustomEvent(QGraphicsTransform* self, QEvent* event);
QTLIBC_API void QGraphicsTransform_ConnectNotify(QGraphicsTransform* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsTransform_OnConnectNotify(QGraphicsTransform* self, intptr_t slot);
QTLIBC_API void QGraphicsTransform_QBaseConnectNotify(QGraphicsTransform* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsTransform_DisconnectNotify(QGraphicsTransform* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsTransform_OnDisconnectNotify(QGraphicsTransform* self, intptr_t slot);
QTLIBC_API void QGraphicsTransform_QBaseDisconnectNotify(QGraphicsTransform* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsTransform_Update(QGraphicsTransform* self);
QTLIBC_API void QGraphicsTransform_OnUpdate(QGraphicsTransform* self, intptr_t slot);
QTLIBC_API void QGraphicsTransform_QBaseUpdate(QGraphicsTransform* self);
QTLIBC_API QObject* QGraphicsTransform_Sender(const QGraphicsTransform* self);
QTLIBC_API void QGraphicsTransform_OnSender(const QGraphicsTransform* self, intptr_t slot);
QTLIBC_API QObject* QGraphicsTransform_QBaseSender(const QGraphicsTransform* self);
QTLIBC_API int QGraphicsTransform_SenderSignalIndex(const QGraphicsTransform* self);
QTLIBC_API void QGraphicsTransform_OnSenderSignalIndex(const QGraphicsTransform* self, intptr_t slot);
QTLIBC_API int QGraphicsTransform_QBaseSenderSignalIndex(const QGraphicsTransform* self);
QTLIBC_API int QGraphicsTransform_Receivers(const QGraphicsTransform* self, const char* signal);
QTLIBC_API void QGraphicsTransform_OnReceivers(const QGraphicsTransform* self, intptr_t slot);
QTLIBC_API int QGraphicsTransform_QBaseReceivers(const QGraphicsTransform* self, const char* signal);
QTLIBC_API bool QGraphicsTransform_IsSignalConnected(const QGraphicsTransform* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsTransform_OnIsSignalConnected(const QGraphicsTransform* self, intptr_t slot);
QTLIBC_API bool QGraphicsTransform_QBaseIsSignalConnected(const QGraphicsTransform* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsTransform_Delete(QGraphicsTransform* self);

QTLIBC_API QGraphicsScale* QGraphicsScale_new();
QTLIBC_API QGraphicsScale* QGraphicsScale_new2(QObject* parent);
QTLIBC_API QMetaObject* QGraphicsScale_MetaObject(const QGraphicsScale* self);
QTLIBC_API void* QGraphicsScale_Metacast(QGraphicsScale* self, const char* param1);
QTLIBC_API int QGraphicsScale_Metacall(QGraphicsScale* self, int param1, int param2, void** param3);
QTLIBC_API void QGraphicsScale_OnMetacall(QGraphicsScale* self, intptr_t slot);
QTLIBC_API int QGraphicsScale_QBaseMetacall(QGraphicsScale* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QGraphicsScale_Tr(const char* s);
QTLIBC_API QVector3D* QGraphicsScale_Origin(const QGraphicsScale* self);
QTLIBC_API void QGraphicsScale_SetOrigin(QGraphicsScale* self, QVector3D* point);
QTLIBC_API double QGraphicsScale_XScale(const QGraphicsScale* self);
QTLIBC_API void QGraphicsScale_SetXScale(QGraphicsScale* self, double xScale);
QTLIBC_API double QGraphicsScale_YScale(const QGraphicsScale* self);
QTLIBC_API void QGraphicsScale_SetYScale(QGraphicsScale* self, double yScale);
QTLIBC_API double QGraphicsScale_ZScale(const QGraphicsScale* self);
QTLIBC_API void QGraphicsScale_SetZScale(QGraphicsScale* self, double zScale);
QTLIBC_API void QGraphicsScale_ApplyTo(const QGraphicsScale* self, QMatrix4x4* matrix);
QTLIBC_API void QGraphicsScale_OnApplyTo(const QGraphicsScale* self, intptr_t slot);
QTLIBC_API void QGraphicsScale_QBaseApplyTo(const QGraphicsScale* self, QMatrix4x4* matrix);
QTLIBC_API void QGraphicsScale_OriginChanged(QGraphicsScale* self);
QTLIBC_API void QGraphicsScale_Connect_OriginChanged(QGraphicsScale* self, intptr_t slot);
QTLIBC_API void QGraphicsScale_XScaleChanged(QGraphicsScale* self);
QTLIBC_API void QGraphicsScale_Connect_XScaleChanged(QGraphicsScale* self, intptr_t slot);
QTLIBC_API void QGraphicsScale_YScaleChanged(QGraphicsScale* self);
QTLIBC_API void QGraphicsScale_Connect_YScaleChanged(QGraphicsScale* self, intptr_t slot);
QTLIBC_API void QGraphicsScale_ZScaleChanged(QGraphicsScale* self);
QTLIBC_API void QGraphicsScale_Connect_ZScaleChanged(QGraphicsScale* self, intptr_t slot);
QTLIBC_API void QGraphicsScale_ScaleChanged(QGraphicsScale* self);
QTLIBC_API void QGraphicsScale_Connect_ScaleChanged(QGraphicsScale* self, intptr_t slot);
QTLIBC_API libqt_string QGraphicsScale_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QGraphicsScale_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QGraphicsScale_Event(QGraphicsScale* self, QEvent* event);
QTLIBC_API void QGraphicsScale_OnEvent(QGraphicsScale* self, intptr_t slot);
QTLIBC_API bool QGraphicsScale_QBaseEvent(QGraphicsScale* self, QEvent* event);
QTLIBC_API bool QGraphicsScale_EventFilter(QGraphicsScale* self, QObject* watched, QEvent* event);
QTLIBC_API void QGraphicsScale_OnEventFilter(QGraphicsScale* self, intptr_t slot);
QTLIBC_API bool QGraphicsScale_QBaseEventFilter(QGraphicsScale* self, QObject* watched, QEvent* event);
QTLIBC_API void QGraphicsScale_TimerEvent(QGraphicsScale* self, QTimerEvent* event);
QTLIBC_API void QGraphicsScale_OnTimerEvent(QGraphicsScale* self, intptr_t slot);
QTLIBC_API void QGraphicsScale_QBaseTimerEvent(QGraphicsScale* self, QTimerEvent* event);
QTLIBC_API void QGraphicsScale_ChildEvent(QGraphicsScale* self, QChildEvent* event);
QTLIBC_API void QGraphicsScale_OnChildEvent(QGraphicsScale* self, intptr_t slot);
QTLIBC_API void QGraphicsScale_QBaseChildEvent(QGraphicsScale* self, QChildEvent* event);
QTLIBC_API void QGraphicsScale_CustomEvent(QGraphicsScale* self, QEvent* event);
QTLIBC_API void QGraphicsScale_OnCustomEvent(QGraphicsScale* self, intptr_t slot);
QTLIBC_API void QGraphicsScale_QBaseCustomEvent(QGraphicsScale* self, QEvent* event);
QTLIBC_API void QGraphicsScale_ConnectNotify(QGraphicsScale* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsScale_OnConnectNotify(QGraphicsScale* self, intptr_t slot);
QTLIBC_API void QGraphicsScale_QBaseConnectNotify(QGraphicsScale* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsScale_DisconnectNotify(QGraphicsScale* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsScale_OnDisconnectNotify(QGraphicsScale* self, intptr_t slot);
QTLIBC_API void QGraphicsScale_QBaseDisconnectNotify(QGraphicsScale* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsScale_Update(QGraphicsScale* self);
QTLIBC_API void QGraphicsScale_OnUpdate(QGraphicsScale* self, intptr_t slot);
QTLIBC_API void QGraphicsScale_QBaseUpdate(QGraphicsScale* self);
QTLIBC_API QObject* QGraphicsScale_Sender(const QGraphicsScale* self);
QTLIBC_API void QGraphicsScale_OnSender(const QGraphicsScale* self, intptr_t slot);
QTLIBC_API QObject* QGraphicsScale_QBaseSender(const QGraphicsScale* self);
QTLIBC_API int QGraphicsScale_SenderSignalIndex(const QGraphicsScale* self);
QTLIBC_API void QGraphicsScale_OnSenderSignalIndex(const QGraphicsScale* self, intptr_t slot);
QTLIBC_API int QGraphicsScale_QBaseSenderSignalIndex(const QGraphicsScale* self);
QTLIBC_API int QGraphicsScale_Receivers(const QGraphicsScale* self, const char* signal);
QTLIBC_API void QGraphicsScale_OnReceivers(const QGraphicsScale* self, intptr_t slot);
QTLIBC_API int QGraphicsScale_QBaseReceivers(const QGraphicsScale* self, const char* signal);
QTLIBC_API bool QGraphicsScale_IsSignalConnected(const QGraphicsScale* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsScale_OnIsSignalConnected(const QGraphicsScale* self, intptr_t slot);
QTLIBC_API bool QGraphicsScale_QBaseIsSignalConnected(const QGraphicsScale* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsScale_Delete(QGraphicsScale* self);

QTLIBC_API QGraphicsRotation* QGraphicsRotation_new();
QTLIBC_API QGraphicsRotation* QGraphicsRotation_new2(QObject* parent);
QTLIBC_API QMetaObject* QGraphicsRotation_MetaObject(const QGraphicsRotation* self);
QTLIBC_API void* QGraphicsRotation_Metacast(QGraphicsRotation* self, const char* param1);
QTLIBC_API int QGraphicsRotation_Metacall(QGraphicsRotation* self, int param1, int param2, void** param3);
QTLIBC_API void QGraphicsRotation_OnMetacall(QGraphicsRotation* self, intptr_t slot);
QTLIBC_API int QGraphicsRotation_QBaseMetacall(QGraphicsRotation* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QGraphicsRotation_Tr(const char* s);
QTLIBC_API QVector3D* QGraphicsRotation_Origin(const QGraphicsRotation* self);
QTLIBC_API void QGraphicsRotation_SetOrigin(QGraphicsRotation* self, QVector3D* point);
QTLIBC_API double QGraphicsRotation_Angle(const QGraphicsRotation* self);
QTLIBC_API void QGraphicsRotation_SetAngle(QGraphicsRotation* self, double angle);
QTLIBC_API QVector3D* QGraphicsRotation_Axis(const QGraphicsRotation* self);
QTLIBC_API void QGraphicsRotation_SetAxis(QGraphicsRotation* self, QVector3D* axis);
QTLIBC_API void QGraphicsRotation_SetAxisWithAxis(QGraphicsRotation* self, int axis);
QTLIBC_API void QGraphicsRotation_ApplyTo(const QGraphicsRotation* self, QMatrix4x4* matrix);
QTLIBC_API void QGraphicsRotation_OnApplyTo(const QGraphicsRotation* self, intptr_t slot);
QTLIBC_API void QGraphicsRotation_QBaseApplyTo(const QGraphicsRotation* self, QMatrix4x4* matrix);
QTLIBC_API void QGraphicsRotation_OriginChanged(QGraphicsRotation* self);
QTLIBC_API void QGraphicsRotation_Connect_OriginChanged(QGraphicsRotation* self, intptr_t slot);
QTLIBC_API void QGraphicsRotation_AngleChanged(QGraphicsRotation* self);
QTLIBC_API void QGraphicsRotation_Connect_AngleChanged(QGraphicsRotation* self, intptr_t slot);
QTLIBC_API void QGraphicsRotation_AxisChanged(QGraphicsRotation* self);
QTLIBC_API void QGraphicsRotation_Connect_AxisChanged(QGraphicsRotation* self, intptr_t slot);
QTLIBC_API libqt_string QGraphicsRotation_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QGraphicsRotation_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QGraphicsRotation_Event(QGraphicsRotation* self, QEvent* event);
QTLIBC_API void QGraphicsRotation_OnEvent(QGraphicsRotation* self, intptr_t slot);
QTLIBC_API bool QGraphicsRotation_QBaseEvent(QGraphicsRotation* self, QEvent* event);
QTLIBC_API bool QGraphicsRotation_EventFilter(QGraphicsRotation* self, QObject* watched, QEvent* event);
QTLIBC_API void QGraphicsRotation_OnEventFilter(QGraphicsRotation* self, intptr_t slot);
QTLIBC_API bool QGraphicsRotation_QBaseEventFilter(QGraphicsRotation* self, QObject* watched, QEvent* event);
QTLIBC_API void QGraphicsRotation_TimerEvent(QGraphicsRotation* self, QTimerEvent* event);
QTLIBC_API void QGraphicsRotation_OnTimerEvent(QGraphicsRotation* self, intptr_t slot);
QTLIBC_API void QGraphicsRotation_QBaseTimerEvent(QGraphicsRotation* self, QTimerEvent* event);
QTLIBC_API void QGraphicsRotation_ChildEvent(QGraphicsRotation* self, QChildEvent* event);
QTLIBC_API void QGraphicsRotation_OnChildEvent(QGraphicsRotation* self, intptr_t slot);
QTLIBC_API void QGraphicsRotation_QBaseChildEvent(QGraphicsRotation* self, QChildEvent* event);
QTLIBC_API void QGraphicsRotation_CustomEvent(QGraphicsRotation* self, QEvent* event);
QTLIBC_API void QGraphicsRotation_OnCustomEvent(QGraphicsRotation* self, intptr_t slot);
QTLIBC_API void QGraphicsRotation_QBaseCustomEvent(QGraphicsRotation* self, QEvent* event);
QTLIBC_API void QGraphicsRotation_ConnectNotify(QGraphicsRotation* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsRotation_OnConnectNotify(QGraphicsRotation* self, intptr_t slot);
QTLIBC_API void QGraphicsRotation_QBaseConnectNotify(QGraphicsRotation* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsRotation_DisconnectNotify(QGraphicsRotation* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsRotation_OnDisconnectNotify(QGraphicsRotation* self, intptr_t slot);
QTLIBC_API void QGraphicsRotation_QBaseDisconnectNotify(QGraphicsRotation* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsRotation_Update(QGraphicsRotation* self);
QTLIBC_API void QGraphicsRotation_OnUpdate(QGraphicsRotation* self, intptr_t slot);
QTLIBC_API void QGraphicsRotation_QBaseUpdate(QGraphicsRotation* self);
QTLIBC_API QObject* QGraphicsRotation_Sender(const QGraphicsRotation* self);
QTLIBC_API void QGraphicsRotation_OnSender(const QGraphicsRotation* self, intptr_t slot);
QTLIBC_API QObject* QGraphicsRotation_QBaseSender(const QGraphicsRotation* self);
QTLIBC_API int QGraphicsRotation_SenderSignalIndex(const QGraphicsRotation* self);
QTLIBC_API void QGraphicsRotation_OnSenderSignalIndex(const QGraphicsRotation* self, intptr_t slot);
QTLIBC_API int QGraphicsRotation_QBaseSenderSignalIndex(const QGraphicsRotation* self);
QTLIBC_API int QGraphicsRotation_Receivers(const QGraphicsRotation* self, const char* signal);
QTLIBC_API void QGraphicsRotation_OnReceivers(const QGraphicsRotation* self, intptr_t slot);
QTLIBC_API int QGraphicsRotation_QBaseReceivers(const QGraphicsRotation* self, const char* signal);
QTLIBC_API bool QGraphicsRotation_IsSignalConnected(const QGraphicsRotation* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsRotation_OnIsSignalConnected(const QGraphicsRotation* self, intptr_t slot);
QTLIBC_API bool QGraphicsRotation_QBaseIsSignalConnected(const QGraphicsRotation* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsRotation_Delete(QGraphicsRotation* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
