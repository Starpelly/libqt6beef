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
public struct QFileDevice
{
	[LinkName("QFileDevice_MetaObject")]
	public static extern QMetaObject QFileDevice_MetaObject(void* c_this);
	[LinkName("QFileDevice_Metacast")]
	public static extern void QFileDevice_Metacast(void* c_this, char8[] param1);
	[LinkName("QFileDevice_Metacall")]
	public static extern int32 QFileDevice_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QFileDevice_Tr")]
	public static extern char8[] QFileDevice_Tr(char8[] s);
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
	public static extern char8[] QFileDevice_FileName(void* c_this);
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
	public static extern uint8 QFileDevice_Map(void* c_this, int64 offset, int64 size);
	[LinkName("QFileDevice_Unmap")]
	public static extern bool QFileDevice_Unmap(void* c_this, uint8 address);
	[LinkName("QFileDevice_FileTime")]
	public static extern QDateTime QFileDevice_FileTime(void* c_this, int64 time);
	[LinkName("QFileDevice_SetFileTime")]
	public static extern bool QFileDevice_SetFileTime(void* c_this, QDateTime newDate, int64 fileTime);
	[LinkName("QFileDevice_ReadData")]
	public static extern int64 QFileDevice_ReadData(void* c_this, char8[] data, int64 maxlen);
	[LinkName("QFileDevice_WriteData")]
	public static extern int64 QFileDevice_WriteData(void* c_this, char8[] data, int64 lenVal);
	[LinkName("QFileDevice_ReadLineData")]
	public static extern int64 QFileDevice_ReadLineData(void* c_this, char8[] data, int64 maxlen);
	[LinkName("QFileDevice_Tr2")]
	public static extern char8[] QFileDevice_Tr2(char8[] s, char8[] c);
	[LinkName("QFileDevice_Tr3")]
	public static extern char8[] QFileDevice_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QFileDevice_Map3")]
	public static extern uint8 QFileDevice_Map3(void* c_this, int64 offset, int64 size, int64 flags);
}