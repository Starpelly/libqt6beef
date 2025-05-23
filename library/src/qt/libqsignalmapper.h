#pragma once
#ifndef SRC_QTC_LIBQSIGNALMAPPER_H
#define SRC_QTC_LIBQSIGNALMAPPER_H

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
typedef struct QSignalMapper QSignalMapper;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QSignalMapper* QSignalMapper_new();
QTLIBC_API QSignalMapper* QSignalMapper_new2(QObject* parent);
QTLIBC_API QMetaObject* QSignalMapper_MetaObject(const QSignalMapper* self);
QTLIBC_API void* QSignalMapper_Metacast(QSignalMapper* self, const char* param1);
QTLIBC_API int QSignalMapper_Metacall(QSignalMapper* self, int param1, int param2, void** param3);
QTLIBC_API void QSignalMapper_OnMetacall(QSignalMapper* self, intptr_t slot);
QTLIBC_API int QSignalMapper_QBaseMetacall(QSignalMapper* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QSignalMapper_Tr(const char* s);
QTLIBC_API void QSignalMapper_SetMapping(QSignalMapper* self, QObject* sender, int id);
QTLIBC_API void QSignalMapper_SetMapping2(QSignalMapper* self, QObject* sender, libqt_string text);
QTLIBC_API void QSignalMapper_SetMapping3(QSignalMapper* self, QObject* sender, QObject* object);
QTLIBC_API void QSignalMapper_RemoveMappings(QSignalMapper* self, QObject* sender);
QTLIBC_API QObject* QSignalMapper_Mapping(const QSignalMapper* self, int id);
QTLIBC_API QObject* QSignalMapper_MappingWithText(const QSignalMapper* self, libqt_string text);
QTLIBC_API QObject* QSignalMapper_MappingWithObject(const QSignalMapper* self, QObject* object);
QTLIBC_API void QSignalMapper_MappedInt(QSignalMapper* self, int param1);
QTLIBC_API void QSignalMapper_Connect_MappedInt(QSignalMapper* self, intptr_t slot);
QTLIBC_API void QSignalMapper_MappedString(QSignalMapper* self, libqt_string param1);
QTLIBC_API void QSignalMapper_Connect_MappedString(QSignalMapper* self, intptr_t slot);
QTLIBC_API void QSignalMapper_MappedObject(QSignalMapper* self, QObject* param1);
QTLIBC_API void QSignalMapper_Connect_MappedObject(QSignalMapper* self, intptr_t slot);
QTLIBC_API void QSignalMapper_Map(QSignalMapper* self);
QTLIBC_API void QSignalMapper_MapWithSender(QSignalMapper* self, QObject* sender);
QTLIBC_API libqt_string QSignalMapper_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QSignalMapper_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QSignalMapper_Event(QSignalMapper* self, QEvent* event);
QTLIBC_API void QSignalMapper_OnEvent(QSignalMapper* self, intptr_t slot);
QTLIBC_API bool QSignalMapper_QBaseEvent(QSignalMapper* self, QEvent* event);
QTLIBC_API bool QSignalMapper_EventFilter(QSignalMapper* self, QObject* watched, QEvent* event);
QTLIBC_API void QSignalMapper_OnEventFilter(QSignalMapper* self, intptr_t slot);
QTLIBC_API bool QSignalMapper_QBaseEventFilter(QSignalMapper* self, QObject* watched, QEvent* event);
QTLIBC_API void QSignalMapper_TimerEvent(QSignalMapper* self, QTimerEvent* event);
QTLIBC_API void QSignalMapper_OnTimerEvent(QSignalMapper* self, intptr_t slot);
QTLIBC_API void QSignalMapper_QBaseTimerEvent(QSignalMapper* self, QTimerEvent* event);
QTLIBC_API void QSignalMapper_ChildEvent(QSignalMapper* self, QChildEvent* event);
QTLIBC_API void QSignalMapper_OnChildEvent(QSignalMapper* self, intptr_t slot);
QTLIBC_API void QSignalMapper_QBaseChildEvent(QSignalMapper* self, QChildEvent* event);
QTLIBC_API void QSignalMapper_CustomEvent(QSignalMapper* self, QEvent* event);
QTLIBC_API void QSignalMapper_OnCustomEvent(QSignalMapper* self, intptr_t slot);
QTLIBC_API void QSignalMapper_QBaseCustomEvent(QSignalMapper* self, QEvent* event);
QTLIBC_API void QSignalMapper_ConnectNotify(QSignalMapper* self, QMetaMethod* signal);
QTLIBC_API void QSignalMapper_OnConnectNotify(QSignalMapper* self, intptr_t slot);
QTLIBC_API void QSignalMapper_QBaseConnectNotify(QSignalMapper* self, QMetaMethod* signal);
QTLIBC_API void QSignalMapper_DisconnectNotify(QSignalMapper* self, QMetaMethod* signal);
QTLIBC_API void QSignalMapper_OnDisconnectNotify(QSignalMapper* self, intptr_t slot);
QTLIBC_API void QSignalMapper_QBaseDisconnectNotify(QSignalMapper* self, QMetaMethod* signal);
QTLIBC_API QObject* QSignalMapper_Sender(const QSignalMapper* self);
QTLIBC_API void QSignalMapper_OnSender(const QSignalMapper* self, intptr_t slot);
QTLIBC_API QObject* QSignalMapper_QBaseSender(const QSignalMapper* self);
QTLIBC_API int QSignalMapper_SenderSignalIndex(const QSignalMapper* self);
QTLIBC_API void QSignalMapper_OnSenderSignalIndex(const QSignalMapper* self, intptr_t slot);
QTLIBC_API int QSignalMapper_QBaseSenderSignalIndex(const QSignalMapper* self);
QTLIBC_API int QSignalMapper_Receivers(const QSignalMapper* self, const char* signal);
QTLIBC_API void QSignalMapper_OnReceivers(const QSignalMapper* self, intptr_t slot);
QTLIBC_API int QSignalMapper_QBaseReceivers(const QSignalMapper* self, const char* signal);
QTLIBC_API bool QSignalMapper_IsSignalConnected(const QSignalMapper* self, QMetaMethod* signal);
QTLIBC_API void QSignalMapper_OnIsSignalConnected(const QSignalMapper* self, intptr_t slot);
QTLIBC_API bool QSignalMapper_QBaseIsSignalConnected(const QSignalMapper* self, QMetaMethod* signal);
QTLIBC_API void QSignalMapper_Delete(QSignalMapper* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
