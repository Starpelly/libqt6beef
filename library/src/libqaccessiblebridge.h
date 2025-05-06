#pragma once
#ifndef SRCC_LIBQACCESSIBLEBRIDGE_H
#define SRCC_LIBQACCESSIBLEBRIDGE_H

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
typedef struct QAccessibleBridge QAccessibleBridge;
typedef struct QAccessibleBridgePlugin QAccessibleBridgePlugin;
typedef struct QAccessibleEvent QAccessibleEvent;
typedef struct QAccessibleInterface QAccessibleInterface;
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

QTLIBC_API void QAccessibleBridge_SetRootObject(QAccessibleBridge* self, QAccessibleInterface* rootObject);
QTLIBC_API void QAccessibleBridge_NotifyAccessibilityUpdate(QAccessibleBridge* self, QAccessibleEvent* event);
QTLIBC_API void QAccessibleBridge_OperatorAssign(QAccessibleBridge* self, QAccessibleBridge* param1);
QTLIBC_API void QAccessibleBridge_Delete(QAccessibleBridge* self);

QTLIBC_API QAccessibleBridgePlugin* QAccessibleBridgePlugin_new();
QTLIBC_API QAccessibleBridgePlugin* QAccessibleBridgePlugin_new2(QObject* parent);
QTLIBC_API QMetaObject* QAccessibleBridgePlugin_MetaObject(const QAccessibleBridgePlugin* self);
QTLIBC_API void* QAccessibleBridgePlugin_Metacast(QAccessibleBridgePlugin* self, const char* param1);
QTLIBC_API int QAccessibleBridgePlugin_Metacall(QAccessibleBridgePlugin* self, int param1, int param2, void** param3);
QTLIBC_API void QAccessibleBridgePlugin_OnMetacall(QAccessibleBridgePlugin* self, intptr_t slot);
QTLIBC_API int QAccessibleBridgePlugin_QBaseMetacall(QAccessibleBridgePlugin* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QAccessibleBridgePlugin_Tr(const char* s);
QTLIBC_API QAccessibleBridge* QAccessibleBridgePlugin_Create(QAccessibleBridgePlugin* self, libqt_string key);
QTLIBC_API void QAccessibleBridgePlugin_OnCreate(QAccessibleBridgePlugin* self, intptr_t slot);
QTLIBC_API QAccessibleBridge* QAccessibleBridgePlugin_QBaseCreate(QAccessibleBridgePlugin* self, libqt_string key);
QTLIBC_API libqt_string QAccessibleBridgePlugin_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QAccessibleBridgePlugin_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QAccessibleBridgePlugin_Event(QAccessibleBridgePlugin* self, QEvent* event);
QTLIBC_API void QAccessibleBridgePlugin_OnEvent(QAccessibleBridgePlugin* self, intptr_t slot);
QTLIBC_API bool QAccessibleBridgePlugin_QBaseEvent(QAccessibleBridgePlugin* self, QEvent* event);
QTLIBC_API bool QAccessibleBridgePlugin_EventFilter(QAccessibleBridgePlugin* self, QObject* watched, QEvent* event);
QTLIBC_API void QAccessibleBridgePlugin_OnEventFilter(QAccessibleBridgePlugin* self, intptr_t slot);
QTLIBC_API bool QAccessibleBridgePlugin_QBaseEventFilter(QAccessibleBridgePlugin* self, QObject* watched, QEvent* event);
QTLIBC_API void QAccessibleBridgePlugin_TimerEvent(QAccessibleBridgePlugin* self, QTimerEvent* event);
QTLIBC_API void QAccessibleBridgePlugin_OnTimerEvent(QAccessibleBridgePlugin* self, intptr_t slot);
QTLIBC_API void QAccessibleBridgePlugin_QBaseTimerEvent(QAccessibleBridgePlugin* self, QTimerEvent* event);
QTLIBC_API void QAccessibleBridgePlugin_ChildEvent(QAccessibleBridgePlugin* self, QChildEvent* event);
QTLIBC_API void QAccessibleBridgePlugin_OnChildEvent(QAccessibleBridgePlugin* self, intptr_t slot);
QTLIBC_API void QAccessibleBridgePlugin_QBaseChildEvent(QAccessibleBridgePlugin* self, QChildEvent* event);
QTLIBC_API void QAccessibleBridgePlugin_CustomEvent(QAccessibleBridgePlugin* self, QEvent* event);
QTLIBC_API void QAccessibleBridgePlugin_OnCustomEvent(QAccessibleBridgePlugin* self, intptr_t slot);
QTLIBC_API void QAccessibleBridgePlugin_QBaseCustomEvent(QAccessibleBridgePlugin* self, QEvent* event);
QTLIBC_API void QAccessibleBridgePlugin_ConnectNotify(QAccessibleBridgePlugin* self, QMetaMethod* signal);
QTLIBC_API void QAccessibleBridgePlugin_OnConnectNotify(QAccessibleBridgePlugin* self, intptr_t slot);
QTLIBC_API void QAccessibleBridgePlugin_QBaseConnectNotify(QAccessibleBridgePlugin* self, QMetaMethod* signal);
QTLIBC_API void QAccessibleBridgePlugin_DisconnectNotify(QAccessibleBridgePlugin* self, QMetaMethod* signal);
QTLIBC_API void QAccessibleBridgePlugin_OnDisconnectNotify(QAccessibleBridgePlugin* self, intptr_t slot);
QTLIBC_API void QAccessibleBridgePlugin_QBaseDisconnectNotify(QAccessibleBridgePlugin* self, QMetaMethod* signal);
QTLIBC_API QObject* QAccessibleBridgePlugin_Sender(const QAccessibleBridgePlugin* self);
QTLIBC_API void QAccessibleBridgePlugin_OnSender(const QAccessibleBridgePlugin* self, intptr_t slot);
QTLIBC_API QObject* QAccessibleBridgePlugin_QBaseSender(const QAccessibleBridgePlugin* self);
QTLIBC_API int QAccessibleBridgePlugin_SenderSignalIndex(const QAccessibleBridgePlugin* self);
QTLIBC_API void QAccessibleBridgePlugin_OnSenderSignalIndex(const QAccessibleBridgePlugin* self, intptr_t slot);
QTLIBC_API int QAccessibleBridgePlugin_QBaseSenderSignalIndex(const QAccessibleBridgePlugin* self);
QTLIBC_API int QAccessibleBridgePlugin_Receivers(const QAccessibleBridgePlugin* self, const char* signal);
QTLIBC_API void QAccessibleBridgePlugin_OnReceivers(const QAccessibleBridgePlugin* self, intptr_t slot);
QTLIBC_API int QAccessibleBridgePlugin_QBaseReceivers(const QAccessibleBridgePlugin* self, const char* signal);
QTLIBC_API bool QAccessibleBridgePlugin_IsSignalConnected(const QAccessibleBridgePlugin* self, QMetaMethod* signal);
QTLIBC_API void QAccessibleBridgePlugin_OnIsSignalConnected(const QAccessibleBridgePlugin* self, intptr_t slot);
QTLIBC_API bool QAccessibleBridgePlugin_QBaseIsSignalConnected(const QAccessibleBridgePlugin* self, QMetaMethod* signal);
QTLIBC_API void QAccessibleBridgePlugin_Delete(QAccessibleBridgePlugin* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
