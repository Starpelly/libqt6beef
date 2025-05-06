#pragma once
#ifndef SRC_QTC_LIBQOFFSCREENSURFACE_H
#define SRC_QTC_LIBQOFFSCREENSURFACE_H

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
typedef struct QOffscreenSurface QOffscreenSurface;
typedef struct QScreen QScreen;
typedef struct QSize QSize;
typedef struct QSurface QSurface;
typedef struct QSurfaceFormat QSurfaceFormat;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QOffscreenSurface* QOffscreenSurface_new();
QTLIBC_API QOffscreenSurface* QOffscreenSurface_new2(QScreen* screen);
QTLIBC_API QOffscreenSurface* QOffscreenSurface_new3(QScreen* screen, QObject* parent);
QTLIBC_API QMetaObject* QOffscreenSurface_MetaObject(const QOffscreenSurface* self);
QTLIBC_API void* QOffscreenSurface_Metacast(QOffscreenSurface* self, const char* param1);
QTLIBC_API int QOffscreenSurface_Metacall(QOffscreenSurface* self, int param1, int param2, void** param3);
QTLIBC_API void QOffscreenSurface_OnMetacall(QOffscreenSurface* self, intptr_t slot);
QTLIBC_API int QOffscreenSurface_QBaseMetacall(QOffscreenSurface* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QOffscreenSurface_Tr(const char* s);
QTLIBC_API int QOffscreenSurface_SurfaceType(const QOffscreenSurface* self);
QTLIBC_API void QOffscreenSurface_OnSurfaceType(const QOffscreenSurface* self, intptr_t slot);
QTLIBC_API int QOffscreenSurface_QBaseSurfaceType(const QOffscreenSurface* self);
QTLIBC_API void QOffscreenSurface_Create(QOffscreenSurface* self);
QTLIBC_API void QOffscreenSurface_Destroy(QOffscreenSurface* self);
QTLIBC_API bool QOffscreenSurface_IsValid(const QOffscreenSurface* self);
QTLIBC_API void QOffscreenSurface_SetFormat(QOffscreenSurface* self, QSurfaceFormat* format);
QTLIBC_API QSurfaceFormat* QOffscreenSurface_Format(const QOffscreenSurface* self);
QTLIBC_API void QOffscreenSurface_OnFormat(const QOffscreenSurface* self, intptr_t slot);
QTLIBC_API QSurfaceFormat* QOffscreenSurface_QBaseFormat(const QOffscreenSurface* self);
QTLIBC_API QSurfaceFormat* QOffscreenSurface_RequestedFormat(const QOffscreenSurface* self);
QTLIBC_API QSize* QOffscreenSurface_Size(const QOffscreenSurface* self);
QTLIBC_API void QOffscreenSurface_OnSize(const QOffscreenSurface* self, intptr_t slot);
QTLIBC_API QSize* QOffscreenSurface_QBaseSize(const QOffscreenSurface* self);
QTLIBC_API QScreen* QOffscreenSurface_Screen(const QOffscreenSurface* self);
QTLIBC_API void QOffscreenSurface_SetScreen(QOffscreenSurface* self, QScreen* screen);
QTLIBC_API void QOffscreenSurface_ScreenChanged(QOffscreenSurface* self, QScreen* screen);
void QOffscreenSurface_Connect_ScreenChanged(QOffscreenSurface* self, intptr_t slot);
QTLIBC_API libqt_string QOffscreenSurface_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QOffscreenSurface_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QOffscreenSurface_Event(QOffscreenSurface* self, QEvent* event);
QTLIBC_API void QOffscreenSurface_OnEvent(QOffscreenSurface* self, intptr_t slot);
QTLIBC_API bool QOffscreenSurface_QBaseEvent(QOffscreenSurface* self, QEvent* event);
QTLIBC_API bool QOffscreenSurface_EventFilter(QOffscreenSurface* self, QObject* watched, QEvent* event);
QTLIBC_API void QOffscreenSurface_OnEventFilter(QOffscreenSurface* self, intptr_t slot);
QTLIBC_API bool QOffscreenSurface_QBaseEventFilter(QOffscreenSurface* self, QObject* watched, QEvent* event);
QTLIBC_API void QOffscreenSurface_TimerEvent(QOffscreenSurface* self, QTimerEvent* event);
QTLIBC_API void QOffscreenSurface_OnTimerEvent(QOffscreenSurface* self, intptr_t slot);
QTLIBC_API void QOffscreenSurface_QBaseTimerEvent(QOffscreenSurface* self, QTimerEvent* event);
QTLIBC_API void QOffscreenSurface_ChildEvent(QOffscreenSurface* self, QChildEvent* event);
QTLIBC_API void QOffscreenSurface_OnChildEvent(QOffscreenSurface* self, intptr_t slot);
QTLIBC_API void QOffscreenSurface_QBaseChildEvent(QOffscreenSurface* self, QChildEvent* event);
QTLIBC_API void QOffscreenSurface_CustomEvent(QOffscreenSurface* self, QEvent* event);
QTLIBC_API void QOffscreenSurface_OnCustomEvent(QOffscreenSurface* self, intptr_t slot);
QTLIBC_API void QOffscreenSurface_QBaseCustomEvent(QOffscreenSurface* self, QEvent* event);
QTLIBC_API void QOffscreenSurface_ConnectNotify(QOffscreenSurface* self, QMetaMethod* signal);
QTLIBC_API void QOffscreenSurface_OnConnectNotify(QOffscreenSurface* self, intptr_t slot);
QTLIBC_API void QOffscreenSurface_QBaseConnectNotify(QOffscreenSurface* self, QMetaMethod* signal);
QTLIBC_API void QOffscreenSurface_DisconnectNotify(QOffscreenSurface* self, QMetaMethod* signal);
QTLIBC_API void QOffscreenSurface_OnDisconnectNotify(QOffscreenSurface* self, intptr_t slot);
QTLIBC_API void QOffscreenSurface_QBaseDisconnectNotify(QOffscreenSurface* self, QMetaMethod* signal);
QTLIBC_API void* QOffscreenSurface_ResolveInterface(const QOffscreenSurface* self, const char* name, int revision);
QTLIBC_API void QOffscreenSurface_OnResolveInterface(const QOffscreenSurface* self, intptr_t slot);
QTLIBC_API void* QOffscreenSurface_QBaseResolveInterface(const QOffscreenSurface* self, const char* name, int revision);
QTLIBC_API QObject* QOffscreenSurface_Sender(const QOffscreenSurface* self);
QTLIBC_API void QOffscreenSurface_OnSender(const QOffscreenSurface* self, intptr_t slot);
QTLIBC_API QObject* QOffscreenSurface_QBaseSender(const QOffscreenSurface* self);
QTLIBC_API int QOffscreenSurface_SenderSignalIndex(const QOffscreenSurface* self);
QTLIBC_API void QOffscreenSurface_OnSenderSignalIndex(const QOffscreenSurface* self, intptr_t slot);
QTLIBC_API int QOffscreenSurface_QBaseSenderSignalIndex(const QOffscreenSurface* self);
QTLIBC_API int QOffscreenSurface_Receivers(const QOffscreenSurface* self, const char* signal);
QTLIBC_API void QOffscreenSurface_OnReceivers(const QOffscreenSurface* self, intptr_t slot);
QTLIBC_API int QOffscreenSurface_QBaseReceivers(const QOffscreenSurface* self, const char* signal);
QTLIBC_API bool QOffscreenSurface_IsSignalConnected(const QOffscreenSurface* self, QMetaMethod* signal);
QTLIBC_API void QOffscreenSurface_OnIsSignalConnected(const QOffscreenSurface* self, intptr_t slot);
QTLIBC_API bool QOffscreenSurface_QBaseIsSignalConnected(const QOffscreenSurface* self, QMetaMethod* signal);
QTLIBC_API void QOffscreenSurface_Delete(QOffscreenSurface* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
