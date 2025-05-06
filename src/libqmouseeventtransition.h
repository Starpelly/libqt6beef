#pragma once
#ifndef SRCC_LIBQMOUSEEVENTTRANSITION_H
#define SRCC_LIBQMOUSEEVENTTRANSITION_H

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
typedef struct QMouseEventTransition QMouseEventTransition;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QPainterPath QPainterPath;
typedef struct QState QState;
typedef struct QStateMachine QStateMachine;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QMouseEventTransition* QMouseEventTransition_new();
QMouseEventTransition* QMouseEventTransition_new2(QObject* object, int typeVal, int button);
QMouseEventTransition* QMouseEventTransition_new3(QState* sourceState);
QMouseEventTransition* QMouseEventTransition_new4(QObject* object, int typeVal, int button, QState* sourceState);
QMetaObject* QMouseEventTransition_MetaObject(const QMouseEventTransition* self);
void* QMouseEventTransition_Metacast(QMouseEventTransition* self, const char* param1);
int QMouseEventTransition_Metacall(QMouseEventTransition* self, int param1, int param2, void** param3);
void QMouseEventTransition_OnMetacall(QMouseEventTransition* self, intptr_t slot);
int QMouseEventTransition_QBaseMetacall(QMouseEventTransition* self, int param1, int param2, void** param3);
libqt_string QMouseEventTransition_Tr(const char* s);
libqt_string QMouseEventTransition_TrUtf8(const char* s);
int QMouseEventTransition_Button(const QMouseEventTransition* self);
void QMouseEventTransition_SetButton(QMouseEventTransition* self, int button);
int QMouseEventTransition_ModifierMask(const QMouseEventTransition* self);
void QMouseEventTransition_SetModifierMask(QMouseEventTransition* self, int modifiers);
QPainterPath* QMouseEventTransition_HitTestPath(const QMouseEventTransition* self);
void QMouseEventTransition_SetHitTestPath(QMouseEventTransition* self, QPainterPath* path);
void QMouseEventTransition_OnTransition(QMouseEventTransition* self, QEvent* event);
void QMouseEventTransition_OnOnTransition(QMouseEventTransition* self, intptr_t slot);
void QMouseEventTransition_QBaseOnTransition(QMouseEventTransition* self, QEvent* event);
bool QMouseEventTransition_EventTest(QMouseEventTransition* self, QEvent* event);
void QMouseEventTransition_OnEventTest(QMouseEventTransition* self, intptr_t slot);
bool QMouseEventTransition_QBaseEventTest(QMouseEventTransition* self, QEvent* event);
libqt_string QMouseEventTransition_Tr2(const char* s, const char* c);
libqt_string QMouseEventTransition_Tr3(const char* s, const char* c, int n);
libqt_string QMouseEventTransition_TrUtf82(const char* s, const char* c);
libqt_string QMouseEventTransition_TrUtf83(const char* s, const char* c, int n);
bool QMouseEventTransition_Event(QMouseEventTransition* self, QEvent* e);
void QMouseEventTransition_OnEvent(QMouseEventTransition* self, intptr_t slot);
bool QMouseEventTransition_QBaseEvent(QMouseEventTransition* self, QEvent* e);
bool QMouseEventTransition_EventFilter(QMouseEventTransition* self, QObject* watched, QEvent* event);
void QMouseEventTransition_OnEventFilter(QMouseEventTransition* self, intptr_t slot);
bool QMouseEventTransition_QBaseEventFilter(QMouseEventTransition* self, QObject* watched, QEvent* event);
void QMouseEventTransition_TimerEvent(QMouseEventTransition* self, QTimerEvent* event);
void QMouseEventTransition_OnTimerEvent(QMouseEventTransition* self, intptr_t slot);
void QMouseEventTransition_QBaseTimerEvent(QMouseEventTransition* self, QTimerEvent* event);
void QMouseEventTransition_ChildEvent(QMouseEventTransition* self, QChildEvent* event);
void QMouseEventTransition_OnChildEvent(QMouseEventTransition* self, intptr_t slot);
void QMouseEventTransition_QBaseChildEvent(QMouseEventTransition* self, QChildEvent* event);
void QMouseEventTransition_CustomEvent(QMouseEventTransition* self, QEvent* event);
void QMouseEventTransition_OnCustomEvent(QMouseEventTransition* self, intptr_t slot);
void QMouseEventTransition_QBaseCustomEvent(QMouseEventTransition* self, QEvent* event);
void QMouseEventTransition_ConnectNotify(QMouseEventTransition* self, QMetaMethod* signal);
void QMouseEventTransition_OnConnectNotify(QMouseEventTransition* self, intptr_t slot);
void QMouseEventTransition_QBaseConnectNotify(QMouseEventTransition* self, QMetaMethod* signal);
void QMouseEventTransition_DisconnectNotify(QMouseEventTransition* self, QMetaMethod* signal);
void QMouseEventTransition_OnDisconnectNotify(QMouseEventTransition* self, intptr_t slot);
void QMouseEventTransition_QBaseDisconnectNotify(QMouseEventTransition* self, QMetaMethod* signal);
QObject* QMouseEventTransition_Sender(const QMouseEventTransition* self);
void QMouseEventTransition_OnSender(const QMouseEventTransition* self, intptr_t slot);
QObject* QMouseEventTransition_QBaseSender(const QMouseEventTransition* self);
int QMouseEventTransition_SenderSignalIndex(const QMouseEventTransition* self);
void QMouseEventTransition_OnSenderSignalIndex(const QMouseEventTransition* self, intptr_t slot);
int QMouseEventTransition_QBaseSenderSignalIndex(const QMouseEventTransition* self);
int QMouseEventTransition_Receivers(const QMouseEventTransition* self, const char* signal);
void QMouseEventTransition_OnReceivers(const QMouseEventTransition* self, intptr_t slot);
int QMouseEventTransition_QBaseReceivers(const QMouseEventTransition* self, const char* signal);
bool QMouseEventTransition_IsSignalConnected(const QMouseEventTransition* self, QMetaMethod* signal);
void QMouseEventTransition_OnIsSignalConnected(const QMouseEventTransition* self, intptr_t slot);
bool QMouseEventTransition_QBaseIsSignalConnected(const QMouseEventTransition* self, QMetaMethod* signal);
void QMouseEventTransition_Delete(QMouseEventTransition* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
