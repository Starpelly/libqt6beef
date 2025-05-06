#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQAUDIOPROBE_H
#define SRC_MULTIMEDIAC_LIBQAUDIOPROBE_H

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
typedef struct QAudioBuffer QAudioBuffer;
typedef struct QAudioProbe QAudioProbe;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMediaObject QMediaObject;
typedef struct QMediaRecorder QMediaRecorder;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QAudioProbe* QAudioProbe_new();
QAudioProbe* QAudioProbe_new2(QObject* parent);
QMetaObject* QAudioProbe_MetaObject(const QAudioProbe* self);
void* QAudioProbe_Metacast(QAudioProbe* self, const char* param1);
int QAudioProbe_Metacall(QAudioProbe* self, int param1, int param2, void** param3);
void QAudioProbe_OnMetacall(QAudioProbe* self, intptr_t slot);
int QAudioProbe_QBaseMetacall(QAudioProbe* self, int param1, int param2, void** param3);
libqt_string QAudioProbe_Tr(const char* s);
libqt_string QAudioProbe_TrUtf8(const char* s);
bool QAudioProbe_SetSource(QAudioProbe* self, QMediaObject* source);
bool QAudioProbe_SetSourceWithSource(QAudioProbe* self, QMediaRecorder* source);
bool QAudioProbe_IsActive(const QAudioProbe* self);
void QAudioProbe_AudioBufferProbed(QAudioProbe* self, QAudioBuffer* buffer);
void QAudioProbe_Connect_AudioBufferProbed(QAudioProbe* self, intptr_t slot);
void QAudioProbe_Flush(QAudioProbe* self);
void QAudioProbe_Connect_Flush(QAudioProbe* self, intptr_t slot);
libqt_string QAudioProbe_Tr2(const char* s, const char* c);
libqt_string QAudioProbe_Tr3(const char* s, const char* c, int n);
libqt_string QAudioProbe_TrUtf82(const char* s, const char* c);
libqt_string QAudioProbe_TrUtf83(const char* s, const char* c, int n);
bool QAudioProbe_Event(QAudioProbe* self, QEvent* event);
void QAudioProbe_OnEvent(QAudioProbe* self, intptr_t slot);
bool QAudioProbe_QBaseEvent(QAudioProbe* self, QEvent* event);
bool QAudioProbe_EventFilter(QAudioProbe* self, QObject* watched, QEvent* event);
void QAudioProbe_OnEventFilter(QAudioProbe* self, intptr_t slot);
bool QAudioProbe_QBaseEventFilter(QAudioProbe* self, QObject* watched, QEvent* event);
void QAudioProbe_TimerEvent(QAudioProbe* self, QTimerEvent* event);
void QAudioProbe_OnTimerEvent(QAudioProbe* self, intptr_t slot);
void QAudioProbe_QBaseTimerEvent(QAudioProbe* self, QTimerEvent* event);
void QAudioProbe_ChildEvent(QAudioProbe* self, QChildEvent* event);
void QAudioProbe_OnChildEvent(QAudioProbe* self, intptr_t slot);
void QAudioProbe_QBaseChildEvent(QAudioProbe* self, QChildEvent* event);
void QAudioProbe_CustomEvent(QAudioProbe* self, QEvent* event);
void QAudioProbe_OnCustomEvent(QAudioProbe* self, intptr_t slot);
void QAudioProbe_QBaseCustomEvent(QAudioProbe* self, QEvent* event);
void QAudioProbe_ConnectNotify(QAudioProbe* self, QMetaMethod* signal);
void QAudioProbe_OnConnectNotify(QAudioProbe* self, intptr_t slot);
void QAudioProbe_QBaseConnectNotify(QAudioProbe* self, QMetaMethod* signal);
void QAudioProbe_DisconnectNotify(QAudioProbe* self, QMetaMethod* signal);
void QAudioProbe_OnDisconnectNotify(QAudioProbe* self, intptr_t slot);
void QAudioProbe_QBaseDisconnectNotify(QAudioProbe* self, QMetaMethod* signal);
QObject* QAudioProbe_Sender(const QAudioProbe* self);
void QAudioProbe_OnSender(const QAudioProbe* self, intptr_t slot);
QObject* QAudioProbe_QBaseSender(const QAudioProbe* self);
int QAudioProbe_SenderSignalIndex(const QAudioProbe* self);
void QAudioProbe_OnSenderSignalIndex(const QAudioProbe* self, intptr_t slot);
int QAudioProbe_QBaseSenderSignalIndex(const QAudioProbe* self);
int QAudioProbe_Receivers(const QAudioProbe* self, const char* signal);
void QAudioProbe_OnReceivers(const QAudioProbe* self, intptr_t slot);
int QAudioProbe_QBaseReceivers(const QAudioProbe* self, const char* signal);
bool QAudioProbe_IsSignalConnected(const QAudioProbe* self, QMetaMethod* signal);
void QAudioProbe_OnIsSignalConnected(const QAudioProbe* self, intptr_t slot);
bool QAudioProbe_QBaseIsSignalConnected(const QAudioProbe* self, QMetaMethod* signal);
void QAudioProbe_Delete(QAudioProbe* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
