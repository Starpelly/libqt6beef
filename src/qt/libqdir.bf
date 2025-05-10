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
public class QDir
{
	protected void* nativePtr;
	
	public this(void* param1)
	{
		this.nativePtr = CQt.QDir_new(param1);
	}
	
	public ~this()
	{
		CQt.QDir_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* param1)
	{
		CQt.QDir_OperatorAssign(this.nativePtr, param1);
	}
	
	public void Swap(void* other)
	{
		CQt.QDir_Swap(this.nativePtr, other);
	}
	
	public void SetPath(libqt_string path)
	{
		CQt.QDir_SetPath(this.nativePtr, path);
	}
	
	public libqt_string Path()
	{
		return CQt.QDir_Path(this.nativePtr);
	}
	
	public libqt_string AbsolutePath()
	{
		return CQt.QDir_AbsolutePath(this.nativePtr);
	}
	
	public libqt_string CanonicalPath()
	{
		return CQt.QDir_CanonicalPath(this.nativePtr);
	}
	
	public static void SetSearchPaths(libqt_string prefix, libqt_string[] searchPaths)
	{
		CQt.QDir_SetSearchPaths(prefix, searchPaths);
	}
	
	public static void AddSearchPath(libqt_string prefix, libqt_string path)
	{
		CQt.QDir_AddSearchPath(prefix, path);
	}
	
	public static libqt_string[] SearchPaths(libqt_string prefix)
	{
		return CQt.QDir_SearchPaths(prefix);
	}
	
	public libqt_string DirName()
	{
		return CQt.QDir_DirName(this.nativePtr);
	}
	
	public libqt_string FilePath(libqt_string fileName)
	{
		return CQt.QDir_FilePath(this.nativePtr, fileName);
	}
	
	public libqt_string AbsoluteFilePath(libqt_string fileName)
	{
		return CQt.QDir_AbsoluteFilePath(this.nativePtr, fileName);
	}
	
	public libqt_string RelativeFilePath(libqt_string fileName)
	{
		return CQt.QDir_RelativeFilePath(this.nativePtr, fileName);
	}
	
	public static libqt_string ToNativeSeparators(libqt_string pathName)
	{
		return CQt.QDir_ToNativeSeparators(pathName);
	}
	
	public static libqt_string FromNativeSeparators(libqt_string pathName)
	{
		return CQt.QDir_FromNativeSeparators(pathName);
	}
	
	public bool Cd(libqt_string dirName)
	{
		return CQt.QDir_Cd(this.nativePtr, dirName);
	}
	
	public bool CdUp()
	{
		return CQt.QDir_CdUp(this.nativePtr);
	}
	
	public libqt_string[] NameFilters()
	{
		return CQt.QDir_NameFilters(this.nativePtr);
	}
	
	public void SetNameFilters(libqt_string[] nameFilters)
	{
		CQt.QDir_SetNameFilters(this.nativePtr, nameFilters);
	}
	
	public int64 Filter()
	{
		return CQt.QDir_Filter(this.nativePtr);
	}
	
	public void SetFilter(int64 filter)
	{
		CQt.QDir_SetFilter(this.nativePtr, filter);
	}
	
	public int64 Sorting()
	{
		return CQt.QDir_Sorting(this.nativePtr);
	}
	
	public void SetSorting(int64 sort)
	{
		CQt.QDir_SetSorting(this.nativePtr, sort);
	}
	
	public uint32 Count()
	{
		return CQt.QDir_Count(this.nativePtr);
	}
	
	public bool IsEmpty()
	{
		return CQt.QDir_IsEmpty(this.nativePtr);
	}
	
	public libqt_string OperatorSubscript(int32 param1)
	{
		return CQt.QDir_OperatorSubscript(this.nativePtr, param1);
	}
	
	public static libqt_string[] NameFiltersFromString(libqt_string nameFilter)
	{
		return CQt.QDir_NameFiltersFromString(nameFilter);
	}
	
	public libqt_string[] EntryList()
	{
		return CQt.QDir_EntryList(this.nativePtr);
	}
	
	public libqt_string[] EntryListWithNameFilters(libqt_string[] nameFilters)
	{
		return CQt.QDir_EntryListWithNameFilters(this.nativePtr, nameFilters);
	}
	
	public void[] EntryInfoList()
	{
		return CQt.QDir_EntryInfoList(this.nativePtr);
	}
	
	public void[] EntryInfoListWithNameFilters(libqt_string[] nameFilters)
	{
		return CQt.QDir_EntryInfoListWithNameFilters(this.nativePtr, nameFilters);
	}
	
	public bool Mkdir(libqt_string dirName)
	{
		return CQt.QDir_Mkdir(this.nativePtr, dirName);
	}
	
	public bool Mkdir2(libqt_string dirName, int64 permissions)
	{
		return CQt.QDir_Mkdir2(this.nativePtr, dirName, permissions);
	}
	
	public bool Rmdir(libqt_string dirName)
	{
		return CQt.QDir_Rmdir(this.nativePtr, dirName);
	}
	
	public bool Mkpath(libqt_string dirPath)
	{
		return CQt.QDir_Mkpath(this.nativePtr, dirPath);
	}
	
	public bool Rmpath(libqt_string dirPath)
	{
		return CQt.QDir_Rmpath(this.nativePtr, dirPath);
	}
	
	public bool RemoveRecursively()
	{
		return CQt.QDir_RemoveRecursively(this.nativePtr);
	}
	
	public bool IsReadable()
	{
		return CQt.QDir_IsReadable(this.nativePtr);
	}
	
	public bool Exists()
	{
		return CQt.QDir_Exists(this.nativePtr);
	}
	
	public bool IsRoot()
	{
		return CQt.QDir_IsRoot(this.nativePtr);
	}
	
	public static bool IsRelativePath(libqt_string path)
	{
		return CQt.QDir_IsRelativePath(path);
	}
	
	public static bool IsAbsolutePath(libqt_string path)
	{
		return CQt.QDir_IsAbsolutePath(path);
	}
	
	public bool IsRelative()
	{
		return CQt.QDir_IsRelative(this.nativePtr);
	}
	
	public bool IsAbsolute()
	{
		return CQt.QDir_IsAbsolute(this.nativePtr);
	}
	
	public bool MakeAbsolute()
	{
		return CQt.QDir_MakeAbsolute(this.nativePtr);
	}
	
	public bool OperatorEqual(void* dir)
	{
		return CQt.QDir_OperatorEqual(this.nativePtr, dir);
	}
	
	public bool OperatorNotEqual(void* dir)
	{
		return CQt.QDir_OperatorNotEqual(this.nativePtr, dir);
	}
	
	public bool Remove(libqt_string fileName)
	{
		return CQt.QDir_Remove(this.nativePtr, fileName);
	}
	
	public bool Rename(libqt_string oldName, libqt_string newName)
	{
		return CQt.QDir_Rename(this.nativePtr, oldName, newName);
	}
	
	public bool ExistsWithName(libqt_string name)
	{
		return CQt.QDir_ExistsWithName(this.nativePtr, name);
	}
	
	public static void[] Drives()
	{
		return CQt.QDir_Drives();
	}
	
	public static void ListSeparator()
	{
		CQt.QDir_ListSeparator();
	}
	
	public static void Separator()
	{
		CQt.QDir_Separator();
	}
	
	public static bool SetCurrent(libqt_string path)
	{
		return CQt.QDir_SetCurrent(path);
	}
	
	public static void Current()
	{
		CQt.QDir_Current();
	}
	
	public static libqt_string CurrentPath()
	{
		return CQt.QDir_CurrentPath();
	}
	
	public static void Home()
	{
		CQt.QDir_Home();
	}
	
	public static libqt_string HomePath()
	{
		return CQt.QDir_HomePath();
	}
	
	public static void Root()
	{
		CQt.QDir_Root();
	}
	
	public static libqt_string RootPath()
	{
		return CQt.QDir_RootPath();
	}
	
	public static void Temp()
	{
		CQt.QDir_Temp();
	}
	
	public static libqt_string TempPath()
	{
		return CQt.QDir_TempPath();
	}
	
	public static bool Match(libqt_string[] filters, libqt_string fileName)
	{
		return CQt.QDir_Match(filters, fileName);
	}
	
	public static bool Match2(libqt_string filter, libqt_string fileName)
	{
		return CQt.QDir_Match2(filter, fileName);
	}
	
	public static libqt_string CleanPath(libqt_string path)
	{
		return CQt.QDir_CleanPath(path);
	}
	
	public void Refresh()
	{
		CQt.QDir_Refresh(this.nativePtr);
	}
	
	public bool IsEmpty1(int64 filters)
	{
		return CQt.QDir_IsEmpty1(this.nativePtr, filters);
	}
	
	public libqt_string[] EntryList1(int64 filters)
	{
		return CQt.QDir_EntryList1(this.nativePtr, filters);
	}
	
	public libqt_string[] EntryList2(int64 filters, int64 sort)
	{
		return CQt.QDir_EntryList2(this.nativePtr, filters, sort);
	}
	
	public libqt_string[] EntryList22(libqt_string[] nameFilters, int64 filters)
	{
		return CQt.QDir_EntryList22(this.nativePtr, nameFilters, filters);
	}
	
	public libqt_string[] EntryList3(libqt_string[] nameFilters, int64 filters, int64 sort)
	{
		return CQt.QDir_EntryList3(this.nativePtr, nameFilters, filters, sort);
	}
	
	public void[] EntryInfoList1(int64 filters)
	{
		return CQt.QDir_EntryInfoList1(this.nativePtr, filters);
	}
	
	public void[] EntryInfoList2(int64 filters, int64 sort)
	{
		return CQt.QDir_EntryInfoList2(this.nativePtr, filters, sort);
	}
	
	public void[] EntryInfoList22(libqt_string[] nameFilters, int64 filters)
	{
		return CQt.QDir_EntryInfoList22(this.nativePtr, nameFilters, filters);
	}
	
	public void[] EntryInfoList3(libqt_string[] nameFilters, int64 filters, int64 sort)
	{
		return CQt.QDir_EntryInfoList3(this.nativePtr, nameFilters, filters, sort);
	}
	
}
extension CQt
{
	[LinkName("QDir_new")]
	public static extern void* QDir_new(void* param1);
	[LinkName("QDir_new2")]
	public static extern void* QDir_new2();
	[LinkName("QDir_new3")]
	public static extern void* QDir_new3(libqt_string path, libqt_string nameFilter);
	[LinkName("QDir_new4")]
	public static extern void* QDir_new4(libqt_string path);
	[LinkName("QDir_new5")]
	public static extern void* QDir_new5(libqt_string path, libqt_string nameFilter, int64 sort);
	[LinkName("QDir_new6")]
	public static extern void* QDir_new6(libqt_string path, libqt_string nameFilter, int64 sort, int64 filter);
	[LinkName("QDir_OperatorAssign")]
	public static extern void QDir_OperatorAssign(void* c_this, void* param1);
	[LinkName("QDir_Swap")]
	public static extern void QDir_Swap(void* c_this, void* other);
	[LinkName("QDir_SetPath")]
	public static extern void QDir_SetPath(void* c_this, libqt_string path);
	[LinkName("QDir_Path")]
	public static extern libqt_string QDir_Path(void* c_this);
	[LinkName("QDir_AbsolutePath")]
	public static extern libqt_string QDir_AbsolutePath(void* c_this);
	[LinkName("QDir_CanonicalPath")]
	public static extern libqt_string QDir_CanonicalPath(void* c_this);
	[LinkName("QDir_SetSearchPaths")]
	public static extern void QDir_SetSearchPaths(libqt_string prefix, libqt_string[] searchPaths);
	[LinkName("QDir_AddSearchPath")]
	public static extern void QDir_AddSearchPath(libqt_string prefix, libqt_string path);
	[LinkName("QDir_SearchPaths")]
	public static extern libqt_string[] QDir_SearchPaths(libqt_string prefix);
	[LinkName("QDir_DirName")]
	public static extern libqt_string QDir_DirName(void* c_this);
	[LinkName("QDir_FilePath")]
	public static extern libqt_string QDir_FilePath(void* c_this, libqt_string fileName);
	[LinkName("QDir_AbsoluteFilePath")]
	public static extern libqt_string QDir_AbsoluteFilePath(void* c_this, libqt_string fileName);
	[LinkName("QDir_RelativeFilePath")]
	public static extern libqt_string QDir_RelativeFilePath(void* c_this, libqt_string fileName);
	[LinkName("QDir_ToNativeSeparators")]
	public static extern libqt_string QDir_ToNativeSeparators(libqt_string pathName);
	[LinkName("QDir_FromNativeSeparators")]
	public static extern libqt_string QDir_FromNativeSeparators(libqt_string pathName);
	[LinkName("QDir_Cd")]
	public static extern bool QDir_Cd(void* c_this, libqt_string dirName);
	[LinkName("QDir_CdUp")]
	public static extern bool QDir_CdUp(void* c_this);
	[LinkName("QDir_NameFilters")]
	public static extern libqt_string[] QDir_NameFilters(void* c_this);
	[LinkName("QDir_SetNameFilters")]
	public static extern void QDir_SetNameFilters(void* c_this, libqt_string[] nameFilters);
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
	public static extern libqt_string QDir_OperatorSubscript(void* c_this, int32 param1);
	[LinkName("QDir_NameFiltersFromString")]
	public static extern libqt_string[] QDir_NameFiltersFromString(libqt_string nameFilter);
	[LinkName("QDir_EntryList")]
	public static extern libqt_string[] QDir_EntryList(void* c_this);
	[LinkName("QDir_EntryListWithNameFilters")]
	public static extern libqt_string[] QDir_EntryListWithNameFilters(void* c_this, libqt_string[] nameFilters);
	[LinkName("QDir_EntryInfoList")]
	public static extern void[] QDir_EntryInfoList(void* c_this);
	[LinkName("QDir_EntryInfoListWithNameFilters")]
	public static extern void[] QDir_EntryInfoListWithNameFilters(void* c_this, libqt_string[] nameFilters);
	[LinkName("QDir_Mkdir")]
	public static extern bool QDir_Mkdir(void* c_this, libqt_string dirName);
	[LinkName("QDir_Mkdir2")]
	public static extern bool QDir_Mkdir2(void* c_this, libqt_string dirName, int64 permissions);
	[LinkName("QDir_Rmdir")]
	public static extern bool QDir_Rmdir(void* c_this, libqt_string dirName);
	[LinkName("QDir_Mkpath")]
	public static extern bool QDir_Mkpath(void* c_this, libqt_string dirPath);
	[LinkName("QDir_Rmpath")]
	public static extern bool QDir_Rmpath(void* c_this, libqt_string dirPath);
	[LinkName("QDir_RemoveRecursively")]
	public static extern bool QDir_RemoveRecursively(void* c_this);
	[LinkName("QDir_IsReadable")]
	public static extern bool QDir_IsReadable(void* c_this);
	[LinkName("QDir_Exists")]
	public static extern bool QDir_Exists(void* c_this);
	[LinkName("QDir_IsRoot")]
	public static extern bool QDir_IsRoot(void* c_this);
	[LinkName("QDir_IsRelativePath")]
	public static extern bool QDir_IsRelativePath(libqt_string path);
	[LinkName("QDir_IsAbsolutePath")]
	public static extern bool QDir_IsAbsolutePath(libqt_string path);
	[LinkName("QDir_IsRelative")]
	public static extern bool QDir_IsRelative(void* c_this);
	[LinkName("QDir_IsAbsolute")]
	public static extern bool QDir_IsAbsolute(void* c_this);
	[LinkName("QDir_MakeAbsolute")]
	public static extern bool QDir_MakeAbsolute(void* c_this);
	[LinkName("QDir_OperatorEqual")]
	public static extern bool QDir_OperatorEqual(void* c_this, void* dir);
	[LinkName("QDir_OperatorNotEqual")]
	public static extern bool QDir_OperatorNotEqual(void* c_this, void* dir);
	[LinkName("QDir_Remove")]
	public static extern bool QDir_Remove(void* c_this, libqt_string fileName);
	[LinkName("QDir_Rename")]
	public static extern bool QDir_Rename(void* c_this, libqt_string oldName, libqt_string newName);
	[LinkName("QDir_ExistsWithName")]
	public static extern bool QDir_ExistsWithName(void* c_this, libqt_string name);
	[LinkName("QDir_Drives")]
	public static extern void[] QDir_Drives();
	[LinkName("QDir_ListSeparator")]
	public static extern void QDir_ListSeparator();
	[LinkName("QDir_Separator")]
	public static extern void QDir_Separator();
	[LinkName("QDir_SetCurrent")]
	public static extern bool QDir_SetCurrent(libqt_string path);
	[LinkName("QDir_Current")]
	public static extern void QDir_Current();
	[LinkName("QDir_CurrentPath")]
	public static extern libqt_string QDir_CurrentPath();
	[LinkName("QDir_Home")]
	public static extern void QDir_Home();
	[LinkName("QDir_HomePath")]
	public static extern libqt_string QDir_HomePath();
	[LinkName("QDir_Root")]
	public static extern void QDir_Root();
	[LinkName("QDir_RootPath")]
	public static extern libqt_string QDir_RootPath();
	[LinkName("QDir_Temp")]
	public static extern void QDir_Temp();
	[LinkName("QDir_TempPath")]
	public static extern libqt_string QDir_TempPath();
	[LinkName("QDir_Match")]
	public static extern bool QDir_Match(libqt_string[] filters, libqt_string fileName);
	[LinkName("QDir_Match2")]
	public static extern bool QDir_Match2(libqt_string filter, libqt_string fileName);
	[LinkName("QDir_CleanPath")]
	public static extern libqt_string QDir_CleanPath(libqt_string path);
	[LinkName("QDir_Refresh")]
	public static extern void QDir_Refresh(void* c_this);
	[LinkName("QDir_IsEmpty1")]
	public static extern bool QDir_IsEmpty1(void* c_this, int64 filters);
	[LinkName("QDir_EntryList1")]
	public static extern libqt_string[] QDir_EntryList1(void* c_this, int64 filters);
	[LinkName("QDir_EntryList2")]
	public static extern libqt_string[] QDir_EntryList2(void* c_this, int64 filters, int64 sort);
	[LinkName("QDir_EntryList22")]
	public static extern libqt_string[] QDir_EntryList22(void* c_this, libqt_string[] nameFilters, int64 filters);
	[LinkName("QDir_EntryList3")]
	public static extern libqt_string[] QDir_EntryList3(void* c_this, libqt_string[] nameFilters, int64 filters, int64 sort);
	[LinkName("QDir_EntryInfoList1")]
	public static extern void[] QDir_EntryInfoList1(void* c_this, int64 filters);
	[LinkName("QDir_EntryInfoList2")]
	public static extern void[] QDir_EntryInfoList2(void* c_this, int64 filters, int64 sort);
	[LinkName("QDir_EntryInfoList22")]
	public static extern void[] QDir_EntryInfoList22(void* c_this, libqt_string[] nameFilters, int64 filters);
	[LinkName("QDir_EntryInfoList3")]
	public static extern void[] QDir_EntryInfoList3(void* c_this, libqt_string[] nameFilters, int64 filters, int64 sort);
	/// Delete this object from C++ memory
	[LinkName("QDir_Delete")]
	public static extern void QDir_Delete(void* self);
}