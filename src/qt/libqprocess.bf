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
public class QProcessEnvironment
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QProcessEnvironment_new();
	}
	
	public ~this()
	{
		CQt.QProcessEnvironment_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* other)
	{
		CQt.QProcessEnvironment_OperatorAssign(this.nativePtr, other);
	}
	
	public void Swap(void* other)
	{
		CQt.QProcessEnvironment_Swap(this.nativePtr, other);
	}
	
	public bool OperatorEqual(void* other)
	{
		return CQt.QProcessEnvironment_OperatorEqual(this.nativePtr, other);
	}
	
	public bool OperatorNotEqual(void* other)
	{
		return CQt.QProcessEnvironment_OperatorNotEqual(this.nativePtr, other);
	}
	
	public bool IsEmpty()
	{
		return CQt.QProcessEnvironment_IsEmpty(this.nativePtr);
	}
	
	public bool InheritsFromParent()
	{
		return CQt.QProcessEnvironment_InheritsFromParent(this.nativePtr);
	}
	
	public void Clear()
	{
		CQt.QProcessEnvironment_Clear(this.nativePtr);
	}
	
	public bool Contains(libqt_string name)
	{
		return CQt.QProcessEnvironment_Contains(this.nativePtr, name);
	}
	
	public void Insert(libqt_string name, libqt_string value)
	{
		CQt.QProcessEnvironment_Insert(this.nativePtr, name, value);
	}
	
	public void Remove(libqt_string name)
	{
		CQt.QProcessEnvironment_Remove(this.nativePtr, name);
	}
	
	public libqt_string Value(libqt_string name)
	{
		return CQt.QProcessEnvironment_Value(this.nativePtr, name);
	}
	
	public libqt_string[] ToStringList()
	{
		return CQt.QProcessEnvironment_ToStringList(this.nativePtr);
	}
	
	public libqt_string[] Keys()
	{
		return CQt.QProcessEnvironment_Keys(this.nativePtr);
	}
	
	public void InsertWithQProcessEnvironment(void* e)
	{
		CQt.QProcessEnvironment_InsertWithQProcessEnvironment(this.nativePtr, e);
	}
	
	public static void SystemEnvironment()
	{
		CQt.QProcessEnvironment_SystemEnvironment();
	}
	
	public libqt_string Value2(libqt_string name, libqt_string defaultValue)
	{
		return CQt.QProcessEnvironment_Value2(this.nativePtr, name, defaultValue);
	}
	
}
extension CQt
{
	[LinkName("QProcessEnvironment_new")]
	public static extern void* QProcessEnvironment_new();
	[LinkName("QProcessEnvironment_new2")]
	public static extern void* QProcessEnvironment_new2(int64 param1);
	[LinkName("QProcessEnvironment_new3")]
	public static extern void* QProcessEnvironment_new3(void* other);
	[LinkName("QProcessEnvironment_OperatorAssign")]
	public static extern void QProcessEnvironment_OperatorAssign(void* c_this, void* other);
	[LinkName("QProcessEnvironment_Swap")]
	public static extern void QProcessEnvironment_Swap(void* c_this, void* other);
	[LinkName("QProcessEnvironment_OperatorEqual")]
	public static extern bool QProcessEnvironment_OperatorEqual(void* c_this, void* other);
	[LinkName("QProcessEnvironment_OperatorNotEqual")]
	public static extern bool QProcessEnvironment_OperatorNotEqual(void* c_this, void* other);
	[LinkName("QProcessEnvironment_IsEmpty")]
	public static extern bool QProcessEnvironment_IsEmpty(void* c_this);
	[LinkName("QProcessEnvironment_InheritsFromParent")]
	public static extern bool QProcessEnvironment_InheritsFromParent(void* c_this);
	[LinkName("QProcessEnvironment_Clear")]
	public static extern void QProcessEnvironment_Clear(void* c_this);
	[LinkName("QProcessEnvironment_Contains")]
	public static extern bool QProcessEnvironment_Contains(void* c_this, libqt_string name);
	[LinkName("QProcessEnvironment_Insert")]
	public static extern void QProcessEnvironment_Insert(void* c_this, libqt_string name, libqt_string value);
	[LinkName("QProcessEnvironment_Remove")]
	public static extern void QProcessEnvironment_Remove(void* c_this, libqt_string name);
	[LinkName("QProcessEnvironment_Value")]
	public static extern libqt_string QProcessEnvironment_Value(void* c_this, libqt_string name);
	[LinkName("QProcessEnvironment_ToStringList")]
	public static extern libqt_string[] QProcessEnvironment_ToStringList(void* c_this);
	[LinkName("QProcessEnvironment_Keys")]
	public static extern libqt_string[] QProcessEnvironment_Keys(void* c_this);
	[LinkName("QProcessEnvironment_InsertWithQProcessEnvironment")]
	public static extern void QProcessEnvironment_InsertWithQProcessEnvironment(void* c_this, void* e);
	[LinkName("QProcessEnvironment_SystemEnvironment")]
	public static extern void QProcessEnvironment_SystemEnvironment();
	[LinkName("QProcessEnvironment_Value2")]
	public static extern libqt_string QProcessEnvironment_Value2(void* c_this, libqt_string name, libqt_string defaultValue);
	/// Delete this object from C++ memory
	[LinkName("QProcessEnvironment_Delete")]
	public static extern void QProcessEnvironment_Delete(void* self);
}
public class QProcess
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QProcess_new();
	}
	
	public ~this()
	{
		CQt.QProcess_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QProcess_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QProcess_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QProcess_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QProcess_Tr(s);
	}
	
	public void Start(libqt_string program)
	{
		CQt.QProcess_Start(this.nativePtr, program);
	}
	
	public void Start2()
	{
		CQt.QProcess_Start2(this.nativePtr);
	}
	
	public void StartCommand(libqt_string command)
	{
		CQt.QProcess_StartCommand(this.nativePtr, command);
	}
	
	public bool StartDetached()
	{
		return CQt.QProcess_StartDetached(this.nativePtr);
	}
	
	public virtual bool Open(int64 mode)
	{
		return CQt.QProcess_Open(this.nativePtr, mode);
	}
	
	public libqt_string Program()
	{
		return CQt.QProcess_Program(this.nativePtr);
	}
	
	public void SetProgram(libqt_string program)
	{
		CQt.QProcess_SetProgram(this.nativePtr, program);
	}
	
	public libqt_string[] Arguments()
	{
		return CQt.QProcess_Arguments(this.nativePtr);
	}
	
	public void SetArguments(libqt_string[] arguments)
	{
		CQt.QProcess_SetArguments(this.nativePtr, arguments);
	}
	
	public int64 ProcessChannelMode()
	{
		return CQt.QProcess_ProcessChannelMode(this.nativePtr);
	}
	
	public void SetProcessChannelMode(int64 mode)
	{
		CQt.QProcess_SetProcessChannelMode(this.nativePtr, mode);
	}
	
	public int64 InputChannelMode()
	{
		return CQt.QProcess_InputChannelMode(this.nativePtr);
	}
	
	public void SetInputChannelMode(int64 mode)
	{
		CQt.QProcess_SetInputChannelMode(this.nativePtr, mode);
	}
	
	public int64 ReadChannel()
	{
		return CQt.QProcess_ReadChannel(this.nativePtr);
	}
	
	public void SetReadChannel(int64 channel)
	{
		CQt.QProcess_SetReadChannel(this.nativePtr, channel);
	}
	
	public void CloseReadChannel(int64 channel)
	{
		CQt.QProcess_CloseReadChannel(this.nativePtr, channel);
	}
	
	public void CloseWriteChannel()
	{
		CQt.QProcess_CloseWriteChannel(this.nativePtr);
	}
	
	public void SetStandardInputFile(libqt_string fileName)
	{
		CQt.QProcess_SetStandardInputFile(this.nativePtr, fileName);
	}
	
	public void SetStandardOutputFile(libqt_string fileName)
	{
		CQt.QProcess_SetStandardOutputFile(this.nativePtr, fileName);
	}
	
	public void SetStandardErrorFile(libqt_string fileName)
	{
		CQt.QProcess_SetStandardErrorFile(this.nativePtr, fileName);
	}
	
	public void SetStandardOutputProcess(void* destination)
	{
		CQt.QProcess_SetStandardOutputProcess(this.nativePtr, destination);
	}
	
	public libqt_string WorkingDirectory()
	{
		return CQt.QProcess_WorkingDirectory(this.nativePtr);
	}
	
	public void SetWorkingDirectory(libqt_string dir)
	{
		CQt.QProcess_SetWorkingDirectory(this.nativePtr, dir);
	}
	
	public void SetEnvironment(libqt_string[] environment)
	{
		CQt.QProcess_SetEnvironment(this.nativePtr, environment);
	}
	
	public libqt_string[] Environment()
	{
		return CQt.QProcess_Environment(this.nativePtr);
	}
	
	public void SetProcessEnvironment(void* environment)
	{
		CQt.QProcess_SetProcessEnvironment(this.nativePtr, environment);
	}
	
	public void ProcessEnvironment()
	{
		CQt.QProcess_ProcessEnvironment(this.nativePtr);
	}
	
	public int64 Error()
	{
		return CQt.QProcess_Error(this.nativePtr);
	}
	
	public int64 State()
	{
		return CQt.QProcess_State(this.nativePtr);
	}
	
	public int64 ProcessId()
	{
		return CQt.QProcess_ProcessId(this.nativePtr);
	}
	
	public bool WaitForStarted()
	{
		return CQt.QProcess_WaitForStarted(this.nativePtr);
	}
	
	public virtual bool WaitForReadyRead(int32 msecs)
	{
		return CQt.QProcess_WaitForReadyRead(this.nativePtr, msecs);
	}
	
	public virtual bool WaitForBytesWritten(int32 msecs)
	{
		return CQt.QProcess_WaitForBytesWritten(this.nativePtr, msecs);
	}
	
	public bool WaitForFinished()
	{
		return CQt.QProcess_WaitForFinished(this.nativePtr);
	}
	
	public libqt_string ReadAllStandardOutput()
	{
		return CQt.QProcess_ReadAllStandardOutput(this.nativePtr);
	}
	
	public libqt_string ReadAllStandardError()
	{
		return CQt.QProcess_ReadAllStandardError(this.nativePtr);
	}
	
	public int32 ExitCode()
	{
		return CQt.QProcess_ExitCode(this.nativePtr);
	}
	
	public int64 ExitStatus()
	{
		return CQt.QProcess_ExitStatus(this.nativePtr);
	}
	
	public virtual int64 BytesToWrite()
	{
		return CQt.QProcess_BytesToWrite(this.nativePtr);
	}
	
	public virtual bool IsSequential()
	{
		return CQt.QProcess_IsSequential(this.nativePtr);
	}
	
	public virtual void Close()
	{
		CQt.QProcess_Close(this.nativePtr);
	}
	
	public static int32 Execute(libqt_string program)
	{
		return CQt.QProcess_Execute(program);
	}
	
	public static bool StartDetachedWithProgram(libqt_string program)
	{
		return CQt.QProcess_StartDetachedWithProgram(program);
	}
	
	public static libqt_string[] SystemEnvironment()
	{
		return CQt.QProcess_SystemEnvironment();
	}
	
	public static libqt_string NullDevice()
	{
		return CQt.QProcess_NullDevice();
	}
	
	public void Terminate()
	{
		CQt.QProcess_Terminate(this.nativePtr);
	}
	
	public void Kill()
	{
		CQt.QProcess_Kill(this.nativePtr);
	}
	
	public void SetProcessState(int64 state)
	{
		CQt.QProcess_SetProcessState(this.nativePtr, state);
	}
	
	public virtual int64 ReadData(char8[] data, int64 maxlen)
	{
		return CQt.QProcess_ReadData(this.nativePtr, data, maxlen);
	}
	
	public virtual int64 WriteData(char8[] data, int64 lenVal)
	{
		return CQt.QProcess_WriteData(this.nativePtr, data, lenVal);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QProcess_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QProcess_Tr3(s, c, n);
	}
	
	public void Start22(libqt_string program, libqt_string[] arguments)
	{
		CQt.QProcess_Start22(this.nativePtr, program, arguments);
	}
	
	public void Start3(libqt_string program, libqt_string[] arguments, int64 mode)
	{
		CQt.QProcess_Start3(this.nativePtr, program, arguments, mode);
	}
	
	public void Start1(int64 mode)
	{
		CQt.QProcess_Start1(this.nativePtr, mode);
	}
	
	public void StartCommand2(libqt_string command, int64 mode)
	{
		CQt.QProcess_StartCommand2(this.nativePtr, command, mode);
	}
	
	public bool StartDetached1(int64* pid)
	{
		return CQt.QProcess_StartDetached1(this.nativePtr, pid);
	}
	
	public void SetStandardOutputFile2(libqt_string fileName, int64 mode)
	{
		CQt.QProcess_SetStandardOutputFile2(this.nativePtr, fileName, mode);
	}
	
	public void SetStandardErrorFile2(libqt_string fileName, int64 mode)
	{
		CQt.QProcess_SetStandardErrorFile2(this.nativePtr, fileName, mode);
	}
	
	public bool WaitForStarted1(int32 msecs)
	{
		return CQt.QProcess_WaitForStarted1(this.nativePtr, msecs);
	}
	
	public bool WaitForFinished1(int32 msecs)
	{
		return CQt.QProcess_WaitForFinished1(this.nativePtr, msecs);
	}
	
	public static int32 Execute2(libqt_string program, libqt_string[] arguments)
	{
		return CQt.QProcess_Execute2(program, arguments);
	}
	
	public static bool StartDetached2(libqt_string program, libqt_string[] arguments)
	{
		return CQt.QProcess_StartDetached2(program, arguments);
	}
	
	public static bool StartDetached3(libqt_string program, libqt_string[] arguments, libqt_string workingDirectory)
	{
		return CQt.QProcess_StartDetached3(program, arguments, workingDirectory);
	}
	
	public static bool StartDetached4(libqt_string program, libqt_string[] arguments, libqt_string workingDirectory, int64* pid)
	{
		return CQt.QProcess_StartDetached4(program, arguments, workingDirectory, pid);
	}
	
	public int64 OpenMode()
	{
		return CQt.QIODevice_OpenMode(this.nativePtr);
	}
	
	public void SetTextModeEnabled(bool enabled)
	{
		CQt.QIODevice_SetTextModeEnabled(this.nativePtr, enabled);
	}
	
	public bool IsTextModeEnabled()
	{
		return CQt.QIODevice_IsTextModeEnabled(this.nativePtr);
	}
	
	public bool IsOpen()
	{
		return CQt.QIODevice_IsOpen(this.nativePtr);
	}
	
	public bool IsReadable()
	{
		return CQt.QIODevice_IsReadable(this.nativePtr);
	}
	
	public bool IsWritable()
	{
		return CQt.QIODevice_IsWritable(this.nativePtr);
	}
	
	public int32 ReadChannelCount()
	{
		return CQt.QIODevice_ReadChannelCount(this.nativePtr);
	}
	
	public int32 WriteChannelCount()
	{
		return CQt.QIODevice_WriteChannelCount(this.nativePtr);
	}
	
	public int32 CurrentReadChannel()
	{
		return CQt.QIODevice_CurrentReadChannel(this.nativePtr);
	}
	
	public void SetCurrentReadChannel(int32 channel)
	{
		CQt.QIODevice_SetCurrentReadChannel(this.nativePtr, channel);
	}
	
	public int32 CurrentWriteChannel()
	{
		return CQt.QIODevice_CurrentWriteChannel(this.nativePtr);
	}
	
	public void SetCurrentWriteChannel(int32 channel)
	{
		CQt.QIODevice_SetCurrentWriteChannel(this.nativePtr, channel);
	}
	
	public virtual int64 Pos()
	{
		return CQt.QIODevice_Pos(this.nativePtr);
	}
	
	public virtual int64 Size()
	{
		return CQt.QIODevice_Size(this.nativePtr);
	}
	
	public virtual bool Seek(int64 pos)
	{
		return CQt.QIODevice_Seek(this.nativePtr, pos);
	}
	
	public virtual bool AtEnd()
	{
		return CQt.QIODevice_AtEnd(this.nativePtr);
	}
	
	public virtual bool Reset()
	{
		return CQt.QIODevice_Reset(this.nativePtr);
	}
	
	public virtual int64 BytesAvailable()
	{
		return CQt.QIODevice_BytesAvailable(this.nativePtr);
	}
	
	public int64 Read(char8[] data, int64 maxlen)
	{
		return CQt.QIODevice_Read(this.nativePtr, data, maxlen);
	}
	
	public libqt_string ReadWithMaxlen(int64 maxlen)
	{
		return CQt.QIODevice_ReadWithMaxlen(this.nativePtr, maxlen);
	}
	
	public libqt_string ReadAll()
	{
		return CQt.QIODevice_ReadAll(this.nativePtr);
	}
	
	public int64 ReadLine(char8[] data, int64 maxlen)
	{
		return CQt.QIODevice_ReadLine(this.nativePtr, data, maxlen);
	}
	
	public libqt_string ReadLine2()
	{
		return CQt.QIODevice_ReadLine2(this.nativePtr);
	}
	
	public virtual bool CanReadLine()
	{
		return CQt.QIODevice_CanReadLine(this.nativePtr);
	}
	
	public void StartTransaction()
	{
		CQt.QIODevice_StartTransaction(this.nativePtr);
	}
	
	public void CommitTransaction()
	{
		CQt.QIODevice_CommitTransaction(this.nativePtr);
	}
	
	public void RollbackTransaction()
	{
		CQt.QIODevice_RollbackTransaction(this.nativePtr);
	}
	
	public bool IsTransactionStarted()
	{
		return CQt.QIODevice_IsTransactionStarted(this.nativePtr);
	}
	
	public int64 Write(char8[] data, int64 lenVal)
	{
		return CQt.QIODevice_Write(this.nativePtr, data, lenVal);
	}
	
	public int64 WriteWithData(char8[] data)
	{
		return CQt.QIODevice_WriteWithData(this.nativePtr, data);
	}
	
	public int64 Write2(libqt_string data)
	{
		return CQt.QIODevice_Write2(this.nativePtr, data);
	}
	
	public int64 Peek(char8[] data, int64 maxlen)
	{
		return CQt.QIODevice_Peek(this.nativePtr, data, maxlen);
	}
	
	public libqt_string PeekWithMaxlen(int64 maxlen)
	{
		return CQt.QIODevice_PeekWithMaxlen(this.nativePtr, maxlen);
	}
	
	public int64 Skip(int64 maxSize)
	{
		return CQt.QIODevice_Skip(this.nativePtr, maxSize);
	}
	
	public void UngetChar(int8 c)
	{
		CQt.QIODevice_UngetChar(this.nativePtr, c);
	}
	
	public bool PutChar(int8 c)
	{
		return CQt.QIODevice_PutChar(this.nativePtr, c);
	}
	
	public bool GetChar(char8[] c)
	{
		return CQt.QIODevice_GetChar(this.nativePtr, c);
	}
	
	public libqt_string ErrorString()
	{
		return CQt.QIODevice_ErrorString(this.nativePtr);
	}
	
	public libqt_string ReadLine1(int64 maxlen)
	{
		return CQt.QIODevice_ReadLine1(this.nativePtr, maxlen);
	}
	
	public virtual bool Event(void* event)
	{
		return CQt.QObject_Event(this.nativePtr, event);
	}
	
	public virtual bool EventFilter(void* watched, void* event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, watched, event);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(void name)
	{
		CQt.QObject_SetObjectName(this.nativePtr, name);
	}
	
	public bool IsWidgetType()
	{
		return CQt.QObject_IsWidgetType(this.nativePtr);
	}
	
	public bool IsWindowType()
	{
		return CQt.QObject_IsWindowType(this.nativePtr);
	}
	
	public bool IsQuickItemType()
	{
		return CQt.QObject_IsQuickItemType(this.nativePtr);
	}
	
	public bool SignalsBlocked()
	{
		return CQt.QObject_SignalsBlocked(this.nativePtr);
	}
	
	public bool BlockSignals(bool b)
	{
		return CQt.QObject_BlockSignals(this.nativePtr, b);
	}
	
	public void* Thread()
	{
		return CQt.QObject_Thread(this.nativePtr);
	}
	
	public void MoveToThread(void* thread)
	{
		CQt.QObject_MoveToThread(this.nativePtr, thread);
	}
	
	public int32 StartTimer(int32 interval)
	{
		return CQt.QObject_StartTimer(this.nativePtr, interval);
	}
	
	public void KillTimer(int32 id)
	{
		CQt.QObject_KillTimer(this.nativePtr, id);
	}
	
	public void*[] Children()
	{
		return CQt.QObject_Children(this.nativePtr);
	}
	
	public void SetParent(void* parent)
	{
		CQt.QObject_SetParent(this.nativePtr, parent);
	}
	
	public void InstallEventFilter(void* filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, filterObj);
	}
	
	public void RemoveEventFilter(void* obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, obj);
	}
	
	public static QMetaObject__Connection Connect(void* sender, void* signal, void* receiver, void* method)
	{
		return CQt.QObject_Connect(sender, signal, receiver, method);
	}
	
	public QMetaObject__Connection Connect2(void* sender, char8[] signal, char8[] member)
	{
		return CQt.QObject_Connect2(this.nativePtr, sender, signal, member);
	}
	
	public static bool Disconnect(void* sender, void* signal, void* receiver, void* member)
	{
		return CQt.QObject_Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__Connection* param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection(param1);
	}
	
	public void DumpObjectTree()
	{
		CQt.QObject_DumpObjectTree(this.nativePtr);
	}
	
	public void DumpObjectInfo()
	{
		CQt.QObject_DumpObjectInfo(this.nativePtr);
	}
	
	public bool SetProperty(char8[] name, void* value)
	{
		return CQt.QObject_SetProperty(this.nativePtr, name, value);
	}
	
	public void Property(char8[] name)
	{
		CQt.QObject_Property(this.nativePtr, name);
	}
	
	public libqt_string[] DynamicPropertyNames()
	{
		return CQt.QObject_DynamicPropertyNames(this.nativePtr);
	}
	
	public void* BindingStorage()
	{
		return CQt.QObject_BindingStorage(this.nativePtr);
	}
	
	public void* BindingStorage2()
	{
		return CQt.QObject_BindingStorage2(this.nativePtr);
	}
	
	public void* Parent()
	{
		return CQt.QObject_Parent(this.nativePtr);
	}
	
	public bool Inherits(char8[] classname)
	{
		return CQt.QObject_Inherits(this.nativePtr, classname);
	}
	
	public void DeleteLater()
	{
		CQt.QObject_DeleteLater(this.nativePtr);
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return CQt.QObject_StartTimer2(this.nativePtr, interval, timerType);
	}
	
	public static QMetaObject__Connection Connect5(void* sender, void* signal, void* receiver, void* method, int64 typeVal)
	{
		return CQt.QObject_Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public QMetaObject__Connection Connect4(void* sender, char8[] signal, char8[] member, int64 typeVal)
	{
		return CQt.QObject_Connect4(this.nativePtr, sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QProcess_new")]
	public static extern void* QProcess_new();
	[LinkName("QProcess_new2")]
	public static extern void* QProcess_new2(void* parent);
	[LinkName("QProcess_MetaObject")]
	public static extern void* QProcess_MetaObject(void* c_this);
	[LinkName("QProcess_Metacast")]
	public static extern void* QProcess_Metacast(void* c_this, char8[] param1);
	[LinkName("QProcess_Metacall")]
	public static extern int32 QProcess_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QProcess_Tr")]
	public static extern libqt_string QProcess_Tr(char8[] s);
	[LinkName("QProcess_Start")]
	public static extern void QProcess_Start(void* c_this, libqt_string program);
	[LinkName("QProcess_Start2")]
	public static extern void QProcess_Start2(void* c_this);
	[LinkName("QProcess_StartCommand")]
	public static extern void QProcess_StartCommand(void* c_this, libqt_string command);
	[LinkName("QProcess_StartDetached")]
	public static extern bool QProcess_StartDetached(void* c_this);
	[LinkName("QProcess_Open")]
	public static extern bool QProcess_Open(void* c_this, int64 mode);
	[LinkName("QProcess_Program")]
	public static extern libqt_string QProcess_Program(void* c_this);
	[LinkName("QProcess_SetProgram")]
	public static extern void QProcess_SetProgram(void* c_this, libqt_string program);
	[LinkName("QProcess_Arguments")]
	public static extern libqt_string[] QProcess_Arguments(void* c_this);
	[LinkName("QProcess_SetArguments")]
	public static extern void QProcess_SetArguments(void* c_this, libqt_string[] arguments);
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
	public static extern void QProcess_SetStandardInputFile(void* c_this, libqt_string fileName);
	[LinkName("QProcess_SetStandardOutputFile")]
	public static extern void QProcess_SetStandardOutputFile(void* c_this, libqt_string fileName);
	[LinkName("QProcess_SetStandardErrorFile")]
	public static extern void QProcess_SetStandardErrorFile(void* c_this, libqt_string fileName);
	[LinkName("QProcess_SetStandardOutputProcess")]
	public static extern void QProcess_SetStandardOutputProcess(void* c_this, void* destination);
	[LinkName("QProcess_WorkingDirectory")]
	public static extern libqt_string QProcess_WorkingDirectory(void* c_this);
	[LinkName("QProcess_SetWorkingDirectory")]
	public static extern void QProcess_SetWorkingDirectory(void* c_this, libqt_string dir);
	[LinkName("QProcess_SetEnvironment")]
	public static extern void QProcess_SetEnvironment(void* c_this, libqt_string[] environment);
	[LinkName("QProcess_Environment")]
	public static extern libqt_string[] QProcess_Environment(void* c_this);
	[LinkName("QProcess_SetProcessEnvironment")]
	public static extern void QProcess_SetProcessEnvironment(void* c_this, void* environment);
	[LinkName("QProcess_ProcessEnvironment")]
	public static extern void QProcess_ProcessEnvironment(void* c_this);
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
	public static extern libqt_string QProcess_ReadAllStandardOutput(void* c_this);
	[LinkName("QProcess_ReadAllStandardError")]
	public static extern libqt_string QProcess_ReadAllStandardError(void* c_this);
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
	public static extern int32 QProcess_Execute(libqt_string program);
	[LinkName("QProcess_StartDetachedWithProgram")]
	public static extern bool QProcess_StartDetachedWithProgram(libqt_string program);
	[LinkName("QProcess_SystemEnvironment")]
	public static extern libqt_string[] QProcess_SystemEnvironment();
	[LinkName("QProcess_NullDevice")]
	public static extern libqt_string QProcess_NullDevice();
	[LinkName("QProcess_Terminate")]
	public static extern void QProcess_Terminate(void* c_this);
	[LinkName("QProcess_Kill")]
	public static extern void QProcess_Kill(void* c_this);
	[LinkName("QProcess_Connect_Finished")]
	public static extern void QProcess_Connect_Finished(void* c_this, c_intptr slot);
	[LinkName("QProcess_Connect_ErrorOccurred")]
	public static extern void QProcess_Connect_ErrorOccurred(void* c_this, c_intptr slot);
	[LinkName("QProcess_SetProcessState")]
	public static extern void QProcess_SetProcessState(void* c_this, int64 state);
	[LinkName("QProcess_ReadData")]
	public static extern int64 QProcess_ReadData(void* c_this, char8[] data, int64 maxlen);
	[LinkName("QProcess_WriteData")]
	public static extern int64 QProcess_WriteData(void* c_this, char8[] data, int64 lenVal);
	[LinkName("QProcess_Tr2")]
	public static extern libqt_string QProcess_Tr2(char8[] s, char8[] c);
	[LinkName("QProcess_Tr3")]
	public static extern libqt_string QProcess_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QProcess_Start22")]
	public static extern void QProcess_Start22(void* c_this, libqt_string program, libqt_string[] arguments);
	[LinkName("QProcess_Start3")]
	public static extern void QProcess_Start3(void* c_this, libqt_string program, libqt_string[] arguments, int64 mode);
	[LinkName("QProcess_Start1")]
	public static extern void QProcess_Start1(void* c_this, int64 mode);
	[LinkName("QProcess_StartCommand2")]
	public static extern void QProcess_StartCommand2(void* c_this, libqt_string command, int64 mode);
	[LinkName("QProcess_StartDetached1")]
	public static extern bool QProcess_StartDetached1(void* c_this, int64* pid);
	[LinkName("QProcess_SetStandardOutputFile2")]
	public static extern void QProcess_SetStandardOutputFile2(void* c_this, libqt_string fileName, int64 mode);
	[LinkName("QProcess_SetStandardErrorFile2")]
	public static extern void QProcess_SetStandardErrorFile2(void* c_this, libqt_string fileName, int64 mode);
	[LinkName("QProcess_WaitForStarted1")]
	public static extern bool QProcess_WaitForStarted1(void* c_this, int32 msecs);
	[LinkName("QProcess_WaitForFinished1")]
	public static extern bool QProcess_WaitForFinished1(void* c_this, int32 msecs);
	[LinkName("QProcess_Execute2")]
	public static extern int32 QProcess_Execute2(libqt_string program, libqt_string[] arguments);
	[LinkName("QProcess_StartDetached2")]
	public static extern bool QProcess_StartDetached2(libqt_string program, libqt_string[] arguments);
	[LinkName("QProcess_StartDetached3")]
	public static extern bool QProcess_StartDetached3(libqt_string program, libqt_string[] arguments, libqt_string workingDirectory);
	[LinkName("QProcess_StartDetached4")]
	public static extern bool QProcess_StartDetached4(libqt_string program, libqt_string[] arguments, libqt_string workingDirectory, int64* pid);
	[LinkName("QProcess_Connect_Finished2")]
	public static extern void QProcess_Connect_Finished2(void* c_this, c_intptr slot);
	/// Delete this object from C++ memory
	[LinkName("QProcess_Delete")]
	public static extern void QProcess_Delete(void* self);
}