#pragma once
#ifndef SRC_QT_MULTIMEDIAC_LIBQAUDIOSOURCE_H
#define SRC_QT_MULTIMEDIAC_LIBQAUDIOSOURCE_H

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
typedef struct QAudioSource QAudioSource;
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

QTLIBC_API QAudioSource* QAudioSource_new();
QTLIBC_API QAudioSource* QAudioSource_new2(QAudioDevice* audioDeviceInfo);
QTLIBC_API QAudioSource* QAudioSource_new3(QAudioFormat* format);
QTLIBC_API QAudioSource* QAudioSource_new4(QAudioFormat* format, QObject* parent);
QTLIBC_API QAudioSource* QAudioSource_new5(QAudioDevice* audioDeviceInfo, QAudioFormat* format);
QTLIBC_API QAudioSource* QAudioSource_new6(QAudioDevice* audioDeviceInfo, QAudioFormat* format, QObject* parent);
QTLIBC_API QMetaObject* QAudioSource_MetaObject(const QAudioSource* self);
QTLIBC_API void* QAudioSource_Metacast(QAudioSource* self, const char* param1);
QTLIBC_API int QAudioSource_Metacall(QAudioSource* self, int param1, int param2, void** param3);
QTLIBC_API void QAudioSource_OnMetacall(QAudioSource* self, intptr_t slot);
QTLIBC_API int QAudioSource_QBaseMetacall(QAudioSource* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QAudioSource_Tr(const char* s);
QTLIBC_API bool QAudioSource_IsNull(const QAudioSource* self);
QTLIBC_API QAudioFormat* QAudioSource_Format(const QAudioSource* self);
QTLIBC_API void QAudioSource_Start(QAudioSource* self, QIODevice* device);
QTLIBC_API QIODevice* QAudioSource_Start2(QAudioSource* self);
QTLIBC_API void QAudioSource_Stop(QAudioSource* self);
QTLIBC_API void QAudioSource_Reset(QAudioSource* self);
QTLIBC_API void QAudioSource_Suspend(QAudioSource* self);
QTLIBC_API void QAudioSource_Resume(QAudioSource* self);
QTLIBC_API void QAudioSource_SetBufferSize(QAudioSource* self, ptrdiff_t bytes);
QTLIBC_API ptrdiff_t QAudioSource_BufferSize(const QAudioSource* self);
QTLIBC_API ptrdiff_t QAudioSource_BytesAvailable(const QAudioSource* self);
QTLIBC_API void QAudioSource_SetVolume(QAudioSource* self, double volume);
QTLIBC_API double QAudioSource_Volume(const QAudioSource* self);
QTLIBC_API long long QAudioSource_ProcessedUSecs(const QAudioSource* self);
QTLIBC_API long long QAudioSource_ElapsedUSecs(const QAudioSource* self);
QTLIBC_API int QAudioSource_Error(const QAudioSource* self);
QTLIBC_API int QAudioSource_State(const QAudioSource* self);
QTLIBC_API void QAudioSource_StateChanged(QAudioSource* self, int state);
QTLIBC_API void QAudioSource_Connect_StateChanged(QAudioSource* self, intptr_t slot);
QTLIBC_API libqt_string QAudioSource_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QAudioSource_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QAudioSource_Event(QAudioSource* self, QEvent* event);
QTLIBC_API void QAudioSource_OnEvent(QAudioSource* self, intptr_t slot);
QTLIBC_API bool QAudioSource_QBaseEvent(QAudioSource* self, QEvent* event);
QTLIBC_API bool QAudioSource_EventFilter(QAudioSource* self, QObject* watched, QEvent* event);
QTLIBC_API void QAudioSource_OnEventFilter(QAudioSource* self, intptr_t slot);
QTLIBC_API bool QAudioSource_QBaseEventFilter(QAudioSource* self, QObject* watched, QEvent* event);
QTLIBC_API void QAudioSource_TimerEvent(QAudioSource* self, QTimerEvent* event);
QTLIBC_API void QAudioSource_OnTimerEvent(QAudioSource* self, intptr_t slot);
QTLIBC_API void QAudioSource_QBaseTimerEvent(QAudioSource* self, QTimerEvent* event);
QTLIBC_API void QAudioSource_ChildEvent(QAudioSource* self, QChildEvent* event);
QTLIBC_API void QAudioSource_OnChildEvent(QAudioSource* self, intptr_t slot);
QTLIBC_API void QAudioSource_QBaseChildEvent(QAudioSource* self, QChildEvent* event);
QTLIBC_API void QAudioSource_CustomEvent(QAudioSource* self, QEvent* event);
QTLIBC_API void QAudioSource_OnCustomEvent(QAudioSource* self, intptr_t slot);
QTLIBC_API void QAudioSource_QBaseCustomEvent(QAudioSource* self, QEvent* event);
QTLIBC_API void QAudioSource_ConnectNotify(QAudioSource* self, QMetaMethod* signal);
QTLIBC_API void QAudioSource_OnConnectNotify(QAudioSource* self, intptr_t slot);
QTLIBC_API void QAudioSource_QBaseConnectNotify(QAudioSource* self, QMetaMethod* signal);
QTLIBC_API void QAudioSource_DisconnectNotify(QAudioSource* self, QMetaMethod* signal);
QTLIBC_API void QAudioSource_OnDisconnectNotify(QAudioSource* self, intptr_t slot);
QTLIBC_API void QAudioSource_QBaseDisconnectNotify(QAudioSource* self, QMetaMethod* signal);
QTLIBC_API QObject* QAudioSource_Sender(const QAudioSource* self);
QTLIBC_API void QAudioSource_OnSender(const QAudioSource* self, intptr_t slot);
QTLIBC_API QObject* QAudioSource_QBaseSender(const QAudioSource* self);
QTLIBC_API int QAudioSource_SenderSignalIndex(const QAudioSource* self);
QTLIBC_API void QAudioSource_OnSenderSignalIndex(const QAudioSource* self, intptr_t slot);
QTLIBC_API int QAudioSource_QBaseSenderSignalIndex(const QAudioSource* self);
QTLIBC_API int QAudioSource_Receivers(const QAudioSource* self, const char* signal);
QTLIBC_API void QAudioSource_OnReceivers(const QAudioSource* self, intptr_t slot);
QTLIBC_API int QAudioSource_QBaseReceivers(const QAudioSource* self, const char* signal);
QTLIBC_API bool QAudioSource_IsSignalConnected(const QAudioSource* self, QMetaMethod* signal);
QTLIBC_API void QAudioSource_OnIsSignalConnected(const QAudioSource* self, intptr_t slot);
QTLIBC_API bool QAudioSource_QBaseIsSignalConnected(const QAudioSource* self, QMetaMethod* signal);
QTLIBC_API void QAudioSource_Delete(QAudioSource* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
