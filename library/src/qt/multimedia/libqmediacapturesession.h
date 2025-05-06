#pragma once
#ifndef SRC_QT_MULTIMEDIAC_LIBQMEDIACAPTURESESSION_H
#define SRC_QT_MULTIMEDIAC_LIBQMEDIACAPTURESESSION_H

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
typedef struct QAudioInput QAudioInput;
typedef struct QAudioOutput QAudioOutput;
typedef struct QBindingStorage QBindingStorage;
typedef struct QCamera QCamera;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QImageCapture QImageCapture;
typedef struct QMediaCaptureSession QMediaCaptureSession;
typedef struct QMediaRecorder QMediaRecorder;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QVideoSink QVideoSink;
#endif

QTLIBC_API QMediaCaptureSession* QMediaCaptureSession_new();
QTLIBC_API QMediaCaptureSession* QMediaCaptureSession_new2(QObject* parent);
QTLIBC_API QMetaObject* QMediaCaptureSession_MetaObject(const QMediaCaptureSession* self);
QTLIBC_API void* QMediaCaptureSession_Metacast(QMediaCaptureSession* self, const char* param1);
QTLIBC_API int QMediaCaptureSession_Metacall(QMediaCaptureSession* self, int param1, int param2, void** param3);
QTLIBC_API void QMediaCaptureSession_OnMetacall(QMediaCaptureSession* self, intptr_t slot);
QTLIBC_API int QMediaCaptureSession_QBaseMetacall(QMediaCaptureSession* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QMediaCaptureSession_Tr(const char* s);
QTLIBC_API QAudioInput* QMediaCaptureSession_AudioInput(const QMediaCaptureSession* self);
QTLIBC_API void QMediaCaptureSession_SetAudioInput(QMediaCaptureSession* self, QAudioInput* input);
QTLIBC_API QCamera* QMediaCaptureSession_Camera(const QMediaCaptureSession* self);
QTLIBC_API void QMediaCaptureSession_SetCamera(QMediaCaptureSession* self, QCamera* camera);
QTLIBC_API QImageCapture* QMediaCaptureSession_ImageCapture(QMediaCaptureSession* self);
QTLIBC_API void QMediaCaptureSession_SetImageCapture(QMediaCaptureSession* self, QImageCapture* imageCapture);
QTLIBC_API QMediaRecorder* QMediaCaptureSession_Recorder(QMediaCaptureSession* self);
QTLIBC_API void QMediaCaptureSession_SetRecorder(QMediaCaptureSession* self, QMediaRecorder* recorder);
QTLIBC_API void QMediaCaptureSession_SetVideoOutput(QMediaCaptureSession* self, QObject* output);
QTLIBC_API QObject* QMediaCaptureSession_VideoOutput(const QMediaCaptureSession* self);
QTLIBC_API void QMediaCaptureSession_SetVideoSink(QMediaCaptureSession* self, QVideoSink* sink);
QTLIBC_API QVideoSink* QMediaCaptureSession_VideoSink(const QMediaCaptureSession* self);
QTLIBC_API void QMediaCaptureSession_SetAudioOutput(QMediaCaptureSession* self, QAudioOutput* output);
QTLIBC_API QAudioOutput* QMediaCaptureSession_AudioOutput(const QMediaCaptureSession* self);
QTLIBC_API void QMediaCaptureSession_AudioInputChanged(QMediaCaptureSession* self);
QTLIBC_API void QMediaCaptureSession_Connect_AudioInputChanged(QMediaCaptureSession* self, intptr_t slot);
QTLIBC_API void QMediaCaptureSession_CameraChanged(QMediaCaptureSession* self);
QTLIBC_API void QMediaCaptureSession_Connect_CameraChanged(QMediaCaptureSession* self, intptr_t slot);
QTLIBC_API void QMediaCaptureSession_ImageCaptureChanged(QMediaCaptureSession* self);
QTLIBC_API void QMediaCaptureSession_Connect_ImageCaptureChanged(QMediaCaptureSession* self, intptr_t slot);
QTLIBC_API void QMediaCaptureSession_RecorderChanged(QMediaCaptureSession* self);
QTLIBC_API void QMediaCaptureSession_Connect_RecorderChanged(QMediaCaptureSession* self, intptr_t slot);
QTLIBC_API void QMediaCaptureSession_VideoOutputChanged(QMediaCaptureSession* self);
QTLIBC_API void QMediaCaptureSession_Connect_VideoOutputChanged(QMediaCaptureSession* self, intptr_t slot);
QTLIBC_API void QMediaCaptureSession_AudioOutputChanged(QMediaCaptureSession* self);
QTLIBC_API void QMediaCaptureSession_Connect_AudioOutputChanged(QMediaCaptureSession* self, intptr_t slot);
QTLIBC_API libqt_string QMediaCaptureSession_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QMediaCaptureSession_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QMediaCaptureSession_Event(QMediaCaptureSession* self, QEvent* event);
QTLIBC_API void QMediaCaptureSession_OnEvent(QMediaCaptureSession* self, intptr_t slot);
QTLIBC_API bool QMediaCaptureSession_QBaseEvent(QMediaCaptureSession* self, QEvent* event);
QTLIBC_API bool QMediaCaptureSession_EventFilter(QMediaCaptureSession* self, QObject* watched, QEvent* event);
QTLIBC_API void QMediaCaptureSession_OnEventFilter(QMediaCaptureSession* self, intptr_t slot);
QTLIBC_API bool QMediaCaptureSession_QBaseEventFilter(QMediaCaptureSession* self, QObject* watched, QEvent* event);
QTLIBC_API void QMediaCaptureSession_TimerEvent(QMediaCaptureSession* self, QTimerEvent* event);
QTLIBC_API void QMediaCaptureSession_OnTimerEvent(QMediaCaptureSession* self, intptr_t slot);
QTLIBC_API void QMediaCaptureSession_QBaseTimerEvent(QMediaCaptureSession* self, QTimerEvent* event);
QTLIBC_API void QMediaCaptureSession_ChildEvent(QMediaCaptureSession* self, QChildEvent* event);
QTLIBC_API void QMediaCaptureSession_OnChildEvent(QMediaCaptureSession* self, intptr_t slot);
QTLIBC_API void QMediaCaptureSession_QBaseChildEvent(QMediaCaptureSession* self, QChildEvent* event);
QTLIBC_API void QMediaCaptureSession_CustomEvent(QMediaCaptureSession* self, QEvent* event);
QTLIBC_API void QMediaCaptureSession_OnCustomEvent(QMediaCaptureSession* self, intptr_t slot);
QTLIBC_API void QMediaCaptureSession_QBaseCustomEvent(QMediaCaptureSession* self, QEvent* event);
QTLIBC_API void QMediaCaptureSession_ConnectNotify(QMediaCaptureSession* self, QMetaMethod* signal);
QTLIBC_API void QMediaCaptureSession_OnConnectNotify(QMediaCaptureSession* self, intptr_t slot);
QTLIBC_API void QMediaCaptureSession_QBaseConnectNotify(QMediaCaptureSession* self, QMetaMethod* signal);
QTLIBC_API void QMediaCaptureSession_DisconnectNotify(QMediaCaptureSession* self, QMetaMethod* signal);
QTLIBC_API void QMediaCaptureSession_OnDisconnectNotify(QMediaCaptureSession* self, intptr_t slot);
QTLIBC_API void QMediaCaptureSession_QBaseDisconnectNotify(QMediaCaptureSession* self, QMetaMethod* signal);
QTLIBC_API QObject* QMediaCaptureSession_Sender(const QMediaCaptureSession* self);
QTLIBC_API void QMediaCaptureSession_OnSender(const QMediaCaptureSession* self, intptr_t slot);
QTLIBC_API QObject* QMediaCaptureSession_QBaseSender(const QMediaCaptureSession* self);
QTLIBC_API int QMediaCaptureSession_SenderSignalIndex(const QMediaCaptureSession* self);
QTLIBC_API void QMediaCaptureSession_OnSenderSignalIndex(const QMediaCaptureSession* self, intptr_t slot);
QTLIBC_API int QMediaCaptureSession_QBaseSenderSignalIndex(const QMediaCaptureSession* self);
QTLIBC_API int QMediaCaptureSession_Receivers(const QMediaCaptureSession* self, const char* signal);
QTLIBC_API void QMediaCaptureSession_OnReceivers(const QMediaCaptureSession* self, intptr_t slot);
QTLIBC_API int QMediaCaptureSession_QBaseReceivers(const QMediaCaptureSession* self, const char* signal);
QTLIBC_API bool QMediaCaptureSession_IsSignalConnected(const QMediaCaptureSession* self, QMetaMethod* signal);
QTLIBC_API void QMediaCaptureSession_OnIsSignalConnected(const QMediaCaptureSession* self, intptr_t slot);
QTLIBC_API bool QMediaCaptureSession_QBaseIsSignalConnected(const QMediaCaptureSession* self, QMetaMethod* signal);
QTLIBC_API void QMediaCaptureSession_Delete(QMediaCaptureSession* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
