using System;
using System.Interop;
namespace Qt;

public interface IQTemporaryFile
{
	void* NativePtr { get; }
}
public struct QTemporaryFilePtr : IQTemporaryFile, IDisposable, IQFile
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QTemporaryFile_new());
	}
	
	public void Dispose()
	{
		CQt.QTemporaryFile_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QTemporaryFile_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QTemporaryFile_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QTemporaryFile_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QTemporaryFile_Tr(s);
	}
	
	public bool AutoRemove()
	{
		return CQt.QTemporaryFile_AutoRemove(this.nativePtr);
	}
	
	public void SetAutoRemove(bool b)
	{
		CQt.QTemporaryFile_SetAutoRemove(this.nativePtr, b);
	}
	
	public bool Open()
	{
		return CQt.QTemporaryFile_Open(this.nativePtr);
	}
	
	public libqt_string FileName()
	{
		return CQt.QTemporaryFile_FileName(this.nativePtr);
	}
	
	public libqt_string FileTemplate()
	{
		return CQt.QTemporaryFile_FileTemplate(this.nativePtr);
	}
	
	public void SetFileTemplate(String name)
	{
		CQt.QTemporaryFile_SetFileTemplate(this.nativePtr, libqt_string(name));
	}
	
	public bool Rename(String newName)
	{
		return CQt.QTemporaryFile_Rename(this.nativePtr, libqt_string(newName));
	}
	
	public static void* CreateNativeFile(String fileName)
	{
		return CQt.QTemporaryFile_CreateNativeFile(libqt_string(fileName));
	}
	
	public static void* CreateNativeFileWithFile(IQFile file)
	{
		return CQt.QTemporaryFile_CreateNativeFileWithFile((file == default || file.NativePtr == default) ? default : file.NativePtr);
	}
	
	public bool OpenWithFlags(int64 flags)
	{
		return CQt.QTemporaryFile_OpenWithFlags(this.nativePtr, flags);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QTemporaryFile_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QTemporaryFile_Tr3(s, c, n);
	}
	
	public void SetFileName(String name)
	{
		CQt.QFile_SetFileName(this.nativePtr, libqt_string(name));
	}
	
	public static libqt_string EncodeName(String fileName)
	{
		return CQt.QFile_EncodeName(libqt_string(fileName));
	}
	
	public static libqt_string DecodeName(String localFileName)
	{
		return CQt.QFile_DecodeName(libqt_string(localFileName));
	}
	
	public static libqt_string DecodeNameWithLocalFileName(char8* localFileName)
	{
		return CQt.QFile_DecodeNameWithLocalFileName(localFileName);
	}
	
	public bool Exists()
	{
		return CQt.QFile_Exists(this.nativePtr);
	}
	
	public static bool ExistsWithFileName(String fileName)
	{
		return CQt.QFile_ExistsWithFileName(libqt_string(fileName));
	}
	
	public libqt_string SymLinkTarget()
	{
		return CQt.QFile_SymLinkTarget(this.nativePtr);
	}
	
	public static libqt_string SymLinkTargetWithFileName(String fileName)
	{
		return CQt.QFile_SymLinkTargetWithFileName(libqt_string(fileName));
	}
	
	public bool Remove()
	{
		return CQt.QFile_Remove(this.nativePtr);
	}
	
	public static bool RemoveWithFileName(String fileName)
	{
		return CQt.QFile_RemoveWithFileName(libqt_string(fileName));
	}
	
	public bool MoveToTrash()
	{
		return CQt.QFile_MoveToTrash(this.nativePtr);
	}
	
	public static bool MoveToTrashWithFileName(String fileName)
	{
		return CQt.QFile_MoveToTrashWithFileName(libqt_string(fileName));
	}
	
	public static bool Rename2(String oldName, String newName)
	{
		return CQt.QFile_Rename2(libqt_string(oldName), libqt_string(newName));
	}
	
	public bool Link(String newName)
	{
		return CQt.QFile_Link(this.nativePtr, libqt_string(newName));
	}
	
	public static bool Link2(String fileName, String newName)
	{
		return CQt.QFile_Link2(libqt_string(fileName), libqt_string(newName));
	}
	
	public bool Copy(String newName)
	{
		return CQt.QFile_Copy(this.nativePtr, libqt_string(newName));
	}
	
	public static bool Copy2(String fileName, String newName)
	{
		return CQt.QFile_Copy2(libqt_string(fileName), libqt_string(newName));
	}
	
	public bool Open2(int64 flags, int64 permissions)
	{
		return CQt.QFile_Open2(this.nativePtr, flags, permissions);
	}
	
	public bool Open4(int32 fd, int64 ioFlags)
	{
		return CQt.QFile_Open4(this.nativePtr, fd, ioFlags);
	}
	
	public int64 Size()
	{
		return CQt.QFile_Size(this.nativePtr);
	}
	
	public bool Resize(int64 sz)
	{
		return CQt.QFile_Resize(this.nativePtr, sz);
	}
	
	public static bool Resize2(String filename, int64 sz)
	{
		return CQt.QFile_Resize2(libqt_string(filename), sz);
	}
	
	public int64 Permissions()
	{
		return CQt.QFile_Permissions(this.nativePtr);
	}
	
	public static int64 PermissionsWithFilename(String filename)
	{
		return CQt.QFile_PermissionsWithFilename(libqt_string(filename));
	}
	
	public bool SetPermissions(int64 permissionSpec)
	{
		return CQt.QFile_SetPermissions(this.nativePtr, permissionSpec);
	}
	
	public static bool SetPermissions2(String filename, int64 permissionSpec)
	{
		return CQt.QFile_SetPermissions2(libqt_string(filename), permissionSpec);
	}
	
	public bool Open33(int32 fd, int64 ioFlags, int64 handleFlags)
	{
		return CQt.QFile_Open33(this.nativePtr, fd, ioFlags, handleFlags);
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
public class QTemporaryFile
{
	public QTemporaryFilePtr handle;
	
	public static implicit operator QTemporaryFilePtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QTemporaryFilePtr.New();
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
		return QTemporaryFilePtr.Tr(s);
	}
	
	public bool AutoRemove()
	{
		return this.handle.AutoRemove();
	}
	
	public void SetAutoRemove(bool b)
	{
		this.handle.SetAutoRemove(b);
	}
	
	public bool Open()
	{
		return this.handle.Open();
	}
	
	public virtual libqt_string FileName()
	{
		return this.handle.FileName();
	}
	
	public libqt_string FileTemplate()
	{
		return this.handle.FileTemplate();
	}
	
	public void SetFileTemplate(String name)
	{
		this.handle.SetFileTemplate(name);
	}
	
	public bool Rename(String newName)
	{
		return this.handle.Rename(newName);
	}
	
	public static void* CreateNativeFile(String fileName)
	{
		return QTemporaryFilePtr.CreateNativeFile(fileName);
	}
	
	public static void* CreateNativeFileWithFile(IQFile file)
	{
		return QTemporaryFilePtr.CreateNativeFileWithFile(file);
	}
	
	public virtual bool OpenWithFlags(int64 flags)
	{
		return this.handle.OpenWithFlags(flags);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QTemporaryFilePtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QTemporaryFilePtr.Tr3(s, c, n);
	}
	
	public void SetFileName(String name)
	{
		this.handle.SetFileName(name);
	}
	
	public static libqt_string EncodeName(String fileName)
	{
		return QTemporaryFilePtr.EncodeName(fileName);
	}
	
	public static libqt_string DecodeName(String localFileName)
	{
		return QTemporaryFilePtr.DecodeName(localFileName);
	}
	
	public static libqt_string DecodeNameWithLocalFileName(char8* localFileName)
	{
		return QTemporaryFilePtr.DecodeNameWithLocalFileName(localFileName);
	}
	
	public bool Exists()
	{
		return this.handle.Exists();
	}
	
	public static bool ExistsWithFileName(String fileName)
	{
		return QTemporaryFilePtr.ExistsWithFileName(fileName);
	}
	
	public libqt_string SymLinkTarget()
	{
		return this.handle.SymLinkTarget();
	}
	
	public static libqt_string SymLinkTargetWithFileName(String fileName)
	{
		return QTemporaryFilePtr.SymLinkTargetWithFileName(fileName);
	}
	
	public bool Remove()
	{
		return this.handle.Remove();
	}
	
	public static bool RemoveWithFileName(String fileName)
	{
		return QTemporaryFilePtr.RemoveWithFileName(fileName);
	}
	
	public bool MoveToTrash()
	{
		return this.handle.MoveToTrash();
	}
	
	public static bool MoveToTrashWithFileName(String fileName)
	{
		return QTemporaryFilePtr.MoveToTrashWithFileName(fileName);
	}
	
	public static bool Rename2(String oldName, String newName)
	{
		return QTemporaryFilePtr.Rename2(oldName, newName);
	}
	
	public bool Link(String newName)
	{
		return this.handle.Link(newName);
	}
	
	public static bool Link2(String fileName, String newName)
	{
		return QTemporaryFilePtr.Link2(fileName, newName);
	}
	
	public bool Copy(String newName)
	{
		return this.handle.Copy(newName);
	}
	
	public static bool Copy2(String fileName, String newName)
	{
		return QTemporaryFilePtr.Copy2(fileName, newName);
	}
	
	public bool Open2(int64 flags, int64 permissions)
	{
		return this.handle.Open2(flags, permissions);
	}
	
	public bool Open4(int32 fd, int64 ioFlags)
	{
		return this.handle.Open4(fd, ioFlags);
	}
	
	public virtual int64 Size()
	{
		return this.handle.Size();
	}
	
	public virtual bool Resize(int64 sz)
	{
		return this.handle.Resize(sz);
	}
	
	public static bool Resize2(String filename, int64 sz)
	{
		return QTemporaryFilePtr.Resize2(filename, sz);
	}
	
	public virtual int64 Permissions()
	{
		return this.handle.Permissions();
	}
	
	public static int64 PermissionsWithFilename(String filename)
	{
		return QTemporaryFilePtr.PermissionsWithFilename(filename);
	}
	
	public virtual bool SetPermissions(int64 permissionSpec)
	{
		return this.handle.SetPermissions(permissionSpec);
	}
	
	public static bool SetPermissions2(String filename, int64 permissionSpec)
	{
		return QTemporaryFilePtr.SetPermissions2(filename, permissionSpec);
	}
	
	public bool Open33(int32 fd, int64 ioFlags, int64 handleFlags)
	{
		return this.handle.Open33(fd, ioFlags, handleFlags);
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
		QTemporaryFilePtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QTemporaryFilePtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QTemporaryFilePtr.DisconnectWithQMetaObjectConnection(param1);
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
		QTemporaryFilePtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QTemporaryFile_new")]
	public static extern void* QTemporaryFile_new();
	[LinkName("QTemporaryFile_new2")]
	public static extern void* QTemporaryFile_new2(libqt_string templateName);
	[LinkName("QTemporaryFile_new3")]
	public static extern void* QTemporaryFile_new3(void* parent);
	[LinkName("QTemporaryFile_new4")]
	public static extern void* QTemporaryFile_new4(libqt_string templateName, void* parent);
	[LinkName("QTemporaryFile_MetaObject")]
	public static extern void* QTemporaryFile_MetaObject(void* c_this);
	[LinkName("QTemporaryFile_Metacast")]
	public static extern void* QTemporaryFile_Metacast(void* c_this, char8* param1);
	[LinkName("QTemporaryFile_Metacall")]
	public static extern int32 QTemporaryFile_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QTemporaryFile_Tr")]
	public static extern libqt_string QTemporaryFile_Tr(char8* s);
	[LinkName("QTemporaryFile_AutoRemove")]
	public static extern bool QTemporaryFile_AutoRemove(void* c_this);
	[LinkName("QTemporaryFile_SetAutoRemove")]
	public static extern void QTemporaryFile_SetAutoRemove(void* c_this, bool b);
	[LinkName("QTemporaryFile_Open")]
	public static extern bool QTemporaryFile_Open(void* c_this);
	[LinkName("QTemporaryFile_FileName")]
	public static extern libqt_string QTemporaryFile_FileName(void* c_this);
	[LinkName("QTemporaryFile_FileTemplate")]
	public static extern libqt_string QTemporaryFile_FileTemplate(void* c_this);
	[LinkName("QTemporaryFile_SetFileTemplate")]
	public static extern void QTemporaryFile_SetFileTemplate(void* c_this, libqt_string name);
	[LinkName("QTemporaryFile_Rename")]
	public static extern bool QTemporaryFile_Rename(void* c_this, libqt_string newName);
	[LinkName("QTemporaryFile_CreateNativeFile")]
	public static extern void* QTemporaryFile_CreateNativeFile(libqt_string fileName);
	[LinkName("QTemporaryFile_CreateNativeFileWithFile")]
	public static extern void* QTemporaryFile_CreateNativeFileWithFile(void* file);
	[LinkName("QTemporaryFile_OpenWithFlags")]
	public static extern bool QTemporaryFile_OpenWithFlags(void* c_this, int64 flags);
	[LinkName("QTemporaryFile_Tr2")]
	public static extern libqt_string QTemporaryFile_Tr2(char8* s, char8* c);
	[LinkName("QTemporaryFile_Tr3")]
	public static extern libqt_string QTemporaryFile_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QTemporaryFile_Delete")]
	public static extern void QTemporaryFile_Delete(void* self);
}