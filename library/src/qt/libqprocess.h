#pragma once
#ifndef SRC_QTC_LIBQPROCESS_H
#define SRC_QTC_LIBQPROCESS_H

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
typedef struct QProcess QProcess;
typedef struct QProcessEnvironment QProcessEnvironment;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QProcess::ExitStatus ExitStatus;                    // C++ enum
typedef QProcess::InputChannelMode InputChannelMode;        // C++ enum
typedef QProcess::ProcessChannel ProcessChannel;            // C++ enum
typedef QProcess::ProcessChannelMode ProcessChannelMode;    // C++ enum
typedef QProcess::ProcessError ProcessError;                // C++ enum
typedef QProcess::ProcessState ProcessState;                // C++ enum
typedef QProcessEnvironment::Initialization Initialization; // C++ enum
#else
typedef int ExitStatus;         // C ABI enum
typedef int Initialization;     // C ABI enum
typedef int InputChannelMode;   // C ABI enum
typedef int ProcessChannel;     // C ABI enum
typedef int ProcessChannelMode; // C ABI enum
typedef int ProcessError;       // C ABI enum
typedef int ProcessState;       // C ABI enum
#endif

QTLIBC_API QProcessEnvironment* QProcessEnvironment_new();
QTLIBC_API QProcessEnvironment* QProcessEnvironment_new2(int param1);
QTLIBC_API QProcessEnvironment* QProcessEnvironment_new3(QProcessEnvironment* other);
QTLIBC_API void QProcessEnvironment_OperatorAssign(QProcessEnvironment* self, QProcessEnvironment* other);
QTLIBC_API void QProcessEnvironment_Swap(QProcessEnvironment* self, QProcessEnvironment* other);
QTLIBC_API bool QProcessEnvironment_OperatorEqual(const QProcessEnvironment* self, QProcessEnvironment* other);
QTLIBC_API bool QProcessEnvironment_OperatorNotEqual(const QProcessEnvironment* self, QProcessEnvironment* other);
QTLIBC_API bool QProcessEnvironment_IsEmpty(const QProcessEnvironment* self);
QTLIBC_API bool QProcessEnvironment_InheritsFromParent(const QProcessEnvironment* self);
QTLIBC_API void QProcessEnvironment_Clear(QProcessEnvironment* self);
QTLIBC_API bool QProcessEnvironment_Contains(const QProcessEnvironment* self, libqt_string name);
QTLIBC_API void QProcessEnvironment_Insert(QProcessEnvironment* self, libqt_string name, libqt_string value);
QTLIBC_API void QProcessEnvironment_Remove(QProcessEnvironment* self, libqt_string name);
QTLIBC_API libqt_string QProcessEnvironment_Value(const QProcessEnvironment* self, libqt_string name);
QTLIBC_API libqt_list /* of libqt_string */ QProcessEnvironment_ToStringList(const QProcessEnvironment* self);
QTLIBC_API libqt_list /* of libqt_string */ QProcessEnvironment_Keys(const QProcessEnvironment* self);
QTLIBC_API void QProcessEnvironment_InsertWithQProcessEnvironment(QProcessEnvironment* self, QProcessEnvironment* e);
QTLIBC_API QProcessEnvironment* QProcessEnvironment_SystemEnvironment();
QTLIBC_API libqt_string QProcessEnvironment_Value2(const QProcessEnvironment* self, libqt_string name, libqt_string defaultValue);
QTLIBC_API void QProcessEnvironment_Delete(QProcessEnvironment* self);

QTLIBC_API QProcess* QProcess_new();
QTLIBC_API QProcess* QProcess_new2(QObject* parent);
QTLIBC_API QMetaObject* QProcess_MetaObject(const QProcess* self);
QTLIBC_API void* QProcess_Metacast(QProcess* self, const char* param1);
QTLIBC_API int QProcess_Metacall(QProcess* self, int param1, int param2, void** param3);
QTLIBC_API void QProcess_OnMetacall(QProcess* self, intptr_t slot);
QTLIBC_API int QProcess_QBaseMetacall(QProcess* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QProcess_Tr(const char* s);
QTLIBC_API void QProcess_Start(QProcess* self, libqt_string program);
QTLIBC_API void QProcess_Start2(QProcess* self);
QTLIBC_API void QProcess_StartCommand(QProcess* self, libqt_string command);
QTLIBC_API bool QProcess_StartDetached(QProcess* self);
QTLIBC_API bool QProcess_Open(QProcess* self, int mode);
QTLIBC_API void QProcess_OnOpen(QProcess* self, intptr_t slot);
QTLIBC_API bool QProcess_QBaseOpen(QProcess* self, int mode);
QTLIBC_API libqt_string QProcess_Program(const QProcess* self);
QTLIBC_API void QProcess_SetProgram(QProcess* self, libqt_string program);
QTLIBC_API libqt_list /* of libqt_string */ QProcess_Arguments(const QProcess* self);
QTLIBC_API void QProcess_SetArguments(QProcess* self, libqt_list /* of libqt_string */ arguments);
QTLIBC_API int QProcess_ProcessChannelMode(const QProcess* self);
QTLIBC_API void QProcess_SetProcessChannelMode(QProcess* self, int mode);
QTLIBC_API int QProcess_InputChannelMode(const QProcess* self);
QTLIBC_API void QProcess_SetInputChannelMode(QProcess* self, int mode);
QTLIBC_API int QProcess_ReadChannel(const QProcess* self);
QTLIBC_API void QProcess_SetReadChannel(QProcess* self, int channel);
QTLIBC_API void QProcess_CloseReadChannel(QProcess* self, int channel);
QTLIBC_API void QProcess_CloseWriteChannel(QProcess* self);
QTLIBC_API void QProcess_SetStandardInputFile(QProcess* self, libqt_string fileName);
QTLIBC_API void QProcess_SetStandardOutputFile(QProcess* self, libqt_string fileName);
QTLIBC_API void QProcess_SetStandardErrorFile(QProcess* self, libqt_string fileName);
QTLIBC_API void QProcess_SetStandardOutputProcess(QProcess* self, QProcess* destination);
QTLIBC_API libqt_string QProcess_WorkingDirectory(const QProcess* self);
QTLIBC_API void QProcess_SetWorkingDirectory(QProcess* self, libqt_string dir);
QTLIBC_API void QProcess_SetEnvironment(QProcess* self, libqt_list /* of libqt_string */ environment);
QTLIBC_API libqt_list /* of libqt_string */ QProcess_Environment(const QProcess* self);
QTLIBC_API void QProcess_SetProcessEnvironment(QProcess* self, QProcessEnvironment* environment);
QTLIBC_API QProcessEnvironment* QProcess_ProcessEnvironment(const QProcess* self);
QTLIBC_API int QProcess_Error(const QProcess* self);
QTLIBC_API int QProcess_State(const QProcess* self);
QTLIBC_API long long QProcess_ProcessId(const QProcess* self);
QTLIBC_API bool QProcess_WaitForStarted(QProcess* self);
QTLIBC_API bool QProcess_WaitForReadyRead(QProcess* self, int msecs);
QTLIBC_API void QProcess_OnWaitForReadyRead(QProcess* self, intptr_t slot);
QTLIBC_API bool QProcess_QBaseWaitForReadyRead(QProcess* self, int msecs);
QTLIBC_API bool QProcess_WaitForBytesWritten(QProcess* self, int msecs);
QTLIBC_API void QProcess_OnWaitForBytesWritten(QProcess* self, intptr_t slot);
QTLIBC_API bool QProcess_QBaseWaitForBytesWritten(QProcess* self, int msecs);
QTLIBC_API bool QProcess_WaitForFinished(QProcess* self);
QTLIBC_API libqt_string QProcess_ReadAllStandardOutput(QProcess* self);
QTLIBC_API libqt_string QProcess_ReadAllStandardError(QProcess* self);
QTLIBC_API int QProcess_ExitCode(const QProcess* self);
QTLIBC_API int QProcess_ExitStatus(const QProcess* self);
QTLIBC_API long long QProcess_BytesToWrite(const QProcess* self);
QTLIBC_API void QProcess_OnBytesToWrite(const QProcess* self, intptr_t slot);
QTLIBC_API long long QProcess_QBaseBytesToWrite(const QProcess* self);
QTLIBC_API bool QProcess_IsSequential(const QProcess* self);
QTLIBC_API void QProcess_OnIsSequential(const QProcess* self, intptr_t slot);
QTLIBC_API bool QProcess_QBaseIsSequential(const QProcess* self);
QTLIBC_API void QProcess_Close(QProcess* self);
QTLIBC_API void QProcess_OnClose(QProcess* self, intptr_t slot);
QTLIBC_API void QProcess_QBaseClose(QProcess* self);
QTLIBC_API int QProcess_Execute(libqt_string program);
QTLIBC_API bool QProcess_StartDetachedWithProgram(libqt_string program);
QTLIBC_API libqt_list /* of libqt_string */ QProcess_SystemEnvironment();
QTLIBC_API libqt_string QProcess_NullDevice();
QTLIBC_API void QProcess_Terminate(QProcess* self);
QTLIBC_API void QProcess_Kill(QProcess* self);
QTLIBC_API void QProcess_Finished(QProcess* self, int exitCode);
void QProcess_Connect_Finished(QProcess* self, intptr_t slot);
QTLIBC_API void QProcess_ErrorOccurred(QProcess* self, int errorVal);
void QProcess_Connect_ErrorOccurred(QProcess* self, intptr_t slot);
QTLIBC_API long long QProcess_ReadData(QProcess* self, char* data, long long maxlen);
QTLIBC_API void QProcess_OnReadData(QProcess* self, intptr_t slot);
QTLIBC_API long long QProcess_QBaseReadData(QProcess* self, char* data, long long maxlen);
QTLIBC_API long long QProcess_WriteData(QProcess* self, const char* data, long long lenVal);
QTLIBC_API void QProcess_OnWriteData(QProcess* self, intptr_t slot);
QTLIBC_API long long QProcess_QBaseWriteData(QProcess* self, const char* data, long long lenVal);
QTLIBC_API libqt_string QProcess_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QProcess_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QProcess_Start22(QProcess* self, libqt_string program, libqt_list /* of libqt_string */ arguments);
QTLIBC_API void QProcess_Start3(QProcess* self, libqt_string program, libqt_list /* of libqt_string */ arguments, int mode);
QTLIBC_API void QProcess_Start1(QProcess* self, int mode);
QTLIBC_API void QProcess_StartCommand2(QProcess* self, libqt_string command, int mode);
QTLIBC_API bool QProcess_StartDetached1(QProcess* self, long long* pid);
QTLIBC_API void QProcess_SetStandardOutputFile2(QProcess* self, libqt_string fileName, int mode);
QTLIBC_API void QProcess_SetStandardErrorFile2(QProcess* self, libqt_string fileName, int mode);
QTLIBC_API bool QProcess_WaitForStarted1(QProcess* self, int msecs);
QTLIBC_API bool QProcess_WaitForFinished1(QProcess* self, int msecs);
QTLIBC_API int QProcess_Execute2(libqt_string program, libqt_list /* of libqt_string */ arguments);
QTLIBC_API bool QProcess_StartDetached2(libqt_string program, libqt_list /* of libqt_string */ arguments);
QTLIBC_API bool QProcess_StartDetached3(libqt_string program, libqt_list /* of libqt_string */ arguments, libqt_string workingDirectory);
QTLIBC_API bool QProcess_StartDetached4(libqt_string program, libqt_list /* of libqt_string */ arguments, libqt_string workingDirectory, long long* pid);
QTLIBC_API void QProcess_Finished2(QProcess* self, int exitCode, int exitStatus);
void QProcess_Connect_Finished2(QProcess* self, intptr_t slot);
QTLIBC_API long long QProcess_Pos(const QProcess* self);
QTLIBC_API void QProcess_OnPos(const QProcess* self, intptr_t slot);
QTLIBC_API long long QProcess_QBasePos(const QProcess* self);
QTLIBC_API long long QProcess_Size(const QProcess* self);
QTLIBC_API void QProcess_OnSize(const QProcess* self, intptr_t slot);
QTLIBC_API long long QProcess_QBaseSize(const QProcess* self);
QTLIBC_API bool QProcess_Seek(QProcess* self, long long pos);
QTLIBC_API void QProcess_OnSeek(QProcess* self, intptr_t slot);
QTLIBC_API bool QProcess_QBaseSeek(QProcess* self, long long pos);
QTLIBC_API bool QProcess_AtEnd(const QProcess* self);
QTLIBC_API void QProcess_OnAtEnd(const QProcess* self, intptr_t slot);
QTLIBC_API bool QProcess_QBaseAtEnd(const QProcess* self);
QTLIBC_API bool QProcess_Reset(QProcess* self);
QTLIBC_API void QProcess_OnReset(QProcess* self, intptr_t slot);
QTLIBC_API bool QProcess_QBaseReset(QProcess* self);
QTLIBC_API long long QProcess_BytesAvailable(const QProcess* self);
QTLIBC_API void QProcess_OnBytesAvailable(const QProcess* self, intptr_t slot);
QTLIBC_API long long QProcess_QBaseBytesAvailable(const QProcess* self);
QTLIBC_API bool QProcess_CanReadLine(const QProcess* self);
QTLIBC_API void QProcess_OnCanReadLine(const QProcess* self, intptr_t slot);
QTLIBC_API bool QProcess_QBaseCanReadLine(const QProcess* self);
QTLIBC_API long long QProcess_ReadLineData(QProcess* self, char* data, long long maxlen);
QTLIBC_API void QProcess_OnReadLineData(QProcess* self, intptr_t slot);
QTLIBC_API long long QProcess_QBaseReadLineData(QProcess* self, char* data, long long maxlen);
QTLIBC_API long long QProcess_SkipData(QProcess* self, long long maxSize);
QTLIBC_API void QProcess_OnSkipData(QProcess* self, intptr_t slot);
QTLIBC_API long long QProcess_QBaseSkipData(QProcess* self, long long maxSize);
QTLIBC_API bool QProcess_Event(QProcess* self, QEvent* event);
QTLIBC_API void QProcess_OnEvent(QProcess* self, intptr_t slot);
QTLIBC_API bool QProcess_QBaseEvent(QProcess* self, QEvent* event);
QTLIBC_API bool QProcess_EventFilter(QProcess* self, QObject* watched, QEvent* event);
QTLIBC_API void QProcess_OnEventFilter(QProcess* self, intptr_t slot);
QTLIBC_API bool QProcess_QBaseEventFilter(QProcess* self, QObject* watched, QEvent* event);
QTLIBC_API void QProcess_TimerEvent(QProcess* self, QTimerEvent* event);
QTLIBC_API void QProcess_OnTimerEvent(QProcess* self, intptr_t slot);
QTLIBC_API void QProcess_QBaseTimerEvent(QProcess* self, QTimerEvent* event);
QTLIBC_API void QProcess_ChildEvent(QProcess* self, QChildEvent* event);
QTLIBC_API void QProcess_OnChildEvent(QProcess* self, intptr_t slot);
QTLIBC_API void QProcess_QBaseChildEvent(QProcess* self, QChildEvent* event);
QTLIBC_API void QProcess_CustomEvent(QProcess* self, QEvent* event);
QTLIBC_API void QProcess_OnCustomEvent(QProcess* self, intptr_t slot);
QTLIBC_API void QProcess_QBaseCustomEvent(QProcess* self, QEvent* event);
QTLIBC_API void QProcess_ConnectNotify(QProcess* self, QMetaMethod* signal);
QTLIBC_API void QProcess_OnConnectNotify(QProcess* self, intptr_t slot);
QTLIBC_API void QProcess_QBaseConnectNotify(QProcess* self, QMetaMethod* signal);
QTLIBC_API void QProcess_DisconnectNotify(QProcess* self, QMetaMethod* signal);
QTLIBC_API void QProcess_OnDisconnectNotify(QProcess* self, intptr_t slot);
QTLIBC_API void QProcess_QBaseDisconnectNotify(QProcess* self, QMetaMethod* signal);
QTLIBC_API void QProcess_SetProcessState(QProcess* self, int state);
QTLIBC_API void QProcess_OnSetProcessState(QProcess* self, intptr_t slot);
QTLIBC_API void QProcess_QBaseSetProcessState(QProcess* self, int state);
QTLIBC_API void QProcess_SetOpenMode(QProcess* self, int openMode);
QTLIBC_API void QProcess_OnSetOpenMode(QProcess* self, intptr_t slot);
QTLIBC_API void QProcess_QBaseSetOpenMode(QProcess* self, int openMode);
QTLIBC_API void QProcess_SetErrorString(QProcess* self, libqt_string errorString);
QTLIBC_API void QProcess_OnSetErrorString(QProcess* self, intptr_t slot);
QTLIBC_API void QProcess_QBaseSetErrorString(QProcess* self, libqt_string errorString);
QTLIBC_API QObject* QProcess_Sender(const QProcess* self);
QTLIBC_API void QProcess_OnSender(const QProcess* self, intptr_t slot);
QTLIBC_API QObject* QProcess_QBaseSender(const QProcess* self);
QTLIBC_API int QProcess_SenderSignalIndex(const QProcess* self);
QTLIBC_API void QProcess_OnSenderSignalIndex(const QProcess* self, intptr_t slot);
QTLIBC_API int QProcess_QBaseSenderSignalIndex(const QProcess* self);
QTLIBC_API int QProcess_Receivers(const QProcess* self, const char* signal);
QTLIBC_API void QProcess_OnReceivers(const QProcess* self, intptr_t slot);
QTLIBC_API int QProcess_QBaseReceivers(const QProcess* self, const char* signal);
QTLIBC_API bool QProcess_IsSignalConnected(const QProcess* self, QMetaMethod* signal);
QTLIBC_API void QProcess_OnIsSignalConnected(const QProcess* self, intptr_t slot);
QTLIBC_API bool QProcess_QBaseIsSignalConnected(const QProcess* self, QMetaMethod* signal);
QTLIBC_API void QProcess_Delete(QProcess* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
