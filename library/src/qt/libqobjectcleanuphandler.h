#pragma once
#ifndef SRC_QTC_LIBQOBJECTCLEANUPHANDLER_H
#define SRC_QTC_LIBQOBJECTCLEANUPHANDLER_H

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
typedef struct QObjectCleanupHandler QObjectCleanupHandler;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QObjectCleanupHandler* QObjectCleanupHandler_new();
QTLIBC_API QMetaObject* QObjectCleanupHandler_MetaObject(const QObjectCleanupHandler* self);
QTLIBC_API void* QObjectCleanupHandler_Metacast(QObjectCleanupHandler* self, const char* param1);
QTLIBC_API int QObjectCleanupHandler_Metacall(QObjectCleanupHandler* self, int param1, int param2, void** param3);
QTLIBC_API void QObjectCleanupHandler_OnMetacall(QObjectCleanupHandler* self, intptr_t slot);
QTLIBC_API int QObjectCleanupHandler_QBaseMetacall(QObjectCleanupHandler* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QObjectCleanupHandler_Tr(const char* s);
QTLIBC_API QObject* QObjectCleanupHandler_Add(QObjectCleanupHandler* self, QObject* object);
QTLIBC_API void QObjectCleanupHandler_Remove(QObjectCleanupHandler* self, QObject* object);
QTLIBC_API bool QObjectCleanupHandler_IsEmpty(const QObjectCleanupHandler* self);
QTLIBC_API void QObjectCleanupHandler_Clear(QObjectCleanupHandler* self);
QTLIBC_API libqt_string QObjectCleanupHandler_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QObjectCleanupHandler_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QObjectCleanupHandler_Event(QObjectCleanupHandler* self, QEvent* event);
QTLIBC_API void QObjectCleanupHandler_OnEvent(QObjectCleanupHandler* self, intptr_t slot);
QTLIBC_API bool QObjectCleanupHandler_QBaseEvent(QObjectCleanupHandler* self, QEvent* event);
QTLIBC_API bool QObjectCleanupHandler_EventFilter(QObjectCleanupHandler* self, QObject* watched, QEvent* event);
QTLIBC_API void QObjectCleanupHandler_OnEventFilter(QObjectCleanupHandler* self, intptr_t slot);
QTLIBC_API bool QObjectCleanupHandler_QBaseEventFilter(QObjectCleanupHandler* self, QObject* watched, QEvent* event);
QTLIBC_API void QObjectCleanupHandler_TimerEvent(QObjectCleanupHandler* self, QTimerEvent* event);
QTLIBC_API void QObjectCleanupHandler_OnTimerEvent(QObjectCleanupHandler* self, intptr_t slot);
QTLIBC_API void QObjectCleanupHandler_QBaseTimerEvent(QObjectCleanupHandler* self, QTimerEvent* event);
QTLIBC_API void QObjectCleanupHandler_ChildEvent(QObjectCleanupHandler* self, QChildEvent* event);
QTLIBC_API void QObjectCleanupHandler_OnChildEvent(QObjectCleanupHandler* self, intptr_t slot);
QTLIBC_API void QObjectCleanupHandler_QBaseChildEvent(QObjectCleanupHandler* self, QChildEvent* event);
QTLIBC_API void QObjectCleanupHandler_CustomEvent(QObjectCleanupHandler* self, QEvent* event);
QTLIBC_API void QObjectCleanupHandler_OnCustomEvent(QObjectCleanupHandler* self, intptr_t slot);
QTLIBC_API void QObjectCleanupHandler_QBaseCustomEvent(QObjectCleanupHandler* self, QEvent* event);
QTLIBC_API void QObjectCleanupHandler_ConnectNotify(QObjectCleanupHandler* self, QMetaMethod* signal);
QTLIBC_API void QObjectCleanupHandler_OnConnectNotify(QObjectCleanupHandler* self, intptr_t slot);
QTLIBC_API void QObjectCleanupHandler_QBaseConnectNotify(QObjectCleanupHandler* self, QMetaMethod* signal);
QTLIBC_API void QObjectCleanupHandler_DisconnectNotify(QObjectCleanupHandler* self, QMetaMethod* signal);
QTLIBC_API void QObjectCleanupHandler_OnDisconnectNotify(QObjectCleanupHandler* self, intptr_t slot);
QTLIBC_API void QObjectCleanupHandler_QBaseDisconnectNotify(QObjectCleanupHandler* self, QMetaMethod* signal);
QTLIBC_API QObject* QObjectCleanupHandler_Sender(const QObjectCleanupHandler* self);
QTLIBC_API void QObjectCleanupHandler_OnSender(const QObjectCleanupHandler* self, intptr_t slot);
QTLIBC_API QObject* QObjectCleanupHandler_QBaseSender(const QObjectCleanupHandler* self);
QTLIBC_API int QObjectCleanupHandler_SenderSignalIndex(const QObjectCleanupHandler* self);
QTLIBC_API void QObjectCleanupHandler_OnSenderSignalIndex(const QObjectCleanupHandler* self, intptr_t slot);
QTLIBC_API int QObjectCleanupHandler_QBaseSenderSignalIndex(const QObjectCleanupHandler* self);
QTLIBC_API int QObjectCleanupHandler_Receivers(const QObjectCleanupHandler* self, const char* signal);
QTLIBC_API void QObjectCleanupHandler_OnReceivers(const QObjectCleanupHandler* self, intptr_t slot);
QTLIBC_API int QObjectCleanupHandler_QBaseReceivers(const QObjectCleanupHandler* self, const char* signal);
QTLIBC_API bool QObjectCleanupHandler_IsSignalConnected(const QObjectCleanupHandler* self, QMetaMethod* signal);
QTLIBC_API void QObjectCleanupHandler_OnIsSignalConnected(const QObjectCleanupHandler* self, intptr_t slot);
QTLIBC_API bool QObjectCleanupHandler_QBaseIsSignalConnected(const QObjectCleanupHandler* self, QMetaMethod* signal);
QTLIBC_API void QObjectCleanupHandler_Delete(QObjectCleanupHandler* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
