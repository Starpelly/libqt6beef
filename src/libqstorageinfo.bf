using System;
using System.Interop;
namespace Qt;

public struct QStorageInfo
{
	[LinkName("QStorageInfo_new")]
	public static extern void* QStorageInfo_new();
	[LinkName("QStorageInfo_new2")]
	public static extern void* QStorageInfo_new2(char8[] path);
	[LinkName("QStorageInfo_new3")]
	public static extern void* QStorageInfo_new3(QDir dir);
	[LinkName("QStorageInfo_new4")]
	public static extern void* QStorageInfo_new4(QStorageInfo other);
	[LinkName("QStorageInfo_OperatorAssign")]
	public static extern void QStorageInfo_OperatorAssign(void* c_this, QStorageInfo other);
	[LinkName("QStorageInfo_Swap")]
	public static extern void QStorageInfo_Swap(void* c_this, QStorageInfo other);
	[LinkName("QStorageInfo_SetPath")]
	public static extern void QStorageInfo_SetPath(void* c_this, char8[] path);
	[LinkName("QStorageInfo_RootPath")]
	public static extern char8[] QStorageInfo_RootPath(void* c_this);
	[LinkName("QStorageInfo_Device")]
	public static extern uint8[] QStorageInfo_Device(void* c_this);
	[LinkName("QStorageInfo_Subvolume")]
	public static extern uint8[] QStorageInfo_Subvolume(void* c_this);
	[LinkName("QStorageInfo_FileSystemType")]
	public static extern uint8[] QStorageInfo_FileSystemType(void* c_this);
	[LinkName("QStorageInfo_Name")]
	public static extern char8[] QStorageInfo_Name(void* c_this);
	[LinkName("QStorageInfo_DisplayName")]
	public static extern char8[] QStorageInfo_DisplayName(void* c_this);
	[LinkName("QStorageInfo_BytesTotal")]
	public static extern int64 QStorageInfo_BytesTotal(void* c_this);
	[LinkName("QStorageInfo_BytesFree")]
	public static extern int64 QStorageInfo_BytesFree(void* c_this);
	[LinkName("QStorageInfo_BytesAvailable")]
	public static extern int64 QStorageInfo_BytesAvailable(void* c_this);
	[LinkName("QStorageInfo_BlockSize")]
	public static extern int32 QStorageInfo_BlockSize(void* c_this);
	[LinkName("QStorageInfo_IsRoot")]
	public static extern bool QStorageInfo_IsRoot(void* c_this);
	[LinkName("QStorageInfo_IsReadOnly")]
	public static extern bool QStorageInfo_IsReadOnly(void* c_this);
	[LinkName("QStorageInfo_IsReady")]
	public static extern bool QStorageInfo_IsReady(void* c_this);
	[LinkName("QStorageInfo_IsValid")]
	public static extern bool QStorageInfo_IsValid(void* c_this);
	[LinkName("QStorageInfo_Refresh")]
	public static extern void QStorageInfo_Refresh(void* c_this);
	[LinkName("QStorageInfo_MountedVolumes")]
	public static extern QStorageInfo[] QStorageInfo_MountedVolumes();
	[LinkName("QStorageInfo_Root")]
	public static extern QStorageInfo QStorageInfo_Root();
}