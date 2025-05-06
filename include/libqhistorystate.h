#pragma once
#ifndef SRCC_LIBQHISTORYSTATE_H
#define SRCC_LIBQHISTORYSTATE_H

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
typedef struct QAbstractTransition QAbstractTransition;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QHistoryState QHistoryState;
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
typedef QHistoryState::HistoryType HistoryType; // C++ enum
#else
typedef int HistoryType; // C ABI enum
#endif

QHistoryState* QHistoryState_new();
QHistoryState* QHistoryState_new2(int typeVal);
QHistoryState* QHistoryState_new3(QState* parent);
QHistoryState* QHistoryState_new4(int typeVal, QState* parent);
QMetaObject* QHistoryState_MetaObject(const QHistoryState* self);
void* QHistoryState_Metacast(QHistoryState* self, const char* param1);
int QHistoryState_Metacall(QHistoryState* self, int param1, int param2, void** param3);
void QHistoryState_OnMetacall(QHistoryState* self, intptr_t slot);
int QHistoryState_QBaseMetacall(QHistoryState* self, int param1, int param2, void** param3);
libqt_string QHistoryState_Tr(const char* s);
libqt_string QHistoryState_TrUtf8(const char* s);
QAbstractTransition* QHistoryState_DefaultTransition(const QHistoryState* self);
void QHistoryState_SetDefaultTransition(QHistoryState* self, QAbstractTransition* transition);
QAbstractState* QHistoryState_DefaultState(const QHistoryState* self);
void QHistoryState_SetDefaultState(QHistoryState* self, QAbstractState* state);
int QHistoryState_HistoryType(const QHistoryState* self);
void QHistoryState_SetHistoryType(QHistoryState* self, int typeVal);
void QHistoryState_OnEntry(QHistoryState* self, QEvent* event);
void QHistoryState_OnOnEntry(QHistoryState* self, intptr_t slot);
void QHistoryState_QBaseOnEntry(QHistoryState* self, QEvent* event);
void QHistoryState_OnExit(QHistoryState* self, QEvent* event);
void QHistoryState_OnOnExit(QHistoryState* self, intptr_t slot);
void QHistoryState_QBaseOnExit(QHistoryState* self, QEvent* event);
bool QHistoryState_Event(QHistoryState* self, QEvent* e);
void QHistoryState_OnEvent(QHistoryState* self, intptr_t slot);
bool QHistoryState_QBaseEvent(QHistoryState* self, QEvent* e);
libqt_string QHistoryState_Tr2(const char* s, const char* c);
libqt_string QHistoryState_Tr3(const char* s, const char* c, int n);
libqt_string QHistoryState_TrUtf82(const char* s, const char* c);
libqt_string QHistoryState_TrUtf83(const char* s, const char* c, int n);
bool QHistoryState_EventFilter(QHistoryState* self, QObject* watched, QEvent* event);
void QHistoryState_OnEventFilter(QHistoryState* self, intptr_t slot);
bool QHistoryState_QBaseEventFilter(QHistoryState* self, QObject* watched, QEvent* event);
void QHistoryState_TimerEvent(QHistoryState* self, QTimerEvent* event);
void QHistoryState_OnTimerEvent(QHistoryState* self, intptr_t slot);
void QHistoryState_QBaseTimerEvent(QHistoryState* self, QTimerEvent* event);
void QHistoryState_ChildEvent(QHistoryState* self, QChildEvent* event);
void QHistoryState_OnChildEvent(QHistoryState* self, intptr_t slot);
void QHistoryState_QBaseChildEvent(QHistoryState* self, QChildEvent* event);
void QHistoryState_CustomEvent(QHistoryState* self, QEvent* event);
void QHistoryState_OnCustomEvent(QHistoryState* self, intptr_t slot);
void QHistoryState_QBaseCustomEvent(QHistoryState* self, QEvent* event);
void QHistoryState_ConnectNotify(QHistoryState* self, QMetaMethod* signal);
void QHistoryState_OnConnectNotify(QHistoryState* self, intptr_t slot);
void QHistoryState_QBaseConnectNotify(QHistoryState* self, QMetaMethod* signal);
void QHistoryState_DisconnectNotify(QHistoryState* self, QMetaMethod* signal);
void QHistoryState_OnDisconnectNotify(QHistoryState* self, intptr_t slot);
void QHistoryState_QBaseDisconnectNotify(QHistoryState* self, QMetaMethod* signal);
QObject* QHistoryState_Sender(const QHistoryState* self);
void QHistoryState_OnSender(const QHistoryState* self, intptr_t slot);
QObject* QHistoryState_QBaseSender(const QHistoryState* self);
int QHistoryState_SenderSignalIndex(const QHistoryState* self);
void QHistoryState_OnSenderSignalIndex(const QHistoryState* self, intptr_t slot);
int QHistoryState_QBaseSenderSignalIndex(const QHistoryState* self);
int QHistoryState_Receivers(const QHistoryState* self, const char* signal);
void QHistoryState_OnReceivers(const QHistoryState* self, intptr_t slot);
int QHistoryState_QBaseReceivers(const QHistoryState* self, const char* signal);
bool QHistoryState_IsSignalConnected(const QHistoryState* self, QMetaMethod* signal);
void QHistoryState_OnIsSignalConnected(const QHistoryState* self, intptr_t slot);
bool QHistoryState_QBaseIsSignalConnected(const QHistoryState* self, QMetaMethod* signal);
void QHistoryState_Delete(QHistoryState* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
