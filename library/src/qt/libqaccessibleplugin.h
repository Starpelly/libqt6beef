#pragma once
#ifndef SRC_QTC_LIBQACCESSIBLEPLUGIN_H
#define SRC_QTC_LIBQACCESSIBLEPLUGIN_H

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
typedef struct QAccessibleInterface QAccessibleInterface;
typedef struct QAccessiblePlugin QAccessiblePlugin;
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

QTLIBC_API QAccessiblePlugin* QAccessiblePlugin_new();
QTLIBC_API QAccessiblePlugin* QAccessiblePlugin_new2(QObject* parent);
QTLIBC_API QMetaObject* QAccessiblePlugin_MetaObject(const QAccessiblePlugin* self);
QTLIBC_API void* QAccessiblePlugin_Metacast(QAccessiblePlugin* self, const char* param1);
QTLIBC_API int QAccessiblePlugin_Metacall(QAccessiblePlugin* self, int param1, int param2, void** param3);
QTLIBC_API void QAccessiblePlugin_OnMetacall(QAccessiblePlugin* self, intptr_t slot);
QTLIBC_API int QAccessiblePlugin_QBaseMetacall(QAccessiblePlugin* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QAccessiblePlugin_Tr(const char* s);
QTLIBC_API QAccessibleInterface* QAccessiblePlugin_Create(QAccessiblePlugin* self, libqt_string key, QObject* object);
QTLIBC_API void QAccessiblePlugin_OnCreate(QAccessiblePlugin* self, intptr_t slot);
QTLIBC_API QAccessibleInterface* QAccessiblePlugin_QBaseCreate(QAccessiblePlugin* self, libqt_string key, QObject* object);
QTLIBC_API libqt_string QAccessiblePlugin_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QAccessiblePlugin_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QAccessiblePlugin_Event(QAccessiblePlugin* self, QEvent* event);
QTLIBC_API void QAccessiblePlugin_OnEvent(QAccessiblePlugin* self, intptr_t slot);
QTLIBC_API bool QAccessiblePlugin_QBaseEvent(QAccessiblePlugin* self, QEvent* event);
QTLIBC_API bool QAccessiblePlugin_EventFilter(QAccessiblePlugin* self, QObject* watched, QEvent* event);
QTLIBC_API void QAccessiblePlugin_OnEventFilter(QAccessiblePlugin* self, intptr_t slot);
QTLIBC_API bool QAccessiblePlugin_QBaseEventFilter(QAccessiblePlugin* self, QObject* watched, QEvent* event);
QTLIBC_API void QAccessiblePlugin_TimerEvent(QAccessiblePlugin* self, QTimerEvent* event);
QTLIBC_API void QAccessiblePlugin_OnTimerEvent(QAccessiblePlugin* self, intptr_t slot);
QTLIBC_API void QAccessiblePlugin_QBaseTimerEvent(QAccessiblePlugin* self, QTimerEvent* event);
QTLIBC_API void QAccessiblePlugin_ChildEvent(QAccessiblePlugin* self, QChildEvent* event);
QTLIBC_API void QAccessiblePlugin_OnChildEvent(QAccessiblePlugin* self, intptr_t slot);
QTLIBC_API void QAccessiblePlugin_QBaseChildEvent(QAccessiblePlugin* self, QChildEvent* event);
QTLIBC_API void QAccessiblePlugin_CustomEvent(QAccessiblePlugin* self, QEvent* event);
QTLIBC_API void QAccessiblePlugin_OnCustomEvent(QAccessiblePlugin* self, intptr_t slot);
QTLIBC_API void QAccessiblePlugin_QBaseCustomEvent(QAccessiblePlugin* self, QEvent* event);
QTLIBC_API void QAccessiblePlugin_ConnectNotify(QAccessiblePlugin* self, QMetaMethod* signal);
QTLIBC_API void QAccessiblePlugin_OnConnectNotify(QAccessiblePlugin* self, intptr_t slot);
QTLIBC_API void QAccessiblePlugin_QBaseConnectNotify(QAccessiblePlugin* self, QMetaMethod* signal);
QTLIBC_API void QAccessiblePlugin_DisconnectNotify(QAccessiblePlugin* self, QMetaMethod* signal);
QTLIBC_API void QAccessiblePlugin_OnDisconnectNotify(QAccessiblePlugin* self, intptr_t slot);
QTLIBC_API void QAccessiblePlugin_QBaseDisconnectNotify(QAccessiblePlugin* self, QMetaMethod* signal);
QTLIBC_API QObject* QAccessiblePlugin_Sender(const QAccessiblePlugin* self);
QTLIBC_API void QAccessiblePlugin_OnSender(const QAccessiblePlugin* self, intptr_t slot);
QTLIBC_API QObject* QAccessiblePlugin_QBaseSender(const QAccessiblePlugin* self);
QTLIBC_API int QAccessiblePlugin_SenderSignalIndex(const QAccessiblePlugin* self);
QTLIBC_API void QAccessiblePlugin_OnSenderSignalIndex(const QAccessiblePlugin* self, intptr_t slot);
QTLIBC_API int QAccessiblePlugin_QBaseSenderSignalIndex(const QAccessiblePlugin* self);
QTLIBC_API int QAccessiblePlugin_Receivers(const QAccessiblePlugin* self, const char* signal);
QTLIBC_API void QAccessiblePlugin_OnReceivers(const QAccessiblePlugin* self, intptr_t slot);
QTLIBC_API int QAccessiblePlugin_QBaseReceivers(const QAccessiblePlugin* self, const char* signal);
QTLIBC_API bool QAccessiblePlugin_IsSignalConnected(const QAccessiblePlugin* self, QMetaMethod* signal);
QTLIBC_API void QAccessiblePlugin_OnIsSignalConnected(const QAccessiblePlugin* self, intptr_t slot);
QTLIBC_API bool QAccessiblePlugin_QBaseIsSignalConnected(const QAccessiblePlugin* self, QMetaMethod* signal);
QTLIBC_API void QAccessiblePlugin_Delete(QAccessiblePlugin* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
