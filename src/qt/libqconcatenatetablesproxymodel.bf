using System;
using System.Interop;
namespace Qt;

public class QConcatenateTablesProxyModel
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QConcatenateTablesProxyModel_new();
	}
	
	public ~this()
	{
		CQt.QConcatenateTablesProxyModel_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QConcatenateTablesProxyModel_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QConcatenateTablesProxyModel_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QConcatenateTablesProxyModel_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QConcatenateTablesProxyModel_Tr(s);
	}
	
	public void*[] SourceModels()
	{
		return CQt.QConcatenateTablesProxyModel_SourceModels(this.nativePtr);
	}
	
	public void AddSourceModel(void* sourceModel)
	{
		CQt.QConcatenateTablesProxyModel_AddSourceModel(this.nativePtr, sourceModel);
	}
	
	public void RemoveSourceModel(void* sourceModel)
	{
		CQt.QConcatenateTablesProxyModel_RemoveSourceModel(this.nativePtr, sourceModel);
	}
	
	public void MapFromSource(void* sourceIndex)
	{
		CQt.QConcatenateTablesProxyModel_MapFromSource(this.nativePtr, sourceIndex);
	}
	
	public void MapToSource(void* proxyIndex)
	{
		CQt.QConcatenateTablesProxyModel_MapToSource(this.nativePtr, proxyIndex);
	}
	
	public virtual void Data(void* index, int32 role)
	{
		CQt.QConcatenateTablesProxyModel_Data(this.nativePtr, index, role);
	}
	
	public virtual bool SetData(void* index, void* value, int32 role)
	{
		return CQt.QConcatenateTablesProxyModel_SetData(this.nativePtr, index, value, role);
	}
	
	public virtual void* ItemData(void* proxyIndex)
	{
		return CQt.QConcatenateTablesProxyModel_ItemData(this.nativePtr, proxyIndex);
	}
	
	public virtual bool SetItemData(void* index, void* roles)
	{
		return CQt.QConcatenateTablesProxyModel_SetItemData(this.nativePtr, index, roles);
	}
	
	public virtual int64 Flags(void* index)
	{
		return CQt.QConcatenateTablesProxyModel_Flags(this.nativePtr, index);
	}
	
	public virtual void Index(int32 row, int32 column, void* parent)
	{
		CQt.QConcatenateTablesProxyModel_Index(this.nativePtr, row, column, parent);
	}
	
	public virtual void Parent(void* index)
	{
		CQt.QConcatenateTablesProxyModel_Parent(this.nativePtr, index);
	}
	
	public virtual int32 RowCount(void* parent)
	{
		return CQt.QConcatenateTablesProxyModel_RowCount(this.nativePtr, parent);
	}
	
	public virtual void HeaderData(int32 section, int64 orientation, int32 role)
	{
		CQt.QConcatenateTablesProxyModel_HeaderData(this.nativePtr, section, orientation, role);
	}
	
	public virtual int32 ColumnCount(void* parent)
	{
		return CQt.QConcatenateTablesProxyModel_ColumnCount(this.nativePtr, parent);
	}
	
	public virtual libqt_string[] MimeTypes()
	{
		return CQt.QConcatenateTablesProxyModel_MimeTypes(this.nativePtr);
	}
	
	public virtual void* MimeData(void[] indexes)
	{
		return CQt.QConcatenateTablesProxyModel_MimeData(this.nativePtr, indexes);
	}
	
	public virtual bool CanDropMimeData(void* data, int64 action, int32 row, int32 column, void* parent)
	{
		return CQt.QConcatenateTablesProxyModel_CanDropMimeData(this.nativePtr, data, action, row, column, parent);
	}
	
	public virtual bool DropMimeData(void* data, int64 action, int32 row, int32 column, void* parent)
	{
		return CQt.QConcatenateTablesProxyModel_DropMimeData(this.nativePtr, data, action, row, column, parent);
	}
	
	public virtual void Span(void* index)
	{
		CQt.QConcatenateTablesProxyModel_Span(this.nativePtr, index);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QConcatenateTablesProxyModel_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QConcatenateTablesProxyModel_Tr3(s, c, n);
	}
	
	public bool HasIndex(int32 row, int32 column)
	{
		return CQt.QAbstractItemModel_HasIndex(this.nativePtr, row, column);
	}
	
	public virtual void Sibling(int32 row, int32 column, void* idx)
	{
		CQt.QAbstractItemModel_Sibling(this.nativePtr, row, column, idx);
	}
	
	public virtual bool HasChildren(void* parent)
	{
		return CQt.QAbstractItemModel_HasChildren(this.nativePtr, parent);
	}
	
	public virtual bool SetHeaderData(int32 section, int64 orientation, void* value, int32 role)
	{
		return CQt.QAbstractItemModel_SetHeaderData(this.nativePtr, section, orientation, value, role);
	}
	
	public virtual bool ClearItemData(void* index)
	{
		return CQt.QAbstractItemModel_ClearItemData(this.nativePtr, index);
	}
	
	public virtual int64 SupportedDropActions()
	{
		return CQt.QAbstractItemModel_SupportedDropActions(this.nativePtr);
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
	
	public virtual void FetchMore(void* parent)
	{
		CQt.QAbstractItemModel_FetchMore(this.nativePtr, parent);
	}
	
	public virtual bool CanFetchMore(void* parent)
	{
		return CQt.QAbstractItemModel_CanFetchMore(this.nativePtr, parent);
	}
	
	public virtual void Sort(int32 column, int64 order)
	{
		CQt.QAbstractItemModel_Sort(this.nativePtr, column, order);
	}
	
	public virtual void Buddy(void* index)
	{
		CQt.QAbstractItemModel_Buddy(this.nativePtr, index);
	}
	
	public virtual void[] Match(void* start, int32 role, void* value, int32 hits, int64 flags)
	{
		return CQt.QAbstractItemModel_Match(this.nativePtr, start, role, value, hits, flags);
	}
	
	public virtual void* RoleNames()
	{
		return CQt.QAbstractItemModel_RoleNames(this.nativePtr);
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
	[LinkName("QConcatenateTablesProxyModel_new")]
	public static extern void* QConcatenateTablesProxyModel_new();
	[LinkName("QConcatenateTablesProxyModel_new2")]
	public static extern void* QConcatenateTablesProxyModel_new2(void* parent);
	[LinkName("QConcatenateTablesProxyModel_MetaObject")]
	public static extern void* QConcatenateTablesProxyModel_MetaObject(void* c_this);
	[LinkName("QConcatenateTablesProxyModel_Metacast")]
	public static extern void* QConcatenateTablesProxyModel_Metacast(void* c_this, char8[] param1);
	[LinkName("QConcatenateTablesProxyModel_Metacall")]
	public static extern int32 QConcatenateTablesProxyModel_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QConcatenateTablesProxyModel_Tr")]
	public static extern libqt_string QConcatenateTablesProxyModel_Tr(char8[] s);
	[LinkName("QConcatenateTablesProxyModel_SourceModels")]
	public static extern void*[] QConcatenateTablesProxyModel_SourceModels(void* c_this);
	[LinkName("QConcatenateTablesProxyModel_AddSourceModel")]
	public static extern void QConcatenateTablesProxyModel_AddSourceModel(void* c_this, void* sourceModel);
	[LinkName("QConcatenateTablesProxyModel_RemoveSourceModel")]
	public static extern void QConcatenateTablesProxyModel_RemoveSourceModel(void* c_this, void* sourceModel);
	[LinkName("QConcatenateTablesProxyModel_MapFromSource")]
	public static extern void QConcatenateTablesProxyModel_MapFromSource(void* c_this, void* sourceIndex);
	[LinkName("QConcatenateTablesProxyModel_MapToSource")]
	public static extern void QConcatenateTablesProxyModel_MapToSource(void* c_this, void* proxyIndex);
	[LinkName("QConcatenateTablesProxyModel_Data")]
	public static extern void QConcatenateTablesProxyModel_Data(void* c_this, void* index, int32 role);
	[LinkName("QConcatenateTablesProxyModel_SetData")]
	public static extern bool QConcatenateTablesProxyModel_SetData(void* c_this, void* index, void* value, int32 role);
	[LinkName("QConcatenateTablesProxyModel_ItemData")]
	public static extern void* QConcatenateTablesProxyModel_ItemData(void* c_this, void* proxyIndex);
	[LinkName("QConcatenateTablesProxyModel_SetItemData")]
	public static extern bool QConcatenateTablesProxyModel_SetItemData(void* c_this, void* index, void* roles);
	[LinkName("QConcatenateTablesProxyModel_Flags")]
	public static extern int64 QConcatenateTablesProxyModel_Flags(void* c_this, void* index);
	[LinkName("QConcatenateTablesProxyModel_Index")]
	public static extern void QConcatenateTablesProxyModel_Index(void* c_this, int32 row, int32 column, void* parent);
	[LinkName("QConcatenateTablesProxyModel_Parent")]
	public static extern void QConcatenateTablesProxyModel_Parent(void* c_this, void* index);
	[LinkName("QConcatenateTablesProxyModel_RowCount")]
	public static extern int32 QConcatenateTablesProxyModel_RowCount(void* c_this, void* parent);
	[LinkName("QConcatenateTablesProxyModel_HeaderData")]
	public static extern void QConcatenateTablesProxyModel_HeaderData(void* c_this, int32 section, int64 orientation, int32 role);
	[LinkName("QConcatenateTablesProxyModel_ColumnCount")]
	public static extern int32 QConcatenateTablesProxyModel_ColumnCount(void* c_this, void* parent);
	[LinkName("QConcatenateTablesProxyModel_MimeTypes")]
	public static extern libqt_string[] QConcatenateTablesProxyModel_MimeTypes(void* c_this);
	[LinkName("QConcatenateTablesProxyModel_MimeData")]
	public static extern void* QConcatenateTablesProxyModel_MimeData(void* c_this, void[] indexes);
	[LinkName("QConcatenateTablesProxyModel_CanDropMimeData")]
	public static extern bool QConcatenateTablesProxyModel_CanDropMimeData(void* c_this, void* data, int64 action, int32 row, int32 column, void* parent);
	[LinkName("QConcatenateTablesProxyModel_DropMimeData")]
	public static extern bool QConcatenateTablesProxyModel_DropMimeData(void* c_this, void* data, int64 action, int32 row, int32 column, void* parent);
	[LinkName("QConcatenateTablesProxyModel_Span")]
	public static extern void QConcatenateTablesProxyModel_Span(void* c_this, void* index);
	[LinkName("QConcatenateTablesProxyModel_Tr2")]
	public static extern libqt_string QConcatenateTablesProxyModel_Tr2(char8[] s, char8[] c);
	[LinkName("QConcatenateTablesProxyModel_Tr3")]
	public static extern libqt_string QConcatenateTablesProxyModel_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QConcatenateTablesProxyModel_Delete")]
	public static extern void QConcatenateTablesProxyModel_Delete(void* self);
}