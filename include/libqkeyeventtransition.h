#pragma once
#ifndef SRCC_LIBQKEYEVENTTRANSITION_H
#define SRCC_LIBQKEYEVENTTRANSITION_H

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
typedef struct QKeyEventTransition QKeyEventTransition;
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

QKeyEventTransition* QKeyEventTransition_new();
QKeyEventTransition* QKeyEventTransition_new2(QObject* object, int typeVal, int key);
QKeyEventTransition* QKeyEventTransition_new3(QState* sourceState);
QKeyEventTransition* QKeyEventTransition_new4(QObject* object, int typeVal, int key, QState* sourceState);
QMetaObject* QKeyEventTransition_MetaObject(const QKeyEventTransition* self);
void* QKeyEventTransition_Metacast(QKeyEventTransition* self, const char* param1);
int QKeyEventTransition_Metacall(QKeyEventTransition* self, int param1, int param2, void** param3);
void QKeyEventTransition_OnMetacall(QKeyEventTransition* self, intptr_t slot);
int QKeyEventTransition_QBaseMetacall(QKeyEventTransition* self, int param1, int param2, void** param3);
libqt_string QKeyEventTransition_Tr(const char* s);
libqt_string QKeyEventTransition_TrUtf8(const char* s);
int QKeyEventTransition_Key(const QKeyEventTransition* self);
void QKeyEventTransition_SetKey(QKeyEventTransition* self, int key);
int QKeyEventTransition_ModifierMask(const QKeyEventTransition* self);
void QKeyEventTransition_SetModifierMask(QKeyEventTransition* self, int modifiers);
void QKeyEventTransition_OnTransition(QKeyEventTransition* self, QEvent* event);
void QKeyEventTransition_OnOnTransition(QKeyEventTransition* self, intptr_t slot);
void QKeyEventTransition_QBaseOnTransition(QKeyEventTransition* self, QEvent* event);
bool QKeyEventTransition_EventTest(QKeyEventTransition* self, QEvent* event);
void QKeyEventTransition_OnEventTest(QKeyEventTransition* self, intptr_t slot);
bool QKeyEventTransition_QBaseEventTest(QKeyEventTransition* self, QEvent* event);
libqt_string QKeyEventTransition_Tr2(const char* s, const char* c);
libqt_string QKeyEventTransition_Tr3(const char* s, const char* c, int n);
libqt_string QKeyEventTransition_TrUtf82(const char* s, const char* c);
libqt_string QKeyEventTransition_TrUtf83(const char* s, const char* c, int n);
bool QKeyEventTransition_Event(QKeyEventTransition* self, QEvent* e);
void QKeyEventTransition_OnEvent(QKeyEventTransition* self, intptr_t slot);
bool QKeyEventTransition_QBaseEvent(QKeyEventTransition* self, QEvent* e);
bool QKeyEventTransition_EventFilter(QKeyEventTransition* self, QObject* watched, QEvent* event);
void QKeyEventTransition_OnEventFilter(QKeyEventTransition* self, intptr_t slot);
bool QKeyEventTransition_QBaseEventFilter(QKeyEventTransition* self, QObject* watched, QEvent* event);
void QKeyEventTransition_TimerEvent(QKeyEventTransition* self, QTimerEvent* event);
void QKeyEventTransition_OnTimerEvent(QKeyEventTransition* self, intptr_t slot);
void QKeyEventTransition_QBaseTimerEvent(QKeyEventTransition* self, QTimerEvent* event);
void QKeyEventTransition_ChildEvent(QKeyEventTransition* self, QChildEvent* event);
void QKeyEventTransition_OnChildEvent(QKeyEventTransition* self, intptr_t slot);
void QKeyEventTransition_QBaseChildEvent(QKeyEventTransition* self, QChildEvent* event);
void QKeyEventTransition_CustomEvent(QKeyEventTransition* self, QEvent* event);
void QKeyEventTransition_OnCustomEvent(QKeyEventTransition* self, intptr_t slot);
void QKeyEventTransition_QBaseCustomEvent(QKeyEventTransition* self, QEvent* event);
void QKeyEventTransition_ConnectNotify(QKeyEventTransition* self, QMetaMethod* signal);
void QKeyEventTransition_OnConnectNotify(QKeyEventTransition* self, intptr_t slot);
void QKeyEventTransition_QBaseConnectNotify(QKeyEventTransition* self, QMetaMethod* signal);
void QKeyEventTransition_DisconnectNotify(QKeyEventTransition* self, QMetaMethod* signal);
void QKeyEventTransition_OnDisconnectNotify(QKeyEventTransition* self, intptr_t slot);
void QKeyEventTransition_QBaseDisconnectNotify(QKeyEventTransition* self, QMetaMethod* signal);
QObject* QKeyEventTransition_Sender(const QKeyEventTransition* self);
void QKeyEventTransition_OnSender(const QKeyEventTransition* self, intptr_t slot);
QObject* QKeyEventTransition_QBaseSender(const QKeyEventTransition* self);
int QKeyEventTransition_SenderSignalIndex(const QKeyEventTransition* self);
void QKeyEventTransition_OnSenderSignalIndex(const QKeyEventTransition* self, intptr_t slot);
int QKeyEventTransition_QBaseSenderSignalIndex(const QKeyEventTransition* self);
int QKeyEventTransition_Receivers(const QKeyEventTransition* self, const char* signal);
void QKeyEventTransition_OnReceivers(const QKeyEventTransition* self, intptr_t slot);
int QKeyEventTransition_QBaseReceivers(const QKeyEventTransition* self, const char* signal);
bool QKeyEventTransition_IsSignalConnected(const QKeyEventTransition* self, QMetaMethod* signal);
void QKeyEventTransition_OnIsSignalConnected(const QKeyEventTransition* self, intptr_t slot);
bool QKeyEventTransition_QBaseIsSignalConnected(const QKeyEventTransition* self, QMetaMethod* signal);
void QKeyEventTransition_Delete(QKeyEventTransition* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
