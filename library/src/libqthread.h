#pragma once
#ifndef SRCC_LIBQTHREAD_H
#define SRCC_LIBQTHREAD_H

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
typedef struct QAbstractEventDispatcher QAbstractEventDispatcher;
typedef struct QAnyStringView QAnyStringView;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChildEvent QChildEvent;
typedef struct QDeadlineTimer QDeadlineTimer;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QThread::Priority Priority; // C++ enum
#else
typedef int Priority; // C ABI enum
#endif

QTLIBC_API QThread* QThread_new();
QTLIBC_API QThread* QThread_new2(QObject* parent);
QTLIBC_API QMetaObject* QThread_MetaObject(const QThread* self);
QTLIBC_API void* QThread_Metacast(QThread* self, const char* param1);
QTLIBC_API int QThread_Metacall(QThread* self, int param1, int param2, void** param3);
QTLIBC_API void QThread_OnMetacall(QThread* self, intptr_t slot);
QTLIBC_API int QThread_QBaseMetacall(QThread* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QThread_Tr(const char* s);
QTLIBC_API void* QThread_CurrentThreadId();
QTLIBC_API QThread* QThread_CurrentThread();
QTLIBC_API int QThread_IdealThreadCount();
QTLIBC_API void QThread_YieldCurrentThread();
QTLIBC_API void QThread_SetPriority(QThread* self, int priority);
QTLIBC_API int QThread_Priority(const QThread* self);
QTLIBC_API bool QThread_IsFinished(const QThread* self);
QTLIBC_API bool QThread_IsRunning(const QThread* self);
QTLIBC_API void QThread_RequestInterruption(QThread* self);
QTLIBC_API bool QThread_IsInterruptionRequested(const QThread* self);
QTLIBC_API void QThread_SetStackSize(QThread* self, unsigned int stackSize);
QTLIBC_API unsigned int QThread_StackSize(const QThread* self);
QTLIBC_API QAbstractEventDispatcher* QThread_EventDispatcher(const QThread* self);
QTLIBC_API void QThread_SetEventDispatcher(QThread* self, QAbstractEventDispatcher* eventDispatcher);
QTLIBC_API bool QThread_Event(QThread* self, QEvent* event);
QTLIBC_API void QThread_OnEvent(QThread* self, intptr_t slot);
QTLIBC_API bool QThread_QBaseEvent(QThread* self, QEvent* event);
QTLIBC_API int QThread_LoopLevel(const QThread* self);
QTLIBC_API void QThread_Start(QThread* self);
QTLIBC_API void QThread_Terminate(QThread* self);
QTLIBC_API void QThread_Exit(QThread* self);
QTLIBC_API void QThread_Quit(QThread* self);
QTLIBC_API bool QThread_Wait(QThread* self);
QTLIBC_API bool QThread_WaitWithTime(QThread* self, unsigned long time);
QTLIBC_API void QThread_Sleep(unsigned long param1);
QTLIBC_API void QThread_Msleep(unsigned long param1);
QTLIBC_API void QThread_Usleep(unsigned long param1);
QTLIBC_API void QThread_Run(QThread* self);
QTLIBC_API void QThread_OnRun(QThread* self, intptr_t slot);
QTLIBC_API void QThread_QBaseRun(QThread* self);
QTLIBC_API libqt_string QThread_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QThread_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QThread_Start1(QThread* self, int param1);
QTLIBC_API void QThread_Exit1(QThread* self, int retcode);
QTLIBC_API bool QThread_Wait1(QThread* self, QDeadlineTimer* deadline);
QTLIBC_API bool QThread_EventFilter(QThread* self, QObject* watched, QEvent* event);
QTLIBC_API void QThread_OnEventFilter(QThread* self, intptr_t slot);
QTLIBC_API bool QThread_QBaseEventFilter(QThread* self, QObject* watched, QEvent* event);
QTLIBC_API void QThread_TimerEvent(QThread* self, QTimerEvent* event);
QTLIBC_API void QThread_OnTimerEvent(QThread* self, intptr_t slot);
QTLIBC_API void QThread_QBaseTimerEvent(QThread* self, QTimerEvent* event);
QTLIBC_API void QThread_ChildEvent(QThread* self, QChildEvent* event);
QTLIBC_API void QThread_OnChildEvent(QThread* self, intptr_t slot);
QTLIBC_API void QThread_QBaseChildEvent(QThread* self, QChildEvent* event);
QTLIBC_API void QThread_CustomEvent(QThread* self, QEvent* event);
QTLIBC_API void QThread_OnCustomEvent(QThread* self, intptr_t slot);
QTLIBC_API void QThread_QBaseCustomEvent(QThread* self, QEvent* event);
QTLIBC_API void QThread_ConnectNotify(QThread* self, QMetaMethod* signal);
QTLIBC_API void QThread_OnConnectNotify(QThread* self, intptr_t slot);
QTLIBC_API void QThread_QBaseConnectNotify(QThread* self, QMetaMethod* signal);
QTLIBC_API void QThread_DisconnectNotify(QThread* self, QMetaMethod* signal);
QTLIBC_API void QThread_OnDisconnectNotify(QThread* self, intptr_t slot);
QTLIBC_API void QThread_QBaseDisconnectNotify(QThread* self, QMetaMethod* signal);
QTLIBC_API int QThread_Exec(QThread* self);
QTLIBC_API void QThread_OnExec(QThread* self, intptr_t slot);
QTLIBC_API int QThread_QBaseExec(QThread* self);
QTLIBC_API QObject* QThread_Sender(const QThread* self);
QTLIBC_API void QThread_OnSender(const QThread* self, intptr_t slot);
QTLIBC_API QObject* QThread_QBaseSender(const QThread* self);
QTLIBC_API int QThread_SenderSignalIndex(const QThread* self);
QTLIBC_API void QThread_OnSenderSignalIndex(const QThread* self, intptr_t slot);
QTLIBC_API int QThread_QBaseSenderSignalIndex(const QThread* self);
QTLIBC_API int QThread_Receivers(const QThread* self, const char* signal);
QTLIBC_API void QThread_OnReceivers(const QThread* self, intptr_t slot);
QTLIBC_API int QThread_QBaseReceivers(const QThread* self, const char* signal);
QTLIBC_API bool QThread_IsSignalConnected(const QThread* self, QMetaMethod* signal);
QTLIBC_API void QThread_OnIsSignalConnected(const QThread* self, intptr_t slot);
QTLIBC_API bool QThread_QBaseIsSignalConnected(const QThread* self, QMetaMethod* signal);
QTLIBC_API void QThread_Delete(QThread* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
