using System;
using System.Interop;
namespace Qt;

public class QStorageInfo
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QStorageInfo_new();
	}
	
	public ~this()
	{
		CQt.QStorageInfo_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* other)
	{
		CQt.QStorageInfo_OperatorAssign(this.nativePtr, other);
	}
	
	public void Swap(void* other)
	{
		CQt.QStorageInfo_Swap(this.nativePtr, other);
	}
	
	public void SetPath(libqt_string path)
	{
		CQt.QStorageInfo_SetPath(this.nativePtr, path);
	}
	
	public libqt_string RootPath()
	{
		return CQt.QStorageInfo_RootPath(this.nativePtr);
	}
	
	public libqt_string Device()
	{
		return CQt.QStorageInfo_Device(this.nativePtr);
	}
	
	public libqt_string Subvolume()
	{
		return CQt.QStorageInfo_Subvolume(this.nativePtr);
	}
	
	public libqt_string FileSystemType()
	{
		return CQt.QStorageInfo_FileSystemType(this.nativePtr);
	}
	
	public libqt_string Name()
	{
		return CQt.QStorageInfo_Name(this.nativePtr);
	}
	
	public libqt_string DisplayName()
	{
		return CQt.QStorageInfo_DisplayName(this.nativePtr);
	}
	
	public int64 BytesTotal()
	{
		return CQt.QStorageInfo_BytesTotal(this.nativePtr);
	}
	
	public int64 BytesFree()
	{
		return CQt.QStorageInfo_BytesFree(this.nativePtr);
	}
	
	public int64 BytesAvailable()
	{
		return CQt.QStorageInfo_BytesAvailable(this.nativePtr);
	}
	
	public int32 BlockSize()
	{
		return CQt.QStorageInfo_BlockSize(this.nativePtr);
	}
	
	public bool IsRoot()
	{
		return CQt.QStorageInfo_IsRoot(this.nativePtr);
	}
	
	public bool IsReadOnly()
	{
		return CQt.QStorageInfo_IsReadOnly(this.nativePtr);
	}
	
	public bool IsReady()
	{
		return CQt.QStorageInfo_IsReady(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QStorageInfo_IsValid(this.nativePtr);
	}
	
	public void Refresh()
	{
		CQt.QStorageInfo_Refresh(this.nativePtr);
	}
	
	public static void[] MountedVolumes()
	{
		return CQt.QStorageInfo_MountedVolumes();
	}
	
	public static void Root()
	{
		CQt.QStorageInfo_Root();
	}
	
}
extension CQt
{
	[LinkName("QStorageInfo_new")]
	public static extern void* QStorageInfo_new();
	[LinkName("QStorageInfo_new2")]
	public static extern void* QStorageInfo_new2(libqt_string path);
	[LinkName("QStorageInfo_new3")]
	public static extern void* QStorageInfo_new3(void* dir);
	[LinkName("QStorageInfo_new4")]
	public static extern void* QStorageInfo_new4(void* other);
	[LinkName("QStorageInfo_OperatorAssign")]
	public static extern void QStorageInfo_OperatorAssign(void* c_this, void* other);
	[LinkName("QStorageInfo_Swap")]
	public static extern void QStorageInfo_Swap(void* c_this, void* other);
	[LinkName("QStorageInfo_SetPath")]
	public static extern void QStorageInfo_SetPath(void* c_this, libqt_string path);
	[LinkName("QStorageInfo_RootPath")]
	public static extern libqt_string QStorageInfo_RootPath(void* c_this);
	[LinkName("QStorageInfo_Device")]
	public static extern libqt_string QStorageInfo_Device(void* c_this);
	[LinkName("QStorageInfo_Subvolume")]
	public static extern libqt_string QStorageInfo_Subvolume(void* c_this);
	[LinkName("QStorageInfo_FileSystemType")]
	public static extern libqt_string QStorageInfo_FileSystemType(void* c_this);
	[LinkName("QStorageInfo_Name")]
	public static extern libqt_string QStorageInfo_Name(void* c_this);
	[LinkName("QStorageInfo_DisplayName")]
	public static extern libqt_string QStorageInfo_DisplayName(void* c_this);
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
	public static extern void[] QStorageInfo_MountedVolumes();
	[LinkName("QStorageInfo_Root")]
	public static extern void QStorageInfo_Root();
	/// Delete this object from C++ memory
	[LinkName("QStorageInfo_Delete")]
	public static extern void QStorageInfo_Delete(void* self);
}