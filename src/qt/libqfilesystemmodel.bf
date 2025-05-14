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
public interface IQFileSystemModel
{
	void* NativePtr { get; }
}
public struct QFileSystemModelPtr : IQFileSystemModel, IDisposable, IQAbstractItemModel
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QFileSystemModel_new());
	}
	
	public void Dispose()
	{
		CQt.QFileSystemModel_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QFileSystemModel_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QFileSystemModel_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QFileSystemModel_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QFileSystemModel_Tr(s);
	}
	
	public void Index(int32 row, int32 column, IQModelIndex parent)
	{
		CQt.QFileSystemModel_Index(this.nativePtr, row, column, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void IndexWithPath(String path)
	{
		CQt.QFileSystemModel_IndexWithPath(this.nativePtr, libqt_string(path));
	}
	
	public void Parent(IQModelIndex child)
	{
		CQt.QFileSystemModel_Parent(this.nativePtr, (child == default || child.NativePtr == default) ? default : child.NativePtr);
	}
	
	public void Sibling(int32 row, int32 column, IQModelIndex idx)
	{
		CQt.QFileSystemModel_Sibling(this.nativePtr, row, column, (idx == default || idx.NativePtr == default) ? default : idx.NativePtr);
	}
	
	public bool HasChildren(IQModelIndex parent)
	{
		return CQt.QFileSystemModel_HasChildren(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool CanFetchMore(IQModelIndex parent)
	{
		return CQt.QFileSystemModel_CanFetchMore(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void FetchMore(IQModelIndex parent)
	{
		CQt.QFileSystemModel_FetchMore(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public int32 RowCount(IQModelIndex parent)
	{
		return CQt.QFileSystemModel_RowCount(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public int32 ColumnCount(IQModelIndex parent)
	{
		return CQt.QFileSystemModel_ColumnCount(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void MyComputer()
	{
		CQt.QFileSystemModel_MyComputer(this.nativePtr);
	}
	
	public void Data(IQModelIndex index, int32 role)
	{
		CQt.QFileSystemModel_Data(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr, role);
	}
	
	public bool SetData(IQModelIndex index, IQVariant value, int32 role)
	{
		return CQt.QFileSystemModel_SetData(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr, (value == default || value.NativePtr == default) ? default : value.NativePtr, role);
	}
	
	public void HeaderData(int32 section, int64 orientation, int32 role)
	{
		CQt.QFileSystemModel_HeaderData(this.nativePtr, section, (int64)orientation, role);
	}
	
	public int64 Flags(IQModelIndex index)
	{
		return CQt.QFileSystemModel_Flags(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void Sort(int32 column, int64 order)
	{
		CQt.QFileSystemModel_Sort(this.nativePtr, column, (int64)order);
	}
	
	public libqt_string[] MimeTypes()
	{
		return CQt.QFileSystemModel_MimeTypes(this.nativePtr);
	}
	
	public void* MimeData(IQModelIndex[] indexes)
	{
		return CQt.QFileSystemModel_MimeData(this.nativePtr, null);
	}
	
	public bool DropMimeData(IQMimeData data, int64 action, int32 row, int32 column, IQModelIndex parent)
	{
		return CQt.QFileSystemModel_DropMimeData(this.nativePtr, (data == default || data.NativePtr == default) ? default : data.NativePtr, (int64)action, row, column, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public int64 SupportedDropActions()
	{
		return CQt.QFileSystemModel_SupportedDropActions(this.nativePtr);
	}
	
	public void* RoleNames()
	{
		return CQt.QFileSystemModel_RoleNames(this.nativePtr);
	}
	
	public void SetRootPath(String path)
	{
		CQt.QFileSystemModel_SetRootPath(this.nativePtr, libqt_string(path));
	}
	
	public libqt_string RootPath()
	{
		return CQt.QFileSystemModel_RootPath(this.nativePtr);
	}
	
	public void RootDirectory()
	{
		CQt.QFileSystemModel_RootDirectory(this.nativePtr);
	}
	
	public void SetIconProvider(IQAbstractFileIconProvider provider)
	{
		CQt.QFileSystemModel_SetIconProvider(this.nativePtr, (provider == default || provider.NativePtr == default) ? default : provider.NativePtr);
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
	
	public void SetNameFilters(String[] filters)
	{
		CQt.QFileSystemModel_SetNameFilters(this.nativePtr, null);
	}
	
	public libqt_string[] NameFilters()
	{
		return CQt.QFileSystemModel_NameFilters(this.nativePtr);
	}
	
	public void SetOption(int64 option)
	{
		CQt.QFileSystemModel_SetOption(this.nativePtr, (int64)option);
	}
	
	public bool TestOption(int64 option)
	{
		return CQt.QFileSystemModel_TestOption(this.nativePtr, (int64)option);
	}
	
	public void SetOptions(int64 options)
	{
		CQt.QFileSystemModel_SetOptions(this.nativePtr, options);
	}
	
	public int64 Options()
	{
		return CQt.QFileSystemModel_Options(this.nativePtr);
	}
	
	public libqt_string FilePath(IQModelIndex index)
	{
		return CQt.QFileSystemModel_FilePath(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public bool IsDir(IQModelIndex index)
	{
		return CQt.QFileSystemModel_IsDir(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public int64 Size(IQModelIndex index)
	{
		return CQt.QFileSystemModel_Size(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public libqt_string Type(IQModelIndex index)
	{
		return CQt.QFileSystemModel_Type(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void LastModified(IQModelIndex index)
	{
		CQt.QFileSystemModel_LastModified(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void Mkdir(IQModelIndex parent, String name)
	{
		CQt.QFileSystemModel_Mkdir(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr, libqt_string(name));
	}
	
	public bool Rmdir(IQModelIndex index)
	{
		return CQt.QFileSystemModel_Rmdir(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public libqt_string FileName(IQModelIndex index)
	{
		return CQt.QFileSystemModel_FileName(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void FileIcon(IQModelIndex index)
	{
		CQt.QFileSystemModel_FileIcon(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public int64 Permissions(IQModelIndex index)
	{
		return CQt.QFileSystemModel_Permissions(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void FileInfo(IQModelIndex index)
	{
		CQt.QFileSystemModel_FileInfo(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public bool Remove(IQModelIndex index)
	{
		return CQt.QFileSystemModel_Remove(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void TimerEvent(IQTimerEvent event)
	{
		CQt.QFileSystemModel_TimerEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public bool Event(IQEvent event)
	{
		return CQt.QFileSystemModel_Event(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QFileSystemModel_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QFileSystemModel_Tr3(s, c, n);
	}
	
	public void Index2(String path, int32 column)
	{
		CQt.QFileSystemModel_Index2(this.nativePtr, libqt_string(path), column);
	}
	
	public void MyComputer1(int32 role)
	{
		CQt.QFileSystemModel_MyComputer1(this.nativePtr, role);
	}
	
	public void SetOption2(int64 option, bool on)
	{
		CQt.QFileSystemModel_SetOption2(this.nativePtr, (int64)option, on);
	}
	
	public bool HasIndex(int32 row, int32 column)
	{
		return CQt.QAbstractItemModel_HasIndex(this.nativePtr, row, column);
	}
	
	public bool SetHeaderData(int32 section, int64 orientation, IQVariant value, int32 role)
	{
		return CQt.QAbstractItemModel_SetHeaderData(this.nativePtr, section, (int64)orientation, (value == default || value.NativePtr == default) ? default : value.NativePtr, role);
	}
	
	public void* ItemData(IQModelIndex index)
	{
		return CQt.QAbstractItemModel_ItemData(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public bool SetItemData(IQModelIndex index, void* roles)
	{
		return CQt.QAbstractItemModel_SetItemData(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr, roles);
	}
	
	public bool ClearItemData(IQModelIndex index)
	{
		return CQt.QAbstractItemModel_ClearItemData(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public bool CanDropMimeData(IQMimeData data, int64 action, int32 row, int32 column, IQModelIndex parent)
	{
		return CQt.QAbstractItemModel_CanDropMimeData(this.nativePtr, (data == default || data.NativePtr == default) ? default : data.NativePtr, (int64)action, row, column, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public int64 SupportedDragActions()
	{
		return CQt.QAbstractItemModel_SupportedDragActions(this.nativePtr);
	}
	
	public bool InsertRows(int32 row, int32 count, IQModelIndex parent)
	{
		return CQt.QAbstractItemModel_InsertRows(this.nativePtr, row, count, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool InsertColumns(int32 column, int32 count, IQModelIndex parent)
	{
		return CQt.QAbstractItemModel_InsertColumns(this.nativePtr, column, count, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool RemoveRows(int32 row, int32 count, IQModelIndex parent)
	{
		return CQt.QAbstractItemModel_RemoveRows(this.nativePtr, row, count, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool RemoveColumns(int32 column, int32 count, IQModelIndex parent)
	{
		return CQt.QAbstractItemModel_RemoveColumns(this.nativePtr, column, count, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool MoveRows(IQModelIndex sourceParent, int32 sourceRow, int32 count, IQModelIndex destinationParent, int32 destinationChild)
	{
		return CQt.QAbstractItemModel_MoveRows(this.nativePtr, (sourceParent == default || sourceParent.NativePtr == default) ? default : sourceParent.NativePtr, sourceRow, count, (destinationParent == default || destinationParent.NativePtr == default) ? default : destinationParent.NativePtr, destinationChild);
	}
	
	public bool MoveColumns(IQModelIndex sourceParent, int32 sourceColumn, int32 count, IQModelIndex destinationParent, int32 destinationChild)
	{
		return CQt.QAbstractItemModel_MoveColumns(this.nativePtr, (sourceParent == default || sourceParent.NativePtr == default) ? default : sourceParent.NativePtr, sourceColumn, count, (destinationParent == default || destinationParent.NativePtr == default) ? default : destinationParent.NativePtr, destinationChild);
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
	
	public bool MoveRow(IQModelIndex sourceParent, int32 sourceRow, IQModelIndex destinationParent, int32 destinationChild)
	{
		return CQt.QAbstractItemModel_MoveRow(this.nativePtr, (sourceParent == default || sourceParent.NativePtr == default) ? default : sourceParent.NativePtr, sourceRow, (destinationParent == default || destinationParent.NativePtr == default) ? default : destinationParent.NativePtr, destinationChild);
	}
	
	public bool MoveColumn(IQModelIndex sourceParent, int32 sourceColumn, IQModelIndex destinationParent, int32 destinationChild)
	{
		return CQt.QAbstractItemModel_MoveColumn(this.nativePtr, (sourceParent == default || sourceParent.NativePtr == default) ? default : sourceParent.NativePtr, sourceColumn, (destinationParent == default || destinationParent.NativePtr == default) ? default : destinationParent.NativePtr, destinationChild);
	}
	
	public void Buddy(IQModelIndex index)
	{
		CQt.QAbstractItemModel_Buddy(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void[] Match(IQModelIndex start, int32 role, IQVariant value, int32 hits, int64 flags)
	{
		return CQt.QAbstractItemModel_Match(this.nativePtr, (start == default || start.NativePtr == default) ? default : start.NativePtr, role, (value == default || value.NativePtr == default) ? default : value.NativePtr, hits, flags);
	}
	
	public void Span(IQModelIndex index)
	{
		CQt.QAbstractItemModel_Span(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public bool CheckIndex(IQModelIndex index)
	{
		return CQt.QAbstractItemModel_CheckIndex(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void MultiData(IQModelIndex index, IQModelRoleDataSpan roleDataSpan)
	{
		CQt.QAbstractItemModel_MultiData(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr, default);
	}
	
	public bool Submit()
	{
		return CQt.QAbstractItemModel_Submit(this.nativePtr);
	}
	
	public void Revert()
	{
		CQt.QAbstractItemModel_Revert(this.nativePtr);
	}
	
	public bool HasIndex3(int32 row, int32 column, IQModelIndex parent)
	{
		return CQt.QAbstractItemModel_HasIndex3(this.nativePtr, row, column, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool InsertRow2(int32 row, IQModelIndex parent)
	{
		return CQt.QAbstractItemModel_InsertRow2(this.nativePtr, row, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool InsertColumn2(int32 column, IQModelIndex parent)
	{
		return CQt.QAbstractItemModel_InsertColumn2(this.nativePtr, column, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool RemoveRow2(int32 row, IQModelIndex parent)
	{
		return CQt.QAbstractItemModel_RemoveRow2(this.nativePtr, row, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool RemoveColumn2(int32 column, IQModelIndex parent)
	{
		return CQt.QAbstractItemModel_RemoveColumn2(this.nativePtr, column, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool CheckIndex2(IQModelIndex index, int64 options)
	{
		return CQt.QAbstractItemModel_CheckIndex2(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr, options);
	}
	
	public bool EventFilter(IQObject watched, IQEvent event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, (watched == default || watched.NativePtr == default) ? default : watched.NativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(char8* name)
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
	
	public void MoveToThread(IQThread thread)
	{
		CQt.QObject_MoveToThread(this.nativePtr, (thread == default || thread.NativePtr == default) ? default : thread.NativePtr);
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
	
	public void SetParent(IQObject parent)
	{
		CQt.QObject_SetParent(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, (filterObj == default || filterObj.NativePtr == default) ? default : filterObj.NativePtr);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, (obj == default || obj.NativePtr == default) ? default : obj.NativePtr);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		CQt.QObject_Connect((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (method == default || method.NativePtr == default) ? default : method.NativePtr);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		CQt.QObject_Connect2(this.nativePtr, (sender == default || sender.NativePtr == default) ? default : sender.NativePtr, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return CQt.QObject_Disconnect((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (member == default || member.NativePtr == default) ? default : member.NativePtr);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection((param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void DumpObjectTree()
	{
		CQt.QObject_DumpObjectTree(this.nativePtr);
	}
	
	public void DumpObjectInfo()
	{
		CQt.QObject_DumpObjectInfo(this.nativePtr);
	}
	
	public bool SetProperty(char8* name, IQVariant value)
	{
		return CQt.QObject_SetProperty(this.nativePtr, name, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public void Property(char8* name)
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
	
	public bool Inherits(char8* classname)
	{
		return CQt.QObject_Inherits(this.nativePtr, classname);
	}
	
	public void DeleteLater()
	{
		CQt.QObject_DeleteLater(this.nativePtr);
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return CQt.QObject_StartTimer2(this.nativePtr, interval, (int64)timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		CQt.QObject_Connect5((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (method == default || method.NativePtr == default) ? default : method.NativePtr, (int64)typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		CQt.QObject_Connect4(this.nativePtr, (sender == default || sender.NativePtr == default) ? default : sender.NativePtr, signal, member, (int64)typeVal);
	}
	
}
public class QFileSystemModel
{
	public QFileSystemModelPtr handle;
	
	public static implicit operator QFileSystemModelPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QFileSystemModelPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* MetaObject()
	{
		return this.handle.MetaObject();
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return this.handle.Metacast(param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return this.handle.Metacall(param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return QFileSystemModelPtr.Tr(s);
	}
	
	public virtual void Index(int32 row, int32 column, IQModelIndex parent)
	{
		this.handle.Index(row, column, parent);
	}
	
	public void IndexWithPath(String path)
	{
		this.handle.IndexWithPath(path);
	}
	
	public virtual void Parent(IQModelIndex child)
	{
		this.handle.Parent(child);
	}
	
	public virtual void Sibling(int32 row, int32 column, IQModelIndex idx)
	{
		this.handle.Sibling(row, column, idx);
	}
	
	public virtual bool HasChildren(IQModelIndex parent)
	{
		return this.handle.HasChildren(parent);
	}
	
	public virtual bool CanFetchMore(IQModelIndex parent)
	{
		return this.handle.CanFetchMore(parent);
	}
	
	public virtual void FetchMore(IQModelIndex parent)
	{
		this.handle.FetchMore(parent);
	}
	
	public virtual int32 RowCount(IQModelIndex parent)
	{
		return this.handle.RowCount(parent);
	}
	
	public virtual int32 ColumnCount(IQModelIndex parent)
	{
		return this.handle.ColumnCount(parent);
	}
	
	public void MyComputer()
	{
		this.handle.MyComputer();
	}
	
	public virtual void Data(IQModelIndex index, int32 role)
	{
		this.handle.Data(index, role);
	}
	
	public virtual bool SetData(IQModelIndex index, IQVariant value, int32 role)
	{
		return this.handle.SetData(index, value, role);
	}
	
	public virtual void HeaderData(int32 section, int64 orientation, int32 role)
	{
		this.handle.HeaderData(section, orientation, role);
	}
	
	public virtual int64 Flags(IQModelIndex index)
	{
		return this.handle.Flags(index);
	}
	
	public virtual void Sort(int32 column, int64 order)
	{
		this.handle.Sort(column, order);
	}
	
	public virtual libqt_string[] MimeTypes()
	{
		return this.handle.MimeTypes();
	}
	
	public virtual void* MimeData(IQModelIndex[] indexes)
	{
		return this.handle.MimeData(null);
	}
	
	public virtual bool DropMimeData(IQMimeData data, int64 action, int32 row, int32 column, IQModelIndex parent)
	{
		return this.handle.DropMimeData(data, action, row, column, parent);
	}
	
	public virtual int64 SupportedDropActions()
	{
		return this.handle.SupportedDropActions();
	}
	
	public virtual void* RoleNames()
	{
		return this.handle.RoleNames();
	}
	
	public void SetRootPath(String path)
	{
		this.handle.SetRootPath(path);
	}
	
	public libqt_string RootPath()
	{
		return this.handle.RootPath();
	}
	
	public void RootDirectory()
	{
		this.handle.RootDirectory();
	}
	
	public void SetIconProvider(IQAbstractFileIconProvider provider)
	{
		this.handle.SetIconProvider(provider);
	}
	
	public void* IconProvider()
	{
		return this.handle.IconProvider();
	}
	
	public void SetFilter(int64 filters)
	{
		this.handle.SetFilter(filters);
	}
	
	public int64 Filter()
	{
		return this.handle.Filter();
	}
	
	public void SetResolveSymlinks(bool enable)
	{
		this.handle.SetResolveSymlinks(enable);
	}
	
	public bool ResolveSymlinks()
	{
		return this.handle.ResolveSymlinks();
	}
	
	public void SetReadOnly(bool enable)
	{
		this.handle.SetReadOnly(enable);
	}
	
	public bool IsReadOnly()
	{
		return this.handle.IsReadOnly();
	}
	
	public void SetNameFilterDisables(bool enable)
	{
		this.handle.SetNameFilterDisables(enable);
	}
	
	public bool NameFilterDisables()
	{
		return this.handle.NameFilterDisables();
	}
	
	public void SetNameFilters(String[] filters)
	{
		this.handle.SetNameFilters(null);
	}
	
	public libqt_string[] NameFilters()
	{
		return this.handle.NameFilters();
	}
	
	public void SetOption(int64 option)
	{
		this.handle.SetOption(option);
	}
	
	public bool TestOption(int64 option)
	{
		return this.handle.TestOption(option);
	}
	
	public void SetOptions(int64 options)
	{
		this.handle.SetOptions(options);
	}
	
	public int64 Options()
	{
		return this.handle.Options();
	}
	
	public libqt_string FilePath(IQModelIndex index)
	{
		return this.handle.FilePath(index);
	}
	
	public bool IsDir(IQModelIndex index)
	{
		return this.handle.IsDir(index);
	}
	
	public int64 Size(IQModelIndex index)
	{
		return this.handle.Size(index);
	}
	
	public libqt_string Type(IQModelIndex index)
	{
		return this.handle.Type(index);
	}
	
	public void LastModified(IQModelIndex index)
	{
		this.handle.LastModified(index);
	}
	
	public void Mkdir(IQModelIndex parent, String name)
	{
		this.handle.Mkdir(parent, name);
	}
	
	public bool Rmdir(IQModelIndex index)
	{
		return this.handle.Rmdir(index);
	}
	
	public libqt_string FileName(IQModelIndex index)
	{
		return this.handle.FileName(index);
	}
	
	public void FileIcon(IQModelIndex index)
	{
		this.handle.FileIcon(index);
	}
	
	public int64 Permissions(IQModelIndex index)
	{
		return this.handle.Permissions(index);
	}
	
	public void FileInfo(IQModelIndex index)
	{
		this.handle.FileInfo(index);
	}
	
	public bool Remove(IQModelIndex index)
	{
		return this.handle.Remove(index);
	}
	
	public virtual void TimerEvent(IQTimerEvent event)
	{
		this.handle.TimerEvent(event);
	}
	
	public virtual bool Event(IQEvent event)
	{
		return this.handle.Event(event);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QFileSystemModelPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QFileSystemModelPtr.Tr3(s, c, n);
	}
	
	public void Index2(String path, int32 column)
	{
		this.handle.Index2(path, column);
	}
	
	public void MyComputer1(int32 role)
	{
		this.handle.MyComputer1(role);
	}
	
	public void SetOption2(int64 option, bool on)
	{
		this.handle.SetOption2(option, on);
	}
	
	public bool HasIndex(int32 row, int32 column)
	{
		return this.handle.HasIndex(row, column);
	}
	
	public virtual bool SetHeaderData(int32 section, int64 orientation, IQVariant value, int32 role)
	{
		return this.handle.SetHeaderData(section, orientation, value, role);
	}
	
	public virtual void* ItemData(IQModelIndex index)
	{
		return this.handle.ItemData(index);
	}
	
	public virtual bool SetItemData(IQModelIndex index, void* roles)
	{
		return this.handle.SetItemData(index, roles);
	}
	
	public virtual bool ClearItemData(IQModelIndex index)
	{
		return this.handle.ClearItemData(index);
	}
	
	public virtual bool CanDropMimeData(IQMimeData data, int64 action, int32 row, int32 column, IQModelIndex parent)
	{
		return this.handle.CanDropMimeData(data, action, row, column, parent);
	}
	
	public virtual int64 SupportedDragActions()
	{
		return this.handle.SupportedDragActions();
	}
	
	public virtual bool InsertRows(int32 row, int32 count, IQModelIndex parent)
	{
		return this.handle.InsertRows(row, count, parent);
	}
	
	public virtual bool InsertColumns(int32 column, int32 count, IQModelIndex parent)
	{
		return this.handle.InsertColumns(column, count, parent);
	}
	
	public virtual bool RemoveRows(int32 row, int32 count, IQModelIndex parent)
	{
		return this.handle.RemoveRows(row, count, parent);
	}
	
	public virtual bool RemoveColumns(int32 column, int32 count, IQModelIndex parent)
	{
		return this.handle.RemoveColumns(column, count, parent);
	}
	
	public virtual bool MoveRows(IQModelIndex sourceParent, int32 sourceRow, int32 count, IQModelIndex destinationParent, int32 destinationChild)
	{
		return this.handle.MoveRows(sourceParent, sourceRow, count, destinationParent, destinationChild);
	}
	
	public virtual bool MoveColumns(IQModelIndex sourceParent, int32 sourceColumn, int32 count, IQModelIndex destinationParent, int32 destinationChild)
	{
		return this.handle.MoveColumns(sourceParent, sourceColumn, count, destinationParent, destinationChild);
	}
	
	public bool InsertRow(int32 row)
	{
		return this.handle.InsertRow(row);
	}
	
	public bool InsertColumn(int32 column)
	{
		return this.handle.InsertColumn(column);
	}
	
	public bool RemoveRow(int32 row)
	{
		return this.handle.RemoveRow(row);
	}
	
	public bool RemoveColumn(int32 column)
	{
		return this.handle.RemoveColumn(column);
	}
	
	public bool MoveRow(IQModelIndex sourceParent, int32 sourceRow, IQModelIndex destinationParent, int32 destinationChild)
	{
		return this.handle.MoveRow(sourceParent, sourceRow, destinationParent, destinationChild);
	}
	
	public bool MoveColumn(IQModelIndex sourceParent, int32 sourceColumn, IQModelIndex destinationParent, int32 destinationChild)
	{
		return this.handle.MoveColumn(sourceParent, sourceColumn, destinationParent, destinationChild);
	}
	
	public virtual void Buddy(IQModelIndex index)
	{
		this.handle.Buddy(index);
	}
	
	public virtual void[] Match(IQModelIndex start, int32 role, IQVariant value, int32 hits, int64 flags)
	{
		return this.handle.Match(start, role, value, hits, flags);
	}
	
	public virtual void Span(IQModelIndex index)
	{
		this.handle.Span(index);
	}
	
	public bool CheckIndex(IQModelIndex index)
	{
		return this.handle.CheckIndex(index);
	}
	
	public virtual void MultiData(IQModelIndex index, IQModelRoleDataSpan roleDataSpan)
	{
		this.handle.MultiData(index, default);
	}
	
	public virtual bool Submit()
	{
		return this.handle.Submit();
	}
	
	public virtual void Revert()
	{
		this.handle.Revert();
	}
	
	public bool HasIndex3(int32 row, int32 column, IQModelIndex parent)
	{
		return this.handle.HasIndex3(row, column, parent);
	}
	
	public bool InsertRow2(int32 row, IQModelIndex parent)
	{
		return this.handle.InsertRow2(row, parent);
	}
	
	public bool InsertColumn2(int32 column, IQModelIndex parent)
	{
		return this.handle.InsertColumn2(column, parent);
	}
	
	public bool RemoveRow2(int32 row, IQModelIndex parent)
	{
		return this.handle.RemoveRow2(row, parent);
	}
	
	public bool RemoveColumn2(int32 column, IQModelIndex parent)
	{
		return this.handle.RemoveColumn2(column, parent);
	}
	
	public bool CheckIndex2(IQModelIndex index, int64 options)
	{
		return this.handle.CheckIndex2(index, options);
	}
	
	public virtual bool EventFilter(IQObject watched, IQEvent event)
	{
		return this.handle.EventFilter(watched, event);
	}
	
	public libqt_string ObjectName()
	{
		return this.handle.ObjectName();
	}
	
	public void SetObjectName(char8* name)
	{
		this.handle.SetObjectName(name);
	}
	
	public bool IsWidgetType()
	{
		return this.handle.IsWidgetType();
	}
	
	public bool IsWindowType()
	{
		return this.handle.IsWindowType();
	}
	
	public bool IsQuickItemType()
	{
		return this.handle.IsQuickItemType();
	}
	
	public bool SignalsBlocked()
	{
		return this.handle.SignalsBlocked();
	}
	
	public bool BlockSignals(bool b)
	{
		return this.handle.BlockSignals(b);
	}
	
	public void* Thread()
	{
		return this.handle.Thread();
	}
	
	public void MoveToThread(IQThread thread)
	{
		this.handle.MoveToThread(thread);
	}
	
	public int32 StartTimer(int32 interval)
	{
		return this.handle.StartTimer(interval);
	}
	
	public void KillTimer(int32 id)
	{
		this.handle.KillTimer(id);
	}
	
	public void*[] Children()
	{
		return this.handle.Children();
	}
	
	public void SetParent(IQObject parent)
	{
		this.handle.SetParent(parent);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		this.handle.InstallEventFilter(filterObj);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		this.handle.RemoveEventFilter(obj);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		QFileSystemModelPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QFileSystemModelPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QFileSystemModelPtr.DisconnectWithQMetaObjectConnection(param1);
	}
	
	public void DumpObjectTree()
	{
		this.handle.DumpObjectTree();
	}
	
	public void DumpObjectInfo()
	{
		this.handle.DumpObjectInfo();
	}
	
	public bool SetProperty(char8* name, IQVariant value)
	{
		return this.handle.SetProperty(name, value);
	}
	
	public void Property(char8* name)
	{
		this.handle.Property(name);
	}
	
	public libqt_string[] DynamicPropertyNames()
	{
		return this.handle.DynamicPropertyNames();
	}
	
	public void* BindingStorage()
	{
		return this.handle.BindingStorage();
	}
	
	public void* BindingStorage2()
	{
		return this.handle.BindingStorage2();
	}
	
	public bool Inherits(char8* classname)
	{
		return this.handle.Inherits(classname);
	}
	
	public void DeleteLater()
	{
		this.handle.DeleteLater();
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return this.handle.StartTimer2(interval, timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		QFileSystemModelPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
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
	public static extern void* QFileSystemModel_Metacast(void* c_this, char8* param1);
	[LinkName("QFileSystemModel_Metacall")]
	public static extern int32 QFileSystemModel_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QFileSystemModel_Tr")]
	public static extern libqt_string QFileSystemModel_Tr(char8* s);
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
	public static extern libqt_string QFileSystemModel_Tr2(char8* s, char8* c);
	[LinkName("QFileSystemModel_Tr3")]
	public static extern libqt_string QFileSystemModel_Tr3(char8* s, char8* c, int32 n);
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