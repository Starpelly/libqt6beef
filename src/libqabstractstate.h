#pragma once
#ifndef SRCC_LIBQABSTRACTSTATE_H
#define SRCC_LIBQABSTRACTSTATE_H

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

QMetaObject* QAbstractState_MetaObject(const QAbstractState* self);
void* QAbstractState_Metacast(QAbstractState* self, const char* param1);
int QAbstractState_Metacall(QAbstractState* self, int param1, int param2, void** param3);
void QAbstractState_OnMetacall(QAbstractState* self, intptr_t slot);
int QAbstractState_QBaseMetacall(QAbstractState* self, int param1, int param2, void** param3);
libqt_string QAbstractState_Tr(const char* s);
libqt_string QAbstractState_TrUtf8(const char* s);
QState* QAbstractState_ParentState(const QAbstractState* self);
QStateMachine* QAbstractState_Machine(const QAbstractState* self);
bool QAbstractState_Active(const QAbstractState* self);
void QAbstractState_ActiveChanged(QAbstractState* self, bool active);
void QAbstractState_Connect_ActiveChanged(QAbstractState* self, intptr_t slot);
void QAbstractState_OnEntry(QAbstractState* self, QEvent* event);
void QAbstractState_OnOnEntry(QAbstractState* self, intptr_t slot);
void QAbstractState_QBaseOnEntry(QAbstractState* self, QEvent* event);
void QAbstractState_OnExit(QAbstractState* self, QEvent* event);
void QAbstractState_OnOnExit(QAbstractState* self, intptr_t slot);
void QAbstractState_QBaseOnExit(QAbstractState* self, QEvent* event);
bool QAbstractState_Event(QAbstractState* self, QEvent* e);
void QAbstractState_OnEvent(QAbstractState* self, intptr_t slot);
bool QAbstractState_QBaseEvent(QAbstractState* self, QEvent* e);
libqt_string QAbstractState_Tr2(const char* s, const char* c);
libqt_string QAbstractState_Tr3(const char* s, const char* c, int n);
libqt_string QAbstractState_TrUtf82(const char* s, const char* c);
libqt_string QAbstractState_TrUtf83(const char* s, const char* c, int n);
bool QAbstractState_EventFilter(QAbstractState* self, QObject* watched, QEvent* event);
void QAbstractState_OnEventFilter(QAbstractState* self, intptr_t slot);
bool QAbstractState_QBaseEventFilter(QAbstractState* self, QObject* watched, QEvent* event);
void QAbstractState_TimerEvent(QAbstractState* self, QTimerEvent* event);
void QAbstractState_OnTimerEvent(QAbstractState* self, intptr_t slot);
void QAbstractState_QBaseTimerEvent(QAbstractState* self, QTimerEvent* event);
void QAbstractState_ChildEvent(QAbstractState* self, QChildEvent* event);
void QAbstractState_OnChildEvent(QAbstractState* self, intptr_t slot);
void QAbstractState_QBaseChildEvent(QAbstractState* self, QChildEvent* event);
void QAbstractState_CustomEvent(QAbstractState* self, QEvent* event);
void QAbstractState_OnCustomEvent(QAbstractState* self, intptr_t slot);
void QAbstractState_QBaseCustomEvent(QAbstractState* self, QEvent* event);
void QAbstractState_ConnectNotify(QAbstractState* self, QMetaMethod* signal);
void QAbstractState_OnConnectNotify(QAbstractState* self, intptr_t slot);
void QAbstractState_QBaseConnectNotify(QAbstractState* self, QMetaMethod* signal);
void QAbstractState_DisconnectNotify(QAbstractState* self, QMetaMethod* signal);
void QAbstractState_OnDisconnectNotify(QAbstractState* self, intptr_t slot);
void QAbstractState_QBaseDisconnectNotify(QAbstractState* self, QMetaMethod* signal);
void QAbstractState_Delete(QAbstractState* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
