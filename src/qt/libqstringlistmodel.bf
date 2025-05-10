using System;
using System.Interop;
namespace Qt;

public class QStringListModel
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QStringListModel_new();
	}
	
	public ~this()
	{
		CQt.QStringListModel_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QStringListModel_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QStringListModel_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QStringListModel_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QStringListModel_Tr(s);
	}
	
	public virtual int32 RowCount(void* parent)
	{
		return CQt.QStringListModel_RowCount(this.nativePtr, parent);
	}
	
	public virtual void Sibling(int32 row, int32 column, void* idx)
	{
		CQt.QStringListModel_Sibling(this.nativePtr, row, column, idx);
	}
	
	public virtual void Data(void* index, int32 role)
	{
		CQt.QStringListModel_Data(this.nativePtr, index, role);
	}
	
	public virtual bool SetData(void* index, void* value, int32 role)
	{
		return CQt.QStringListModel_SetData(this.nativePtr, index, value, role);
	}
	
	public virtual bool ClearItemData(void* index)
	{
		return CQt.QStringListModel_ClearItemData(this.nativePtr, index);
	}
	
	public virtual int64 Flags(void* index)
	{
		return CQt.QStringListModel_Flags(this.nativePtr, index);
	}
	
	public virtual bool InsertRows(int32 row, int32 count, void* parent)
	{
		return CQt.QStringListModel_InsertRows(this.nativePtr, row, count, parent);
	}
	
	public virtual bool RemoveRows(int32 row, int32 count, void* parent)
	{
		return CQt.QStringListModel_RemoveRows(this.nativePtr, row, count, parent);
	}
	
	public virtual bool MoveRows(void* sourceParent, int32 sourceRow, int32 count, void* destinationParent, int32 destinationChild)
	{
		return CQt.QStringListModel_MoveRows(this.nativePtr, sourceParent, sourceRow, count, destinationParent, destinationChild);
	}
	
	public virtual void* ItemData(void* index)
	{
		return CQt.QStringListModel_ItemData(this.nativePtr, index);
	}
	
	public virtual bool SetItemData(void* index, void* roles)
	{
		return CQt.QStringListModel_SetItemData(this.nativePtr, index, roles);
	}
	
	public virtual void Sort(int32 column, int64 order)
	{
		CQt.QStringListModel_Sort(this.nativePtr, column, order);
	}
	
	public libqt_string[] StringList()
	{
		return CQt.QStringListModel_StringList(this.nativePtr);
	}
	
	public void SetStringList(libqt_string[] strings)
	{
		CQt.QStringListModel_SetStringList(this.nativePtr, strings);
	}
	
	public virtual int64 SupportedDropActions()
	{
		return CQt.QStringListModel_SupportedDropActions(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QStringListModel_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QStringListModel_Tr3(s, c, n);
	}
	
	public virtual void Index(int32 row, int32 column, void* parent)
	{
		CQt.QAbstractListModel_Index(this.nativePtr, row, column, parent);
	}
	
	public virtual bool DropMimeData(void* data, int64 action, int32 row, int32 column, void* parent)
	{
		return CQt.QAbstractListModel_DropMimeData(this.nativePtr, data, action, row, column, parent);
	}
	
	public bool HasIndex(int32 row, int32 column)
	{
		return CQt.QAbstractItemModel_HasIndex(this.nativePtr, row, column);
	}
	
	public virtual void Parent(void* child)
	{
		CQt.QAbstractItemModel_Parent(this.nativePtr, child);
	}
	
	public virtual int32 ColumnCount(void* parent)
	{
		return CQt.QAbstractItemModel_ColumnCount(this.nativePtr, parent);
	}
	
	public virtual bool HasChildren(void* parent)
	{
		return CQt.QAbstractItemModel_HasChildren(this.nativePtr, parent);
	}
	
	public virtual void HeaderData(int32 section, int64 orientation, int32 role)
	{
		CQt.QAbstractItemModel_HeaderData(this.nativePtr, section, orientation, role);
	}
	
	public virtual bool SetHeaderData(int32 section, int64 orientation, void* value, int32 role)
	{
		return CQt.QAbstractItemModel_SetHeaderData(this.nativePtr, section, orientation, value, role);
	}
	
	public virtual libqt_string[] MimeTypes()
	{
		return CQt.QAbstractItemModel_MimeTypes(this.nativePtr);
	}
	
	public virtual void* MimeData(void[] indexes)
	{
		return CQt.QAbstractItemModel_MimeData(this.nativePtr, indexes);
	}
	
	public virtual bool CanDropMimeData(void* data, int64 action, int32 row, int32 column, void* parent)
	{
		return CQt.QAbstractItemModel_CanDropMimeData(this.nativePtr, data, action, row, column, parent);
	}
	
	public virtual int64 SupportedDragActions()
	{
		return CQt.QAbstractItemModel_SupportedDragActions(this.nativePtr);
	}
	
	public virtual bool InsertColumns(int32 column, int32 count, void* parent)
	{
		return CQt.QAbstractItemModel_InsertColumns(this.nativePtr, column, count, parent);
	}
	
	public virtual bool RemoveColumns(int32 column, int32 count, void* parent)
	{
		return CQt.QAbstractItemModel_RemoveColumns(this.nativePtr, column, count, parent);
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
	[LinkName("QStringListModel_new")]
	public static extern void* QStringListModel_new();
	[LinkName("QStringListModel_new2")]
	public static extern void* QStringListModel_new2(libqt_string[] strings);
	[LinkName("QStringListModel_new3")]
	public static extern void* QStringListModel_new3(void* parent);
	[LinkName("QStringListModel_new4")]
	public static extern void* QStringListModel_new4(libqt_string[] strings, void* parent);
	[LinkName("QStringListModel_MetaObject")]
	public static extern void* QStringListModel_MetaObject(void* c_this);
	[LinkName("QStringListModel_Metacast")]
	public static extern void* QStringListModel_Metacast(void* c_this, char8[] param1);
	[LinkName("QStringListModel_Metacall")]
	public static extern int32 QStringListModel_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QStringListModel_Tr")]
	public static extern libqt_string QStringListModel_Tr(char8[] s);
	[LinkName("QStringListModel_RowCount")]
	public static extern int32 QStringListModel_RowCount(void* c_this, void* parent);
	[LinkName("QStringListModel_Sibling")]
	public static extern void QStringListModel_Sibling(void* c_this, int32 row, int32 column, void* idx);
	[LinkName("QStringListModel_Data")]
	public static extern void QStringListModel_Data(void* c_this, void* index, int32 role);
	[LinkName("QStringListModel_SetData")]
	public static extern bool QStringListModel_SetData(void* c_this, void* index, void* value, int32 role);
	[LinkName("QStringListModel_ClearItemData")]
	public static extern bool QStringListModel_ClearItemData(void* c_this, void* index);
	[LinkName("QStringListModel_Flags")]
	public static extern int64 QStringListModel_Flags(void* c_this, void* index);
	[LinkName("QStringListModel_InsertRows")]
	public static extern bool QStringListModel_InsertRows(void* c_this, int32 row, int32 count, void* parent);
	[LinkName("QStringListModel_RemoveRows")]
	public static extern bool QStringListModel_RemoveRows(void* c_this, int32 row, int32 count, void* parent);
	[LinkName("QStringListModel_MoveRows")]
	public static extern bool QStringListModel_MoveRows(void* c_this, void* sourceParent, int32 sourceRow, int32 count, void* destinationParent, int32 destinationChild);
	[LinkName("QStringListModel_ItemData")]
	public static extern void* QStringListModel_ItemData(void* c_this, void* index);
	[LinkName("QStringListModel_SetItemData")]
	public static extern bool QStringListModel_SetItemData(void* c_this, void* index, void* roles);
	[LinkName("QStringListModel_Sort")]
	public static extern void QStringListModel_Sort(void* c_this, int32 column, int64 order);
	[LinkName("QStringListModel_StringList")]
	public static extern libqt_string[] QStringListModel_StringList(void* c_this);
	[LinkName("QStringListModel_SetStringList")]
	public static extern void QStringListModel_SetStringList(void* c_this, libqt_string[] strings);
	[LinkName("QStringListModel_SupportedDropActions")]
	public static extern int64 QStringListModel_SupportedDropActions(void* c_this);
	[LinkName("QStringListModel_Tr2")]
	public static extern libqt_string QStringListModel_Tr2(char8[] s, char8[] c);
	[LinkName("QStringListModel_Tr3")]
	public static extern libqt_string QStringListModel_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QStringListModel_Delete")]
	public static extern void QStringListModel_Delete(void* self);
}