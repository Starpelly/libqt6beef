#pragma once
#ifndef SRCC_LIBQTIMELINE_H
#define SRCC_LIBQTIMELINE_H

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
typedef struct QEasingCurve QEasingCurve;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QThread QThread;
typedef struct QTimeLine QTimeLine;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QTimeLine::Direction Direction; // C++ enum
typedef QTimeLine::State State;         // C++ enum
#else
typedef int Direction; // C ABI enum
typedef int State;     // C ABI enum
#endif

QTLIBC_API QTimeLine* QTimeLine_new();
QTLIBC_API QTimeLine* QTimeLine_new2(int duration);
QTLIBC_API QTimeLine* QTimeLine_new3(int duration, QObject* parent);
QTLIBC_API QMetaObject* QTimeLine_MetaObject(const QTimeLine* self);
QTLIBC_API void* QTimeLine_Metacast(QTimeLine* self, const char* param1);
QTLIBC_API int QTimeLine_Metacall(QTimeLine* self, int param1, int param2, void** param3);
QTLIBC_API void QTimeLine_OnMetacall(QTimeLine* self, intptr_t slot);
QTLIBC_API int QTimeLine_QBaseMetacall(QTimeLine* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QTimeLine_Tr(const char* s);
QTLIBC_API int QTimeLine_State(const QTimeLine* self);
QTLIBC_API int QTimeLine_LoopCount(const QTimeLine* self);
QTLIBC_API void QTimeLine_SetLoopCount(QTimeLine* self, int count);
QTLIBC_API int QTimeLine_Direction(const QTimeLine* self);
QTLIBC_API void QTimeLine_SetDirection(QTimeLine* self, int direction);
QTLIBC_API int QTimeLine_Duration(const QTimeLine* self);
QTLIBC_API void QTimeLine_SetDuration(QTimeLine* self, int duration);
QTLIBC_API int QTimeLine_StartFrame(const QTimeLine* self);
QTLIBC_API void QTimeLine_SetStartFrame(QTimeLine* self, int frame);
QTLIBC_API int QTimeLine_EndFrame(const QTimeLine* self);
QTLIBC_API void QTimeLine_SetEndFrame(QTimeLine* self, int frame);
QTLIBC_API void QTimeLine_SetFrameRange(QTimeLine* self, int startFrame, int endFrame);
QTLIBC_API int QTimeLine_UpdateInterval(const QTimeLine* self);
QTLIBC_API void QTimeLine_SetUpdateInterval(QTimeLine* self, int interval);
QTLIBC_API QEasingCurve* QTimeLine_EasingCurve(const QTimeLine* self);
QTLIBC_API void QTimeLine_SetEasingCurve(QTimeLine* self, QEasingCurve* curve);
QTLIBC_API int QTimeLine_CurrentTime(const QTimeLine* self);
QTLIBC_API int QTimeLine_CurrentFrame(const QTimeLine* self);
QTLIBC_API double QTimeLine_CurrentValue(const QTimeLine* self);
QTLIBC_API int QTimeLine_FrameForTime(const QTimeLine* self, int msec);
QTLIBC_API double QTimeLine_ValueForTime(const QTimeLine* self, int msec);
QTLIBC_API void QTimeLine_OnValueForTime(const QTimeLine* self, intptr_t slot);
QTLIBC_API double QTimeLine_QBaseValueForTime(const QTimeLine* self, int msec);
QTLIBC_API void QTimeLine_Start(QTimeLine* self);
QTLIBC_API void QTimeLine_Resume(QTimeLine* self);
QTLIBC_API void QTimeLine_Stop(QTimeLine* self);
QTLIBC_API void QTimeLine_SetPaused(QTimeLine* self, bool paused);
QTLIBC_API void QTimeLine_SetCurrentTime(QTimeLine* self, int msec);
QTLIBC_API void QTimeLine_ToggleDirection(QTimeLine* self);
QTLIBC_API void QTimeLine_TimerEvent(QTimeLine* self, QTimerEvent* event);
QTLIBC_API void QTimeLine_OnTimerEvent(QTimeLine* self, intptr_t slot);
QTLIBC_API void QTimeLine_QBaseTimerEvent(QTimeLine* self, QTimerEvent* event);
QTLIBC_API libqt_string QTimeLine_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QTimeLine_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QTimeLine_Event(QTimeLine* self, QEvent* event);
QTLIBC_API void QTimeLine_OnEvent(QTimeLine* self, intptr_t slot);
QTLIBC_API bool QTimeLine_QBaseEvent(QTimeLine* self, QEvent* event);
QTLIBC_API bool QTimeLine_EventFilter(QTimeLine* self, QObject* watched, QEvent* event);
QTLIBC_API void QTimeLine_OnEventFilter(QTimeLine* self, intptr_t slot);
QTLIBC_API bool QTimeLine_QBaseEventFilter(QTimeLine* self, QObject* watched, QEvent* event);
QTLIBC_API void QTimeLine_ChildEvent(QTimeLine* self, QChildEvent* event);
QTLIBC_API void QTimeLine_OnChildEvent(QTimeLine* self, intptr_t slot);
QTLIBC_API void QTimeLine_QBaseChildEvent(QTimeLine* self, QChildEvent* event);
QTLIBC_API void QTimeLine_CustomEvent(QTimeLine* self, QEvent* event);
QTLIBC_API void QTimeLine_OnCustomEvent(QTimeLine* self, intptr_t slot);
QTLIBC_API void QTimeLine_QBaseCustomEvent(QTimeLine* self, QEvent* event);
QTLIBC_API void QTimeLine_ConnectNotify(QTimeLine* self, QMetaMethod* signal);
QTLIBC_API void QTimeLine_OnConnectNotify(QTimeLine* self, intptr_t slot);
QTLIBC_API void QTimeLine_QBaseConnectNotify(QTimeLine* self, QMetaMethod* signal);
QTLIBC_API void QTimeLine_DisconnectNotify(QTimeLine* self, QMetaMethod* signal);
QTLIBC_API void QTimeLine_OnDisconnectNotify(QTimeLine* self, intptr_t slot);
QTLIBC_API void QTimeLine_QBaseDisconnectNotify(QTimeLine* self, QMetaMethod* signal);
QTLIBC_API QObject* QTimeLine_Sender(const QTimeLine* self);
QTLIBC_API void QTimeLine_OnSender(const QTimeLine* self, intptr_t slot);
QTLIBC_API QObject* QTimeLine_QBaseSender(const QTimeLine* self);
QTLIBC_API int QTimeLine_SenderSignalIndex(const QTimeLine* self);
QTLIBC_API void QTimeLine_OnSenderSignalIndex(const QTimeLine* self, intptr_t slot);
QTLIBC_API int QTimeLine_QBaseSenderSignalIndex(const QTimeLine* self);
QTLIBC_API int QTimeLine_Receivers(const QTimeLine* self, const char* signal);
QTLIBC_API void QTimeLine_OnReceivers(const QTimeLine* self, intptr_t slot);
QTLIBC_API int QTimeLine_QBaseReceivers(const QTimeLine* self, const char* signal);
QTLIBC_API bool QTimeLine_IsSignalConnected(const QTimeLine* self, QMetaMethod* signal);
QTLIBC_API void QTimeLine_OnIsSignalConnected(const QTimeLine* self, intptr_t slot);
QTLIBC_API bool QTimeLine_QBaseIsSignalConnected(const QTimeLine* self, QMetaMethod* signal);
QTLIBC_API void QTimeLine_Delete(QTimeLine* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
