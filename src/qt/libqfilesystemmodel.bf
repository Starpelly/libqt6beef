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
public class QFileSystemModel
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QFileSystemModel_new();
	}
	
	public ~this()
	{
		CQt.QFileSystemModel_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QFileSystemModel_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QFileSystemModel_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QFileSystemModel_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QFileSystemModel_Tr(s);
	}
	
	public virtual void Index(int32 row, int32 column, void* parent)
	{
		CQt.QFileSystemModel_Index(this.nativePtr, row, column, parent);
	}
	
	public void IndexWithPath(libqt_string path)
	{
		CQt.QFileSystemModel_IndexWithPath(this.nativePtr, path);
	}
	
	public virtual void Parent(void* child)
	{
		CQt.QFileSystemModel_Parent(this.nativePtr, child);
	}
	
	public virtual void Sibling(int32 row, int32 column, void* idx)
	{
		CQt.QFileSystemModel_Sibling(this.nativePtr, row, column, idx);
	}
	
	public virtual bool HasChildren(void* parent)
	{
		return CQt.QFileSystemModel_HasChildren(this.nativePtr, parent);
	}
	
	public virtual bool CanFetchMore(void* parent)
	{
		return CQt.QFileSystemModel_CanFetchMore(this.nativePtr, parent);
	}
	
	public virtual void FetchMore(void* parent)
	{
		CQt.QFileSystemModel_FetchMore(this.nativePtr, parent);
	}
	
	public virtual int32 RowCount(void* parent)
	{
		return CQt.QFileSystemModel_RowCount(this.nativePtr, parent);
	}
	
	public virtual int32 ColumnCount(void* parent)
	{
		return CQt.QFileSystemModel_ColumnCount(this.nativePtr, parent);
	}
	
	public void MyComputer()
	{
		CQt.QFileSystemModel_MyComputer(this.nativePtr);
	}
	
	public virtual void Data(void* index, int32 role)
	{
		CQt.QFileSystemModel_Data(this.nativePtr, index, role);
	}
	
	public virtual bool SetData(void* index, void* value, int32 role)
	{
		return CQt.QFileSystemModel_SetData(this.nativePtr, index, value, role);
	}
	
	public virtual void HeaderData(int32 section, int64 orientation, int32 role)
	{
		CQt.QFileSystemModel_HeaderData(this.nativePtr, section, orientation, role);
	}
	
	public virtual int64 Flags(void* index)
	{
		return CQt.QFileSystemModel_Flags(this.nativePtr, index);
	}
	
	public virtual void Sort(int32 column, int64 order)
	{
		CQt.QFileSystemModel_Sort(this.nativePtr, column, order);
	}
	
	public virtual libqt_string[] MimeTypes()
	{
		return CQt.QFileSystemModel_MimeTypes(this.nativePtr);
	}
	
	public virtual void* MimeData(void[] indexes)
	{
		return CQt.QFileSystemModel_MimeData(this.nativePtr, indexes);
	}
	
	public virtual bool DropMimeData(void* data, int64 action, int32 row, int32 column, void* parent)
	{
		return CQt.QFileSystemModel_DropMimeData(this.nativePtr, data, action, row, column, parent);
	}
	
	public virtual int64 SupportedDropActions()
	{
		return CQt.QFileSystemModel_SupportedDropActions(this.nativePtr);
	}
	
	public virtual void* RoleNames()
	{
		return CQt.QFileSystemModel_RoleNames(this.nativePtr);
	}
	
	public void SetRootPath(libqt_string path)
	{
		CQt.QFileSystemModel_SetRootPath(this.nativePtr, path);
	}
	
	public libqt_string RootPath()
	{
		return CQt.QFileSystemModel_RootPath(this.nativePtr);
	}
	
	public void RootDirectory()
	{
		CQt.QFileSystemModel_RootDirectory(this.nativePtr);
	}
	
	public void SetIconProvider(void* provider)
	{
		CQt.QFileSystemModel_SetIconProvider(this.nativePtr, provider);
	}
	
	public void* IconProvider()
	{
		return CQt.QFileSystemModel_IconProvider(this.nativePtr);
	}
	
	public void SetFilter(int64 filters)
	{
		CQt.QFileSystemModel_SetFilter(this.nativePtr, filters);
	}
	
	public int64 Filter()
	{
		return CQt.QFileSystemModel_Filter(this.nativePtr);
	}
	
	public void SetResolveSymlinks(bool enable)
	{
		CQt.QFileSystemModel_SetResolveSymlinks(this.nativePtr, enable);
	}
	
	public bool ResolveSymlinks()
	{
		return CQt.QFileSystemModel_ResolveSymlinks(this.nativePtr);
	}
	
	public void SetReadOnly(bool enable)
	{
		CQt.QFileSystemModel_SetReadOnly(this.nativePtr, enable);
	}
	
	public bool IsReadOnly()
	{
		return CQt.QFileSystemModel_IsReadOnly(this.nativePtr);
	}
	
	public void SetNameFilterDisables(bool enable)
	{
		CQt.QFileSystemModel_SetNameFilterDisables(this.nativePtr, enable);
	}
	
	public bool NameFilterDisables()
	{
		return CQt.QFileSystemModel_NameFilterDisables(this.nativePtr);
	}
	
	public void SetNameFilters(libqt_string[] filters)
	{
		CQt.QFileSystemModel_SetNameFilters(this.nativePtr, filters);
	}
	
	public libqt_string[] NameFilters()
	{
		return CQt.QFileSystemModel_NameFilters(this.nativePtr);
	}
	
	public void SetOption(int64 option)
	{
		CQt.QFileSystemModel_SetOption(this.nativePtr, option);
	}
	
	public bool TestOption(int64 option)
	{
		return CQt.QFileSystemModel_TestOption(this.nativePtr, option);
	}
	
	public void SetOptions(int64 options)
	{
		CQt.QFileSystemModel_SetOptions(this.nativePtr, options);
	}
	
	public int64 Options()
	{
		return CQt.QFileSystemModel_Options(this.nativePtr);
	}
	
	public libqt_string FilePath(void* index)
	{
		return CQt.QFileSystemModel_FilePath(this.nativePtr, index);
	}
	
	public bool IsDir(void* index)
	{
		return CQt.QFileSystemModel_IsDir(this.nativePtr, index);
	}
	
	public int64 Size(void* index)
	{
		return CQt.QFileSystemModel_Size(this.nativePtr, index);
	}
	
	public libqt_string Type(void* index)
	{
		return CQt.QFileSystemModel_Type(this.nativePtr, index);
	}
	
	public void LastModified(void* index)
	{
		CQt.QFileSystemModel_LastModified(this.nativePtr, index);
	}
	
	public void Mkdir(void* parent, libqt_string name)
	{
		CQt.QFileSystemModel_Mkdir(this.nativePtr, parent, name);
	}
	
	public bool Rmdir(void* index)
	{
		return CQt.QFileSystemModel_Rmdir(this.nativePtr, index);
	}
	
	public libqt_string FileName(void* index)
	{
		return CQt.QFileSystemModel_FileName(this.nativePtr, index);
	}
	
	public void FileIcon(void* index)
	{
		CQt.QFileSystemModel_FileIcon(this.nativePtr, index);
	}
	
	public int64 Permissions(void* index)
	{
		return CQt.QFileSystemModel_Permissions(this.nativePtr, index);
	}
	
	public void FileInfo(void* index)
	{
		CQt.QFileSystemModel_FileInfo(this.nativePtr, index);
	}
	
	public bool Remove(void* index)
	{
		return CQt.QFileSystemModel_Remove(this.nativePtr, index);
	}
	
	public virtual void TimerEvent(void* event)
	{
		CQt.QFileSystemModel_TimerEvent(this.nativePtr, event);
	}
	
	public virtual bool Event(void* event)
	{
		return CQt.QFileSystemModel_Event(this.nativePtr, event);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QFileSystemModel_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QFileSystemModel_Tr3(s, c, n);
	}
	
	public void Index2(libqt_string path, int32 column)
	{
		CQt.QFileSystemModel_Index2(this.nativePtr, path, column);
	}
	
	public void MyComputer1(int32 role)
	{
		CQt.QFileSystemModel_MyComputer1(this.nativePtr, role);
	}
	
	public void SetOption2(int64 option, bool on)
	{
		CQt.QFileSystemModel_SetOption2(this.nativePtr, option, on);
	}
	
	public bool HasIndex(int32 row, int32 column)
	{
		return CQt.QAbstractItemModel_HasIndex(this.nativePtr, row, column);
	}
	
	public virtual bool SetHeaderData(int32 section, int64 orientation, void* value, int32 role)
	{
		return CQt.QAbstractItemModel_SetHeaderData(this.nativePtr, section, orientation, value, role);
	}
	
	public virtual void* ItemData(void* index)
	{
		return CQt.QAbstractItemModel_ItemData(this.nativePtr, index);
	}
	
	public virtual bool SetItemData(void* index, void* roles)
	{
		return CQt.QAbstractItemModel_SetItemData(this.nativePtr, index, roles);
	}
	
	public virtual bool ClearItemData(void* index)
	{
		return CQt.QAbstractItemModel_ClearItemData(this.nativePtr, index);
	}
	
	public virtual bool CanDropMimeData(void* data, int64 action, int32 row, int32 column, void* parent)
	{
		return CQt.QAbstractItemModel_CanDropMimeData(this.nativePtr, data, action, row, column, parent);
	}
	
	public virtual int64 SupportedDragActions()
	{
		return CQt.QAbstractItemModel_SupportedDragActions(this.nativePtr);
	}
	
	public virtual bool InsertRows(int32 row, int32 count, void* parent)
	{
		return CQt.QAbstractItemModel_InsertRows(this.nativePtr, row, count, parent);
	}
	
	public virtual bool InsertColumns(int32 column, int32 count, void* parent)
	{
		return CQt.QAbstractItemModel_InsertColumns(this.nativePtr, column, count, parent);
	}
	
	public virtual bool RemoveRows(int32 row, int32 count, void* parent)
	{
		return CQt.QAbstractItemModel_RemoveRows(this.nativePtr, row, count, parent);
	}
	
	public virtual bool RemoveColumns(int32 column, int32 count, void* parent)
	{
		return CQt.QAbstractItemModel_RemoveColumns(this.nativePtr, column, count, parent);
	}
	
	public virtual bool MoveRows(void* sourceParent, int32 sourceRow, int32 count, void* destinationParent, int32 destinationChild)
	{
		return CQt.QAbstractItemModel_MoveRows(this.nativePtr, sourceParent, sourceRow, count, destinationParent, destinationChild);
	}
	
	public virtual bool MoveColumns(void* sourceParent, int32 sourceColumn, int32 count, void* destinationParent, int32 destinationChild)
	{
		return CQt.QAbstractItemModel_MoveColumns(this.nativePtr, sourceParent, sourceColumn, count, destinationParent, destinationChild);
	}
	
	public bool InsertRow(int32 row)
	{
		return CQt.QAbstractItemModel_InsertRow(this.nativePtr, row);
	}
	
	public bool InsertColumn(int32 column)
	{
		return CQt.QAbstractItemModel_InsertColumn(this.nativePtr, column);
	}
	
	public bool RemoveRow(int32 row)
	{
		return CQt.QAbstractItemModel_RemoveRow(this.nativePtr, row);
	}
	
	public bool RemoveColumn(int32 column)
	{
		return CQt.QAbstractItemModel_RemoveColumn(this.nativePtr, column);
	}
	
	public bool MoveRow(void* sourceParent, int32 sourceRow, void* destinationParent, int32 destinationChild)
	{
		return CQt.QAbstractItemModel_MoveRow(this.nativePtr, sourceParent, sourceRow, destinationParent, destinationChild);
	}
	
	public bool MoveColumn(void* sourceParent, int32 sourceColumn, void* destinationParent, int32 destinationChild)
	{
		return CQt.QAbstractItemModel_MoveColumn(this.nativePtr, sourceParent, sourceColumn, destinationParent, destinationChild);
	}
	
	public virtual void Buddy(void* index)
	{
		CQt.QAbstractItemModel_Buddy(this.nativePtr, index);
	}
	
	public virtual void[] Match(void* start, int32 role, void* value, int32 hits, int64 flags)
	{
		return CQt.QAbstractItemModel_Match(this.nativePtr, start, role, value, hits, flags);
	}
	
	public virtual void Span(void* index)
	{
		CQt.QAbstractItemModel_Span(this.nativePtr, index);
	}
	
	public bool CheckIndex(void* index)
	{
		return CQt.QAbstractItemModel_CheckIndex(this.nativePtr, index);
	}
	
	public virtual void MultiData(void* index, void roleDataSpan)
	{
		CQt.QAbstractItemModel_MultiData(this.nativePtr, index, roleDataSpan);
	}
	
	public virtual bool Submit()
	{
		return CQt.QAbstractItemModel_Submit(this.nativePtr);
	}
	
	public virtual void Revert()
	{
		CQt.QAbstractItemModel_Revert(this.nativePtr);
	}
	
	public bool HasIndex3(int32 row, int32 column, void* parent)
	{
		return CQt.QAbstractItemModel_HasIndex3(this.nativePtr, row, column, parent);
	}
	
	public bool InsertRow2(int32 row, void* parent)
	{
		return CQt.QAbstractItemModel_InsertRow2(this.nativePtr, row, parent);
	}
	
	public bool InsertColumn2(int32 column, void* parent)
	{
		return CQt.QAbstractItemModel_InsertColumn2(this.nativePtr, column, parent);
	}
	
	public bool RemoveRow2(int32 row, void* parent)
	{
		return CQt.QAbstractItemModel_RemoveRow2(this.nativePtr, row, parent);
	}
	
	public bool RemoveColumn2(int32 column, void* parent)
	{
		return CQt.QAbstractItemModel_RemoveColumn2(this.nativePtr, column, parent);
	}
	
	public bool CheckIndex2(void* index, int64 options)
	{
		return CQt.QAbstractItemModel_CheckIndex2(this.nativePtr, index, options);
	}
	
	public virtual bool EventFilter(void* watched, void* event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, watched, event);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(void name)
	{
		CQt.QObject_SetObjectName(this.nativePtr, name);
	}
	
	public bool IsWidgetType()
	{
		return CQt.QObject_IsWidgetType(this.nativePtr);
	}
	
	public bool IsWindowType()
	{
		return CQt.QObject_IsWindowType(this.nativePtr);
	}
	
	public bool IsQuickItemType()
	{
		return CQt.QObject_IsQuickItemType(this.nativePtr);
	}
	
	public bool SignalsBlocked()
	{
		return CQt.QObject_SignalsBlocked(this.nativePtr);
	}
	
	public bool BlockSignals(bool b)
	{
		return CQt.QObject_BlockSignals(this.nativePtr, b);
	}
	
	public void* Thread()
	{
		return CQt.QObject_Thread(this.nativePtr);
	}
	
	public void MoveToThread(void* thread)
	{
		CQt.QObject_MoveToThread(this.nativePtr, thread);
	}
	
	public int32 StartTimer(int32 interval)
	{
		return CQt.QObject_StartTimer(this.nativePtr, interval);
	}
	
	public void KillTimer(int32 id)
	{
		CQt.QObject_KillTimer(this.nativePtr, id);
	}
	
	public void*[] Children()
	{
		return CQt.QObject_Children(this.nativePtr);
	}
	
	public void SetParent(void* parent)
	{
		CQt.QObject_SetParent(this.nativePtr, parent);
	}
	
	public void InstallEventFilter(void* filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, filterObj);
	}
	
	public void RemoveEventFilter(void* obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, obj);
	}
	
	public static QMetaObject__Connection Connect(void* sender, void* signal, void* receiver, void* method)
	{
		return CQt.QObject_Connect(sender, signal, receiver, method);
	}
	
	public QMetaObject__Connection Connect2(void* sender, char8[] signal, char8[] member)
	{
		return CQt.QObject_Connect2(this.nativePtr, sender, signal, member);
	}
	
	public static bool Disconnect(void* sender, void* signal, void* receiver, void* member)
	{
		return CQt.QObject_Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__Connection* param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection(param1);
	}
	
	public void DumpObjectTree()
	{
		CQt.QObject_DumpObjectTree(this.nativePtr);
	}
	
	public void DumpObjectInfo()
	{
		CQt.QObject_DumpObjectInfo(this.nativePtr);
	}
	
	public bool SetProperty(char8[] name, void* value)
	{
		return CQt.QObject_SetProperty(this.nativePtr, name, value);
	}
	
	public void Property(char8[] name)
	{
		CQt.QObject_Property(this.nativePtr, name);
	}
	
	public libqt_string[] DynamicPropertyNames()
	{
		return CQt.QObject_DynamicPropertyNames(this.nativePtr);
	}
	
	public void* BindingStorage()
	{
		return CQt.QObject_BindingStorage(this.nativePtr);
	}
	
	public void* BindingStorage2()
	{
		return CQt.QObject_BindingStorage2(this.nativePtr);
	}
	
	public bool Inherits(char8[] classname)
	{
		return CQt.QObject_Inherits(this.nativePtr, classname);
	}
	
	public void DeleteLater()
	{
		CQt.QObject_DeleteLater(this.nativePtr);
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return CQt.QObject_StartTimer2(this.nativePtr, interval, timerType);
	}
	
	public static QMetaObject__Connection Connect5(void* sender, void* signal, void* receiver, void* method, int64 typeVal)
	{
		return CQt.QObject_Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public QMetaObject__Connection Connect4(void* sender, char8[] signal, char8[] member, int64 typeVal)
	{
		return CQt.QObject_Connect4(this.nativePtr, sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QFileSystemModel_new")]
	public static extern void* QFileSystemModel_new();
	[LinkName("QFileSystemModel_new2")]
	public static extern void* QFileSystemModel_new2(void* parent);
	[LinkName("QFileSystemModel_MetaObject")]
	public static extern void* QFileSystemModel_MetaObject(void* c_this);
	[LinkName("QFileSystemModel_Metacast")]
	public static extern void* QFileSystemModel_Metacast(void* c_this, char8[] param1);
	[LinkName("QFileSystemModel_Metacall")]
	public static extern int32 QFileSystemModel_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QFileSystemModel_Tr")]
	public static extern libqt_string QFileSystemModel_Tr(char8[] s);
	[LinkName("QFileSystemModel_Connect_RootPathChanged")]
	public static extern void QFileSystemModel_Connect_RootPathChanged(void* c_this, c_intptr slot);
	[LinkName("QFileSystemModel_Connect_FileRenamed")]
	public static extern void QFileSystemModel_Connect_FileRenamed(void* c_this, c_intptr slot);
	[LinkName("QFileSystemModel_Connect_DirectoryLoaded")]
	public static extern void QFileSystemModel_Connect_DirectoryLoaded(void* c_this, c_intptr slot);
	[LinkName("QFileSystemModel_Index")]
	public static extern void QFileSystemModel_Index(void* c_this, int32 row, int32 column, void* parent);
	[LinkName("QFileSystemModel_IndexWithPath")]
	public static extern void QFileSystemModel_IndexWithPath(void* c_this, libqt_string path);
	[LinkName("QFileSystemModel_Parent")]
	public static extern void QFileSystemModel_Parent(void* c_this, void* child);
	[LinkName("QFileSystemModel_Sibling")]
	public static extern void QFileSystemModel_Sibling(void* c_this, int32 row, int32 column, void* idx);
	[LinkName("QFileSystemModel_HasChildren")]
	public static extern bool QFileSystemModel_HasChildren(void* c_this, void* parent);
	[LinkName("QFileSystemModel_CanFetchMore")]
	public static extern bool QFileSystemModel_CanFetchMore(void* c_this, void* parent);
	[LinkName("QFileSystemModel_FetchMore")]
	public static extern void QFileSystemModel_FetchMore(void* c_this, void* parent);
	[LinkName("QFileSystemModel_RowCount")]
	public static extern int32 QFileSystemModel_RowCount(void* c_this, void* parent);
	[LinkName("QFileSystemModel_ColumnCount")]
	public static extern int32 QFileSystemModel_ColumnCount(void* c_this, void* parent);
	[LinkName("QFileSystemModel_MyComputer")]
	public static extern void QFileSystemModel_MyComputer(void* c_this);
	[LinkName("QFileSystemModel_Data")]
	public static extern void QFileSystemModel_Data(void* c_this, void* index, int32 role);
	[LinkName("QFileSystemModel_SetData")]
	public static extern bool QFileSystemModel_SetData(void* c_this, void* index, void* value, int32 role);
	[LinkName("QFileSystemModel_HeaderData")]
	public static extern void QFileSystemModel_HeaderData(void* c_this, int32 section, int64 orientation, int32 role);
	[LinkName("QFileSystemModel_Flags")]
	public static extern int64 QFileSystemModel_Flags(void* c_this, void* index);
	[LinkName("QFileSystemModel_Sort")]
	public static extern void QFileSystemModel_Sort(void* c_this, int32 column, int64 order);
	[LinkName("QFileSystemModel_MimeTypes")]
	public static extern libqt_string[] QFileSystemModel_MimeTypes(void* c_this);
	[LinkName("QFileSystemModel_MimeData")]
	public static extern void* QFileSystemModel_MimeData(void* c_this, void[] indexes);
	[LinkName("QFileSystemModel_DropMimeData")]
	public static extern bool QFileSystemModel_DropMimeData(void* c_this, void* data, int64 action, int32 row, int32 column, void* parent);
	[LinkName("QFileSystemModel_SupportedDropActions")]
	public static extern int64 QFileSystemModel_SupportedDropActions(void* c_this);
	[LinkName("QFileSystemModel_RoleNames")]
	public static extern void* QFileSystemModel_RoleNames(void* c_this);
	[LinkName("QFileSystemModel_SetRootPath")]
	public static extern void QFileSystemModel_SetRootPath(void* c_this, libqt_string path);
	[LinkName("QFileSystemModel_RootPath")]
	public static extern libqt_string QFileSystemModel_RootPath(void* c_this);
	[LinkName("QFileSystemModel_RootDirectory")]
	public static extern void QFileSystemModel_RootDirectory(void* c_this);
	[LinkName("QFileSystemModel_SetIconProvider")]
	public static extern void QFileSystemModel_SetIconProvider(void* c_this, void* provider);
	[LinkName("QFileSystemModel_IconProvider")]
	public static extern void* QFileSystemModel_IconProvider(void* c_this);
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
	public static extern void QFileSystemModel_SetNameFilters(void* c_this, libqt_string[] filters);
	[LinkName("QFileSystemModel_NameFilters")]
	public static extern libqt_string[] QFileSystemModel_NameFilters(void* c_this);
	[LinkName("QFileSystemModel_SetOption")]
	public static extern void QFileSystemModel_SetOption(void* c_this, int64 option);
	[LinkName("QFileSystemModel_TestOption")]
	public static extern bool QFileSystemModel_TestOption(void* c_this, int64 option);
	[LinkName("QFileSystemModel_SetOptions")]
	public static extern void QFileSystemModel_SetOptions(void* c_this, int64 options);
	[LinkName("QFileSystemModel_Options")]
	public static extern int64 QFileSystemModel_Options(void* c_this);
	[LinkName("QFileSystemModel_FilePath")]
	public static extern libqt_string QFileSystemModel_FilePath(void* c_this, void* index);
	[LinkName("QFileSystemModel_IsDir")]
	public static extern bool QFileSystemModel_IsDir(void* c_this, void* index);
	[LinkName("QFileSystemModel_Size")]
	public static extern int64 QFileSystemModel_Size(void* c_this, void* index);
	[LinkName("QFileSystemModel_Type")]
	public static extern libqt_string QFileSystemModel_Type(void* c_this, void* index);
	[LinkName("QFileSystemModel_LastModified")]
	public static extern void QFileSystemModel_LastModified(void* c_this, void* index);
	[LinkName("QFileSystemModel_Mkdir")]
	public static extern void QFileSystemModel_Mkdir(void* c_this, void* parent, libqt_string name);
	[LinkName("QFileSystemModel_Rmdir")]
	public static extern bool QFileSystemModel_Rmdir(void* c_this, void* index);
	[LinkName("QFileSystemModel_FileName")]
	public static extern libqt_string QFileSystemModel_FileName(void* c_this, void* index);
	[LinkName("QFileSystemModel_FileIcon")]
	public static extern void QFileSystemModel_FileIcon(void* c_this, void* index);
	[LinkName("QFileSystemModel_Permissions")]
	public static extern int64 QFileSystemModel_Permissions(void* c_this, void* index);
	[LinkName("QFileSystemModel_FileInfo")]
	public static extern void QFileSystemModel_FileInfo(void* c_this, void* index);
	[LinkName("QFileSystemModel_Remove")]
	public static extern bool QFileSystemModel_Remove(void* c_this, void* index);
	[LinkName("QFileSystemModel_TimerEvent")]
	public static extern void QFileSystemModel_TimerEvent(void* c_this, void* event);
	[LinkName("QFileSystemModel_Event")]
	public static extern bool QFileSystemModel_Event(void* c_this, void* event);
	[LinkName("QFileSystemModel_Tr2")]
	public static extern libqt_string QFileSystemModel_Tr2(char8[] s, char8[] c);
	[LinkName("QFileSystemModel_Tr3")]
	public static extern libqt_string QFileSystemModel_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QFileSystemModel_Index2")]
	public static extern void QFileSystemModel_Index2(void* c_this, libqt_string path, int32 column);
	[LinkName("QFileSystemModel_MyComputer1")]
	public static extern void QFileSystemModel_MyComputer1(void* c_this, int32 role);
	[LinkName("QFileSystemModel_SetOption2")]
	public static extern void QFileSystemModel_SetOption2(void* c_this, int64 option, bool on);
	/// Delete this object from C++ memory
	[LinkName("QFileSystemModel_Delete")]
	public static extern void QFileSystemModel_Delete(void* self);
}