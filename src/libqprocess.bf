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
	public static extern void* QProcessEnvironment_new();
	[LinkName("QProcessEnvironment_new2")]
	public static extern void* QProcessEnvironment_new2(int64 param1);
	[LinkName("QProcessEnvironment_new3")]
	public static extern void* QProcessEnvironment_new3(QProcessEnvironment other);
	[LinkName("QProcessEnvironment_OperatorAssign")]
	public static extern void QProcessEnvironment_OperatorAssign(void* c_this, QProcessEnvironment other);
	[LinkName("QProcessEnvironment_Swap")]
	public static extern void QProcessEnvironment_Swap(void* c_this, QProcessEnvironment other);
	[LinkName("QProcessEnvironment_OperatorEqual")]
	public static extern bool QProcessEnvironment_OperatorEqual(void* c_this, QProcessEnvironment other);
	[LinkName("QProcessEnvironment_OperatorNotEqual")]
	public static extern bool QProcessEnvironment_OperatorNotEqual(void* c_this, QProcessEnvironment other);
	[LinkName("QProcessEnvironment_IsEmpty")]
	public static extern bool QProcessEnvironment_IsEmpty(void* c_this);
	[LinkName("QProcessEnvironment_InheritsFromParent")]
	public static extern bool QProcessEnvironment_InheritsFromParent(void* c_this);
	[LinkName("QProcessEnvironment_Clear")]
	public static extern void QProcessEnvironment_Clear(void* c_this);
	[LinkName("QProcessEnvironment_Contains")]
	public static extern bool QProcessEnvironment_Contains(void* c_this, char8[] name);
	[LinkName("QProcessEnvironment_Insert")]
	public static extern void QProcessEnvironment_Insert(void* c_this, char8[] name, char8[] value);
	[LinkName("QProcessEnvironment_Remove")]
	public static extern void QProcessEnvironment_Remove(void* c_this, char8[] name);
	[LinkName("QProcessEnvironment_Value")]
	public static extern char8[] QProcessEnvironment_Value(void* c_this, char8[] name);
	[LinkName("QProcessEnvironment_ToStringList")]
	public static extern char8[][] QProcessEnvironment_ToStringList(void* c_this);
	[LinkName("QProcessEnvironment_Keys")]
	public static extern char8[][] QProcessEnvironment_Keys(void* c_this);
	[LinkName("QProcessEnvironment_InsertWithQProcessEnvironment")]
	public static extern void QProcessEnvironment_InsertWithQProcessEnvironment(void* c_this, QProcessEnvironment e);
	[LinkName("QProcessEnvironment_SystemEnvironment")]
	public static extern QProcessEnvironment QProcessEnvironment_SystemEnvironment();
	[LinkName("QProcessEnvironment_Value2")]
	public static extern char8[] QProcessEnvironment_Value2(void* c_this, char8[] name, char8[] defaultValue);
}
public struct QProcess
{
	[LinkName("QProcess_new")]
	public static extern void* QProcess_new();
	[LinkName("QProcess_new2")]
	public static extern void* QProcess_new2(QObject parent);
	[LinkName("QProcess_MetaObject")]
	public static extern QMetaObject QProcess_MetaObject(void* c_this);
	[LinkName("QProcess_Metacast")]
	public static extern void QProcess_Metacast(void* c_this, char8[] param1);
	[LinkName("QProcess_Metacall")]
	public static extern int32 QProcess_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QProcess_Tr")]
	public static extern char8[] QProcess_Tr(char8[] s);
	[LinkName("QProcess_Start")]
	public static extern void QProcess_Start(void* c_this, char8[] program);
	[LinkName("QProcess_Start2")]
	public static extern void QProcess_Start2(void* c_this);
	[LinkName("QProcess_StartCommand")]
	public static extern void QProcess_StartCommand(void* c_this, char8[] command);
	[LinkName("QProcess_StartDetached")]
	public static extern bool QProcess_StartDetached(void* c_this);
	[LinkName("QProcess_Open")]
	public static extern bool QProcess_Open(void* c_this, int64 mode);
	[LinkName("QProcess_Program")]
	public static extern char8[] QProcess_Program(void* c_this);
	[LinkName("QProcess_SetProgram")]
	public static extern void QProcess_SetProgram(void* c_this, char8[] program);
	[LinkName("QProcess_Arguments")]
	public static extern char8[][] QProcess_Arguments(void* c_this);
	[LinkName("QProcess_SetArguments")]
	public static extern void QProcess_SetArguments(void* c_this, char8[][] arguments);
	[LinkName("QProcess_ProcessChannelMode")]
	public static extern int64 QProcess_ProcessChannelMode(void* c_this);
	[LinkName("QProcess_SetProcessChannelMode")]
	public static extern void QProcess_SetProcessChannelMode(void* c_this, int64 mode);
	[LinkName("QProcess_InputChannelMode")]
	public static extern int64 QProcess_InputChannelMode(void* c_this);
	[LinkName("QProcess_SetInputChannelMode")]
	public static extern void QProcess_SetInputChannelMode(void* c_this, int64 mode);
	[LinkName("QProcess_ReadChannel")]
	public static extern int64 QProcess_ReadChannel(void* c_this);
	[LinkName("QProcess_SetReadChannel")]
	public static extern void QProcess_SetReadChannel(void* c_this, int64 channel);
	[LinkName("QProcess_CloseReadChannel")]
	public static extern void QProcess_CloseReadChannel(void* c_this, int64 channel);
	[LinkName("QProcess_CloseWriteChannel")]
	public static extern void QProcess_CloseWriteChannel(void* c_this);
	[LinkName("QProcess_SetStandardInputFile")]
	public static extern void QProcess_SetStandardInputFile(void* c_this, char8[] fileName);
	[LinkName("QProcess_SetStandardOutputFile")]
	public static extern void QProcess_SetStandardOutputFile(void* c_this, char8[] fileName);
	[LinkName("QProcess_SetStandardErrorFile")]
	public static extern void QProcess_SetStandardErrorFile(void* c_this, char8[] fileName);
	[LinkName("QProcess_SetStandardOutputProcess")]
	public static extern void QProcess_SetStandardOutputProcess(void* c_this, QProcess destination);
	[LinkName("QProcess_WorkingDirectory")]
	public static extern char8[] QProcess_WorkingDirectory(void* c_this);
	[LinkName("QProcess_SetWorkingDirectory")]
	public static extern void QProcess_SetWorkingDirectory(void* c_this, char8[] dir);
	[LinkName("QProcess_SetEnvironment")]
	public static extern void QProcess_SetEnvironment(void* c_this, char8[][] environment);
	[LinkName("QProcess_Environment")]
	public static extern char8[][] QProcess_Environment(void* c_this);
	[LinkName("QProcess_SetProcessEnvironment")]
	public static extern void QProcess_SetProcessEnvironment(void* c_this, QProcessEnvironment environment);
	[LinkName("QProcess_ProcessEnvironment")]
	public static extern QProcessEnvironment QProcess_ProcessEnvironment(void* c_this);
	[LinkName("QProcess_Error")]
	public static extern int64 QProcess_Error(void* c_this);
	[LinkName("QProcess_State")]
	public static extern int64 QProcess_State(void* c_this);
	[LinkName("QProcess_ProcessId")]
	public static extern int64 QProcess_ProcessId(void* c_this);
	[LinkName("QProcess_WaitForStarted")]
	public static extern bool QProcess_WaitForStarted(void* c_this);
	[LinkName("QProcess_WaitForReadyRead")]
	public static extern bool QProcess_WaitForReadyRead(void* c_this, int32 msecs);
	[LinkName("QProcess_WaitForBytesWritten")]
	public static extern bool QProcess_WaitForBytesWritten(void* c_this, int32 msecs);
	[LinkName("QProcess_WaitForFinished")]
	public static extern bool QProcess_WaitForFinished(void* c_this);
	[LinkName("QProcess_ReadAllStandardOutput")]
	public static extern uint8[] QProcess_ReadAllStandardOutput(void* c_this);
	[LinkName("QProcess_ReadAllStandardError")]
	public static extern uint8[] QProcess_ReadAllStandardError(void* c_this);
	[LinkName("QProcess_ExitCode")]
	public static extern int32 QProcess_ExitCode(void* c_this);
	[LinkName("QProcess_ExitStatus")]
	public static extern int64 QProcess_ExitStatus(void* c_this);
	[LinkName("QProcess_BytesToWrite")]
	public static extern int64 QProcess_BytesToWrite(void* c_this);
	[LinkName("QProcess_IsSequential")]
	public static extern bool QProcess_IsSequential(void* c_this);
	[LinkName("QProcess_Close")]
	public static extern void QProcess_Close(void* c_this);
	[LinkName("QProcess_Execute")]
	public static extern int32 QProcess_Execute(char8[] program);
	[LinkName("QProcess_StartDetachedWithProgram")]
	public static extern bool QProcess_StartDetachedWithProgram(char8[] program);
	[LinkName("QProcess_SystemEnvironment")]
	public static extern char8[][] QProcess_SystemEnvironment();
	[LinkName("QProcess_NullDevice")]
	public static extern char8[] QProcess_NullDevice();
	[LinkName("QProcess_Terminate")]
	public static extern void QProcess_Terminate(void* c_this);
	[LinkName("QProcess_Kill")]
	public static extern void QProcess_Kill(void* c_this);
	[LinkName("QProcess_Finished")]
	public static extern void QProcess_Finished(void* c_this, int32 exitCode);
	[LinkName("QProcess_ErrorOccurred")]
	public static extern void QProcess_ErrorOccurred(void* c_this, int64 errorVal);
	[LinkName("QProcess_SetProcessState")]
	public static extern void QProcess_SetProcessState(void* c_this, int64 state);
	[LinkName("QProcess_ReadData")]
	public static extern int64 QProcess_ReadData(void* c_this, char8[] data, int64 maxlen);
	[LinkName("QProcess_WriteData")]
	public static extern int64 QProcess_WriteData(void* c_this, char8[] data, int64 lenVal);
	[LinkName("QProcess_Tr2")]
	public static extern char8[] QProcess_Tr2(char8[] s, char8[] c);
	[LinkName("QProcess_Tr3")]
	public static extern char8[] QProcess_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QProcess_Start22")]
	public static extern void QProcess_Start22(void* c_this, char8[] program, char8[][] arguments);
	[LinkName("QProcess_Start3")]
	public static extern void QProcess_Start3(void* c_this, char8[] program, char8[][] arguments, int64 mode);
	[LinkName("QProcess_Start1")]
	public static extern void QProcess_Start1(void* c_this, int64 mode);
	[LinkName("QProcess_StartCommand2")]
	public static extern void QProcess_StartCommand2(void* c_this, char8[] command, int64 mode);
	[LinkName("QProcess_StartDetached1")]
	public static extern bool QProcess_StartDetached1(void* c_this, int64 pid);
	[LinkName("QProcess_SetStandardOutputFile2")]
	public static extern void QProcess_SetStandardOutputFile2(void* c_this, char8[] fileName, int64 mode);
	[LinkName("QProcess_SetStandardErrorFile2")]
	public static extern void QProcess_SetStandardErrorFile2(void* c_this, char8[] fileName, int64 mode);
	[LinkName("QProcess_WaitForStarted1")]
	public static extern bool QProcess_WaitForStarted1(void* c_this, int32 msecs);
	[LinkName("QProcess_WaitForFinished1")]
	public static extern bool QProcess_WaitForFinished1(void* c_this, int32 msecs);
	[LinkName("QProcess_Execute2")]
	public static extern int32 QProcess_Execute2(char8[] program, char8[][] arguments);
	[LinkName("QProcess_StartDetached2")]
	public static extern bool QProcess_StartDetached2(char8[] program, char8[][] arguments);
	[LinkName("QProcess_StartDetached3")]
	public static extern bool QProcess_StartDetached3(char8[] program, char8[][] arguments, char8[] workingDirectory);
	[LinkName("QProcess_StartDetached4")]
	public static extern bool QProcess_StartDetached4(char8[] program, char8[][] arguments, char8[] workingDirectory, int64 pid);
	[LinkName("QProcess_Finished2")]
	public static extern void QProcess_Finished2(void* c_this, int32 exitCode, int64 exitStatus);
}