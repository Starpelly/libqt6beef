#pragma once
#ifndef SRCC_LIBQFILESYSTEMWATCHER_H
#define SRCC_LIBQFILESYSTEMWATCHER_H

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
typedef struct QFileSystemWatcher QFileSystemWatcher;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QFileSystemWatcher* QFileSystemWatcher_new();
QTLIBC_API QFileSystemWatcher* QFileSystemWatcher_new2(libqt_list /* of libqt_string */ paths);
QTLIBC_API QFileSystemWatcher* QFileSystemWatcher_new3(QObject* parent);
QTLIBC_API QFileSystemWatcher* QFileSystemWatcher_new4(libqt_list /* of libqt_string */ paths, QObject* parent);
QTLIBC_API QMetaObject* QFileSystemWatcher_MetaObject(const QFileSystemWatcher* self);
QTLIBC_API void* QFileSystemWatcher_Metacast(QFileSystemWatcher* self, const char* param1);
QTLIBC_API int QFileSystemWatcher_Metacall(QFileSystemWatcher* self, int param1, int param2, void** param3);
QTLIBC_API void QFileSystemWatcher_OnMetacall(QFileSystemWatcher* self, intptr_t slot);
QTLIBC_API int QFileSystemWatcher_QBaseMetacall(QFileSystemWatcher* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QFileSystemWatcher_Tr(const char* s);
QTLIBC_API bool QFileSystemWatcher_AddPath(QFileSystemWatcher* self, libqt_string file);
QTLIBC_API libqt_list /* of libqt_string */ QFileSystemWatcher_AddPaths(QFileSystemWatcher* self, libqt_list /* of libqt_string */ files);
QTLIBC_API bool QFileSystemWatcher_RemovePath(QFileSystemWatcher* self, libqt_string file);
QTLIBC_API libqt_list /* of libqt_string */ QFileSystemWatcher_RemovePaths(QFileSystemWatcher* self, libqt_list /* of libqt_string */ files);
QTLIBC_API libqt_list /* of libqt_string */ QFileSystemWatcher_Files(const QFileSystemWatcher* self);
QTLIBC_API libqt_list /* of libqt_string */ QFileSystemWatcher_Directories(const QFileSystemWatcher* self);
QTLIBC_API libqt_string QFileSystemWatcher_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QFileSystemWatcher_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QFileSystemWatcher_Event(QFileSystemWatcher* self, QEvent* event);
QTLIBC_API void QFileSystemWatcher_OnEvent(QFileSystemWatcher* self, intptr_t slot);
QTLIBC_API bool QFileSystemWatcher_QBaseEvent(QFileSystemWatcher* self, QEvent* event);
QTLIBC_API bool QFileSystemWatcher_EventFilter(QFileSystemWatcher* self, QObject* watched, QEvent* event);
QTLIBC_API void QFileSystemWatcher_OnEventFilter(QFileSystemWatcher* self, intptr_t slot);
QTLIBC_API bool QFileSystemWatcher_QBaseEventFilter(QFileSystemWatcher* self, QObject* watched, QEvent* event);
QTLIBC_API void QFileSystemWatcher_TimerEvent(QFileSystemWatcher* self, QTimerEvent* event);
QTLIBC_API void QFileSystemWatcher_OnTimerEvent(QFileSystemWatcher* self, intptr_t slot);
QTLIBC_API void QFileSystemWatcher_QBaseTimerEvent(QFileSystemWatcher* self, QTimerEvent* event);
QTLIBC_API void QFileSystemWatcher_ChildEvent(QFileSystemWatcher* self, QChildEvent* event);
QTLIBC_API void QFileSystemWatcher_OnChildEvent(QFileSystemWatcher* self, intptr_t slot);
QTLIBC_API void QFileSystemWatcher_QBaseChildEvent(QFileSystemWatcher* self, QChildEvent* event);
QTLIBC_API void QFileSystemWatcher_CustomEvent(QFileSystemWatcher* self, QEvent* event);
QTLIBC_API void QFileSystemWatcher_OnCustomEvent(QFileSystemWatcher* self, intptr_t slot);
QTLIBC_API void QFileSystemWatcher_QBaseCustomEvent(QFileSystemWatcher* self, QEvent* event);
QTLIBC_API void QFileSystemWatcher_ConnectNotify(QFileSystemWatcher* self, QMetaMethod* signal);
QTLIBC_API void QFileSystemWatcher_OnConnectNotify(QFileSystemWatcher* self, intptr_t slot);
QTLIBC_API void QFileSystemWatcher_QBaseConnectNotify(QFileSystemWatcher* self, QMetaMethod* signal);
QTLIBC_API void QFileSystemWatcher_DisconnectNotify(QFileSystemWatcher* self, QMetaMethod* signal);
QTLIBC_API void QFileSystemWatcher_OnDisconnectNotify(QFileSystemWatcher* self, intptr_t slot);
QTLIBC_API void QFileSystemWatcher_QBaseDisconnectNotify(QFileSystemWatcher* self, QMetaMethod* signal);
QTLIBC_API QObject* QFileSystemWatcher_Sender(const QFileSystemWatcher* self);
QTLIBC_API void QFileSystemWatcher_OnSender(const QFileSystemWatcher* self, intptr_t slot);
QTLIBC_API QObject* QFileSystemWatcher_QBaseSender(const QFileSystemWatcher* self);
QTLIBC_API int QFileSystemWatcher_SenderSignalIndex(const QFileSystemWatcher* self);
QTLIBC_API void QFileSystemWatcher_OnSenderSignalIndex(const QFileSystemWatcher* self, intptr_t slot);
QTLIBC_API int QFileSystemWatcher_QBaseSenderSignalIndex(const QFileSystemWatcher* self);
QTLIBC_API int QFileSystemWatcher_Receivers(const QFileSystemWatcher* self, const char* signal);
QTLIBC_API void QFileSystemWatcher_OnReceivers(const QFileSystemWatcher* self, intptr_t slot);
QTLIBC_API int QFileSystemWatcher_QBaseReceivers(const QFileSystemWatcher* self, const char* signal);
QTLIBC_API bool QFileSystemWatcher_IsSignalConnected(const QFileSystemWatcher* self, QMetaMethod* signal);
QTLIBC_API void QFileSystemWatcher_OnIsSignalConnected(const QFileSystemWatcher* self, intptr_t slot);
QTLIBC_API bool QFileSystemWatcher_QBaseIsSignalConnected(const QFileSystemWatcher* self, QMetaMethod* signal);
QTLIBC_API void QFileSystemWatcher_Delete(QFileSystemWatcher* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
