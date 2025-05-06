#pragma once
#ifndef SRC_QT_MULTIMEDIAC_LIBQSOUNDEFFECT_H
#define SRC_QT_MULTIMEDIAC_LIBQSOUNDEFFECT_H

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
typedef struct QAudioDevice QAudioDevice;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QSoundEffect QSoundEffect;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QSoundEffect::Loop Loop;     // C++ enum
typedef QSoundEffect::Status Status; // C++ enum
#else
typedef int Loop;   // C ABI enum
typedef int Status; // C ABI enum
#endif

QTLIBC_API QSoundEffect* QSoundEffect_new();
QTLIBC_API QSoundEffect* QSoundEffect_new2(QAudioDevice* audioDevice);
QTLIBC_API QSoundEffect* QSoundEffect_new3(QObject* parent);
QTLIBC_API QSoundEffect* QSoundEffect_new4(QAudioDevice* audioDevice, QObject* parent);
QTLIBC_API QMetaObject* QSoundEffect_MetaObject(const QSoundEffect* self);
QTLIBC_API void* QSoundEffect_Metacast(QSoundEffect* self, const char* param1);
QTLIBC_API int QSoundEffect_Metacall(QSoundEffect* self, int param1, int param2, void** param3);
QTLIBC_API void QSoundEffect_OnMetacall(QSoundEffect* self, intptr_t slot);
QTLIBC_API int QSoundEffect_QBaseMetacall(QSoundEffect* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QSoundEffect_Tr(const char* s);
QTLIBC_API libqt_list /* of libqt_string */ QSoundEffect_SupportedMimeTypes();
QTLIBC_API QUrl* QSoundEffect_Source(const QSoundEffect* self);
QTLIBC_API void QSoundEffect_SetSource(QSoundEffect* self, QUrl* url);
QTLIBC_API int QSoundEffect_LoopCount(const QSoundEffect* self);
QTLIBC_API int QSoundEffect_LoopsRemaining(const QSoundEffect* self);
QTLIBC_API void QSoundEffect_SetLoopCount(QSoundEffect* self, int loopCount);
QTLIBC_API QAudioDevice* QSoundEffect_AudioDevice(QSoundEffect* self);
QTLIBC_API void QSoundEffect_SetAudioDevice(QSoundEffect* self, QAudioDevice* device);
QTLIBC_API float QSoundEffect_Volume(const QSoundEffect* self);
QTLIBC_API void QSoundEffect_SetVolume(QSoundEffect* self, float volume);
QTLIBC_API bool QSoundEffect_IsMuted(const QSoundEffect* self);
QTLIBC_API void QSoundEffect_SetMuted(QSoundEffect* self, bool muted);
QTLIBC_API bool QSoundEffect_IsLoaded(const QSoundEffect* self);
QTLIBC_API bool QSoundEffect_IsPlaying(const QSoundEffect* self);
QTLIBC_API int QSoundEffect_Status(const QSoundEffect* self);
QTLIBC_API void QSoundEffect_SourceChanged(QSoundEffect* self);
void QSoundEffect_Connect_SourceChanged(QSoundEffect* self, intptr_t slot);
QTLIBC_API void QSoundEffect_LoopCountChanged(QSoundEffect* self);
void QSoundEffect_Connect_LoopCountChanged(QSoundEffect* self, intptr_t slot);
QTLIBC_API void QSoundEffect_LoopsRemainingChanged(QSoundEffect* self);
void QSoundEffect_Connect_LoopsRemainingChanged(QSoundEffect* self, intptr_t slot);
QTLIBC_API void QSoundEffect_VolumeChanged(QSoundEffect* self);
void QSoundEffect_Connect_VolumeChanged(QSoundEffect* self, intptr_t slot);
QTLIBC_API void QSoundEffect_MutedChanged(QSoundEffect* self);
void QSoundEffect_Connect_MutedChanged(QSoundEffect* self, intptr_t slot);
QTLIBC_API void QSoundEffect_LoadedChanged(QSoundEffect* self);
void QSoundEffect_Connect_LoadedChanged(QSoundEffect* self, intptr_t slot);
QTLIBC_API void QSoundEffect_PlayingChanged(QSoundEffect* self);
void QSoundEffect_Connect_PlayingChanged(QSoundEffect* self, intptr_t slot);
QTLIBC_API void QSoundEffect_StatusChanged(QSoundEffect* self);
void QSoundEffect_Connect_StatusChanged(QSoundEffect* self, intptr_t slot);
QTLIBC_API void QSoundEffect_AudioDeviceChanged(QSoundEffect* self);
void QSoundEffect_Connect_AudioDeviceChanged(QSoundEffect* self, intptr_t slot);
QTLIBC_API void QSoundEffect_Play(QSoundEffect* self);
QTLIBC_API void QSoundEffect_Stop(QSoundEffect* self);
QTLIBC_API libqt_string QSoundEffect_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QSoundEffect_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QSoundEffect_Event(QSoundEffect* self, QEvent* event);
QTLIBC_API void QSoundEffect_OnEvent(QSoundEffect* self, intptr_t slot);
QTLIBC_API bool QSoundEffect_QBaseEvent(QSoundEffect* self, QEvent* event);
QTLIBC_API bool QSoundEffect_EventFilter(QSoundEffect* self, QObject* watched, QEvent* event);
QTLIBC_API void QSoundEffect_OnEventFilter(QSoundEffect* self, intptr_t slot);
QTLIBC_API bool QSoundEffect_QBaseEventFilter(QSoundEffect* self, QObject* watched, QEvent* event);
QTLIBC_API void QSoundEffect_TimerEvent(QSoundEffect* self, QTimerEvent* event);
QTLIBC_API void QSoundEffect_OnTimerEvent(QSoundEffect* self, intptr_t slot);
QTLIBC_API void QSoundEffect_QBaseTimerEvent(QSoundEffect* self, QTimerEvent* event);
QTLIBC_API void QSoundEffect_ChildEvent(QSoundEffect* self, QChildEvent* event);
QTLIBC_API void QSoundEffect_OnChildEvent(QSoundEffect* self, intptr_t slot);
QTLIBC_API void QSoundEffect_QBaseChildEvent(QSoundEffect* self, QChildEvent* event);
QTLIBC_API void QSoundEffect_CustomEvent(QSoundEffect* self, QEvent* event);
QTLIBC_API void QSoundEffect_OnCustomEvent(QSoundEffect* self, intptr_t slot);
QTLIBC_API void QSoundEffect_QBaseCustomEvent(QSoundEffect* self, QEvent* event);
QTLIBC_API void QSoundEffect_ConnectNotify(QSoundEffect* self, QMetaMethod* signal);
QTLIBC_API void QSoundEffect_OnConnectNotify(QSoundEffect* self, intptr_t slot);
QTLIBC_API void QSoundEffect_QBaseConnectNotify(QSoundEffect* self, QMetaMethod* signal);
QTLIBC_API void QSoundEffect_DisconnectNotify(QSoundEffect* self, QMetaMethod* signal);
QTLIBC_API void QSoundEffect_OnDisconnectNotify(QSoundEffect* self, intptr_t slot);
QTLIBC_API void QSoundEffect_QBaseDisconnectNotify(QSoundEffect* self, QMetaMethod* signal);
QTLIBC_API QObject* QSoundEffect_Sender(const QSoundEffect* self);
QTLIBC_API void QSoundEffect_OnSender(const QSoundEffect* self, intptr_t slot);
QTLIBC_API QObject* QSoundEffect_QBaseSender(const QSoundEffect* self);
QTLIBC_API int QSoundEffect_SenderSignalIndex(const QSoundEffect* self);
QTLIBC_API void QSoundEffect_OnSenderSignalIndex(const QSoundEffect* self, intptr_t slot);
QTLIBC_API int QSoundEffect_QBaseSenderSignalIndex(const QSoundEffect* self);
QTLIBC_API int QSoundEffect_Receivers(const QSoundEffect* self, const char* signal);
QTLIBC_API void QSoundEffect_OnReceivers(const QSoundEffect* self, intptr_t slot);
QTLIBC_API int QSoundEffect_QBaseReceivers(const QSoundEffect* self, const char* signal);
QTLIBC_API bool QSoundEffect_IsSignalConnected(const QSoundEffect* self, QMetaMethod* signal);
QTLIBC_API void QSoundEffect_OnIsSignalConnected(const QSoundEffect* self, intptr_t slot);
QTLIBC_API bool QSoundEffect_QBaseIsSignalConnected(const QSoundEffect* self, QMetaMethod* signal);
QTLIBC_API void QSoundEffect_Delete(QSoundEffect* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
