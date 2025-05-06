#pragma once
#ifndef SRC_QTC_LIBQTEMPORARYFILE_H
#define SRC_QTC_LIBQTEMPORARYFILE_H

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
typedef struct QFile QFile;
typedef struct QFileDevice QFileDevice;
typedef struct QIODevice QIODevice;
typedef struct QIODeviceBase QIODeviceBase;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QTemporaryFile QTemporaryFile;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QTemporaryFile* QTemporaryFile_new();
QTLIBC_API QTemporaryFile* QTemporaryFile_new2(libqt_string templateName);
QTLIBC_API QTemporaryFile* QTemporaryFile_new3(QObject* parent);
QTLIBC_API QTemporaryFile* QTemporaryFile_new4(libqt_string templateName, QObject* parent);
QTLIBC_API QMetaObject* QTemporaryFile_MetaObject(const QTemporaryFile* self);
QTLIBC_API void* QTemporaryFile_Metacast(QTemporaryFile* self, const char* param1);
QTLIBC_API int QTemporaryFile_Metacall(QTemporaryFile* self, int param1, int param2, void** param3);
QTLIBC_API void QTemporaryFile_OnMetacall(QTemporaryFile* self, intptr_t slot);
QTLIBC_API int QTemporaryFile_QBaseMetacall(QTemporaryFile* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QTemporaryFile_Tr(const char* s);
QTLIBC_API bool QTemporaryFile_AutoRemove(const QTemporaryFile* self);
QTLIBC_API void QTemporaryFile_SetAutoRemove(QTemporaryFile* self, bool b);
QTLIBC_API bool QTemporaryFile_Open(QTemporaryFile* self);
QTLIBC_API libqt_string QTemporaryFile_FileName(const QTemporaryFile* self);
QTLIBC_API void QTemporaryFile_OnFileName(const QTemporaryFile* self, intptr_t slot);
QTLIBC_API libqt_string QTemporaryFile_QBaseFileName(const QTemporaryFile* self);
QTLIBC_API libqt_string QTemporaryFile_FileTemplate(const QTemporaryFile* self);
QTLIBC_API void QTemporaryFile_SetFileTemplate(QTemporaryFile* self, libqt_string name);
QTLIBC_API bool QTemporaryFile_Rename(QTemporaryFile* self, libqt_string newName);
QTLIBC_API QTemporaryFile* QTemporaryFile_CreateNativeFile(libqt_string fileName);
QTLIBC_API QTemporaryFile* QTemporaryFile_CreateNativeFileWithFile(QFile* file);
QTLIBC_API bool QTemporaryFile_OpenWithFlags(QTemporaryFile* self, int flags);
QTLIBC_API void QTemporaryFile_OnOpenWithFlags(QTemporaryFile* self, intptr_t slot);
QTLIBC_API bool QTemporaryFile_QBaseOpenWithFlags(QTemporaryFile* self, int flags);
QTLIBC_API libqt_string QTemporaryFile_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QTemporaryFile_Tr3(const char* s, const char* c, int n);
QTLIBC_API long long QTemporaryFile_Size(const QTemporaryFile* self);
QTLIBC_API void QTemporaryFile_OnSize(const QTemporaryFile* self, intptr_t slot);
QTLIBC_API long long QTemporaryFile_QBaseSize(const QTemporaryFile* self);
QTLIBC_API bool QTemporaryFile_Resize(QTemporaryFile* self, long long sz);
QTLIBC_API void QTemporaryFile_OnResize(QTemporaryFile* self, intptr_t slot);
QTLIBC_API bool QTemporaryFile_QBaseResize(QTemporaryFile* self, long long sz);
QTLIBC_API int QTemporaryFile_Permissions(const QTemporaryFile* self);
QTLIBC_API void QTemporaryFile_OnPermissions(const QTemporaryFile* self, intptr_t slot);
QTLIBC_API int QTemporaryFile_QBasePermissions(const QTemporaryFile* self);
QTLIBC_API bool QTemporaryFile_SetPermissions(QTemporaryFile* self, int permissionSpec);
QTLIBC_API void QTemporaryFile_OnSetPermissions(QTemporaryFile* self, intptr_t slot);
QTLIBC_API bool QTemporaryFile_QBaseSetPermissions(QTemporaryFile* self, int permissionSpec);
QTLIBC_API void QTemporaryFile_Close(QTemporaryFile* self);
QTLIBC_API void QTemporaryFile_OnClose(QTemporaryFile* self, intptr_t slot);
QTLIBC_API void QTemporaryFile_QBaseClose(QTemporaryFile* self);
QTLIBC_API bool QTemporaryFile_IsSequential(const QTemporaryFile* self);
QTLIBC_API void QTemporaryFile_OnIsSequential(const QTemporaryFile* self, intptr_t slot);
QTLIBC_API bool QTemporaryFile_QBaseIsSequential(const QTemporaryFile* self);
QTLIBC_API long long QTemporaryFile_Pos(const QTemporaryFile* self);
QTLIBC_API void QTemporaryFile_OnPos(const QTemporaryFile* self, intptr_t slot);
QTLIBC_API long long QTemporaryFile_QBasePos(const QTemporaryFile* self);
QTLIBC_API bool QTemporaryFile_Seek(QTemporaryFile* self, long long offset);
QTLIBC_API void QTemporaryFile_OnSeek(QTemporaryFile* self, intptr_t slot);
QTLIBC_API bool QTemporaryFile_QBaseSeek(QTemporaryFile* self, long long offset);
QTLIBC_API bool QTemporaryFile_AtEnd(const QTemporaryFile* self);
QTLIBC_API void QTemporaryFile_OnAtEnd(const QTemporaryFile* self, intptr_t slot);
QTLIBC_API bool QTemporaryFile_QBaseAtEnd(const QTemporaryFile* self);
QTLIBC_API long long QTemporaryFile_ReadData(QTemporaryFile* self, char* data, long long maxlen);
QTLIBC_API void QTemporaryFile_OnReadData(QTemporaryFile* self, intptr_t slot);
QTLIBC_API long long QTemporaryFile_QBaseReadData(QTemporaryFile* self, char* data, long long maxlen);
QTLIBC_API long long QTemporaryFile_WriteData(QTemporaryFile* self, const char* data, long long lenVal);
QTLIBC_API void QTemporaryFile_OnWriteData(QTemporaryFile* self, intptr_t slot);
QTLIBC_API long long QTemporaryFile_QBaseWriteData(QTemporaryFile* self, const char* data, long long lenVal);
QTLIBC_API long long QTemporaryFile_ReadLineData(QTemporaryFile* self, char* data, long long maxlen);
QTLIBC_API void QTemporaryFile_OnReadLineData(QTemporaryFile* self, intptr_t slot);
QTLIBC_API long long QTemporaryFile_QBaseReadLineData(QTemporaryFile* self, char* data, long long maxlen);
QTLIBC_API bool QTemporaryFile_Reset(QTemporaryFile* self);
QTLIBC_API void QTemporaryFile_OnReset(QTemporaryFile* self, intptr_t slot);
QTLIBC_API bool QTemporaryFile_QBaseReset(QTemporaryFile* self);
QTLIBC_API long long QTemporaryFile_BytesAvailable(const QTemporaryFile* self);
QTLIBC_API void QTemporaryFile_OnBytesAvailable(const QTemporaryFile* self, intptr_t slot);
QTLIBC_API long long QTemporaryFile_QBaseBytesAvailable(const QTemporaryFile* self);
QTLIBC_API long long QTemporaryFile_BytesToWrite(const QTemporaryFile* self);
QTLIBC_API void QTemporaryFile_OnBytesToWrite(const QTemporaryFile* self, intptr_t slot);
QTLIBC_API long long QTemporaryFile_QBaseBytesToWrite(const QTemporaryFile* self);
QTLIBC_API bool QTemporaryFile_CanReadLine(const QTemporaryFile* self);
QTLIBC_API void QTemporaryFile_OnCanReadLine(const QTemporaryFile* self, intptr_t slot);
QTLIBC_API bool QTemporaryFile_QBaseCanReadLine(const QTemporaryFile* self);
QTLIBC_API bool QTemporaryFile_WaitForReadyRead(QTemporaryFile* self, int msecs);
QTLIBC_API void QTemporaryFile_OnWaitForReadyRead(QTemporaryFile* self, intptr_t slot);
QTLIBC_API bool QTemporaryFile_QBaseWaitForReadyRead(QTemporaryFile* self, int msecs);
QTLIBC_API bool QTemporaryFile_WaitForBytesWritten(QTemporaryFile* self, int msecs);
QTLIBC_API void QTemporaryFile_OnWaitForBytesWritten(QTemporaryFile* self, intptr_t slot);
QTLIBC_API bool QTemporaryFile_QBaseWaitForBytesWritten(QTemporaryFile* self, int msecs);
QTLIBC_API long long QTemporaryFile_SkipData(QTemporaryFile* self, long long maxSize);
QTLIBC_API void QTemporaryFile_OnSkipData(QTemporaryFile* self, intptr_t slot);
QTLIBC_API long long QTemporaryFile_QBaseSkipData(QTemporaryFile* self, long long maxSize);
QTLIBC_API bool QTemporaryFile_Event(QTemporaryFile* self, QEvent* event);
QTLIBC_API void QTemporaryFile_OnEvent(QTemporaryFile* self, intptr_t slot);
QTLIBC_API bool QTemporaryFile_QBaseEvent(QTemporaryFile* self, QEvent* event);
QTLIBC_API bool QTemporaryFile_EventFilter(QTemporaryFile* self, QObject* watched, QEvent* event);
QTLIBC_API void QTemporaryFile_OnEventFilter(QTemporaryFile* self, intptr_t slot);
QTLIBC_API bool QTemporaryFile_QBaseEventFilter(QTemporaryFile* self, QObject* watched, QEvent* event);
QTLIBC_API void QTemporaryFile_TimerEvent(QTemporaryFile* self, QTimerEvent* event);
QTLIBC_API void QTemporaryFile_OnTimerEvent(QTemporaryFile* self, intptr_t slot);
QTLIBC_API void QTemporaryFile_QBaseTimerEvent(QTemporaryFile* self, QTimerEvent* event);
QTLIBC_API void QTemporaryFile_ChildEvent(QTemporaryFile* self, QChildEvent* event);
QTLIBC_API void QTemporaryFile_OnChildEvent(QTemporaryFile* self, intptr_t slot);
QTLIBC_API void QTemporaryFile_QBaseChildEvent(QTemporaryFile* self, QChildEvent* event);
QTLIBC_API void QTemporaryFile_CustomEvent(QTemporaryFile* self, QEvent* event);
QTLIBC_API void QTemporaryFile_OnCustomEvent(QTemporaryFile* self, intptr_t slot);
QTLIBC_API void QTemporaryFile_QBaseCustomEvent(QTemporaryFile* self, QEvent* event);
QTLIBC_API void QTemporaryFile_ConnectNotify(QTemporaryFile* self, QMetaMethod* signal);
QTLIBC_API void QTemporaryFile_OnConnectNotify(QTemporaryFile* self, intptr_t slot);
QTLIBC_API void QTemporaryFile_QBaseConnectNotify(QTemporaryFile* self, QMetaMethod* signal);
QTLIBC_API void QTemporaryFile_DisconnectNotify(QTemporaryFile* self, QMetaMethod* signal);
QTLIBC_API void QTemporaryFile_OnDisconnectNotify(QTemporaryFile* self, intptr_t slot);
QTLIBC_API void QTemporaryFile_QBaseDisconnectNotify(QTemporaryFile* self, QMetaMethod* signal);
QTLIBC_API void QTemporaryFile_SetOpenMode(QTemporaryFile* self, int openMode);
QTLIBC_API void QTemporaryFile_OnSetOpenMode(QTemporaryFile* self, intptr_t slot);
QTLIBC_API void QTemporaryFile_QBaseSetOpenMode(QTemporaryFile* self, int openMode);
QTLIBC_API void QTemporaryFile_SetErrorString(QTemporaryFile* self, libqt_string errorString);
QTLIBC_API void QTemporaryFile_OnSetErrorString(QTemporaryFile* self, intptr_t slot);
QTLIBC_API void QTemporaryFile_QBaseSetErrorString(QTemporaryFile* self, libqt_string errorString);
QTLIBC_API QObject* QTemporaryFile_Sender(const QTemporaryFile* self);
QTLIBC_API void QTemporaryFile_OnSender(const QTemporaryFile* self, intptr_t slot);
QTLIBC_API QObject* QTemporaryFile_QBaseSender(const QTemporaryFile* self);
QTLIBC_API int QTemporaryFile_SenderSignalIndex(const QTemporaryFile* self);
QTLIBC_API void QTemporaryFile_OnSenderSignalIndex(const QTemporaryFile* self, intptr_t slot);
QTLIBC_API int QTemporaryFile_QBaseSenderSignalIndex(const QTemporaryFile* self);
QTLIBC_API int QTemporaryFile_Receivers(const QTemporaryFile* self, const char* signal);
QTLIBC_API void QTemporaryFile_OnReceivers(const QTemporaryFile* self, intptr_t slot);
QTLIBC_API int QTemporaryFile_QBaseReceivers(const QTemporaryFile* self, const char* signal);
QTLIBC_API bool QTemporaryFile_IsSignalConnected(const QTemporaryFile* self, QMetaMethod* signal);
QTLIBC_API void QTemporaryFile_OnIsSignalConnected(const QTemporaryFile* self, intptr_t slot);
QTLIBC_API bool QTemporaryFile_QBaseIsSignalConnected(const QTemporaryFile* self, QMetaMethod* signal);
QTLIBC_API void QTemporaryFile_Delete(QTemporaryFile* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
