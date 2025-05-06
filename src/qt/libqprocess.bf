using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QProcessEnvironment__Initialization
{
	InheritFromParent = 0,
}
[AllowDuplicates]
public enum QProcess__ProcessError
{
	FailedToStart = 0,
	Crashed = 1,
	Timedout = 2,
	ReadError = 3,
	WriteError = 4,
	UnknownError = 5,
}
[AllowDuplicates]
public enum QProcess__ProcessState
{
	NotRunning = 0,
	Starting = 1,
	Running = 2,
}
[AllowDuplicates]
public enum QProcess__ProcessChannel
{
	StandardOutput = 0,
	StandardError = 1,
}
[AllowDuplicates]
public enum QProcess__ProcessChannelMode
{
	SeparateChannels = 0,
	MergedChannels = 1,
	ForwardedChannels = 2,
	ForwardedOutputChannel = 3,
	ForwardedErrorChannel = 4,
}
[AllowDuplicates]
public enum QProcess__InputChannelMode
{
	ManagedInputChannel = 0,
	ForwardedInputChannel = 1,
}
[AllowDuplicates]
public enum QProcess__ExitStatus
{
	NormalExit = 0,
	CrashExit = 1,
}
public struct QProcessEnvironment
{
	[LinkName("QProcessEnvironment_new")]
	public static extern QProcessEnvironment* QProcessEnvironment_new();
	[LinkName("QProcessEnvironment_new2")]
	public static extern QProcessEnvironment* QProcessEnvironment_new2(int64 param1);
	[LinkName("QProcessEnvironment_new3")]
	public static extern QProcessEnvironment* QProcessEnvironment_new3(QProcessEnvironment* other);
	[LinkName("QProcessEnvironment_OperatorAssign")]
	public static extern void QProcessEnvironment_OperatorAssign(Self* c_this, QProcessEnvironment* other);
	[LinkName("QProcessEnvironment_Swap")]
	public static extern void QProcessEnvironment_Swap(Self* c_this, QProcessEnvironment* other);
	[LinkName("QProcessEnvironment_OperatorEqual")]
	public static extern bool QProcessEnvironment_OperatorEqual(Self* c_this, QProcessEnvironment* other);
	[LinkName("QProcessEnvironment_OperatorNotEqual")]
	public static extern bool QProcessEnvironment_OperatorNotEqual(Self* c_this, QProcessEnvironment* other);
	[LinkName("QProcessEnvironment_IsEmpty")]
	public static extern bool QProcessEnvironment_IsEmpty(Self* c_this);
	[LinkName("QProcessEnvironment_InheritsFromParent")]
	public static extern bool QProcessEnvironment_InheritsFromParent(Self* c_this);
	[LinkName("QProcessEnvironment_Clear")]
	public static extern void QProcessEnvironment_Clear(Self* c_this);
	[LinkName("QProcessEnvironment_Contains")]
	public static extern bool QProcessEnvironment_Contains(Self* c_this, libqt_string name);
	[LinkName("QProcessEnvironment_Insert")]
	public static extern void QProcessEnvironment_Insert(Self* c_this, libqt_string name, libqt_string value);
	[LinkName("QProcessEnvironment_Remove")]
	public static extern void QProcessEnvironment_Remove(Self* c_this, libqt_string name);
	[LinkName("QProcessEnvironment_Value")]
	public static extern libqt_string QProcessEnvironment_Value(Self* c_this, libqt_string name);
	[LinkName("QProcessEnvironment_ToStringList")]
	public static extern libqt_string[] QProcessEnvironment_ToStringList(Self* c_this);
	[LinkName("QProcessEnvironment_Keys")]
	public static extern libqt_string[] QProcessEnvironment_Keys(Self* c_this);
	[LinkName("QProcessEnvironment_InsertWithQProcessEnvironment")]
	public static extern void QProcessEnvironment_InsertWithQProcessEnvironment(Self* c_this, QProcessEnvironment* e);
	[LinkName("QProcessEnvironment_SystemEnvironment")]
	public static extern QProcessEnvironment QProcessEnvironment_SystemEnvironment();
	[LinkName("QProcessEnvironment_Value2")]
	public static extern libqt_string QProcessEnvironment_Value2(Self* c_this, libqt_string name, libqt_string defaultValue);
}
public struct QProcess : QIODevice
{
	[LinkName("QProcess_new")]
	public static extern QProcess* QProcess_new();
	[LinkName("QProcess_new2")]
	public static extern QProcess* QProcess_new2(QObject* parent);
	[LinkName("QProcess_MetaObject")]
	public static extern QMetaObject* QProcess_MetaObject(Self* c_this);
	[LinkName("QProcess_Metacast")]
	public static extern void* QProcess_Metacast(Self* c_this, char8[] param1);
	[LinkName("QProcess_Metacall")]
	public static extern int32 QProcess_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QProcess_Tr")]
	public static extern libqt_string QProcess_Tr(char8[] s);
	[LinkName("QProcess_Start")]
	public static extern void QProcess_Start(Self* c_this, libqt_string program);
	[LinkName("QProcess_Start2")]
	public static extern void QProcess_Start2(Self* c_this);
	[LinkName("QProcess_StartCommand")]
	public static extern void QProcess_StartCommand(Self* c_this, libqt_string command);
	[LinkName("QProcess_StartDetached")]
	public static extern bool QProcess_StartDetached(Self* c_this);
	[LinkName("QProcess_Open")]
	public static extern bool QProcess_Open(Self* c_this, int64 mode);
	[LinkName("QProcess_Program")]
	public static extern libqt_string QProcess_Program(Self* c_this);
	[LinkName("QProcess_SetProgram")]
	public static extern void QProcess_SetProgram(Self* c_this, libqt_string program);
	[LinkName("QProcess_Arguments")]
	public static extern libqt_string[] QProcess_Arguments(Self* c_this);
	[LinkName("QProcess_SetArguments")]
	public static extern void QProcess_SetArguments(Self* c_this, libqt_string[] arguments);
	[LinkName("QProcess_ProcessChannelMode")]
	public static extern int64 QProcess_ProcessChannelMode(Self* c_this);
	[LinkName("QProcess_SetProcessChannelMode")]
	public static extern void QProcess_SetProcessChannelMode(Self* c_this, int64 mode);
	[LinkName("QProcess_InputChannelMode")]
	public static extern int64 QProcess_InputChannelMode(Self* c_this);
	[LinkName("QProcess_SetInputChannelMode")]
	public static extern void QProcess_SetInputChannelMode(Self* c_this, int64 mode);
	[LinkName("QProcess_ReadChannel")]
	public static extern int64 QProcess_ReadChannel(Self* c_this);
	[LinkName("QProcess_SetReadChannel")]
	public static extern void QProcess_SetReadChannel(Self* c_this, int64 channel);
	[LinkName("QProcess_CloseReadChannel")]
	public static extern void QProcess_CloseReadChannel(Self* c_this, int64 channel);
	[LinkName("QProcess_CloseWriteChannel")]
	public static extern void QProcess_CloseWriteChannel(Self* c_this);
	[LinkName("QProcess_SetStandardInputFile")]
	public static extern void QProcess_SetStandardInputFile(Self* c_this, libqt_string fileName);
	[LinkName("QProcess_SetStandardOutputFile")]
	public static extern void QProcess_SetStandardOutputFile(Self* c_this, libqt_string fileName);
	[LinkName("QProcess_SetStandardErrorFile")]
	public static extern void QProcess_SetStandardErrorFile(Self* c_this, libqt_string fileName);
	[LinkName("QProcess_SetStandardOutputProcess")]
	public static extern void QProcess_SetStandardOutputProcess(Self* c_this, QProcess* destination);
	[LinkName("QProcess_WorkingDirectory")]
	public static extern libqt_string QProcess_WorkingDirectory(Self* c_this);
	[LinkName("QProcess_SetWorkingDirectory")]
	public static extern void QProcess_SetWorkingDirectory(Self* c_this, libqt_string dir);
	[LinkName("QProcess_SetEnvironment")]
	public static extern void QProcess_SetEnvironment(Self* c_this, libqt_string[] environment);
	[LinkName("QProcess_Environment")]
	public static extern libqt_string[] QProcess_Environment(Self* c_this);
	[LinkName("QProcess_SetProcessEnvironment")]
	public static extern void QProcess_SetProcessEnvironment(Self* c_this, QProcessEnvironment* environment);
	[LinkName("QProcess_ProcessEnvironment")]
	public static extern QProcessEnvironment QProcess_ProcessEnvironment(Self* c_this);
	[LinkName("QProcess_Error")]
	public static extern int64 QProcess_Error(Self* c_this);
	[LinkName("QProcess_State")]
	public static extern int64 QProcess_State(Self* c_this);
	[LinkName("QProcess_ProcessId")]
	public static extern int64 QProcess_ProcessId(Self* c_this);
	[LinkName("QProcess_WaitForStarted")]
	public static extern bool QProcess_WaitForStarted(Self* c_this);
	[LinkName("QProcess_WaitForReadyRead")]
	public static extern bool QProcess_WaitForReadyRead(Self* c_this, int32 msecs);
	[LinkName("QProcess_WaitForBytesWritten")]
	public static extern bool QProcess_WaitForBytesWritten(Self* c_this, int32 msecs);
	[LinkName("QProcess_WaitForFinished")]
	public static extern bool QProcess_WaitForFinished(Self* c_this);
	[LinkName("QProcess_ReadAllStandardOutput")]
	public static extern libqt_string QProcess_ReadAllStandardOutput(Self* c_this);
	[LinkName("QProcess_ReadAllStandardError")]
	public static extern libqt_string QProcess_ReadAllStandardError(Self* c_this);
	[LinkName("QProcess_ExitCode")]
	public static extern int32 QProcess_ExitCode(Self* c_this);
	[LinkName("QProcess_ExitStatus")]
	public static extern int64 QProcess_ExitStatus(Self* c_this);
	[LinkName("QProcess_BytesToWrite")]
	public static extern int64 QProcess_BytesToWrite(Self* c_this);
	[LinkName("QProcess_IsSequential")]
	public static extern bool QProcess_IsSequential(Self* c_this);
	[LinkName("QProcess_Close")]
	public static extern void QProcess_Close(Self* c_this);
	[LinkName("QProcess_Execute")]
	public static extern int32 QProcess_Execute(libqt_string program);
	[LinkName("QProcess_StartDetachedWithProgram")]
	public static extern bool QProcess_StartDetachedWithProgram(libqt_string program);
	[LinkName("QProcess_SystemEnvironment")]
	public static extern libqt_string[] QProcess_SystemEnvironment();
	[LinkName("QProcess_NullDevice")]
	public static extern libqt_string QProcess_NullDevice();
	[LinkName("QProcess_Terminate")]
	public static extern void QProcess_Terminate(Self* c_this);
	[LinkName("QProcess_Kill")]
	public static extern void QProcess_Kill(Self* c_this);
	[LinkName("QProcess_Connect_Finished")]
	public static extern void QProcess_Connect_Finished(Self* c_this, c_intptr slot);
	[LinkName("QProcess_Connect_ErrorOccurred")]
	public static extern void QProcess_Connect_ErrorOccurred(Self* c_this, c_intptr slot);
	[LinkName("QProcess_SetProcessState")]
	public static extern void QProcess_SetProcessState(Self* c_this, int64 state);
	[LinkName("QProcess_ReadData")]
	public static extern int64 QProcess_ReadData(Self* c_this, char8[] data, int64 maxlen);
	[LinkName("QProcess_WriteData")]
	public static extern int64 QProcess_WriteData(Self* c_this, char8[] data, int64 lenVal);
	[LinkName("QProcess_Tr2")]
	public static extern libqt_string QProcess_Tr2(char8[] s, char8[] c);
	[LinkName("QProcess_Tr3")]
	public static extern libqt_string QProcess_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QProcess_Start22")]
	public static extern void QProcess_Start22(Self* c_this, libqt_string program, libqt_string[] arguments);
	[LinkName("QProcess_Start3")]
	public static extern void QProcess_Start3(Self* c_this, libqt_string program, libqt_string[] arguments, int64 mode);
	[LinkName("QProcess_Start1")]
	public static extern void QProcess_Start1(Self* c_this, int64 mode);
	[LinkName("QProcess_StartCommand2")]
	public static extern void QProcess_StartCommand2(Self* c_this, libqt_string command, int64 mode);
	[LinkName("QProcess_StartDetached1")]
	public static extern bool QProcess_StartDetached1(Self* c_this, int64* pid);
	[LinkName("QProcess_SetStandardOutputFile2")]
	public static extern void QProcess_SetStandardOutputFile2(Self* c_this, libqt_string fileName, int64 mode);
	[LinkName("QProcess_SetStandardErrorFile2")]
	public static extern void QProcess_SetStandardErrorFile2(Self* c_this, libqt_string fileName, int64 mode);
	[LinkName("QProcess_WaitForStarted1")]
	public static extern bool QProcess_WaitForStarted1(Self* c_this, int32 msecs);
	[LinkName("QProcess_WaitForFinished1")]
	public static extern bool QProcess_WaitForFinished1(Self* c_this, int32 msecs);
	[LinkName("QProcess_Execute2")]
	public static extern int32 QProcess_Execute2(libqt_string program, libqt_string[] arguments);
	[LinkName("QProcess_StartDetached2")]
	public static extern bool QProcess_StartDetached2(libqt_string program, libqt_string[] arguments);
	[LinkName("QProcess_StartDetached3")]
	public static extern bool QProcess_StartDetached3(libqt_string program, libqt_string[] arguments, libqt_string workingDirectory);
	[LinkName("QProcess_StartDetached4")]
	public static extern bool QProcess_StartDetached4(libqt_string program, libqt_string[] arguments, libqt_string workingDirectory, int64* pid);
	[LinkName("QProcess_Connect_Finished2")]
	public static extern void QProcess_Connect_Finished2(Self* c_this, c_intptr slot);
}