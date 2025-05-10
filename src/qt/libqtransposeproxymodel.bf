using System;
using System.Interop;
namespace Qt;

public class QTransposeProxyModel
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QTransposeProxyModel_new();
	}
	
	public ~this()
	{
		CQt.QTransposeProxyModel_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QTransposeProxyModel_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QTransposeProxyModel_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QTransposeProxyModel_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QTransposeProxyModel_Tr(s);
	}
	
	public virtual void SetSourceModel(void* newSourceModel)
	{
		CQt.QTransposeProxyModel_SetSourceModel(this.nativePtr, newSourceModel);
	}
	
	public virtual int32 RowCount(void* parent)
	{
		return CQt.QTransposeProxyModel_RowCount(this.nativePtr, parent);
	}
	
	public virtual int32 ColumnCount(void* parent)
	{
		return CQt.QTransposeProxyModel_ColumnCount(this.nativePtr, parent);
	}
	
	public virtual void HeaderData(int32 section, int64 orientation, int32 role)
	{
		CQt.QTransposeProxyModel_HeaderData(this.nativePtr, section, orientation, role);
	}
	
	public virtual bool SetHeaderData(int32 section, int64 orientation, void* value, int32 role)
	{
		return CQt.QTransposeProxyModel_SetHeaderData(this.nativePtr, section, orientation, value, role);
	}
	
	public virtual bool SetItemData(void* index, void* roles)
	{
		return CQt.QTransposeProxyModel_SetItemData(this.nativePtr, index, roles);
	}
	
	public virtual void Span(void* index)
	{
		CQt.QTransposeProxyModel_Span(this.nativePtr, index);
	}
	
	public virtual void* ItemData(void* index)
	{
		return CQt.QTransposeProxyModel_ItemData(this.nativePtr, index);
	}
	
	public virtual void MapFromSource(void* sourceIndex)
	{
		CQt.QTransposeProxyModel_MapFromSource(this.nativePtr, sourceIndex);
	}
	
	public virtual void MapToSource(void* proxyIndex)
	{
		CQt.QTransposeProxyModel_MapToSource(this.nativePtr, proxyIndex);
	}
	
	public virtual void Parent(void* index)
	{
		CQt.QTransposeProxyModel_Parent(this.nativePtr, index);
	}
	
	public virtual void Index(int32 row, int32 column, void* parent)
	{
		CQt.QTransposeProxyModel_Index(this.nativePtr, row, column, parent);
	}
	
	public virtual bool InsertRows(int32 row, int32 count, void* parent)
	{
		return CQt.QTransposeProxyModel_InsertRows(this.nativePtr, row, count, parent);
	}
	
	public virtual bool RemoveRows(int32 row, int32 count, void* parent)
	{
		return CQt.QTransposeProxyModel_RemoveRows(this.nativePtr, row, count, parent);
	}
	
	public virtual bool MoveRows(void* sourceParent, int32 sourceRow, int32 count, void* destinationParent, int32 destinationChild)
	{
		return CQt.QTransposeProxyModel_MoveRows(this.nativePtr, sourceParent, sourceRow, count, destinationParent, destinationChild);
	}
	
	public virtual bool InsertColumns(int32 column, int32 count, void* parent)
	{
		return CQt.QTransposeProxyModel_InsertColumns(this.nativePtr, column, count, parent);
	}
	
	public virtual bool RemoveColumns(int32 column, int32 count, void* parent)
	{
		return CQt.QTransposeProxyModel_RemoveColumns(this.nativePtr, column, count, parent);
	}
	
	public virtual bool MoveColumns(void* sourceParent, int32 sourceColumn, int32 count, void* destinationParent, int32 destinationChild)
	{
		return CQt.QTransposeProxyModel_MoveColumns(this.nativePtr, sourceParent, sourceColumn, count, destinationParent, destinationChild);
	}
	
	public virtual void Sort(int32 column, int64 order)
	{
		CQt.QTransposeProxyModel_Sort(this.nativePtr, column, order);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QTransposeProxyModel_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QTransposeProxyModel_Tr3(s, c, n);
	}
	
	public void* SourceModel()
	{
		return CQt.QAbstractProxyModel_SourceModel(this.nativePtr);
	}
	
	public virtual void MapSelectionToSource(void* selection)
	{
		CQt.QAbstractProxyModel_MapSelectionToSource(this.nativePtr, selection);
	}
	
	public virtual void MapSelectionFromSource(void* selection)
	{
		CQt.QAbstractProxyModel_MapSelectionFromSource(this.nativePtr, selection);
	}
	
	public virtual bool Submit()
	{
		return CQt.QAbstractProxyModel_Submit(this.nativePtr);
	}
	
	public virtual void Revert()
	{
		CQt.QAbstractProxyModel_Revert(this.nativePtr);
	}
	
	public virtual void Data(void* proxyIndex, int32 role)
	{
		CQt.QAbstractProxyModel_Data(this.nativePtr, proxyIndex, role);
	}
	
	public virtual int64 Flags(void* index)
	{
		return CQt.QAbstractProxyModel_Flags(this.nativePtr, index);
	}
	
	public virtual bool SetData(void* index, void* value, int32 role)
	{
		return CQt.QAbstractProxyModel_SetData(this.nativePtr, index, value, role);
	}
	
	public virtual bool ClearItemData(void* index)
	{
		return CQt.QAbstractProxyModel_ClearItemData(this.nativePtr, index);
	}
	
	public virtual void Buddy(void* index)
	{
		CQt.QAbstractProxyModel_Buddy(this.nativePtr, index);
	}
	
	public virtual bool CanFetchMore(void* parent)
	{
		return CQt.QAbstractProxyModel_CanFetchMore(this.nativePtr, parent);
	}
	
	public virtual void FetchMore(void* parent)
	{
		CQt.QAbstractProxyModel_FetchMore(this.nativePtr, parent);
	}
	
	public virtual bool HasChildren(void* parent)
	{
		return CQt.QAbstractProxyModel_HasChildren(this.nativePtr, parent);
	}
	
	public virtual void Sibling(int32 row, int32 column, void* idx)
	{
		CQt.QAbstractProxyModel_Sibling(this.nativePtr, row, column, idx);
	}
	
	public virtual void* MimeData(void[] indexes)
	{
		return CQt.QAbstractProxyModel_MimeData(this.nativePtr, indexes);
	}
	
	public virtual bool CanDropMimeData(void* data, int64 action, int32 row, int32 column, void* parent)
	{
		return CQt.QAbstractProxyModel_CanDropMimeData(this.nativePtr, data, action, row, column, parent);
	}
	
	public virtual bool DropMimeData(void* data, int64 action, int32 row, int32 column, void* parent)
	{
		return CQt.QAbstractProxyModel_DropMimeData(this.nativePtr, data, action, row, column, parent);
	}
	
	public virtual libqt_string[] MimeTypes()
	{
		return CQt.QAbstractProxyModel_MimeTypes(this.nativePtr);
	}
	
	public virtual int64 SupportedDragActions()
	{
		return CQt.QAbstractProxyModel_SupportedDragActions(this.nativePtr);
	}
	
	public virtual int64 SupportedDropActions()
	{
		return CQt.QAbstractProxyModel_SupportedDropActions(this.nativePtr);
	}
	
	public virtual void* RoleNames()
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
	
	public bool MoveRow(void* sourceParent, int32 sourceRow, void* destinationParent, int32 destinationChild)
	{
		return CQt.QAbstractItemModel_MoveRow(this.nativePtr, sourceParent, sourceRow, destinationParent, destinationChild);
	}
	
	public bool MoveColumn(void* sourceParent, int32 sourceColumn, void* destinationParent, int32 destinationChild)
	{
		return CQt.QAbstractItemModel_MoveColumn(this.nativePtr, sourceParent, sourceColumn, destinationParent, destinationChild);
	}
	
	public virtual void[] Match(void* start, int32 role, void* value, int32 hits, int64 flags)
	{
		return CQt.QAbstractItemModel_Match(this.nativePtr, start, role, value, hits, flags);
	}
	
	public bool CheckIndex(void* index)
	{
		return CQt.QAbstractItemModel_CheckIndex(this.nativePtr, index);
	}
	
	public virtual void MultiData(void* index, void roleDataSpan)
	{
		CQt.QAbstractItemModel_MultiData(this.nativePtr, index, roleDataSpan);
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
	
	public virtual bool Event(void* event)
	{
		return CQt.QObject_Event(this.nativePtr, event);
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
	[LinkName("QTransposeProxyModel_new")]
	public static extern void* QTransposeProxyModel_new();
	[LinkName("QTransposeProxyModel_new2")]
	public static extern void* QTransposeProxyModel_new2(void* parent);
	[LinkName("QTransposeProxyModel_MetaObject")]
	public static extern void* QTransposeProxyModel_MetaObject(void* c_this);
	[LinkName("QTransposeProxyModel_Metacast")]
	public static extern void* QTransposeProxyModel_Metacast(void* c_this, char8[] param1);
	[LinkName("QTransposeProxyModel_Metacall")]
	public static extern int32 QTransposeProxyModel_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QTransposeProxyModel_Tr")]
	public static extern libqt_string QTransposeProxyModel_Tr(char8[] s);
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
	public static extern libqt_string QTransposeProxyModel_Tr2(char8[] s, char8[] c);
	[LinkName("QTransposeProxyModel_Tr3")]
	public static extern libqt_string QTransposeProxyModel_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QTransposeProxyModel_Delete")]
	public static extern void QTransposeProxyModel_Delete(void* self);
}