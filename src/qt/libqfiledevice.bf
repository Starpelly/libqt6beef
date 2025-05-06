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
public struct QFileDevice : QIODevice
{
	[LinkName("QFileDevice_MetaObject")]
	public static extern QMetaObject* QFileDevice_MetaObject(Self* c_this);
	[LinkName("QFileDevice_Metacast")]
	public static extern void* QFileDevice_Metacast(Self* c_this, char8[] param1);
	[LinkName("QFileDevice_Metacall")]
	public static extern int32 QFileDevice_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QFileDevice_Tr")]
	public static extern libqt_string QFileDevice_Tr(char8[] s);
	[LinkName("QFileDevice_Error")]
	public static extern int64 QFileDevice_Error(Self* c_this);
	[LinkName("QFileDevice_UnsetError")]
	public static extern void QFileDevice_UnsetError(Self* c_this);
	[LinkName("QFileDevice_Close")]
	public static extern void QFileDevice_Close(Self* c_this);
	[LinkName("QFileDevice_IsSequential")]
	public static extern bool QFileDevice_IsSequential(Self* c_this);
	[LinkName("QFileDevice_Handle")]
	public static extern int32 QFileDevice_Handle(Self* c_this);
	[LinkName("QFileDevice_FileName")]
	public static extern libqt_string QFileDevice_FileName(Self* c_this);
	[LinkName("QFileDevice_Pos")]
	public static extern int64 QFileDevice_Pos(Self* c_this);
	[LinkName("QFileDevice_Seek")]
	public static extern bool QFileDevice_Seek(Self* c_this, int64 offset);
	[LinkName("QFileDevice_AtEnd")]
	public static extern bool QFileDevice_AtEnd(Self* c_this);
	[LinkName("QFileDevice_Flush")]
	public static extern bool QFileDevice_Flush(Self* c_this);
	[LinkName("QFileDevice_Size")]
	public static extern int64 QFileDevice_Size(Self* c_this);
	[LinkName("QFileDevice_Resize")]
	public static extern bool QFileDevice_Resize(Self* c_this, int64 sz);
	[LinkName("QFileDevice_Permissions")]
	public static extern int64 QFileDevice_Permissions(Self* c_this);
	[LinkName("QFileDevice_SetPermissions")]
	public static extern bool QFileDevice_SetPermissions(Self* c_this, int64 permissionSpec);
	[LinkName("QFileDevice_Map")]
	public static extern uint8* QFileDevice_Map(Self* c_this, int64 offset, int64 size);
	[LinkName("QFileDevice_Unmap")]
	public static extern bool QFileDevice_Unmap(Self* c_this, uint8* address);
	[LinkName("QFileDevice_FileTime")]
	public static extern QDateTime QFileDevice_FileTime(Self* c_this, int64 time);
	[LinkName("QFileDevice_SetFileTime")]
	public static extern bool QFileDevice_SetFileTime(Self* c_this, QDateTime* newDate, int64 fileTime);
	[LinkName("QFileDevice_ReadData")]
	public static extern int64 QFileDevice_ReadData(Self* c_this, char8[] data, int64 maxlen);
	[LinkName("QFileDevice_WriteData")]
	public static extern int64 QFileDevice_WriteData(Self* c_this, char8[] data, int64 lenVal);
	[LinkName("QFileDevice_ReadLineData")]
	public static extern int64 QFileDevice_ReadLineData(Self* c_this, char8[] data, int64 maxlen);
	[LinkName("QFileDevice_Tr2")]
	public static extern libqt_string QFileDevice_Tr2(char8[] s, char8[] c);
	[LinkName("QFileDevice_Tr3")]
	public static extern libqt_string QFileDevice_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QFileDevice_Map3")]
	public static extern uint8* QFileDevice_Map3(Self* c_this, int64 offset, int64 size, int64 flags);
}