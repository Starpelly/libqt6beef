#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQSOUND_H
#define SRC_MULTIMEDIAC_LIBQSOUND_H

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
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QSound QSound;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QSound::Loop Loop; // C++ enum
#else
typedef int Loop; // C ABI enum
#endif

QSound* QSound_new(libqt_string filename);
QSound* QSound_new2(libqt_string filename, QObject* parent);
QMetaObject* QSound_MetaObject(const QSound* self);
void* QSound_Metacast(QSound* self, const char* param1);
int QSound_Metacall(QSound* self, int param1, int param2, void** param3);
void QSound_OnMetacall(QSound* self, intptr_t slot);
int QSound_QBaseMetacall(QSound* self, int param1, int param2, void** param3);
libqt_string QSound_Tr(const char* s);
libqt_string QSound_TrUtf8(const char* s);
void QSound_Play(libqt_string filename);
int QSound_Loops(const QSound* self);
int QSound_LoopsRemaining(const QSound* self);
void QSound_SetLoops(QSound* self, int loops);
libqt_string QSound_FileName(const QSound* self);
bool QSound_IsFinished(const QSound* self);
void QSound_Play2(QSound* self);
void QSound_Stop(QSound* self);
libqt_string QSound_Tr2(const char* s, const char* c);
libqt_string QSound_Tr3(const char* s, const char* c, int n);
libqt_string QSound_TrUtf82(const char* s, const char* c);
libqt_string QSound_TrUtf83(const char* s, const char* c, int n);
bool QSound_Event(QSound* self, QEvent* event);
void QSound_OnEvent(QSound* self, intptr_t slot);
bool QSound_QBaseEvent(QSound* self, QEvent* event);
bool QSound_EventFilter(QSound* self, QObject* watched, QEvent* event);
void QSound_OnEventFilter(QSound* self, intptr_t slot);
bool QSound_QBaseEventFilter(QSound* self, QObject* watched, QEvent* event);
void QSound_TimerEvent(QSound* self, QTimerEvent* event);
void QSound_OnTimerEvent(QSound* self, intptr_t slot);
void QSound_QBaseTimerEvent(QSound* self, QTimerEvent* event);
void QSound_ChildEvent(QSound* self, QChildEvent* event);
void QSound_OnChildEvent(QSound* self, intptr_t slot);
void QSound_QBaseChildEvent(QSound* self, QChildEvent* event);
void QSound_CustomEvent(QSound* self, QEvent* event);
void QSound_OnCustomEvent(QSound* self, intptr_t slot);
void QSound_QBaseCustomEvent(QSound* self, QEvent* event);
void QSound_ConnectNotify(QSound* self, QMetaMethod* signal);
void QSound_OnConnectNotify(QSound* self, intptr_t slot);
void QSound_QBaseConnectNotify(QSound* self, QMetaMethod* signal);
void QSound_DisconnectNotify(QSound* self, QMetaMethod* signal);
void QSound_OnDisconnectNotify(QSound* self, intptr_t slot);
void QSound_QBaseDisconnectNotify(QSound* self, QMetaMethod* signal);
QObject* QSound_Sender(const QSound* self);
void QSound_OnSender(const QSound* self, intptr_t slot);
QObject* QSound_QBaseSender(const QSound* self);
int QSound_SenderSignalIndex(const QSound* self);
void QSound_OnSenderSignalIndex(const QSound* self, intptr_t slot);
int QSound_QBaseSenderSignalIndex(const QSound* self);
int QSound_Receivers(const QSound* self, const char* signal);
void QSound_OnReceivers(const QSound* self, intptr_t slot);
int QSound_QBaseReceivers(const QSound* self, const char* signal);
bool QSound_IsSignalConnected(const QSound* self, QMetaMethod* signal);
void QSound_OnIsSignalConnected(const QSound* self, intptr_t slot);
bool QSound_QBaseIsSignalConnected(const QSound* self, QMetaMethod* signal);
void QSound_Delete(QSound* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
