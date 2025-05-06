#pragma once
#ifndef SRC_QTC_LIBQIODEVICE_H
#define SRC_QTC_LIBQIODEVICE_H

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
#endif

QTLIBC_API QIODevice* QIODevice_new();
QTLIBC_API QIODevice* QIODevice_new2(QObject* parent);
QTLIBC_API QMetaObject* QIODevice_MetaObject(const QIODevice* self);
QTLIBC_API void* QIODevice_Metacast(QIODevice* self, const char* param1);
QTLIBC_API int QIODevice_Metacall(QIODevice* self, int param1, int param2, void** param3);
QTLIBC_API void QIODevice_OnMetacall(QIODevice* self, intptr_t slot);
QTLIBC_API int QIODevice_QBaseMetacall(QIODevice* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QIODevice_Tr(const char* s);
QTLIBC_API int QIODevice_OpenMode(const QIODevice* self);
QTLIBC_API void QIODevice_SetTextModeEnabled(QIODevice* self, bool enabled);
QTLIBC_API bool QIODevice_IsTextModeEnabled(const QIODevice* self);
QTLIBC_API bool QIODevice_IsOpen(const QIODevice* self);
QTLIBC_API bool QIODevice_IsReadable(const QIODevice* self);
QTLIBC_API bool QIODevice_IsWritable(const QIODevice* self);
QTLIBC_API bool QIODevice_IsSequential(const QIODevice* self);
QTLIBC_API void QIODevice_OnIsSequential(const QIODevice* self, intptr_t slot);
QTLIBC_API bool QIODevice_QBaseIsSequential(const QIODevice* self);
QTLIBC_API int QIODevice_ReadChannelCount(const QIODevice* self);
QTLIBC_API int QIODevice_WriteChannelCount(const QIODevice* self);
QTLIBC_API int QIODevice_CurrentReadChannel(const QIODevice* self);
QTLIBC_API void QIODevice_SetCurrentReadChannel(QIODevice* self, int channel);
QTLIBC_API int QIODevice_CurrentWriteChannel(const QIODevice* self);
QTLIBC_API void QIODevice_SetCurrentWriteChannel(QIODevice* self, int channel);
QTLIBC_API bool QIODevice_Open(QIODevice* self, int mode);
QTLIBC_API void QIODevice_OnOpen(QIODevice* self, intptr_t slot);
QTLIBC_API bool QIODevice_QBaseOpen(QIODevice* self, int mode);
QTLIBC_API void QIODevice_Close(QIODevice* self);
QTLIBC_API void QIODevice_OnClose(QIODevice* self, intptr_t slot);
QTLIBC_API void QIODevice_QBaseClose(QIODevice* self);
QTLIBC_API long long QIODevice_Pos(const QIODevice* self);
QTLIBC_API void QIODevice_OnPos(const QIODevice* self, intptr_t slot);
QTLIBC_API long long QIODevice_QBasePos(const QIODevice* self);
QTLIBC_API long long QIODevice_Size(const QIODevice* self);
QTLIBC_API void QIODevice_OnSize(const QIODevice* self, intptr_t slot);
QTLIBC_API long long QIODevice_QBaseSize(const QIODevice* self);
QTLIBC_API bool QIODevice_Seek(QIODevice* self, long long pos);
QTLIBC_API void QIODevice_OnSeek(QIODevice* self, intptr_t slot);
QTLIBC_API bool QIODevice_QBaseSeek(QIODevice* self, long long pos);
QTLIBC_API bool QIODevice_AtEnd(const QIODevice* self);
QTLIBC_API void QIODevice_OnAtEnd(const QIODevice* self, intptr_t slot);
QTLIBC_API bool QIODevice_QBaseAtEnd(const QIODevice* self);
QTLIBC_API bool QIODevice_Reset(QIODevice* self);
QTLIBC_API void QIODevice_OnReset(QIODevice* self, intptr_t slot);
QTLIBC_API bool QIODevice_QBaseReset(QIODevice* self);
QTLIBC_API long long QIODevice_BytesAvailable(const QIODevice* self);
QTLIBC_API void QIODevice_OnBytesAvailable(const QIODevice* self, intptr_t slot);
QTLIBC_API long long QIODevice_QBaseBytesAvailable(const QIODevice* self);
QTLIBC_API long long QIODevice_BytesToWrite(const QIODevice* self);
QTLIBC_API void QIODevice_OnBytesToWrite(const QIODevice* self, intptr_t slot);
QTLIBC_API long long QIODevice_QBaseBytesToWrite(const QIODevice* self);
QTLIBC_API long long QIODevice_Read(QIODevice* self, char* data, long long maxlen);
QTLIBC_API libqt_string QIODevice_ReadWithMaxlen(QIODevice* self, long long maxlen);
QTLIBC_API libqt_string QIODevice_ReadAll(QIODevice* self);
QTLIBC_API long long QIODevice_ReadLine(QIODevice* self, char* data, long long maxlen);
QTLIBC_API libqt_string QIODevice_ReadLine2(QIODevice* self);
QTLIBC_API bool QIODevice_CanReadLine(const QIODevice* self);
QTLIBC_API void QIODevice_OnCanReadLine(const QIODevice* self, intptr_t slot);
QTLIBC_API bool QIODevice_QBaseCanReadLine(const QIODevice* self);
QTLIBC_API void QIODevice_StartTransaction(QIODevice* self);
QTLIBC_API void QIODevice_CommitTransaction(QIODevice* self);
QTLIBC_API void QIODevice_RollbackTransaction(QIODevice* self);
QTLIBC_API bool QIODevice_IsTransactionStarted(const QIODevice* self);
QTLIBC_API long long QIODevice_Write(QIODevice* self, const char* data, long long lenVal);
QTLIBC_API long long QIODevice_WriteWithData(QIODevice* self, const char* data);
QTLIBC_API long long QIODevice_Write2(QIODevice* self, libqt_string data);
QTLIBC_API long long QIODevice_Peek(QIODevice* self, char* data, long long maxlen);
QTLIBC_API libqt_string QIODevice_PeekWithMaxlen(QIODevice* self, long long maxlen);
QTLIBC_API long long QIODevice_Skip(QIODevice* self, long long maxSize);
QTLIBC_API bool QIODevice_WaitForReadyRead(QIODevice* self, int msecs);
QTLIBC_API void QIODevice_OnWaitForReadyRead(QIODevice* self, intptr_t slot);
QTLIBC_API bool QIODevice_QBaseWaitForReadyRead(QIODevice* self, int msecs);
QTLIBC_API bool QIODevice_WaitForBytesWritten(QIODevice* self, int msecs);
QTLIBC_API void QIODevice_OnWaitForBytesWritten(QIODevice* self, intptr_t slot);
QTLIBC_API bool QIODevice_QBaseWaitForBytesWritten(QIODevice* self, int msecs);
QTLIBC_API void QIODevice_UngetChar(QIODevice* self, char c);
QTLIBC_API bool QIODevice_PutChar(QIODevice* self, char c);
QTLIBC_API bool QIODevice_GetChar(QIODevice* self, char* c);
QTLIBC_API libqt_string QIODevice_ErrorString(const QIODevice* self);
QTLIBC_API void QIODevice_ReadyRead(QIODevice* self);
QTLIBC_API void QIODevice_Connect_ReadyRead(QIODevice* self, intptr_t slot);
QTLIBC_API void QIODevice_ChannelReadyRead(QIODevice* self, int channel);
QTLIBC_API void QIODevice_Connect_ChannelReadyRead(QIODevice* self, intptr_t slot);
QTLIBC_API void QIODevice_BytesWritten(QIODevice* self, long long bytes);
QTLIBC_API void QIODevice_Connect_BytesWritten(QIODevice* self, intptr_t slot);
QTLIBC_API void QIODevice_ChannelBytesWritten(QIODevice* self, int channel, long long bytes);
QTLIBC_API void QIODevice_Connect_ChannelBytesWritten(QIODevice* self, intptr_t slot);
QTLIBC_API void QIODevice_AboutToClose(QIODevice* self);
QTLIBC_API void QIODevice_Connect_AboutToClose(QIODevice* self, intptr_t slot);
QTLIBC_API void QIODevice_ReadChannelFinished(QIODevice* self);
QTLIBC_API void QIODevice_Connect_ReadChannelFinished(QIODevice* self, intptr_t slot);
QTLIBC_API long long QIODevice_ReadData(QIODevice* self, char* data, long long maxlen);
QTLIBC_API void QIODevice_OnReadData(QIODevice* self, intptr_t slot);
QTLIBC_API long long QIODevice_QBaseReadData(QIODevice* self, char* data, long long maxlen);
QTLIBC_API long long QIODevice_ReadLineData(QIODevice* self, char* data, long long maxlen);
QTLIBC_API void QIODevice_OnReadLineData(QIODevice* self, intptr_t slot);
QTLIBC_API long long QIODevice_QBaseReadLineData(QIODevice* self, char* data, long long maxlen);
QTLIBC_API long long QIODevice_SkipData(QIODevice* self, long long maxSize);
QTLIBC_API void QIODevice_OnSkipData(QIODevice* self, intptr_t slot);
QTLIBC_API long long QIODevice_QBaseSkipData(QIODevice* self, long long maxSize);
QTLIBC_API long long QIODevice_WriteData(QIODevice* self, const char* data, long long lenVal);
QTLIBC_API void QIODevice_OnWriteData(QIODevice* self, intptr_t slot);
QTLIBC_API long long QIODevice_QBaseWriteData(QIODevice* self, const char* data, long long lenVal);
QTLIBC_API libqt_string QIODevice_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QIODevice_Tr3(const char* s, const char* c, int n);
QTLIBC_API libqt_string QIODevice_ReadLine1(QIODevice* self, long long maxlen);
QTLIBC_API bool QIODevice_Event(QIODevice* self, QEvent* event);
QTLIBC_API void QIODevice_OnEvent(QIODevice* self, intptr_t slot);
QTLIBC_API bool QIODevice_QBaseEvent(QIODevice* self, QEvent* event);
QTLIBC_API bool QIODevice_EventFilter(QIODevice* self, QObject* watched, QEvent* event);
QTLIBC_API void QIODevice_OnEventFilter(QIODevice* self, intptr_t slot);
QTLIBC_API bool QIODevice_QBaseEventFilter(QIODevice* self, QObject* watched, QEvent* event);
QTLIBC_API void QIODevice_TimerEvent(QIODevice* self, QTimerEvent* event);
QTLIBC_API void QIODevice_OnTimerEvent(QIODevice* self, intptr_t slot);
QTLIBC_API void QIODevice_QBaseTimerEvent(QIODevice* self, QTimerEvent* event);
QTLIBC_API void QIODevice_ChildEvent(QIODevice* self, QChildEvent* event);
QTLIBC_API void QIODevice_OnChildEvent(QIODevice* self, intptr_t slot);
QTLIBC_API void QIODevice_QBaseChildEvent(QIODevice* self, QChildEvent* event);
QTLIBC_API void QIODevice_CustomEvent(QIODevice* self, QEvent* event);
QTLIBC_API void QIODevice_OnCustomEvent(QIODevice* self, intptr_t slot);
QTLIBC_API void QIODevice_QBaseCustomEvent(QIODevice* self, QEvent* event);
QTLIBC_API void QIODevice_ConnectNotify(QIODevice* self, QMetaMethod* signal);
QTLIBC_API void QIODevice_OnConnectNotify(QIODevice* self, intptr_t slot);
QTLIBC_API void QIODevice_QBaseConnectNotify(QIODevice* self, QMetaMethod* signal);
QTLIBC_API void QIODevice_DisconnectNotify(QIODevice* self, QMetaMethod* signal);
QTLIBC_API void QIODevice_OnDisconnectNotify(QIODevice* self, intptr_t slot);
QTLIBC_API void QIODevice_QBaseDisconnectNotify(QIODevice* self, QMetaMethod* signal);
QTLIBC_API void QIODevice_SetOpenMode(QIODevice* self, int openMode);
QTLIBC_API void QIODevice_OnSetOpenMode(QIODevice* self, intptr_t slot);
QTLIBC_API void QIODevice_QBaseSetOpenMode(QIODevice* self, int openMode);
QTLIBC_API void QIODevice_SetErrorString(QIODevice* self, libqt_string errorString);
QTLIBC_API void QIODevice_OnSetErrorString(QIODevice* self, intptr_t slot);
QTLIBC_API void QIODevice_QBaseSetErrorString(QIODevice* self, libqt_string errorString);
QTLIBC_API QObject* QIODevice_Sender(const QIODevice* self);
QTLIBC_API void QIODevice_OnSender(const QIODevice* self, intptr_t slot);
QTLIBC_API QObject* QIODevice_QBaseSender(const QIODevice* self);
QTLIBC_API int QIODevice_SenderSignalIndex(const QIODevice* self);
QTLIBC_API void QIODevice_OnSenderSignalIndex(const QIODevice* self, intptr_t slot);
QTLIBC_API int QIODevice_QBaseSenderSignalIndex(const QIODevice* self);
QTLIBC_API int QIODevice_Receivers(const QIODevice* self, const char* signal);
QTLIBC_API void QIODevice_OnReceivers(const QIODevice* self, intptr_t slot);
QTLIBC_API int QIODevice_QBaseReceivers(const QIODevice* self, const char* signal);
QTLIBC_API bool QIODevice_IsSignalConnected(const QIODevice* self, QMetaMethod* signal);
QTLIBC_API void QIODevice_OnIsSignalConnected(const QIODevice* self, intptr_t slot);
QTLIBC_API bool QIODevice_QBaseIsSignalConnected(const QIODevice* self, QMetaMethod* signal);
QTLIBC_API void QIODevice_Delete(QIODevice* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
