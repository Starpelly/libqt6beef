#pragma once
#ifndef SRCC_LIBQSTATEMACHINE_H
#define SRCC_LIBQSTATEMACHINE_H

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
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QStateMachine__SignalEvent)
typedef QStateMachine::SignalEvent QStateMachine__SignalEvent;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QStateMachine__WrappedEvent)
typedef QStateMachine::WrappedEvent QStateMachine__WrappedEvent;
#endif
#else
typedef struct QAbstractAnimation QAbstractAnimation;
typedef struct QAbstractState QAbstractState;
typedef struct QAbstractTransition QAbstractTransition;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QSignalTransition QSignalTransition;
typedef struct QState QState;
typedef struct QStateMachine QStateMachine;
typedef struct QStateMachine__SignalEvent QStateMachine__SignalEvent;
typedef struct QStateMachine__WrappedEvent QStateMachine__WrappedEvent;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QStateMachine::Error Error;                 // C++ enum
typedef QStateMachine::EventPriority EventPriority; // C++ enum
#else
typedef int Error;         // C ABI enum
typedef int EventPriority; // C ABI enum
#endif

QStateMachine* QStateMachine_new();
QStateMachine* QStateMachine_new2(int childMode);
QStateMachine* QStateMachine_new3(QObject* parent);
QStateMachine* QStateMachine_new4(int childMode, QObject* parent);
QMetaObject* QStateMachine_MetaObject(const QStateMachine* self);
void* QStateMachine_Metacast(QStateMachine* self, const char* param1);
int QStateMachine_Metacall(QStateMachine* self, int param1, int param2, void** param3);
void QStateMachine_OnMetacall(QStateMachine* self, intptr_t slot);
int QStateMachine_QBaseMetacall(QStateMachine* self, int param1, int param2, void** param3);
libqt_string QStateMachine_Tr(const char* s);
libqt_string QStateMachine_TrUtf8(const char* s);
void QStateMachine_AddState(QStateMachine* self, QAbstractState* state);
void QStateMachine_RemoveState(QStateMachine* self, QAbstractState* state);
int QStateMachine_Error(const QStateMachine* self);
libqt_string QStateMachine_ErrorString(const QStateMachine* self);
void QStateMachine_ClearError(QStateMachine* self);
bool QStateMachine_IsRunning(const QStateMachine* self);
bool QStateMachine_IsAnimated(const QStateMachine* self);
void QStateMachine_SetAnimated(QStateMachine* self, bool enabled);
void QStateMachine_AddDefaultAnimation(QStateMachine* self, QAbstractAnimation* animation);
libqt_list /* of QAbstractAnimation* */ QStateMachine_DefaultAnimations(const QStateMachine* self);
void QStateMachine_RemoveDefaultAnimation(QStateMachine* self, QAbstractAnimation* animation);
int QStateMachine_GlobalRestorePolicy(const QStateMachine* self);
void QStateMachine_SetGlobalRestorePolicy(QStateMachine* self, int restorePolicy);
void QStateMachine_PostEvent(QStateMachine* self, QEvent* event);
int QStateMachine_PostDelayedEvent(QStateMachine* self, QEvent* event, int delay);
bool QStateMachine_CancelDelayedEvent(QStateMachine* self, int id);
libqt_list /* set of QAbstractState* */ QStateMachine_Configuration(const QStateMachine* self);
bool QStateMachine_EventFilter(QStateMachine* self, QObject* watched, QEvent* event);
void QStateMachine_OnEventFilter(QStateMachine* self, intptr_t slot);
bool QStateMachine_QBaseEventFilter(QStateMachine* self, QObject* watched, QEvent* event);
void QStateMachine_Start(QStateMachine* self);
void QStateMachine_Stop(QStateMachine* self);
void QStateMachine_SetRunning(QStateMachine* self, bool running);
void QStateMachine_RunningChanged(QStateMachine* self, bool running);
void QStateMachine_Connect_RunningChanged(QStateMachine* self, intptr_t slot);
void QStateMachine_OnEntry(QStateMachine* self, QEvent* event);
void QStateMachine_OnOnEntry(QStateMachine* self, intptr_t slot);
void QStateMachine_QBaseOnEntry(QStateMachine* self, QEvent* event);
void QStateMachine_OnExit(QStateMachine* self, QEvent* event);
void QStateMachine_OnOnExit(QStateMachine* self, intptr_t slot);
void QStateMachine_QBaseOnExit(QStateMachine* self, QEvent* event);
void QStateMachine_BeginSelectTransitions(QStateMachine* self, QEvent* event);
void QStateMachine_OnBeginSelectTransitions(QStateMachine* self, intptr_t slot);
void QStateMachine_QBaseBeginSelectTransitions(QStateMachine* self, QEvent* event);
void QStateMachine_EndSelectTransitions(QStateMachine* self, QEvent* event);
void QStateMachine_OnEndSelectTransitions(QStateMachine* self, intptr_t slot);
void QStateMachine_QBaseEndSelectTransitions(QStateMachine* self, QEvent* event);
void QStateMachine_BeginMicrostep(QStateMachine* self, QEvent* event);
void QStateMachine_OnBeginMicrostep(QStateMachine* self, intptr_t slot);
void QStateMachine_QBaseBeginMicrostep(QStateMachine* self, QEvent* event);
void QStateMachine_EndMicrostep(QStateMachine* self, QEvent* event);
void QStateMachine_OnEndMicrostep(QStateMachine* self, intptr_t slot);
void QStateMachine_QBaseEndMicrostep(QStateMachine* self, QEvent* event);
bool QStateMachine_Event(QStateMachine* self, QEvent* e);
void QStateMachine_OnEvent(QStateMachine* self, intptr_t slot);
bool QStateMachine_QBaseEvent(QStateMachine* self, QEvent* e);
libqt_string QStateMachine_Tr2(const char* s, const char* c);
libqt_string QStateMachine_Tr3(const char* s, const char* c, int n);
libqt_string QStateMachine_TrUtf82(const char* s, const char* c);
libqt_string QStateMachine_TrUtf83(const char* s, const char* c, int n);
void QStateMachine_PostEvent2(QStateMachine* self, QEvent* event, int priority);
void QStateMachine_TimerEvent(QStateMachine* self, QTimerEvent* event);
void QStateMachine_OnTimerEvent(QStateMachine* self, intptr_t slot);
void QStateMachine_QBaseTimerEvent(QStateMachine* self, QTimerEvent* event);
void QStateMachine_ChildEvent(QStateMachine* self, QChildEvent* event);
void QStateMachine_OnChildEvent(QStateMachine* self, intptr_t slot);
void QStateMachine_QBaseChildEvent(QStateMachine* self, QChildEvent* event);
void QStateMachine_CustomEvent(QStateMachine* self, QEvent* event);
void QStateMachine_OnCustomEvent(QStateMachine* self, intptr_t slot);
void QStateMachine_QBaseCustomEvent(QStateMachine* self, QEvent* event);
void QStateMachine_ConnectNotify(QStateMachine* self, QMetaMethod* signal);
void QStateMachine_OnConnectNotify(QStateMachine* self, intptr_t slot);
void QStateMachine_QBaseConnectNotify(QStateMachine* self, QMetaMethod* signal);
void QStateMachine_DisconnectNotify(QStateMachine* self, QMetaMethod* signal);
void QStateMachine_OnDisconnectNotify(QStateMachine* self, intptr_t slot);
void QStateMachine_QBaseDisconnectNotify(QStateMachine* self, QMetaMethod* signal);
QObject* QStateMachine_Sender(const QStateMachine* self);
void QStateMachine_OnSender(const QStateMachine* self, intptr_t slot);
QObject* QStateMachine_QBaseSender(const QStateMachine* self);
int QStateMachine_SenderSignalIndex(const QStateMachine* self);
void QStateMachine_OnSenderSignalIndex(const QStateMachine* self, intptr_t slot);
int QStateMachine_QBaseSenderSignalIndex(const QStateMachine* self);
int QStateMachine_Receivers(const QStateMachine* self, const char* signal);
void QStateMachine_OnReceivers(const QStateMachine* self, intptr_t slot);
int QStateMachine_QBaseReceivers(const QStateMachine* self, const char* signal);
bool QStateMachine_IsSignalConnected(const QStateMachine* self, QMetaMethod* signal);
void QStateMachine_OnIsSignalConnected(const QStateMachine* self, intptr_t slot);
bool QStateMachine_QBaseIsSignalConnected(const QStateMachine* self, QMetaMethod* signal);
void QStateMachine_Delete(QStateMachine* self);

QStateMachine__SignalEvent* QStateMachine__SignalEvent_new(QStateMachine__SignalEvent* param1);
QObject* QStateMachine__SignalEvent_Sender(const QStateMachine__SignalEvent* self);
int QStateMachine__SignalEvent_SignalIndex(const QStateMachine__SignalEvent* self);
void QStateMachine__SignalEvent_Delete(QStateMachine__SignalEvent* self);

QStateMachine__WrappedEvent* QStateMachine__WrappedEvent_new(QObject* object, QEvent* event);
QStateMachine__WrappedEvent* QStateMachine__WrappedEvent_new2(QStateMachine__WrappedEvent* param1);
QObject* QStateMachine__WrappedEvent_Object(const QStateMachine__WrappedEvent* self);
QEvent* QStateMachine__WrappedEvent_Event(const QStateMachine__WrappedEvent* self);
void QStateMachine__WrappedEvent_Delete(QStateMachine__WrappedEvent* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
