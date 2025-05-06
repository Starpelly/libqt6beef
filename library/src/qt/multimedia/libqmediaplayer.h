#pragma once
#ifndef SRC_QT_MULTIMEDIAC_LIBQMEDIAPLAYER_H
#define SRC_QT_MULTIMEDIAC_LIBQMEDIAPLAYER_H

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
typedef struct QAudioOutput QAudioOutput;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QIODevice QIODevice;
typedef struct QMediaMetaData QMediaMetaData;
typedef struct QMediaPlayer QMediaPlayer;
typedef struct QMediaTimeRange QMediaTimeRange;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
typedef struct QVariant QVariant;
typedef struct QVideoSink QVideoSink;
#endif

#ifdef __cplusplus
typedef QMediaPlayer::Error Error;                 // C++ enum
typedef QMediaPlayer::Loops Loops;                 // C++ enum
typedef QMediaPlayer::MediaStatus MediaStatus;     // C++ enum
typedef QMediaPlayer::PlaybackState PlaybackState; // C++ enum
#else
typedef int Error;         // C ABI enum
typedef int Loops;         // C ABI enum
typedef int MediaStatus;   // C ABI enum
typedef int PlaybackState; // C ABI enum
#endif

QTLIBC_API QMediaPlayer* QMediaPlayer_new();
QTLIBC_API QMediaPlayer* QMediaPlayer_new2(QObject* parent);
QTLIBC_API QMetaObject* QMediaPlayer_MetaObject(const QMediaPlayer* self);
QTLIBC_API void* QMediaPlayer_Metacast(QMediaPlayer* self, const char* param1);
QTLIBC_API int QMediaPlayer_Metacall(QMediaPlayer* self, int param1, int param2, void** param3);
QTLIBC_API void QMediaPlayer_OnMetacall(QMediaPlayer* self, intptr_t slot);
QTLIBC_API int QMediaPlayer_QBaseMetacall(QMediaPlayer* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QMediaPlayer_Tr(const char* s);
QTLIBC_API libqt_list /* of QMediaMetaData* */ QMediaPlayer_AudioTracks(const QMediaPlayer* self);
QTLIBC_API libqt_list /* of QMediaMetaData* */ QMediaPlayer_VideoTracks(const QMediaPlayer* self);
QTLIBC_API libqt_list /* of QMediaMetaData* */ QMediaPlayer_SubtitleTracks(const QMediaPlayer* self);
QTLIBC_API int QMediaPlayer_ActiveAudioTrack(const QMediaPlayer* self);
QTLIBC_API int QMediaPlayer_ActiveVideoTrack(const QMediaPlayer* self);
QTLIBC_API int QMediaPlayer_ActiveSubtitleTrack(const QMediaPlayer* self);
QTLIBC_API void QMediaPlayer_SetActiveAudioTrack(QMediaPlayer* self, int index);
QTLIBC_API void QMediaPlayer_SetActiveVideoTrack(QMediaPlayer* self, int index);
QTLIBC_API void QMediaPlayer_SetActiveSubtitleTrack(QMediaPlayer* self, int index);
QTLIBC_API void QMediaPlayer_SetAudioOutput(QMediaPlayer* self, QAudioOutput* output);
QTLIBC_API QAudioOutput* QMediaPlayer_AudioOutput(const QMediaPlayer* self);
QTLIBC_API void QMediaPlayer_SetVideoOutput(QMediaPlayer* self, QObject* videoOutput);
QTLIBC_API QObject* QMediaPlayer_VideoOutput(const QMediaPlayer* self);
QTLIBC_API void QMediaPlayer_SetVideoSink(QMediaPlayer* self, QVideoSink* sink);
QTLIBC_API QVideoSink* QMediaPlayer_VideoSink(const QMediaPlayer* self);
QTLIBC_API QUrl* QMediaPlayer_Source(const QMediaPlayer* self);
QTLIBC_API QIODevice* QMediaPlayer_SourceDevice(const QMediaPlayer* self);
QTLIBC_API int QMediaPlayer_PlaybackState(const QMediaPlayer* self);
QTLIBC_API int QMediaPlayer_MediaStatus(const QMediaPlayer* self);
QTLIBC_API long long QMediaPlayer_Duration(const QMediaPlayer* self);
QTLIBC_API long long QMediaPlayer_Position(const QMediaPlayer* self);
QTLIBC_API bool QMediaPlayer_HasAudio(const QMediaPlayer* self);
QTLIBC_API bool QMediaPlayer_HasVideo(const QMediaPlayer* self);
QTLIBC_API float QMediaPlayer_BufferProgress(const QMediaPlayer* self);
QTLIBC_API QMediaTimeRange* QMediaPlayer_BufferedTimeRange(const QMediaPlayer* self);
QTLIBC_API bool QMediaPlayer_IsSeekable(const QMediaPlayer* self);
QTLIBC_API double QMediaPlayer_PlaybackRate(const QMediaPlayer* self);
QTLIBC_API int QMediaPlayer_Loops(const QMediaPlayer* self);
QTLIBC_API void QMediaPlayer_SetLoops(QMediaPlayer* self, int loops);
QTLIBC_API int QMediaPlayer_Error(const QMediaPlayer* self);
QTLIBC_API libqt_string QMediaPlayer_ErrorString(const QMediaPlayer* self);
QTLIBC_API bool QMediaPlayer_IsAvailable(const QMediaPlayer* self);
QTLIBC_API QMediaMetaData* QMediaPlayer_MetaData(const QMediaPlayer* self);
QTLIBC_API void QMediaPlayer_Play(QMediaPlayer* self);
QTLIBC_API void QMediaPlayer_Pause(QMediaPlayer* self);
QTLIBC_API void QMediaPlayer_Stop(QMediaPlayer* self);
QTLIBC_API void QMediaPlayer_SetPosition(QMediaPlayer* self, long long position);
QTLIBC_API void QMediaPlayer_SetPlaybackRate(QMediaPlayer* self, double rate);
QTLIBC_API void QMediaPlayer_SetSource(QMediaPlayer* self, QUrl* source);
QTLIBC_API void QMediaPlayer_SetSourceDevice(QMediaPlayer* self, QIODevice* device);
QTLIBC_API void QMediaPlayer_SourceChanged(QMediaPlayer* self, QUrl* media);
void QMediaPlayer_Connect_SourceChanged(QMediaPlayer* self, intptr_t slot);
QTLIBC_API void QMediaPlayer_PlaybackStateChanged(QMediaPlayer* self, int newState);
void QMediaPlayer_Connect_PlaybackStateChanged(QMediaPlayer* self, intptr_t slot);
QTLIBC_API void QMediaPlayer_MediaStatusChanged(QMediaPlayer* self, int status);
void QMediaPlayer_Connect_MediaStatusChanged(QMediaPlayer* self, intptr_t slot);
QTLIBC_API void QMediaPlayer_DurationChanged(QMediaPlayer* self, long long duration);
void QMediaPlayer_Connect_DurationChanged(QMediaPlayer* self, intptr_t slot);
QTLIBC_API void QMediaPlayer_PositionChanged(QMediaPlayer* self, long long position);
void QMediaPlayer_Connect_PositionChanged(QMediaPlayer* self, intptr_t slot);
QTLIBC_API void QMediaPlayer_HasAudioChanged(QMediaPlayer* self, bool available);
void QMediaPlayer_Connect_HasAudioChanged(QMediaPlayer* self, intptr_t slot);
QTLIBC_API void QMediaPlayer_HasVideoChanged(QMediaPlayer* self, bool videoAvailable);
void QMediaPlayer_Connect_HasVideoChanged(QMediaPlayer* self, intptr_t slot);
QTLIBC_API void QMediaPlayer_BufferProgressChanged(QMediaPlayer* self, float progress);
void QMediaPlayer_Connect_BufferProgressChanged(QMediaPlayer* self, intptr_t slot);
QTLIBC_API void QMediaPlayer_SeekableChanged(QMediaPlayer* self, bool seekable);
void QMediaPlayer_Connect_SeekableChanged(QMediaPlayer* self, intptr_t slot);
QTLIBC_API void QMediaPlayer_PlaybackRateChanged(QMediaPlayer* self, double rate);
void QMediaPlayer_Connect_PlaybackRateChanged(QMediaPlayer* self, intptr_t slot);
QTLIBC_API void QMediaPlayer_LoopsChanged(QMediaPlayer* self);
void QMediaPlayer_Connect_LoopsChanged(QMediaPlayer* self, intptr_t slot);
QTLIBC_API void QMediaPlayer_MetaDataChanged(QMediaPlayer* self);
void QMediaPlayer_Connect_MetaDataChanged(QMediaPlayer* self, intptr_t slot);
QTLIBC_API void QMediaPlayer_VideoOutputChanged(QMediaPlayer* self);
void QMediaPlayer_Connect_VideoOutputChanged(QMediaPlayer* self, intptr_t slot);
QTLIBC_API void QMediaPlayer_AudioOutputChanged(QMediaPlayer* self);
void QMediaPlayer_Connect_AudioOutputChanged(QMediaPlayer* self, intptr_t slot);
QTLIBC_API void QMediaPlayer_TracksChanged(QMediaPlayer* self);
void QMediaPlayer_Connect_TracksChanged(QMediaPlayer* self, intptr_t slot);
QTLIBC_API void QMediaPlayer_ActiveTracksChanged(QMediaPlayer* self);
void QMediaPlayer_Connect_ActiveTracksChanged(QMediaPlayer* self, intptr_t slot);
QTLIBC_API void QMediaPlayer_ErrorChanged(QMediaPlayer* self);
void QMediaPlayer_Connect_ErrorChanged(QMediaPlayer* self, intptr_t slot);
QTLIBC_API void QMediaPlayer_ErrorOccurred(QMediaPlayer* self, int errorVal, libqt_string errorString);
void QMediaPlayer_Connect_ErrorOccurred(QMediaPlayer* self, intptr_t slot);
QTLIBC_API libqt_string QMediaPlayer_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QMediaPlayer_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QMediaPlayer_SetSourceDevice2(QMediaPlayer* self, QIODevice* device, QUrl* sourceUrl);
QTLIBC_API bool QMediaPlayer_Event(QMediaPlayer* self, QEvent* event);
QTLIBC_API void QMediaPlayer_OnEvent(QMediaPlayer* self, intptr_t slot);
QTLIBC_API bool QMediaPlayer_QBaseEvent(QMediaPlayer* self, QEvent* event);
QTLIBC_API bool QMediaPlayer_EventFilter(QMediaPlayer* self, QObject* watched, QEvent* event);
QTLIBC_API void QMediaPlayer_OnEventFilter(QMediaPlayer* self, intptr_t slot);
QTLIBC_API bool QMediaPlayer_QBaseEventFilter(QMediaPlayer* self, QObject* watched, QEvent* event);
QTLIBC_API void QMediaPlayer_TimerEvent(QMediaPlayer* self, QTimerEvent* event);
QTLIBC_API void QMediaPlayer_OnTimerEvent(QMediaPlayer* self, intptr_t slot);
QTLIBC_API void QMediaPlayer_QBaseTimerEvent(QMediaPlayer* self, QTimerEvent* event);
QTLIBC_API void QMediaPlayer_ChildEvent(QMediaPlayer* self, QChildEvent* event);
QTLIBC_API void QMediaPlayer_OnChildEvent(QMediaPlayer* self, intptr_t slot);
QTLIBC_API void QMediaPlayer_QBaseChildEvent(QMediaPlayer* self, QChildEvent* event);
QTLIBC_API void QMediaPlayer_CustomEvent(QMediaPlayer* self, QEvent* event);
QTLIBC_API void QMediaPlayer_OnCustomEvent(QMediaPlayer* self, intptr_t slot);
QTLIBC_API void QMediaPlayer_QBaseCustomEvent(QMediaPlayer* self, QEvent* event);
QTLIBC_API void QMediaPlayer_ConnectNotify(QMediaPlayer* self, QMetaMethod* signal);
QTLIBC_API void QMediaPlayer_OnConnectNotify(QMediaPlayer* self, intptr_t slot);
QTLIBC_API void QMediaPlayer_QBaseConnectNotify(QMediaPlayer* self, QMetaMethod* signal);
QTLIBC_API void QMediaPlayer_DisconnectNotify(QMediaPlayer* self, QMetaMethod* signal);
QTLIBC_API void QMediaPlayer_OnDisconnectNotify(QMediaPlayer* self, intptr_t slot);
QTLIBC_API void QMediaPlayer_QBaseDisconnectNotify(QMediaPlayer* self, QMetaMethod* signal);
QTLIBC_API QObject* QMediaPlayer_Sender(const QMediaPlayer* self);
QTLIBC_API void QMediaPlayer_OnSender(const QMediaPlayer* self, intptr_t slot);
QTLIBC_API QObject* QMediaPlayer_QBaseSender(const QMediaPlayer* self);
QTLIBC_API int QMediaPlayer_SenderSignalIndex(const QMediaPlayer* self);
QTLIBC_API void QMediaPlayer_OnSenderSignalIndex(const QMediaPlayer* self, intptr_t slot);
QTLIBC_API int QMediaPlayer_QBaseSenderSignalIndex(const QMediaPlayer* self);
QTLIBC_API int QMediaPlayer_Receivers(const QMediaPlayer* self, const char* signal);
QTLIBC_API void QMediaPlayer_OnReceivers(const QMediaPlayer* self, intptr_t slot);
QTLIBC_API int QMediaPlayer_QBaseReceivers(const QMediaPlayer* self, const char* signal);
QTLIBC_API bool QMediaPlayer_IsSignalConnected(const QMediaPlayer* self, QMetaMethod* signal);
QTLIBC_API void QMediaPlayer_OnIsSignalConnected(const QMediaPlayer* self, intptr_t slot);
QTLIBC_API bool QMediaPlayer_QBaseIsSignalConnected(const QMediaPlayer* self, QMetaMethod* signal);
QTLIBC_API void QMediaPlayer_Delete(QMediaPlayer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
