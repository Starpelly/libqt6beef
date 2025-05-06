#pragma once
#ifndef SRC_QTC_LIBQEVENTLOOP_H
#define SRC_QTC_LIBQEVENTLOOP_H

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
typedef struct QAnyStringView QAnyStringView;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QEventLoop QEventLoop;
typedef struct QEventLoopLocker QEventLoopLocker;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QEventLoop::ProcessEventsFlag ProcessEventsFlag;   // C++ enum
typedef QEventLoop::ProcessEventsFlags ProcessEventsFlags; // C++ QFlags
#else
typedef int ProcessEventsFlag;  // C ABI enum
typedef int ProcessEventsFlags; // C ABI QFlags
#endif

QTLIBC_API QEventLoop* QEventLoop_new();
QTLIBC_API QEventLoop* QEventLoop_new2(QObject* parent);
QTLIBC_API QMetaObject* QEventLoop_MetaObject(const QEventLoop* self);
QTLIBC_API void* QEventLoop_Metacast(QEventLoop* self, const char* param1);
QTLIBC_API int QEventLoop_Metacall(QEventLoop* self, int param1, int param2, void** param3);
QTLIBC_API void QEventLoop_OnMetacall(QEventLoop* self, intptr_t slot);
QTLIBC_API int QEventLoop_QBaseMetacall(QEventLoop* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QEventLoop_Tr(const char* s);
QTLIBC_API bool QEventLoop_ProcessEvents(QEventLoop* self);
QTLIBC_API void QEventLoop_ProcessEvents2(QEventLoop* self, int flags, int maximumTime);
QTLIBC_API int QEventLoop_Exec(QEventLoop* self);
QTLIBC_API bool QEventLoop_IsRunning(const QEventLoop* self);
QTLIBC_API void QEventLoop_WakeUp(QEventLoop* self);
QTLIBC_API bool QEventLoop_Event(QEventLoop* self, QEvent* event);
QTLIBC_API void QEventLoop_OnEvent(QEventLoop* self, intptr_t slot);
QTLIBC_API bool QEventLoop_QBaseEvent(QEventLoop* self, QEvent* event);
QTLIBC_API void QEventLoop_Exit(QEventLoop* self);
QTLIBC_API void QEventLoop_Quit(QEventLoop* self);
QTLIBC_API libqt_string QEventLoop_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QEventLoop_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QEventLoop_ProcessEvents1(QEventLoop* self, int flags);
QTLIBC_API int QEventLoop_Exec1(QEventLoop* self, int flags);
QTLIBC_API void QEventLoop_Exit1(QEventLoop* self, int returnCode);
QTLIBC_API bool QEventLoop_EventFilter(QEventLoop* self, QObject* watched, QEvent* event);
QTLIBC_API void QEventLoop_OnEventFilter(QEventLoop* self, intptr_t slot);
QTLIBC_API bool QEventLoop_QBaseEventFilter(QEventLoop* self, QObject* watched, QEvent* event);
QTLIBC_API void QEventLoop_TimerEvent(QEventLoop* self, QTimerEvent* event);
QTLIBC_API void QEventLoop_OnTimerEvent(QEventLoop* self, intptr_t slot);
QTLIBC_API void QEventLoop_QBaseTimerEvent(QEventLoop* self, QTimerEvent* event);
QTLIBC_API void QEventLoop_ChildEvent(QEventLoop* self, QChildEvent* event);
QTLIBC_API void QEventLoop_OnChildEvent(QEventLoop* self, intptr_t slot);
QTLIBC_API void QEventLoop_QBaseChildEvent(QEventLoop* self, QChildEvent* event);
QTLIBC_API void QEventLoop_CustomEvent(QEventLoop* self, QEvent* event);
QTLIBC_API void QEventLoop_OnCustomEvent(QEventLoop* self, intptr_t slot);
QTLIBC_API void QEventLoop_QBaseCustomEvent(QEventLoop* self, QEvent* event);
QTLIBC_API void QEventLoop_ConnectNotify(QEventLoop* self, QMetaMethod* signal);
QTLIBC_API void QEventLoop_OnConnectNotify(QEventLoop* self, intptr_t slot);
QTLIBC_API void QEventLoop_QBaseConnectNotify(QEventLoop* self, QMetaMethod* signal);
QTLIBC_API void QEventLoop_DisconnectNotify(QEventLoop* self, QMetaMethod* signal);
QTLIBC_API void QEventLoop_OnDisconnectNotify(QEventLoop* self, intptr_t slot);
QTLIBC_API void QEventLoop_QBaseDisconnectNotify(QEventLoop* self, QMetaMethod* signal);
QTLIBC_API QObject* QEventLoop_Sender(const QEventLoop* self);
QTLIBC_API void QEventLoop_OnSender(const QEventLoop* self, intptr_t slot);
QTLIBC_API QObject* QEventLoop_QBaseSender(const QEventLoop* self);
QTLIBC_API int QEventLoop_SenderSignalIndex(const QEventLoop* self);
QTLIBC_API void QEventLoop_OnSenderSignalIndex(const QEventLoop* self, intptr_t slot);
QTLIBC_API int QEventLoop_QBaseSenderSignalIndex(const QEventLoop* self);
QTLIBC_API int QEventLoop_Receivers(const QEventLoop* self, const char* signal);
QTLIBC_API void QEventLoop_OnReceivers(const QEventLoop* self, intptr_t slot);
QTLIBC_API int QEventLoop_QBaseReceivers(const QEventLoop* self, const char* signal);
QTLIBC_API bool QEventLoop_IsSignalConnected(const QEventLoop* self, QMetaMethod* signal);
QTLIBC_API void QEventLoop_OnIsSignalConnected(const QEventLoop* self, intptr_t slot);
QTLIBC_API bool QEventLoop_QBaseIsSignalConnected(const QEventLoop* self, QMetaMethod* signal);
QTLIBC_API void QEventLoop_Delete(QEventLoop* self);

QTLIBC_API QEventLoopLocker* QEventLoopLocker_new();
QTLIBC_API QEventLoopLocker* QEventLoopLocker_new2(QEventLoop* loop);
QTLIBC_API QEventLoopLocker* QEventLoopLocker_new3(QThread* thread);
QTLIBC_API void QEventLoopLocker_Delete(QEventLoopLocker* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
