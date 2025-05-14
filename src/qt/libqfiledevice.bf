using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QFileDevice__FileError
{
	NoError = 0,
	ReadError = 1,
	WriteError = 2,
	FatalError = 3,
	ResourceError = 4,
	OpenError = 5,
	AbortError = 6,
	TimeOutError = 7,
	UnspecifiedError = 8,
	RemoveError = 9,
	RenameError = 10,
	PositionError = 11,
	ResizeError = 12,
	PermissionsError = 13,
	CopyError = 14,
}
[AllowDuplicates]
public enum QFileDevice__FileTime
{
	FileAccessTime = 0,
	FileBirthTime = 1,
	FileMetadataChangeTime = 2,
	FileModificationTime = 3,
}
[AllowDuplicates]
public enum QFileDevice__Permission
{
	ReadOwner = 16384,
	WriteOwner = 8192,
	ExeOwner = 4096,
	ReadUser = 1024,
	WriteUser = 512,
	ExeUser = 256,
	ReadGroup = 64,
	WriteGroup = 32,
	ExeGroup = 16,
	ReadOther = 4,
	WriteOther = 2,
	ExeOther = 1,
}
[AllowDuplicates]
public enum QFileDevice__FileHandleFlag
{
	AutoCloseHandle = 1,
	DontCloseHandle = 0,
}
[AllowDuplicates]
public enum QFileDevice__MemoryMapFlag
{
	NoOptions = 0,
	MapPrivateOption = 1,
}
public interface IQFileDevice
{
	void* NativePtr { get; }
}
public struct QFileDevicePtr : IQFileDevice, IDisposable, IQIODevice
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public void Dispose()
	{
		CQt.QFileDevice_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QFileDevice_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QFileDevice_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QFileDevice_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QFileDevice_Tr(s);
	}
	
	public int64 Error()
	{
		return CQt.QFileDevice_Error(this.nativePtr);
	}
	
	public void UnsetError()
	{
		CQt.QFileDevice_UnsetError(this.nativePtr);
	}
	
	public void Close()
	{
		CQt.QFileDevice_Close(this.nativePtr);
	}
	
	public bool IsSequential()
	{
		return CQt.QFileDevice_IsSequential(this.nativePtr);
	}
	
	public int32 Handle()
	{
		return CQt.QFileDevice_Handle(this.nativePtr);
	}
	
	public libqt_string FileName()
	{
		return CQt.QFileDevice_FileName(this.nativePtr);
	}
	
	public int64 Pos()
	{
		return CQt.QFileDevice_Pos(this.nativePtr);
	}
	
	public bool Seek(int64 offset)
	{
		return CQt.QFileDevice_Seek(this.nativePtr, offset);
	}
	
	public bool AtEnd()
	{
		return CQt.QFileDevice_AtEnd(this.nativePtr);
	}
	
	public bool Flush()
	{
		return CQt.QFileDevice_Flush(this.nativePtr);
	}
	
	public int64 Size()
	{
		return CQt.QFileDevice_Size(this.nativePtr);
	}
	
	public bool Resize(int64 sz)
	{
		return CQt.QFileDevice_Resize(this.nativePtr, sz);
	}
	
	public int64 Permissions()
	{
		return CQt.QFileDevice_Permissions(this.nativePtr);
	}
	
	public bool SetPermissions(int64 permissionSpec)
	{
		return CQt.QFileDevice_SetPermissions(this.nativePtr, permissionSpec);
	}
	
	public uint8* Map(int64 offset, int64 size)
	{
		return CQt.QFileDevice_Map(this.nativePtr, offset, size);
	}
	
	public bool Unmap(uint8* address)
	{
		return CQt.QFileDevice_Unmap(this.nativePtr, address);
	}
	
	public void FileTime(int64 time)
	{
		CQt.QFileDevice_FileTime(this.nativePtr, (int64)time);
	}
	
	public bool SetFileTime(IQDateTime newDate, int64 fileTime)
	{
		return CQt.QFileDevice_SetFileTime(this.nativePtr, (newDate == default || newDate.NativePtr == default) ? default : newDate.NativePtr, (int64)fileTime);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QFileDevice_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QFileDevice_Tr3(s, c, n);
	}
	
	public uint8* Map3(int64 offset, int64 size, int64 flags)
	{
		return CQt.QFileDevice_Map3(this.nativePtr, offset, size, flags);
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
	
	public bool Open(int64 mode)
	{
		return CQt.QIODevice_Open(this.nativePtr, mode);
	}
	
	public bool Reset()
	{
		return CQt.QIODevice_Reset(this.nativePtr);
	}
	
	public int64 BytesAvailable()
	{
		return CQt.QIODevice_BytesAvailable(this.nativePtr);
	}
	
	public int64 BytesToWrite()
	{
		return CQt.QIODevice_BytesToWrite(this.nativePtr);
	}
	
	public int64 Read(char8* data, int64 maxlen)
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
	
	public int64 ReadLine(char8* data, int64 maxlen)
	{
		return CQt.QIODevice_ReadLine(this.nativePtr, data, maxlen);
	}
	
	public libqt_string ReadLine2()
	{
		return CQt.QIODevice_ReadLine2(this.nativePtr);
	}
	
	public bool CanReadLine()
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
	
	public int64 Write(char8* data, int64 lenVal)
	{
		return CQt.QIODevice_Write(this.nativePtr, data, lenVal);
	}
	
	public int64 WriteWithData(char8* data)
	{
		return CQt.QIODevice_WriteWithData(this.nativePtr, data);
	}
	
	public int64 Write2(String data)
	{
		return CQt.QIODevice_Write2(this.nativePtr, libqt_string(data));
	}
	
	public int64 Peek(char8* data, int64 maxlen)
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
	
	public bool WaitForReadyRead(int32 msecs)
	{
		return CQt.QIODevice_WaitForReadyRead(this.nativePtr, msecs);
	}
	
	public bool WaitForBytesWritten(int32 msecs)
	{
		return CQt.QIODevice_WaitForBytesWritten(this.nativePtr, msecs);
	}
	
	public void UngetChar(int8 c)
	{
		CQt.QIODevice_UngetChar(this.nativePtr, c);
	}
	
	public bool PutChar(int8 c)
	{
		return CQt.QIODevice_PutChar(this.nativePtr, c);
	}
	
	public bool GetChar(char8* c)
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
	
	public bool Event(IQEvent event)
	{
		return CQt.QObject_Event(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public bool EventFilter(IQObject watched, IQEvent event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, (watched == default || watched.NativePtr == default) ? default : watched.NativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(char8* name)
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
	
	public void MoveToThread(IQThread thread)
	{
		CQt.QObject_MoveToThread(this.nativePtr, (thread == default || thread.NativePtr == default) ? default : thread.NativePtr);
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
	
	public void SetParent(IQObject parent)
	{
		CQt.QObject_SetParent(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, (filterObj == default || filterObj.NativePtr == default) ? default : filterObj.NativePtr);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, (obj == default || obj.NativePtr == default) ? default : obj.NativePtr);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		CQt.QObject_Connect((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (method == default || method.NativePtr == default) ? default : method.NativePtr);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		CQt.QObject_Connect2(this.nativePtr, (sender == default || sender.NativePtr == default) ? default : sender.NativePtr, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return CQt.QObject_Disconnect((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (member == default || member.NativePtr == default) ? default : member.NativePtr);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection((param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void DumpObjectTree()
	{
		CQt.QObject_DumpObjectTree(this.nativePtr);
	}
	
	public void DumpObjectInfo()
	{
		CQt.QObject_DumpObjectInfo(this.nativePtr);
	}
	
	public bool SetProperty(char8* name, IQVariant value)
	{
		return CQt.QObject_SetProperty(this.nativePtr, name, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public void Property(char8* name)
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
	
	public bool Inherits(char8* classname)
	{
		return CQt.QObject_Inherits(this.nativePtr, classname);
	}
	
	public void DeleteLater()
	{
		CQt.QObject_DeleteLater(this.nativePtr);
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return CQt.QObject_StartTimer2(this.nativePtr, interval, (int64)timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		CQt.QObject_Connect5((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (method == default || method.NativePtr == default) ? default : method.NativePtr, (int64)typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		CQt.QObject_Connect4(this.nativePtr, (sender == default || sender.NativePtr == default) ? default : sender.NativePtr, signal, member, (int64)typeVal);
	}
	
}
public class QFileDevice
{
	public QFileDevicePtr handle;
	
	public static implicit operator QFileDevicePtr(Self self)
	{
		return self.handle;
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* MetaObject()
	{
		return this.handle.MetaObject();
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return this.handle.Metacast(param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return this.handle.Metacall(param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return QFileDevicePtr.Tr(s);
	}
	
	public int64 Error()
	{
		return this.handle.Error();
	}
	
	public void UnsetError()
	{
		this.handle.UnsetError();
	}
	
	public virtual void Close()
	{
		this.handle.Close();
	}
	
	public virtual bool IsSequential()
	{
		return this.handle.IsSequential();
	}
	
	public int32 Handle()
	{
		return this.handle.Handle();
	}
	
	public virtual libqt_string FileName()
	{
		return this.handle.FileName();
	}
	
	public virtual int64 Pos()
	{
		return this.handle.Pos();
	}
	
	public virtual bool Seek(int64 offset)
	{
		return this.handle.Seek(offset);
	}
	
	public virtual bool AtEnd()
	{
		return this.handle.AtEnd();
	}
	
	public bool Flush()
	{
		return this.handle.Flush();
	}
	
	public virtual int64 Size()
	{
		return this.handle.Size();
	}
	
	public virtual bool Resize(int64 sz)
	{
		return this.handle.Resize(sz);
	}
	
	public virtual int64 Permissions()
	{
		return this.handle.Permissions();
	}
	
	public virtual bool SetPermissions(int64 permissionSpec)
	{
		return this.handle.SetPermissions(permissionSpec);
	}
	
	public uint8* Map(int64 offset, int64 size)
	{
		return this.handle.Map(offset, size);
	}
	
	public bool Unmap(uint8* address)
	{
		return this.handle.Unmap(address);
	}
	
	public void FileTime(int64 time)
	{
		this.handle.FileTime(time);
	}
	
	public bool SetFileTime(IQDateTime newDate, int64 fileTime)
	{
		return this.handle.SetFileTime(newDate, fileTime);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QFileDevicePtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QFileDevicePtr.Tr3(s, c, n);
	}
	
	public uint8* Map3(int64 offset, int64 size, int64 flags)
	{
		return this.handle.Map3(offset, size, flags);
	}
	
	public int64 OpenMode()
	{
		return this.handle.OpenMode();
	}
	
	public void SetTextModeEnabled(bool enabled)
	{
		this.handle.SetTextModeEnabled(enabled);
	}
	
	public bool IsTextModeEnabled()
	{
		return this.handle.IsTextModeEnabled();
	}
	
	public bool IsOpen()
	{
		return this.handle.IsOpen();
	}
	
	public bool IsReadable()
	{
		return this.handle.IsReadable();
	}
	
	public bool IsWritable()
	{
		return this.handle.IsWritable();
	}
	
	public int32 ReadChannelCount()
	{
		return this.handle.ReadChannelCount();
	}
	
	public int32 WriteChannelCount()
	{
		return this.handle.WriteChannelCount();
	}
	
	public int32 CurrentReadChannel()
	{
		return this.handle.CurrentReadChannel();
	}
	
	public void SetCurrentReadChannel(int32 channel)
	{
		this.handle.SetCurrentReadChannel(channel);
	}
	
	public int32 CurrentWriteChannel()
	{
		return this.handle.CurrentWriteChannel();
	}
	
	public void SetCurrentWriteChannel(int32 channel)
	{
		this.handle.SetCurrentWriteChannel(channel);
	}
	
	public virtual bool Open(int64 mode)
	{
		return this.handle.Open(mode);
	}
	
	public virtual bool Reset()
	{
		return this.handle.Reset();
	}
	
	public virtual int64 BytesAvailable()
	{
		return this.handle.BytesAvailable();
	}
	
	public virtual int64 BytesToWrite()
	{
		return this.handle.BytesToWrite();
	}
	
	public int64 Read(char8* data, int64 maxlen)
	{
		return this.handle.Read(data, maxlen);
	}
	
	public libqt_string ReadWithMaxlen(int64 maxlen)
	{
		return this.handle.ReadWithMaxlen(maxlen);
	}
	
	public libqt_string ReadAll()
	{
		return this.handle.ReadAll();
	}
	
	public int64 ReadLine(char8* data, int64 maxlen)
	{
		return this.handle.ReadLine(data, maxlen);
	}
	
	public libqt_string ReadLine2()
	{
		return this.handle.ReadLine2();
	}
	
	public virtual bool CanReadLine()
	{
		return this.handle.CanReadLine();
	}
	
	public void StartTransaction()
	{
		this.handle.StartTransaction();
	}
	
	public void CommitTransaction()
	{
		this.handle.CommitTransaction();
	}
	
	public void RollbackTransaction()
	{
		this.handle.RollbackTransaction();
	}
	
	public bool IsTransactionStarted()
	{
		return this.handle.IsTransactionStarted();
	}
	
	public int64 Write(char8* data, int64 lenVal)
	{
		return this.handle.Write(data, lenVal);
	}
	
	public int64 WriteWithData(char8* data)
	{
		return this.handle.WriteWithData(data);
	}
	
	public int64 Write2(String data)
	{
		return this.handle.Write2(data);
	}
	
	public int64 Peek(char8* data, int64 maxlen)
	{
		return this.handle.Peek(data, maxlen);
	}
	
	public libqt_string PeekWithMaxlen(int64 maxlen)
	{
		return this.handle.PeekWithMaxlen(maxlen);
	}
	
	public int64 Skip(int64 maxSize)
	{
		return this.handle.Skip(maxSize);
	}
	
	public virtual bool WaitForReadyRead(int32 msecs)
	{
		return this.handle.WaitForReadyRead(msecs);
	}
	
	public virtual bool WaitForBytesWritten(int32 msecs)
	{
		return this.handle.WaitForBytesWritten(msecs);
	}
	
	public void UngetChar(int8 c)
	{
		this.handle.UngetChar(c);
	}
	
	public bool PutChar(int8 c)
	{
		return this.handle.PutChar(c);
	}
	
	public bool GetChar(char8* c)
	{
		return this.handle.GetChar(c);
	}
	
	public libqt_string ErrorString()
	{
		return this.handle.ErrorString();
	}
	
	public libqt_string ReadLine1(int64 maxlen)
	{
		return this.handle.ReadLine1(maxlen);
	}
	
	public virtual bool Event(IQEvent event)
	{
		return this.handle.Event(event);
	}
	
	public virtual bool EventFilter(IQObject watched, IQEvent event)
	{
		return this.handle.EventFilter(watched, event);
	}
	
	public libqt_string ObjectName()
	{
		return this.handle.ObjectName();
	}
	
	public void SetObjectName(char8* name)
	{
		this.handle.SetObjectName(name);
	}
	
	public bool IsWidgetType()
	{
		return this.handle.IsWidgetType();
	}
	
	public bool IsWindowType()
	{
		return this.handle.IsWindowType();
	}
	
	public bool IsQuickItemType()
	{
		return this.handle.IsQuickItemType();
	}
	
	public bool SignalsBlocked()
	{
		return this.handle.SignalsBlocked();
	}
	
	public bool BlockSignals(bool b)
	{
		return this.handle.BlockSignals(b);
	}
	
	public void* Thread()
	{
		return this.handle.Thread();
	}
	
	public void MoveToThread(IQThread thread)
	{
		this.handle.MoveToThread(thread);
	}
	
	public int32 StartTimer(int32 interval)
	{
		return this.handle.StartTimer(interval);
	}
	
	public void KillTimer(int32 id)
	{
		this.handle.KillTimer(id);
	}
	
	public void*[] Children()
	{
		return this.handle.Children();
	}
	
	public void SetParent(IQObject parent)
	{
		this.handle.SetParent(parent);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		this.handle.InstallEventFilter(filterObj);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		this.handle.RemoveEventFilter(obj);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		QFileDevicePtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QFileDevicePtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QFileDevicePtr.DisconnectWithQMetaObjectConnection(param1);
	}
	
	public void DumpObjectTree()
	{
		this.handle.DumpObjectTree();
	}
	
	public void DumpObjectInfo()
	{
		this.handle.DumpObjectInfo();
	}
	
	public bool SetProperty(char8* name, IQVariant value)
	{
		return this.handle.SetProperty(name, value);
	}
	
	public void Property(char8* name)
	{
		this.handle.Property(name);
	}
	
	public libqt_string[] DynamicPropertyNames()
	{
		return this.handle.DynamicPropertyNames();
	}
	
	public void* BindingStorage()
	{
		return this.handle.BindingStorage();
	}
	
	public void* BindingStorage2()
	{
		return this.handle.BindingStorage2();
	}
	
	public void* Parent()
	{
		return this.handle.Parent();
	}
	
	public bool Inherits(char8* classname)
	{
		return this.handle.Inherits(classname);
	}
	
	public void DeleteLater()
	{
		this.handle.DeleteLater();
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return this.handle.StartTimer2(interval, timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		QFileDevicePtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QFileDevice_MetaObject")]
	public static extern void* QFileDevice_MetaObject(void* c_this);
	[LinkName("QFileDevice_Metacast")]
	public static extern void* QFileDevice_Metacast(void* c_this, char8* param1);
	[LinkName("QFileDevice_Metacall")]
	public static extern int32 QFileDevice_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QFileDevice_Tr")]
	public static extern libqt_string QFileDevice_Tr(char8* s);
	[LinkName("QFileDevice_Error")]
	public static extern int64 QFileDevice_Error(void* c_this);
	[LinkName("QFileDevice_UnsetError")]
	public static extern void QFileDevice_UnsetError(void* c_this);
	[LinkName("QFileDevice_Close")]
	public static extern void QFileDevice_Close(void* c_this);
	[LinkName("QFileDevice_IsSequential")]
	public static extern bool QFileDevice_IsSequential(void* c_this);
	[LinkName("QFileDevice_Handle")]
	public static extern int32 QFileDevice_Handle(void* c_this);
	[LinkName("QFileDevice_FileName")]
	public static extern libqt_string QFileDevice_FileName(void* c_this);
	[LinkName("QFileDevice_Pos")]
	public static extern int64 QFileDevice_Pos(void* c_this);
	[LinkName("QFileDevice_Seek")]
	public static extern bool QFileDevice_Seek(void* c_this, int64 offset);
	[LinkName("QFileDevice_AtEnd")]
	public static extern bool QFileDevice_AtEnd(void* c_this);
	[LinkName("QFileDevice_Flush")]
	public static extern bool QFileDevice_Flush(void* c_this);
	[LinkName("QFileDevice_Size")]
	public static extern int64 QFileDevice_Size(void* c_this);
	[LinkName("QFileDevice_Resize")]
	public static extern bool QFileDevice_Resize(void* c_this, int64 sz);
	[LinkName("QFileDevice_Permissions")]
	public static extern int64 QFileDevice_Permissions(void* c_this);
	[LinkName("QFileDevice_SetPermissions")]
	public static extern bool QFileDevice_SetPermissions(void* c_this, int64 permissionSpec);
	[LinkName("QFileDevice_Map")]
	public static extern uint8* QFileDevice_Map(void* c_this, int64 offset, int64 size);
	[LinkName("QFileDevice_Unmap")]
	public static extern bool QFileDevice_Unmap(void* c_this, uint8* address);
	[LinkName("QFileDevice_FileTime")]
	public static extern void QFileDevice_FileTime(void* c_this, int64 time);
	[LinkName("QFileDevice_SetFileTime")]
	public static extern bool QFileDevice_SetFileTime(void* c_this, void* newDate, int64 fileTime);
	[LinkName("QFileDevice_ReadData")]
	public static extern int64 QFileDevice_ReadData(void* c_this, char8* data, int64 maxlen);
	[LinkName("QFileDevice_WriteData")]
	public static extern int64 QFileDevice_WriteData(void* c_this, char8* data, int64 lenVal);
	[LinkName("QFileDevice_ReadLineData")]
	public static extern int64 QFileDevice_ReadLineData(void* c_this, char8* data, int64 maxlen);
	[LinkName("QFileDevice_Tr2")]
	public static extern libqt_string QFileDevice_Tr2(char8* s, char8* c);
	[LinkName("QFileDevice_Tr3")]
	public static extern libqt_string QFileDevice_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QFileDevice_Map3")]
	public static extern uint8* QFileDevice_Map3(void* c_this, int64 offset, int64 size, int64 flags);
	/// Delete this object from C++ memory
	[LinkName("QFileDevice_Delete")]
	public static extern void QFileDevice_Delete(void* self);
}