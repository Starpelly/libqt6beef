#pragma once
#ifndef SRC_QT_MULTIMEDIAC_LIBQMEDIARECORDER_H
#define SRC_QT_MULTIMEDIAC_LIBQMEDIARECORDER_H

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
typedef struct QMediaCaptureSession QMediaCaptureSession;
typedef struct QMediaFormat QMediaFormat;
typedef struct QMediaMetaData QMediaMetaData;
typedef struct QMediaRecorder QMediaRecorder;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QSize QSize;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QMediaRecorder::EncodingMode EncodingMode;   // C++ enum
typedef QMediaRecorder::Error Error;                 // C++ enum
typedef QMediaRecorder::Quality Quality;             // C++ enum
typedef QMediaRecorder::RecorderState RecorderState; // C++ enum
#else
typedef int EncodingMode;  // C ABI enum
typedef int Error;         // C ABI enum
typedef int Quality;       // C ABI enum
typedef int RecorderState; // C ABI enum
#endif

QTLIBC_API QMediaRecorder* QMediaRecorder_new();
QTLIBC_API QMediaRecorder* QMediaRecorder_new2(QObject* parent);
QTLIBC_API QMetaObject* QMediaRecorder_MetaObject(const QMediaRecorder* self);
QTLIBC_API void* QMediaRecorder_Metacast(QMediaRecorder* self, const char* param1);
QTLIBC_API int QMediaRecorder_Metacall(QMediaRecorder* self, int param1, int param2, void** param3);
QTLIBC_API void QMediaRecorder_OnMetacall(QMediaRecorder* self, intptr_t slot);
QTLIBC_API int QMediaRecorder_QBaseMetacall(QMediaRecorder* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QMediaRecorder_Tr(const char* s);
QTLIBC_API bool QMediaRecorder_IsAvailable(const QMediaRecorder* self);
QTLIBC_API QUrl* QMediaRecorder_OutputLocation(const QMediaRecorder* self);
QTLIBC_API void QMediaRecorder_SetOutputLocation(QMediaRecorder* self, QUrl* location);
QTLIBC_API QUrl* QMediaRecorder_ActualLocation(const QMediaRecorder* self);
QTLIBC_API int QMediaRecorder_RecorderState(const QMediaRecorder* self);
QTLIBC_API int QMediaRecorder_Error(const QMediaRecorder* self);
QTLIBC_API libqt_string QMediaRecorder_ErrorString(const QMediaRecorder* self);
QTLIBC_API long long QMediaRecorder_Duration(const QMediaRecorder* self);
QTLIBC_API QMediaFormat* QMediaRecorder_MediaFormat(const QMediaRecorder* self);
QTLIBC_API void QMediaRecorder_SetMediaFormat(QMediaRecorder* self, QMediaFormat* format);
QTLIBC_API int QMediaRecorder_EncodingMode(const QMediaRecorder* self);
QTLIBC_API void QMediaRecorder_SetEncodingMode(QMediaRecorder* self, int encodingMode);
QTLIBC_API int QMediaRecorder_Quality(const QMediaRecorder* self);
QTLIBC_API void QMediaRecorder_SetQuality(QMediaRecorder* self, int quality);
QTLIBC_API QSize* QMediaRecorder_VideoResolution(const QMediaRecorder* self);
QTLIBC_API void QMediaRecorder_SetVideoResolution(QMediaRecorder* self, QSize* videoResolution);
QTLIBC_API void QMediaRecorder_SetVideoResolution2(QMediaRecorder* self, int width, int height);
QTLIBC_API double QMediaRecorder_VideoFrameRate(const QMediaRecorder* self);
QTLIBC_API void QMediaRecorder_SetVideoFrameRate(QMediaRecorder* self, double frameRate);
QTLIBC_API int QMediaRecorder_VideoBitRate(const QMediaRecorder* self);
QTLIBC_API void QMediaRecorder_SetVideoBitRate(QMediaRecorder* self, int bitRate);
QTLIBC_API int QMediaRecorder_AudioBitRate(const QMediaRecorder* self);
QTLIBC_API void QMediaRecorder_SetAudioBitRate(QMediaRecorder* self, int bitRate);
QTLIBC_API int QMediaRecorder_AudioChannelCount(const QMediaRecorder* self);
QTLIBC_API void QMediaRecorder_SetAudioChannelCount(QMediaRecorder* self, int channels);
QTLIBC_API int QMediaRecorder_AudioSampleRate(const QMediaRecorder* self);
QTLIBC_API void QMediaRecorder_SetAudioSampleRate(QMediaRecorder* self, int sampleRate);
QTLIBC_API QMediaMetaData* QMediaRecorder_MetaData(const QMediaRecorder* self);
QTLIBC_API void QMediaRecorder_SetMetaData(QMediaRecorder* self, QMediaMetaData* metaData);
QTLIBC_API void QMediaRecorder_AddMetaData(QMediaRecorder* self, QMediaMetaData* metaData);
QTLIBC_API QMediaCaptureSession* QMediaRecorder_CaptureSession(const QMediaRecorder* self);
QTLIBC_API void QMediaRecorder_Record(QMediaRecorder* self);
QTLIBC_API void QMediaRecorder_Pause(QMediaRecorder* self);
QTLIBC_API void QMediaRecorder_Stop(QMediaRecorder* self);
QTLIBC_API void QMediaRecorder_RecorderStateChanged(QMediaRecorder* self, int state);
QTLIBC_API void QMediaRecorder_Connect_RecorderStateChanged(QMediaRecorder* self, intptr_t slot);
QTLIBC_API void QMediaRecorder_DurationChanged(QMediaRecorder* self, long long duration);
QTLIBC_API void QMediaRecorder_Connect_DurationChanged(QMediaRecorder* self, intptr_t slot);
QTLIBC_API void QMediaRecorder_ActualLocationChanged(QMediaRecorder* self, QUrl* location);
QTLIBC_API void QMediaRecorder_Connect_ActualLocationChanged(QMediaRecorder* self, intptr_t slot);
QTLIBC_API void QMediaRecorder_EncoderSettingsChanged(QMediaRecorder* self);
QTLIBC_API void QMediaRecorder_Connect_EncoderSettingsChanged(QMediaRecorder* self, intptr_t slot);
QTLIBC_API void QMediaRecorder_ErrorOccurred(QMediaRecorder* self, int errorVal, libqt_string errorString);
QTLIBC_API void QMediaRecorder_Connect_ErrorOccurred(QMediaRecorder* self, intptr_t slot);
QTLIBC_API void QMediaRecorder_ErrorChanged(QMediaRecorder* self);
QTLIBC_API void QMediaRecorder_Connect_ErrorChanged(QMediaRecorder* self, intptr_t slot);
QTLIBC_API void QMediaRecorder_MetaDataChanged(QMediaRecorder* self);
QTLIBC_API void QMediaRecorder_Connect_MetaDataChanged(QMediaRecorder* self, intptr_t slot);
QTLIBC_API void QMediaRecorder_MediaFormatChanged(QMediaRecorder* self);
QTLIBC_API void QMediaRecorder_Connect_MediaFormatChanged(QMediaRecorder* self, intptr_t slot);
QTLIBC_API void QMediaRecorder_EncodingModeChanged(QMediaRecorder* self);
QTLIBC_API void QMediaRecorder_Connect_EncodingModeChanged(QMediaRecorder* self, intptr_t slot);
QTLIBC_API void QMediaRecorder_QualityChanged(QMediaRecorder* self);
QTLIBC_API void QMediaRecorder_Connect_QualityChanged(QMediaRecorder* self, intptr_t slot);
QTLIBC_API void QMediaRecorder_VideoResolutionChanged(QMediaRecorder* self);
QTLIBC_API void QMediaRecorder_Connect_VideoResolutionChanged(QMediaRecorder* self, intptr_t slot);
QTLIBC_API void QMediaRecorder_VideoFrameRateChanged(QMediaRecorder* self);
QTLIBC_API void QMediaRecorder_Connect_VideoFrameRateChanged(QMediaRecorder* self, intptr_t slot);
QTLIBC_API void QMediaRecorder_VideoBitRateChanged(QMediaRecorder* self);
QTLIBC_API void QMediaRecorder_Connect_VideoBitRateChanged(QMediaRecorder* self, intptr_t slot);
QTLIBC_API void QMediaRecorder_AudioBitRateChanged(QMediaRecorder* self);
QTLIBC_API void QMediaRecorder_Connect_AudioBitRateChanged(QMediaRecorder* self, intptr_t slot);
QTLIBC_API void QMediaRecorder_AudioChannelCountChanged(QMediaRecorder* self);
QTLIBC_API void QMediaRecorder_Connect_AudioChannelCountChanged(QMediaRecorder* self, intptr_t slot);
QTLIBC_API void QMediaRecorder_AudioSampleRateChanged(QMediaRecorder* self);
QTLIBC_API void QMediaRecorder_Connect_AudioSampleRateChanged(QMediaRecorder* self, intptr_t slot);
QTLIBC_API libqt_string QMediaRecorder_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QMediaRecorder_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QMediaRecorder_Event(QMediaRecorder* self, QEvent* event);
QTLIBC_API void QMediaRecorder_OnEvent(QMediaRecorder* self, intptr_t slot);
QTLIBC_API bool QMediaRecorder_QBaseEvent(QMediaRecorder* self, QEvent* event);
QTLIBC_API bool QMediaRecorder_EventFilter(QMediaRecorder* self, QObject* watched, QEvent* event);
QTLIBC_API void QMediaRecorder_OnEventFilter(QMediaRecorder* self, intptr_t slot);
QTLIBC_API bool QMediaRecorder_QBaseEventFilter(QMediaRecorder* self, QObject* watched, QEvent* event);
QTLIBC_API void QMediaRecorder_TimerEvent(QMediaRecorder* self, QTimerEvent* event);
QTLIBC_API void QMediaRecorder_OnTimerEvent(QMediaRecorder* self, intptr_t slot);
QTLIBC_API void QMediaRecorder_QBaseTimerEvent(QMediaRecorder* self, QTimerEvent* event);
QTLIBC_API void QMediaRecorder_ChildEvent(QMediaRecorder* self, QChildEvent* event);
QTLIBC_API void QMediaRecorder_OnChildEvent(QMediaRecorder* self, intptr_t slot);
QTLIBC_API void QMediaRecorder_QBaseChildEvent(QMediaRecorder* self, QChildEvent* event);
QTLIBC_API void QMediaRecorder_CustomEvent(QMediaRecorder* self, QEvent* event);
QTLIBC_API void QMediaRecorder_OnCustomEvent(QMediaRecorder* self, intptr_t slot);
QTLIBC_API void QMediaRecorder_QBaseCustomEvent(QMediaRecorder* self, QEvent* event);
QTLIBC_API void QMediaRecorder_ConnectNotify(QMediaRecorder* self, QMetaMethod* signal);
QTLIBC_API void QMediaRecorder_OnConnectNotify(QMediaRecorder* self, intptr_t slot);
QTLIBC_API void QMediaRecorder_QBaseConnectNotify(QMediaRecorder* self, QMetaMethod* signal);
QTLIBC_API void QMediaRecorder_DisconnectNotify(QMediaRecorder* self, QMetaMethod* signal);
QTLIBC_API void QMediaRecorder_OnDisconnectNotify(QMediaRecorder* self, intptr_t slot);
QTLIBC_API void QMediaRecorder_QBaseDisconnectNotify(QMediaRecorder* self, QMetaMethod* signal);
QTLIBC_API QObject* QMediaRecorder_Sender(const QMediaRecorder* self);
QTLIBC_API void QMediaRecorder_OnSender(const QMediaRecorder* self, intptr_t slot);
QTLIBC_API QObject* QMediaRecorder_QBaseSender(const QMediaRecorder* self);
QTLIBC_API int QMediaRecorder_SenderSignalIndex(const QMediaRecorder* self);
QTLIBC_API void QMediaRecorder_OnSenderSignalIndex(const QMediaRecorder* self, intptr_t slot);
QTLIBC_API int QMediaRecorder_QBaseSenderSignalIndex(const QMediaRecorder* self);
QTLIBC_API int QMediaRecorder_Receivers(const QMediaRecorder* self, const char* signal);
QTLIBC_API void QMediaRecorder_OnReceivers(const QMediaRecorder* self, intptr_t slot);
QTLIBC_API int QMediaRecorder_QBaseReceivers(const QMediaRecorder* self, const char* signal);
QTLIBC_API bool QMediaRecorder_IsSignalConnected(const QMediaRecorder* self, QMetaMethod* signal);
QTLIBC_API void QMediaRecorder_OnIsSignalConnected(const QMediaRecorder* self, intptr_t slot);
QTLIBC_API bool QMediaRecorder_QBaseIsSignalConnected(const QMediaRecorder* self, QMetaMethod* signal);
QTLIBC_API void QMediaRecorder_Delete(QMediaRecorder* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
