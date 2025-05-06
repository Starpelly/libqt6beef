#pragma once
#ifndef SRC_QTC_LIBQBUFFER_H
#define SRC_QTC_LIBQBUFFER_H

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
typedef struct QBuffer QBuffer;
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

QTLIBC_API QBuffer* QBuffer_new();
QTLIBC_API QBuffer* QBuffer_new2(QObject* parent);
QTLIBC_API QMetaObject* QBuffer_MetaObject(const QBuffer* self);
QTLIBC_API void* QBuffer_Metacast(QBuffer* self, const char* param1);
QTLIBC_API int QBuffer_Metacall(QBuffer* self, int param1, int param2, void** param3);
QTLIBC_API void QBuffer_OnMetacall(QBuffer* self, intptr_t slot);
QTLIBC_API int QBuffer_QBaseMetacall(QBuffer* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QBuffer_Tr(const char* s);
QTLIBC_API libqt_string QBuffer_Buffer(QBuffer* self);
QTLIBC_API libqt_string QBuffer_Buffer2(const QBuffer* self);
QTLIBC_API void QBuffer_SetData(QBuffer* self, libqt_string data);
QTLIBC_API void QBuffer_SetData2(QBuffer* self, const char* data, int lenVal);
QTLIBC_API libqt_string QBuffer_Data(const QBuffer* self);
QTLIBC_API bool QBuffer_Open(QBuffer* self, int openMode);
QTLIBC_API void QBuffer_OnOpen(QBuffer* self, intptr_t slot);
QTLIBC_API bool QBuffer_QBaseOpen(QBuffer* self, int openMode);
QTLIBC_API void QBuffer_Close(QBuffer* self);
QTLIBC_API void QBuffer_OnClose(QBuffer* self, intptr_t slot);
QTLIBC_API void QBuffer_QBaseClose(QBuffer* self);
QTLIBC_API long long QBuffer_Size(const QBuffer* self);
QTLIBC_API void QBuffer_OnSize(const QBuffer* self, intptr_t slot);
QTLIBC_API long long QBuffer_QBaseSize(const QBuffer* self);
QTLIBC_API long long QBuffer_Pos(const QBuffer* self);
QTLIBC_API void QBuffer_OnPos(const QBuffer* self, intptr_t slot);
QTLIBC_API long long QBuffer_QBasePos(const QBuffer* self);
QTLIBC_API bool QBuffer_Seek(QBuffer* self, long long off);
QTLIBC_API void QBuffer_OnSeek(QBuffer* self, intptr_t slot);
QTLIBC_API bool QBuffer_QBaseSeek(QBuffer* self, long long off);
QTLIBC_API bool QBuffer_AtEnd(const QBuffer* self);
QTLIBC_API void QBuffer_OnAtEnd(const QBuffer* self, intptr_t slot);
QTLIBC_API bool QBuffer_QBaseAtEnd(const QBuffer* self);
QTLIBC_API bool QBuffer_CanReadLine(const QBuffer* self);
QTLIBC_API void QBuffer_OnCanReadLine(const QBuffer* self, intptr_t slot);
QTLIBC_API bool QBuffer_QBaseCanReadLine(const QBuffer* self);
QTLIBC_API void QBuffer_ConnectNotify(QBuffer* self, QMetaMethod* param1);
QTLIBC_API void QBuffer_OnConnectNotify(QBuffer* self, intptr_t slot);
QTLIBC_API void QBuffer_QBaseConnectNotify(QBuffer* self, QMetaMethod* param1);
QTLIBC_API void QBuffer_DisconnectNotify(QBuffer* self, QMetaMethod* param1);
QTLIBC_API void QBuffer_OnDisconnectNotify(QBuffer* self, intptr_t slot);
QTLIBC_API void QBuffer_QBaseDisconnectNotify(QBuffer* self, QMetaMethod* param1);
QTLIBC_API long long QBuffer_ReadData(QBuffer* self, char* data, long long maxlen);
QTLIBC_API void QBuffer_OnReadData(QBuffer* self, intptr_t slot);
QTLIBC_API long long QBuffer_QBaseReadData(QBuffer* self, char* data, long long maxlen);
QTLIBC_API long long QBuffer_WriteData(QBuffer* self, const char* data, long long lenVal);
QTLIBC_API void QBuffer_OnWriteData(QBuffer* self, intptr_t slot);
QTLIBC_API long long QBuffer_QBaseWriteData(QBuffer* self, const char* data, long long lenVal);
QTLIBC_API libqt_string QBuffer_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QBuffer_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QBuffer_IsSequential(const QBuffer* self);
QTLIBC_API void QBuffer_OnIsSequential(const QBuffer* self, intptr_t slot);
QTLIBC_API bool QBuffer_QBaseIsSequential(const QBuffer* self);
QTLIBC_API bool QBuffer_Reset(QBuffer* self);
QTLIBC_API void QBuffer_OnReset(QBuffer* self, intptr_t slot);
QTLIBC_API bool QBuffer_QBaseReset(QBuffer* self);
QTLIBC_API long long QBuffer_BytesAvailable(const QBuffer* self);
QTLIBC_API void QBuffer_OnBytesAvailable(const QBuffer* self, intptr_t slot);
QTLIBC_API long long QBuffer_QBaseBytesAvailable(const QBuffer* self);
QTLIBC_API long long QBuffer_BytesToWrite(const QBuffer* self);
QTLIBC_API void QBuffer_OnBytesToWrite(const QBuffer* self, intptr_t slot);
QTLIBC_API long long QBuffer_QBaseBytesToWrite(const QBuffer* self);
QTLIBC_API bool QBuffer_WaitForReadyRead(QBuffer* self, int msecs);
QTLIBC_API void QBuffer_OnWaitForReadyRead(QBuffer* self, intptr_t slot);
QTLIBC_API bool QBuffer_QBaseWaitForReadyRead(QBuffer* self, int msecs);
QTLIBC_API bool QBuffer_WaitForBytesWritten(QBuffer* self, int msecs);
QTLIBC_API void QBuffer_OnWaitForBytesWritten(QBuffer* self, intptr_t slot);
QTLIBC_API bool QBuffer_QBaseWaitForBytesWritten(QBuffer* self, int msecs);
QTLIBC_API long long QBuffer_ReadLineData(QBuffer* self, char* data, long long maxlen);
QTLIBC_API void QBuffer_OnReadLineData(QBuffer* self, intptr_t slot);
QTLIBC_API long long QBuffer_QBaseReadLineData(QBuffer* self, char* data, long long maxlen);
QTLIBC_API long long QBuffer_SkipData(QBuffer* self, long long maxSize);
QTLIBC_API void QBuffer_OnSkipData(QBuffer* self, intptr_t slot);
QTLIBC_API long long QBuffer_QBaseSkipData(QBuffer* self, long long maxSize);
QTLIBC_API bool QBuffer_Event(QBuffer* self, QEvent* event);
QTLIBC_API void QBuffer_OnEvent(QBuffer* self, intptr_t slot);
QTLIBC_API bool QBuffer_QBaseEvent(QBuffer* self, QEvent* event);
QTLIBC_API bool QBuffer_EventFilter(QBuffer* self, QObject* watched, QEvent* event);
QTLIBC_API void QBuffer_OnEventFilter(QBuffer* self, intptr_t slot);
QTLIBC_API bool QBuffer_QBaseEventFilter(QBuffer* self, QObject* watched, QEvent* event);
QTLIBC_API void QBuffer_TimerEvent(QBuffer* self, QTimerEvent* event);
QTLIBC_API void QBuffer_OnTimerEvent(QBuffer* self, intptr_t slot);
QTLIBC_API void QBuffer_QBaseTimerEvent(QBuffer* self, QTimerEvent* event);
QTLIBC_API void QBuffer_ChildEvent(QBuffer* self, QChildEvent* event);
QTLIBC_API void QBuffer_OnChildEvent(QBuffer* self, intptr_t slot);
QTLIBC_API void QBuffer_QBaseChildEvent(QBuffer* self, QChildEvent* event);
QTLIBC_API void QBuffer_CustomEvent(QBuffer* self, QEvent* event);
QTLIBC_API void QBuffer_OnCustomEvent(QBuffer* self, intptr_t slot);
QTLIBC_API void QBuffer_QBaseCustomEvent(QBuffer* self, QEvent* event);
QTLIBC_API void QBuffer_SetOpenMode(QBuffer* self, int openMode);
QTLIBC_API void QBuffer_OnSetOpenMode(QBuffer* self, intptr_t slot);
QTLIBC_API void QBuffer_QBaseSetOpenMode(QBuffer* self, int openMode);
QTLIBC_API void QBuffer_SetErrorString(QBuffer* self, libqt_string errorString);
QTLIBC_API void QBuffer_OnSetErrorString(QBuffer* self, intptr_t slot);
QTLIBC_API void QBuffer_QBaseSetErrorString(QBuffer* self, libqt_string errorString);
QTLIBC_API QObject* QBuffer_Sender(const QBuffer* self);
QTLIBC_API void QBuffer_OnSender(const QBuffer* self, intptr_t slot);
QTLIBC_API QObject* QBuffer_QBaseSender(const QBuffer* self);
QTLIBC_API int QBuffer_SenderSignalIndex(const QBuffer* self);
QTLIBC_API void QBuffer_OnSenderSignalIndex(const QBuffer* self, intptr_t slot);
QTLIBC_API int QBuffer_QBaseSenderSignalIndex(const QBuffer* self);
QTLIBC_API int QBuffer_Receivers(const QBuffer* self, const char* signal);
QTLIBC_API void QBuffer_OnReceivers(const QBuffer* self, intptr_t slot);
QTLIBC_API int QBuffer_QBaseReceivers(const QBuffer* self, const char* signal);
QTLIBC_API bool QBuffer_IsSignalConnected(const QBuffer* self, QMetaMethod* signal);
QTLIBC_API void QBuffer_OnIsSignalConnected(const QBuffer* self, intptr_t slot);
QTLIBC_API bool QBuffer_QBaseIsSignalConnected(const QBuffer* self, QMetaMethod* signal);
QTLIBC_API void QBuffer_Delete(QBuffer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
