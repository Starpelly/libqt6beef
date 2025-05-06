#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQAUDIOOUTPUT_H
#define SRC_MULTIMEDIAC_LIBQAUDIOOUTPUT_H

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
typedef struct QAudioOutput QAudioOutput;
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

QAudioOutput* QAudioOutput_new();
QAudioOutput* QAudioOutput_new2(QAudioDeviceInfo* audioDeviceInfo);
QAudioOutput* QAudioOutput_new3(QAudioFormat* format);
QAudioOutput* QAudioOutput_new4(QAudioFormat* format, QObject* parent);
QAudioOutput* QAudioOutput_new5(QAudioDeviceInfo* audioDeviceInfo, QAudioFormat* format);
QAudioOutput* QAudioOutput_new6(QAudioDeviceInfo* audioDeviceInfo, QAudioFormat* format, QObject* parent);
QMetaObject* QAudioOutput_MetaObject(const QAudioOutput* self);
void* QAudioOutput_Metacast(QAudioOutput* self, const char* param1);
int QAudioOutput_Metacall(QAudioOutput* self, int param1, int param2, void** param3);
void QAudioOutput_OnMetacall(QAudioOutput* self, intptr_t slot);
int QAudioOutput_QBaseMetacall(QAudioOutput* self, int param1, int param2, void** param3);
libqt_string QAudioOutput_Tr(const char* s);
libqt_string QAudioOutput_TrUtf8(const char* s);
QAudioFormat* QAudioOutput_Format(const QAudioOutput* self);
void QAudioOutput_Start(QAudioOutput* self, QIODevice* device);
QIODevice* QAudioOutput_Start2(QAudioOutput* self);
void QAudioOutput_Stop(QAudioOutput* self);
void QAudioOutput_Reset(QAudioOutput* self);
void QAudioOutput_Suspend(QAudioOutput* self);
void QAudioOutput_Resume(QAudioOutput* self);
void QAudioOutput_SetBufferSize(QAudioOutput* self, int bytes);
int QAudioOutput_BufferSize(const QAudioOutput* self);
int QAudioOutput_BytesFree(const QAudioOutput* self);
int QAudioOutput_PeriodSize(const QAudioOutput* self);
void QAudioOutput_SetNotifyInterval(QAudioOutput* self, int milliSeconds);
int QAudioOutput_NotifyInterval(const QAudioOutput* self);
long long QAudioOutput_ProcessedUSecs(const QAudioOutput* self);
long long QAudioOutput_ElapsedUSecs(const QAudioOutput* self);
int QAudioOutput_Error(const QAudioOutput* self);
int QAudioOutput_State(const QAudioOutput* self);
void QAudioOutput_SetVolume(QAudioOutput* self, double volume);
double QAudioOutput_Volume(const QAudioOutput* self);
libqt_string QAudioOutput_Category(const QAudioOutput* self);
void QAudioOutput_SetCategory(QAudioOutput* self, libqt_string category);
void QAudioOutput_StateChanged(QAudioOutput* self, int state);
void QAudioOutput_Connect_StateChanged(QAudioOutput* self, intptr_t slot);
void QAudioOutput_Notify(QAudioOutput* self);
void QAudioOutput_Connect_Notify(QAudioOutput* self, intptr_t slot);
libqt_string QAudioOutput_Tr2(const char* s, const char* c);
libqt_string QAudioOutput_Tr3(const char* s, const char* c, int n);
libqt_string QAudioOutput_TrUtf82(const char* s, const char* c);
libqt_string QAudioOutput_TrUtf83(const char* s, const char* c, int n);
bool QAudioOutput_Event(QAudioOutput* self, QEvent* event);
void QAudioOutput_OnEvent(QAudioOutput* self, intptr_t slot);
bool QAudioOutput_QBaseEvent(QAudioOutput* self, QEvent* event);
bool QAudioOutput_EventFilter(QAudioOutput* self, QObject* watched, QEvent* event);
void QAudioOutput_OnEventFilter(QAudioOutput* self, intptr_t slot);
bool QAudioOutput_QBaseEventFilter(QAudioOutput* self, QObject* watched, QEvent* event);
void QAudioOutput_TimerEvent(QAudioOutput* self, QTimerEvent* event);
void QAudioOutput_OnTimerEvent(QAudioOutput* self, intptr_t slot);
void QAudioOutput_QBaseTimerEvent(QAudioOutput* self, QTimerEvent* event);
void QAudioOutput_ChildEvent(QAudioOutput* self, QChildEvent* event);
void QAudioOutput_OnChildEvent(QAudioOutput* self, intptr_t slot);
void QAudioOutput_QBaseChildEvent(QAudioOutput* self, QChildEvent* event);
void QAudioOutput_CustomEvent(QAudioOutput* self, QEvent* event);
void QAudioOutput_OnCustomEvent(QAudioOutput* self, intptr_t slot);
void QAudioOutput_QBaseCustomEvent(QAudioOutput* self, QEvent* event);
void QAudioOutput_ConnectNotify(QAudioOutput* self, QMetaMethod* signal);
void QAudioOutput_OnConnectNotify(QAudioOutput* self, intptr_t slot);
void QAudioOutput_QBaseConnectNotify(QAudioOutput* self, QMetaMethod* signal);
void QAudioOutput_DisconnectNotify(QAudioOutput* self, QMetaMethod* signal);
void QAudioOutput_OnDisconnectNotify(QAudioOutput* self, intptr_t slot);
void QAudioOutput_QBaseDisconnectNotify(QAudioOutput* self, QMetaMethod* signal);
QObject* QAudioOutput_Sender(const QAudioOutput* self);
void QAudioOutput_OnSender(const QAudioOutput* self, intptr_t slot);
QObject* QAudioOutput_QBaseSender(const QAudioOutput* self);
int QAudioOutput_SenderSignalIndex(const QAudioOutput* self);
void QAudioOutput_OnSenderSignalIndex(const QAudioOutput* self, intptr_t slot);
int QAudioOutput_QBaseSenderSignalIndex(const QAudioOutput* self);
int QAudioOutput_Receivers(const QAudioOutput* self, const char* signal);
void QAudioOutput_OnReceivers(const QAudioOutput* self, intptr_t slot);
int QAudioOutput_QBaseReceivers(const QAudioOutput* self, const char* signal);
bool QAudioOutput_IsSignalConnected(const QAudioOutput* self, QMetaMethod* signal);
void QAudioOutput_OnIsSignalConnected(const QAudioOutput* self, intptr_t slot);
bool QAudioOutput_QBaseIsSignalConnected(const QAudioOutput* self, QMetaMethod* signal);
void QAudioOutput_Delete(QAudioOutput* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
