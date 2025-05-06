#pragma once
#ifndef SRCC_LIBQSEQUENTIALANIMATIONGROUP_H
#define SRCC_LIBQSEQUENTIALANIMATIONGROUP_H

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
typedef struct QAnimationGroup QAnimationGroup;
typedef struct QAnyStringView QAnyStringView;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QPauseAnimation QPauseAnimation;
typedef struct QSequentialAnimationGroup QSequentialAnimationGroup;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QSequentialAnimationGroup* QSequentialAnimationGroup_new();
QTLIBC_API QSequentialAnimationGroup* QSequentialAnimationGroup_new2(QObject* parent);
QTLIBC_API QMetaObject* QSequentialAnimationGroup_MetaObject(const QSequentialAnimationGroup* self);
QTLIBC_API void* QSequentialAnimationGroup_Metacast(QSequentialAnimationGroup* self, const char* param1);
QTLIBC_API int QSequentialAnimationGroup_Metacall(QSequentialAnimationGroup* self, int param1, int param2, void** param3);
QTLIBC_API void QSequentialAnimationGroup_OnMetacall(QSequentialAnimationGroup* self, intptr_t slot);
QTLIBC_API int QSequentialAnimationGroup_QBaseMetacall(QSequentialAnimationGroup* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QSequentialAnimationGroup_Tr(const char* s);
QTLIBC_API QPauseAnimation* QSequentialAnimationGroup_AddPause(QSequentialAnimationGroup* self, int msecs);
QTLIBC_API QPauseAnimation* QSequentialAnimationGroup_InsertPause(QSequentialAnimationGroup* self, int index, int msecs);
QTLIBC_API QAbstractAnimation* QSequentialAnimationGroup_CurrentAnimation(const QSequentialAnimationGroup* self);
QTLIBC_API int QSequentialAnimationGroup_Duration(const QSequentialAnimationGroup* self);
QTLIBC_API void QSequentialAnimationGroup_OnDuration(const QSequentialAnimationGroup* self, intptr_t slot);
QTLIBC_API int QSequentialAnimationGroup_QBaseDuration(const QSequentialAnimationGroup* self);
QTLIBC_API void QSequentialAnimationGroup_CurrentAnimationChanged(QSequentialAnimationGroup* self, QAbstractAnimation* current);
void QSequentialAnimationGroup_Connect_CurrentAnimationChanged(QSequentialAnimationGroup* self, intptr_t slot);
QTLIBC_API bool QSequentialAnimationGroup_Event(QSequentialAnimationGroup* self, QEvent* event);
QTLIBC_API void QSequentialAnimationGroup_OnEvent(QSequentialAnimationGroup* self, intptr_t slot);
QTLIBC_API bool QSequentialAnimationGroup_QBaseEvent(QSequentialAnimationGroup* self, QEvent* event);
QTLIBC_API void QSequentialAnimationGroup_UpdateCurrentTime(QSequentialAnimationGroup* self, int param1);
QTLIBC_API void QSequentialAnimationGroup_OnUpdateCurrentTime(QSequentialAnimationGroup* self, intptr_t slot);
QTLIBC_API void QSequentialAnimationGroup_QBaseUpdateCurrentTime(QSequentialAnimationGroup* self, int param1);
QTLIBC_API void QSequentialAnimationGroup_UpdateState(QSequentialAnimationGroup* self, int newState, int oldState);
QTLIBC_API void QSequentialAnimationGroup_OnUpdateState(QSequentialAnimationGroup* self, intptr_t slot);
QTLIBC_API void QSequentialAnimationGroup_QBaseUpdateState(QSequentialAnimationGroup* self, int newState, int oldState);
QTLIBC_API void QSequentialAnimationGroup_UpdateDirection(QSequentialAnimationGroup* self, int direction);
QTLIBC_API void QSequentialAnimationGroup_OnUpdateDirection(QSequentialAnimationGroup* self, intptr_t slot);
QTLIBC_API void QSequentialAnimationGroup_QBaseUpdateDirection(QSequentialAnimationGroup* self, int direction);
QTLIBC_API libqt_string QSequentialAnimationGroup_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QSequentialAnimationGroup_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QSequentialAnimationGroup_EventFilter(QSequentialAnimationGroup* self, QObject* watched, QEvent* event);
QTLIBC_API void QSequentialAnimationGroup_OnEventFilter(QSequentialAnimationGroup* self, intptr_t slot);
QTLIBC_API bool QSequentialAnimationGroup_QBaseEventFilter(QSequentialAnimationGroup* self, QObject* watched, QEvent* event);
QTLIBC_API void QSequentialAnimationGroup_TimerEvent(QSequentialAnimationGroup* self, QTimerEvent* event);
QTLIBC_API void QSequentialAnimationGroup_OnTimerEvent(QSequentialAnimationGroup* self, intptr_t slot);
QTLIBC_API void QSequentialAnimationGroup_QBaseTimerEvent(QSequentialAnimationGroup* self, QTimerEvent* event);
QTLIBC_API void QSequentialAnimationGroup_ChildEvent(QSequentialAnimationGroup* self, QChildEvent* event);
QTLIBC_API void QSequentialAnimationGroup_OnChildEvent(QSequentialAnimationGroup* self, intptr_t slot);
QTLIBC_API void QSequentialAnimationGroup_QBaseChildEvent(QSequentialAnimationGroup* self, QChildEvent* event);
QTLIBC_API void QSequentialAnimationGroup_CustomEvent(QSequentialAnimationGroup* self, QEvent* event);
QTLIBC_API void QSequentialAnimationGroup_OnCustomEvent(QSequentialAnimationGroup* self, intptr_t slot);
QTLIBC_API void QSequentialAnimationGroup_QBaseCustomEvent(QSequentialAnimationGroup* self, QEvent* event);
QTLIBC_API void QSequentialAnimationGroup_ConnectNotify(QSequentialAnimationGroup* self, QMetaMethod* signal);
QTLIBC_API void QSequentialAnimationGroup_OnConnectNotify(QSequentialAnimationGroup* self, intptr_t slot);
QTLIBC_API void QSequentialAnimationGroup_QBaseConnectNotify(QSequentialAnimationGroup* self, QMetaMethod* signal);
QTLIBC_API void QSequentialAnimationGroup_DisconnectNotify(QSequentialAnimationGroup* self, QMetaMethod* signal);
QTLIBC_API void QSequentialAnimationGroup_OnDisconnectNotify(QSequentialAnimationGroup* self, intptr_t slot);
QTLIBC_API void QSequentialAnimationGroup_QBaseDisconnectNotify(QSequentialAnimationGroup* self, QMetaMethod* signal);
QTLIBC_API QObject* QSequentialAnimationGroup_Sender(const QSequentialAnimationGroup* self);
QTLIBC_API void QSequentialAnimationGroup_OnSender(const QSequentialAnimationGroup* self, intptr_t slot);
QTLIBC_API QObject* QSequentialAnimationGroup_QBaseSender(const QSequentialAnimationGroup* self);
QTLIBC_API int QSequentialAnimationGroup_SenderSignalIndex(const QSequentialAnimationGroup* self);
QTLIBC_API void QSequentialAnimationGroup_OnSenderSignalIndex(const QSequentialAnimationGroup* self, intptr_t slot);
QTLIBC_API int QSequentialAnimationGroup_QBaseSenderSignalIndex(const QSequentialAnimationGroup* self);
QTLIBC_API int QSequentialAnimationGroup_Receivers(const QSequentialAnimationGroup* self, const char* signal);
QTLIBC_API void QSequentialAnimationGroup_OnReceivers(const QSequentialAnimationGroup* self, intptr_t slot);
QTLIBC_API int QSequentialAnimationGroup_QBaseReceivers(const QSequentialAnimationGroup* self, const char* signal);
QTLIBC_API bool QSequentialAnimationGroup_IsSignalConnected(const QSequentialAnimationGroup* self, QMetaMethod* signal);
QTLIBC_API void QSequentialAnimationGroup_OnIsSignalConnected(const QSequentialAnimationGroup* self, intptr_t slot);
QTLIBC_API bool QSequentialAnimationGroup_QBaseIsSignalConnected(const QSequentialAnimationGroup* self, QMetaMethod* signal);
QTLIBC_API void QSequentialAnimationGroup_Delete(QSequentialAnimationGroup* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
