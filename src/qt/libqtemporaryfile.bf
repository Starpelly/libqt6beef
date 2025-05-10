using System;
using System.Interop;
namespace Qt;

public interface IQTemporaryFile
{
	void* NativePtr { get; }
}
public class QTemporaryFile : IQTemporaryFile, IQFile
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QTemporaryFile_new();
	}
	
	public ~this()
	{
		CQt.QTemporaryFile_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QTemporaryFile_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QTemporaryFile_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QTemporaryFile_Metacall(this.nativePtr, param1, param2, param3);
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
	
	public virtual libqt_string FileName()
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
		return CQt.QTemporaryFile_CreateNativeFileWithFile((file == default) ? default : (void*)file.NativePtr);
	}
	
	public virtual bool OpenWithFlags(int64 flags)
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
	
	public virtual int64 Size()
	{
		return CQt.QFile_Size(this.nativePtr);
	}
	
	public virtual bool Resize(int64 sz)
	{
		return CQt.QFile_Resize(this.nativePtr, sz);
	}
	
	public static bool Resize2(String filename, int64 sz)
	{
		return CQt.QFile_Resize2(libqt_string(filename), sz);
	}
	
	public virtual int64 Permissions()
	{
		return CQt.QFile_Permissions(this.nativePtr);
	}
	
	public static int64 PermissionsWithFilename(String filename)
	{
		return CQt.QFile_PermissionsWithFilename(libqt_string(filename));
	}
	
	public virtual bool SetPermissions(int64 permissionSpec)
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
	
	public virtual void Close()
	{
		CQt.QFileDevice_Close(this.nativePtr);
	}
	
	public virtual bool IsSequential()
	{
		return CQt.QFileDevice_IsSequential(this.nativePtr);
	}
	
	public int32 Handle()
	{
		return CQt.QFileDevice_Handle(this.nativePtr);
	}
	
	public virtual int64 Pos()
	{
		return CQt.QFileDevice_Pos(this.nativePtr);
	}
	
	public virtual bool Seek(int64 offset)
	{
		return CQt.QFileDevice_Seek(this.nativePtr, offset);
	}
	
	public virtual bool AtEnd()
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
		CQt.QFileDevice_FileTime(this.nativePtr, time);
	}
	
	public bool SetFileTime(IQDateTime newDate, int64 fileTime)
	{
		return CQt.QFileDevice_SetFileTime(this.nativePtr, (newDate == default) ? default : (void*)newDate.NativePtr, fileTime);
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
	
	public virtual bool Reset()
	{
		return CQt.QIODevice_Reset(this.nativePtr);
	}
	
	public virtual int64 BytesAvailable()
	{
		return CQt.QIODevice_BytesAvailable(this.nativePtr);
	}
	
	public virtual int64 BytesToWrite()
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
	
	public virtual bool WaitForReadyRead(int32 msecs)
	{
		return CQt.QIODevice_WaitForReadyRead(this.nativePtr, msecs);
	}
	
	public virtual bool WaitForBytesWritten(int32 msecs)
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
	
	public virtual bool Event(IQEvent event)
	{
		return CQt.QObject_Event(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual bool EventFilter(IQObject watched, IQEvent event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, (watched == null) ? null : (void*)watched.NativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(IQAnyStringView name)
	{
		CQt.QObject_SetObjectName(this.nativePtr, (name == default) ? default : (char8*)name.NativePtr);
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
		CQt.QObject_MoveToThread(this.nativePtr, (thread == null) ? null : (void*)thread.NativePtr);
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
		CQt.QObject_SetParent(this.nativePtr, (parent == null) ? null : (void*)parent.NativePtr);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, (filterObj == null) ? null : (void*)filterObj.NativePtr);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, (obj == null) ? null : (void*)obj.NativePtr);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		CQt.QObject_Connect((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (method == default) ? default : (void*)method.NativePtr);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		CQt.QObject_Connect2(this.nativePtr, (sender == null) ? null : (void*)sender.NativePtr, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return CQt.QObject_Disconnect((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (member == default) ? default : (void*)member.NativePtr);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__Connection param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection((param1 == default) ? default : (void*)param1.NativePtr);
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
		return CQt.QObject_SetProperty(this.nativePtr, name, (value == default) ? default : (void*)value.NativePtr);
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
		return CQt.QObject_StartTimer2(this.nativePtr, interval, timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		CQt.QObject_Connect5((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (method == default) ? default : (void*)method.NativePtr, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		CQt.QObject_Connect4(this.nativePtr, (sender == null) ? null : (void*)sender.NativePtr, signal, member, typeVal);
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