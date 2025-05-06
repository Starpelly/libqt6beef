#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQWAVEDECODER_H
#define SRC_MULTIMEDIAC_LIBQWAVEDECODER_H

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
typedef struct QAudioFormat QAudioFormat;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QIODevice QIODevice;
typedef struct QIODeviceBase QIODeviceBase;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWaveDecoder QWaveDecoder;
#endif

QTLIBC_API QWaveDecoder* QWaveDecoder_new(QIODevice* device);
QTLIBC_API QWaveDecoder* QWaveDecoder_new2(QIODevice* device, QAudioFormat* format);
QTLIBC_API QWaveDecoder* QWaveDecoder_new3(QIODevice* device, QObject* parent);
QTLIBC_API QWaveDecoder* QWaveDecoder_new4(QIODevice* device, QAudioFormat* format, QObject* parent);
QTLIBC_API QMetaObject* QWaveDecoder_MetaObject(const QWaveDecoder* self);
QTLIBC_API void* QWaveDecoder_Metacast(QWaveDecoder* self, const char* param1);
QTLIBC_API int QWaveDecoder_Metacall(QWaveDecoder* self, int param1, int param2, void** param3);
QTLIBC_API void QWaveDecoder_OnMetacall(QWaveDecoder* self, intptr_t slot);
QTLIBC_API int QWaveDecoder_QBaseMetacall(QWaveDecoder* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QWaveDecoder_Tr(const char* s);
QTLIBC_API QAudioFormat* QWaveDecoder_AudioFormat(const QWaveDecoder* self);
QTLIBC_API QIODevice* QWaveDecoder_GetDevice(QWaveDecoder* self);
QTLIBC_API int QWaveDecoder_Duration(const QWaveDecoder* self);
QTLIBC_API long long QWaveDecoder_HeaderLength();
QTLIBC_API bool QWaveDecoder_Open(QWaveDecoder* self, int mode);
QTLIBC_API void QWaveDecoder_OnOpen(QWaveDecoder* self, intptr_t slot);
QTLIBC_API bool QWaveDecoder_QBaseOpen(QWaveDecoder* self, int mode);
QTLIBC_API void QWaveDecoder_Close(QWaveDecoder* self);
QTLIBC_API void QWaveDecoder_OnClose(QWaveDecoder* self, intptr_t slot);
QTLIBC_API void QWaveDecoder_QBaseClose(QWaveDecoder* self);
QTLIBC_API bool QWaveDecoder_Seek(QWaveDecoder* self, long long pos);
QTLIBC_API void QWaveDecoder_OnSeek(QWaveDecoder* self, intptr_t slot);
QTLIBC_API bool QWaveDecoder_QBaseSeek(QWaveDecoder* self, long long pos);
QTLIBC_API long long QWaveDecoder_Pos(const QWaveDecoder* self);
QTLIBC_API void QWaveDecoder_OnPos(const QWaveDecoder* self, intptr_t slot);
QTLIBC_API long long QWaveDecoder_QBasePos(const QWaveDecoder* self);
QTLIBC_API long long QWaveDecoder_Size(const QWaveDecoder* self);
QTLIBC_API void QWaveDecoder_OnSize(const QWaveDecoder* self, intptr_t slot);
QTLIBC_API long long QWaveDecoder_QBaseSize(const QWaveDecoder* self);
QTLIBC_API bool QWaveDecoder_IsSequential(const QWaveDecoder* self);
QTLIBC_API void QWaveDecoder_OnIsSequential(const QWaveDecoder* self, intptr_t slot);
QTLIBC_API bool QWaveDecoder_QBaseIsSequential(const QWaveDecoder* self);
QTLIBC_API long long QWaveDecoder_BytesAvailable(const QWaveDecoder* self);
QTLIBC_API void QWaveDecoder_OnBytesAvailable(const QWaveDecoder* self, intptr_t slot);
QTLIBC_API long long QWaveDecoder_QBaseBytesAvailable(const QWaveDecoder* self);
QTLIBC_API void QWaveDecoder_FormatKnown(QWaveDecoder* self);
void QWaveDecoder_Connect_FormatKnown(QWaveDecoder* self, intptr_t slot);
QTLIBC_API void QWaveDecoder_ParsingError(QWaveDecoder* self);
void QWaveDecoder_Connect_ParsingError(QWaveDecoder* self, intptr_t slot);
QTLIBC_API libqt_string QWaveDecoder_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QWaveDecoder_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QWaveDecoder_AtEnd(const QWaveDecoder* self);
QTLIBC_API void QWaveDecoder_OnAtEnd(const QWaveDecoder* self, intptr_t slot);
QTLIBC_API bool QWaveDecoder_QBaseAtEnd(const QWaveDecoder* self);
QTLIBC_API bool QWaveDecoder_Reset(QWaveDecoder* self);
QTLIBC_API void QWaveDecoder_OnReset(QWaveDecoder* self, intptr_t slot);
QTLIBC_API bool QWaveDecoder_QBaseReset(QWaveDecoder* self);
QTLIBC_API long long QWaveDecoder_BytesToWrite(const QWaveDecoder* self);
QTLIBC_API void QWaveDecoder_OnBytesToWrite(const QWaveDecoder* self, intptr_t slot);
QTLIBC_API long long QWaveDecoder_QBaseBytesToWrite(const QWaveDecoder* self);
QTLIBC_API bool QWaveDecoder_CanReadLine(const QWaveDecoder* self);
QTLIBC_API void QWaveDecoder_OnCanReadLine(const QWaveDecoder* self, intptr_t slot);
QTLIBC_API bool QWaveDecoder_QBaseCanReadLine(const QWaveDecoder* self);
QTLIBC_API bool QWaveDecoder_WaitForReadyRead(QWaveDecoder* self, int msecs);
QTLIBC_API void QWaveDecoder_OnWaitForReadyRead(QWaveDecoder* self, intptr_t slot);
QTLIBC_API bool QWaveDecoder_QBaseWaitForReadyRead(QWaveDecoder* self, int msecs);
QTLIBC_API bool QWaveDecoder_WaitForBytesWritten(QWaveDecoder* self, int msecs);
QTLIBC_API void QWaveDecoder_OnWaitForBytesWritten(QWaveDecoder* self, intptr_t slot);
QTLIBC_API bool QWaveDecoder_QBaseWaitForBytesWritten(QWaveDecoder* self, int msecs);
QTLIBC_API long long QWaveDecoder_ReadLineData(QWaveDecoder* self, char* data, long long maxlen);
QTLIBC_API void QWaveDecoder_OnReadLineData(QWaveDecoder* self, intptr_t slot);
QTLIBC_API long long QWaveDecoder_QBaseReadLineData(QWaveDecoder* self, char* data, long long maxlen);
QTLIBC_API long long QWaveDecoder_SkipData(QWaveDecoder* self, long long maxSize);
QTLIBC_API void QWaveDecoder_OnSkipData(QWaveDecoder* self, intptr_t slot);
QTLIBC_API long long QWaveDecoder_QBaseSkipData(QWaveDecoder* self, long long maxSize);
QTLIBC_API bool QWaveDecoder_Event(QWaveDecoder* self, QEvent* event);
QTLIBC_API void QWaveDecoder_OnEvent(QWaveDecoder* self, intptr_t slot);
QTLIBC_API bool QWaveDecoder_QBaseEvent(QWaveDecoder* self, QEvent* event);
QTLIBC_API bool QWaveDecoder_EventFilter(QWaveDecoder* self, QObject* watched, QEvent* event);
QTLIBC_API void QWaveDecoder_OnEventFilter(QWaveDecoder* self, intptr_t slot);
QTLIBC_API bool QWaveDecoder_QBaseEventFilter(QWaveDecoder* self, QObject* watched, QEvent* event);
QTLIBC_API void QWaveDecoder_TimerEvent(QWaveDecoder* self, QTimerEvent* event);
QTLIBC_API void QWaveDecoder_OnTimerEvent(QWaveDecoder* self, intptr_t slot);
QTLIBC_API void QWaveDecoder_QBaseTimerEvent(QWaveDecoder* self, QTimerEvent* event);
QTLIBC_API void QWaveDecoder_ChildEvent(QWaveDecoder* self, QChildEvent* event);
QTLIBC_API void QWaveDecoder_OnChildEvent(QWaveDecoder* self, intptr_t slot);
QTLIBC_API void QWaveDecoder_QBaseChildEvent(QWaveDecoder* self, QChildEvent* event);
QTLIBC_API void QWaveDecoder_CustomEvent(QWaveDecoder* self, QEvent* event);
QTLIBC_API void QWaveDecoder_OnCustomEvent(QWaveDecoder* self, intptr_t slot);
QTLIBC_API void QWaveDecoder_QBaseCustomEvent(QWaveDecoder* self, QEvent* event);
QTLIBC_API void QWaveDecoder_ConnectNotify(QWaveDecoder* self, QMetaMethod* signal);
QTLIBC_API void QWaveDecoder_OnConnectNotify(QWaveDecoder* self, intptr_t slot);
QTLIBC_API void QWaveDecoder_QBaseConnectNotify(QWaveDecoder* self, QMetaMethod* signal);
QTLIBC_API void QWaveDecoder_DisconnectNotify(QWaveDecoder* self, QMetaMethod* signal);
QTLIBC_API void QWaveDecoder_OnDisconnectNotify(QWaveDecoder* self, intptr_t slot);
QTLIBC_API void QWaveDecoder_QBaseDisconnectNotify(QWaveDecoder* self, QMetaMethod* signal);
QTLIBC_API void QWaveDecoder_SetOpenMode(QWaveDecoder* self, int openMode);
QTLIBC_API void QWaveDecoder_OnSetOpenMode(QWaveDecoder* self, intptr_t slot);
QTLIBC_API void QWaveDecoder_QBaseSetOpenMode(QWaveDecoder* self, int openMode);
QTLIBC_API void QWaveDecoder_SetErrorString(QWaveDecoder* self, libqt_string errorString);
QTLIBC_API void QWaveDecoder_OnSetErrorString(QWaveDecoder* self, intptr_t slot);
QTLIBC_API void QWaveDecoder_QBaseSetErrorString(QWaveDecoder* self, libqt_string errorString);
QTLIBC_API QObject* QWaveDecoder_Sender(const QWaveDecoder* self);
QTLIBC_API void QWaveDecoder_OnSender(const QWaveDecoder* self, intptr_t slot);
QTLIBC_API QObject* QWaveDecoder_QBaseSender(const QWaveDecoder* self);
QTLIBC_API int QWaveDecoder_SenderSignalIndex(const QWaveDecoder* self);
QTLIBC_API void QWaveDecoder_OnSenderSignalIndex(const QWaveDecoder* self, intptr_t slot);
QTLIBC_API int QWaveDecoder_QBaseSenderSignalIndex(const QWaveDecoder* self);
QTLIBC_API int QWaveDecoder_Receivers(const QWaveDecoder* self, const char* signal);
QTLIBC_API void QWaveDecoder_OnReceivers(const QWaveDecoder* self, intptr_t slot);
QTLIBC_API int QWaveDecoder_QBaseReceivers(const QWaveDecoder* self, const char* signal);
QTLIBC_API bool QWaveDecoder_IsSignalConnected(const QWaveDecoder* self, QMetaMethod* signal);
QTLIBC_API void QWaveDecoder_OnIsSignalConnected(const QWaveDecoder* self, intptr_t slot);
QTLIBC_API bool QWaveDecoder_QBaseIsSignalConnected(const QWaveDecoder* self, QMetaMethod* signal);
QTLIBC_API void QWaveDecoder_Delete(QWaveDecoder* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
