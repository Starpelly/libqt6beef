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
public struct QDirIterator
{
	[LinkName("QDirIterator_new")]
	public static extern QDirIterator* QDirIterator_new(QDir* dir);
	[LinkName("QDirIterator_new2")]
	public static extern QDirIterator* QDirIterator_new2(libqt_string path);
	[LinkName("QDirIterator_new3")]
	public static extern QDirIterator* QDirIterator_new3(libqt_string path, int64 filter);
	[LinkName("QDirIterator_new4")]
	public static extern QDirIterator* QDirIterator_new4(libqt_string path, libqt_string[] nameFilters);
	[LinkName("QDirIterator_new5")]
	public static extern QDirIterator* QDirIterator_new5(QDir* dir, int64 flags);
	[LinkName("QDirIterator_new6")]
	public static extern QDirIterator* QDirIterator_new6(libqt_string path, int64 flags);
	[LinkName("QDirIterator_new7")]
	public static extern QDirIterator* QDirIterator_new7(libqt_string path, int64 filter, int64 flags);
	[LinkName("QDirIterator_new8")]
	public static extern QDirIterator* QDirIterator_new8(libqt_string path, libqt_string[] nameFilters, int64 filters);
	[LinkName("QDirIterator_new9")]
	public static extern QDirIterator* QDirIterator_new9(libqt_string path, libqt_string[] nameFilters, int64 filters, int64 flags);
	[LinkName("QDirIterator_Next")]
	public static extern libqt_string QDirIterator_Next(Self* c_this);
	[LinkName("QDirIterator_NextFileInfo")]
	public static extern QFileInfo QDirIterator_NextFileInfo(Self* c_this);
	[LinkName("QDirIterator_HasNext")]
	public static extern bool QDirIterator_HasNext(Self* c_this);
	[LinkName("QDirIterator_FileName")]
	public static extern libqt_string QDirIterator_FileName(Self* c_this);
	[LinkName("QDirIterator_FilePath")]
	public static extern libqt_string QDirIterator_FilePath(Self* c_this);
	[LinkName("QDirIterator_FileInfo")]
	public static extern QFileInfo QDirIterator_FileInfo(Self* c_this);
	[LinkName("QDirIterator_Path")]
	public static extern libqt_string QDirIterator_Path(Self* c_this);
}