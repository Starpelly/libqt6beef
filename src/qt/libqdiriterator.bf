using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QDirIterator__IteratorFlag
{
	NoIteratorFlags = 0,
	FollowSymlinks = 1,
	Subdirectories = 2,
}
public interface IQDirIterator
{
	void* NativePtr { get; }
}
public class QDirIterator : IQDirIterator
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQDir dir)
	{
		this.nativePtr = CQt.QDirIterator_new((dir == default) ? default : (void*)dir.NativePtr);
	}
	
	public ~this()
	{
		CQt.QDirIterator_Delete(this.nativePtr);
	}
	
	public libqt_string Next()
	{
		return CQt.QDirIterator_Next(this.nativePtr);
	}
	
	public void NextFileInfo()
	{
		CQt.QDirIterator_NextFileInfo(this.nativePtr);
	}
	
	public bool HasNext()
	{
		return CQt.QDirIterator_HasNext(this.nativePtr);
	}
	
	public libqt_string FileName()
	{
		return CQt.QDirIterator_FileName(this.nativePtr);
	}
	
	public libqt_string FilePath()
	{
		return CQt.QDirIterator_FilePath(this.nativePtr);
	}
	
	public void FileInfo()
	{
		CQt.QDirIterator_FileInfo(this.nativePtr);
	}
	
	public libqt_string Path()
	{
		return CQt.QDirIterator_Path(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QDirIterator_new")]
	public static extern void* QDirIterator_new(void* dir);
	[LinkName("QDirIterator_new2")]
	public static extern void* QDirIterator_new2(libqt_string path);
	[LinkName("QDirIterator_new3")]
	public static extern void* QDirIterator_new3(libqt_string path, int64 filter);
	[LinkName("QDirIterator_new4")]
	public static extern void* QDirIterator_new4(libqt_string path, libqt_string[] nameFilters);
	[LinkName("QDirIterator_new5")]
	public static extern void* QDirIterator_new5(void* dir, int64 flags);
	[LinkName("QDirIterator_new6")]
	public static extern void* QDirIterator_new6(libqt_string path, int64 flags);
	[LinkName("QDirIterator_new7")]
	public static extern void* QDirIterator_new7(libqt_string path, int64 filter, int64 flags);
	[LinkName("QDirIterator_new8")]
	public static extern void* QDirIterator_new8(libqt_string path, libqt_string[] nameFilters, int64 filters);
	[LinkName("QDirIterator_new9")]
	public static extern void* QDirIterator_new9(libqt_string path, libqt_string[] nameFilters, int64 filters, int64 flags);
	[LinkName("QDirIterator_Next")]
	public static extern libqt_string QDirIterator_Next(void* c_this);
	[LinkName("QDirIterator_NextFileInfo")]
	public static extern void QDirIterator_NextFileInfo(void* c_this);
	[LinkName("QDirIterator_HasNext")]
	public static extern bool QDirIterator_HasNext(void* c_this);
	[LinkName("QDirIterator_FileName")]
	public static extern libqt_string QDirIterator_FileName(void* c_this);
	[LinkName("QDirIterator_FilePath")]
	public static extern libqt_string QDirIterator_FilePath(void* c_this);
	[LinkName("QDirIterator_FileInfo")]
	public static extern void QDirIterator_FileInfo(void* c_this);
	[LinkName("QDirIterator_Path")]
	public static extern libqt_string QDirIterator_Path(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QDirIterator_Delete")]
	public static extern void QDirIterator_Delete(void* self);
}