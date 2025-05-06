#pragma once
#ifndef SRC_QTC_LIBQPAUSEANIMATION_H
#define SRC_QTC_LIBQPAUSEANIMATION_H

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
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QPauseAnimation* QPauseAnimation_new();
QTLIBC_API QPauseAnimation* QPauseAnimation_new2(int msecs);
QTLIBC_API QPauseAnimation* QPauseAnimation_new3(QObject* parent);
QTLIBC_API QPauseAnimation* QPauseAnimation_new4(int msecs, QObject* parent);
QTLIBC_API QMetaObject* QPauseAnimation_MetaObject(const QPauseAnimation* self);
QTLIBC_API void* QPauseAnimation_Metacast(QPauseAnimation* self, const char* param1);
QTLIBC_API int QPauseAnimation_Metacall(QPauseAnimation* self, int param1, int param2, void** param3);
QTLIBC_API void QPauseAnimation_OnMetacall(QPauseAnimation* self, intptr_t slot);
QTLIBC_API int QPauseAnimation_QBaseMetacall(QPauseAnimation* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QPauseAnimation_Tr(const char* s);
QTLIBC_API int QPauseAnimation_Duration(const QPauseAnimation* self);
QTLIBC_API void QPauseAnimation_OnDuration(const QPauseAnimation* self, intptr_t slot);
QTLIBC_API int QPauseAnimation_QBaseDuration(const QPauseAnimation* self);
QTLIBC_API void QPauseAnimation_SetDuration(QPauseAnimation* self, int msecs);
QTLIBC_API bool QPauseAnimation_Event(QPauseAnimation* self, QEvent* e);
QTLIBC_API void QPauseAnimation_OnEvent(QPauseAnimation* self, intptr_t slot);
QTLIBC_API bool QPauseAnimation_QBaseEvent(QPauseAnimation* self, QEvent* e);
QTLIBC_API void QPauseAnimation_UpdateCurrentTime(QPauseAnimation* self, int param1);
QTLIBC_API void QPauseAnimation_OnUpdateCurrentTime(QPauseAnimation* self, intptr_t slot);
QTLIBC_API void QPauseAnimation_QBaseUpdateCurrentTime(QPauseAnimation* self, int param1);
QTLIBC_API libqt_string QPauseAnimation_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QPauseAnimation_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QPauseAnimation_UpdateState(QPauseAnimation* self, int newState, int oldState);
QTLIBC_API void QPauseAnimation_OnUpdateState(QPauseAnimation* self, intptr_t slot);
QTLIBC_API void QPauseAnimation_QBaseUpdateState(QPauseAnimation* self, int newState, int oldState);
QTLIBC_API void QPauseAnimation_UpdateDirection(QPauseAnimation* self, int direction);
QTLIBC_API void QPauseAnimation_OnUpdateDirection(QPauseAnimation* self, intptr_t slot);
QTLIBC_API void QPauseAnimation_QBaseUpdateDirection(QPauseAnimation* self, int direction);
QTLIBC_API bool QPauseAnimation_EventFilter(QPauseAnimation* self, QObject* watched, QEvent* event);
QTLIBC_API void QPauseAnimation_OnEventFilter(QPauseAnimation* self, intptr_t slot);
QTLIBC_API bool QPauseAnimation_QBaseEventFilter(QPauseAnimation* self, QObject* watched, QEvent* event);
QTLIBC_API void QPauseAnimation_TimerEvent(QPauseAnimation* self, QTimerEvent* event);
QTLIBC_API void QPauseAnimation_OnTimerEvent(QPauseAnimation* self, intptr_t slot);
QTLIBC_API void QPauseAnimation_QBaseTimerEvent(QPauseAnimation* self, QTimerEvent* event);
QTLIBC_API void QPauseAnimation_ChildEvent(QPauseAnimation* self, QChildEvent* event);
QTLIBC_API void QPauseAnimation_OnChildEvent(QPauseAnimation* self, intptr_t slot);
QTLIBC_API void QPauseAnimation_QBaseChildEvent(QPauseAnimation* self, QChildEvent* event);
QTLIBC_API void QPauseAnimation_CustomEvent(QPauseAnimation* self, QEvent* event);
QTLIBC_API void QPauseAnimation_OnCustomEvent(QPauseAnimation* self, intptr_t slot);
QTLIBC_API void QPauseAnimation_QBaseCustomEvent(QPauseAnimation* self, QEvent* event);
QTLIBC_API void QPauseAnimation_ConnectNotify(QPauseAnimation* self, QMetaMethod* signal);
QTLIBC_API void QPauseAnimation_OnConnectNotify(QPauseAnimation* self, intptr_t slot);
QTLIBC_API void QPauseAnimation_QBaseConnectNotify(QPauseAnimation* self, QMetaMethod* signal);
QTLIBC_API void QPauseAnimation_DisconnectNotify(QPauseAnimation* self, QMetaMethod* signal);
QTLIBC_API void QPauseAnimation_OnDisconnectNotify(QPauseAnimation* self, intptr_t slot);
QTLIBC_API void QPauseAnimation_QBaseDisconnectNotify(QPauseAnimation* self, QMetaMethod* signal);
QTLIBC_API QObject* QPauseAnimation_Sender(const QPauseAnimation* self);
QTLIBC_API void QPauseAnimation_OnSender(const QPauseAnimation* self, intptr_t slot);
QTLIBC_API QObject* QPauseAnimation_QBaseSender(const QPauseAnimation* self);
QTLIBC_API int QPauseAnimation_SenderSignalIndex(const QPauseAnimation* self);
QTLIBC_API void QPauseAnimation_OnSenderSignalIndex(const QPauseAnimation* self, intptr_t slot);
QTLIBC_API int QPauseAnimation_QBaseSenderSignalIndex(const QPauseAnimation* self);
QTLIBC_API int QPauseAnimation_Receivers(const QPauseAnimation* self, const char* signal);
QTLIBC_API void QPauseAnimation_OnReceivers(const QPauseAnimation* self, intptr_t slot);
QTLIBC_API int QPauseAnimation_QBaseReceivers(const QPauseAnimation* self, const char* signal);
QTLIBC_API bool QPauseAnimation_IsSignalConnected(const QPauseAnimation* self, QMetaMethod* signal);
QTLIBC_API void QPauseAnimation_OnIsSignalConnected(const QPauseAnimation* self, intptr_t slot);
QTLIBC_API bool QPauseAnimation_QBaseIsSignalConnected(const QPauseAnimation* self, QMetaMethod* signal);
QTLIBC_API void QPauseAnimation_Delete(QPauseAnimation* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
