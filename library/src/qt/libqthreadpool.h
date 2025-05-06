#pragma once
#ifndef SRC_QTC_LIBQTHREADPOOL_H
#define SRC_QTC_LIBQTHREADPOOL_H

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
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QRunnable QRunnable;
typedef struct QThread QThread;
typedef struct QThreadPool QThreadPool;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QThreadPool* QThreadPool_new();
QTLIBC_API QThreadPool* QThreadPool_new2(QObject* parent);
QTLIBC_API QMetaObject* QThreadPool_MetaObject(const QThreadPool* self);
QTLIBC_API void* QThreadPool_Metacast(QThreadPool* self, const char* param1);
QTLIBC_API int QThreadPool_Metacall(QThreadPool* self, int param1, int param2, void** param3);
QTLIBC_API void QThreadPool_OnMetacall(QThreadPool* self, intptr_t slot);
QTLIBC_API int QThreadPool_QBaseMetacall(QThreadPool* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QThreadPool_Tr(const char* s);
QTLIBC_API QThreadPool* QThreadPool_GlobalInstance();
QTLIBC_API void QThreadPool_Start(QThreadPool* self, QRunnable* runnable);
QTLIBC_API bool QThreadPool_TryStart(QThreadPool* self, QRunnable* runnable);
QTLIBC_API void QThreadPool_StartOnReservedThread(QThreadPool* self, QRunnable* runnable);
QTLIBC_API int QThreadPool_ExpiryTimeout(const QThreadPool* self);
QTLIBC_API void QThreadPool_SetExpiryTimeout(QThreadPool* self, int expiryTimeout);
QTLIBC_API int QThreadPool_MaxThreadCount(const QThreadPool* self);
QTLIBC_API void QThreadPool_SetMaxThreadCount(QThreadPool* self, int maxThreadCount);
QTLIBC_API int QThreadPool_ActiveThreadCount(const QThreadPool* self);
QTLIBC_API void QThreadPool_SetStackSize(QThreadPool* self, unsigned int stackSize);
QTLIBC_API unsigned int QThreadPool_StackSize(const QThreadPool* self);
QTLIBC_API void QThreadPool_SetThreadPriority(QThreadPool* self, int priority);
QTLIBC_API int QThreadPool_ThreadPriority(const QThreadPool* self);
QTLIBC_API void QThreadPool_ReserveThread(QThreadPool* self);
QTLIBC_API void QThreadPool_ReleaseThread(QThreadPool* self);
QTLIBC_API bool QThreadPool_WaitForDone(QThreadPool* self);
QTLIBC_API void QThreadPool_Clear(QThreadPool* self);
QTLIBC_API bool QThreadPool_Contains(const QThreadPool* self, QThread* thread);
QTLIBC_API bool QThreadPool_TryTake(QThreadPool* self, QRunnable* runnable);
QTLIBC_API libqt_string QThreadPool_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QThreadPool_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QThreadPool_Start2(QThreadPool* self, QRunnable* runnable, int priority);
QTLIBC_API bool QThreadPool_WaitForDone1(QThreadPool* self, int msecs);
QTLIBC_API bool QThreadPool_Event(QThreadPool* self, QEvent* event);
QTLIBC_API void QThreadPool_OnEvent(QThreadPool* self, intptr_t slot);
QTLIBC_API bool QThreadPool_QBaseEvent(QThreadPool* self, QEvent* event);
QTLIBC_API bool QThreadPool_EventFilter(QThreadPool* self, QObject* watched, QEvent* event);
QTLIBC_API void QThreadPool_OnEventFilter(QThreadPool* self, intptr_t slot);
QTLIBC_API bool QThreadPool_QBaseEventFilter(QThreadPool* self, QObject* watched, QEvent* event);
QTLIBC_API void QThreadPool_TimerEvent(QThreadPool* self, QTimerEvent* event);
QTLIBC_API void QThreadPool_OnTimerEvent(QThreadPool* self, intptr_t slot);
QTLIBC_API void QThreadPool_QBaseTimerEvent(QThreadPool* self, QTimerEvent* event);
QTLIBC_API void QThreadPool_ChildEvent(QThreadPool* self, QChildEvent* event);
QTLIBC_API void QThreadPool_OnChildEvent(QThreadPool* self, intptr_t slot);
QTLIBC_API void QThreadPool_QBaseChildEvent(QThreadPool* self, QChildEvent* event);
QTLIBC_API void QThreadPool_CustomEvent(QThreadPool* self, QEvent* event);
QTLIBC_API void QThreadPool_OnCustomEvent(QThreadPool* self, intptr_t slot);
QTLIBC_API void QThreadPool_QBaseCustomEvent(QThreadPool* self, QEvent* event);
QTLIBC_API void QThreadPool_ConnectNotify(QThreadPool* self, QMetaMethod* signal);
QTLIBC_API void QThreadPool_OnConnectNotify(QThreadPool* self, intptr_t slot);
QTLIBC_API void QThreadPool_QBaseConnectNotify(QThreadPool* self, QMetaMethod* signal);
QTLIBC_API void QThreadPool_DisconnectNotify(QThreadPool* self, QMetaMethod* signal);
QTLIBC_API void QThreadPool_OnDisconnectNotify(QThreadPool* self, intptr_t slot);
QTLIBC_API void QThreadPool_QBaseDisconnectNotify(QThreadPool* self, QMetaMethod* signal);
QTLIBC_API QObject* QThreadPool_Sender(const QThreadPool* self);
QTLIBC_API void QThreadPool_OnSender(const QThreadPool* self, intptr_t slot);
QTLIBC_API QObject* QThreadPool_QBaseSender(const QThreadPool* self);
QTLIBC_API int QThreadPool_SenderSignalIndex(const QThreadPool* self);
QTLIBC_API void QThreadPool_OnSenderSignalIndex(const QThreadPool* self, intptr_t slot);
QTLIBC_API int QThreadPool_QBaseSenderSignalIndex(const QThreadPool* self);
QTLIBC_API int QThreadPool_Receivers(const QThreadPool* self, const char* signal);
QTLIBC_API void QThreadPool_OnReceivers(const QThreadPool* self, intptr_t slot);
QTLIBC_API int QThreadPool_QBaseReceivers(const QThreadPool* self, const char* signal);
QTLIBC_API bool QThreadPool_IsSignalConnected(const QThreadPool* self, QMetaMethod* signal);
QTLIBC_API void QThreadPool_OnIsSignalConnected(const QThreadPool* self, intptr_t slot);
QTLIBC_API bool QThreadPool_QBaseIsSignalConnected(const QThreadPool* self, QMetaMethod* signal);
QTLIBC_API void QThreadPool_Delete(QThreadPool* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
