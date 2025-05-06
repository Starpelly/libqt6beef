#pragma once
#ifndef SRC_QT_MULTIMEDIAC_LIBQVIDEOSINK_H
#define SRC_QT_MULTIMEDIAC_LIBQVIDEOSINK_H

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
typedef struct QSize QSize;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QVideoFrame QVideoFrame;
typedef struct QVideoSink QVideoSink;
#endif

QTLIBC_API QVideoSink* QVideoSink_new();
QTLIBC_API QVideoSink* QVideoSink_new2(QObject* parent);
QTLIBC_API QMetaObject* QVideoSink_MetaObject(const QVideoSink* self);
QTLIBC_API void* QVideoSink_Metacast(QVideoSink* self, const char* param1);
QTLIBC_API int QVideoSink_Metacall(QVideoSink* self, int param1, int param2, void** param3);
QTLIBC_API void QVideoSink_OnMetacall(QVideoSink* self, intptr_t slot);
QTLIBC_API int QVideoSink_QBaseMetacall(QVideoSink* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QVideoSink_Tr(const char* s);
QTLIBC_API QSize* QVideoSink_VideoSize(const QVideoSink* self);
QTLIBC_API libqt_string QVideoSink_SubtitleText(const QVideoSink* self);
QTLIBC_API void QVideoSink_SetSubtitleText(QVideoSink* self, libqt_string subtitle);
QTLIBC_API void QVideoSink_SetVideoFrame(QVideoSink* self, QVideoFrame* frame);
QTLIBC_API QVideoFrame* QVideoSink_VideoFrame(const QVideoSink* self);
QTLIBC_API void QVideoSink_VideoFrameChanged(const QVideoSink* self, QVideoFrame* frame);
QTLIBC_API void QVideoSink_Connect_VideoFrameChanged(QVideoSink* self, intptr_t slot);
QTLIBC_API void QVideoSink_SubtitleTextChanged(const QVideoSink* self, libqt_string subtitleText);
QTLIBC_API void QVideoSink_Connect_SubtitleTextChanged(QVideoSink* self, intptr_t slot);
QTLIBC_API void QVideoSink_VideoSizeChanged(QVideoSink* self);
QTLIBC_API void QVideoSink_Connect_VideoSizeChanged(QVideoSink* self, intptr_t slot);
QTLIBC_API libqt_string QVideoSink_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QVideoSink_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QVideoSink_Event(QVideoSink* self, QEvent* event);
QTLIBC_API void QVideoSink_OnEvent(QVideoSink* self, intptr_t slot);
QTLIBC_API bool QVideoSink_QBaseEvent(QVideoSink* self, QEvent* event);
QTLIBC_API bool QVideoSink_EventFilter(QVideoSink* self, QObject* watched, QEvent* event);
QTLIBC_API void QVideoSink_OnEventFilter(QVideoSink* self, intptr_t slot);
QTLIBC_API bool QVideoSink_QBaseEventFilter(QVideoSink* self, QObject* watched, QEvent* event);
QTLIBC_API void QVideoSink_TimerEvent(QVideoSink* self, QTimerEvent* event);
QTLIBC_API void QVideoSink_OnTimerEvent(QVideoSink* self, intptr_t slot);
QTLIBC_API void QVideoSink_QBaseTimerEvent(QVideoSink* self, QTimerEvent* event);
QTLIBC_API void QVideoSink_ChildEvent(QVideoSink* self, QChildEvent* event);
QTLIBC_API void QVideoSink_OnChildEvent(QVideoSink* self, intptr_t slot);
QTLIBC_API void QVideoSink_QBaseChildEvent(QVideoSink* self, QChildEvent* event);
QTLIBC_API void QVideoSink_CustomEvent(QVideoSink* self, QEvent* event);
QTLIBC_API void QVideoSink_OnCustomEvent(QVideoSink* self, intptr_t slot);
QTLIBC_API void QVideoSink_QBaseCustomEvent(QVideoSink* self, QEvent* event);
QTLIBC_API void QVideoSink_ConnectNotify(QVideoSink* self, QMetaMethod* signal);
QTLIBC_API void QVideoSink_OnConnectNotify(QVideoSink* self, intptr_t slot);
QTLIBC_API void QVideoSink_QBaseConnectNotify(QVideoSink* self, QMetaMethod* signal);
QTLIBC_API void QVideoSink_DisconnectNotify(QVideoSink* self, QMetaMethod* signal);
QTLIBC_API void QVideoSink_OnDisconnectNotify(QVideoSink* self, intptr_t slot);
QTLIBC_API void QVideoSink_QBaseDisconnectNotify(QVideoSink* self, QMetaMethod* signal);
QTLIBC_API QObject* QVideoSink_Sender(const QVideoSink* self);
QTLIBC_API void QVideoSink_OnSender(const QVideoSink* self, intptr_t slot);
QTLIBC_API QObject* QVideoSink_QBaseSender(const QVideoSink* self);
QTLIBC_API int QVideoSink_SenderSignalIndex(const QVideoSink* self);
QTLIBC_API void QVideoSink_OnSenderSignalIndex(const QVideoSink* self, intptr_t slot);
QTLIBC_API int QVideoSink_QBaseSenderSignalIndex(const QVideoSink* self);
QTLIBC_API int QVideoSink_Receivers(const QVideoSink* self, const char* signal);
QTLIBC_API void QVideoSink_OnReceivers(const QVideoSink* self, intptr_t slot);
QTLIBC_API int QVideoSink_QBaseReceivers(const QVideoSink* self, const char* signal);
QTLIBC_API bool QVideoSink_IsSignalConnected(const QVideoSink* self, QMetaMethod* signal);
QTLIBC_API void QVideoSink_OnIsSignalConnected(const QVideoSink* self, intptr_t slot);
QTLIBC_API bool QVideoSink_QBaseIsSignalConnected(const QVideoSink* self, QMetaMethod* signal);
QTLIBC_API void QVideoSink_Delete(QVideoSink* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
