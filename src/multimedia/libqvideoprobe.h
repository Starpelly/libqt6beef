#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQVIDEOPROBE_H
#define SRC_MULTIMEDIAC_LIBQVIDEOPROBE_H

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
typedef struct QVideoFrame QVideoFrame;
typedef struct QVideoProbe QVideoProbe;
#endif

QVideoProbe* QVideoProbe_new();
QVideoProbe* QVideoProbe_new2(QObject* parent);
QMetaObject* QVideoProbe_MetaObject(const QVideoProbe* self);
void* QVideoProbe_Metacast(QVideoProbe* self, const char* param1);
int QVideoProbe_Metacall(QVideoProbe* self, int param1, int param2, void** param3);
void QVideoProbe_OnMetacall(QVideoProbe* self, intptr_t slot);
int QVideoProbe_QBaseMetacall(QVideoProbe* self, int param1, int param2, void** param3);
libqt_string QVideoProbe_Tr(const char* s);
libqt_string QVideoProbe_TrUtf8(const char* s);
bool QVideoProbe_SetSource(QVideoProbe* self, QMediaObject* source);
bool QVideoProbe_SetSourceWithSource(QVideoProbe* self, QMediaRecorder* source);
bool QVideoProbe_IsActive(const QVideoProbe* self);
void QVideoProbe_VideoFrameProbed(QVideoProbe* self, QVideoFrame* frame);
void QVideoProbe_Connect_VideoFrameProbed(QVideoProbe* self, intptr_t slot);
void QVideoProbe_Flush(QVideoProbe* self);
void QVideoProbe_Connect_Flush(QVideoProbe* self, intptr_t slot);
libqt_string QVideoProbe_Tr2(const char* s, const char* c);
libqt_string QVideoProbe_Tr3(const char* s, const char* c, int n);
libqt_string QVideoProbe_TrUtf82(const char* s, const char* c);
libqt_string QVideoProbe_TrUtf83(const char* s, const char* c, int n);
bool QVideoProbe_Event(QVideoProbe* self, QEvent* event);
void QVideoProbe_OnEvent(QVideoProbe* self, intptr_t slot);
bool QVideoProbe_QBaseEvent(QVideoProbe* self, QEvent* event);
bool QVideoProbe_EventFilter(QVideoProbe* self, QObject* watched, QEvent* event);
void QVideoProbe_OnEventFilter(QVideoProbe* self, intptr_t slot);
bool QVideoProbe_QBaseEventFilter(QVideoProbe* self, QObject* watched, QEvent* event);
void QVideoProbe_TimerEvent(QVideoProbe* self, QTimerEvent* event);
void QVideoProbe_OnTimerEvent(QVideoProbe* self, intptr_t slot);
void QVideoProbe_QBaseTimerEvent(QVideoProbe* self, QTimerEvent* event);
void QVideoProbe_ChildEvent(QVideoProbe* self, QChildEvent* event);
void QVideoProbe_OnChildEvent(QVideoProbe* self, intptr_t slot);
void QVideoProbe_QBaseChildEvent(QVideoProbe* self, QChildEvent* event);
void QVideoProbe_CustomEvent(QVideoProbe* self, QEvent* event);
void QVideoProbe_OnCustomEvent(QVideoProbe* self, intptr_t slot);
void QVideoProbe_QBaseCustomEvent(QVideoProbe* self, QEvent* event);
void QVideoProbe_ConnectNotify(QVideoProbe* self, QMetaMethod* signal);
void QVideoProbe_OnConnectNotify(QVideoProbe* self, intptr_t slot);
void QVideoProbe_QBaseConnectNotify(QVideoProbe* self, QMetaMethod* signal);
void QVideoProbe_DisconnectNotify(QVideoProbe* self, QMetaMethod* signal);
void QVideoProbe_OnDisconnectNotify(QVideoProbe* self, intptr_t slot);
void QVideoProbe_QBaseDisconnectNotify(QVideoProbe* self, QMetaMethod* signal);
QObject* QVideoProbe_Sender(const QVideoProbe* self);
void QVideoProbe_OnSender(const QVideoProbe* self, intptr_t slot);
QObject* QVideoProbe_QBaseSender(const QVideoProbe* self);
int QVideoProbe_SenderSignalIndex(const QVideoProbe* self);
void QVideoProbe_OnSenderSignalIndex(const QVideoProbe* self, intptr_t slot);
int QVideoProbe_QBaseSenderSignalIndex(const QVideoProbe* self);
int QVideoProbe_Receivers(const QVideoProbe* self, const char* signal);
void QVideoProbe_OnReceivers(const QVideoProbe* self, intptr_t slot);
int QVideoProbe_QBaseReceivers(const QVideoProbe* self, const char* signal);
bool QVideoProbe_IsSignalConnected(const QVideoProbe* self, QMetaMethod* signal);
void QVideoProbe_OnIsSignalConnected(const QVideoProbe* self, intptr_t slot);
bool QVideoProbe_QBaseIsSignalConnected(const QVideoProbe* self, QMetaMethod* signal);
void QVideoProbe_Delete(QVideoProbe* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
