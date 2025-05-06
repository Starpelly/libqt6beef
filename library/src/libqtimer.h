#pragma once
#ifndef SRCC_LIBQTIMER_H
#define SRCC_LIBQTIMER_H

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
typedef struct QThread QThread;
typedef struct QTimer QTimer;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QTimer* QTimer_new();
QTLIBC_API QTimer* QTimer_new2(QObject* parent);
QTLIBC_API QMetaObject* QTimer_MetaObject(const QTimer* self);
QTLIBC_API void* QTimer_Metacast(QTimer* self, const char* param1);
QTLIBC_API int QTimer_Metacall(QTimer* self, int param1, int param2, void** param3);
QTLIBC_API void QTimer_OnMetacall(QTimer* self, intptr_t slot);
QTLIBC_API int QTimer_QBaseMetacall(QTimer* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QTimer_Tr(const char* s);
QTLIBC_API bool QTimer_IsActive(const QTimer* self);
QTLIBC_API int QTimer_TimerId(const QTimer* self);
QTLIBC_API void QTimer_SetInterval(QTimer* self, int msec);
QTLIBC_API int QTimer_Interval(const QTimer* self);
QTLIBC_API int QTimer_RemainingTime(const QTimer* self);
QTLIBC_API void QTimer_SetTimerType(QTimer* self, int atype);
QTLIBC_API int QTimer_TimerType(const QTimer* self);
QTLIBC_API void QTimer_SetSingleShot(QTimer* self, bool singleShot);
QTLIBC_API bool QTimer_IsSingleShot(const QTimer* self);
QTLIBC_API void QTimer_Start(QTimer* self, int msec);
QTLIBC_API void QTimer_Start2(QTimer* self);
QTLIBC_API void QTimer_Stop(QTimer* self);
QTLIBC_API void QTimer_TimerEvent(QTimer* self, QTimerEvent* param1);
QTLIBC_API void QTimer_OnTimerEvent(QTimer* self, intptr_t slot);
QTLIBC_API void QTimer_QBaseTimerEvent(QTimer* self, QTimerEvent* param1);
QTLIBC_API libqt_string QTimer_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QTimer_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QTimer_Event(QTimer* self, QEvent* event);
QTLIBC_API void QTimer_OnEvent(QTimer* self, intptr_t slot);
QTLIBC_API bool QTimer_QBaseEvent(QTimer* self, QEvent* event);
QTLIBC_API bool QTimer_EventFilter(QTimer* self, QObject* watched, QEvent* event);
QTLIBC_API void QTimer_OnEventFilter(QTimer* self, intptr_t slot);
QTLIBC_API bool QTimer_QBaseEventFilter(QTimer* self, QObject* watched, QEvent* event);
QTLIBC_API void QTimer_ChildEvent(QTimer* self, QChildEvent* event);
QTLIBC_API void QTimer_OnChildEvent(QTimer* self, intptr_t slot);
QTLIBC_API void QTimer_QBaseChildEvent(QTimer* self, QChildEvent* event);
QTLIBC_API void QTimer_CustomEvent(QTimer* self, QEvent* event);
QTLIBC_API void QTimer_OnCustomEvent(QTimer* self, intptr_t slot);
QTLIBC_API void QTimer_QBaseCustomEvent(QTimer* self, QEvent* event);
QTLIBC_API void QTimer_ConnectNotify(QTimer* self, QMetaMethod* signal);
QTLIBC_API void QTimer_OnConnectNotify(QTimer* self, intptr_t slot);
QTLIBC_API void QTimer_QBaseConnectNotify(QTimer* self, QMetaMethod* signal);
QTLIBC_API void QTimer_DisconnectNotify(QTimer* self, QMetaMethod* signal);
QTLIBC_API void QTimer_OnDisconnectNotify(QTimer* self, intptr_t slot);
QTLIBC_API void QTimer_QBaseDisconnectNotify(QTimer* self, QMetaMethod* signal);
QTLIBC_API QObject* QTimer_Sender(const QTimer* self);
QTLIBC_API void QTimer_OnSender(const QTimer* self, intptr_t slot);
QTLIBC_API QObject* QTimer_QBaseSender(const QTimer* self);
QTLIBC_API int QTimer_SenderSignalIndex(const QTimer* self);
QTLIBC_API void QTimer_OnSenderSignalIndex(const QTimer* self, intptr_t slot);
QTLIBC_API int QTimer_QBaseSenderSignalIndex(const QTimer* self);
QTLIBC_API int QTimer_Receivers(const QTimer* self, const char* signal);
QTLIBC_API void QTimer_OnReceivers(const QTimer* self, intptr_t slot);
QTLIBC_API int QTimer_QBaseReceivers(const QTimer* self, const char* signal);
QTLIBC_API bool QTimer_IsSignalConnected(const QTimer* self, QMetaMethod* signal);
QTLIBC_API void QTimer_OnIsSignalConnected(const QTimer* self, intptr_t slot);
QTLIBC_API bool QTimer_QBaseIsSignalConnected(const QTimer* self, QMetaMethod* signal);
QTLIBC_API void QTimer_Delete(QTimer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
