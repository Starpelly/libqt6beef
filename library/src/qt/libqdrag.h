#pragma once
#ifndef SRC_QTC_LIBQDRAG_H
#define SRC_QTC_LIBQDRAG_H

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
typedef struct QDrag QDrag;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QMimeData QMimeData;
typedef struct QObject QObject;
typedef struct QPixmap QPixmap;
typedef struct QPoint QPoint;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QDrag* QDrag_new(QObject* dragSource);
QTLIBC_API QMetaObject* QDrag_MetaObject(const QDrag* self);
QTLIBC_API void* QDrag_Metacast(QDrag* self, const char* param1);
QTLIBC_API int QDrag_Metacall(QDrag* self, int param1, int param2, void** param3);
QTLIBC_API void QDrag_OnMetacall(QDrag* self, intptr_t slot);
QTLIBC_API int QDrag_QBaseMetacall(QDrag* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QDrag_Tr(const char* s);
QTLIBC_API void QDrag_SetMimeData(QDrag* self, QMimeData* data);
QTLIBC_API QMimeData* QDrag_MimeData(const QDrag* self);
QTLIBC_API void QDrag_SetPixmap(QDrag* self, QPixmap* pixmap);
QTLIBC_API QPixmap* QDrag_Pixmap(const QDrag* self);
QTLIBC_API void QDrag_SetHotSpot(QDrag* self, QPoint* hotspot);
QTLIBC_API QPoint* QDrag_HotSpot(const QDrag* self);
QTLIBC_API QObject* QDrag_Source(const QDrag* self);
QTLIBC_API QObject* QDrag_Target(const QDrag* self);
QTLIBC_API int QDrag_Exec(QDrag* self);
QTLIBC_API int QDrag_Exec2(QDrag* self, int supportedActions, int defaultAction);
QTLIBC_API void QDrag_SetDragCursor(QDrag* self, QPixmap* cursor, int action);
QTLIBC_API QPixmap* QDrag_DragCursor(const QDrag* self, int action);
QTLIBC_API int QDrag_SupportedActions(const QDrag* self);
QTLIBC_API int QDrag_DefaultAction(const QDrag* self);
QTLIBC_API void QDrag_Cancel();
QTLIBC_API void QDrag_ActionChanged(QDrag* self, int action);
void QDrag_Connect_ActionChanged(QDrag* self, intptr_t slot);
QTLIBC_API void QDrag_TargetChanged(QDrag* self, QObject* newTarget);
void QDrag_Connect_TargetChanged(QDrag* self, intptr_t slot);
QTLIBC_API libqt_string QDrag_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QDrag_Tr3(const char* s, const char* c, int n);
QTLIBC_API int QDrag_Exec1(QDrag* self, int supportedActions);
QTLIBC_API bool QDrag_Event(QDrag* self, QEvent* event);
QTLIBC_API void QDrag_OnEvent(QDrag* self, intptr_t slot);
QTLIBC_API bool QDrag_QBaseEvent(QDrag* self, QEvent* event);
QTLIBC_API bool QDrag_EventFilter(QDrag* self, QObject* watched, QEvent* event);
QTLIBC_API void QDrag_OnEventFilter(QDrag* self, intptr_t slot);
QTLIBC_API bool QDrag_QBaseEventFilter(QDrag* self, QObject* watched, QEvent* event);
QTLIBC_API void QDrag_TimerEvent(QDrag* self, QTimerEvent* event);
QTLIBC_API void QDrag_OnTimerEvent(QDrag* self, intptr_t slot);
QTLIBC_API void QDrag_QBaseTimerEvent(QDrag* self, QTimerEvent* event);
QTLIBC_API void QDrag_ChildEvent(QDrag* self, QChildEvent* event);
QTLIBC_API void QDrag_OnChildEvent(QDrag* self, intptr_t slot);
QTLIBC_API void QDrag_QBaseChildEvent(QDrag* self, QChildEvent* event);
QTLIBC_API void QDrag_CustomEvent(QDrag* self, QEvent* event);
QTLIBC_API void QDrag_OnCustomEvent(QDrag* self, intptr_t slot);
QTLIBC_API void QDrag_QBaseCustomEvent(QDrag* self, QEvent* event);
QTLIBC_API void QDrag_ConnectNotify(QDrag* self, QMetaMethod* signal);
QTLIBC_API void QDrag_OnConnectNotify(QDrag* self, intptr_t slot);
QTLIBC_API void QDrag_QBaseConnectNotify(QDrag* self, QMetaMethod* signal);
QTLIBC_API void QDrag_DisconnectNotify(QDrag* self, QMetaMethod* signal);
QTLIBC_API void QDrag_OnDisconnectNotify(QDrag* self, intptr_t slot);
QTLIBC_API void QDrag_QBaseDisconnectNotify(QDrag* self, QMetaMethod* signal);
QTLIBC_API QObject* QDrag_Sender(const QDrag* self);
QTLIBC_API void QDrag_OnSender(const QDrag* self, intptr_t slot);
QTLIBC_API QObject* QDrag_QBaseSender(const QDrag* self);
QTLIBC_API int QDrag_SenderSignalIndex(const QDrag* self);
QTLIBC_API void QDrag_OnSenderSignalIndex(const QDrag* self, intptr_t slot);
QTLIBC_API int QDrag_QBaseSenderSignalIndex(const QDrag* self);
QTLIBC_API int QDrag_Receivers(const QDrag* self, const char* signal);
QTLIBC_API void QDrag_OnReceivers(const QDrag* self, intptr_t slot);
QTLIBC_API int QDrag_QBaseReceivers(const QDrag* self, const char* signal);
QTLIBC_API bool QDrag_IsSignalConnected(const QDrag* self, QMetaMethod* signal);
QTLIBC_API void QDrag_OnIsSignalConnected(const QDrag* self, intptr_t slot);
QTLIBC_API bool QDrag_QBaseIsSignalConnected(const QDrag* self, QMetaMethod* signal);
QTLIBC_API void QDrag_Delete(QDrag* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
