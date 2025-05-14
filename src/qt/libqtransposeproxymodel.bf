using System;
using System.Interop;
namespace Qt;

public interface IQTransposeProxyModel
{
	void* NativePtr { get; }
}
public struct QTransposeProxyModelPtr : IQTransposeProxyModel, IDisposable, IQAbstractProxyModel
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QTransposeProxyModel_new());
	}
	
	public void Dispose()
	{
		CQt.QTransposeProxyModel_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QTransposeProxyModel_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QTransposeProxyModel_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QTransposeProxyModel_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QTransposeProxyModel_Tr(s);
	}
	
	public void SetSourceModel(IQAbstractItemModel newSourceModel)
	{
		CQt.QTransposeProxyModel_SetSourceModel(this.nativePtr, (newSourceModel == default || newSourceModel.NativePtr == default) ? default : newSourceModel.NativePtr);
	}
	
	public int32 RowCount(IQModelIndex parent)
	{
		return CQt.QTransposeProxyModel_RowCount(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public int32 ColumnCount(IQModelIndex parent)
	{
		return CQt.QTransposeProxyModel_ColumnCount(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void HeaderData(int32 section, int64 orientation, int32 role)
	{
		CQt.QTransposeProxyModel_HeaderData(this.nativePtr, section, (int64)orientation, role);
	}
	
	public bool SetHeaderData(int32 section, int64 orientation, IQVariant value, int32 role)
	{
		return CQt.QTransposeProxyModel_SetHeaderData(this.nativePtr, section, (int64)orientation, (value == default || value.NativePtr == default) ? default : value.NativePtr, role);
	}
	
	public bool SetItemData(IQModelIndex index, void* roles)
	{
		return CQt.QTransposeProxyModel_SetItemData(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr, roles);
	}
	
	public void Span(IQModelIndex index)
	{
		CQt.QTransposeProxyModel_Span(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void* ItemData(IQModelIndex index)
	{
		return CQt.QTransposeProxyModel_ItemData(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void MapFromSource(IQModelIndex sourceIndex)
	{
		CQt.QTransposeProxyModel_MapFromSource(this.nativePtr, (sourceIndex == default || sourceIndex.NativePtr == default) ? default : sourceIndex.NativePtr);
	}
	
	public void MapToSource(IQModelIndex proxyIndex)
	{
		CQt.QTransposeProxyModel_MapToSource(this.nativePtr, (proxyIndex == default || proxyIndex.NativePtr == default) ? default : proxyIndex.NativePtr);
	}
	
	public void Parent(IQModelIndex index)
	{
		CQt.QTransposeProxyModel_Parent(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void Index(int32 row, int32 column, IQModelIndex parent)
	{
		CQt.QTransposeProxyModel_Index(this.nativePtr, row, column, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool InsertRows(int32 row, int32 count, IQModelIndex parent)
	{
		return CQt.QTransposeProxyModel_InsertRows(this.nativePtr, row, count, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool RemoveRows(int32 row, int32 count, IQModelIndex parent)
	{
		return CQt.QTransposeProxyModel_RemoveRows(this.nativePtr, row, count, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool MoveRows(IQModelIndex sourceParent, int32 sourceRow, int32 count, IQModelIndex destinationParent, int32 destinationChild)
	{
		return CQt.QTransposeProxyModel_MoveRows(this.nativePtr, (sourceParent == default || sourceParent.NativePtr == default) ? default : sourceParent.NativePtr, sourceRow, count, (destinationParent == default || destinationParent.NativePtr == default) ? default : destinationParent.NativePtr, destinationChild);
	}
	
	public bool InsertColumns(int32 column, int32 count, IQModelIndex parent)
	{
		return CQt.QTransposeProxyModel_InsertColumns(this.nativePtr, column, count, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool RemoveColumns(int32 column, int32 count, IQModelIndex parent)
	{
		return CQt.QTransposeProxyModel_RemoveColumns(this.nativePtr, column, count, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool MoveColumns(IQModelIndex sourceParent, int32 sourceColumn, int32 count, IQModelIndex destinationParent, int32 destinationChild)
	{
		return CQt.QTransposeProxyModel_MoveColumns(this.nativePtr, (sourceParent == default || sourceParent.NativePtr == default) ? default : sourceParent.NativePtr, sourceColumn, count, (destinationParent == default || destinationParent.NativePtr == default) ? default : destinationParent.NativePtr, destinationChild);
	}
	
	public void Sort(int32 column, int64 order)
	{
		CQt.QTransposeProxyModel_Sort(this.nativePtr, column, (int64)order);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QTransposeProxyModel_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QTransposeProxyModel_Tr3(s, c, n);
	}
	
	public void* SourceModel()
	{
		return CQt.QAbstractProxyModel_SourceModel(this.nativePtr);
	}
	
	public void MapSelectionToSource(IQItemSelection selection)
	{
		CQt.QAbstractProxyModel_MapSelectionToSource(this.nativePtr, (selection == default || selection.NativePtr == default) ? default : selection.NativePtr);
	}
	
	public void MapSelectionFromSource(IQItemSelection selection)
	{
		CQt.QAbstractProxyModel_MapSelectionFromSource(this.nativePtr, (selection == default || selection.NativePtr == default) ? default : selection.NativePtr);
	}
	
	public bool Submit()
	{
		return CQt.QAbstractProxyModel_Submit(this.nativePtr);
	}
	
	public void Revert()
	{
		CQt.QAbstractProxyModel_Revert(this.nativePtr);
	}
	
	public void Data(IQModelIndex proxyIndex, int32 role)
	{
		CQt.QAbstractProxyModel_Data(this.nativePtr, (proxyIndex == default || proxyIndex.NativePtr == default) ? default : proxyIndex.NativePtr, role);
	}
	
	public int64 Flags(IQModelIndex index)
	{
		return CQt.QAbstractProxyModel_Flags(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public bool SetData(IQModelIndex index, IQVariant value, int32 role)
	{
		return CQt.QAbstractProxyModel_SetData(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr, (value == default || value.NativePtr == default) ? default : value.NativePtr, role);
	}
	
	public bool ClearItemData(IQModelIndex index)
	{
		return CQt.QAbstractProxyModel_ClearItemData(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void Buddy(IQModelIndex index)
	{
		CQt.QAbstractProxyModel_Buddy(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public bool CanFetchMore(IQModelIndex parent)
	{
		return CQt.QAbstractProxyModel_CanFetchMore(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void FetchMore(IQModelIndex parent)
	{
		CQt.QAbstractProxyModel_FetchMore(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool HasChildren(IQModelIndex parent)
	{
		return CQt.QAbstractProxyModel_HasChildren(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void Sibling(int32 row, int32 column, IQModelIndex idx)
	{
		CQt.QAbstractProxyModel_Sibling(this.nativePtr, row, column, (idx == default || idx.NativePtr == default) ? default : idx.NativePtr);
	}
	
	public void* MimeData(IQModelIndex[] indexes)
	{
		return CQt.QAbstractProxyModel_MimeData(this.nativePtr, null);
	}
	
	public bool CanDropMimeData(IQMimeData data, int64 action, int32 row, int32 column, IQModelIndex parent)
	{
		return CQt.QAbstractProxyModel_CanDropMimeData(this.nativePtr, (data == default || data.NativePtr == default) ? default : data.NativePtr, (int64)action, row, column, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool DropMimeData(IQMimeData data, int64 action, int32 row, int32 column, IQModelIndex parent)
	{
		return CQt.QAbstractProxyModel_DropMimeData(this.nativePtr, (data == default || data.NativePtr == default) ? default : data.NativePtr, (int64)action, row, column, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public libqt_string[] MimeTypes()
	{
		return CQt.QAbstractProxyModel_MimeTypes(this.nativePtr);
	}
	
	public int64 SupportedDragActions()
	{
		return CQt.QAbstractProxyModel_SupportedDragActions(this.nativePtr);
	}
	
	public int64 SupportedDropActions()
	{
		return CQt.QAbstractProxyModel_SupportedDropActions(this.nativePtr);
	}
	
	public void* RoleNames()
	{
		return CQt.QAbstractProxyModel_RoleNames(this.nativePtr);
	}
	
	public bool HasIndex(int32 row, int32 column)
	{
		return CQt.QAbstractItemModel_HasIndex(this.nativePtr, row, column);
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
	
	public void[] Match(IQModelIndex start, int32 role, IQVariant value, int32 hits, int64 flags)
	{
		return CQt.QAbstractItemModel_Match(this.nativePtr, (start == default || start.NativePtr == default) ? default : start.NativePtr, role, (value == default || value.NativePtr == default) ? default : value.NativePtr, hits, flags);
	}
	
	public bool CheckIndex(IQModelIndex index)
	{
		return CQt.QAbstractItemModel_CheckIndex(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void MultiData(IQModelIndex index, IQModelRoleDataSpan roleDataSpan)
	{
		CQt.QAbstractItemModel_MultiData(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr, default);
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
	
	public bool Event(IQEvent event)
	{
		return CQt.QObject_Event(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
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
public class QTransposeProxyModel
{
	public QTransposeProxyModelPtr handle;
	
	public static implicit operator QTransposeProxyModelPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QTransposeProxyModelPtr.New();
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
		return QTransposeProxyModelPtr.Tr(s);
	}
	
	public virtual void SetSourceModel(IQAbstractItemModel newSourceModel)
	{
		this.handle.SetSourceModel(newSourceModel);
	}
	
	public virtual int32 RowCount(IQModelIndex parent)
	{
		return this.handle.RowCount(parent);
	}
	
	public virtual int32 ColumnCount(IQModelIndex parent)
	{
		return this.handle.ColumnCount(parent);
	}
	
	public virtual void HeaderData(int32 section, int64 orientation, int32 role)
	{
		this.handle.HeaderData(section, orientation, role);
	}
	
	public virtual bool SetHeaderData(int32 section, int64 orientation, IQVariant value, int32 role)
	{
		return this.handle.SetHeaderData(section, orientation, value, role);
	}
	
	public virtual bool SetItemData(IQModelIndex index, void* roles)
	{
		return this.handle.SetItemData(index, roles);
	}
	
	public virtual void Span(IQModelIndex index)
	{
		this.handle.Span(index);
	}
	
	public virtual void* ItemData(IQModelIndex index)
	{
		return this.handle.ItemData(index);
	}
	
	public virtual void MapFromSource(IQModelIndex sourceIndex)
	{
		this.handle.MapFromSource(sourceIndex);
	}
	
	public virtual void MapToSource(IQModelIndex proxyIndex)
	{
		this.handle.MapToSource(proxyIndex);
	}
	
	public virtual void Parent(IQModelIndex index)
	{
		this.handle.Parent(index);
	}
	
	public virtual void Index(int32 row, int32 column, IQModelIndex parent)
	{
		this.handle.Index(row, column, parent);
	}
	
	public virtual bool InsertRows(int32 row, int32 count, IQModelIndex parent)
	{
		return this.handle.InsertRows(row, count, parent);
	}
	
	public virtual bool RemoveRows(int32 row, int32 count, IQModelIndex parent)
	{
		return this.handle.RemoveRows(row, count, parent);
	}
	
	public virtual bool MoveRows(IQModelIndex sourceParent, int32 sourceRow, int32 count, IQModelIndex destinationParent, int32 destinationChild)
	{
		return this.handle.MoveRows(sourceParent, sourceRow, count, destinationParent, destinationChild);
	}
	
	public virtual bool InsertColumns(int32 column, int32 count, IQModelIndex parent)
	{
		return this.handle.InsertColumns(column, count, parent);
	}
	
	public virtual bool RemoveColumns(int32 column, int32 count, IQModelIndex parent)
	{
		return this.handle.RemoveColumns(column, count, parent);
	}
	
	public virtual bool MoveColumns(IQModelIndex sourceParent, int32 sourceColumn, int32 count, IQModelIndex destinationParent, int32 destinationChild)
	{
		return this.handle.MoveColumns(sourceParent, sourceColumn, count, destinationParent, destinationChild);
	}
	
	public virtual void Sort(int32 column, int64 order)
	{
		this.handle.Sort(column, order);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QTransposeProxyModelPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QTransposeProxyModelPtr.Tr3(s, c, n);
	}
	
	public void* SourceModel()
	{
		return this.handle.SourceModel();
	}
	
	public virtual void MapSelectionToSource(IQItemSelection selection)
	{
		this.handle.MapSelectionToSource(selection);
	}
	
	public virtual void MapSelectionFromSource(IQItemSelection selection)
	{
		this.handle.MapSelectionFromSource(selection);
	}
	
	public virtual bool Submit()
	{
		return this.handle.Submit();
	}
	
	public virtual void Revert()
	{
		this.handle.Revert();
	}
	
	public virtual void Data(IQModelIndex proxyIndex, int32 role)
	{
		this.handle.Data(proxyIndex, role);
	}
	
	public virtual int64 Flags(IQModelIndex index)
	{
		return this.handle.Flags(index);
	}
	
	public virtual bool SetData(IQModelIndex index, IQVariant value, int32 role)
	{
		return this.handle.SetData(index, value, role);
	}
	
	public virtual bool ClearItemData(IQModelIndex index)
	{
		return this.handle.ClearItemData(index);
	}
	
	public virtual void Buddy(IQModelIndex index)
	{
		this.handle.Buddy(index);
	}
	
	public virtual bool CanFetchMore(IQModelIndex parent)
	{
		return this.handle.CanFetchMore(parent);
	}
	
	public virtual void FetchMore(IQModelIndex parent)
	{
		this.handle.FetchMore(parent);
	}
	
	public virtual bool HasChildren(IQModelIndex parent)
	{
		return this.handle.HasChildren(parent);
	}
	
	public virtual void Sibling(int32 row, int32 column, IQModelIndex idx)
	{
		this.handle.Sibling(row, column, idx);
	}
	
	public virtual void* MimeData(IQModelIndex[] indexes)
	{
		return this.handle.MimeData(null);
	}
	
	public virtual bool CanDropMimeData(IQMimeData data, int64 action, int32 row, int32 column, IQModelIndex parent)
	{
		return this.handle.CanDropMimeData(data, action, row, column, parent);
	}
	
	public virtual bool DropMimeData(IQMimeData data, int64 action, int32 row, int32 column, IQModelIndex parent)
	{
		return this.handle.DropMimeData(data, action, row, column, parent);
	}
	
	public virtual libqt_string[] MimeTypes()
	{
		return this.handle.MimeTypes();
	}
	
	public virtual int64 SupportedDragActions()
	{
		return this.handle.SupportedDragActions();
	}
	
	public virtual int64 SupportedDropActions()
	{
		return this.handle.SupportedDropActions();
	}
	
	public virtual void* RoleNames()
	{
		return this.handle.RoleNames();
	}
	
	public bool HasIndex(int32 row, int32 column)
	{
		return this.handle.HasIndex(row, column);
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
	
	public virtual void[] Match(IQModelIndex start, int32 role, IQVariant value, int32 hits, int64 flags)
	{
		return this.handle.Match(start, role, value, hits, flags);
	}
	
	public bool CheckIndex(IQModelIndex index)
	{
		return this.handle.CheckIndex(index);
	}
	
	public virtual void MultiData(IQModelIndex index, IQModelRoleDataSpan roleDataSpan)
	{
		this.handle.MultiData(index, default);
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
	
	public virtual bool Event(IQEvent event)
	{
		return this.handle.Event(event);
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
		QTransposeProxyModelPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QTransposeProxyModelPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QTransposeProxyModelPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QTransposeProxyModelPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QTransposeProxyModel_new")]
	public static extern void* QTransposeProxyModel_new();
	[LinkName("QTransposeProxyModel_new2")]
	public static extern void* QTransposeProxyModel_new2(void* parent);
	[LinkName("QTransposeProxyModel_MetaObject")]
	public static extern void* QTransposeProxyModel_MetaObject(void* c_this);
	[LinkName("QTransposeProxyModel_Metacast")]
	public static extern void* QTransposeProxyModel_Metacast(void* c_this, char8* param1);
	[LinkName("QTransposeProxyModel_Metacall")]
	public static extern int32 QTransposeProxyModel_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QTransposeProxyModel_Tr")]
	public static extern libqt_string QTransposeProxyModel_Tr(char8* s);
	[LinkName("QTransposeProxyModel_SetSourceModel")]
	public static extern void QTransposeProxyModel_SetSourceModel(void* c_this, void* newSourceModel);
	[LinkName("QTransposeProxyModel_RowCount")]
	public static extern int32 QTransposeProxyModel_RowCount(void* c_this, void* parent);
	[LinkName("QTransposeProxyModel_ColumnCount")]
	public static extern int32 QTransposeProxyModel_ColumnCount(void* c_this, void* parent);
	[LinkName("QTransposeProxyModel_HeaderData")]
	public static extern void QTransposeProxyModel_HeaderData(void* c_this, int32 section, int64 orientation, int32 role);
	[LinkName("QTransposeProxyModel_SetHeaderData")]
	public static extern bool QTransposeProxyModel_SetHeaderData(void* c_this, int32 section, int64 orientation, void* value, int32 role);
	[LinkName("QTransposeProxyModel_SetItemData")]
	public static extern bool QTransposeProxyModel_SetItemData(void* c_this, void* index, void* roles);
	[LinkName("QTransposeProxyModel_Span")]
	public static extern void QTransposeProxyModel_Span(void* c_this, void* index);
	[LinkName("QTransposeProxyModel_ItemData")]
	public static extern void* QTransposeProxyModel_ItemData(void* c_this, void* index);
	[LinkName("QTransposeProxyModel_MapFromSource")]
	public static extern void QTransposeProxyModel_MapFromSource(void* c_this, void* sourceIndex);
	[LinkName("QTransposeProxyModel_MapToSource")]
	public static extern void QTransposeProxyModel_MapToSource(void* c_this, void* proxyIndex);
	[LinkName("QTransposeProxyModel_Parent")]
	public static extern void QTransposeProxyModel_Parent(void* c_this, void* index);
	[LinkName("QTransposeProxyModel_Index")]
	public static extern void QTransposeProxyModel_Index(void* c_this, int32 row, int32 column, void* parent);
	[LinkName("QTransposeProxyModel_InsertRows")]
	public static extern bool QTransposeProxyModel_InsertRows(void* c_this, int32 row, int32 count, void* parent);
	[LinkName("QTransposeProxyModel_RemoveRows")]
	public static extern bool QTransposeProxyModel_RemoveRows(void* c_this, int32 row, int32 count, void* parent);
	[LinkName("QTransposeProxyModel_MoveRows")]
	public static extern bool QTransposeProxyModel_MoveRows(void* c_this, void* sourceParent, int32 sourceRow, int32 count, void* destinationParent, int32 destinationChild);
	[LinkName("QTransposeProxyModel_InsertColumns")]
	public static extern bool QTransposeProxyModel_InsertColumns(void* c_this, int32 column, int32 count, void* parent);
	[LinkName("QTransposeProxyModel_RemoveColumns")]
	public static extern bool QTransposeProxyModel_RemoveColumns(void* c_this, int32 column, int32 count, void* parent);
	[LinkName("QTransposeProxyModel_MoveColumns")]
	public static extern bool QTransposeProxyModel_MoveColumns(void* c_this, void* sourceParent, int32 sourceColumn, int32 count, void* destinationParent, int32 destinationChild);
	[LinkName("QTransposeProxyModel_Sort")]
	public static extern void QTransposeProxyModel_Sort(void* c_this, int32 column, int64 order);
	[LinkName("QTransposeProxyModel_Tr2")]
	public static extern libqt_string QTransposeProxyModel_Tr2(char8* s, char8* c);
	[LinkName("QTransposeProxyModel_Tr3")]
	public static extern libqt_string QTransposeProxyModel_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QTransposeProxyModel_Delete")]
	public static extern void QTransposeProxyModel_Delete(void* self);
}