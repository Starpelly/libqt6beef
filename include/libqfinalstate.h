#pragma once
#ifndef SRCC_LIBQFINALSTATE_H
#define SRCC_LIBQFINALSTATE_H

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
typedef struct QAbstractState QAbstractState;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QFinalState QFinalState;
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

QFinalState* QFinalState_new();
QFinalState* QFinalState_new2(QState* parent);
QMetaObject* QFinalState_MetaObject(const QFinalState* self);
void* QFinalState_Metacast(QFinalState* self, const char* param1);
int QFinalState_Metacall(QFinalState* self, int param1, int param2, void** param3);
void QFinalState_OnMetacall(QFinalState* self, intptr_t slot);
int QFinalState_QBaseMetacall(QFinalState* self, int param1, int param2, void** param3);
libqt_string QFinalState_Tr(const char* s);
libqt_string QFinalState_TrUtf8(const char* s);
void QFinalState_OnEntry(QFinalState* self, QEvent* event);
void QFinalState_OnOnEntry(QFinalState* self, intptr_t slot);
void QFinalState_QBaseOnEntry(QFinalState* self, QEvent* event);
void QFinalState_OnExit(QFinalState* self, QEvent* event);
void QFinalState_OnOnExit(QFinalState* self, intptr_t slot);
void QFinalState_QBaseOnExit(QFinalState* self, QEvent* event);
bool QFinalState_Event(QFinalState* self, QEvent* e);
void QFinalState_OnEvent(QFinalState* self, intptr_t slot);
bool QFinalState_QBaseEvent(QFinalState* self, QEvent* e);
libqt_string QFinalState_Tr2(const char* s, const char* c);
libqt_string QFinalState_Tr3(const char* s, const char* c, int n);
libqt_string QFinalState_TrUtf82(const char* s, const char* c);
libqt_string QFinalState_TrUtf83(const char* s, const char* c, int n);
bool QFinalState_EventFilter(QFinalState* self, QObject* watched, QEvent* event);
void QFinalState_OnEventFilter(QFinalState* self, intptr_t slot);
bool QFinalState_QBaseEventFilter(QFinalState* self, QObject* watched, QEvent* event);
void QFinalState_TimerEvent(QFinalState* self, QTimerEvent* event);
void QFinalState_OnTimerEvent(QFinalState* self, intptr_t slot);
void QFinalState_QBaseTimerEvent(QFinalState* self, QTimerEvent* event);
void QFinalState_ChildEvent(QFinalState* self, QChildEvent* event);
void QFinalState_OnChildEvent(QFinalState* self, intptr_t slot);
void QFinalState_QBaseChildEvent(QFinalState* self, QChildEvent* event);
void QFinalState_CustomEvent(QFinalState* self, QEvent* event);
void QFinalState_OnCustomEvent(QFinalState* self, intptr_t slot);
void QFinalState_QBaseCustomEvent(QFinalState* self, QEvent* event);
void QFinalState_ConnectNotify(QFinalState* self, QMetaMethod* signal);
void QFinalState_OnConnectNotify(QFinalState* self, intptr_t slot);
void QFinalState_QBaseConnectNotify(QFinalState* self, QMetaMethod* signal);
void QFinalState_DisconnectNotify(QFinalState* self, QMetaMethod* signal);
void QFinalState_OnDisconnectNotify(QFinalState* self, intptr_t slot);
void QFinalState_QBaseDisconnectNotify(QFinalState* self, QMetaMethod* signal);
QObject* QFinalState_Sender(const QFinalState* self);
void QFinalState_OnSender(const QFinalState* self, intptr_t slot);
QObject* QFinalState_QBaseSender(const QFinalState* self);
int QFinalState_SenderSignalIndex(const QFinalState* self);
void QFinalState_OnSenderSignalIndex(const QFinalState* self, intptr_t slot);
int QFinalState_QBaseSenderSignalIndex(const QFinalState* self);
int QFinalState_Receivers(const QFinalState* self, const char* signal);
void QFinalState_OnReceivers(const QFinalState* self, intptr_t slot);
int QFinalState_QBaseReceivers(const QFinalState* self, const char* signal);
bool QFinalState_IsSignalConnected(const QFinalState* self, QMetaMethod* signal);
void QFinalState_OnIsSignalConnected(const QFinalState* self, intptr_t slot);
bool QFinalState_QBaseIsSignalConnected(const QFinalState* self, QMetaMethod* signal);
void QFinalState_Delete(QFinalState* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
