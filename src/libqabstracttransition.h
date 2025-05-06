#pragma once
#ifndef SRCC_LIBQABSTRACTTRANSITION_H
#define SRCC_LIBQABSTRACTTRANSITION_H

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
typedef struct QAbstractState QAbstractState;
typedef struct QAbstractTransition QAbstractTransition;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QState QState;
typedef struct QStateMachine QStateMachine;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QAbstractTransition::TransitionType TransitionType; // C++ enum
#else
typedef int TransitionType; // C ABI enum
#endif

QAbstractTransition* QAbstractTransition_new();
QAbstractTransition* QAbstractTransition_new2(QState* sourceState);
QMetaObject* QAbstractTransition_MetaObject(const QAbstractTransition* self);
void* QAbstractTransition_Metacast(QAbstractTransition* self, const char* param1);
int QAbstractTransition_Metacall(QAbstractTransition* self, int param1, int param2, void** param3);
void QAbstractTransition_OnMetacall(QAbstractTransition* self, intptr_t slot);
int QAbstractTransition_QBaseMetacall(QAbstractTransition* self, int param1, int param2, void** param3);
libqt_string QAbstractTransition_Tr(const char* s);
libqt_string QAbstractTransition_TrUtf8(const char* s);
QState* QAbstractTransition_SourceState(const QAbstractTransition* self);
QAbstractState* QAbstractTransition_TargetState(const QAbstractTransition* self);
void QAbstractTransition_SetTargetState(QAbstractTransition* self, QAbstractState* target);
libqt_list /* of QAbstractState* */ QAbstractTransition_TargetStates(const QAbstractTransition* self);
void QAbstractTransition_SetTargetStates(QAbstractTransition* self, libqt_list /* of QAbstractState* */ targets);
int QAbstractTransition_TransitionType(const QAbstractTransition* self);
void QAbstractTransition_SetTransitionType(QAbstractTransition* self, int typeVal);
QStateMachine* QAbstractTransition_Machine(const QAbstractTransition* self);
void QAbstractTransition_AddAnimation(QAbstractTransition* self, QAbstractAnimation* animation);
void QAbstractTransition_RemoveAnimation(QAbstractTransition* self, QAbstractAnimation* animation);
libqt_list /* of QAbstractAnimation* */ QAbstractTransition_Animations(const QAbstractTransition* self);
bool QAbstractTransition_EventTest(QAbstractTransition* self, QEvent* event);
void QAbstractTransition_OnEventTest(QAbstractTransition* self, intptr_t slot);
bool QAbstractTransition_QBaseEventTest(QAbstractTransition* self, QEvent* event);
void QAbstractTransition_OnTransition(QAbstractTransition* self, QEvent* event);
void QAbstractTransition_OnOnTransition(QAbstractTransition* self, intptr_t slot);
void QAbstractTransition_QBaseOnTransition(QAbstractTransition* self, QEvent* event);
bool QAbstractTransition_Event(QAbstractTransition* self, QEvent* e);
void QAbstractTransition_OnEvent(QAbstractTransition* self, intptr_t slot);
bool QAbstractTransition_QBaseEvent(QAbstractTransition* self, QEvent* e);
libqt_string QAbstractTransition_Tr2(const char* s, const char* c);
libqt_string QAbstractTransition_Tr3(const char* s, const char* c, int n);
libqt_string QAbstractTransition_TrUtf82(const char* s, const char* c);
libqt_string QAbstractTransition_TrUtf83(const char* s, const char* c, int n);
bool QAbstractTransition_EventFilter(QAbstractTransition* self, QObject* watched, QEvent* event);
void QAbstractTransition_OnEventFilter(QAbstractTransition* self, intptr_t slot);
bool QAbstractTransition_QBaseEventFilter(QAbstractTransition* self, QObject* watched, QEvent* event);
void QAbstractTransition_TimerEvent(QAbstractTransition* self, QTimerEvent* event);
void QAbstractTransition_OnTimerEvent(QAbstractTransition* self, intptr_t slot);
void QAbstractTransition_QBaseTimerEvent(QAbstractTransition* self, QTimerEvent* event);
void QAbstractTransition_ChildEvent(QAbstractTransition* self, QChildEvent* event);
void QAbstractTransition_OnChildEvent(QAbstractTransition* self, intptr_t slot);
void QAbstractTransition_QBaseChildEvent(QAbstractTransition* self, QChildEvent* event);
void QAbstractTransition_CustomEvent(QAbstractTransition* self, QEvent* event);
void QAbstractTransition_OnCustomEvent(QAbstractTransition* self, intptr_t slot);
void QAbstractTransition_QBaseCustomEvent(QAbstractTransition* self, QEvent* event);
void QAbstractTransition_ConnectNotify(QAbstractTransition* self, QMetaMethod* signal);
void QAbstractTransition_OnConnectNotify(QAbstractTransition* self, intptr_t slot);
void QAbstractTransition_QBaseConnectNotify(QAbstractTransition* self, QMetaMethod* signal);
void QAbstractTransition_DisconnectNotify(QAbstractTransition* self, QMetaMethod* signal);
void QAbstractTransition_OnDisconnectNotify(QAbstractTransition* self, intptr_t slot);
void QAbstractTransition_QBaseDisconnectNotify(QAbstractTransition* self, QMetaMethod* signal);
QObject* QAbstractTransition_Sender(const QAbstractTransition* self);
void QAbstractTransition_OnSender(const QAbstractTransition* self, intptr_t slot);
QObject* QAbstractTransition_QBaseSender(const QAbstractTransition* self);
int QAbstractTransition_SenderSignalIndex(const QAbstractTransition* self);
void QAbstractTransition_OnSenderSignalIndex(const QAbstractTransition* self, intptr_t slot);
int QAbstractTransition_QBaseSenderSignalIndex(const QAbstractTransition* self);
int QAbstractTransition_Receivers(const QAbstractTransition* self, const char* signal);
void QAbstractTransition_OnReceivers(const QAbstractTransition* self, intptr_t slot);
int QAbstractTransition_QBaseReceivers(const QAbstractTransition* self, const char* signal);
bool QAbstractTransition_IsSignalConnected(const QAbstractTransition* self, QMetaMethod* signal);
void QAbstractTransition_OnIsSignalConnected(const QAbstractTransition* self, intptr_t slot);
bool QAbstractTransition_QBaseIsSignalConnected(const QAbstractTransition* self, QMetaMethod* signal);
void QAbstractTransition_Delete(QAbstractTransition* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
