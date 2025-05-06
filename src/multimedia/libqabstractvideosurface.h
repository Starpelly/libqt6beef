#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQABSTRACTVIDEOSURFACE_H
#define SRC_MULTIMEDIAC_LIBQABSTRACTVIDEOSURFACE_H

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
typedef struct QAbstractVideoSurface QAbstractVideoSurface;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QSize QSize;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QVideoFrame QVideoFrame;
typedef struct QVideoSurfaceFormat QVideoSurfaceFormat;
#endif

#ifdef __cplusplus
typedef QAbstractVideoSurface::Error Error; // C++ enum
#else
typedef int Error; // C ABI enum
#endif

QAbstractVideoSurface* QAbstractVideoSurface_new();
QAbstractVideoSurface* QAbstractVideoSurface_new2(QObject* parent);
QMetaObject* QAbstractVideoSurface_MetaObject(const QAbstractVideoSurface* self);
void* QAbstractVideoSurface_Metacast(QAbstractVideoSurface* self, const char* param1);
int QAbstractVideoSurface_Metacall(QAbstractVideoSurface* self, int param1, int param2, void** param3);
void QAbstractVideoSurface_OnMetacall(QAbstractVideoSurface* self, intptr_t slot);
int QAbstractVideoSurface_QBaseMetacall(QAbstractVideoSurface* self, int param1, int param2, void** param3);
libqt_string QAbstractVideoSurface_Tr(const char* s);
libqt_string QAbstractVideoSurface_TrUtf8(const char* s);
libqt_list /* of int */ QAbstractVideoSurface_SupportedPixelFormats(const QAbstractVideoSurface* self, int typeVal);
void QAbstractVideoSurface_OnSupportedPixelFormats(const QAbstractVideoSurface* self, intptr_t slot);
libqt_list /* of int */ QAbstractVideoSurface_QBaseSupportedPixelFormats(const QAbstractVideoSurface* self, int typeVal);
bool QAbstractVideoSurface_IsFormatSupported(const QAbstractVideoSurface* self, QVideoSurfaceFormat* format);
void QAbstractVideoSurface_OnIsFormatSupported(const QAbstractVideoSurface* self, intptr_t slot);
bool QAbstractVideoSurface_QBaseIsFormatSupported(const QAbstractVideoSurface* self, QVideoSurfaceFormat* format);
QVideoSurfaceFormat* QAbstractVideoSurface_NearestFormat(const QAbstractVideoSurface* self, QVideoSurfaceFormat* format);
void QAbstractVideoSurface_OnNearestFormat(const QAbstractVideoSurface* self, intptr_t slot);
QVideoSurfaceFormat* QAbstractVideoSurface_QBaseNearestFormat(const QAbstractVideoSurface* self, QVideoSurfaceFormat* format);
QVideoSurfaceFormat* QAbstractVideoSurface_SurfaceFormat(const QAbstractVideoSurface* self);
QSize* QAbstractVideoSurface_NativeResolution(const QAbstractVideoSurface* self);
bool QAbstractVideoSurface_Start(QAbstractVideoSurface* self, QVideoSurfaceFormat* format);
void QAbstractVideoSurface_OnStart(QAbstractVideoSurface* self, intptr_t slot);
bool QAbstractVideoSurface_QBaseStart(QAbstractVideoSurface* self, QVideoSurfaceFormat* format);
void QAbstractVideoSurface_Stop(QAbstractVideoSurface* self);
void QAbstractVideoSurface_OnStop(QAbstractVideoSurface* self, intptr_t slot);
void QAbstractVideoSurface_QBaseStop(QAbstractVideoSurface* self);
bool QAbstractVideoSurface_IsActive(const QAbstractVideoSurface* self);
bool QAbstractVideoSurface_Present(QAbstractVideoSurface* self, QVideoFrame* frame);
void QAbstractVideoSurface_OnPresent(QAbstractVideoSurface* self, intptr_t slot);
bool QAbstractVideoSurface_QBasePresent(QAbstractVideoSurface* self, QVideoFrame* frame);
int QAbstractVideoSurface_Error(const QAbstractVideoSurface* self);
void QAbstractVideoSurface_ActiveChanged(QAbstractVideoSurface* self, bool active);
void QAbstractVideoSurface_Connect_ActiveChanged(QAbstractVideoSurface* self, intptr_t slot);
void QAbstractVideoSurface_SurfaceFormatChanged(QAbstractVideoSurface* self, QVideoSurfaceFormat* format);
void QAbstractVideoSurface_Connect_SurfaceFormatChanged(QAbstractVideoSurface* self, intptr_t slot);
void QAbstractVideoSurface_SupportedFormatsChanged(QAbstractVideoSurface* self);
void QAbstractVideoSurface_Connect_SupportedFormatsChanged(QAbstractVideoSurface* self, intptr_t slot);
void QAbstractVideoSurface_NativeResolutionChanged(QAbstractVideoSurface* self, QSize* resolution);
void QAbstractVideoSurface_Connect_NativeResolutionChanged(QAbstractVideoSurface* self, intptr_t slot);
libqt_string QAbstractVideoSurface_Tr2(const char* s, const char* c);
libqt_string QAbstractVideoSurface_Tr3(const char* s, const char* c, int n);
libqt_string QAbstractVideoSurface_TrUtf82(const char* s, const char* c);
libqt_string QAbstractVideoSurface_TrUtf83(const char* s, const char* c, int n);
bool QAbstractVideoSurface_Event(QAbstractVideoSurface* self, QEvent* event);
void QAbstractVideoSurface_OnEvent(QAbstractVideoSurface* self, intptr_t slot);
bool QAbstractVideoSurface_QBaseEvent(QAbstractVideoSurface* self, QEvent* event);
bool QAbstractVideoSurface_EventFilter(QAbstractVideoSurface* self, QObject* watched, QEvent* event);
void QAbstractVideoSurface_OnEventFilter(QAbstractVideoSurface* self, intptr_t slot);
bool QAbstractVideoSurface_QBaseEventFilter(QAbstractVideoSurface* self, QObject* watched, QEvent* event);
void QAbstractVideoSurface_TimerEvent(QAbstractVideoSurface* self, QTimerEvent* event);
void QAbstractVideoSurface_OnTimerEvent(QAbstractVideoSurface* self, intptr_t slot);
void QAbstractVideoSurface_QBaseTimerEvent(QAbstractVideoSurface* self, QTimerEvent* event);
void QAbstractVideoSurface_ChildEvent(QAbstractVideoSurface* self, QChildEvent* event);
void QAbstractVideoSurface_OnChildEvent(QAbstractVideoSurface* self, intptr_t slot);
void QAbstractVideoSurface_QBaseChildEvent(QAbstractVideoSurface* self, QChildEvent* event);
void QAbstractVideoSurface_CustomEvent(QAbstractVideoSurface* self, QEvent* event);
void QAbstractVideoSurface_OnCustomEvent(QAbstractVideoSurface* self, intptr_t slot);
void QAbstractVideoSurface_QBaseCustomEvent(QAbstractVideoSurface* self, QEvent* event);
void QAbstractVideoSurface_ConnectNotify(QAbstractVideoSurface* self, QMetaMethod* signal);
void QAbstractVideoSurface_OnConnectNotify(QAbstractVideoSurface* self, intptr_t slot);
void QAbstractVideoSurface_QBaseConnectNotify(QAbstractVideoSurface* self, QMetaMethod* signal);
void QAbstractVideoSurface_DisconnectNotify(QAbstractVideoSurface* self, QMetaMethod* signal);
void QAbstractVideoSurface_OnDisconnectNotify(QAbstractVideoSurface* self, intptr_t slot);
void QAbstractVideoSurface_QBaseDisconnectNotify(QAbstractVideoSurface* self, QMetaMethod* signal);
void QAbstractVideoSurface_SetError(QAbstractVideoSurface* self, int errorVal);
void QAbstractVideoSurface_OnSetError(QAbstractVideoSurface* self, intptr_t slot);
void QAbstractVideoSurface_QBaseSetError(QAbstractVideoSurface* self, int errorVal);
void QAbstractVideoSurface_SetNativeResolution(QAbstractVideoSurface* self, QSize* resolution);
void QAbstractVideoSurface_OnSetNativeResolution(QAbstractVideoSurface* self, intptr_t slot);
void QAbstractVideoSurface_QBaseSetNativeResolution(QAbstractVideoSurface* self, QSize* resolution);
QObject* QAbstractVideoSurface_Sender(const QAbstractVideoSurface* self);
void QAbstractVideoSurface_OnSender(const QAbstractVideoSurface* self, intptr_t slot);
QObject* QAbstractVideoSurface_QBaseSender(const QAbstractVideoSurface* self);
int QAbstractVideoSurface_SenderSignalIndex(const QAbstractVideoSurface* self);
void QAbstractVideoSurface_OnSenderSignalIndex(const QAbstractVideoSurface* self, intptr_t slot);
int QAbstractVideoSurface_QBaseSenderSignalIndex(const QAbstractVideoSurface* self);
int QAbstractVideoSurface_Receivers(const QAbstractVideoSurface* self, const char* signal);
void QAbstractVideoSurface_OnReceivers(const QAbstractVideoSurface* self, intptr_t slot);
int QAbstractVideoSurface_QBaseReceivers(const QAbstractVideoSurface* self, const char* signal);
bool QAbstractVideoSurface_IsSignalConnected(const QAbstractVideoSurface* self, QMetaMethod* signal);
void QAbstractVideoSurface_OnIsSignalConnected(const QAbstractVideoSurface* self, intptr_t slot);
bool QAbstractVideoSurface_QBaseIsSignalConnected(const QAbstractVideoSurface* self, QMetaMethod* signal);
void QAbstractVideoSurface_Delete(QAbstractVideoSurface* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
