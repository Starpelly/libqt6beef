#pragma once
#ifndef SRC_QT_MULTIMEDIAC_LIBQAUDIOSINK_H
#define SRC_QT_MULTIMEDIAC_LIBQAUDIOSINK_H

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
typedef struct QAudioFormat QAudioFormat;
typedef struct QAudioSink QAudioSink;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QIODevice QIODevice;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QAudioSink* QAudioSink_new();
QTLIBC_API QAudioSink* QAudioSink_new2(QAudioDevice* audioDeviceInfo);
QTLIBC_API QAudioSink* QAudioSink_new3(QAudioFormat* format);
QTLIBC_API QAudioSink* QAudioSink_new4(QAudioFormat* format, QObject* parent);
QTLIBC_API QAudioSink* QAudioSink_new5(QAudioDevice* audioDeviceInfo, QAudioFormat* format);
QTLIBC_API QAudioSink* QAudioSink_new6(QAudioDevice* audioDeviceInfo, QAudioFormat* format, QObject* parent);
QTLIBC_API QMetaObject* QAudioSink_MetaObject(const QAudioSink* self);
QTLIBC_API void* QAudioSink_Metacast(QAudioSink* self, const char* param1);
QTLIBC_API int QAudioSink_Metacall(QAudioSink* self, int param1, int param2, void** param3);
QTLIBC_API void QAudioSink_OnMetacall(QAudioSink* self, intptr_t slot);
QTLIBC_API int QAudioSink_QBaseMetacall(QAudioSink* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QAudioSink_Tr(const char* s);
QTLIBC_API bool QAudioSink_IsNull(const QAudioSink* self);
QTLIBC_API QAudioFormat* QAudioSink_Format(const QAudioSink* self);
QTLIBC_API void QAudioSink_Start(QAudioSink* self, QIODevice* device);
QTLIBC_API QIODevice* QAudioSink_Start2(QAudioSink* self);
QTLIBC_API void QAudioSink_Stop(QAudioSink* self);
QTLIBC_API void QAudioSink_Reset(QAudioSink* self);
QTLIBC_API void QAudioSink_Suspend(QAudioSink* self);
QTLIBC_API void QAudioSink_Resume(QAudioSink* self);
QTLIBC_API void QAudioSink_SetBufferSize(QAudioSink* self, ptrdiff_t bytes);
QTLIBC_API ptrdiff_t QAudioSink_BufferSize(const QAudioSink* self);
QTLIBC_API ptrdiff_t QAudioSink_BytesFree(const QAudioSink* self);
QTLIBC_API long long QAudioSink_ProcessedUSecs(const QAudioSink* self);
QTLIBC_API long long QAudioSink_ElapsedUSecs(const QAudioSink* self);
QTLIBC_API int QAudioSink_Error(const QAudioSink* self);
QTLIBC_API int QAudioSink_State(const QAudioSink* self);
QTLIBC_API void QAudioSink_SetVolume(QAudioSink* self, double volume);
QTLIBC_API double QAudioSink_Volume(const QAudioSink* self);
QTLIBC_API void QAudioSink_StateChanged(QAudioSink* self, int state);
void QAudioSink_Connect_StateChanged(QAudioSink* self, intptr_t slot);
QTLIBC_API libqt_string QAudioSink_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QAudioSink_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QAudioSink_Event(QAudioSink* self, QEvent* event);
QTLIBC_API void QAudioSink_OnEvent(QAudioSink* self, intptr_t slot);
QTLIBC_API bool QAudioSink_QBaseEvent(QAudioSink* self, QEvent* event);
QTLIBC_API bool QAudioSink_EventFilter(QAudioSink* self, QObject* watched, QEvent* event);
QTLIBC_API void QAudioSink_OnEventFilter(QAudioSink* self, intptr_t slot);
QTLIBC_API bool QAudioSink_QBaseEventFilter(QAudioSink* self, QObject* watched, QEvent* event);
QTLIBC_API void QAudioSink_TimerEvent(QAudioSink* self, QTimerEvent* event);
QTLIBC_API void QAudioSink_OnTimerEvent(QAudioSink* self, intptr_t slot);
QTLIBC_API void QAudioSink_QBaseTimerEvent(QAudioSink* self, QTimerEvent* event);
QTLIBC_API void QAudioSink_ChildEvent(QAudioSink* self, QChildEvent* event);
QTLIBC_API void QAudioSink_OnChildEvent(QAudioSink* self, intptr_t slot);
QTLIBC_API void QAudioSink_QBaseChildEvent(QAudioSink* self, QChildEvent* event);
QTLIBC_API void QAudioSink_CustomEvent(QAudioSink* self, QEvent* event);
QTLIBC_API void QAudioSink_OnCustomEvent(QAudioSink* self, intptr_t slot);
QTLIBC_API void QAudioSink_QBaseCustomEvent(QAudioSink* self, QEvent* event);
QTLIBC_API void QAudioSink_ConnectNotify(QAudioSink* self, QMetaMethod* signal);
QTLIBC_API void QAudioSink_OnConnectNotify(QAudioSink* self, intptr_t slot);
QTLIBC_API void QAudioSink_QBaseConnectNotify(QAudioSink* self, QMetaMethod* signal);
QTLIBC_API void QAudioSink_DisconnectNotify(QAudioSink* self, QMetaMethod* signal);
QTLIBC_API void QAudioSink_OnDisconnectNotify(QAudioSink* self, intptr_t slot);
QTLIBC_API void QAudioSink_QBaseDisconnectNotify(QAudioSink* self, QMetaMethod* signal);
QTLIBC_API QObject* QAudioSink_Sender(const QAudioSink* self);
QTLIBC_API void QAudioSink_OnSender(const QAudioSink* self, intptr_t slot);
QTLIBC_API QObject* QAudioSink_QBaseSender(const QAudioSink* self);
QTLIBC_API int QAudioSink_SenderSignalIndex(const QAudioSink* self);
QTLIBC_API void QAudioSink_OnSenderSignalIndex(const QAudioSink* self, intptr_t slot);
QTLIBC_API int QAudioSink_QBaseSenderSignalIndex(const QAudioSink* self);
QTLIBC_API int QAudioSink_Receivers(const QAudioSink* self, const char* signal);
QTLIBC_API void QAudioSink_OnReceivers(const QAudioSink* self, intptr_t slot);
QTLIBC_API int QAudioSink_QBaseReceivers(const QAudioSink* self, const char* signal);
QTLIBC_API bool QAudioSink_IsSignalConnected(const QAudioSink* self, QMetaMethod* signal);
QTLIBC_API void QAudioSink_OnIsSignalConnected(const QAudioSink* self, intptr_t slot);
QTLIBC_API bool QAudioSink_QBaseIsSignalConnected(const QAudioSink* self, QMetaMethod* signal);
QTLIBC_API void QAudioSink_Delete(QAudioSink* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
