#pragma once
#ifndef SRC_QTC_LIBQSTYLEPLUGIN_H
#define SRC_QTC_LIBQSTYLEPLUGIN_H

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
typedef struct QStyle QStyle;
typedef struct QStylePlugin QStylePlugin;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QStylePlugin* QStylePlugin_new();
QTLIBC_API QStylePlugin* QStylePlugin_new2(QObject* parent);
QTLIBC_API QMetaObject* QStylePlugin_MetaObject(const QStylePlugin* self);
QTLIBC_API void* QStylePlugin_Metacast(QStylePlugin* self, const char* param1);
QTLIBC_API int QStylePlugin_Metacall(QStylePlugin* self, int param1, int param2, void** param3);
QTLIBC_API void QStylePlugin_OnMetacall(QStylePlugin* self, intptr_t slot);
QTLIBC_API int QStylePlugin_QBaseMetacall(QStylePlugin* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QStylePlugin_Tr(const char* s);
QTLIBC_API QStyle* QStylePlugin_Create(QStylePlugin* self, libqt_string key);
QTLIBC_API void QStylePlugin_OnCreate(QStylePlugin* self, intptr_t slot);
QTLIBC_API QStyle* QStylePlugin_QBaseCreate(QStylePlugin* self, libqt_string key);
QTLIBC_API libqt_string QStylePlugin_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QStylePlugin_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QStylePlugin_Event(QStylePlugin* self, QEvent* event);
QTLIBC_API void QStylePlugin_OnEvent(QStylePlugin* self, intptr_t slot);
QTLIBC_API bool QStylePlugin_QBaseEvent(QStylePlugin* self, QEvent* event);
QTLIBC_API bool QStylePlugin_EventFilter(QStylePlugin* self, QObject* watched, QEvent* event);
QTLIBC_API void QStylePlugin_OnEventFilter(QStylePlugin* self, intptr_t slot);
QTLIBC_API bool QStylePlugin_QBaseEventFilter(QStylePlugin* self, QObject* watched, QEvent* event);
QTLIBC_API void QStylePlugin_TimerEvent(QStylePlugin* self, QTimerEvent* event);
QTLIBC_API void QStylePlugin_OnTimerEvent(QStylePlugin* self, intptr_t slot);
QTLIBC_API void QStylePlugin_QBaseTimerEvent(QStylePlugin* self, QTimerEvent* event);
QTLIBC_API void QStylePlugin_ChildEvent(QStylePlugin* self, QChildEvent* event);
QTLIBC_API void QStylePlugin_OnChildEvent(QStylePlugin* self, intptr_t slot);
QTLIBC_API void QStylePlugin_QBaseChildEvent(QStylePlugin* self, QChildEvent* event);
QTLIBC_API void QStylePlugin_CustomEvent(QStylePlugin* self, QEvent* event);
QTLIBC_API void QStylePlugin_OnCustomEvent(QStylePlugin* self, intptr_t slot);
QTLIBC_API void QStylePlugin_QBaseCustomEvent(QStylePlugin* self, QEvent* event);
QTLIBC_API void QStylePlugin_ConnectNotify(QStylePlugin* self, QMetaMethod* signal);
QTLIBC_API void QStylePlugin_OnConnectNotify(QStylePlugin* self, intptr_t slot);
QTLIBC_API void QStylePlugin_QBaseConnectNotify(QStylePlugin* self, QMetaMethod* signal);
QTLIBC_API void QStylePlugin_DisconnectNotify(QStylePlugin* self, QMetaMethod* signal);
QTLIBC_API void QStylePlugin_OnDisconnectNotify(QStylePlugin* self, intptr_t slot);
QTLIBC_API void QStylePlugin_QBaseDisconnectNotify(QStylePlugin* self, QMetaMethod* signal);
QTLIBC_API QObject* QStylePlugin_Sender(const QStylePlugin* self);
QTLIBC_API void QStylePlugin_OnSender(const QStylePlugin* self, intptr_t slot);
QTLIBC_API QObject* QStylePlugin_QBaseSender(const QStylePlugin* self);
QTLIBC_API int QStylePlugin_SenderSignalIndex(const QStylePlugin* self);
QTLIBC_API void QStylePlugin_OnSenderSignalIndex(const QStylePlugin* self, intptr_t slot);
QTLIBC_API int QStylePlugin_QBaseSenderSignalIndex(const QStylePlugin* self);
QTLIBC_API int QStylePlugin_Receivers(const QStylePlugin* self, const char* signal);
QTLIBC_API void QStylePlugin_OnReceivers(const QStylePlugin* self, intptr_t slot);
QTLIBC_API int QStylePlugin_QBaseReceivers(const QStylePlugin* self, const char* signal);
QTLIBC_API bool QStylePlugin_IsSignalConnected(const QStylePlugin* self, QMetaMethod* signal);
QTLIBC_API void QStylePlugin_OnIsSignalConnected(const QStylePlugin* self, intptr_t slot);
QTLIBC_API bool QStylePlugin_QBaseIsSignalConnected(const QStylePlugin* self, QMetaMethod* signal);
QTLIBC_API void QStylePlugin_Delete(QStylePlugin* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
