#pragma once
#ifndef SRCC_LIBQFILE_H
#define SRCC_LIBQFILE_H

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
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QFile* QFile_new();
QTLIBC_API QFile* QFile_new2(libqt_string name);
QTLIBC_API QFile* QFile_new3(QObject* parent);
QTLIBC_API QFile* QFile_new4(libqt_string name, QObject* parent);
QTLIBC_API QMetaObject* QFile_MetaObject(const QFile* self);
QTLIBC_API void* QFile_Metacast(QFile* self, const char* param1);
QTLIBC_API int QFile_Metacall(QFile* self, int param1, int param2, void** param3);
QTLIBC_API void QFile_OnMetacall(QFile* self, intptr_t slot);
QTLIBC_API int QFile_QBaseMetacall(QFile* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QFile_Tr(const char* s);
QTLIBC_API libqt_string QFile_FileName(const QFile* self);
QTLIBC_API void QFile_OnFileName(const QFile* self, intptr_t slot);
QTLIBC_API libqt_string QFile_QBaseFileName(const QFile* self);
QTLIBC_API void QFile_SetFileName(QFile* self, libqt_string name);
QTLIBC_API libqt_string QFile_EncodeName(libqt_string fileName);
QTLIBC_API libqt_string QFile_DecodeName(libqt_string localFileName);
QTLIBC_API libqt_string QFile_DecodeNameWithLocalFileName(const char* localFileName);
QTLIBC_API bool QFile_Exists(const QFile* self);
QTLIBC_API bool QFile_ExistsWithFileName(libqt_string fileName);
QTLIBC_API libqt_string QFile_SymLinkTarget(const QFile* self);
QTLIBC_API libqt_string QFile_SymLinkTargetWithFileName(libqt_string fileName);
QTLIBC_API bool QFile_Remove(QFile* self);
QTLIBC_API bool QFile_RemoveWithFileName(libqt_string fileName);
QTLIBC_API bool QFile_MoveToTrash(QFile* self);
QTLIBC_API bool QFile_MoveToTrashWithFileName(libqt_string fileName);
QTLIBC_API bool QFile_Rename(QFile* self, libqt_string newName);
QTLIBC_API bool QFile_Rename2(libqt_string oldName, libqt_string newName);
QTLIBC_API bool QFile_Link(QFile* self, libqt_string newName);
QTLIBC_API bool QFile_Link2(libqt_string fileName, libqt_string newName);
QTLIBC_API bool QFile_Copy(QFile* self, libqt_string newName);
QTLIBC_API bool QFile_Copy2(libqt_string fileName, libqt_string newName);
QTLIBC_API bool QFile_Open(QFile* self, int flags);
QTLIBC_API void QFile_OnOpen(QFile* self, intptr_t slot);
QTLIBC_API bool QFile_QBaseOpen(QFile* self, int flags);
QTLIBC_API bool QFile_Open2(QFile* self, int flags, int permissions);
QTLIBC_API bool QFile_Open4(QFile* self, int fd, int ioFlags);
QTLIBC_API long long QFile_Size(const QFile* self);
QTLIBC_API void QFile_OnSize(const QFile* self, intptr_t slot);
QTLIBC_API long long QFile_QBaseSize(const QFile* self);
QTLIBC_API bool QFile_Resize(QFile* self, long long sz);
QTLIBC_API void QFile_OnResize(QFile* self, intptr_t slot);
QTLIBC_API bool QFile_QBaseResize(QFile* self, long long sz);
QTLIBC_API bool QFile_Resize2(libqt_string filename, long long sz);
QTLIBC_API int QFile_Permissions(const QFile* self);
QTLIBC_API void QFile_OnPermissions(const QFile* self, intptr_t slot);
QTLIBC_API int QFile_QBasePermissions(const QFile* self);
QTLIBC_API int QFile_PermissionsWithFilename(libqt_string filename);
QTLIBC_API bool QFile_SetPermissions(QFile* self, int permissionSpec);
QTLIBC_API void QFile_OnSetPermissions(QFile* self, intptr_t slot);
QTLIBC_API bool QFile_QBaseSetPermissions(QFile* self, int permissionSpec);
QTLIBC_API bool QFile_SetPermissions2(libqt_string filename, int permissionSpec);
QTLIBC_API libqt_string QFile_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QFile_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QFile_Open33(QFile* self, int fd, int ioFlags, int handleFlags);
QTLIBC_API void QFile_Close(QFile* self);
QTLIBC_API void QFile_OnClose(QFile* self, intptr_t slot);
QTLIBC_API void QFile_QBaseClose(QFile* self);
QTLIBC_API bool QFile_IsSequential(const QFile* self);
QTLIBC_API void QFile_OnIsSequential(const QFile* self, intptr_t slot);
QTLIBC_API bool QFile_QBaseIsSequential(const QFile* self);
QTLIBC_API long long QFile_Pos(const QFile* self);
QTLIBC_API void QFile_OnPos(const QFile* self, intptr_t slot);
QTLIBC_API long long QFile_QBasePos(const QFile* self);
QTLIBC_API bool QFile_Seek(QFile* self, long long offset);
QTLIBC_API void QFile_OnSeek(QFile* self, intptr_t slot);
QTLIBC_API bool QFile_QBaseSeek(QFile* self, long long offset);
QTLIBC_API bool QFile_AtEnd(const QFile* self);
QTLIBC_API void QFile_OnAtEnd(const QFile* self, intptr_t slot);
QTLIBC_API bool QFile_QBaseAtEnd(const QFile* self);
QTLIBC_API long long QFile_ReadData(QFile* self, char* data, long long maxlen);
QTLIBC_API void QFile_OnReadData(QFile* self, intptr_t slot);
QTLIBC_API long long QFile_QBaseReadData(QFile* self, char* data, long long maxlen);
QTLIBC_API long long QFile_WriteData(QFile* self, const char* data, long long lenVal);
QTLIBC_API void QFile_OnWriteData(QFile* self, intptr_t slot);
QTLIBC_API long long QFile_QBaseWriteData(QFile* self, const char* data, long long lenVal);
QTLIBC_API long long QFile_ReadLineData(QFile* self, char* data, long long maxlen);
QTLIBC_API void QFile_OnReadLineData(QFile* self, intptr_t slot);
QTLIBC_API long long QFile_QBaseReadLineData(QFile* self, char* data, long long maxlen);
QTLIBC_API bool QFile_Reset(QFile* self);
QTLIBC_API void QFile_OnReset(QFile* self, intptr_t slot);
QTLIBC_API bool QFile_QBaseReset(QFile* self);
QTLIBC_API long long QFile_BytesAvailable(const QFile* self);
QTLIBC_API void QFile_OnBytesAvailable(const QFile* self, intptr_t slot);
QTLIBC_API long long QFile_QBaseBytesAvailable(const QFile* self);
QTLIBC_API long long QFile_BytesToWrite(const QFile* self);
QTLIBC_API void QFile_OnBytesToWrite(const QFile* self, intptr_t slot);
QTLIBC_API long long QFile_QBaseBytesToWrite(const QFile* self);
QTLIBC_API bool QFile_CanReadLine(const QFile* self);
QTLIBC_API void QFile_OnCanReadLine(const QFile* self, intptr_t slot);
QTLIBC_API bool QFile_QBaseCanReadLine(const QFile* self);
QTLIBC_API bool QFile_WaitForReadyRead(QFile* self, int msecs);
QTLIBC_API void QFile_OnWaitForReadyRead(QFile* self, intptr_t slot);
QTLIBC_API bool QFile_QBaseWaitForReadyRead(QFile* self, int msecs);
QTLIBC_API bool QFile_WaitForBytesWritten(QFile* self, int msecs);
QTLIBC_API void QFile_OnWaitForBytesWritten(QFile* self, intptr_t slot);
QTLIBC_API bool QFile_QBaseWaitForBytesWritten(QFile* self, int msecs);
QTLIBC_API long long QFile_SkipData(QFile* self, long long maxSize);
QTLIBC_API void QFile_OnSkipData(QFile* self, intptr_t slot);
QTLIBC_API long long QFile_QBaseSkipData(QFile* self, long long maxSize);
QTLIBC_API bool QFile_Event(QFile* self, QEvent* event);
QTLIBC_API void QFile_OnEvent(QFile* self, intptr_t slot);
QTLIBC_API bool QFile_QBaseEvent(QFile* self, QEvent* event);
QTLIBC_API bool QFile_EventFilter(QFile* self, QObject* watched, QEvent* event);
QTLIBC_API void QFile_OnEventFilter(QFile* self, intptr_t slot);
QTLIBC_API bool QFile_QBaseEventFilter(QFile* self, QObject* watched, QEvent* event);
QTLIBC_API void QFile_TimerEvent(QFile* self, QTimerEvent* event);
QTLIBC_API void QFile_OnTimerEvent(QFile* self, intptr_t slot);
QTLIBC_API void QFile_QBaseTimerEvent(QFile* self, QTimerEvent* event);
QTLIBC_API void QFile_ChildEvent(QFile* self, QChildEvent* event);
QTLIBC_API void QFile_OnChildEvent(QFile* self, intptr_t slot);
QTLIBC_API void QFile_QBaseChildEvent(QFile* self, QChildEvent* event);
QTLIBC_API void QFile_CustomEvent(QFile* self, QEvent* event);
QTLIBC_API void QFile_OnCustomEvent(QFile* self, intptr_t slot);
QTLIBC_API void QFile_QBaseCustomEvent(QFile* self, QEvent* event);
QTLIBC_API void QFile_ConnectNotify(QFile* self, QMetaMethod* signal);
QTLIBC_API void QFile_OnConnectNotify(QFile* self, intptr_t slot);
QTLIBC_API void QFile_QBaseConnectNotify(QFile* self, QMetaMethod* signal);
QTLIBC_API void QFile_DisconnectNotify(QFile* self, QMetaMethod* signal);
QTLIBC_API void QFile_OnDisconnectNotify(QFile* self, intptr_t slot);
QTLIBC_API void QFile_QBaseDisconnectNotify(QFile* self, QMetaMethod* signal);
QTLIBC_API void QFile_SetOpenMode(QFile* self, int openMode);
QTLIBC_API void QFile_OnSetOpenMode(QFile* self, intptr_t slot);
QTLIBC_API void QFile_QBaseSetOpenMode(QFile* self, int openMode);
QTLIBC_API void QFile_SetErrorString(QFile* self, libqt_string errorString);
QTLIBC_API void QFile_OnSetErrorString(QFile* self, intptr_t slot);
QTLIBC_API void QFile_QBaseSetErrorString(QFile* self, libqt_string errorString);
QTLIBC_API QObject* QFile_Sender(const QFile* self);
QTLIBC_API void QFile_OnSender(const QFile* self, intptr_t slot);
QTLIBC_API QObject* QFile_QBaseSender(const QFile* self);
QTLIBC_API int QFile_SenderSignalIndex(const QFile* self);
QTLIBC_API void QFile_OnSenderSignalIndex(const QFile* self, intptr_t slot);
QTLIBC_API int QFile_QBaseSenderSignalIndex(const QFile* self);
QTLIBC_API int QFile_Receivers(const QFile* self, const char* signal);
QTLIBC_API void QFile_OnReceivers(const QFile* self, intptr_t slot);
QTLIBC_API int QFile_QBaseReceivers(const QFile* self, const char* signal);
QTLIBC_API bool QFile_IsSignalConnected(const QFile* self, QMetaMethod* signal);
QTLIBC_API void QFile_OnIsSignalConnected(const QFile* self, intptr_t slot);
QTLIBC_API bool QFile_QBaseIsSignalConnected(const QFile* self, QMetaMethod* signal);
QTLIBC_API void QFile_Delete(QFile* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
