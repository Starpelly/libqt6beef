using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QFileSystemModel__Roles
{
	FileIconRole = 1,
	FilePathRole = 257,
	FileNameRole = 258,
	FilePermissions = 259,
}
[AllowDuplicates]
public enum QFileSystemModel__Option
{
	DontWatchForChanges = 1,
	DontResolveSymlinks = 2,
	DontUseCustomDirectoryIcons = 4,
}
public struct QFileSystemModel
{
	[LinkName("QFileSystemModel_new")]
	public static extern void* QFileSystemModel_new();
	[LinkName("QFileSystemModel_new2")]
	public static extern void* QFileSystemModel_new2(QObject parent);
	[LinkName("QFileSystemModel_MetaObject")]
	public static extern QMetaObject QFileSystemModel_MetaObject(void* c_this);
	[LinkName("QFileSystemModel_Metacast")]
	public static extern void QFileSystemModel_Metacast(void* c_this, char8[] param1);
	[LinkName("QFileSystemModel_Metacall")]
	public static extern int32 QFileSystemModel_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QFileSystemModel_Tr")]
	public static extern char8[] QFileSystemModel_Tr(char8[] s);
	[LinkName("QFileSystemModel_RootPathChanged")]
	public static extern void QFileSystemModel_RootPathChanged(void* c_this, char8[] newPath);
	[LinkName("QFileSystemModel_FileRenamed")]
	public static extern void QFileSystemModel_FileRenamed(void* c_this, char8[] path, char8[] oldName, char8[] newName);
	[LinkName("QFileSystemModel_DirectoryLoaded")]
	public static extern void QFileSystemModel_DirectoryLoaded(void* c_this, char8[] path);
	[LinkName("QFileSystemModel_Index")]
	public static extern QModelIndex QFileSystemModel_Index(void* c_this, int32 row, int32 column, QModelIndex parent);
	[LinkName("QFileSystemModel_IndexWithPath")]
	public static extern QModelIndex QFileSystemModel_IndexWithPath(void* c_this, char8[] path);
	[LinkName("QFileSystemModel_Parent")]
	public static extern QModelIndex QFileSystemModel_Parent(void* c_this, QModelIndex child);
	[LinkName("QFileSystemModel_Sibling")]
	public static extern QModelIndex QFileSystemModel_Sibling(void* c_this, int32 row, int32 column, QModelIndex idx);
	[LinkName("QFileSystemModel_HasChildren")]
	public static extern bool QFileSystemModel_HasChildren(void* c_this, QModelIndex parent);
	[LinkName("QFileSystemModel_CanFetchMore")]
	public static extern bool QFileSystemModel_CanFetchMore(void* c_this, QModelIndex parent);
	[LinkName("QFileSystemModel_FetchMore")]
	public static extern void QFileSystemModel_FetchMore(void* c_this, QModelIndex parent);
	[LinkName("QFileSystemModel_RowCount")]
	public static extern int32 QFileSystemModel_RowCount(void* c_this, QModelIndex parent);
	[LinkName("QFileSystemModel_ColumnCount")]
	public static extern int32 QFileSystemModel_ColumnCount(void* c_this, QModelIndex parent);
	[LinkName("QFileSystemModel_MyComputer")]
	public static extern QVariant QFileSystemModel_MyComputer(void* c_this);
	[LinkName("QFileSystemModel_Data")]
	public static extern QVariant QFileSystemModel_Data(void* c_this, QModelIndex index, int32 role);
	[LinkName("QFileSystemModel_SetData")]
	public static extern bool QFileSystemModel_SetData(void* c_this, QModelIndex index, QVariant value, int32 role);
	[LinkName("QFileSystemModel_HeaderData")]
	public static extern QVariant QFileSystemModel_HeaderData(void* c_this, int32 section, int64 orientation, int32 role);
	[LinkName("QFileSystemModel_Flags")]
	public static extern int64 QFileSystemModel_Flags(void* c_this, QModelIndex index);
	[LinkName("QFileSystemModel_Sort")]
	public static extern void QFileSystemModel_Sort(void* c_this, int32 column, int64 order);
	[LinkName("QFileSystemModel_MimeTypes")]
	public static extern char8[][] QFileSystemModel_MimeTypes(void* c_this);
	[LinkName("QFileSystemModel_MimeData")]
	public static extern QMimeData QFileSystemModel_MimeData(void* c_this, QModelIndex[] indexes);
	[LinkName("QFileSystemModel_DropMimeData")]
	public static extern bool QFileSystemModel_DropMimeData(void* c_this, QMimeData data, int64 action, int32 row, int32 column, QModelIndex parent);
	[LinkName("QFileSystemModel_SupportedDropActions")]
	public static extern int64 QFileSystemModel_SupportedDropActions(void* c_this);
	[LinkName("QFileSystemModel_RoleNames")]
	public static extern void* QFileSystemModel_RoleNames(void* c_this);
	[LinkName("QFileSystemModel_SetRootPath")]
	public static extern QModelIndex QFileSystemModel_SetRootPath(void* c_this, char8[] path);
	[LinkName("QFileSystemModel_RootPath")]
	public static extern char8[] QFileSystemModel_RootPath(void* c_this);
	[LinkName("QFileSystemModel_RootDirectory")]
	public static extern QDir QFileSystemModel_RootDirectory(void* c_this);
	[LinkName("QFileSystemModel_SetIconProvider")]
	public static extern void QFileSystemModel_SetIconProvider(void* c_this, QAbstractFileIconProvider provider);
	[LinkName("QFileSystemModel_IconProvider")]
	public static extern QAbstractFileIconProvider QFileSystemModel_IconProvider(void* c_this);
	[LinkName("QFileSystemModel_SetFilter")]
	public static extern void QFileSystemModel_SetFilter(void* c_this, int64 filters);
	[LinkName("QFileSystemModel_Filter")]
	public static extern int64 QFileSystemModel_Filter(void* c_this);
	[LinkName("QFileSystemModel_SetResolveSymlinks")]
	public static extern void QFileSystemModel_SetResolveSymlinks(void* c_this, bool enable);
	[LinkName("QFileSystemModel_ResolveSymlinks")]
	public static extern bool QFileSystemModel_ResolveSymlinks(void* c_this);
	[LinkName("QFileSystemModel_SetReadOnly")]
	public static extern void QFileSystemModel_SetReadOnly(void* c_this, bool enable);
	[LinkName("QFileSystemModel_IsReadOnly")]
	public static extern bool QFileSystemModel_IsReadOnly(void* c_this);
	[LinkName("QFileSystemModel_SetNameFilterDisables")]
	public static extern void QFileSystemModel_SetNameFilterDisables(void* c_this, bool enable);
	[LinkName("QFileSystemModel_NameFilterDisables")]
	public static extern bool QFileSystemModel_NameFilterDisables(void* c_this);
	[LinkName("QFileSystemModel_SetNameFilters")]
	public static extern void QFileSystemModel_SetNameFilters(void* c_this, char8[][] filters);
	[LinkName("QFileSystemModel_NameFilters")]
	public static extern char8[][] QFileSystemModel_NameFilters(void* c_this);
	[LinkName("QFileSystemModel_SetOption")]
	public static extern void QFileSystemModel_SetOption(void* c_this, int64 option);
	[LinkName("QFileSystemModel_TestOption")]
	public static extern bool QFileSystemModel_TestOption(void* c_this, int64 option);
	[LinkName("QFileSystemModel_SetOptions")]
	public static extern void QFileSystemModel_SetOptions(void* c_this, int64 options);
	[LinkName("QFileSystemModel_Options")]
	public static extern int64 QFileSystemModel_Options(void* c_this);
	[LinkName("QFileSystemModel_FilePath")]
	public static extern char8[] QFileSystemModel_FilePath(void* c_this, QModelIndex index);
	[LinkName("QFileSystemModel_IsDir")]
	public static extern bool QFileSystemModel_IsDir(void* c_this, QModelIndex index);
	[LinkName("QFileSystemModel_Size")]
	public static extern int64 QFileSystemModel_Size(void* c_this, QModelIndex index);
	[LinkName("QFileSystemModel_Type")]
	public static extern char8[] QFileSystemModel_Type(void* c_this, QModelIndex index);
	[LinkName("QFileSystemModel_LastModified")]
	public static extern QDateTime QFileSystemModel_LastModified(void* c_this, QModelIndex index);
	[LinkName("QFileSystemModel_Mkdir")]
	public static extern QModelIndex QFileSystemModel_Mkdir(void* c_this, QModelIndex parent, char8[] name);
	[LinkName("QFileSystemModel_Rmdir")]
	public static extern bool QFileSystemModel_Rmdir(void* c_this, QModelIndex index);
	[LinkName("QFileSystemModel_FileName")]
	public static extern char8[] QFileSystemModel_FileName(void* c_this, QModelIndex index);
	[LinkName("QFileSystemModel_FileIcon")]
	public static extern QIcon QFileSystemModel_FileIcon(void* c_this, QModelIndex index);
	[LinkName("QFileSystemModel_Permissions")]
	public static extern int64 QFileSystemModel_Permissions(void* c_this, QModelIndex index);
	[LinkName("QFileSystemModel_FileInfo")]
	public static extern QFileInfo QFileSystemModel_FileInfo(void* c_this, QModelIndex index);
	[LinkName("QFileSystemModel_Remove")]
	public static extern bool QFileSystemModel_Remove(void* c_this, QModelIndex index);
	[LinkName("QFileSystemModel_TimerEvent")]
	public static extern void QFileSystemModel_TimerEvent(void* c_this, QTimerEvent event);
	[LinkName("QFileSystemModel_Event")]
	public static extern bool QFileSystemModel_Event(void* c_this, QEvent event);
	[LinkName("QFileSystemModel_Tr2")]
	public static extern char8[] QFileSystemModel_Tr2(char8[] s, char8[] c);
	[LinkName("QFileSystemModel_Tr3")]
	public static extern char8[] QFileSystemModel_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QFileSystemModel_Index2")]
	public static extern QModelIndex QFileSystemModel_Index2(void* c_this, char8[] path, int32 column);
	[LinkName("QFileSystemModel_MyComputer1")]
	public static extern QVariant QFileSystemModel_MyComputer1(void* c_this, int32 role);
	[LinkName("QFileSystemModel_SetOption2")]
	public static extern void QFileSystemModel_SetOption2(void* c_this, int64 option, bool on);
}