#pragma once
#ifndef SRC_QTC_LIBQMOVIE_H
#define SRC_QTC_LIBQMOVIE_H

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
typedef struct QColor QColor;
typedef struct QEvent QEvent;
typedef struct QIODevice QIODevice;
typedef struct QImage QImage;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QMovie QMovie;
typedef struct QObject QObject;
typedef struct QPixmap QPixmap;
typedef struct QRect QRect;
typedef struct QSize QSize;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QMovie::CacheMode CacheMode;   // C++ enum
typedef QMovie::MovieState MovieState; // C++ enum
#else
typedef int CacheMode;  // C ABI enum
typedef int MovieState; // C ABI enum
#endif

QTLIBC_API QMovie* QMovie_new();
QTLIBC_API QMovie* QMovie_new2(QIODevice* device);
QTLIBC_API QMovie* QMovie_new3(libqt_string fileName);
QTLIBC_API QMovie* QMovie_new4(QObject* parent);
QTLIBC_API QMovie* QMovie_new5(QIODevice* device, libqt_string format);
QTLIBC_API QMovie* QMovie_new6(QIODevice* device, libqt_string format, QObject* parent);
QTLIBC_API QMovie* QMovie_new7(libqt_string fileName, libqt_string format);
QTLIBC_API QMovie* QMovie_new8(libqt_string fileName, libqt_string format, QObject* parent);
QTLIBC_API QMetaObject* QMovie_MetaObject(const QMovie* self);
QTLIBC_API void* QMovie_Metacast(QMovie* self, const char* param1);
QTLIBC_API int QMovie_Metacall(QMovie* self, int param1, int param2, void** param3);
QTLIBC_API void QMovie_OnMetacall(QMovie* self, intptr_t slot);
QTLIBC_API int QMovie_QBaseMetacall(QMovie* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QMovie_Tr(const char* s);
QTLIBC_API libqt_list /* of libqt_string */ QMovie_SupportedFormats();
QTLIBC_API void QMovie_SetDevice(QMovie* self, QIODevice* device);
QTLIBC_API QIODevice* QMovie_Device(const QMovie* self);
QTLIBC_API void QMovie_SetFileName(QMovie* self, libqt_string fileName);
QTLIBC_API libqt_string QMovie_FileName(const QMovie* self);
QTLIBC_API void QMovie_SetFormat(QMovie* self, libqt_string format);
QTLIBC_API libqt_string QMovie_Format(const QMovie* self);
QTLIBC_API void QMovie_SetBackgroundColor(QMovie* self, QColor* color);
QTLIBC_API QColor* QMovie_BackgroundColor(const QMovie* self);
QTLIBC_API int QMovie_State(const QMovie* self);
QTLIBC_API QRect* QMovie_FrameRect(const QMovie* self);
QTLIBC_API QImage* QMovie_CurrentImage(const QMovie* self);
QTLIBC_API QPixmap* QMovie_CurrentPixmap(const QMovie* self);
QTLIBC_API bool QMovie_IsValid(const QMovie* self);
QTLIBC_API int QMovie_LastError(const QMovie* self);
QTLIBC_API libqt_string QMovie_LastErrorString(const QMovie* self);
QTLIBC_API bool QMovie_JumpToFrame(QMovie* self, int frameNumber);
QTLIBC_API int QMovie_LoopCount(const QMovie* self);
QTLIBC_API int QMovie_FrameCount(const QMovie* self);
QTLIBC_API int QMovie_NextFrameDelay(const QMovie* self);
QTLIBC_API int QMovie_CurrentFrameNumber(const QMovie* self);
QTLIBC_API int QMovie_Speed(const QMovie* self);
QTLIBC_API QSize* QMovie_ScaledSize(QMovie* self);
QTLIBC_API void QMovie_SetScaledSize(QMovie* self, QSize* size);
QTLIBC_API int QMovie_CacheMode(const QMovie* self);
QTLIBC_API void QMovie_SetCacheMode(QMovie* self, int mode);
QTLIBC_API void QMovie_Started(QMovie* self);
QTLIBC_API void QMovie_Connect_Started(QMovie* self, intptr_t slot);
QTLIBC_API void QMovie_Resized(QMovie* self, QSize* size);
QTLIBC_API void QMovie_Connect_Resized(QMovie* self, intptr_t slot);
QTLIBC_API void QMovie_Updated(QMovie* self, QRect* rect);
QTLIBC_API void QMovie_Connect_Updated(QMovie* self, intptr_t slot);
QTLIBC_API void QMovie_StateChanged(QMovie* self, int state);
QTLIBC_API void QMovie_Connect_StateChanged(QMovie* self, intptr_t slot);
QTLIBC_API void QMovie_Error(QMovie* self, int errorVal);
QTLIBC_API void QMovie_Connect_Error(QMovie* self, intptr_t slot);
QTLIBC_API void QMovie_Finished(QMovie* self);
QTLIBC_API void QMovie_Connect_Finished(QMovie* self, intptr_t slot);
QTLIBC_API void QMovie_FrameChanged(QMovie* self, int frameNumber);
QTLIBC_API void QMovie_Connect_FrameChanged(QMovie* self, intptr_t slot);
QTLIBC_API void QMovie_Start(QMovie* self);
QTLIBC_API bool QMovie_JumpToNextFrame(QMovie* self);
QTLIBC_API void QMovie_SetPaused(QMovie* self, bool paused);
QTLIBC_API void QMovie_Stop(QMovie* self);
QTLIBC_API void QMovie_SetSpeed(QMovie* self, int percentSpeed);
QTLIBC_API libqt_string QMovie_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QMovie_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QMovie_Event(QMovie* self, QEvent* event);
QTLIBC_API void QMovie_OnEvent(QMovie* self, intptr_t slot);
QTLIBC_API bool QMovie_QBaseEvent(QMovie* self, QEvent* event);
QTLIBC_API bool QMovie_EventFilter(QMovie* self, QObject* watched, QEvent* event);
QTLIBC_API void QMovie_OnEventFilter(QMovie* self, intptr_t slot);
QTLIBC_API bool QMovie_QBaseEventFilter(QMovie* self, QObject* watched, QEvent* event);
QTLIBC_API void QMovie_TimerEvent(QMovie* self, QTimerEvent* event);
QTLIBC_API void QMovie_OnTimerEvent(QMovie* self, intptr_t slot);
QTLIBC_API void QMovie_QBaseTimerEvent(QMovie* self, QTimerEvent* event);
QTLIBC_API void QMovie_ChildEvent(QMovie* self, QChildEvent* event);
QTLIBC_API void QMovie_OnChildEvent(QMovie* self, intptr_t slot);
QTLIBC_API void QMovie_QBaseChildEvent(QMovie* self, QChildEvent* event);
QTLIBC_API void QMovie_CustomEvent(QMovie* self, QEvent* event);
QTLIBC_API void QMovie_OnCustomEvent(QMovie* self, intptr_t slot);
QTLIBC_API void QMovie_QBaseCustomEvent(QMovie* self, QEvent* event);
QTLIBC_API void QMovie_ConnectNotify(QMovie* self, QMetaMethod* signal);
QTLIBC_API void QMovie_OnConnectNotify(QMovie* self, intptr_t slot);
QTLIBC_API void QMovie_QBaseConnectNotify(QMovie* self, QMetaMethod* signal);
QTLIBC_API void QMovie_DisconnectNotify(QMovie* self, QMetaMethod* signal);
QTLIBC_API void QMovie_OnDisconnectNotify(QMovie* self, intptr_t slot);
QTLIBC_API void QMovie_QBaseDisconnectNotify(QMovie* self, QMetaMethod* signal);
QTLIBC_API QObject* QMovie_Sender(const QMovie* self);
QTLIBC_API void QMovie_OnSender(const QMovie* self, intptr_t slot);
QTLIBC_API QObject* QMovie_QBaseSender(const QMovie* self);
QTLIBC_API int QMovie_SenderSignalIndex(const QMovie* self);
QTLIBC_API void QMovie_OnSenderSignalIndex(const QMovie* self, intptr_t slot);
QTLIBC_API int QMovie_QBaseSenderSignalIndex(const QMovie* self);
QTLIBC_API int QMovie_Receivers(const QMovie* self, const char* signal);
QTLIBC_API void QMovie_OnReceivers(const QMovie* self, intptr_t slot);
QTLIBC_API int QMovie_QBaseReceivers(const QMovie* self, const char* signal);
QTLIBC_API bool QMovie_IsSignalConnected(const QMovie* self, QMetaMethod* signal);
QTLIBC_API void QMovie_OnIsSignalConnected(const QMovie* self, intptr_t slot);
QTLIBC_API bool QMovie_QBaseIsSignalConnected(const QMovie* self, QMetaMethod* signal);
QTLIBC_API void QMovie_Delete(QMovie* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
