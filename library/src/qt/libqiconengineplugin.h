#pragma once
#ifndef SRC_QTC_LIBQICONENGINEPLUGIN_H
#define SRC_QTC_LIBQICONENGINEPLUGIN_H

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
typedef struct QIconEngine QIconEngine;
typedef struct QIconEnginePlugin QIconEnginePlugin;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QIconEnginePlugin* QIconEnginePlugin_new();
QTLIBC_API QIconEnginePlugin* QIconEnginePlugin_new2(QObject* parent);
QTLIBC_API QMetaObject* QIconEnginePlugin_MetaObject(const QIconEnginePlugin* self);
QTLIBC_API void* QIconEnginePlugin_Metacast(QIconEnginePlugin* self, const char* param1);
QTLIBC_API int QIconEnginePlugin_Metacall(QIconEnginePlugin* self, int param1, int param2, void** param3);
QTLIBC_API void QIconEnginePlugin_OnMetacall(QIconEnginePlugin* self, intptr_t slot);
QTLIBC_API int QIconEnginePlugin_QBaseMetacall(QIconEnginePlugin* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QIconEnginePlugin_Tr(const char* s);
QTLIBC_API QIconEngine* QIconEnginePlugin_Create(QIconEnginePlugin* self, libqt_string filename);
QTLIBC_API void QIconEnginePlugin_OnCreate(QIconEnginePlugin* self, intptr_t slot);
QTLIBC_API QIconEngine* QIconEnginePlugin_QBaseCreate(QIconEnginePlugin* self, libqt_string filename);
QTLIBC_API libqt_string QIconEnginePlugin_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QIconEnginePlugin_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QIconEnginePlugin_Event(QIconEnginePlugin* self, QEvent* event);
QTLIBC_API void QIconEnginePlugin_OnEvent(QIconEnginePlugin* self, intptr_t slot);
QTLIBC_API bool QIconEnginePlugin_QBaseEvent(QIconEnginePlugin* self, QEvent* event);
QTLIBC_API bool QIconEnginePlugin_EventFilter(QIconEnginePlugin* self, QObject* watched, QEvent* event);
QTLIBC_API void QIconEnginePlugin_OnEventFilter(QIconEnginePlugin* self, intptr_t slot);
QTLIBC_API bool QIconEnginePlugin_QBaseEventFilter(QIconEnginePlugin* self, QObject* watched, QEvent* event);
QTLIBC_API void QIconEnginePlugin_TimerEvent(QIconEnginePlugin* self, QTimerEvent* event);
QTLIBC_API void QIconEnginePlugin_OnTimerEvent(QIconEnginePlugin* self, intptr_t slot);
QTLIBC_API void QIconEnginePlugin_QBaseTimerEvent(QIconEnginePlugin* self, QTimerEvent* event);
QTLIBC_API void QIconEnginePlugin_ChildEvent(QIconEnginePlugin* self, QChildEvent* event);
QTLIBC_API void QIconEnginePlugin_OnChildEvent(QIconEnginePlugin* self, intptr_t slot);
QTLIBC_API void QIconEnginePlugin_QBaseChildEvent(QIconEnginePlugin* self, QChildEvent* event);
QTLIBC_API void QIconEnginePlugin_CustomEvent(QIconEnginePlugin* self, QEvent* event);
QTLIBC_API void QIconEnginePlugin_OnCustomEvent(QIconEnginePlugin* self, intptr_t slot);
QTLIBC_API void QIconEnginePlugin_QBaseCustomEvent(QIconEnginePlugin* self, QEvent* event);
QTLIBC_API void QIconEnginePlugin_ConnectNotify(QIconEnginePlugin* self, QMetaMethod* signal);
QTLIBC_API void QIconEnginePlugin_OnConnectNotify(QIconEnginePlugin* self, intptr_t slot);
QTLIBC_API void QIconEnginePlugin_QBaseConnectNotify(QIconEnginePlugin* self, QMetaMethod* signal);
QTLIBC_API void QIconEnginePlugin_DisconnectNotify(QIconEnginePlugin* self, QMetaMethod* signal);
QTLIBC_API void QIconEnginePlugin_OnDisconnectNotify(QIconEnginePlugin* self, intptr_t slot);
QTLIBC_API void QIconEnginePlugin_QBaseDisconnectNotify(QIconEnginePlugin* self, QMetaMethod* signal);
QTLIBC_API QObject* QIconEnginePlugin_Sender(const QIconEnginePlugin* self);
QTLIBC_API void QIconEnginePlugin_OnSender(const QIconEnginePlugin* self, intptr_t slot);
QTLIBC_API QObject* QIconEnginePlugin_QBaseSender(const QIconEnginePlugin* self);
QTLIBC_API int QIconEnginePlugin_SenderSignalIndex(const QIconEnginePlugin* self);
QTLIBC_API void QIconEnginePlugin_OnSenderSignalIndex(const QIconEnginePlugin* self, intptr_t slot);
QTLIBC_API int QIconEnginePlugin_QBaseSenderSignalIndex(const QIconEnginePlugin* self);
QTLIBC_API int QIconEnginePlugin_Receivers(const QIconEnginePlugin* self, const char* signal);
QTLIBC_API void QIconEnginePlugin_OnReceivers(const QIconEnginePlugin* self, intptr_t slot);
QTLIBC_API int QIconEnginePlugin_QBaseReceivers(const QIconEnginePlugin* self, const char* signal);
QTLIBC_API bool QIconEnginePlugin_IsSignalConnected(const QIconEnginePlugin* self, QMetaMethod* signal);
QTLIBC_API void QIconEnginePlugin_OnIsSignalConnected(const QIconEnginePlugin* self, intptr_t slot);
QTLIBC_API bool QIconEnginePlugin_QBaseIsSignalConnected(const QIconEnginePlugin* self, QMetaMethod* signal);
QTLIBC_API void QIconEnginePlugin_Delete(QIconEnginePlugin* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
