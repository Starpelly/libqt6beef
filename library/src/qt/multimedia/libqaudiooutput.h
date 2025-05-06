#pragma once
#ifndef SRC_QT_MULTIMEDIAC_LIBQAUDIOOUTPUT_H
#define SRC_QT_MULTIMEDIAC_LIBQAUDIOOUTPUT_H

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
typedef struct QAudioOutput QAudioOutput;
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

QTLIBC_API QAudioOutput* QAudioOutput_new();
QTLIBC_API QAudioOutput* QAudioOutput_new2(QAudioDevice* device);
QTLIBC_API QAudioOutput* QAudioOutput_new3(QObject* parent);
QTLIBC_API QAudioOutput* QAudioOutput_new4(QAudioDevice* device, QObject* parent);
QTLIBC_API QMetaObject* QAudioOutput_MetaObject(const QAudioOutput* self);
QTLIBC_API void* QAudioOutput_Metacast(QAudioOutput* self, const char* param1);
QTLIBC_API int QAudioOutput_Metacall(QAudioOutput* self, int param1, int param2, void** param3);
QTLIBC_API void QAudioOutput_OnMetacall(QAudioOutput* self, intptr_t slot);
QTLIBC_API int QAudioOutput_QBaseMetacall(QAudioOutput* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QAudioOutput_Tr(const char* s);
QTLIBC_API QAudioDevice* QAudioOutput_Device(const QAudioOutput* self);
QTLIBC_API float QAudioOutput_Volume(const QAudioOutput* self);
QTLIBC_API bool QAudioOutput_IsMuted(const QAudioOutput* self);
QTLIBC_API void QAudioOutput_SetDevice(QAudioOutput* self, QAudioDevice* device);
QTLIBC_API void QAudioOutput_SetVolume(QAudioOutput* self, float volume);
QTLIBC_API void QAudioOutput_SetMuted(QAudioOutput* self, bool muted);
QTLIBC_API void QAudioOutput_DeviceChanged(QAudioOutput* self);
void QAudioOutput_Connect_DeviceChanged(QAudioOutput* self, intptr_t slot);
QTLIBC_API void QAudioOutput_VolumeChanged(QAudioOutput* self, float volume);
void QAudioOutput_Connect_VolumeChanged(QAudioOutput* self, intptr_t slot);
QTLIBC_API void QAudioOutput_MutedChanged(QAudioOutput* self, bool muted);
void QAudioOutput_Connect_MutedChanged(QAudioOutput* self, intptr_t slot);
QTLIBC_API libqt_string QAudioOutput_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QAudioOutput_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QAudioOutput_Event(QAudioOutput* self, QEvent* event);
QTLIBC_API void QAudioOutput_OnEvent(QAudioOutput* self, intptr_t slot);
QTLIBC_API bool QAudioOutput_QBaseEvent(QAudioOutput* self, QEvent* event);
QTLIBC_API bool QAudioOutput_EventFilter(QAudioOutput* self, QObject* watched, QEvent* event);
QTLIBC_API void QAudioOutput_OnEventFilter(QAudioOutput* self, intptr_t slot);
QTLIBC_API bool QAudioOutput_QBaseEventFilter(QAudioOutput* self, QObject* watched, QEvent* event);
QTLIBC_API void QAudioOutput_TimerEvent(QAudioOutput* self, QTimerEvent* event);
QTLIBC_API void QAudioOutput_OnTimerEvent(QAudioOutput* self, intptr_t slot);
QTLIBC_API void QAudioOutput_QBaseTimerEvent(QAudioOutput* self, QTimerEvent* event);
QTLIBC_API void QAudioOutput_ChildEvent(QAudioOutput* self, QChildEvent* event);
QTLIBC_API void QAudioOutput_OnChildEvent(QAudioOutput* self, intptr_t slot);
QTLIBC_API void QAudioOutput_QBaseChildEvent(QAudioOutput* self, QChildEvent* event);
QTLIBC_API void QAudioOutput_CustomEvent(QAudioOutput* self, QEvent* event);
QTLIBC_API void QAudioOutput_OnCustomEvent(QAudioOutput* self, intptr_t slot);
QTLIBC_API void QAudioOutput_QBaseCustomEvent(QAudioOutput* self, QEvent* event);
QTLIBC_API void QAudioOutput_ConnectNotify(QAudioOutput* self, QMetaMethod* signal);
QTLIBC_API void QAudioOutput_OnConnectNotify(QAudioOutput* self, intptr_t slot);
QTLIBC_API void QAudioOutput_QBaseConnectNotify(QAudioOutput* self, QMetaMethod* signal);
QTLIBC_API void QAudioOutput_DisconnectNotify(QAudioOutput* self, QMetaMethod* signal);
QTLIBC_API void QAudioOutput_OnDisconnectNotify(QAudioOutput* self, intptr_t slot);
QTLIBC_API void QAudioOutput_QBaseDisconnectNotify(QAudioOutput* self, QMetaMethod* signal);
QTLIBC_API QObject* QAudioOutput_Sender(const QAudioOutput* self);
QTLIBC_API void QAudioOutput_OnSender(const QAudioOutput* self, intptr_t slot);
QTLIBC_API QObject* QAudioOutput_QBaseSender(const QAudioOutput* self);
QTLIBC_API int QAudioOutput_SenderSignalIndex(const QAudioOutput* self);
QTLIBC_API void QAudioOutput_OnSenderSignalIndex(const QAudioOutput* self, intptr_t slot);
QTLIBC_API int QAudioOutput_QBaseSenderSignalIndex(const QAudioOutput* self);
QTLIBC_API int QAudioOutput_Receivers(const QAudioOutput* self, const char* signal);
QTLIBC_API void QAudioOutput_OnReceivers(const QAudioOutput* self, intptr_t slot);
QTLIBC_API int QAudioOutput_QBaseReceivers(const QAudioOutput* self, const char* signal);
QTLIBC_API bool QAudioOutput_IsSignalConnected(const QAudioOutput* self, QMetaMethod* signal);
QTLIBC_API void QAudioOutput_OnIsSignalConnected(const QAudioOutput* self, intptr_t slot);
QTLIBC_API bool QAudioOutput_QBaseIsSignalConnected(const QAudioOutput* self, QMetaMethod* signal);
QTLIBC_API void QAudioOutput_Delete(QAudioOutput* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
