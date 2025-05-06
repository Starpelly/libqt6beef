using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QDir__Filter
{
	Dirs = 1,
	Files = 2,
	Drives = 4,
	NoSymLinks = 8,
	AllEntries = 7,
	TypeMask = 15,
	Readable = 16,
	Writable = 32,
	Executable = 64,
	PermissionMask = 112,
	Modified = 128,
	Hidden = 256,
	System = 512,
	AccessMask = 1008,
	AllDirs = 1024,
	CaseSensitive = 2048,
	NoDot = 8192,
	NoDotDot = 16384,
	NoDotAndDotDot = 24576,
	NoFilter = -1,
}
[AllowDuplicates]
public enum QDir__SortFlag
{
	Name = 0,
	Time = 1,
	Size = 2,
	Unsorted = 3,
	SortByMask = 3,
	DirsFirst = 4,
	Reversed = 8,
	IgnoreCase = 16,
	DirsLast = 32,
	LocaleAware = 64,
	Type = 128,
	NoSort = -1,
}
public struct QDir
{
	[LinkName("QDir_new")]
	public static extern QDir* QDir_new(QDir* param1);
	[LinkName("QDir_new2")]
	public static extern QDir* QDir_new2();
	[LinkName("QDir_new3")]
	public static extern QDir* QDir_new3(libqt_string path, libqt_string nameFilter);
	[LinkName("QDir_new4")]
	public static extern QDir* QDir_new4(libqt_string path);
	[LinkName("QDir_new5")]
	public static extern QDir* QDir_new5(libqt_string path, libqt_string nameFilter, int64 sort);
	[LinkName("QDir_new6")]
	public static extern QDir* QDir_new6(libqt_string path, libqt_string nameFilter, int64 sort, int64 filter);
	[LinkName("QDir_OperatorAssign")]
	public static extern void QDir_OperatorAssign(Self* c_this, QDir* param1);
	[LinkName("QDir_Swap")]
	public static extern void QDir_Swap(Self* c_this, QDir* other);
	[LinkName("QDir_SetPath")]
	public static extern void QDir_SetPath(Self* c_this, libqt_string path);
	[LinkName("QDir_Path")]
	public static extern libqt_string QDir_Path(Self* c_this);
	[LinkName("QDir_AbsolutePath")]
	public static extern libqt_string QDir_AbsolutePath(Self* c_this);
	[LinkName("QDir_CanonicalPath")]
	public static extern libqt_string QDir_CanonicalPath(Self* c_this);
	[LinkName("QDir_SetSearchPaths")]
	public static extern void QDir_SetSearchPaths(libqt_string prefix, libqt_string[] searchPaths);
	[LinkName("QDir_AddSearchPath")]
	public static extern void QDir_AddSearchPath(libqt_string prefix, libqt_string path);
	[LinkName("QDir_SearchPaths")]
	public static extern libqt_string[] QDir_SearchPaths(libqt_string prefix);
	[LinkName("QDir_DirName")]
	public static extern libqt_string QDir_DirName(Self* c_this);
	[LinkName("QDir_FilePath")]
	public static extern libqt_string QDir_FilePath(Self* c_this, libqt_string fileName);
	[LinkName("QDir_AbsoluteFilePath")]
	public static extern libqt_string QDir_AbsoluteFilePath(Self* c_this, libqt_string fileName);
	[LinkName("QDir_RelativeFilePath")]
	public static extern libqt_string QDir_RelativeFilePath(Self* c_this, libqt_string fileName);
	[LinkName("QDir_ToNativeSeparators")]
	public static extern libqt_string QDir_ToNativeSeparators(libqt_string pathName);
	[LinkName("QDir_FromNativeSeparators")]
	public static extern libqt_string QDir_FromNativeSeparators(libqt_string pathName);
	[LinkName("QDir_Cd")]
	public static extern bool QDir_Cd(Self* c_this, libqt_string dirName);
	[LinkName("QDir_CdUp")]
	public static extern bool QDir_CdUp(Self* c_this);
	[LinkName("QDir_NameFilters")]
	public static extern libqt_string[] QDir_NameFilters(Self* c_this);
	[LinkName("QDir_SetNameFilters")]
	public static extern void QDir_SetNameFilters(Self* c_this, libqt_string[] nameFilters);
	[LinkName("QDir_Filter")]
	public static extern int64 QDir_Filter(Self* c_this);
	[LinkName("QDir_SetFilter")]
	public static extern void QDir_SetFilter(Self* c_this, int64 filter);
	[LinkName("QDir_Sorting")]
	public static extern int64 QDir_Sorting(Self* c_this);
	[LinkName("QDir_SetSorting")]
	public static extern void QDir_SetSorting(Self* c_this, int64 sort);
	[LinkName("QDir_Count")]
	public static extern uint32 QDir_Count(Self* c_this);
	[LinkName("QDir_IsEmpty")]
	public static extern bool QDir_IsEmpty(Self* c_this);
	[LinkName("QDir_OperatorSubscript")]
	public static extern libqt_string QDir_OperatorSubscript(Self* c_this, int32 param1);
	[LinkName("QDir_NameFiltersFromString")]
	public static extern libqt_string[] QDir_NameFiltersFromString(libqt_string nameFilter);
	[LinkName("QDir_EntryList")]
	public static extern libqt_string[] QDir_EntryList(Self* c_this);
	[LinkName("QDir_EntryListWithNameFilters")]
	public static extern libqt_string[] QDir_EntryListWithNameFilters(Self* c_this, libqt_string[] nameFilters);
	[LinkName("QDir_EntryInfoList")]
	public static extern QFileInfo[] QDir_EntryInfoList(Self* c_this);
	[LinkName("QDir_EntryInfoListWithNameFilters")]
	public static extern QFileInfo[] QDir_EntryInfoListWithNameFilters(Self* c_this, libqt_string[] nameFilters);
	[LinkName("QDir_Mkdir")]
	public static extern bool QDir_Mkdir(Self* c_this, libqt_string dirName);
	[LinkName("QDir_Mkdir2")]
	public static extern bool QDir_Mkdir2(Self* c_this, libqt_string dirName, int64 permissions);
	[LinkName("QDir_Rmdir")]
	public static extern bool QDir_Rmdir(Self* c_this, libqt_string dirName);
	[LinkName("QDir_Mkpath")]
	public static extern bool QDir_Mkpath(Self* c_this, libqt_string dirPath);
	[LinkName("QDir_Rmpath")]
	public static extern bool QDir_Rmpath(Self* c_this, libqt_string dirPath);
	[LinkName("QDir_RemoveRecursively")]
	public static extern bool QDir_RemoveRecursively(Self* c_this);
	[LinkName("QDir_IsReadable")]
	public static extern bool QDir_IsReadable(Self* c_this);
	[LinkName("QDir_Exists")]
	public static extern bool QDir_Exists(Self* c_this);
	[LinkName("QDir_IsRoot")]
	public static extern bool QDir_IsRoot(Self* c_this);
	[LinkName("QDir_IsRelativePath")]
	public static extern bool QDir_IsRelativePath(libqt_string path);
	[LinkName("QDir_IsAbsolutePath")]
	public static extern bool QDir_IsAbsolutePath(libqt_string path);
	[LinkName("QDir_IsRelative")]
	public static extern bool QDir_IsRelative(Self* c_this);
	[LinkName("QDir_IsAbsolute")]
	public static extern bool QDir_IsAbsolute(Self* c_this);
	[LinkName("QDir_MakeAbsolute")]
	public static extern bool QDir_MakeAbsolute(Self* c_this);
	[LinkName("QDir_OperatorEqual")]
	public static extern bool QDir_OperatorEqual(Self* c_this, QDir* dir);
	[LinkName("QDir_OperatorNotEqual")]
	public static extern bool QDir_OperatorNotEqual(Self* c_this, QDir* dir);
	[LinkName("QDir_Remove")]
	public static extern bool QDir_Remove(Self* c_this, libqt_string fileName);
	[LinkName("QDir_Rename")]
	public static extern bool QDir_Rename(Self* c_this, libqt_string oldName, libqt_string newName);
	[LinkName("QDir_ExistsWithName")]
	public static extern bool QDir_ExistsWithName(Self* c_this, libqt_string name);
	[LinkName("QDir_Drives")]
	public static extern QFileInfo[] QDir_Drives();
	[LinkName("QDir_ListSeparator")]
	public static extern QChar QDir_ListSeparator();
	[LinkName("QDir_Separator")]
	public static extern QChar QDir_Separator();
	[LinkName("QDir_SetCurrent")]
	public static extern bool QDir_SetCurrent(libqt_string path);
	[LinkName("QDir_Current")]
	public static extern QDir QDir_Current();
	[LinkName("QDir_CurrentPath")]
	public static extern libqt_string QDir_CurrentPath();
	[LinkName("QDir_Home")]
	public static extern QDir QDir_Home();
	[LinkName("QDir_HomePath")]
	public static extern libqt_string QDir_HomePath();
	[LinkName("QDir_Root")]
	public static extern QDir QDir_Root();
	[LinkName("QDir_RootPath")]
	public static extern libqt_string QDir_RootPath();
	[LinkName("QDir_Temp")]
	public static extern QDir QDir_Temp();
	[LinkName("QDir_TempPath")]
	public static extern libqt_string QDir_TempPath();
	[LinkName("QDir_Match")]
	public static extern bool QDir_Match(libqt_string[] filters, libqt_string fileName);
	[LinkName("QDir_Match2")]
	public static extern bool QDir_Match2(libqt_string filter, libqt_string fileName);
	[LinkName("QDir_CleanPath")]
	public static extern libqt_string QDir_CleanPath(libqt_string path);
	[LinkName("QDir_Refresh")]
	public static extern void QDir_Refresh(Self* c_this);
	[LinkName("QDir_IsEmpty1")]
	public static extern bool QDir_IsEmpty1(Self* c_this, int64 filters);
	[LinkName("QDir_EntryList1")]
	public static extern libqt_string[] QDir_EntryList1(Self* c_this, int64 filters);
	[LinkName("QDir_EntryList2")]
	public static extern libqt_string[] QDir_EntryList2(Self* c_this, int64 filters, int64 sort);
	[LinkName("QDir_EntryList22")]
	public static extern libqt_string[] QDir_EntryList22(Self* c_this, libqt_string[] nameFilters, int64 filters);
	[LinkName("QDir_EntryList3")]
	public static extern libqt_string[] QDir_EntryList3(Self* c_this, libqt_string[] nameFilters, int64 filters, int64 sort);
	[LinkName("QDir_EntryInfoList1")]
	public static extern QFileInfo[] QDir_EntryInfoList1(Self* c_this, int64 filters);
	[LinkName("QDir_EntryInfoList2")]
	public static extern QFileInfo[] QDir_EntryInfoList2(Self* c_this, int64 filters, int64 sort);
	[LinkName("QDir_EntryInfoList22")]
	public static extern QFileInfo[] QDir_EntryInfoList22(Self* c_this, libqt_string[] nameFilters, int64 filters);
	[LinkName("QDir_EntryInfoList3")]
	public static extern QFileInfo[] QDir_EntryInfoList3(Self* c_this, libqt_string[] nameFilters, int64 filters, int64 sort);
}