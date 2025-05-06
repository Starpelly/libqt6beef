#pragma once
#ifndef SRCC_LIBQEVENTTRANSITION_H
#define SRCC_LIBQEVENTTRANSITION_H

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
typedef struct QEventTransition QEventTransition;
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

QEventTransition* QEventTransition_new();
QEventTransition* QEventTransition_new2(QObject* object, int typeVal);
QEventTransition* QEventTransition_new3(QState* sourceState);
QEventTransition* QEventTransition_new4(QObject* object, int typeVal, QState* sourceState);
QMetaObject* QEventTransition_MetaObject(const QEventTransition* self);
void* QEventTransition_Metacast(QEventTransition* self, const char* param1);
int QEventTransition_Metacall(QEventTransition* self, int param1, int param2, void** param3);
void QEventTransition_OnMetacall(QEventTransition* self, intptr_t slot);
int QEventTransition_QBaseMetacall(QEventTransition* self, int param1, int param2, void** param3);
libqt_string QEventTransition_Tr(const char* s);
libqt_string QEventTransition_TrUtf8(const char* s);
QObject* QEventTransition_EventSource(const QEventTransition* self);
void QEventTransition_SetEventSource(QEventTransition* self, QObject* object);
int QEventTransition_EventType(const QEventTransition* self);
void QEventTransition_SetEventType(QEventTransition* self, int typeVal);
bool QEventTransition_EventTest(QEventTransition* self, QEvent* event);
void QEventTransition_OnEventTest(QEventTransition* self, intptr_t slot);
bool QEventTransition_QBaseEventTest(QEventTransition* self, QEvent* event);
void QEventTransition_OnTransition(QEventTransition* self, QEvent* event);
void QEventTransition_OnOnTransition(QEventTransition* self, intptr_t slot);
void QEventTransition_QBaseOnTransition(QEventTransition* self, QEvent* event);
bool QEventTransition_Event(QEventTransition* self, QEvent* e);
void QEventTransition_OnEvent(QEventTransition* self, intptr_t slot);
bool QEventTransition_QBaseEvent(QEventTransition* self, QEvent* e);
libqt_string QEventTransition_Tr2(const char* s, const char* c);
libqt_string QEventTransition_Tr3(const char* s, const char* c, int n);
libqt_string QEventTransition_TrUtf82(const char* s, const char* c);
libqt_string QEventTransition_TrUtf83(const char* s, const char* c, int n);
bool QEventTransition_EventFilter(QEventTransition* self, QObject* watched, QEvent* event);
void QEventTransition_OnEventFilter(QEventTransition* self, intptr_t slot);
bool QEventTransition_QBaseEventFilter(QEventTransition* self, QObject* watched, QEvent* event);
void QEventTransition_TimerEvent(QEventTransition* self, QTimerEvent* event);
void QEventTransition_OnTimerEvent(QEventTransition* self, intptr_t slot);
void QEventTransition_QBaseTimerEvent(QEventTransition* self, QTimerEvent* event);
void QEventTransition_ChildEvent(QEventTransition* self, QChildEvent* event);
void QEventTransition_OnChildEvent(QEventTransition* self, intptr_t slot);
void QEventTransition_QBaseChildEvent(QEventTransition* self, QChildEvent* event);
void QEventTransition_CustomEvent(QEventTransition* self, QEvent* event);
void QEventTransition_OnCustomEvent(QEventTransition* self, intptr_t slot);
void QEventTransition_QBaseCustomEvent(QEventTransition* self, QEvent* event);
void QEventTransition_ConnectNotify(QEventTransition* self, QMetaMethod* signal);
void QEventTransition_OnConnectNotify(QEventTransition* self, intptr_t slot);
void QEventTransition_QBaseConnectNotify(QEventTransition* self, QMetaMethod* signal);
void QEventTransition_DisconnectNotify(QEventTransition* self, QMetaMethod* signal);
void QEventTransition_OnDisconnectNotify(QEventTransition* self, intptr_t slot);
void QEventTransition_QBaseDisconnectNotify(QEventTransition* self, QMetaMethod* signal);
QObject* QEventTransition_Sender(const QEventTransition* self);
void QEventTransition_OnSender(const QEventTransition* self, intptr_t slot);
QObject* QEventTransition_QBaseSender(const QEventTransition* self);
int QEventTransition_SenderSignalIndex(const QEventTransition* self);
void QEventTransition_OnSenderSignalIndex(const QEventTransition* self, intptr_t slot);
int QEventTransition_QBaseSenderSignalIndex(const QEventTransition* self);
int QEventTransition_Receivers(const QEventTransition* self, const char* signal);
void QEventTransition_OnReceivers(const QEventTransition* self, intptr_t slot);
int QEventTransition_QBaseReceivers(const QEventTransition* self, const char* signal);
bool QEventTransition_IsSignalConnected(const QEventTransition* self, QMetaMethod* signal);
void QEventTransition_OnIsSignalConnected(const QEventTransition* self, intptr_t slot);
bool QEventTransition_QBaseIsSignalConnected(const QEventTransition* self, QMetaMethod* signal);
void QEventTransition_Delete(QEventTransition* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
