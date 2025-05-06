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
public struct QFileSystemModel : QAbstractItemModel
{
	[LinkName("QFileSystemModel_new")]
	public static extern QFileSystemModel* QFileSystemModel_new();
	[LinkName("QFileSystemModel_new2")]
	public static extern QFileSystemModel* QFileSystemModel_new2(QObject* parent);
	[LinkName("QFileSystemModel_MetaObject")]
	public static extern QMetaObject* QFileSystemModel_MetaObject(Self* c_this);
	[LinkName("QFileSystemModel_Metacast")]
	public static extern void* QFileSystemModel_Metacast(Self* c_this, char8[] param1);
	[LinkName("QFileSystemModel_Metacall")]
	public static extern int32 QFileSystemModel_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QFileSystemModel_Tr")]
	public static extern libqt_string QFileSystemModel_Tr(char8[] s);
	[LinkName("QFileSystemModel_RootPathChanged")]
	public static extern void QFileSystemModel_RootPathChanged(Self* c_this, libqt_string newPath);
	[LinkName("QFileSystemModel_FileRenamed")]
	public static extern void QFileSystemModel_FileRenamed(Self* c_this, libqt_string path, libqt_string oldName, libqt_string newName);
	[LinkName("QFileSystemModel_DirectoryLoaded")]
	public static extern void QFileSystemModel_DirectoryLoaded(Self* c_this, libqt_string path);
	[LinkName("QFileSystemModel_Index")]
	public static extern QModelIndex QFileSystemModel_Index(Self* c_this, int32 row, int32 column, QModelIndex* parent);
	[LinkName("QFileSystemModel_IndexWithPath")]
	public static extern QModelIndex QFileSystemModel_IndexWithPath(Self* c_this, libqt_string path);
	[LinkName("QFileSystemModel_Parent")]
	public static extern QModelIndex QFileSystemModel_Parent(Self* c_this, QModelIndex* child);
	[LinkName("QFileSystemModel_Sibling")]
	public static extern QModelIndex QFileSystemModel_Sibling(Self* c_this, int32 row, int32 column, QModelIndex* idx);
	[LinkName("QFileSystemModel_HasChildren")]
	public static extern bool QFileSystemModel_HasChildren(Self* c_this, QModelIndex* parent);
	[LinkName("QFileSystemModel_CanFetchMore")]
	public static extern bool QFileSystemModel_CanFetchMore(Self* c_this, QModelIndex* parent);
	[LinkName("QFileSystemModel_FetchMore")]
	public static extern void QFileSystemModel_FetchMore(Self* c_this, QModelIndex* parent);
	[LinkName("QFileSystemModel_RowCount")]
	public static extern int32 QFileSystemModel_RowCount(Self* c_this, QModelIndex* parent);
	[LinkName("QFileSystemModel_ColumnCount")]
	public static extern int32 QFileSystemModel_ColumnCount(Self* c_this, QModelIndex* parent);
	[LinkName("QFileSystemModel_MyComputer")]
	public static extern QVariant QFileSystemModel_MyComputer(Self* c_this);
	[LinkName("QFileSystemModel_Data")]
	public static extern QVariant QFileSystemModel_Data(Self* c_this, QModelIndex* index, int32 role);
	[LinkName("QFileSystemModel_SetData")]
	public static extern bool QFileSystemModel_SetData(Self* c_this, QModelIndex* index, QVariant* value, int32 role);
	[LinkName("QFileSystemModel_HeaderData")]
	public static extern QVariant QFileSystemModel_HeaderData(Self* c_this, int32 section, int64 orientation, int32 role);
	[LinkName("QFileSystemModel_Flags")]
	public static extern int64 QFileSystemModel_Flags(Self* c_this, QModelIndex* index);
	[LinkName("QFileSystemModel_Sort")]
	public static extern void QFileSystemModel_Sort(Self* c_this, int32 column, int64 order);
	[LinkName("QFileSystemModel_MimeTypes")]
	public static extern libqt_string[] QFileSystemModel_MimeTypes(Self* c_this);
	[LinkName("QFileSystemModel_MimeData")]
	public static extern QMimeData* QFileSystemModel_MimeData(Self* c_this, QModelIndex[] indexes);
	[LinkName("QFileSystemModel_DropMimeData")]
	public static extern bool QFileSystemModel_DropMimeData(Self* c_this, QMimeData* data, int64 action, int32 row, int32 column, QModelIndex* parent);
	[LinkName("QFileSystemModel_SupportedDropActions")]
	public static extern int64 QFileSystemModel_SupportedDropActions(Self* c_this);
	[LinkName("QFileSystemModel_RoleNames")]
	public static extern void* QFileSystemModel_RoleNames(Self* c_this);
	[LinkName("QFileSystemModel_SetRootPath")]
	public static extern QModelIndex QFileSystemModel_SetRootPath(Self* c_this, libqt_string path);
	[LinkName("QFileSystemModel_RootPath")]
	public static extern libqt_string QFileSystemModel_RootPath(Self* c_this);
	[LinkName("QFileSystemModel_RootDirectory")]
	public static extern QDir QFileSystemModel_RootDirectory(Self* c_this);
	[LinkName("QFileSystemModel_SetIconProvider")]
	public static extern void QFileSystemModel_SetIconProvider(Self* c_this, QAbstractFileIconProvider* provider);
	[LinkName("QFileSystemModel_IconProvider")]
	public static extern QAbstractFileIconProvider* QFileSystemModel_IconProvider(Self* c_this);
	[LinkName("QFileSystemModel_SetFilter")]
	public static extern void QFileSystemModel_SetFilter(Self* c_this, int64 filters);
	[LinkName("QFileSystemModel_Filter")]
	public static extern int64 QFileSystemModel_Filter(Self* c_this);
	[LinkName("QFileSystemModel_SetResolveSymlinks")]
	public static extern void QFileSystemModel_SetResolveSymlinks(Self* c_this, bool enable);
	[LinkName("QFileSystemModel_ResolveSymlinks")]
	public static extern bool QFileSystemModel_ResolveSymlinks(Self* c_this);
	[LinkName("QFileSystemModel_SetReadOnly")]
	public static extern void QFileSystemModel_SetReadOnly(Self* c_this, bool enable);
	[LinkName("QFileSystemModel_IsReadOnly")]
	public static extern bool QFileSystemModel_IsReadOnly(Self* c_this);
	[LinkName("QFileSystemModel_SetNameFilterDisables")]
	public static extern void QFileSystemModel_SetNameFilterDisables(Self* c_this, bool enable);
	[LinkName("QFileSystemModel_NameFilterDisables")]
	public static extern bool QFileSystemModel_NameFilterDisables(Self* c_this);
	[LinkName("QFileSystemModel_SetNameFilters")]
	public static extern void QFileSystemModel_SetNameFilters(Self* c_this, libqt_string[] filters);
	[LinkName("QFileSystemModel_NameFilters")]
	public static extern libqt_string[] QFileSystemModel_NameFilters(Self* c_this);
	[LinkName("QFileSystemModel_SetOption")]
	public static extern void QFileSystemModel_SetOption(Self* c_this, int64 option);
	[LinkName("QFileSystemModel_TestOption")]
	public static extern bool QFileSystemModel_TestOption(Self* c_this, int64 option);
	[LinkName("QFileSystemModel_SetOptions")]
	public static extern void QFileSystemModel_SetOptions(Self* c_this, int64 options);
	[LinkName("QFileSystemModel_Options")]
	public static extern int64 QFileSystemModel_Options(Self* c_this);
	[LinkName("QFileSystemModel_FilePath")]
	public static extern libqt_string QFileSystemModel_FilePath(Self* c_this, QModelIndex* index);
	[LinkName("QFileSystemModel_IsDir")]
	public static extern bool QFileSystemModel_IsDir(Self* c_this, QModelIndex* index);
	[LinkName("QFileSystemModel_Size")]
	public static extern int64 QFileSystemModel_Size(Self* c_this, QModelIndex* index);
	[LinkName("QFileSystemModel_Type")]
	public static extern libqt_string QFileSystemModel_Type(Self* c_this, QModelIndex* index);
	[LinkName("QFileSystemModel_LastModified")]
	public static extern QDateTime QFileSystemModel_LastModified(Self* c_this, QModelIndex* index);
	[LinkName("QFileSystemModel_Mkdir")]
	public static extern QModelIndex QFileSystemModel_Mkdir(Self* c_this, QModelIndex* parent, libqt_string name);
	[LinkName("QFileSystemModel_Rmdir")]
	public static extern bool QFileSystemModel_Rmdir(Self* c_this, QModelIndex* index);
	[LinkName("QFileSystemModel_FileName")]
	public static extern libqt_string QFileSystemModel_FileName(Self* c_this, QModelIndex* index);
	[LinkName("QFileSystemModel_FileIcon")]
	public static extern QIcon QFileSystemModel_FileIcon(Self* c_this, QModelIndex* index);
	[LinkName("QFileSystemModel_Permissions")]
	public static extern int64 QFileSystemModel_Permissions(Self* c_this, QModelIndex* index);
	[LinkName("QFileSystemModel_FileInfo")]
	public static extern QFileInfo QFileSystemModel_FileInfo(Self* c_this, QModelIndex* index);
	[LinkName("QFileSystemModel_Remove")]
	public static extern bool QFileSystemModel_Remove(Self* c_this, QModelIndex* index);
	[LinkName("QFileSystemModel_TimerEvent")]
	public static extern void QFileSystemModel_TimerEvent(Self* c_this, QTimerEvent* event);
	[LinkName("QFileSystemModel_Event")]
	public static extern bool QFileSystemModel_Event(Self* c_this, QEvent* event);
	[LinkName("QFileSystemModel_Tr2")]
	public static extern libqt_string QFileSystemModel_Tr2(char8[] s, char8[] c);
	[LinkName("QFileSystemModel_Tr3")]
	public static extern libqt_string QFileSystemModel_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QFileSystemModel_Index2")]
	public static extern QModelIndex QFileSystemModel_Index2(Self* c_this, libqt_string path, int32 column);
	[LinkName("QFileSystemModel_MyComputer1")]
	public static extern QVariant QFileSystemModel_MyComputer1(Self* c_this, int32 role);
	[LinkName("QFileSystemModel_SetOption2")]
	public static extern void QFileSystemModel_SetOption2(Self* c_this, int64 option, bool on);
}