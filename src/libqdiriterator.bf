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
	public static extern void* QDirIterator_new(QDir dir);
	[LinkName("QDirIterator_new2")]
	public static extern void* QDirIterator_new2(char8[] path);
	[LinkName("QDirIterator_new3")]
	public static extern void* QDirIterator_new3(char8[] path, int64 filter);
	[LinkName("QDirIterator_new4")]
	public static extern void* QDirIterator_new4(char8[] path, char8[][] nameFilters);
	[LinkName("QDirIterator_new5")]
	public static extern void* QDirIterator_new5(QDir dir, int64 flags);
	[LinkName("QDirIterator_new6")]
	public static extern void* QDirIterator_new6(char8[] path, int64 flags);
	[LinkName("QDirIterator_new7")]
	public static extern void* QDirIterator_new7(char8[] path, int64 filter, int64 flags);
	[LinkName("QDirIterator_new8")]
	public static extern void* QDirIterator_new8(char8[] path, char8[][] nameFilters, int64 filters);
	[LinkName("QDirIterator_new9")]
	public static extern void* QDirIterator_new9(char8[] path, char8[][] nameFilters, int64 filters, int64 flags);
	[LinkName("QDirIterator_Next")]
	public static extern char8[] QDirIterator_Next(void* c_this);
	[LinkName("QDirIterator_NextFileInfo")]
	public static extern QFileInfo QDirIterator_NextFileInfo(void* c_this);
	[LinkName("QDirIterator_HasNext")]
	public static extern bool QDirIterator_HasNext(void* c_this);
	[LinkName("QDirIterator_FileName")]
	public static extern char8[] QDirIterator_FileName(void* c_this);
	[LinkName("QDirIterator_FilePath")]
	public static extern char8[] QDirIterator_FilePath(void* c_this);
	[LinkName("QDirIterator_FileInfo")]
	public static extern QFileInfo QDirIterator_FileInfo(void* c_this);
	[LinkName("QDirIterator_Path")]
	public static extern char8[] QDirIterator_Path(void* c_this);
}