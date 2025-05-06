#pragma once
#ifndef SRCC_LIBQPARALLELANIMATIONGROUP_H
#define SRCC_LIBQPARALLELANIMATIONGROUP_H

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
typedef struct QParallelAnimationGroup QParallelAnimationGroup;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QParallelAnimationGroup* QParallelAnimationGroup_new();
QTLIBC_API QParallelAnimationGroup* QParallelAnimationGroup_new2(QObject* parent);
QTLIBC_API QMetaObject* QParallelAnimationGroup_MetaObject(const QParallelAnimationGroup* self);
QTLIBC_API void* QParallelAnimationGroup_Metacast(QParallelAnimationGroup* self, const char* param1);
QTLIBC_API int QParallelAnimationGroup_Metacall(QParallelAnimationGroup* self, int param1, int param2, void** param3);
QTLIBC_API void QParallelAnimationGroup_OnMetacall(QParallelAnimationGroup* self, intptr_t slot);
QTLIBC_API int QParallelAnimationGroup_QBaseMetacall(QParallelAnimationGroup* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QParallelAnimationGroup_Tr(const char* s);
QTLIBC_API int QParallelAnimationGroup_Duration(const QParallelAnimationGroup* self);
QTLIBC_API void QParallelAnimationGroup_OnDuration(const QParallelAnimationGroup* self, intptr_t slot);
QTLIBC_API int QParallelAnimationGroup_QBaseDuration(const QParallelAnimationGroup* self);
QTLIBC_API bool QParallelAnimationGroup_Event(QParallelAnimationGroup* self, QEvent* event);
QTLIBC_API void QParallelAnimationGroup_OnEvent(QParallelAnimationGroup* self, intptr_t slot);
QTLIBC_API bool QParallelAnimationGroup_QBaseEvent(QParallelAnimationGroup* self, QEvent* event);
QTLIBC_API void QParallelAnimationGroup_UpdateCurrentTime(QParallelAnimationGroup* self, int currentTime);
QTLIBC_API void QParallelAnimationGroup_OnUpdateCurrentTime(QParallelAnimationGroup* self, intptr_t slot);
QTLIBC_API void QParallelAnimationGroup_QBaseUpdateCurrentTime(QParallelAnimationGroup* self, int currentTime);
QTLIBC_API void QParallelAnimationGroup_UpdateState(QParallelAnimationGroup* self, int newState, int oldState);
QTLIBC_API void QParallelAnimationGroup_OnUpdateState(QParallelAnimationGroup* self, intptr_t slot);
QTLIBC_API void QParallelAnimationGroup_QBaseUpdateState(QParallelAnimationGroup* self, int newState, int oldState);
QTLIBC_API void QParallelAnimationGroup_UpdateDirection(QParallelAnimationGroup* self, int direction);
QTLIBC_API void QParallelAnimationGroup_OnUpdateDirection(QParallelAnimationGroup* self, intptr_t slot);
QTLIBC_API void QParallelAnimationGroup_QBaseUpdateDirection(QParallelAnimationGroup* self, int direction);
QTLIBC_API libqt_string QParallelAnimationGroup_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QParallelAnimationGroup_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QParallelAnimationGroup_EventFilter(QParallelAnimationGroup* self, QObject* watched, QEvent* event);
QTLIBC_API void QParallelAnimationGroup_OnEventFilter(QParallelAnimationGroup* self, intptr_t slot);
QTLIBC_API bool QParallelAnimationGroup_QBaseEventFilter(QParallelAnimationGroup* self, QObject* watched, QEvent* event);
QTLIBC_API void QParallelAnimationGroup_TimerEvent(QParallelAnimationGroup* self, QTimerEvent* event);
QTLIBC_API void QParallelAnimationGroup_OnTimerEvent(QParallelAnimationGroup* self, intptr_t slot);
QTLIBC_API void QParallelAnimationGroup_QBaseTimerEvent(QParallelAnimationGroup* self, QTimerEvent* event);
QTLIBC_API void QParallelAnimationGroup_ChildEvent(QParallelAnimationGroup* self, QChildEvent* event);
QTLIBC_API void QParallelAnimationGroup_OnChildEvent(QParallelAnimationGroup* self, intptr_t slot);
QTLIBC_API void QParallelAnimationGroup_QBaseChildEvent(QParallelAnimationGroup* self, QChildEvent* event);
QTLIBC_API void QParallelAnimationGroup_CustomEvent(QParallelAnimationGroup* self, QEvent* event);
QTLIBC_API void QParallelAnimationGroup_OnCustomEvent(QParallelAnimationGroup* self, intptr_t slot);
QTLIBC_API void QParallelAnimationGroup_QBaseCustomEvent(QParallelAnimationGroup* self, QEvent* event);
QTLIBC_API void QParallelAnimationGroup_ConnectNotify(QParallelAnimationGroup* self, QMetaMethod* signal);
QTLIBC_API void QParallelAnimationGroup_OnConnectNotify(QParallelAnimationGroup* self, intptr_t slot);
QTLIBC_API void QParallelAnimationGroup_QBaseConnectNotify(QParallelAnimationGroup* self, QMetaMethod* signal);
QTLIBC_API void QParallelAnimationGroup_DisconnectNotify(QParallelAnimationGroup* self, QMetaMethod* signal);
QTLIBC_API void QParallelAnimationGroup_OnDisconnectNotify(QParallelAnimationGroup* self, intptr_t slot);
QTLIBC_API void QParallelAnimationGroup_QBaseDisconnectNotify(QParallelAnimationGroup* self, QMetaMethod* signal);
QTLIBC_API QObject* QParallelAnimationGroup_Sender(const QParallelAnimationGroup* self);
QTLIBC_API void QParallelAnimationGroup_OnSender(const QParallelAnimationGroup* self, intptr_t slot);
QTLIBC_API QObject* QParallelAnimationGroup_QBaseSender(const QParallelAnimationGroup* self);
QTLIBC_API int QParallelAnimationGroup_SenderSignalIndex(const QParallelAnimationGroup* self);
QTLIBC_API void QParallelAnimationGroup_OnSenderSignalIndex(const QParallelAnimationGroup* self, intptr_t slot);
QTLIBC_API int QParallelAnimationGroup_QBaseSenderSignalIndex(const QParallelAnimationGroup* self);
QTLIBC_API int QParallelAnimationGroup_Receivers(const QParallelAnimationGroup* self, const char* signal);
QTLIBC_API void QParallelAnimationGroup_OnReceivers(const QParallelAnimationGroup* self, intptr_t slot);
QTLIBC_API int QParallelAnimationGroup_QBaseReceivers(const QParallelAnimationGroup* self, const char* signal);
QTLIBC_API bool QParallelAnimationGroup_IsSignalConnected(const QParallelAnimationGroup* self, QMetaMethod* signal);
QTLIBC_API void QParallelAnimationGroup_OnIsSignalConnected(const QParallelAnimationGroup* self, intptr_t slot);
QTLIBC_API bool QParallelAnimationGroup_QBaseIsSignalConnected(const QParallelAnimationGroup* self, QMetaMethod* signal);
QTLIBC_API void QParallelAnimationGroup_Delete(QParallelAnimationGroup* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
