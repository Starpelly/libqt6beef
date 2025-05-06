#pragma once
#ifndef SRCC_LIBQSAVEFILE_H
#define SRCC_LIBQSAVEFILE_H

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
typedef struct QDateTime QDateTime;
typedef struct QEvent QEvent;
typedef struct QFileDevice QFileDevice;
typedef struct QIODevice QIODevice;
typedef struct QIODeviceBase QIODeviceBase;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QSaveFile QSaveFile;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QSaveFile* QSaveFile_new(libqt_string name);
QTLIBC_API QSaveFile* QSaveFile_new2();
QTLIBC_API QSaveFile* QSaveFile_new3(libqt_string name, QObject* parent);
QTLIBC_API QSaveFile* QSaveFile_new4(QObject* parent);
QTLIBC_API QMetaObject* QSaveFile_MetaObject(const QSaveFile* self);
QTLIBC_API void* QSaveFile_Metacast(QSaveFile* self, const char* param1);
QTLIBC_API int QSaveFile_Metacall(QSaveFile* self, int param1, int param2, void** param3);
QTLIBC_API void QSaveFile_OnMetacall(QSaveFile* self, intptr_t slot);
QTLIBC_API int QSaveFile_QBaseMetacall(QSaveFile* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QSaveFile_Tr(const char* s);
QTLIBC_API libqt_string QSaveFile_FileName(const QSaveFile* self);
QTLIBC_API void QSaveFile_OnFileName(const QSaveFile* self, intptr_t slot);
QTLIBC_API libqt_string QSaveFile_QBaseFileName(const QSaveFile* self);
QTLIBC_API void QSaveFile_SetFileName(QSaveFile* self, libqt_string name);
QTLIBC_API bool QSaveFile_Open(QSaveFile* self, int flags);
QTLIBC_API void QSaveFile_OnOpen(QSaveFile* self, intptr_t slot);
QTLIBC_API bool QSaveFile_QBaseOpen(QSaveFile* self, int flags);
QTLIBC_API bool QSaveFile_Commit(QSaveFile* self);
QTLIBC_API void QSaveFile_CancelWriting(QSaveFile* self);
QTLIBC_API void QSaveFile_SetDirectWriteFallback(QSaveFile* self, bool enabled);
QTLIBC_API bool QSaveFile_DirectWriteFallback(const QSaveFile* self);
QTLIBC_API long long QSaveFile_WriteData(QSaveFile* self, const char* data, long long lenVal);
QTLIBC_API void QSaveFile_OnWriteData(QSaveFile* self, intptr_t slot);
QTLIBC_API long long QSaveFile_QBaseWriteData(QSaveFile* self, const char* data, long long lenVal);
QTLIBC_API libqt_string QSaveFile_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QSaveFile_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QSaveFile_IsSequential(const QSaveFile* self);
QTLIBC_API void QSaveFile_OnIsSequential(const QSaveFile* self, intptr_t slot);
QTLIBC_API bool QSaveFile_QBaseIsSequential(const QSaveFile* self);
QTLIBC_API long long QSaveFile_Pos(const QSaveFile* self);
QTLIBC_API void QSaveFile_OnPos(const QSaveFile* self, intptr_t slot);
QTLIBC_API long long QSaveFile_QBasePos(const QSaveFile* self);
QTLIBC_API bool QSaveFile_Seek(QSaveFile* self, long long offset);
QTLIBC_API void QSaveFile_OnSeek(QSaveFile* self, intptr_t slot);
QTLIBC_API bool QSaveFile_QBaseSeek(QSaveFile* self, long long offset);
QTLIBC_API bool QSaveFile_AtEnd(const QSaveFile* self);
QTLIBC_API void QSaveFile_OnAtEnd(const QSaveFile* self, intptr_t slot);
QTLIBC_API bool QSaveFile_QBaseAtEnd(const QSaveFile* self);
QTLIBC_API long long QSaveFile_Size(const QSaveFile* self);
QTLIBC_API void QSaveFile_OnSize(const QSaveFile* self, intptr_t slot);
QTLIBC_API long long QSaveFile_QBaseSize(const QSaveFile* self);
QTLIBC_API bool QSaveFile_Resize(QSaveFile* self, long long sz);
QTLIBC_API void QSaveFile_OnResize(QSaveFile* self, intptr_t slot);
QTLIBC_API bool QSaveFile_QBaseResize(QSaveFile* self, long long sz);
QTLIBC_API int QSaveFile_Permissions(const QSaveFile* self);
QTLIBC_API void QSaveFile_OnPermissions(const QSaveFile* self, intptr_t slot);
QTLIBC_API int QSaveFile_QBasePermissions(const QSaveFile* self);
QTLIBC_API bool QSaveFile_SetPermissions(QSaveFile* self, int permissionSpec);
QTLIBC_API void QSaveFile_OnSetPermissions(QSaveFile* self, intptr_t slot);
QTLIBC_API bool QSaveFile_QBaseSetPermissions(QSaveFile* self, int permissionSpec);
QTLIBC_API long long QSaveFile_ReadData(QSaveFile* self, char* data, long long maxlen);
QTLIBC_API void QSaveFile_OnReadData(QSaveFile* self, intptr_t slot);
QTLIBC_API long long QSaveFile_QBaseReadData(QSaveFile* self, char* data, long long maxlen);
QTLIBC_API long long QSaveFile_ReadLineData(QSaveFile* self, char* data, long long maxlen);
QTLIBC_API void QSaveFile_OnReadLineData(QSaveFile* self, intptr_t slot);
QTLIBC_API long long QSaveFile_QBaseReadLineData(QSaveFile* self, char* data, long long maxlen);
QTLIBC_API bool QSaveFile_Reset(QSaveFile* self);
QTLIBC_API void QSaveFile_OnReset(QSaveFile* self, intptr_t slot);
QTLIBC_API bool QSaveFile_QBaseReset(QSaveFile* self);
QTLIBC_API long long QSaveFile_BytesAvailable(const QSaveFile* self);
QTLIBC_API void QSaveFile_OnBytesAvailable(const QSaveFile* self, intptr_t slot);
QTLIBC_API long long QSaveFile_QBaseBytesAvailable(const QSaveFile* self);
QTLIBC_API long long QSaveFile_BytesToWrite(const QSaveFile* self);
QTLIBC_API void QSaveFile_OnBytesToWrite(const QSaveFile* self, intptr_t slot);
QTLIBC_API long long QSaveFile_QBaseBytesToWrite(const QSaveFile* self);
QTLIBC_API bool QSaveFile_CanReadLine(const QSaveFile* self);
QTLIBC_API void QSaveFile_OnCanReadLine(const QSaveFile* self, intptr_t slot);
QTLIBC_API bool QSaveFile_QBaseCanReadLine(const QSaveFile* self);
QTLIBC_API bool QSaveFile_WaitForReadyRead(QSaveFile* self, int msecs);
QTLIBC_API void QSaveFile_OnWaitForReadyRead(QSaveFile* self, intptr_t slot);
QTLIBC_API bool QSaveFile_QBaseWaitForReadyRead(QSaveFile* self, int msecs);
QTLIBC_API bool QSaveFile_WaitForBytesWritten(QSaveFile* self, int msecs);
QTLIBC_API void QSaveFile_OnWaitForBytesWritten(QSaveFile* self, intptr_t slot);
QTLIBC_API bool QSaveFile_QBaseWaitForBytesWritten(QSaveFile* self, int msecs);
QTLIBC_API long long QSaveFile_SkipData(QSaveFile* self, long long maxSize);
QTLIBC_API void QSaveFile_OnSkipData(QSaveFile* self, intptr_t slot);
QTLIBC_API long long QSaveFile_QBaseSkipData(QSaveFile* self, long long maxSize);
QTLIBC_API bool QSaveFile_Event(QSaveFile* self, QEvent* event);
QTLIBC_API void QSaveFile_OnEvent(QSaveFile* self, intptr_t slot);
QTLIBC_API bool QSaveFile_QBaseEvent(QSaveFile* self, QEvent* event);
QTLIBC_API bool QSaveFile_EventFilter(QSaveFile* self, QObject* watched, QEvent* event);
QTLIBC_API void QSaveFile_OnEventFilter(QSaveFile* self, intptr_t slot);
QTLIBC_API bool QSaveFile_QBaseEventFilter(QSaveFile* self, QObject* watched, QEvent* event);
QTLIBC_API void QSaveFile_TimerEvent(QSaveFile* self, QTimerEvent* event);
QTLIBC_API void QSaveFile_OnTimerEvent(QSaveFile* self, intptr_t slot);
QTLIBC_API void QSaveFile_QBaseTimerEvent(QSaveFile* self, QTimerEvent* event);
QTLIBC_API void QSaveFile_ChildEvent(QSaveFile* self, QChildEvent* event);
QTLIBC_API void QSaveFile_OnChildEvent(QSaveFile* self, intptr_t slot);
QTLIBC_API void QSaveFile_QBaseChildEvent(QSaveFile* self, QChildEvent* event);
QTLIBC_API void QSaveFile_CustomEvent(QSaveFile* self, QEvent* event);
QTLIBC_API void QSaveFile_OnCustomEvent(QSaveFile* self, intptr_t slot);
QTLIBC_API void QSaveFile_QBaseCustomEvent(QSaveFile* self, QEvent* event);
QTLIBC_API void QSaveFile_ConnectNotify(QSaveFile* self, QMetaMethod* signal);
QTLIBC_API void QSaveFile_OnConnectNotify(QSaveFile* self, intptr_t slot);
QTLIBC_API void QSaveFile_QBaseConnectNotify(QSaveFile* self, QMetaMethod* signal);
QTLIBC_API void QSaveFile_DisconnectNotify(QSaveFile* self, QMetaMethod* signal);
QTLIBC_API void QSaveFile_OnDisconnectNotify(QSaveFile* self, intptr_t slot);
QTLIBC_API void QSaveFile_QBaseDisconnectNotify(QSaveFile* self, QMetaMethod* signal);
QTLIBC_API void QSaveFile_SetOpenMode(QSaveFile* self, int openMode);
QTLIBC_API void QSaveFile_OnSetOpenMode(QSaveFile* self, intptr_t slot);
QTLIBC_API void QSaveFile_QBaseSetOpenMode(QSaveFile* self, int openMode);
QTLIBC_API void QSaveFile_SetErrorString(QSaveFile* self, libqt_string errorString);
QTLIBC_API void QSaveFile_OnSetErrorString(QSaveFile* self, intptr_t slot);
QTLIBC_API void QSaveFile_QBaseSetErrorString(QSaveFile* self, libqt_string errorString);
QTLIBC_API QObject* QSaveFile_Sender(const QSaveFile* self);
QTLIBC_API void QSaveFile_OnSender(const QSaveFile* self, intptr_t slot);
QTLIBC_API QObject* QSaveFile_QBaseSender(const QSaveFile* self);
QTLIBC_API int QSaveFile_SenderSignalIndex(const QSaveFile* self);
QTLIBC_API void QSaveFile_OnSenderSignalIndex(const QSaveFile* self, intptr_t slot);
QTLIBC_API int QSaveFile_QBaseSenderSignalIndex(const QSaveFile* self);
QTLIBC_API int QSaveFile_Receivers(const QSaveFile* self, const char* signal);
QTLIBC_API void QSaveFile_OnReceivers(const QSaveFile* self, intptr_t slot);
QTLIBC_API int QSaveFile_QBaseReceivers(const QSaveFile* self, const char* signal);
QTLIBC_API bool QSaveFile_IsSignalConnected(const QSaveFile* self, QMetaMethod* signal);
QTLIBC_API void QSaveFile_OnIsSignalConnected(const QSaveFile* self, intptr_t slot);
QTLIBC_API bool QSaveFile_QBaseIsSignalConnected(const QSaveFile* self, QMetaMethod* signal);
QTLIBC_API void QSaveFile_Delete(QSaveFile* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
