#pragma once
#ifndef SRC_QTC_LIBQANIMATIONGROUP_H
#define SRC_QTC_LIBQANIMATIONGROUP_H

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
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QAnimationGroup* QAnimationGroup_new();
QTLIBC_API QAnimationGroup* QAnimationGroup_new2(QObject* parent);
QTLIBC_API QMetaObject* QAnimationGroup_MetaObject(const QAnimationGroup* self);
QTLIBC_API void* QAnimationGroup_Metacast(QAnimationGroup* self, const char* param1);
QTLIBC_API int QAnimationGroup_Metacall(QAnimationGroup* self, int param1, int param2, void** param3);
QTLIBC_API void QAnimationGroup_OnMetacall(QAnimationGroup* self, intptr_t slot);
QTLIBC_API int QAnimationGroup_QBaseMetacall(QAnimationGroup* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QAnimationGroup_Tr(const char* s);
QTLIBC_API QAbstractAnimation* QAnimationGroup_AnimationAt(const QAnimationGroup* self, int index);
QTLIBC_API int QAnimationGroup_AnimationCount(const QAnimationGroup* self);
QTLIBC_API int QAnimationGroup_IndexOfAnimation(const QAnimationGroup* self, QAbstractAnimation* animation);
QTLIBC_API void QAnimationGroup_AddAnimation(QAnimationGroup* self, QAbstractAnimation* animation);
QTLIBC_API void QAnimationGroup_InsertAnimation(QAnimationGroup* self, int index, QAbstractAnimation* animation);
QTLIBC_API void QAnimationGroup_RemoveAnimation(QAnimationGroup* self, QAbstractAnimation* animation);
QTLIBC_API QAbstractAnimation* QAnimationGroup_TakeAnimation(QAnimationGroup* self, int index);
QTLIBC_API void QAnimationGroup_Clear(QAnimationGroup* self);
QTLIBC_API bool QAnimationGroup_Event(QAnimationGroup* self, QEvent* event);
QTLIBC_API void QAnimationGroup_OnEvent(QAnimationGroup* self, intptr_t slot);
QTLIBC_API bool QAnimationGroup_QBaseEvent(QAnimationGroup* self, QEvent* event);
QTLIBC_API libqt_string QAnimationGroup_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QAnimationGroup_Tr3(const char* s, const char* c, int n);
QTLIBC_API int QAnimationGroup_Duration(const QAnimationGroup* self);
QTLIBC_API void QAnimationGroup_OnDuration(const QAnimationGroup* self, intptr_t slot);
QTLIBC_API int QAnimationGroup_QBaseDuration(const QAnimationGroup* self);
QTLIBC_API void QAnimationGroup_UpdateCurrentTime(QAnimationGroup* self, int currentTime);
QTLIBC_API void QAnimationGroup_OnUpdateCurrentTime(QAnimationGroup* self, intptr_t slot);
QTLIBC_API void QAnimationGroup_QBaseUpdateCurrentTime(QAnimationGroup* self, int currentTime);
QTLIBC_API void QAnimationGroup_UpdateState(QAnimationGroup* self, int newState, int oldState);
QTLIBC_API void QAnimationGroup_OnUpdateState(QAnimationGroup* self, intptr_t slot);
QTLIBC_API void QAnimationGroup_QBaseUpdateState(QAnimationGroup* self, int newState, int oldState);
QTLIBC_API void QAnimationGroup_UpdateDirection(QAnimationGroup* self, int direction);
QTLIBC_API void QAnimationGroup_OnUpdateDirection(QAnimationGroup* self, intptr_t slot);
QTLIBC_API void QAnimationGroup_QBaseUpdateDirection(QAnimationGroup* self, int direction);
QTLIBC_API bool QAnimationGroup_EventFilter(QAnimationGroup* self, QObject* watched, QEvent* event);
QTLIBC_API void QAnimationGroup_OnEventFilter(QAnimationGroup* self, intptr_t slot);
QTLIBC_API bool QAnimationGroup_QBaseEventFilter(QAnimationGroup* self, QObject* watched, QEvent* event);
QTLIBC_API void QAnimationGroup_TimerEvent(QAnimationGroup* self, QTimerEvent* event);
QTLIBC_API void QAnimationGroup_OnTimerEvent(QAnimationGroup* self, intptr_t slot);
QTLIBC_API void QAnimationGroup_QBaseTimerEvent(QAnimationGroup* self, QTimerEvent* event);
QTLIBC_API void QAnimationGroup_ChildEvent(QAnimationGroup* self, QChildEvent* event);
QTLIBC_API void QAnimationGroup_OnChildEvent(QAnimationGroup* self, intptr_t slot);
QTLIBC_API void QAnimationGroup_QBaseChildEvent(QAnimationGroup* self, QChildEvent* event);
QTLIBC_API void QAnimationGroup_CustomEvent(QAnimationGroup* self, QEvent* event);
QTLIBC_API void QAnimationGroup_OnCustomEvent(QAnimationGroup* self, intptr_t slot);
QTLIBC_API void QAnimationGroup_QBaseCustomEvent(QAnimationGroup* self, QEvent* event);
QTLIBC_API void QAnimationGroup_ConnectNotify(QAnimationGroup* self, QMetaMethod* signal);
QTLIBC_API void QAnimationGroup_OnConnectNotify(QAnimationGroup* self, intptr_t slot);
QTLIBC_API void QAnimationGroup_QBaseConnectNotify(QAnimationGroup* self, QMetaMethod* signal);
QTLIBC_API void QAnimationGroup_DisconnectNotify(QAnimationGroup* self, QMetaMethod* signal);
QTLIBC_API void QAnimationGroup_OnDisconnectNotify(QAnimationGroup* self, intptr_t slot);
QTLIBC_API void QAnimationGroup_QBaseDisconnectNotify(QAnimationGroup* self, QMetaMethod* signal);
QTLIBC_API QObject* QAnimationGroup_Sender(const QAnimationGroup* self);
QTLIBC_API void QAnimationGroup_OnSender(const QAnimationGroup* self, intptr_t slot);
QTLIBC_API QObject* QAnimationGroup_QBaseSender(const QAnimationGroup* self);
QTLIBC_API int QAnimationGroup_SenderSignalIndex(const QAnimationGroup* self);
QTLIBC_API void QAnimationGroup_OnSenderSignalIndex(const QAnimationGroup* self, intptr_t slot);
QTLIBC_API int QAnimationGroup_QBaseSenderSignalIndex(const QAnimationGroup* self);
QTLIBC_API int QAnimationGroup_Receivers(const QAnimationGroup* self, const char* signal);
QTLIBC_API void QAnimationGroup_OnReceivers(const QAnimationGroup* self, intptr_t slot);
QTLIBC_API int QAnimationGroup_QBaseReceivers(const QAnimationGroup* self, const char* signal);
QTLIBC_API bool QAnimationGroup_IsSignalConnected(const QAnimationGroup* self, QMetaMethod* signal);
QTLIBC_API void QAnimationGroup_OnIsSignalConnected(const QAnimationGroup* self, intptr_t slot);
QTLIBC_API bool QAnimationGroup_QBaseIsSignalConnected(const QAnimationGroup* self, QMetaMethod* signal);
QTLIBC_API void QAnimationGroup_Delete(QAnimationGroup* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
