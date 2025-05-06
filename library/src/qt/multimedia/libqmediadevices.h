#pragma once
#ifndef SRC_QT_MULTIMEDIAC_LIBQMEDIADEVICES_H
#define SRC_QT_MULTIMEDIAC_LIBQMEDIADEVICES_H

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
typedef struct QCameraDevice QCameraDevice;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMediaDevices QMediaDevices;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QMediaDevices* QMediaDevices_new();
QTLIBC_API QMediaDevices* QMediaDevices_new2(QObject* parent);
QTLIBC_API QMetaObject* QMediaDevices_MetaObject(const QMediaDevices* self);
QTLIBC_API void* QMediaDevices_Metacast(QMediaDevices* self, const char* param1);
QTLIBC_API int QMediaDevices_Metacall(QMediaDevices* self, int param1, int param2, void** param3);
QTLIBC_API void QMediaDevices_OnMetacall(QMediaDevices* self, intptr_t slot);
QTLIBC_API int QMediaDevices_QBaseMetacall(QMediaDevices* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QMediaDevices_Tr(const char* s);
QTLIBC_API libqt_list /* of QAudioDevice* */ QMediaDevices_AudioInputs();
QTLIBC_API libqt_list /* of QAudioDevice* */ QMediaDevices_AudioOutputs();
QTLIBC_API libqt_list /* of QCameraDevice* */ QMediaDevices_VideoInputs();
QTLIBC_API QAudioDevice* QMediaDevices_DefaultAudioInput();
QTLIBC_API QAudioDevice* QMediaDevices_DefaultAudioOutput();
QTLIBC_API QCameraDevice* QMediaDevices_DefaultVideoInput();
QTLIBC_API void QMediaDevices_AudioInputsChanged(QMediaDevices* self);
QTLIBC_API void QMediaDevices_Connect_AudioInputsChanged(QMediaDevices* self, intptr_t slot);
QTLIBC_API void QMediaDevices_AudioOutputsChanged(QMediaDevices* self);
QTLIBC_API void QMediaDevices_Connect_AudioOutputsChanged(QMediaDevices* self, intptr_t slot);
QTLIBC_API void QMediaDevices_VideoInputsChanged(QMediaDevices* self);
QTLIBC_API void QMediaDevices_Connect_VideoInputsChanged(QMediaDevices* self, intptr_t slot);
QTLIBC_API libqt_string QMediaDevices_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QMediaDevices_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QMediaDevices_Event(QMediaDevices* self, QEvent* event);
QTLIBC_API void QMediaDevices_OnEvent(QMediaDevices* self, intptr_t slot);
QTLIBC_API bool QMediaDevices_QBaseEvent(QMediaDevices* self, QEvent* event);
QTLIBC_API bool QMediaDevices_EventFilter(QMediaDevices* self, QObject* watched, QEvent* event);
QTLIBC_API void QMediaDevices_OnEventFilter(QMediaDevices* self, intptr_t slot);
QTLIBC_API bool QMediaDevices_QBaseEventFilter(QMediaDevices* self, QObject* watched, QEvent* event);
QTLIBC_API void QMediaDevices_TimerEvent(QMediaDevices* self, QTimerEvent* event);
QTLIBC_API void QMediaDevices_OnTimerEvent(QMediaDevices* self, intptr_t slot);
QTLIBC_API void QMediaDevices_QBaseTimerEvent(QMediaDevices* self, QTimerEvent* event);
QTLIBC_API void QMediaDevices_ChildEvent(QMediaDevices* self, QChildEvent* event);
QTLIBC_API void QMediaDevices_OnChildEvent(QMediaDevices* self, intptr_t slot);
QTLIBC_API void QMediaDevices_QBaseChildEvent(QMediaDevices* self, QChildEvent* event);
QTLIBC_API void QMediaDevices_CustomEvent(QMediaDevices* self, QEvent* event);
QTLIBC_API void QMediaDevices_OnCustomEvent(QMediaDevices* self, intptr_t slot);
QTLIBC_API void QMediaDevices_QBaseCustomEvent(QMediaDevices* self, QEvent* event);
QTLIBC_API void QMediaDevices_ConnectNotify(QMediaDevices* self, QMetaMethod* signal);
QTLIBC_API void QMediaDevices_OnConnectNotify(QMediaDevices* self, intptr_t slot);
QTLIBC_API void QMediaDevices_QBaseConnectNotify(QMediaDevices* self, QMetaMethod* signal);
QTLIBC_API void QMediaDevices_DisconnectNotify(QMediaDevices* self, QMetaMethod* signal);
QTLIBC_API void QMediaDevices_OnDisconnectNotify(QMediaDevices* self, intptr_t slot);
QTLIBC_API void QMediaDevices_QBaseDisconnectNotify(QMediaDevices* self, QMetaMethod* signal);
QTLIBC_API QObject* QMediaDevices_Sender(const QMediaDevices* self);
QTLIBC_API void QMediaDevices_OnSender(const QMediaDevices* self, intptr_t slot);
QTLIBC_API QObject* QMediaDevices_QBaseSender(const QMediaDevices* self);
QTLIBC_API int QMediaDevices_SenderSignalIndex(const QMediaDevices* self);
QTLIBC_API void QMediaDevices_OnSenderSignalIndex(const QMediaDevices* self, intptr_t slot);
QTLIBC_API int QMediaDevices_QBaseSenderSignalIndex(const QMediaDevices* self);
QTLIBC_API int QMediaDevices_Receivers(const QMediaDevices* self, const char* signal);
QTLIBC_API void QMediaDevices_OnReceivers(const QMediaDevices* self, intptr_t slot);
QTLIBC_API int QMediaDevices_QBaseReceivers(const QMediaDevices* self, const char* signal);
QTLIBC_API bool QMediaDevices_IsSignalConnected(const QMediaDevices* self, QMetaMethod* signal);
QTLIBC_API void QMediaDevices_OnIsSignalConnected(const QMediaDevices* self, intptr_t slot);
QTLIBC_API bool QMediaDevices_QBaseIsSignalConnected(const QMediaDevices* self, QMetaMethod* signal);
QTLIBC_API void QMediaDevices_Delete(QMediaDevices* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
