#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQMEDIAPLAYERCONTROL_H
#define SRC_MULTIMEDIAC_LIBQMEDIAPLAYERCONTROL_H

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
typedef struct QIODevice QIODevice;
typedef struct QMediaContent QMediaContent;
typedef struct QMediaControl QMediaControl;
typedef struct QMediaPlayerControl QMediaPlayerControl;
typedef struct QMediaTimeRange QMediaTimeRange;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QMetaObject* QMediaPlayerControl_MetaObject(const QMediaPlayerControl* self);
void* QMediaPlayerControl_Metacast(QMediaPlayerControl* self, const char* param1);
int QMediaPlayerControl_Metacall(QMediaPlayerControl* self, int param1, int param2, void** param3);
libqt_string QMediaPlayerControl_Tr(const char* s);
libqt_string QMediaPlayerControl_TrUtf8(const char* s);
int QMediaPlayerControl_State(const QMediaPlayerControl* self);
int QMediaPlayerControl_MediaStatus(const QMediaPlayerControl* self);
long long QMediaPlayerControl_Duration(const QMediaPlayerControl* self);
long long QMediaPlayerControl_Position(const QMediaPlayerControl* self);
void QMediaPlayerControl_SetPosition(QMediaPlayerControl* self, long long position);
int QMediaPlayerControl_Volume(const QMediaPlayerControl* self);
void QMediaPlayerControl_SetVolume(QMediaPlayerControl* self, int volume);
bool QMediaPlayerControl_IsMuted(const QMediaPlayerControl* self);
void QMediaPlayerControl_SetMuted(QMediaPlayerControl* self, bool mute);
int QMediaPlayerControl_BufferStatus(const QMediaPlayerControl* self);
bool QMediaPlayerControl_IsAudioAvailable(const QMediaPlayerControl* self);
bool QMediaPlayerControl_IsVideoAvailable(const QMediaPlayerControl* self);
bool QMediaPlayerControl_IsSeekable(const QMediaPlayerControl* self);
QMediaTimeRange* QMediaPlayerControl_AvailablePlaybackRanges(const QMediaPlayerControl* self);
double QMediaPlayerControl_PlaybackRate(const QMediaPlayerControl* self);
void QMediaPlayerControl_SetPlaybackRate(QMediaPlayerControl* self, double rate);
QMediaContent* QMediaPlayerControl_Media(const QMediaPlayerControl* self);
QIODevice* QMediaPlayerControl_MediaStream(const QMediaPlayerControl* self);
void QMediaPlayerControl_SetMedia(QMediaPlayerControl* self, QMediaContent* media, QIODevice* stream);
void QMediaPlayerControl_Play(QMediaPlayerControl* self);
void QMediaPlayerControl_Pause(QMediaPlayerControl* self);
void QMediaPlayerControl_Stop(QMediaPlayerControl* self);
void QMediaPlayerControl_MediaChanged(QMediaPlayerControl* self, QMediaContent* content);
void QMediaPlayerControl_Connect_MediaChanged(QMediaPlayerControl* self, intptr_t slot);
void QMediaPlayerControl_DurationChanged(QMediaPlayerControl* self, long long duration);
void QMediaPlayerControl_Connect_DurationChanged(QMediaPlayerControl* self, intptr_t slot);
void QMediaPlayerControl_PositionChanged(QMediaPlayerControl* self, long long position);
void QMediaPlayerControl_Connect_PositionChanged(QMediaPlayerControl* self, intptr_t slot);
void QMediaPlayerControl_StateChanged(QMediaPlayerControl* self, int newState);
void QMediaPlayerControl_Connect_StateChanged(QMediaPlayerControl* self, intptr_t slot);
void QMediaPlayerControl_MediaStatusChanged(QMediaPlayerControl* self, int status);
void QMediaPlayerControl_Connect_MediaStatusChanged(QMediaPlayerControl* self, intptr_t slot);
void QMediaPlayerControl_VolumeChanged(QMediaPlayerControl* self, int volume);
void QMediaPlayerControl_Connect_VolumeChanged(QMediaPlayerControl* self, intptr_t slot);
void QMediaPlayerControl_MutedChanged(QMediaPlayerControl* self, bool mute);
void QMediaPlayerControl_Connect_MutedChanged(QMediaPlayerControl* self, intptr_t slot);
void QMediaPlayerControl_AudioAvailableChanged(QMediaPlayerControl* self, bool audioAvailable);
void QMediaPlayerControl_Connect_AudioAvailableChanged(QMediaPlayerControl* self, intptr_t slot);
void QMediaPlayerControl_VideoAvailableChanged(QMediaPlayerControl* self, bool videoAvailable);
void QMediaPlayerControl_Connect_VideoAvailableChanged(QMediaPlayerControl* self, intptr_t slot);
void QMediaPlayerControl_BufferStatusChanged(QMediaPlayerControl* self, int percentFilled);
void QMediaPlayerControl_Connect_BufferStatusChanged(QMediaPlayerControl* self, intptr_t slot);
void QMediaPlayerControl_SeekableChanged(QMediaPlayerControl* self, bool seekable);
void QMediaPlayerControl_Connect_SeekableChanged(QMediaPlayerControl* self, intptr_t slot);
void QMediaPlayerControl_AvailablePlaybackRangesChanged(QMediaPlayerControl* self, QMediaTimeRange* ranges);
void QMediaPlayerControl_Connect_AvailablePlaybackRangesChanged(QMediaPlayerControl* self, intptr_t slot);
void QMediaPlayerControl_PlaybackRateChanged(QMediaPlayerControl* self, double rate);
void QMediaPlayerControl_Connect_PlaybackRateChanged(QMediaPlayerControl* self, intptr_t slot);
void QMediaPlayerControl_Error(QMediaPlayerControl* self, int errorVal, libqt_string errorString);
void QMediaPlayerControl_Connect_Error(QMediaPlayerControl* self, intptr_t slot);
libqt_string QMediaPlayerControl_Tr2(const char* s, const char* c);
libqt_string QMediaPlayerControl_Tr3(const char* s, const char* c, int n);
libqt_string QMediaPlayerControl_TrUtf82(const char* s, const char* c);
libqt_string QMediaPlayerControl_TrUtf83(const char* s, const char* c, int n);
bool QMediaPlayerControl_Event(QMediaPlayerControl* self, QEvent* event);
bool QMediaPlayerControl_EventFilter(QMediaPlayerControl* self, QObject* watched, QEvent* event);
void QMediaPlayerControl_Delete(QMediaPlayerControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
