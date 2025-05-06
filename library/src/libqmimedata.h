#pragma once
#ifndef SRCC_LIBQMIMEDATA_H
#define SRCC_LIBQMIMEDATA_H

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
typedef struct QMetaType QMetaType;
typedef struct QMimeData QMimeData;
typedef struct QObject QObject;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QMimeData* QMimeData_new();
QTLIBC_API QMetaObject* QMimeData_MetaObject(const QMimeData* self);
QTLIBC_API void* QMimeData_Metacast(QMimeData* self, const char* param1);
QTLIBC_API int QMimeData_Metacall(QMimeData* self, int param1, int param2, void** param3);
QTLIBC_API void QMimeData_OnMetacall(QMimeData* self, intptr_t slot);
QTLIBC_API int QMimeData_QBaseMetacall(QMimeData* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QMimeData_Tr(const char* s);
QTLIBC_API libqt_list /* of QUrl* */ QMimeData_Urls(const QMimeData* self);
QTLIBC_API void QMimeData_SetUrls(QMimeData* self, libqt_list /* of QUrl* */ urls);
QTLIBC_API bool QMimeData_HasUrls(const QMimeData* self);
QTLIBC_API libqt_string QMimeData_Text(const QMimeData* self);
QTLIBC_API void QMimeData_SetText(QMimeData* self, libqt_string text);
QTLIBC_API bool QMimeData_HasText(const QMimeData* self);
QTLIBC_API libqt_string QMimeData_Html(const QMimeData* self);
QTLIBC_API void QMimeData_SetHtml(QMimeData* self, libqt_string html);
QTLIBC_API bool QMimeData_HasHtml(const QMimeData* self);
QTLIBC_API QVariant* QMimeData_ImageData(const QMimeData* self);
QTLIBC_API void QMimeData_SetImageData(QMimeData* self, QVariant* image);
QTLIBC_API bool QMimeData_HasImage(const QMimeData* self);
QTLIBC_API QVariant* QMimeData_ColorData(const QMimeData* self);
QTLIBC_API void QMimeData_SetColorData(QMimeData* self, QVariant* color);
QTLIBC_API bool QMimeData_HasColor(const QMimeData* self);
QTLIBC_API libqt_string QMimeData_Data(const QMimeData* self, libqt_string mimetype);
QTLIBC_API void QMimeData_SetData(QMimeData* self, libqt_string mimetype, libqt_string data);
QTLIBC_API void QMimeData_RemoveFormat(QMimeData* self, libqt_string mimetype);
QTLIBC_API bool QMimeData_HasFormat(const QMimeData* self, libqt_string mimetype);
QTLIBC_API void QMimeData_OnHasFormat(const QMimeData* self, intptr_t slot);
QTLIBC_API bool QMimeData_QBaseHasFormat(const QMimeData* self, libqt_string mimetype);
QTLIBC_API libqt_list /* of libqt_string */ QMimeData_Formats(const QMimeData* self);
QTLIBC_API void QMimeData_OnFormats(const QMimeData* self, intptr_t slot);
QTLIBC_API libqt_list /* of libqt_string */ QMimeData_QBaseFormats(const QMimeData* self);
QTLIBC_API void QMimeData_Clear(QMimeData* self);
QTLIBC_API QVariant* QMimeData_RetrieveData(const QMimeData* self, libqt_string mimetype, QMetaType* preferredType);
QTLIBC_API void QMimeData_OnRetrieveData(const QMimeData* self, intptr_t slot);
QTLIBC_API QVariant* QMimeData_QBaseRetrieveData(const QMimeData* self, libqt_string mimetype, QMetaType* preferredType);
QTLIBC_API libqt_string QMimeData_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QMimeData_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QMimeData_Event(QMimeData* self, QEvent* event);
QTLIBC_API void QMimeData_OnEvent(QMimeData* self, intptr_t slot);
QTLIBC_API bool QMimeData_QBaseEvent(QMimeData* self, QEvent* event);
QTLIBC_API bool QMimeData_EventFilter(QMimeData* self, QObject* watched, QEvent* event);
QTLIBC_API void QMimeData_OnEventFilter(QMimeData* self, intptr_t slot);
QTLIBC_API bool QMimeData_QBaseEventFilter(QMimeData* self, QObject* watched, QEvent* event);
QTLIBC_API void QMimeData_TimerEvent(QMimeData* self, QTimerEvent* event);
QTLIBC_API void QMimeData_OnTimerEvent(QMimeData* self, intptr_t slot);
QTLIBC_API void QMimeData_QBaseTimerEvent(QMimeData* self, QTimerEvent* event);
QTLIBC_API void QMimeData_ChildEvent(QMimeData* self, QChildEvent* event);
QTLIBC_API void QMimeData_OnChildEvent(QMimeData* self, intptr_t slot);
QTLIBC_API void QMimeData_QBaseChildEvent(QMimeData* self, QChildEvent* event);
QTLIBC_API void QMimeData_CustomEvent(QMimeData* self, QEvent* event);
QTLIBC_API void QMimeData_OnCustomEvent(QMimeData* self, intptr_t slot);
QTLIBC_API void QMimeData_QBaseCustomEvent(QMimeData* self, QEvent* event);
QTLIBC_API void QMimeData_ConnectNotify(QMimeData* self, QMetaMethod* signal);
QTLIBC_API void QMimeData_OnConnectNotify(QMimeData* self, intptr_t slot);
QTLIBC_API void QMimeData_QBaseConnectNotify(QMimeData* self, QMetaMethod* signal);
QTLIBC_API void QMimeData_DisconnectNotify(QMimeData* self, QMetaMethod* signal);
QTLIBC_API void QMimeData_OnDisconnectNotify(QMimeData* self, intptr_t slot);
QTLIBC_API void QMimeData_QBaseDisconnectNotify(QMimeData* self, QMetaMethod* signal);
QTLIBC_API QObject* QMimeData_Sender(const QMimeData* self);
QTLIBC_API void QMimeData_OnSender(const QMimeData* self, intptr_t slot);
QTLIBC_API QObject* QMimeData_QBaseSender(const QMimeData* self);
QTLIBC_API int QMimeData_SenderSignalIndex(const QMimeData* self);
QTLIBC_API void QMimeData_OnSenderSignalIndex(const QMimeData* self, intptr_t slot);
QTLIBC_API int QMimeData_QBaseSenderSignalIndex(const QMimeData* self);
QTLIBC_API int QMimeData_Receivers(const QMimeData* self, const char* signal);
QTLIBC_API void QMimeData_OnReceivers(const QMimeData* self, intptr_t slot);
QTLIBC_API int QMimeData_QBaseReceivers(const QMimeData* self, const char* signal);
QTLIBC_API bool QMimeData_IsSignalConnected(const QMimeData* self, QMetaMethod* signal);
QTLIBC_API void QMimeData_OnIsSignalConnected(const QMimeData* self, intptr_t slot);
QTLIBC_API bool QMimeData_QBaseIsSignalConnected(const QMimeData* self, QMetaMethod* signal);
QTLIBC_API void QMimeData_Delete(QMimeData* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
