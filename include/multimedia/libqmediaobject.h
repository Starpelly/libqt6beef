#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQMEDIAOBJECT_H
#define SRC_MULTIMEDIAC_LIBQMEDIAOBJECT_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "../qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection)
typedef QMetaObject::Connection QMetaObject__Connection;
#endif
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMediaObject QMediaObject;
typedef struct QMediaService QMediaService;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QMetaObject* QMediaObject_MetaObject(const QMediaObject* self);
void* QMediaObject_Metacast(QMediaObject* self, const char* param1);
int QMediaObject_Metacall(QMediaObject* self, int param1, int param2, void** param3);
void QMediaObject_OnMetacall(QMediaObject* self, intptr_t slot);
int QMediaObject_QBaseMetacall(QMediaObject* self, int param1, int param2, void** param3);
libqt_string QMediaObject_Tr(const char* s);
libqt_string QMediaObject_TrUtf8(const char* s);
bool QMediaObject_IsAvailable(const QMediaObject* self);
void QMediaObject_OnIsAvailable(const QMediaObject* self, intptr_t slot);
bool QMediaObject_QBaseIsAvailable(const QMediaObject* self);
int QMediaObject_Availability(const QMediaObject* self);
void QMediaObject_OnAvailability(const QMediaObject* self, intptr_t slot);
int QMediaObject_QBaseAvailability(const QMediaObject* self);
QMediaService* QMediaObject_Service(const QMediaObject* self);
void QMediaObject_OnService(const QMediaObject* self, intptr_t slot);
QMediaService* QMediaObject_QBaseService(const QMediaObject* self);
int QMediaObject_NotifyInterval(const QMediaObject* self);
void QMediaObject_SetNotifyInterval(QMediaObject* self, int milliSeconds);
bool QMediaObject_Bind(QMediaObject* self, QObject* param1);
void QMediaObject_OnBind(QMediaObject* self, intptr_t slot);
bool QMediaObject_QBaseBind(QMediaObject* self, QObject* param1);
void QMediaObject_Unbind(QMediaObject* self, QObject* param1);
void QMediaObject_OnUnbind(QMediaObject* self, intptr_t slot);
void QMediaObject_QBaseUnbind(QMediaObject* self, QObject* param1);
bool QMediaObject_IsMetaDataAvailable(const QMediaObject* self);
QVariant* QMediaObject_MetaData(const QMediaObject* self, libqt_string key);
libqt_list /* of libqt_string */ QMediaObject_AvailableMetaData(const QMediaObject* self);
void QMediaObject_NotifyIntervalChanged(QMediaObject* self, int milliSeconds);
void QMediaObject_Connect_NotifyIntervalChanged(QMediaObject* self, intptr_t slot);
void QMediaObject_MetaDataAvailableChanged(QMediaObject* self, bool available);
void QMediaObject_Connect_MetaDataAvailableChanged(QMediaObject* self, intptr_t slot);
void QMediaObject_MetaDataChanged(QMediaObject* self);
void QMediaObject_Connect_MetaDataChanged(QMediaObject* self, intptr_t slot);
void QMediaObject_MetaDataChanged2(QMediaObject* self, libqt_string key, QVariant* value);
void QMediaObject_Connect_MetaDataChanged2(QMediaObject* self, intptr_t slot);
void QMediaObject_AvailabilityChanged(QMediaObject* self, bool available);
void QMediaObject_Connect_AvailabilityChanged(QMediaObject* self, intptr_t slot);
void QMediaObject_AvailabilityChangedWithAvailability(QMediaObject* self, int availability);
void QMediaObject_Connect_AvailabilityChangedWithAvailability(QMediaObject* self, intptr_t slot);
libqt_string QMediaObject_Tr2(const char* s, const char* c);
libqt_string QMediaObject_Tr3(const char* s, const char* c, int n);
libqt_string QMediaObject_TrUtf82(const char* s, const char* c);
libqt_string QMediaObject_TrUtf83(const char* s, const char* c, int n);
bool QMediaObject_Event(QMediaObject* self, QEvent* event);
void QMediaObject_OnEvent(QMediaObject* self, intptr_t slot);
bool QMediaObject_QBaseEvent(QMediaObject* self, QEvent* event);
bool QMediaObject_EventFilter(QMediaObject* self, QObject* watched, QEvent* event);
void QMediaObject_OnEventFilter(QMediaObject* self, intptr_t slot);
bool QMediaObject_QBaseEventFilter(QMediaObject* self, QObject* watched, QEvent* event);
void QMediaObject_TimerEvent(QMediaObject* self, QTimerEvent* event);
void QMediaObject_OnTimerEvent(QMediaObject* self, intptr_t slot);
void QMediaObject_QBaseTimerEvent(QMediaObject* self, QTimerEvent* event);
void QMediaObject_ChildEvent(QMediaObject* self, QChildEvent* event);
void QMediaObject_OnChildEvent(QMediaObject* self, intptr_t slot);
void QMediaObject_QBaseChildEvent(QMediaObject* self, QChildEvent* event);
void QMediaObject_CustomEvent(QMediaObject* self, QEvent* event);
void QMediaObject_OnCustomEvent(QMediaObject* self, intptr_t slot);
void QMediaObject_QBaseCustomEvent(QMediaObject* self, QEvent* event);
void QMediaObject_ConnectNotify(QMediaObject* self, QMetaMethod* signal);
void QMediaObject_OnConnectNotify(QMediaObject* self, intptr_t slot);
void QMediaObject_QBaseConnectNotify(QMediaObject* self, QMetaMethod* signal);
void QMediaObject_DisconnectNotify(QMediaObject* self, QMetaMethod* signal);
void QMediaObject_OnDisconnectNotify(QMediaObject* self, intptr_t slot);
void QMediaObject_QBaseDisconnectNotify(QMediaObject* self, QMetaMethod* signal);
void QMediaObject_AddPropertyWatch(QMediaObject* self, libqt_string name);
void QMediaObject_OnAddPropertyWatch(QMediaObject* self, intptr_t slot);
void QMediaObject_QBaseAddPropertyWatch(QMediaObject* self, libqt_string name);
void QMediaObject_RemovePropertyWatch(QMediaObject* self, libqt_string name);
void QMediaObject_OnRemovePropertyWatch(QMediaObject* self, intptr_t slot);
void QMediaObject_QBaseRemovePropertyWatch(QMediaObject* self, libqt_string name);
void QMediaObject_Delete(QMediaObject* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
