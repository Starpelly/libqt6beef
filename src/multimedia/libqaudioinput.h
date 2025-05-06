#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQAUDIOINPUT_H
#define SRC_MULTIMEDIAC_LIBQAUDIOINPUT_H

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
typedef struct QAudioDeviceInfo QAudioDeviceInfo;
typedef struct QAudioFormat QAudioFormat;
typedef struct QAudioInput QAudioInput;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QIODevice QIODevice;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QAudioInput* QAudioInput_new();
QAudioInput* QAudioInput_new2(QAudioDeviceInfo* audioDeviceInfo);
QAudioInput* QAudioInput_new3(QAudioFormat* format);
QAudioInput* QAudioInput_new4(QAudioFormat* format, QObject* parent);
QAudioInput* QAudioInput_new5(QAudioDeviceInfo* audioDeviceInfo, QAudioFormat* format);
QAudioInput* QAudioInput_new6(QAudioDeviceInfo* audioDeviceInfo, QAudioFormat* format, QObject* parent);
QMetaObject* QAudioInput_MetaObject(const QAudioInput* self);
void* QAudioInput_Metacast(QAudioInput* self, const char* param1);
int QAudioInput_Metacall(QAudioInput* self, int param1, int param2, void** param3);
void QAudioInput_OnMetacall(QAudioInput* self, intptr_t slot);
int QAudioInput_QBaseMetacall(QAudioInput* self, int param1, int param2, void** param3);
libqt_string QAudioInput_Tr(const char* s);
libqt_string QAudioInput_TrUtf8(const char* s);
QAudioFormat* QAudioInput_Format(const QAudioInput* self);
void QAudioInput_Start(QAudioInput* self, QIODevice* device);
QIODevice* QAudioInput_Start2(QAudioInput* self);
void QAudioInput_Stop(QAudioInput* self);
void QAudioInput_Reset(QAudioInput* self);
void QAudioInput_Suspend(QAudioInput* self);
void QAudioInput_Resume(QAudioInput* self);
void QAudioInput_SetBufferSize(QAudioInput* self, int bytes);
int QAudioInput_BufferSize(const QAudioInput* self);
int QAudioInput_BytesReady(const QAudioInput* self);
int QAudioInput_PeriodSize(const QAudioInput* self);
void QAudioInput_SetNotifyInterval(QAudioInput* self, int milliSeconds);
int QAudioInput_NotifyInterval(const QAudioInput* self);
void QAudioInput_SetVolume(QAudioInput* self, double volume);
double QAudioInput_Volume(const QAudioInput* self);
long long QAudioInput_ProcessedUSecs(const QAudioInput* self);
long long QAudioInput_ElapsedUSecs(const QAudioInput* self);
int QAudioInput_Error(const QAudioInput* self);
int QAudioInput_State(const QAudioInput* self);
void QAudioInput_StateChanged(QAudioInput* self, int state);
void QAudioInput_Connect_StateChanged(QAudioInput* self, intptr_t slot);
void QAudioInput_Notify(QAudioInput* self);
void QAudioInput_Connect_Notify(QAudioInput* self, intptr_t slot);
libqt_string QAudioInput_Tr2(const char* s, const char* c);
libqt_string QAudioInput_Tr3(const char* s, const char* c, int n);
libqt_string QAudioInput_TrUtf82(const char* s, const char* c);
libqt_string QAudioInput_TrUtf83(const char* s, const char* c, int n);
bool QAudioInput_Event(QAudioInput* self, QEvent* event);
void QAudioInput_OnEvent(QAudioInput* self, intptr_t slot);
bool QAudioInput_QBaseEvent(QAudioInput* self, QEvent* event);
bool QAudioInput_EventFilter(QAudioInput* self, QObject* watched, QEvent* event);
void QAudioInput_OnEventFilter(QAudioInput* self, intptr_t slot);
bool QAudioInput_QBaseEventFilter(QAudioInput* self, QObject* watched, QEvent* event);
void QAudioInput_TimerEvent(QAudioInput* self, QTimerEvent* event);
void QAudioInput_OnTimerEvent(QAudioInput* self, intptr_t slot);
void QAudioInput_QBaseTimerEvent(QAudioInput* self, QTimerEvent* event);
void QAudioInput_ChildEvent(QAudioInput* self, QChildEvent* event);
void QAudioInput_OnChildEvent(QAudioInput* self, intptr_t slot);
void QAudioInput_QBaseChildEvent(QAudioInput* self, QChildEvent* event);
void QAudioInput_CustomEvent(QAudioInput* self, QEvent* event);
void QAudioInput_OnCustomEvent(QAudioInput* self, intptr_t slot);
void QAudioInput_QBaseCustomEvent(QAudioInput* self, QEvent* event);
void QAudioInput_ConnectNotify(QAudioInput* self, QMetaMethod* signal);
void QAudioInput_OnConnectNotify(QAudioInput* self, intptr_t slot);
void QAudioInput_QBaseConnectNotify(QAudioInput* self, QMetaMethod* signal);
void QAudioInput_DisconnectNotify(QAudioInput* self, QMetaMethod* signal);
void QAudioInput_OnDisconnectNotify(QAudioInput* self, intptr_t slot);
void QAudioInput_QBaseDisconnectNotify(QAudioInput* self, QMetaMethod* signal);
QObject* QAudioInput_Sender(const QAudioInput* self);
void QAudioInput_OnSender(const QAudioInput* self, intptr_t slot);
QObject* QAudioInput_QBaseSender(const QAudioInput* self);
int QAudioInput_SenderSignalIndex(const QAudioInput* self);
void QAudioInput_OnSenderSignalIndex(const QAudioInput* self, intptr_t slot);
int QAudioInput_QBaseSenderSignalIndex(const QAudioInput* self);
int QAudioInput_Receivers(const QAudioInput* self, const char* signal);
void QAudioInput_OnReceivers(const QAudioInput* self, intptr_t slot);
int QAudioInput_QBaseReceivers(const QAudioInput* self, const char* signal);
bool QAudioInput_IsSignalConnected(const QAudioInput* self, QMetaMethod* signal);
void QAudioInput_OnIsSignalConnected(const QAudioInput* self, intptr_t slot);
bool QAudioInput_QBaseIsSignalConnected(const QAudioInput* self, QMetaMethod* signal);
void QAudioInput_Delete(QAudioInput* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
