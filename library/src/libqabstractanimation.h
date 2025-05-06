#pragma once
#ifndef SRCC_LIBQABSTRACTANIMATION_H
#define SRCC_LIBQABSTRACTANIMATION_H

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
typedef struct QAbstractAnimation QAbstractAnimation;
typedef struct QAnimationDriver QAnimationDriver;
typedef struct QAnimationGroup QAnimationGroup;
typedef struct QAnyStringView QAnyStringView;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QAbstractAnimation::DeletionPolicy DeletionPolicy; // C++ enum
typedef QAbstractAnimation::Direction Direction;           // C++ enum
typedef QAbstractAnimation::State State;                   // C++ enum
#else
typedef int DeletionPolicy; // C ABI enum
typedef int Direction;      // C ABI enum
typedef int State;          // C ABI enum
#endif

QTLIBC_API QAbstractAnimation* QAbstractAnimation_new();
QTLIBC_API QAbstractAnimation* QAbstractAnimation_new2(QObject* parent);
QTLIBC_API QMetaObject* QAbstractAnimation_MetaObject(const QAbstractAnimation* self);
QTLIBC_API void* QAbstractAnimation_Metacast(QAbstractAnimation* self, const char* param1);
QTLIBC_API int QAbstractAnimation_Metacall(QAbstractAnimation* self, int param1, int param2, void** param3);
QTLIBC_API void QAbstractAnimation_OnMetacall(QAbstractAnimation* self, intptr_t slot);
QTLIBC_API int QAbstractAnimation_QBaseMetacall(QAbstractAnimation* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QAbstractAnimation_Tr(const char* s);
QTLIBC_API int QAbstractAnimation_State(const QAbstractAnimation* self);
QTLIBC_API QAnimationGroup* QAbstractAnimation_Group(const QAbstractAnimation* self);
QTLIBC_API int QAbstractAnimation_Direction(const QAbstractAnimation* self);
QTLIBC_API void QAbstractAnimation_SetDirection(QAbstractAnimation* self, int direction);
QTLIBC_API int QAbstractAnimation_CurrentTime(const QAbstractAnimation* self);
QTLIBC_API int QAbstractAnimation_CurrentLoopTime(const QAbstractAnimation* self);
QTLIBC_API int QAbstractAnimation_LoopCount(const QAbstractAnimation* self);
QTLIBC_API void QAbstractAnimation_SetLoopCount(QAbstractAnimation* self, int loopCount);
QTLIBC_API int QAbstractAnimation_CurrentLoop(const QAbstractAnimation* self);
QTLIBC_API int QAbstractAnimation_Duration(const QAbstractAnimation* self);
QTLIBC_API void QAbstractAnimation_OnDuration(const QAbstractAnimation* self, intptr_t slot);
QTLIBC_API int QAbstractAnimation_QBaseDuration(const QAbstractAnimation* self);
QTLIBC_API int QAbstractAnimation_TotalDuration(const QAbstractAnimation* self);
QTLIBC_API void QAbstractAnimation_Finished(QAbstractAnimation* self);
void QAbstractAnimation_Connect_Finished(QAbstractAnimation* self, intptr_t slot);
QTLIBC_API void QAbstractAnimation_StateChanged(QAbstractAnimation* self, int newState, int oldState);
void QAbstractAnimation_Connect_StateChanged(QAbstractAnimation* self, intptr_t slot);
QTLIBC_API void QAbstractAnimation_CurrentLoopChanged(QAbstractAnimation* self, int currentLoop);
void QAbstractAnimation_Connect_CurrentLoopChanged(QAbstractAnimation* self, intptr_t slot);
QTLIBC_API void QAbstractAnimation_DirectionChanged(QAbstractAnimation* self, int param1);
void QAbstractAnimation_Connect_DirectionChanged(QAbstractAnimation* self, intptr_t slot);
QTLIBC_API void QAbstractAnimation_Start(QAbstractAnimation* self);
QTLIBC_API void QAbstractAnimation_Pause(QAbstractAnimation* self);
QTLIBC_API void QAbstractAnimation_Resume(QAbstractAnimation* self);
QTLIBC_API void QAbstractAnimation_SetPaused(QAbstractAnimation* self, bool paused);
QTLIBC_API void QAbstractAnimation_Stop(QAbstractAnimation* self);
QTLIBC_API void QAbstractAnimation_SetCurrentTime(QAbstractAnimation* self, int msecs);
QTLIBC_API bool QAbstractAnimation_Event(QAbstractAnimation* self, QEvent* event);
QTLIBC_API void QAbstractAnimation_OnEvent(QAbstractAnimation* self, intptr_t slot);
QTLIBC_API bool QAbstractAnimation_QBaseEvent(QAbstractAnimation* self, QEvent* event);
QTLIBC_API void QAbstractAnimation_UpdateCurrentTime(QAbstractAnimation* self, int currentTime);
QTLIBC_API void QAbstractAnimation_OnUpdateCurrentTime(QAbstractAnimation* self, intptr_t slot);
QTLIBC_API void QAbstractAnimation_QBaseUpdateCurrentTime(QAbstractAnimation* self, int currentTime);
QTLIBC_API void QAbstractAnimation_UpdateState(QAbstractAnimation* self, int newState, int oldState);
QTLIBC_API void QAbstractAnimation_OnUpdateState(QAbstractAnimation* self, intptr_t slot);
QTLIBC_API void QAbstractAnimation_QBaseUpdateState(QAbstractAnimation* self, int newState, int oldState);
QTLIBC_API void QAbstractAnimation_UpdateDirection(QAbstractAnimation* self, int direction);
QTLIBC_API void QAbstractAnimation_OnUpdateDirection(QAbstractAnimation* self, intptr_t slot);
QTLIBC_API void QAbstractAnimation_QBaseUpdateDirection(QAbstractAnimation* self, int direction);
QTLIBC_API libqt_string QAbstractAnimation_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QAbstractAnimation_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QAbstractAnimation_Start1(QAbstractAnimation* self, int policy);
QTLIBC_API bool QAbstractAnimation_EventFilter(QAbstractAnimation* self, QObject* watched, QEvent* event);
QTLIBC_API void QAbstractAnimation_OnEventFilter(QAbstractAnimation* self, intptr_t slot);
QTLIBC_API bool QAbstractAnimation_QBaseEventFilter(QAbstractAnimation* self, QObject* watched, QEvent* event);
QTLIBC_API void QAbstractAnimation_TimerEvent(QAbstractAnimation* self, QTimerEvent* event);
QTLIBC_API void QAbstractAnimation_OnTimerEvent(QAbstractAnimation* self, intptr_t slot);
QTLIBC_API void QAbstractAnimation_QBaseTimerEvent(QAbstractAnimation* self, QTimerEvent* event);
QTLIBC_API void QAbstractAnimation_ChildEvent(QAbstractAnimation* self, QChildEvent* event);
QTLIBC_API void QAbstractAnimation_OnChildEvent(QAbstractAnimation* self, intptr_t slot);
QTLIBC_API void QAbstractAnimation_QBaseChildEvent(QAbstractAnimation* self, QChildEvent* event);
QTLIBC_API void QAbstractAnimation_CustomEvent(QAbstractAnimation* self, QEvent* event);
QTLIBC_API void QAbstractAnimation_OnCustomEvent(QAbstractAnimation* self, intptr_t slot);
QTLIBC_API void QAbstractAnimation_QBaseCustomEvent(QAbstractAnimation* self, QEvent* event);
QTLIBC_API void QAbstractAnimation_ConnectNotify(QAbstractAnimation* self, QMetaMethod* signal);
QTLIBC_API void QAbstractAnimation_OnConnectNotify(QAbstractAnimation* self, intptr_t slot);
QTLIBC_API void QAbstractAnimation_QBaseConnectNotify(QAbstractAnimation* self, QMetaMethod* signal);
QTLIBC_API void QAbstractAnimation_DisconnectNotify(QAbstractAnimation* self, QMetaMethod* signal);
QTLIBC_API void QAbstractAnimation_OnDisconnectNotify(QAbstractAnimation* self, intptr_t slot);
QTLIBC_API void QAbstractAnimation_QBaseDisconnectNotify(QAbstractAnimation* self, QMetaMethod* signal);
QTLIBC_API QObject* QAbstractAnimation_Sender(const QAbstractAnimation* self);
QTLIBC_API void QAbstractAnimation_OnSender(const QAbstractAnimation* self, intptr_t slot);
QTLIBC_API QObject* QAbstractAnimation_QBaseSender(const QAbstractAnimation* self);
QTLIBC_API int QAbstractAnimation_SenderSignalIndex(const QAbstractAnimation* self);
QTLIBC_API void QAbstractAnimation_OnSenderSignalIndex(const QAbstractAnimation* self, intptr_t slot);
QTLIBC_API int QAbstractAnimation_QBaseSenderSignalIndex(const QAbstractAnimation* self);
QTLIBC_API int QAbstractAnimation_Receivers(const QAbstractAnimation* self, const char* signal);
QTLIBC_API void QAbstractAnimation_OnReceivers(const QAbstractAnimation* self, intptr_t slot);
QTLIBC_API int QAbstractAnimation_QBaseReceivers(const QAbstractAnimation* self, const char* signal);
QTLIBC_API bool QAbstractAnimation_IsSignalConnected(const QAbstractAnimation* self, QMetaMethod* signal);
QTLIBC_API void QAbstractAnimation_OnIsSignalConnected(const QAbstractAnimation* self, intptr_t slot);
QTLIBC_API bool QAbstractAnimation_QBaseIsSignalConnected(const QAbstractAnimation* self, QMetaMethod* signal);
QTLIBC_API void QAbstractAnimation_Delete(QAbstractAnimation* self);

QTLIBC_API QAnimationDriver* QAnimationDriver_new();
QTLIBC_API QAnimationDriver* QAnimationDriver_new2(QObject* parent);
QTLIBC_API QMetaObject* QAnimationDriver_MetaObject(const QAnimationDriver* self);
QTLIBC_API void* QAnimationDriver_Metacast(QAnimationDriver* self, const char* param1);
QTLIBC_API int QAnimationDriver_Metacall(QAnimationDriver* self, int param1, int param2, void** param3);
QTLIBC_API void QAnimationDriver_OnMetacall(QAnimationDriver* self, intptr_t slot);
QTLIBC_API int QAnimationDriver_QBaseMetacall(QAnimationDriver* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QAnimationDriver_Tr(const char* s);
QTLIBC_API void QAnimationDriver_Advance(QAnimationDriver* self);
QTLIBC_API void QAnimationDriver_OnAdvance(QAnimationDriver* self, intptr_t slot);
QTLIBC_API void QAnimationDriver_QBaseAdvance(QAnimationDriver* self);
QTLIBC_API void QAnimationDriver_Install(QAnimationDriver* self);
QTLIBC_API void QAnimationDriver_Uninstall(QAnimationDriver* self);
QTLIBC_API bool QAnimationDriver_IsRunning(const QAnimationDriver* self);
QTLIBC_API long long QAnimationDriver_Elapsed(const QAnimationDriver* self);
QTLIBC_API void QAnimationDriver_OnElapsed(const QAnimationDriver* self, intptr_t slot);
QTLIBC_API long long QAnimationDriver_QBaseElapsed(const QAnimationDriver* self);
QTLIBC_API void QAnimationDriver_Started(QAnimationDriver* self);
void QAnimationDriver_Connect_Started(QAnimationDriver* self, intptr_t slot);
QTLIBC_API void QAnimationDriver_Stopped(QAnimationDriver* self);
void QAnimationDriver_Connect_Stopped(QAnimationDriver* self, intptr_t slot);
QTLIBC_API void QAnimationDriver_Start(QAnimationDriver* self);
QTLIBC_API void QAnimationDriver_OnStart(QAnimationDriver* self, intptr_t slot);
QTLIBC_API void QAnimationDriver_QBaseStart(QAnimationDriver* self);
QTLIBC_API void QAnimationDriver_Stop(QAnimationDriver* self);
QTLIBC_API void QAnimationDriver_OnStop(QAnimationDriver* self, intptr_t slot);
QTLIBC_API void QAnimationDriver_QBaseStop(QAnimationDriver* self);
QTLIBC_API libqt_string QAnimationDriver_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QAnimationDriver_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QAnimationDriver_Event(QAnimationDriver* self, QEvent* event);
QTLIBC_API void QAnimationDriver_OnEvent(QAnimationDriver* self, intptr_t slot);
QTLIBC_API bool QAnimationDriver_QBaseEvent(QAnimationDriver* self, QEvent* event);
QTLIBC_API bool QAnimationDriver_EventFilter(QAnimationDriver* self, QObject* watched, QEvent* event);
QTLIBC_API void QAnimationDriver_OnEventFilter(QAnimationDriver* self, intptr_t slot);
QTLIBC_API bool QAnimationDriver_QBaseEventFilter(QAnimationDriver* self, QObject* watched, QEvent* event);
QTLIBC_API void QAnimationDriver_TimerEvent(QAnimationDriver* self, QTimerEvent* event);
QTLIBC_API void QAnimationDriver_OnTimerEvent(QAnimationDriver* self, intptr_t slot);
QTLIBC_API void QAnimationDriver_QBaseTimerEvent(QAnimationDriver* self, QTimerEvent* event);
QTLIBC_API void QAnimationDriver_ChildEvent(QAnimationDriver* self, QChildEvent* event);
QTLIBC_API void QAnimationDriver_OnChildEvent(QAnimationDriver* self, intptr_t slot);
QTLIBC_API void QAnimationDriver_QBaseChildEvent(QAnimationDriver* self, QChildEvent* event);
QTLIBC_API void QAnimationDriver_CustomEvent(QAnimationDriver* self, QEvent* event);
QTLIBC_API void QAnimationDriver_OnCustomEvent(QAnimationDriver* self, intptr_t slot);
QTLIBC_API void QAnimationDriver_QBaseCustomEvent(QAnimationDriver* self, QEvent* event);
QTLIBC_API void QAnimationDriver_ConnectNotify(QAnimationDriver* self, QMetaMethod* signal);
QTLIBC_API void QAnimationDriver_OnConnectNotify(QAnimationDriver* self, intptr_t slot);
QTLIBC_API void QAnimationDriver_QBaseConnectNotify(QAnimationDriver* self, QMetaMethod* signal);
QTLIBC_API void QAnimationDriver_DisconnectNotify(QAnimationDriver* self, QMetaMethod* signal);
QTLIBC_API void QAnimationDriver_OnDisconnectNotify(QAnimationDriver* self, intptr_t slot);
QTLIBC_API void QAnimationDriver_QBaseDisconnectNotify(QAnimationDriver* self, QMetaMethod* signal);
QTLIBC_API void QAnimationDriver_AdvanceAnimation(QAnimationDriver* self);
QTLIBC_API void QAnimationDriver_OnAdvanceAnimation(QAnimationDriver* self, intptr_t slot);
QTLIBC_API void QAnimationDriver_QBaseAdvanceAnimation(QAnimationDriver* self);
QTLIBC_API QObject* QAnimationDriver_Sender(const QAnimationDriver* self);
QTLIBC_API void QAnimationDriver_OnSender(const QAnimationDriver* self, intptr_t slot);
QTLIBC_API QObject* QAnimationDriver_QBaseSender(const QAnimationDriver* self);
QTLIBC_API int QAnimationDriver_SenderSignalIndex(const QAnimationDriver* self);
QTLIBC_API void QAnimationDriver_OnSenderSignalIndex(const QAnimationDriver* self, intptr_t slot);
QTLIBC_API int QAnimationDriver_QBaseSenderSignalIndex(const QAnimationDriver* self);
QTLIBC_API int QAnimationDriver_Receivers(const QAnimationDriver* self, const char* signal);
QTLIBC_API void QAnimationDriver_OnReceivers(const QAnimationDriver* self, intptr_t slot);
QTLIBC_API int QAnimationDriver_QBaseReceivers(const QAnimationDriver* self, const char* signal);
QTLIBC_API bool QAnimationDriver_IsSignalConnected(const QAnimationDriver* self, QMetaMethod* signal);
QTLIBC_API void QAnimationDriver_OnIsSignalConnected(const QAnimationDriver* self, intptr_t slot);
QTLIBC_API bool QAnimationDriver_QBaseIsSignalConnected(const QAnimationDriver* self, QMetaMethod* signal);
QTLIBC_API void QAnimationDriver_Delete(QAnimationDriver* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
