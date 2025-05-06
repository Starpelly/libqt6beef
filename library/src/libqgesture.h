#pragma once
#ifndef SRCC_LIBQGESTURE_H
#define SRCC_LIBQGESTURE_H

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
typedef struct QGesture QGesture;
typedef struct QGestureEvent QGestureEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QPanGesture QPanGesture;
typedef struct QPinchGesture QPinchGesture;
typedef struct QPointF QPointF;
typedef struct QSwipeGesture QSwipeGesture;
typedef struct QTapAndHoldGesture QTapAndHoldGesture;
typedef struct QTapGesture QTapGesture;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWidget QWidget;
#endif

#ifdef __cplusplus
typedef QGesture::GestureCancelPolicy GestureCancelPolicy; // C++ enum
typedef QPinchGesture::ChangeFlag ChangeFlag;              // C++ enum
typedef QPinchGesture::ChangeFlags ChangeFlags;            // C++ QFlags
typedef QSwipeGesture::SwipeDirection SwipeDirection;      // C++ enum
#else
typedef int ChangeFlag;          // C ABI enum
typedef int ChangeFlags;         // C ABI QFlags
typedef int GestureCancelPolicy; // C ABI enum
typedef int SwipeDirection;      // C ABI enum
#endif

QTLIBC_API QGesture* QGesture_new();
QTLIBC_API QGesture* QGesture_new2(QObject* parent);
QTLIBC_API QMetaObject* QGesture_MetaObject(const QGesture* self);
QTLIBC_API void* QGesture_Metacast(QGesture* self, const char* param1);
QTLIBC_API int QGesture_Metacall(QGesture* self, int param1, int param2, void** param3);
QTLIBC_API void QGesture_OnMetacall(QGesture* self, intptr_t slot);
QTLIBC_API int QGesture_QBaseMetacall(QGesture* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QGesture_Tr(const char* s);
QTLIBC_API int QGesture_GestureType(const QGesture* self);
QTLIBC_API int QGesture_State(const QGesture* self);
QTLIBC_API QPointF* QGesture_HotSpot(const QGesture* self);
QTLIBC_API void QGesture_SetHotSpot(QGesture* self, QPointF* value);
QTLIBC_API bool QGesture_HasHotSpot(const QGesture* self);
QTLIBC_API void QGesture_UnsetHotSpot(QGesture* self);
QTLIBC_API void QGesture_SetGestureCancelPolicy(QGesture* self, int policy);
QTLIBC_API int QGesture_GestureCancelPolicy(const QGesture* self);
QTLIBC_API libqt_string QGesture_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QGesture_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QGesture_Event(QGesture* self, QEvent* event);
QTLIBC_API void QGesture_OnEvent(QGesture* self, intptr_t slot);
QTLIBC_API bool QGesture_QBaseEvent(QGesture* self, QEvent* event);
QTLIBC_API bool QGesture_EventFilter(QGesture* self, QObject* watched, QEvent* event);
QTLIBC_API void QGesture_OnEventFilter(QGesture* self, intptr_t slot);
QTLIBC_API bool QGesture_QBaseEventFilter(QGesture* self, QObject* watched, QEvent* event);
QTLIBC_API void QGesture_TimerEvent(QGesture* self, QTimerEvent* event);
QTLIBC_API void QGesture_OnTimerEvent(QGesture* self, intptr_t slot);
QTLIBC_API void QGesture_QBaseTimerEvent(QGesture* self, QTimerEvent* event);
QTLIBC_API void QGesture_ChildEvent(QGesture* self, QChildEvent* event);
QTLIBC_API void QGesture_OnChildEvent(QGesture* self, intptr_t slot);
QTLIBC_API void QGesture_QBaseChildEvent(QGesture* self, QChildEvent* event);
QTLIBC_API void QGesture_CustomEvent(QGesture* self, QEvent* event);
QTLIBC_API void QGesture_OnCustomEvent(QGesture* self, intptr_t slot);
QTLIBC_API void QGesture_QBaseCustomEvent(QGesture* self, QEvent* event);
QTLIBC_API void QGesture_ConnectNotify(QGesture* self, QMetaMethod* signal);
QTLIBC_API void QGesture_OnConnectNotify(QGesture* self, intptr_t slot);
QTLIBC_API void QGesture_QBaseConnectNotify(QGesture* self, QMetaMethod* signal);
QTLIBC_API void QGesture_DisconnectNotify(QGesture* self, QMetaMethod* signal);
QTLIBC_API void QGesture_OnDisconnectNotify(QGesture* self, intptr_t slot);
QTLIBC_API void QGesture_QBaseDisconnectNotify(QGesture* self, QMetaMethod* signal);
QTLIBC_API QObject* QGesture_Sender(const QGesture* self);
QTLIBC_API void QGesture_OnSender(const QGesture* self, intptr_t slot);
QTLIBC_API QObject* QGesture_QBaseSender(const QGesture* self);
QTLIBC_API int QGesture_SenderSignalIndex(const QGesture* self);
QTLIBC_API void QGesture_OnSenderSignalIndex(const QGesture* self, intptr_t slot);
QTLIBC_API int QGesture_QBaseSenderSignalIndex(const QGesture* self);
QTLIBC_API int QGesture_Receivers(const QGesture* self, const char* signal);
QTLIBC_API void QGesture_OnReceivers(const QGesture* self, intptr_t slot);
QTLIBC_API int QGesture_QBaseReceivers(const QGesture* self, const char* signal);
QTLIBC_API bool QGesture_IsSignalConnected(const QGesture* self, QMetaMethod* signal);
QTLIBC_API void QGesture_OnIsSignalConnected(const QGesture* self, intptr_t slot);
QTLIBC_API bool QGesture_QBaseIsSignalConnected(const QGesture* self, QMetaMethod* signal);
QTLIBC_API void QGesture_Delete(QGesture* self);

QTLIBC_API QPanGesture* QPanGesture_new();
QTLIBC_API QPanGesture* QPanGesture_new2(QObject* parent);
QTLIBC_API QMetaObject* QPanGesture_MetaObject(const QPanGesture* self);
QTLIBC_API void* QPanGesture_Metacast(QPanGesture* self, const char* param1);
QTLIBC_API int QPanGesture_Metacall(QPanGesture* self, int param1, int param2, void** param3);
QTLIBC_API void QPanGesture_OnMetacall(QPanGesture* self, intptr_t slot);
QTLIBC_API int QPanGesture_QBaseMetacall(QPanGesture* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QPanGesture_Tr(const char* s);
QTLIBC_API QPointF* QPanGesture_LastOffset(const QPanGesture* self);
QTLIBC_API QPointF* QPanGesture_Offset(const QPanGesture* self);
QTLIBC_API QPointF* QPanGesture_Delta(const QPanGesture* self);
QTLIBC_API double QPanGesture_Acceleration(const QPanGesture* self);
QTLIBC_API void QPanGesture_SetLastOffset(QPanGesture* self, QPointF* value);
QTLIBC_API void QPanGesture_SetOffset(QPanGesture* self, QPointF* value);
QTLIBC_API void QPanGesture_SetAcceleration(QPanGesture* self, double value);
QTLIBC_API libqt_string QPanGesture_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QPanGesture_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QPanGesture_Event(QPanGesture* self, QEvent* event);
QTLIBC_API void QPanGesture_OnEvent(QPanGesture* self, intptr_t slot);
QTLIBC_API bool QPanGesture_QBaseEvent(QPanGesture* self, QEvent* event);
QTLIBC_API bool QPanGesture_EventFilter(QPanGesture* self, QObject* watched, QEvent* event);
QTLIBC_API void QPanGesture_OnEventFilter(QPanGesture* self, intptr_t slot);
QTLIBC_API bool QPanGesture_QBaseEventFilter(QPanGesture* self, QObject* watched, QEvent* event);
QTLIBC_API void QPanGesture_TimerEvent(QPanGesture* self, QTimerEvent* event);
QTLIBC_API void QPanGesture_OnTimerEvent(QPanGesture* self, intptr_t slot);
QTLIBC_API void QPanGesture_QBaseTimerEvent(QPanGesture* self, QTimerEvent* event);
QTLIBC_API void QPanGesture_ChildEvent(QPanGesture* self, QChildEvent* event);
QTLIBC_API void QPanGesture_OnChildEvent(QPanGesture* self, intptr_t slot);
QTLIBC_API void QPanGesture_QBaseChildEvent(QPanGesture* self, QChildEvent* event);
QTLIBC_API void QPanGesture_CustomEvent(QPanGesture* self, QEvent* event);
QTLIBC_API void QPanGesture_OnCustomEvent(QPanGesture* self, intptr_t slot);
QTLIBC_API void QPanGesture_QBaseCustomEvent(QPanGesture* self, QEvent* event);
QTLIBC_API void QPanGesture_ConnectNotify(QPanGesture* self, QMetaMethod* signal);
QTLIBC_API void QPanGesture_OnConnectNotify(QPanGesture* self, intptr_t slot);
QTLIBC_API void QPanGesture_QBaseConnectNotify(QPanGesture* self, QMetaMethod* signal);
QTLIBC_API void QPanGesture_DisconnectNotify(QPanGesture* self, QMetaMethod* signal);
QTLIBC_API void QPanGesture_OnDisconnectNotify(QPanGesture* self, intptr_t slot);
QTLIBC_API void QPanGesture_QBaseDisconnectNotify(QPanGesture* self, QMetaMethod* signal);
QTLIBC_API QObject* QPanGesture_Sender(const QPanGesture* self);
QTLIBC_API void QPanGesture_OnSender(const QPanGesture* self, intptr_t slot);
QTLIBC_API QObject* QPanGesture_QBaseSender(const QPanGesture* self);
QTLIBC_API int QPanGesture_SenderSignalIndex(const QPanGesture* self);
QTLIBC_API void QPanGesture_OnSenderSignalIndex(const QPanGesture* self, intptr_t slot);
QTLIBC_API int QPanGesture_QBaseSenderSignalIndex(const QPanGesture* self);
QTLIBC_API int QPanGesture_Receivers(const QPanGesture* self, const char* signal);
QTLIBC_API void QPanGesture_OnReceivers(const QPanGesture* self, intptr_t slot);
QTLIBC_API int QPanGesture_QBaseReceivers(const QPanGesture* self, const char* signal);
QTLIBC_API bool QPanGesture_IsSignalConnected(const QPanGesture* self, QMetaMethod* signal);
QTLIBC_API void QPanGesture_OnIsSignalConnected(const QPanGesture* self, intptr_t slot);
QTLIBC_API bool QPanGesture_QBaseIsSignalConnected(const QPanGesture* self, QMetaMethod* signal);
QTLIBC_API void QPanGesture_Delete(QPanGesture* self);

QTLIBC_API QPinchGesture* QPinchGesture_new();
QTLIBC_API QPinchGesture* QPinchGesture_new2(QObject* parent);
QTLIBC_API QMetaObject* QPinchGesture_MetaObject(const QPinchGesture* self);
QTLIBC_API void* QPinchGesture_Metacast(QPinchGesture* self, const char* param1);
QTLIBC_API int QPinchGesture_Metacall(QPinchGesture* self, int param1, int param2, void** param3);
QTLIBC_API void QPinchGesture_OnMetacall(QPinchGesture* self, intptr_t slot);
QTLIBC_API int QPinchGesture_QBaseMetacall(QPinchGesture* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QPinchGesture_Tr(const char* s);
QTLIBC_API int QPinchGesture_TotalChangeFlags(const QPinchGesture* self);
QTLIBC_API void QPinchGesture_SetTotalChangeFlags(QPinchGesture* self, int value);
QTLIBC_API int QPinchGesture_ChangeFlags(const QPinchGesture* self);
QTLIBC_API void QPinchGesture_SetChangeFlags(QPinchGesture* self, int value);
QTLIBC_API QPointF* QPinchGesture_StartCenterPoint(const QPinchGesture* self);
QTLIBC_API QPointF* QPinchGesture_LastCenterPoint(const QPinchGesture* self);
QTLIBC_API QPointF* QPinchGesture_CenterPoint(const QPinchGesture* self);
QTLIBC_API void QPinchGesture_SetStartCenterPoint(QPinchGesture* self, QPointF* value);
QTLIBC_API void QPinchGesture_SetLastCenterPoint(QPinchGesture* self, QPointF* value);
QTLIBC_API void QPinchGesture_SetCenterPoint(QPinchGesture* self, QPointF* value);
QTLIBC_API double QPinchGesture_TotalScaleFactor(const QPinchGesture* self);
QTLIBC_API double QPinchGesture_LastScaleFactor(const QPinchGesture* self);
QTLIBC_API double QPinchGesture_ScaleFactor(const QPinchGesture* self);
QTLIBC_API void QPinchGesture_SetTotalScaleFactor(QPinchGesture* self, double value);
QTLIBC_API void QPinchGesture_SetLastScaleFactor(QPinchGesture* self, double value);
QTLIBC_API void QPinchGesture_SetScaleFactor(QPinchGesture* self, double value);
QTLIBC_API double QPinchGesture_TotalRotationAngle(const QPinchGesture* self);
QTLIBC_API double QPinchGesture_LastRotationAngle(const QPinchGesture* self);
QTLIBC_API double QPinchGesture_RotationAngle(const QPinchGesture* self);
QTLIBC_API void QPinchGesture_SetTotalRotationAngle(QPinchGesture* self, double value);
QTLIBC_API void QPinchGesture_SetLastRotationAngle(QPinchGesture* self, double value);
QTLIBC_API void QPinchGesture_SetRotationAngle(QPinchGesture* self, double value);
QTLIBC_API libqt_string QPinchGesture_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QPinchGesture_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QPinchGesture_Event(QPinchGesture* self, QEvent* event);
QTLIBC_API void QPinchGesture_OnEvent(QPinchGesture* self, intptr_t slot);
QTLIBC_API bool QPinchGesture_QBaseEvent(QPinchGesture* self, QEvent* event);
QTLIBC_API bool QPinchGesture_EventFilter(QPinchGesture* self, QObject* watched, QEvent* event);
QTLIBC_API void QPinchGesture_OnEventFilter(QPinchGesture* self, intptr_t slot);
QTLIBC_API bool QPinchGesture_QBaseEventFilter(QPinchGesture* self, QObject* watched, QEvent* event);
QTLIBC_API void QPinchGesture_TimerEvent(QPinchGesture* self, QTimerEvent* event);
QTLIBC_API void QPinchGesture_OnTimerEvent(QPinchGesture* self, intptr_t slot);
QTLIBC_API void QPinchGesture_QBaseTimerEvent(QPinchGesture* self, QTimerEvent* event);
QTLIBC_API void QPinchGesture_ChildEvent(QPinchGesture* self, QChildEvent* event);
QTLIBC_API void QPinchGesture_OnChildEvent(QPinchGesture* self, intptr_t slot);
QTLIBC_API void QPinchGesture_QBaseChildEvent(QPinchGesture* self, QChildEvent* event);
QTLIBC_API void QPinchGesture_CustomEvent(QPinchGesture* self, QEvent* event);
QTLIBC_API void QPinchGesture_OnCustomEvent(QPinchGesture* self, intptr_t slot);
QTLIBC_API void QPinchGesture_QBaseCustomEvent(QPinchGesture* self, QEvent* event);
QTLIBC_API void QPinchGesture_ConnectNotify(QPinchGesture* self, QMetaMethod* signal);
QTLIBC_API void QPinchGesture_OnConnectNotify(QPinchGesture* self, intptr_t slot);
QTLIBC_API void QPinchGesture_QBaseConnectNotify(QPinchGesture* self, QMetaMethod* signal);
QTLIBC_API void QPinchGesture_DisconnectNotify(QPinchGesture* self, QMetaMethod* signal);
QTLIBC_API void QPinchGesture_OnDisconnectNotify(QPinchGesture* self, intptr_t slot);
QTLIBC_API void QPinchGesture_QBaseDisconnectNotify(QPinchGesture* self, QMetaMethod* signal);
QTLIBC_API QObject* QPinchGesture_Sender(const QPinchGesture* self);
QTLIBC_API void QPinchGesture_OnSender(const QPinchGesture* self, intptr_t slot);
QTLIBC_API QObject* QPinchGesture_QBaseSender(const QPinchGesture* self);
QTLIBC_API int QPinchGesture_SenderSignalIndex(const QPinchGesture* self);
QTLIBC_API void QPinchGesture_OnSenderSignalIndex(const QPinchGesture* self, intptr_t slot);
QTLIBC_API int QPinchGesture_QBaseSenderSignalIndex(const QPinchGesture* self);
QTLIBC_API int QPinchGesture_Receivers(const QPinchGesture* self, const char* signal);
QTLIBC_API void QPinchGesture_OnReceivers(const QPinchGesture* self, intptr_t slot);
QTLIBC_API int QPinchGesture_QBaseReceivers(const QPinchGesture* self, const char* signal);
QTLIBC_API bool QPinchGesture_IsSignalConnected(const QPinchGesture* self, QMetaMethod* signal);
QTLIBC_API void QPinchGesture_OnIsSignalConnected(const QPinchGesture* self, intptr_t slot);
QTLIBC_API bool QPinchGesture_QBaseIsSignalConnected(const QPinchGesture* self, QMetaMethod* signal);
QTLIBC_API void QPinchGesture_Delete(QPinchGesture* self);

QTLIBC_API QSwipeGesture* QSwipeGesture_new();
QTLIBC_API QSwipeGesture* QSwipeGesture_new2(QObject* parent);
QTLIBC_API QMetaObject* QSwipeGesture_MetaObject(const QSwipeGesture* self);
QTLIBC_API void* QSwipeGesture_Metacast(QSwipeGesture* self, const char* param1);
QTLIBC_API int QSwipeGesture_Metacall(QSwipeGesture* self, int param1, int param2, void** param3);
QTLIBC_API void QSwipeGesture_OnMetacall(QSwipeGesture* self, intptr_t slot);
QTLIBC_API int QSwipeGesture_QBaseMetacall(QSwipeGesture* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QSwipeGesture_Tr(const char* s);
QTLIBC_API int QSwipeGesture_HorizontalDirection(const QSwipeGesture* self);
QTLIBC_API int QSwipeGesture_VerticalDirection(const QSwipeGesture* self);
QTLIBC_API double QSwipeGesture_SwipeAngle(const QSwipeGesture* self);
QTLIBC_API void QSwipeGesture_SetSwipeAngle(QSwipeGesture* self, double value);
QTLIBC_API libqt_string QSwipeGesture_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QSwipeGesture_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QSwipeGesture_Event(QSwipeGesture* self, QEvent* event);
QTLIBC_API void QSwipeGesture_OnEvent(QSwipeGesture* self, intptr_t slot);
QTLIBC_API bool QSwipeGesture_QBaseEvent(QSwipeGesture* self, QEvent* event);
QTLIBC_API bool QSwipeGesture_EventFilter(QSwipeGesture* self, QObject* watched, QEvent* event);
QTLIBC_API void QSwipeGesture_OnEventFilter(QSwipeGesture* self, intptr_t slot);
QTLIBC_API bool QSwipeGesture_QBaseEventFilter(QSwipeGesture* self, QObject* watched, QEvent* event);
QTLIBC_API void QSwipeGesture_TimerEvent(QSwipeGesture* self, QTimerEvent* event);
QTLIBC_API void QSwipeGesture_OnTimerEvent(QSwipeGesture* self, intptr_t slot);
QTLIBC_API void QSwipeGesture_QBaseTimerEvent(QSwipeGesture* self, QTimerEvent* event);
QTLIBC_API void QSwipeGesture_ChildEvent(QSwipeGesture* self, QChildEvent* event);
QTLIBC_API void QSwipeGesture_OnChildEvent(QSwipeGesture* self, intptr_t slot);
QTLIBC_API void QSwipeGesture_QBaseChildEvent(QSwipeGesture* self, QChildEvent* event);
QTLIBC_API void QSwipeGesture_CustomEvent(QSwipeGesture* self, QEvent* event);
QTLIBC_API void QSwipeGesture_OnCustomEvent(QSwipeGesture* self, intptr_t slot);
QTLIBC_API void QSwipeGesture_QBaseCustomEvent(QSwipeGesture* self, QEvent* event);
QTLIBC_API void QSwipeGesture_ConnectNotify(QSwipeGesture* self, QMetaMethod* signal);
QTLIBC_API void QSwipeGesture_OnConnectNotify(QSwipeGesture* self, intptr_t slot);
QTLIBC_API void QSwipeGesture_QBaseConnectNotify(QSwipeGesture* self, QMetaMethod* signal);
QTLIBC_API void QSwipeGesture_DisconnectNotify(QSwipeGesture* self, QMetaMethod* signal);
QTLIBC_API void QSwipeGesture_OnDisconnectNotify(QSwipeGesture* self, intptr_t slot);
QTLIBC_API void QSwipeGesture_QBaseDisconnectNotify(QSwipeGesture* self, QMetaMethod* signal);
QTLIBC_API QObject* QSwipeGesture_Sender(const QSwipeGesture* self);
QTLIBC_API void QSwipeGesture_OnSender(const QSwipeGesture* self, intptr_t slot);
QTLIBC_API QObject* QSwipeGesture_QBaseSender(const QSwipeGesture* self);
QTLIBC_API int QSwipeGesture_SenderSignalIndex(const QSwipeGesture* self);
QTLIBC_API void QSwipeGesture_OnSenderSignalIndex(const QSwipeGesture* self, intptr_t slot);
QTLIBC_API int QSwipeGesture_QBaseSenderSignalIndex(const QSwipeGesture* self);
QTLIBC_API int QSwipeGesture_Receivers(const QSwipeGesture* self, const char* signal);
QTLIBC_API void QSwipeGesture_OnReceivers(const QSwipeGesture* self, intptr_t slot);
QTLIBC_API int QSwipeGesture_QBaseReceivers(const QSwipeGesture* self, const char* signal);
QTLIBC_API bool QSwipeGesture_IsSignalConnected(const QSwipeGesture* self, QMetaMethod* signal);
QTLIBC_API void QSwipeGesture_OnIsSignalConnected(const QSwipeGesture* self, intptr_t slot);
QTLIBC_API bool QSwipeGesture_QBaseIsSignalConnected(const QSwipeGesture* self, QMetaMethod* signal);
QTLIBC_API void QSwipeGesture_Delete(QSwipeGesture* self);

QTLIBC_API QTapGesture* QTapGesture_new();
QTLIBC_API QTapGesture* QTapGesture_new2(QObject* parent);
QTLIBC_API QMetaObject* QTapGesture_MetaObject(const QTapGesture* self);
QTLIBC_API void* QTapGesture_Metacast(QTapGesture* self, const char* param1);
QTLIBC_API int QTapGesture_Metacall(QTapGesture* self, int param1, int param2, void** param3);
QTLIBC_API void QTapGesture_OnMetacall(QTapGesture* self, intptr_t slot);
QTLIBC_API int QTapGesture_QBaseMetacall(QTapGesture* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QTapGesture_Tr(const char* s);
QTLIBC_API QPointF* QTapGesture_Position(const QTapGesture* self);
QTLIBC_API void QTapGesture_SetPosition(QTapGesture* self, QPointF* pos);
QTLIBC_API libqt_string QTapGesture_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QTapGesture_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QTapGesture_Event(QTapGesture* self, QEvent* event);
QTLIBC_API void QTapGesture_OnEvent(QTapGesture* self, intptr_t slot);
QTLIBC_API bool QTapGesture_QBaseEvent(QTapGesture* self, QEvent* event);
QTLIBC_API bool QTapGesture_EventFilter(QTapGesture* self, QObject* watched, QEvent* event);
QTLIBC_API void QTapGesture_OnEventFilter(QTapGesture* self, intptr_t slot);
QTLIBC_API bool QTapGesture_QBaseEventFilter(QTapGesture* self, QObject* watched, QEvent* event);
QTLIBC_API void QTapGesture_TimerEvent(QTapGesture* self, QTimerEvent* event);
QTLIBC_API void QTapGesture_OnTimerEvent(QTapGesture* self, intptr_t slot);
QTLIBC_API void QTapGesture_QBaseTimerEvent(QTapGesture* self, QTimerEvent* event);
QTLIBC_API void QTapGesture_ChildEvent(QTapGesture* self, QChildEvent* event);
QTLIBC_API void QTapGesture_OnChildEvent(QTapGesture* self, intptr_t slot);
QTLIBC_API void QTapGesture_QBaseChildEvent(QTapGesture* self, QChildEvent* event);
QTLIBC_API void QTapGesture_CustomEvent(QTapGesture* self, QEvent* event);
QTLIBC_API void QTapGesture_OnCustomEvent(QTapGesture* self, intptr_t slot);
QTLIBC_API void QTapGesture_QBaseCustomEvent(QTapGesture* self, QEvent* event);
QTLIBC_API void QTapGesture_ConnectNotify(QTapGesture* self, QMetaMethod* signal);
QTLIBC_API void QTapGesture_OnConnectNotify(QTapGesture* self, intptr_t slot);
QTLIBC_API void QTapGesture_QBaseConnectNotify(QTapGesture* self, QMetaMethod* signal);
QTLIBC_API void QTapGesture_DisconnectNotify(QTapGesture* self, QMetaMethod* signal);
QTLIBC_API void QTapGesture_OnDisconnectNotify(QTapGesture* self, intptr_t slot);
QTLIBC_API void QTapGesture_QBaseDisconnectNotify(QTapGesture* self, QMetaMethod* signal);
QTLIBC_API QObject* QTapGesture_Sender(const QTapGesture* self);
QTLIBC_API void QTapGesture_OnSender(const QTapGesture* self, intptr_t slot);
QTLIBC_API QObject* QTapGesture_QBaseSender(const QTapGesture* self);
QTLIBC_API int QTapGesture_SenderSignalIndex(const QTapGesture* self);
QTLIBC_API void QTapGesture_OnSenderSignalIndex(const QTapGesture* self, intptr_t slot);
QTLIBC_API int QTapGesture_QBaseSenderSignalIndex(const QTapGesture* self);
QTLIBC_API int QTapGesture_Receivers(const QTapGesture* self, const char* signal);
QTLIBC_API void QTapGesture_OnReceivers(const QTapGesture* self, intptr_t slot);
QTLIBC_API int QTapGesture_QBaseReceivers(const QTapGesture* self, const char* signal);
QTLIBC_API bool QTapGesture_IsSignalConnected(const QTapGesture* self, QMetaMethod* signal);
QTLIBC_API void QTapGesture_OnIsSignalConnected(const QTapGesture* self, intptr_t slot);
QTLIBC_API bool QTapGesture_QBaseIsSignalConnected(const QTapGesture* self, QMetaMethod* signal);
QTLIBC_API void QTapGesture_Delete(QTapGesture* self);

QTLIBC_API QTapAndHoldGesture* QTapAndHoldGesture_new();
QTLIBC_API QTapAndHoldGesture* QTapAndHoldGesture_new2(QObject* parent);
QTLIBC_API QMetaObject* QTapAndHoldGesture_MetaObject(const QTapAndHoldGesture* self);
QTLIBC_API void* QTapAndHoldGesture_Metacast(QTapAndHoldGesture* self, const char* param1);
QTLIBC_API int QTapAndHoldGesture_Metacall(QTapAndHoldGesture* self, int param1, int param2, void** param3);
QTLIBC_API void QTapAndHoldGesture_OnMetacall(QTapAndHoldGesture* self, intptr_t slot);
QTLIBC_API int QTapAndHoldGesture_QBaseMetacall(QTapAndHoldGesture* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QTapAndHoldGesture_Tr(const char* s);
QTLIBC_API QPointF* QTapAndHoldGesture_Position(const QTapAndHoldGesture* self);
QTLIBC_API void QTapAndHoldGesture_SetPosition(QTapAndHoldGesture* self, QPointF* pos);
QTLIBC_API void QTapAndHoldGesture_SetTimeout(int msecs);
QTLIBC_API int QTapAndHoldGesture_Timeout();
QTLIBC_API libqt_string QTapAndHoldGesture_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QTapAndHoldGesture_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QTapAndHoldGesture_Event(QTapAndHoldGesture* self, QEvent* event);
QTLIBC_API void QTapAndHoldGesture_OnEvent(QTapAndHoldGesture* self, intptr_t slot);
QTLIBC_API bool QTapAndHoldGesture_QBaseEvent(QTapAndHoldGesture* self, QEvent* event);
QTLIBC_API bool QTapAndHoldGesture_EventFilter(QTapAndHoldGesture* self, QObject* watched, QEvent* event);
QTLIBC_API void QTapAndHoldGesture_OnEventFilter(QTapAndHoldGesture* self, intptr_t slot);
QTLIBC_API bool QTapAndHoldGesture_QBaseEventFilter(QTapAndHoldGesture* self, QObject* watched, QEvent* event);
QTLIBC_API void QTapAndHoldGesture_TimerEvent(QTapAndHoldGesture* self, QTimerEvent* event);
QTLIBC_API void QTapAndHoldGesture_OnTimerEvent(QTapAndHoldGesture* self, intptr_t slot);
QTLIBC_API void QTapAndHoldGesture_QBaseTimerEvent(QTapAndHoldGesture* self, QTimerEvent* event);
QTLIBC_API void QTapAndHoldGesture_ChildEvent(QTapAndHoldGesture* self, QChildEvent* event);
QTLIBC_API void QTapAndHoldGesture_OnChildEvent(QTapAndHoldGesture* self, intptr_t slot);
QTLIBC_API void QTapAndHoldGesture_QBaseChildEvent(QTapAndHoldGesture* self, QChildEvent* event);
QTLIBC_API void QTapAndHoldGesture_CustomEvent(QTapAndHoldGesture* self, QEvent* event);
QTLIBC_API void QTapAndHoldGesture_OnCustomEvent(QTapAndHoldGesture* self, intptr_t slot);
QTLIBC_API void QTapAndHoldGesture_QBaseCustomEvent(QTapAndHoldGesture* self, QEvent* event);
QTLIBC_API void QTapAndHoldGesture_ConnectNotify(QTapAndHoldGesture* self, QMetaMethod* signal);
QTLIBC_API void QTapAndHoldGesture_OnConnectNotify(QTapAndHoldGesture* self, intptr_t slot);
QTLIBC_API void QTapAndHoldGesture_QBaseConnectNotify(QTapAndHoldGesture* self, QMetaMethod* signal);
QTLIBC_API void QTapAndHoldGesture_DisconnectNotify(QTapAndHoldGesture* self, QMetaMethod* signal);
QTLIBC_API void QTapAndHoldGesture_OnDisconnectNotify(QTapAndHoldGesture* self, intptr_t slot);
QTLIBC_API void QTapAndHoldGesture_QBaseDisconnectNotify(QTapAndHoldGesture* self, QMetaMethod* signal);
QTLIBC_API QObject* QTapAndHoldGesture_Sender(const QTapAndHoldGesture* self);
QTLIBC_API void QTapAndHoldGesture_OnSender(const QTapAndHoldGesture* self, intptr_t slot);
QTLIBC_API QObject* QTapAndHoldGesture_QBaseSender(const QTapAndHoldGesture* self);
QTLIBC_API int QTapAndHoldGesture_SenderSignalIndex(const QTapAndHoldGesture* self);
QTLIBC_API void QTapAndHoldGesture_OnSenderSignalIndex(const QTapAndHoldGesture* self, intptr_t slot);
QTLIBC_API int QTapAndHoldGesture_QBaseSenderSignalIndex(const QTapAndHoldGesture* self);
QTLIBC_API int QTapAndHoldGesture_Receivers(const QTapAndHoldGesture* self, const char* signal);
QTLIBC_API void QTapAndHoldGesture_OnReceivers(const QTapAndHoldGesture* self, intptr_t slot);
QTLIBC_API int QTapAndHoldGesture_QBaseReceivers(const QTapAndHoldGesture* self, const char* signal);
QTLIBC_API bool QTapAndHoldGesture_IsSignalConnected(const QTapAndHoldGesture* self, QMetaMethod* signal);
QTLIBC_API void QTapAndHoldGesture_OnIsSignalConnected(const QTapAndHoldGesture* self, intptr_t slot);
QTLIBC_API bool QTapAndHoldGesture_QBaseIsSignalConnected(const QTapAndHoldGesture* self, QMetaMethod* signal);
QTLIBC_API void QTapAndHoldGesture_Delete(QTapAndHoldGesture* self);

QTLIBC_API QGestureEvent* QGestureEvent_new(libqt_list /* of QGesture* */ gestures);
QTLIBC_API QGestureEvent* QGestureEvent_new2(QGestureEvent* param1);
QTLIBC_API libqt_list /* of QGesture* */ QGestureEvent_Gestures(const QGestureEvent* self);
QTLIBC_API QGesture* QGestureEvent_Gesture(const QGestureEvent* self, int typeVal);
QTLIBC_API libqt_list /* of QGesture* */ QGestureEvent_ActiveGestures(const QGestureEvent* self);
QTLIBC_API libqt_list /* of QGesture* */ QGestureEvent_CanceledGestures(const QGestureEvent* self);
QTLIBC_API void QGestureEvent_SetAccepted(QGestureEvent* self, QGesture* param1, bool param2);
QTLIBC_API void QGestureEvent_Accept(QGestureEvent* self, QGesture* param1);
QTLIBC_API void QGestureEvent_Ignore(QGestureEvent* self, QGesture* param1);
QTLIBC_API bool QGestureEvent_IsAccepted(const QGestureEvent* self, QGesture* param1);
QTLIBC_API void QGestureEvent_SetAccepted2(QGestureEvent* self, int param1, bool param2);
QTLIBC_API void QGestureEvent_AcceptWithQtGestureType(QGestureEvent* self, int param1);
QTLIBC_API void QGestureEvent_IgnoreWithQtGestureType(QGestureEvent* self, int param1);
QTLIBC_API bool QGestureEvent_IsAcceptedWithQtGestureType(const QGestureEvent* self, int param1);
QTLIBC_API void QGestureEvent_SetWidget(QGestureEvent* self, QWidget* widget);
QTLIBC_API QWidget* QGestureEvent_Widget(const QGestureEvent* self);
QTLIBC_API QPointF* QGestureEvent_MapToGraphicsScene(const QGestureEvent* self, QPointF* gesturePoint);
QTLIBC_API QEvent* QGestureEvent_Clone(const QGestureEvent* self);
QTLIBC_API void QGestureEvent_OnClone(const QGestureEvent* self, intptr_t slot);
QTLIBC_API QEvent* QGestureEvent_QBaseClone(const QGestureEvent* self);
QTLIBC_API void QGestureEvent_Delete(QGestureEvent* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
