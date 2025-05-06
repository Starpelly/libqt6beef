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
	public static extern void* QDir_new(QDir param1);
	[LinkName("QDir_new2")]
	public static extern void* QDir_new2();
	[LinkName("QDir_new3")]
	public static extern void* QDir_new3(char8[] path, char8[] nameFilter);
	[LinkName("QDir_new4")]
	public static extern void* QDir_new4(char8[] path);
	[LinkName("QDir_new5")]
	public static extern void* QDir_new5(char8[] path, char8[] nameFilter, int64 sort);
	[LinkName("QDir_new6")]
	public static extern void* QDir_new6(char8[] path, char8[] nameFilter, int64 sort, int64 filter);
	[LinkName("QDir_OperatorAssign")]
	public static extern void QDir_OperatorAssign(void* c_this, QDir param1);
	[LinkName("QDir_Swap")]
	public static extern void QDir_Swap(void* c_this, QDir other);
	[LinkName("QDir_SetPath")]
	public static extern void QDir_SetPath(void* c_this, char8[] path);
	[LinkName("QDir_Path")]
	public static extern char8[] QDir_Path(void* c_this);
	[LinkName("QDir_AbsolutePath")]
	public static extern char8[] QDir_AbsolutePath(void* c_this);
	[LinkName("QDir_CanonicalPath")]
	public static extern char8[] QDir_CanonicalPath(void* c_this);
	[LinkName("QDir_SetSearchPaths")]
	public static extern void QDir_SetSearchPaths(char8[] prefix, char8[][] searchPaths);
	[LinkName("QDir_AddSearchPath")]
	public static extern void QDir_AddSearchPath(char8[] prefix, char8[] path);
	[LinkName("QDir_SearchPaths")]
	public static extern char8[][] QDir_SearchPaths(char8[] prefix);
	[LinkName("QDir_DirName")]
	public static extern char8[] QDir_DirName(void* c_this);
	[LinkName("QDir_FilePath")]
	public static extern char8[] QDir_FilePath(void* c_this, char8[] fileName);
	[LinkName("QDir_AbsoluteFilePath")]
	public static extern char8[] QDir_AbsoluteFilePath(void* c_this, char8[] fileName);
	[LinkName("QDir_RelativeFilePath")]
	public static extern char8[] QDir_RelativeFilePath(void* c_this, char8[] fileName);
	[LinkName("QDir_ToNativeSeparators")]
	public static extern char8[] QDir_ToNativeSeparators(char8[] pathName);
	[LinkName("QDir_FromNativeSeparators")]
	public static extern char8[] QDir_FromNativeSeparators(char8[] pathName);
	[LinkName("QDir_Cd")]
	public static extern bool QDir_Cd(void* c_this, char8[] dirName);
	[LinkName("QDir_CdUp")]
	public static extern bool QDir_CdUp(void* c_this);
	[LinkName("QDir_NameFilters")]
	public static extern char8[][] QDir_NameFilters(void* c_this);
	[LinkName("QDir_SetNameFilters")]
	public static extern void QDir_SetNameFilters(void* c_this, char8[][] nameFilters);
	[LinkName("QDir_Filter")]
	public static extern int64 QDir_Filter(void* c_this);
	[LinkName("QDir_SetFilter")]
	public static extern void QDir_SetFilter(void* c_this, int64 filter);
	[LinkName("QDir_Sorting")]
	public static extern int64 QDir_Sorting(void* c_this);
	[LinkName("QDir_SetSorting")]
	public static extern void QDir_SetSorting(void* c_this, int64 sort);
	[LinkName("QDir_Count")]
	public static extern uint32 QDir_Count(void* c_this);
	[LinkName("QDir_IsEmpty")]
	public static extern bool QDir_IsEmpty(void* c_this);
	[LinkName("QDir_OperatorSubscript")]
	public static extern char8[] QDir_OperatorSubscript(void* c_this, int32 param1);
	[LinkName("QDir_NameFiltersFromString")]
	public static extern char8[][] QDir_NameFiltersFromString(char8[] nameFilter);
	[LinkName("QDir_EntryList")]
	public static extern char8[][] QDir_EntryList(void* c_this);
	[LinkName("QDir_EntryListWithNameFilters")]
	public static extern char8[][] QDir_EntryListWithNameFilters(void* c_this, char8[][] nameFilters);
	[LinkName("QDir_EntryInfoList")]
	public static extern QFileInfo[] QDir_EntryInfoList(void* c_this);
	[LinkName("QDir_EntryInfoListWithNameFilters")]
	public static extern QFileInfo[] QDir_EntryInfoListWithNameFilters(void* c_this, char8[][] nameFilters);
	[LinkName("QDir_Mkdir")]
	public static extern bool QDir_Mkdir(void* c_this, char8[] dirName);
	[LinkName("QDir_Mkdir2")]
	public static extern bool QDir_Mkdir2(void* c_this, char8[] dirName, int64 permissions);
	[LinkName("QDir_Rmdir")]
	public static extern bool QDir_Rmdir(void* c_this, char8[] dirName);
	[LinkName("QDir_Mkpath")]
	public static extern bool QDir_Mkpath(void* c_this, char8[] dirPath);
	[LinkName("QDir_Rmpath")]
	public static extern bool QDir_Rmpath(void* c_this, char8[] dirPath);
	[LinkName("QDir_RemoveRecursively")]
	public static extern bool QDir_RemoveRecursively(void* c_this);
	[LinkName("QDir_IsReadable")]
	public static extern bool QDir_IsReadable(void* c_this);
	[LinkName("QDir_Exists")]
	public static extern bool QDir_Exists(void* c_this);
	[LinkName("QDir_IsRoot")]
	public static extern bool QDir_IsRoot(void* c_this);
	[LinkName("QDir_IsRelativePath")]
	public static extern bool QDir_IsRelativePath(char8[] path);
	[LinkName("QDir_IsAbsolutePath")]
	public static extern bool QDir_IsAbsolutePath(char8[] path);
	[LinkName("QDir_IsRelative")]
	public static extern bool QDir_IsRelative(void* c_this);
	[LinkName("QDir_IsAbsolute")]
	public static extern bool QDir_IsAbsolute(void* c_this);
	[LinkName("QDir_MakeAbsolute")]
	public static extern bool QDir_MakeAbsolute(void* c_this);
	[LinkName("QDir_OperatorEqual")]
	public static extern bool QDir_OperatorEqual(void* c_this, QDir dir);
	[LinkName("QDir_OperatorNotEqual")]
	public static extern bool QDir_OperatorNotEqual(void* c_this, QDir dir);
	[LinkName("QDir_Remove")]
	public static extern bool QDir_Remove(void* c_this, char8[] fileName);
	[LinkName("QDir_Rename")]
	public static extern bool QDir_Rename(void* c_this, char8[] oldName, char8[] newName);
	[LinkName("QDir_ExistsWithName")]
	public static extern bool QDir_ExistsWithName(void* c_this, char8[] name);
	[LinkName("QDir_Drives")]
	public static extern QFileInfo[] QDir_Drives();
	[LinkName("QDir_ListSeparator")]
	public static extern QChar QDir_ListSeparator();
	[LinkName("QDir_Separator")]
	public static extern QChar QDir_Separator();
	[LinkName("QDir_SetCurrent")]
	public static extern bool QDir_SetCurrent(char8[] path);
	[LinkName("QDir_Current")]
	public static extern QDir QDir_Current();
	[LinkName("QDir_CurrentPath")]
	public static extern char8[] QDir_CurrentPath();
	[LinkName("QDir_Home")]
	public static extern QDir QDir_Home();
	[LinkName("QDir_HomePath")]
	public static extern char8[] QDir_HomePath();
	[LinkName("QDir_Root")]
	public static extern QDir QDir_Root();
	[LinkName("QDir_RootPath")]
	public static extern char8[] QDir_RootPath();
	[LinkName("QDir_Temp")]
	public static extern QDir QDir_Temp();
	[LinkName("QDir_TempPath")]
	public static extern char8[] QDir_TempPath();
	[LinkName("QDir_Match")]
	public static extern bool QDir_Match(char8[][] filters, char8[] fileName);
	[LinkName("QDir_Match2")]
	public static extern bool QDir_Match2(char8[] filter, char8[] fileName);
	[LinkName("QDir_CleanPath")]
	public static extern char8[] QDir_CleanPath(char8[] path);
	[LinkName("QDir_Refresh")]
	public static extern void QDir_Refresh(void* c_this);
	[LinkName("QDir_IsEmpty1")]
	public static extern bool QDir_IsEmpty1(void* c_this, int64 filters);
	[LinkName("QDir_EntryList1")]
	public static extern char8[][] QDir_EntryList1(void* c_this, int64 filters);
	[LinkName("QDir_EntryList2")]
	public static extern char8[][] QDir_EntryList2(void* c_this, int64 filters, int64 sort);
	[LinkName("QDir_EntryList22")]
	public static extern char8[][] QDir_EntryList22(void* c_this, char8[][] nameFilters, int64 filters);
	[LinkName("QDir_EntryList3")]
	public static extern char8[][] QDir_EntryList3(void* c_this, char8[][] nameFilters, int64 filters, int64 sort);
	[LinkName("QDir_EntryInfoList1")]
	public static extern QFileInfo[] QDir_EntryInfoList1(void* c_this, int64 filters);
	[LinkName("QDir_EntryInfoList2")]
	public static extern QFileInfo[] QDir_EntryInfoList2(void* c_this, int64 filters, int64 sort);
	[LinkName("QDir_EntryInfoList22")]
	public static extern QFileInfo[] QDir_EntryInfoList22(void* c_this, char8[][] nameFilters, int64 filters);
	[LinkName("QDir_EntryInfoList3")]
	public static extern QFileInfo[] QDir_EntryInfoList3(void* c_this, char8[][] nameFilters, int64 filters, int64 sort);
}