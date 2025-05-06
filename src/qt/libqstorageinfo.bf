using System;
using System.Interop;
namespace Qt;

public struct QStorageInfo
{
	[LinkName("QStorageInfo_new")]
	public static extern QStorageInfo* QStorageInfo_new();
	[LinkName("QStorageInfo_new2")]
	public static extern QStorageInfo* QStorageInfo_new2(libqt_string path);
	[LinkName("QStorageInfo_new3")]
	public static extern QStorageInfo* QStorageInfo_new3(QDir* dir);
	[LinkName("QStorageInfo_new4")]
	public static extern QStorageInfo* QStorageInfo_new4(QStorageInfo* other);
	[LinkName("QStorageInfo_OperatorAssign")]
	public static extern void QStorageInfo_OperatorAssign(Self* c_this, QStorageInfo* other);
	[LinkName("QStorageInfo_Swap")]
	public static extern void QStorageInfo_Swap(Self* c_this, QStorageInfo* other);
	[LinkName("QStorageInfo_SetPath")]
	public static extern void QStorageInfo_SetPath(Self* c_this, libqt_string path);
	[LinkName("QStorageInfo_RootPath")]
	public static extern libqt_string QStorageInfo_RootPath(Self* c_this);
	[LinkName("QStorageInfo_Device")]
	public static extern libqt_string QStorageInfo_Device(Self* c_this);
	[LinkName("QStorageInfo_Subvolume")]
	public static extern libqt_string QStorageInfo_Subvolume(Self* c_this);
	[LinkName("QStorageInfo_FileSystemType")]
	public static extern libqt_string QStorageInfo_FileSystemType(Self* c_this);
	[LinkName("QStorageInfo_Name")]
	public static extern libqt_string QStorageInfo_Name(Self* c_this);
	[LinkName("QStorageInfo_DisplayName")]
	public static extern libqt_string QStorageInfo_DisplayName(Self* c_this);
	[LinkName("QStorageInfo_BytesTotal")]
	public static extern int64 QStorageInfo_BytesTotal(Self* c_this);
	[LinkName("QStorageInfo_BytesFree")]
	public static extern int64 QStorageInfo_BytesFree(Self* c_this);
	[LinkName("QStorageInfo_BytesAvailable")]
	public static extern int64 QStorageInfo_BytesAvailable(Self* c_this);
	[LinkName("QStorageInfo_BlockSize")]
	public static extern int32 QStorageInfo_BlockSize(Self* c_this);
	[LinkName("QStorageInfo_IsRoot")]
	public static extern bool QStorageInfo_IsRoot(Self* c_this);
	[LinkName("QStorageInfo_IsReadOnly")]
	public static extern bool QStorageInfo_IsReadOnly(Self* c_this);
	[LinkName("QStorageInfo_IsReady")]
	public static extern bool QStorageInfo_IsReady(Self* c_this);
	[LinkName("QStorageInfo_IsValid")]
	public static extern bool QStorageInfo_IsValid(Self* c_this);
	[LinkName("QStorageInfo_Refresh")]
	public static extern void QStorageInfo_Refresh(Self* c_this);
	[LinkName("QStorageInfo_MountedVolumes")]
	public static extern QStorageInfo[] QStorageInfo_MountedVolumes();
	[LinkName("QStorageInfo_Root")]
	public static extern QStorageInfo QStorageInfo_Root();
}