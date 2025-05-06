#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQMEDIAPLAYER_H
#define SRC_MULTIMEDIAC_LIBQMEDIAPLAYER_H

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
typedef struct QGraphicsVideoItem QGraphicsVideoItem;
typedef struct QIODevice QIODevice;
typedef struct QMediaContent QMediaContent;
typedef struct QMediaObject QMediaObject;
typedef struct QMediaPlayer QMediaPlayer;
typedef struct QMediaPlaylist QMediaPlaylist;
typedef struct QMediaService QMediaService;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QNetworkConfiguration QNetworkConfiguration;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QVideoWidget QVideoWidget;
#endif

#ifdef __cplusplus
typedef QMediaPlayer::Error Error;             // C++ enum
typedef QMediaPlayer::Flag Flag;               // C++ enum
typedef QMediaPlayer::Flags Flags;             // C++ QFlags
typedef QMediaPlayer::MediaStatus MediaStatus; // C++ enum
typedef QMediaPlayer::State State;             // C++ enum
#else
typedef int Error;       // C ABI enum
typedef int Flag;        // C ABI enum
typedef int Flags;       // C ABI QFlags
typedef int MediaStatus; // C ABI enum
typedef int State;       // C ABI enum
#endif

QMediaPlayer* QMediaPlayer_new();
QMediaPlayer* QMediaPlayer_new2(QObject* parent);
QMediaPlayer* QMediaPlayer_new3(QObject* parent, int flags);
QMetaObject* QMediaPlayer_MetaObject(const QMediaPlayer* self);
void* QMediaPlayer_Metacast(QMediaPlayer* self, const char* param1);
int QMediaPlayer_Metacall(QMediaPlayer* self, int param1, int param2, void** param3);
void QMediaPlayer_OnMetacall(QMediaPlayer* self, intptr_t slot);
int QMediaPlayer_QBaseMetacall(QMediaPlayer* self, int param1, int param2, void** param3);
libqt_string QMediaPlayer_Tr(const char* s);
libqt_string QMediaPlayer_TrUtf8(const char* s);
int QMediaPlayer_HasSupport(libqt_string mimeType);
libqt_list /* of libqt_string */ QMediaPlayer_SupportedMimeTypes();
void QMediaPlayer_SetVideoOutput(QMediaPlayer* self, QVideoWidget* videoOutput);
void QMediaPlayer_SetVideoOutputWithVideoOutput(QMediaPlayer* self, QGraphicsVideoItem* videoOutput);
void QMediaPlayer_SetVideoOutputWithSurface(QMediaPlayer* self, QAbstractVideoSurface* surface);
void QMediaPlayer_SetVideoOutputWithSurfaces(QMediaPlayer* self, libqt_list /* of QAbstractVideoSurface* */ surfaces);
QMediaContent* QMediaPlayer_Media(const QMediaPlayer* self);
QIODevice* QMediaPlayer_MediaStream(const QMediaPlayer* self);
QMediaPlaylist* QMediaPlayer_Playlist(const QMediaPlayer* self);
QMediaContent* QMediaPlayer_CurrentMedia(const QMediaPlayer* self);
int QMediaPlayer_State(const QMediaPlayer* self);
int QMediaPlayer_MediaStatus(const QMediaPlayer* self);
long long QMediaPlayer_Duration(const QMediaPlayer* self);
long long QMediaPlayer_Position(const QMediaPlayer* self);
int QMediaPlayer_Volume(const QMediaPlayer* self);
bool QMediaPlayer_IsMuted(const QMediaPlayer* self);
bool QMediaPlayer_IsAudioAvailable(const QMediaPlayer* self);
bool QMediaPlayer_IsVideoAvailable(const QMediaPlayer* self);
int QMediaPlayer_BufferStatus(const QMediaPlayer* self);
bool QMediaPlayer_IsSeekable(const QMediaPlayer* self);
double QMediaPlayer_PlaybackRate(const QMediaPlayer* self);
int QMediaPlayer_Error(const QMediaPlayer* self);
libqt_string QMediaPlayer_ErrorString(const QMediaPlayer* self);
QNetworkConfiguration* QMediaPlayer_CurrentNetworkConfiguration(const QMediaPlayer* self);
int QMediaPlayer_Availability(const QMediaPlayer* self);
void QMediaPlayer_OnAvailability(const QMediaPlayer* self, intptr_t slot);
int QMediaPlayer_QBaseAvailability(const QMediaPlayer* self);
int QMediaPlayer_AudioRole(const QMediaPlayer* self);
void QMediaPlayer_SetAudioRole(QMediaPlayer* self, int audioRole);
libqt_list /* of int */ QMediaPlayer_SupportedAudioRoles(const QMediaPlayer* self);
libqt_string QMediaPlayer_CustomAudioRole(const QMediaPlayer* self);
void QMediaPlayer_SetCustomAudioRole(QMediaPlayer* self, libqt_string audioRole);
libqt_list /* of libqt_string */ QMediaPlayer_SupportedCustomAudioRoles(const QMediaPlayer* self);
void QMediaPlayer_Play(QMediaPlayer* self);
void QMediaPlayer_Pause(QMediaPlayer* self);
void QMediaPlayer_Stop(QMediaPlayer* self);
void QMediaPlayer_SetPosition(QMediaPlayer* self, long long position);
void QMediaPlayer_SetVolume(QMediaPlayer* self, int volume);
void QMediaPlayer_SetMuted(QMediaPlayer* self, bool muted);
void QMediaPlayer_SetPlaybackRate(QMediaPlayer* self, double rate);
void QMediaPlayer_SetMedia(QMediaPlayer* self, QMediaContent* media);
void QMediaPlayer_SetPlaylist(QMediaPlayer* self, QMediaPlaylist* playlist);
void QMediaPlayer_SetNetworkConfigurations(QMediaPlayer* self, libqt_list /* of QNetworkConfiguration* */ configurations);
void QMediaPlayer_MediaChanged(QMediaPlayer* self, QMediaContent* media);
void QMediaPlayer_Connect_MediaChanged(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_CurrentMediaChanged(QMediaPlayer* self, QMediaContent* media);
void QMediaPlayer_Connect_CurrentMediaChanged(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_StateChanged(QMediaPlayer* self, int newState);
void QMediaPlayer_Connect_StateChanged(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_MediaStatusChanged(QMediaPlayer* self, int status);
void QMediaPlayer_Connect_MediaStatusChanged(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_DurationChanged(QMediaPlayer* self, long long duration);
void QMediaPlayer_Connect_DurationChanged(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_PositionChanged(QMediaPlayer* self, long long position);
void QMediaPlayer_Connect_PositionChanged(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_VolumeChanged(QMediaPlayer* self, int volume);
void QMediaPlayer_Connect_VolumeChanged(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_MutedChanged(QMediaPlayer* self, bool muted);
void QMediaPlayer_Connect_MutedChanged(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_AudioAvailableChanged(QMediaPlayer* self, bool available);
void QMediaPlayer_Connect_AudioAvailableChanged(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_VideoAvailableChanged(QMediaPlayer* self, bool videoAvailable);
void QMediaPlayer_Connect_VideoAvailableChanged(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_BufferStatusChanged(QMediaPlayer* self, int percentFilled);
void QMediaPlayer_Connect_BufferStatusChanged(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_SeekableChanged(QMediaPlayer* self, bool seekable);
void QMediaPlayer_Connect_SeekableChanged(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_PlaybackRateChanged(QMediaPlayer* self, double rate);
void QMediaPlayer_Connect_PlaybackRateChanged(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_AudioRoleChanged(QMediaPlayer* self, int role);
void QMediaPlayer_Connect_AudioRoleChanged(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_CustomAudioRoleChanged(QMediaPlayer* self, libqt_string role);
void QMediaPlayer_Connect_CustomAudioRoleChanged(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_ErrorWithErrorVal(QMediaPlayer* self, int errorVal);
void QMediaPlayer_Connect_ErrorWithErrorVal(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_NetworkConfigurationChanged(QMediaPlayer* self, QNetworkConfiguration* configuration);
void QMediaPlayer_Connect_NetworkConfigurationChanged(QMediaPlayer* self, intptr_t slot);
bool QMediaPlayer_Bind(QMediaPlayer* self, QObject* param1);
void QMediaPlayer_OnBind(QMediaPlayer* self, intptr_t slot);
bool QMediaPlayer_QBaseBind(QMediaPlayer* self, QObject* param1);
void QMediaPlayer_Unbind(QMediaPlayer* self, QObject* param1);
void QMediaPlayer_OnUnbind(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_QBaseUnbind(QMediaPlayer* self, QObject* param1);
libqt_string QMediaPlayer_Tr2(const char* s, const char* c);
libqt_string QMediaPlayer_Tr3(const char* s, const char* c, int n);
libqt_string QMediaPlayer_TrUtf82(const char* s, const char* c);
libqt_string QMediaPlayer_TrUtf83(const char* s, const char* c, int n);
int QMediaPlayer_HasSupport2(libqt_string mimeType, libqt_list /* of libqt_string */ codecs);
int QMediaPlayer_HasSupport3(libqt_string mimeType, libqt_list /* of libqt_string */ codecs, int flags);
libqt_list /* of libqt_string */ QMediaPlayer_SupportedMimeTypes1(int flags);
void QMediaPlayer_SetMedia2(QMediaPlayer* self, QMediaContent* media, QIODevice* stream);
bool QMediaPlayer_IsAvailable(const QMediaPlayer* self);
void QMediaPlayer_OnIsAvailable(const QMediaPlayer* self, intptr_t slot);
bool QMediaPlayer_QBaseIsAvailable(const QMediaPlayer* self);
QMediaService* QMediaPlayer_Service(const QMediaPlayer* self);
void QMediaPlayer_OnService(const QMediaPlayer* self, intptr_t slot);
QMediaService* QMediaPlayer_QBaseService(const QMediaPlayer* self);
bool QMediaPlayer_Event(QMediaPlayer* self, QEvent* event);
void QMediaPlayer_OnEvent(QMediaPlayer* self, intptr_t slot);
bool QMediaPlayer_QBaseEvent(QMediaPlayer* self, QEvent* event);
bool QMediaPlayer_EventFilter(QMediaPlayer* self, QObject* watched, QEvent* event);
void QMediaPlayer_OnEventFilter(QMediaPlayer* self, intptr_t slot);
bool QMediaPlayer_QBaseEventFilter(QMediaPlayer* self, QObject* watched, QEvent* event);
void QMediaPlayer_TimerEvent(QMediaPlayer* self, QTimerEvent* event);
void QMediaPlayer_OnTimerEvent(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_QBaseTimerEvent(QMediaPlayer* self, QTimerEvent* event);
void QMediaPlayer_ChildEvent(QMediaPlayer* self, QChildEvent* event);
void QMediaPlayer_OnChildEvent(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_QBaseChildEvent(QMediaPlayer* self, QChildEvent* event);
void QMediaPlayer_CustomEvent(QMediaPlayer* self, QEvent* event);
void QMediaPlayer_OnCustomEvent(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_QBaseCustomEvent(QMediaPlayer* self, QEvent* event);
void QMediaPlayer_ConnectNotify(QMediaPlayer* self, QMetaMethod* signal);
void QMediaPlayer_OnConnectNotify(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_QBaseConnectNotify(QMediaPlayer* self, QMetaMethod* signal);
void QMediaPlayer_DisconnectNotify(QMediaPlayer* self, QMetaMethod* signal);
void QMediaPlayer_OnDisconnectNotify(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_QBaseDisconnectNotify(QMediaPlayer* self, QMetaMethod* signal);
void QMediaPlayer_AddPropertyWatch(QMediaPlayer* self, libqt_string name);
void QMediaPlayer_OnAddPropertyWatch(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_QBaseAddPropertyWatch(QMediaPlayer* self, libqt_string name);
void QMediaPlayer_RemovePropertyWatch(QMediaPlayer* self, libqt_string name);
void QMediaPlayer_OnRemovePropertyWatch(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_QBaseRemovePropertyWatch(QMediaPlayer* self, libqt_string name);
QObject* QMediaPlayer_Sender(const QMediaPlayer* self);
void QMediaPlayer_OnSender(const QMediaPlayer* self, intptr_t slot);
QObject* QMediaPlayer_QBaseSender(const QMediaPlayer* self);
int QMediaPlayer_SenderSignalIndex(const QMediaPlayer* self);
void QMediaPlayer_OnSenderSignalIndex(const QMediaPlayer* self, intptr_t slot);
int QMediaPlayer_QBaseSenderSignalIndex(const QMediaPlayer* self);
int QMediaPlayer_Receivers(const QMediaPlayer* self, const char* signal);
void QMediaPlayer_OnReceivers(const QMediaPlayer* self, intptr_t slot);
int QMediaPlayer_QBaseReceivers(const QMediaPlayer* self, const char* signal);
bool QMediaPlayer_IsSignalConnected(const QMediaPlayer* self, QMetaMethod* signal);
void QMediaPlayer_OnIsSignalConnected(const QMediaPlayer* self, intptr_t slot);
bool QMediaPlayer_QBaseIsSignalConnected(const QMediaPlayer* self, QMetaMethod* signal);
void QMediaPlayer_Delete(QMediaPlayer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
