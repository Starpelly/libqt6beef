#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQAUDIORECORDER_H
#define SRC_MULTIMEDIAC_LIBQAUDIORECORDER_H

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
typedef struct QAudioEncoderSettings QAudioEncoderSettings;
typedef struct QAudioRecorder QAudioRecorder;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMediaBindableInterface QMediaBindableInterface;
typedef struct QMediaObject QMediaObject;
typedef struct QMediaRecorder QMediaRecorder;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QSize QSize;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
typedef struct QVariant QVariant;
typedef struct QVideoEncoderSettings QVideoEncoderSettings;
#endif

QAudioRecorder* QAudioRecorder_new();
QAudioRecorder* QAudioRecorder_new2(QObject* parent);
QMetaObject* QAudioRecorder_MetaObject(const QAudioRecorder* self);
void* QAudioRecorder_Metacast(QAudioRecorder* self, const char* param1);
int QAudioRecorder_Metacall(QAudioRecorder* self, int param1, int param2, void** param3);
void QAudioRecorder_OnMetacall(QAudioRecorder* self, intptr_t slot);
int QAudioRecorder_QBaseMetacall(QAudioRecorder* self, int param1, int param2, void** param3);
libqt_string QAudioRecorder_Tr(const char* s);
libqt_string QAudioRecorder_TrUtf8(const char* s);
libqt_list /* of libqt_string */ QAudioRecorder_AudioInputs(const QAudioRecorder* self);
libqt_string QAudioRecorder_DefaultAudioInput(const QAudioRecorder* self);
libqt_string QAudioRecorder_AudioInputDescription(const QAudioRecorder* self, libqt_string name);
libqt_string QAudioRecorder_AudioInput(const QAudioRecorder* self);
void QAudioRecorder_SetAudioInput(QAudioRecorder* self, libqt_string name);
void QAudioRecorder_AudioInputChanged(QAudioRecorder* self, libqt_string name);
void QAudioRecorder_Connect_AudioInputChanged(QAudioRecorder* self, intptr_t slot);
void QAudioRecorder_AvailableAudioInputsChanged(QAudioRecorder* self);
void QAudioRecorder_Connect_AvailableAudioInputsChanged(QAudioRecorder* self, intptr_t slot);
libqt_string QAudioRecorder_Tr2(const char* s, const char* c);
libqt_string QAudioRecorder_Tr3(const char* s, const char* c, int n);
libqt_string QAudioRecorder_TrUtf82(const char* s, const char* c);
libqt_string QAudioRecorder_TrUtf83(const char* s, const char* c, int n);
QMediaObject* QAudioRecorder_MediaObject(const QAudioRecorder* self);
void QAudioRecorder_OnMediaObject(const QAudioRecorder* self, intptr_t slot);
QMediaObject* QAudioRecorder_QBaseMediaObject(const QAudioRecorder* self);
bool QAudioRecorder_SetMediaObject(QAudioRecorder* self, QMediaObject* object);
void QAudioRecorder_OnSetMediaObject(QAudioRecorder* self, intptr_t slot);
bool QAudioRecorder_QBaseSetMediaObject(QAudioRecorder* self, QMediaObject* object);
bool QAudioRecorder_Event(QAudioRecorder* self, QEvent* event);
void QAudioRecorder_OnEvent(QAudioRecorder* self, intptr_t slot);
bool QAudioRecorder_QBaseEvent(QAudioRecorder* self, QEvent* event);
bool QAudioRecorder_EventFilter(QAudioRecorder* self, QObject* watched, QEvent* event);
void QAudioRecorder_OnEventFilter(QAudioRecorder* self, intptr_t slot);
bool QAudioRecorder_QBaseEventFilter(QAudioRecorder* self, QObject* watched, QEvent* event);
void QAudioRecorder_TimerEvent(QAudioRecorder* self, QTimerEvent* event);
void QAudioRecorder_OnTimerEvent(QAudioRecorder* self, intptr_t slot);
void QAudioRecorder_QBaseTimerEvent(QAudioRecorder* self, QTimerEvent* event);
void QAudioRecorder_ChildEvent(QAudioRecorder* self, QChildEvent* event);
void QAudioRecorder_OnChildEvent(QAudioRecorder* self, intptr_t slot);
void QAudioRecorder_QBaseChildEvent(QAudioRecorder* self, QChildEvent* event);
void QAudioRecorder_CustomEvent(QAudioRecorder* self, QEvent* event);
void QAudioRecorder_OnCustomEvent(QAudioRecorder* self, intptr_t slot);
void QAudioRecorder_QBaseCustomEvent(QAudioRecorder* self, QEvent* event);
void QAudioRecorder_ConnectNotify(QAudioRecorder* self, QMetaMethod* signal);
void QAudioRecorder_OnConnectNotify(QAudioRecorder* self, intptr_t slot);
void QAudioRecorder_QBaseConnectNotify(QAudioRecorder* self, QMetaMethod* signal);
void QAudioRecorder_DisconnectNotify(QAudioRecorder* self, QMetaMethod* signal);
void QAudioRecorder_OnDisconnectNotify(QAudioRecorder* self, intptr_t slot);
void QAudioRecorder_QBaseDisconnectNotify(QAudioRecorder* self, QMetaMethod* signal);
QObject* QAudioRecorder_Sender(const QAudioRecorder* self);
void QAudioRecorder_OnSender(const QAudioRecorder* self, intptr_t slot);
QObject* QAudioRecorder_QBaseSender(const QAudioRecorder* self);
int QAudioRecorder_SenderSignalIndex(const QAudioRecorder* self);
void QAudioRecorder_OnSenderSignalIndex(const QAudioRecorder* self, intptr_t slot);
int QAudioRecorder_QBaseSenderSignalIndex(const QAudioRecorder* self);
int QAudioRecorder_Receivers(const QAudioRecorder* self, const char* signal);
void QAudioRecorder_OnReceivers(const QAudioRecorder* self, intptr_t slot);
int QAudioRecorder_QBaseReceivers(const QAudioRecorder* self, const char* signal);
bool QAudioRecorder_IsSignalConnected(const QAudioRecorder* self, QMetaMethod* signal);
void QAudioRecorder_OnIsSignalConnected(const QAudioRecorder* self, intptr_t slot);
bool QAudioRecorder_QBaseIsSignalConnected(const QAudioRecorder* self, QMetaMethod* signal);
void QAudioRecorder_Delete(QAudioRecorder* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
