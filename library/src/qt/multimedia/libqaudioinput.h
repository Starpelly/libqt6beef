#pragma once
#ifndef SRC_QT_MULTIMEDIAC_LIBQAUDIOINPUT_H
#define SRC_QT_MULTIMEDIAC_LIBQAUDIOINPUT_H

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
typedef struct QAudioInput QAudioInput;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QAudioInput* QAudioInput_new();
QTLIBC_API QAudioInput* QAudioInput_new2(QAudioDevice* deviceInfo);
QTLIBC_API QAudioInput* QAudioInput_new3(QObject* parent);
QTLIBC_API QAudioInput* QAudioInput_new4(QAudioDevice* deviceInfo, QObject* parent);
QTLIBC_API QMetaObject* QAudioInput_MetaObject(const QAudioInput* self);
QTLIBC_API void* QAudioInput_Metacast(QAudioInput* self, const char* param1);
QTLIBC_API int QAudioInput_Metacall(QAudioInput* self, int param1, int param2, void** param3);
QTLIBC_API void QAudioInput_OnMetacall(QAudioInput* self, intptr_t slot);
QTLIBC_API int QAudioInput_QBaseMetacall(QAudioInput* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QAudioInput_Tr(const char* s);
QTLIBC_API QAudioDevice* QAudioInput_Device(const QAudioInput* self);
QTLIBC_API float QAudioInput_Volume(const QAudioInput* self);
QTLIBC_API bool QAudioInput_IsMuted(const QAudioInput* self);
QTLIBC_API void QAudioInput_SetDevice(QAudioInput* self, QAudioDevice* device);
QTLIBC_API void QAudioInput_SetVolume(QAudioInput* self, float volume);
QTLIBC_API void QAudioInput_SetMuted(QAudioInput* self, bool muted);
QTLIBC_API void QAudioInput_DeviceChanged(QAudioInput* self);
QTLIBC_API void QAudioInput_Connect_DeviceChanged(QAudioInput* self, intptr_t slot);
QTLIBC_API void QAudioInput_VolumeChanged(QAudioInput* self, float volume);
QTLIBC_API void QAudioInput_Connect_VolumeChanged(QAudioInput* self, intptr_t slot);
QTLIBC_API void QAudioInput_MutedChanged(QAudioInput* self, bool muted);
QTLIBC_API void QAudioInput_Connect_MutedChanged(QAudioInput* self, intptr_t slot);
QTLIBC_API libqt_string QAudioInput_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QAudioInput_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QAudioInput_Event(QAudioInput* self, QEvent* event);
QTLIBC_API void QAudioInput_OnEvent(QAudioInput* self, intptr_t slot);
QTLIBC_API bool QAudioInput_QBaseEvent(QAudioInput* self, QEvent* event);
QTLIBC_API bool QAudioInput_EventFilter(QAudioInput* self, QObject* watched, QEvent* event);
QTLIBC_API void QAudioInput_OnEventFilter(QAudioInput* self, intptr_t slot);
QTLIBC_API bool QAudioInput_QBaseEventFilter(QAudioInput* self, QObject* watched, QEvent* event);
QTLIBC_API void QAudioInput_TimerEvent(QAudioInput* self, QTimerEvent* event);
QTLIBC_API void QAudioInput_OnTimerEvent(QAudioInput* self, intptr_t slot);
QTLIBC_API void QAudioInput_QBaseTimerEvent(QAudioInput* self, QTimerEvent* event);
QTLIBC_API void QAudioInput_ChildEvent(QAudioInput* self, QChildEvent* event);
QTLIBC_API void QAudioInput_OnChildEvent(QAudioInput* self, intptr_t slot);
QTLIBC_API void QAudioInput_QBaseChildEvent(QAudioInput* self, QChildEvent* event);
QTLIBC_API void QAudioInput_CustomEvent(QAudioInput* self, QEvent* event);
QTLIBC_API void QAudioInput_OnCustomEvent(QAudioInput* self, intptr_t slot);
QTLIBC_API void QAudioInput_QBaseCustomEvent(QAudioInput* self, QEvent* event);
QTLIBC_API void QAudioInput_ConnectNotify(QAudioInput* self, QMetaMethod* signal);
QTLIBC_API void QAudioInput_OnConnectNotify(QAudioInput* self, intptr_t slot);
QTLIBC_API void QAudioInput_QBaseConnectNotify(QAudioInput* self, QMetaMethod* signal);
QTLIBC_API void QAudioInput_DisconnectNotify(QAudioInput* self, QMetaMethod* signal);
QTLIBC_API void QAudioInput_OnDisconnectNotify(QAudioInput* self, intptr_t slot);
QTLIBC_API void QAudioInput_QBaseDisconnectNotify(QAudioInput* self, QMetaMethod* signal);
QTLIBC_API QObject* QAudioInput_Sender(const QAudioInput* self);
QTLIBC_API void QAudioInput_OnSender(const QAudioInput* self, intptr_t slot);
QTLIBC_API QObject* QAudioInput_QBaseSender(const QAudioInput* self);
QTLIBC_API int QAudioInput_SenderSignalIndex(const QAudioInput* self);
QTLIBC_API void QAudioInput_OnSenderSignalIndex(const QAudioInput* self, intptr_t slot);
QTLIBC_API int QAudioInput_QBaseSenderSignalIndex(const QAudioInput* self);
QTLIBC_API int QAudioInput_Receivers(const QAudioInput* self, const char* signal);
QTLIBC_API void QAudioInput_OnReceivers(const QAudioInput* self, intptr_t slot);
QTLIBC_API int QAudioInput_QBaseReceivers(const QAudioInput* self, const char* signal);
QTLIBC_API bool QAudioInput_IsSignalConnected(const QAudioInput* self, QMetaMethod* signal);
QTLIBC_API void QAudioInput_OnIsSignalConnected(const QAudioInput* self, intptr_t slot);
QTLIBC_API bool QAudioInput_QBaseIsSignalConnected(const QAudioInput* self, QMetaMethod* signal);
QTLIBC_API void QAudioInput_Delete(QAudioInput* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
