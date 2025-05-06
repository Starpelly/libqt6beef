#pragma once
#ifndef SRCC_LIBQPLUGINLOADER_H
#define SRCC_LIBQPLUGINLOADER_H

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
typedef struct QJsonObject QJsonObject;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QPluginLoader QPluginLoader;
typedef struct QStaticPlugin QStaticPlugin;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QPluginLoader* QPluginLoader_new();
QTLIBC_API QPluginLoader* QPluginLoader_new2(libqt_string fileName);
QTLIBC_API QPluginLoader* QPluginLoader_new3(QObject* parent);
QTLIBC_API QPluginLoader* QPluginLoader_new4(libqt_string fileName, QObject* parent);
QTLIBC_API QMetaObject* QPluginLoader_MetaObject(const QPluginLoader* self);
QTLIBC_API void* QPluginLoader_Metacast(QPluginLoader* self, const char* param1);
QTLIBC_API int QPluginLoader_Metacall(QPluginLoader* self, int param1, int param2, void** param3);
QTLIBC_API void QPluginLoader_OnMetacall(QPluginLoader* self, intptr_t slot);
QTLIBC_API int QPluginLoader_QBaseMetacall(QPluginLoader* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QPluginLoader_Tr(const char* s);
QTLIBC_API QObject* QPluginLoader_Instance(QPluginLoader* self);
QTLIBC_API QJsonObject* QPluginLoader_MetaData(const QPluginLoader* self);
QTLIBC_API libqt_list /* of QObject* */ QPluginLoader_StaticInstances();
QTLIBC_API libqt_list /* of QStaticPlugin* */ QPluginLoader_StaticPlugins();
QTLIBC_API bool QPluginLoader_Load(QPluginLoader* self);
QTLIBC_API bool QPluginLoader_Unload(QPluginLoader* self);
QTLIBC_API bool QPluginLoader_IsLoaded(const QPluginLoader* self);
QTLIBC_API void QPluginLoader_SetFileName(QPluginLoader* self, libqt_string fileName);
QTLIBC_API libqt_string QPluginLoader_FileName(const QPluginLoader* self);
QTLIBC_API libqt_string QPluginLoader_ErrorString(const QPluginLoader* self);
QTLIBC_API void QPluginLoader_SetLoadHints(QPluginLoader* self, int loadHints);
QTLIBC_API int QPluginLoader_LoadHints(const QPluginLoader* self);
QTLIBC_API libqt_string QPluginLoader_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QPluginLoader_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QPluginLoader_Event(QPluginLoader* self, QEvent* event);
QTLIBC_API void QPluginLoader_OnEvent(QPluginLoader* self, intptr_t slot);
QTLIBC_API bool QPluginLoader_QBaseEvent(QPluginLoader* self, QEvent* event);
QTLIBC_API bool QPluginLoader_EventFilter(QPluginLoader* self, QObject* watched, QEvent* event);
QTLIBC_API void QPluginLoader_OnEventFilter(QPluginLoader* self, intptr_t slot);
QTLIBC_API bool QPluginLoader_QBaseEventFilter(QPluginLoader* self, QObject* watched, QEvent* event);
QTLIBC_API void QPluginLoader_TimerEvent(QPluginLoader* self, QTimerEvent* event);
QTLIBC_API void QPluginLoader_OnTimerEvent(QPluginLoader* self, intptr_t slot);
QTLIBC_API void QPluginLoader_QBaseTimerEvent(QPluginLoader* self, QTimerEvent* event);
QTLIBC_API void QPluginLoader_ChildEvent(QPluginLoader* self, QChildEvent* event);
QTLIBC_API void QPluginLoader_OnChildEvent(QPluginLoader* self, intptr_t slot);
QTLIBC_API void QPluginLoader_QBaseChildEvent(QPluginLoader* self, QChildEvent* event);
QTLIBC_API void QPluginLoader_CustomEvent(QPluginLoader* self, QEvent* event);
QTLIBC_API void QPluginLoader_OnCustomEvent(QPluginLoader* self, intptr_t slot);
QTLIBC_API void QPluginLoader_QBaseCustomEvent(QPluginLoader* self, QEvent* event);
QTLIBC_API void QPluginLoader_ConnectNotify(QPluginLoader* self, QMetaMethod* signal);
QTLIBC_API void QPluginLoader_OnConnectNotify(QPluginLoader* self, intptr_t slot);
QTLIBC_API void QPluginLoader_QBaseConnectNotify(QPluginLoader* self, QMetaMethod* signal);
QTLIBC_API void QPluginLoader_DisconnectNotify(QPluginLoader* self, QMetaMethod* signal);
QTLIBC_API void QPluginLoader_OnDisconnectNotify(QPluginLoader* self, intptr_t slot);
QTLIBC_API void QPluginLoader_QBaseDisconnectNotify(QPluginLoader* self, QMetaMethod* signal);
QTLIBC_API QObject* QPluginLoader_Sender(const QPluginLoader* self);
QTLIBC_API void QPluginLoader_OnSender(const QPluginLoader* self, intptr_t slot);
QTLIBC_API QObject* QPluginLoader_QBaseSender(const QPluginLoader* self);
QTLIBC_API int QPluginLoader_SenderSignalIndex(const QPluginLoader* self);
QTLIBC_API void QPluginLoader_OnSenderSignalIndex(const QPluginLoader* self, intptr_t slot);
QTLIBC_API int QPluginLoader_QBaseSenderSignalIndex(const QPluginLoader* self);
QTLIBC_API int QPluginLoader_Receivers(const QPluginLoader* self, const char* signal);
QTLIBC_API void QPluginLoader_OnReceivers(const QPluginLoader* self, intptr_t slot);
QTLIBC_API int QPluginLoader_QBaseReceivers(const QPluginLoader* self, const char* signal);
QTLIBC_API bool QPluginLoader_IsSignalConnected(const QPluginLoader* self, QMetaMethod* signal);
QTLIBC_API void QPluginLoader_OnIsSignalConnected(const QPluginLoader* self, intptr_t slot);
QTLIBC_API bool QPluginLoader_QBaseIsSignalConnected(const QPluginLoader* self, QMetaMethod* signal);
QTLIBC_API void QPluginLoader_Delete(QPluginLoader* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
