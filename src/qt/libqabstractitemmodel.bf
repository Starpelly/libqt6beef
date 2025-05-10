using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QAbstractItemModel__LayoutChangeHint
{
	NoLayoutChangeHint = 0,
	VerticalSortHint = 1,
	HorizontalSortHint = 2,
}
[AllowDuplicates]
public enum QAbstractItemModel__CheckIndexOption
{
	NoOption = 0,
	IndexIsValid = 1,
	DoNotUseParent = 2,
	ParentIsInvalid = 4,
}
public class QModelRoleData
{
	protected void* nativePtr;
	
	public this(int32 role)
	{
		this.nativePtr = CQt.QModelRoleData_new(role);
	}
	
	public ~this()
	{
		CQt.QModelRoleData_Delete(this.nativePtr);
	}
	
	public int32 Role()
	{
		return CQt.QModelRoleData_Role(this.nativePtr);
	}
	
	public void* Data()
	{
		return CQt.QModelRoleData_Data(this.nativePtr);
	}
	
	public void* Data2()
	{
		return CQt.QModelRoleData_Data2(this.nativePtr);
	}
	
	public void ClearData()
	{
		CQt.QModelRoleData_ClearData(this.nativePtr);
	}
	
	public void OperatorAssign(void* param1)
	{
		CQt.QModelRoleData_OperatorAssign(this.nativePtr, param1);
	}
	
}
extension CQt
{
	[LinkName("QModelRoleData_new")]
	public static extern void* QModelRoleData_new(int32 role);
	[LinkName("QModelRoleData_new2")]
	public static extern void* QModelRoleData_new2(void* param1);
	[LinkName("QModelRoleData_Role")]
	public static extern int32 QModelRoleData_Role(void* c_this);
	[LinkName("QModelRoleData_Data")]
	public static extern void* QModelRoleData_Data(void* c_this);
	[LinkName("QModelRoleData_Data2")]
	public static extern void* QModelRoleData_Data2(void* c_this);
	[LinkName("QModelRoleData_ClearData")]
	public static extern void QModelRoleData_ClearData(void* c_this);
	[LinkName("QModelRoleData_OperatorAssign")]
	public static extern void QModelRoleData_OperatorAssign(void* c_this, void* param1);
	/// Delete this object from C++ memory
	[LinkName("QModelRoleData_Delete")]
	public static extern void QModelRoleData_Delete(void* self);
}
public class QModelRoleDataSpan
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QModelRoleDataSpan_new(other);
	}
	
	public ~this()
	{
		CQt.QModelRoleDataSpan_Delete(this.nativePtr);
	}
	
	public int32 Size()
	{
		return CQt.QModelRoleDataSpan_Size(this.nativePtr);
	}
	
	public int32 Length()
	{
		return CQt.QModelRoleDataSpan_Length(this.nativePtr);
	}
	
	public void* Data()
	{
		return CQt.QModelRoleDataSpan_Data(this.nativePtr);
	}
	
	public void* Begin()
	{
		return CQt.QModelRoleDataSpan_Begin(this.nativePtr);
	}
	
	public void* End()
	{
		return CQt.QModelRoleDataSpan_End(this.nativePtr);
	}
	
	public void* OperatorSubscript(int32 index)
	{
		return CQt.QModelRoleDataSpan_OperatorSubscript(this.nativePtr, index);
	}
	
	public void* DataForRole(int32 role)
	{
		return CQt.QModelRoleDataSpan_DataForRole(this.nativePtr, role);
	}
	
}
extension CQt
{
	[LinkName("QModelRoleDataSpan_new")]
	public static extern void* QModelRoleDataSpan_new(void* other);
	[LinkName("QModelRoleDataSpan_new2")]
	public static extern void* QModelRoleDataSpan_new2(void* other);
	[LinkName("QModelRoleDataSpan_new3")]
	public static extern void* QModelRoleDataSpan_new3();
	[LinkName("QModelRoleDataSpan_new4")]
	public static extern void* QModelRoleDataSpan_new4(void* modelRoleData);
	[LinkName("QModelRoleDataSpan_new5")]
	public static extern void* QModelRoleDataSpan_new5(void* modelRoleData, int32 lenVal);
	[LinkName("QModelRoleDataSpan_new6")]
	public static extern void* QModelRoleDataSpan_new6(void* param1);
	[LinkName("QModelRoleDataSpan_Size")]
	public static extern int32 QModelRoleDataSpan_Size(void* c_this);
	[LinkName("QModelRoleDataSpan_Length")]
	public static extern int32 QModelRoleDataSpan_Length(void* c_this);
	[LinkName("QModelRoleDataSpan_Data")]
	public static extern void* QModelRoleDataSpan_Data(void* c_this);
	[LinkName("QModelRoleDataSpan_Begin")]
	public static extern void* QModelRoleDataSpan_Begin(void* c_this);
	[LinkName("QModelRoleDataSpan_End")]
	public static extern void* QModelRoleDataSpan_End(void* c_this);
	[LinkName("QModelRoleDataSpan_OperatorSubscript")]
	public static extern void* QModelRoleDataSpan_OperatorSubscript(void* c_this, int32 index);
	[LinkName("QModelRoleDataSpan_DataForRole")]
	public static extern void* QModelRoleDataSpan_DataForRole(void* c_this, int32 role);
	/// Delete this object from C++ memory
	[LinkName("QModelRoleDataSpan_Delete")]
	public static extern void QModelRoleDataSpan_Delete(void* self);
}
public class QModelIndex
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QModelIndex_new(other);
	}
	
	public ~this()
	{
		CQt.QModelIndex_Delete(this.nativePtr);
	}
	
	public int32 Row()
	{
		return CQt.QModelIndex_Row(this.nativePtr);
	}
	
	public int32 Column()
	{
		return CQt.QModelIndex_Column(this.nativePtr);
	}
	
	public c_uintptr InternalId()
	{
		return CQt.QModelIndex_InternalId(this.nativePtr);
	}
	
	public void* InternalPointer()
	{
		return CQt.QModelIndex_InternalPointer(this.nativePtr);
	}
	
	public void* ConstInternalPointer()
	{
		return CQt.QModelIndex_ConstInternalPointer(this.nativePtr);
	}
	
	public void Parent()
	{
		CQt.QModelIndex_Parent(this.nativePtr);
	}
	
	public void Sibling(int32 row, int32 column)
	{
		CQt.QModelIndex_Sibling(this.nativePtr, row, column);
	}
	
	public void SiblingAtColumn(int32 column)
	{
		CQt.QModelIndex_SiblingAtColumn(this.nativePtr, column);
	}
	
	public void SiblingAtRow(int32 row)
	{
		CQt.QModelIndex_SiblingAtRow(this.nativePtr, row);
	}
	
	public void Data()
	{
		CQt.QModelIndex_Data(this.nativePtr);
	}
	
	public void MultiData(void roleDataSpan)
	{
		CQt.QModelIndex_MultiData(this.nativePtr, roleDataSpan);
	}
	
	public int64 Flags()
	{
		return CQt.QModelIndex_Flags(this.nativePtr);
	}
	
	public void* Model()
	{
		return CQt.QModelIndex_Model(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QModelIndex_IsValid(this.nativePtr);
	}
	
	public bool OperatorEqual(void* other)
	{
		return CQt.QModelIndex_OperatorEqual(this.nativePtr, other);
	}
	
	public bool OperatorNotEqual(void* other)
	{
		return CQt.QModelIndex_OperatorNotEqual(this.nativePtr, other);
	}
	
	public bool OperatorLesser(void* other)
	{
		return CQt.QModelIndex_OperatorLesser(this.nativePtr, other);
	}
	
	public void Data1(int32 role)
	{
		CQt.QModelIndex_Data1(this.nativePtr, role);
	}
	
}
extension CQt
{
	[LinkName("QModelIndex_new")]
	public static extern void* QModelIndex_new(void* other);
	[LinkName("QModelIndex_new2")]
	public static extern void* QModelIndex_new2(void* other);
	[LinkName("QModelIndex_new3")]
	public static extern void* QModelIndex_new3();
	[LinkName("QModelIndex_new4")]
	public static extern void* QModelIndex_new4(void* param1);
	[LinkName("QModelIndex_Row")]
	public static extern int32 QModelIndex_Row(void* c_this);
	[LinkName("QModelIndex_Column")]
	public static extern int32 QModelIndex_Column(void* c_this);
	[LinkName("QModelIndex_InternalId")]
	public static extern c_uintptr QModelIndex_InternalId(void* c_this);
	[LinkName("QModelIndex_InternalPointer")]
	public static extern void* QModelIndex_InternalPointer(void* c_this);
	[LinkName("QModelIndex_ConstInternalPointer")]
	public static extern void* QModelIndex_ConstInternalPointer(void* c_this);
	[LinkName("QModelIndex_Parent")]
	public static extern void QModelIndex_Parent(void* c_this);
	[LinkName("QModelIndex_Sibling")]
	public static extern void QModelIndex_Sibling(void* c_this, int32 row, int32 column);
	[LinkName("QModelIndex_SiblingAtColumn")]
	public static extern void QModelIndex_SiblingAtColumn(void* c_this, int32 column);
	[LinkName("QModelIndex_SiblingAtRow")]
	public static extern void QModelIndex_SiblingAtRow(void* c_this, int32 row);
	[LinkName("QModelIndex_Data")]
	public static extern void QModelIndex_Data(void* c_this);
	[LinkName("QModelIndex_MultiData")]
	public static extern void QModelIndex_MultiData(void* c_this, void roleDataSpan);
	[LinkName("QModelIndex_Flags")]
	public static extern int64 QModelIndex_Flags(void* c_this);
	[LinkName("QModelIndex_Model")]
	public static extern void* QModelIndex_Model(void* c_this);
	[LinkName("QModelIndex_IsValid")]
	public static extern bool QModelIndex_IsValid(void* c_this);
	[LinkName("QModelIndex_OperatorEqual")]
	public static extern bool QModelIndex_OperatorEqual(void* c_this, void* other);
	[LinkName("QModelIndex_OperatorNotEqual")]
	public static extern bool QModelIndex_OperatorNotEqual(void* c_this, void* other);
	[LinkName("QModelIndex_OperatorLesser")]
	public static extern bool QModelIndex_OperatorLesser(void* c_this, void* other);
	[LinkName("QModelIndex_Data1")]
	public static extern void QModelIndex_Data1(void* c_this, int32 role);
	/// Delete this object from C++ memory
	[LinkName("QModelIndex_Delete")]
	public static extern void QModelIndex_Delete(void* self);
}
public class QPersistentModelIndex
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QPersistentModelIndex_new();
	}
	
	public ~this()
	{
		CQt.QPersistentModelIndex_Delete(this.nativePtr);
	}
	
	public bool OperatorLesser(void* other)
	{
		return CQt.QPersistentModelIndex_OperatorLesser(this.nativePtr, other);
	}
	
	public bool OperatorEqual(void* other)
	{
		return CQt.QPersistentModelIndex_OperatorEqual(this.nativePtr, other);
	}
	
	public bool OperatorNotEqual(void* other)
	{
		return CQt.QPersistentModelIndex_OperatorNotEqual(this.nativePtr, other);
	}
	
	public void OperatorAssign(void* other)
	{
		CQt.QPersistentModelIndex_OperatorAssign(this.nativePtr, other);
	}
	
	public void Swap(void* other)
	{
		CQt.QPersistentModelIndex_Swap(this.nativePtr, other);
	}
	
	public bool OperatorEqualWithOther(void* other)
	{
		return CQt.QPersistentModelIndex_OperatorEqualWithOther(this.nativePtr, other);
	}
	
	public bool OperatorNotEqualWithOther(void* other)
	{
		return CQt.QPersistentModelIndex_OperatorNotEqualWithOther(this.nativePtr, other);
	}
	
	public void OperatorAssignWithOther(void* other)
	{
		CQt.QPersistentModelIndex_OperatorAssignWithOther(this.nativePtr, other);
	}
	
	public void ToQModelIndex()
	{
		CQt.QPersistentModelIndex_ToQModelIndex(this.nativePtr);
	}
	
	public int32 Row()
	{
		return CQt.QPersistentModelIndex_Row(this.nativePtr);
	}
	
	public int32 Column()
	{
		return CQt.QPersistentModelIndex_Column(this.nativePtr);
	}
	
	public void* InternalPointer()
	{
		return CQt.QPersistentModelIndex_InternalPointer(this.nativePtr);
	}
	
	public void* ConstInternalPointer()
	{
		return CQt.QPersistentModelIndex_ConstInternalPointer(this.nativePtr);
	}
	
	public c_uintptr InternalId()
	{
		return CQt.QPersistentModelIndex_InternalId(this.nativePtr);
	}
	
	public void Parent()
	{
		CQt.QPersistentModelIndex_Parent(this.nativePtr);
	}
	
	public void Sibling(int32 row, int32 column)
	{
		CQt.QPersistentModelIndex_Sibling(this.nativePtr, row, column);
	}
	
	public void Data()
	{
		CQt.QPersistentModelIndex_Data(this.nativePtr);
	}
	
	public void MultiData(void roleDataSpan)
	{
		CQt.QPersistentModelIndex_MultiData(this.nativePtr, roleDataSpan);
	}
	
	public int64 Flags()
	{
		return CQt.QPersistentModelIndex_Flags(this.nativePtr);
	}
	
	public void* Model()
	{
		return CQt.QPersistentModelIndex_Model(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QPersistentModelIndex_IsValid(this.nativePtr);
	}
	
	public void Data1(int32 role)
	{
		CQt.QPersistentModelIndex_Data1(this.nativePtr, role);
	}
	
}
extension CQt
{
	[LinkName("QPersistentModelIndex_new")]
	public static extern void* QPersistentModelIndex_new();
	[LinkName("QPersistentModelIndex_new2")]
	public static extern void* QPersistentModelIndex_new2(void* index);
	[LinkName("QPersistentModelIndex_new3")]
	public static extern void* QPersistentModelIndex_new3(void* other);
	[LinkName("QPersistentModelIndex_OperatorLesser")]
	public static extern bool QPersistentModelIndex_OperatorLesser(void* c_this, void* other);
	[LinkName("QPersistentModelIndex_OperatorEqual")]
	public static extern bool QPersistentModelIndex_OperatorEqual(void* c_this, void* other);
	[LinkName("QPersistentModelIndex_OperatorNotEqual")]
	public static extern bool QPersistentModelIndex_OperatorNotEqual(void* c_this, void* other);
	[LinkName("QPersistentModelIndex_OperatorAssign")]
	public static extern void QPersistentModelIndex_OperatorAssign(void* c_this, void* other);
	[LinkName("QPersistentModelIndex_Swap")]
	public static extern void QPersistentModelIndex_Swap(void* c_this, void* other);
	[LinkName("QPersistentModelIndex_OperatorEqualWithOther")]
	public static extern bool QPersistentModelIndex_OperatorEqualWithOther(void* c_this, void* other);
	[LinkName("QPersistentModelIndex_OperatorNotEqualWithOther")]
	public static extern bool QPersistentModelIndex_OperatorNotEqualWithOther(void* c_this, void* other);
	[LinkName("QPersistentModelIndex_OperatorAssignWithOther")]
	public static extern void QPersistentModelIndex_OperatorAssignWithOther(void* c_this, void* other);
	[LinkName("QPersistentModelIndex_ToQModelIndex")]
	public static extern void QPersistentModelIndex_ToQModelIndex(void* c_this);
	[LinkName("QPersistentModelIndex_Row")]
	public static extern int32 QPersistentModelIndex_Row(void* c_this);
	[LinkName("QPersistentModelIndex_Column")]
	public static extern int32 QPersistentModelIndex_Column(void* c_this);
	[LinkName("QPersistentModelIndex_InternalPointer")]
	public static extern void* QPersistentModelIndex_InternalPointer(void* c_this);
	[LinkName("QPersistentModelIndex_ConstInternalPointer")]
	public static extern void* QPersistentModelIndex_ConstInternalPointer(void* c_this);
	[LinkName("QPersistentModelIndex_InternalId")]
	public static extern c_uintptr QPersistentModelIndex_InternalId(void* c_this);
	[LinkName("QPersistentModelIndex_Parent")]
	public static extern void QPersistentModelIndex_Parent(void* c_this);
	[LinkName("QPersistentModelIndex_Sibling")]
	public static extern void QPersistentModelIndex_Sibling(void* c_this, int32 row, int32 column);
	[LinkName("QPersistentModelIndex_Data")]
	public static extern void QPersistentModelIndex_Data(void* c_this);
	[LinkName("QPersistentModelIndex_MultiData")]
	public static extern void QPersistentModelIndex_MultiData(void* c_this, void roleDataSpan);
	[LinkName("QPersistentModelIndex_Flags")]
	public static extern int64 QPersistentModelIndex_Flags(void* c_this);
	[LinkName("QPersistentModelIndex_Model")]
	public static extern void* QPersistentModelIndex_Model(void* c_this);
	[LinkName("QPersistentModelIndex_IsValid")]
	public static extern bool QPersistentModelIndex_IsValid(void* c_this);
	[LinkName("QPersistentModelIndex_Data1")]
	public static extern void QPersistentModelIndex_Data1(void* c_this, int32 role);
	/// Delete this object from C++ memory
	[LinkName("QPersistentModelIndex_Delete")]
	public static extern void QPersistentModelIndex_Delete(void* self);
}
public class QAbstractItemModel
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QAbstractItemModel_new();
	}
	
	public ~this()
	{
		CQt.QAbstractItemModel_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QAbstractItemModel_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QAbstractItemModel_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QAbstractItemModel_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QAbstractItemModel_Tr(s);
	}
	
	public bool HasIndex(int32 row, int32 column)
	{
		return CQt.QAbstractItemModel_HasIndex(this.nativePtr, row, column);
	}
	
	public virtual void Index(int32 row, int32 column, void* parent)
	{
		CQt.QAbstractItemModel_Index(this.nativePtr, row, column, parent);
	}
	
	public virtual void Parent(void* child)
	{
		CQt.QAbstractItemModel_Parent(this.nativePtr, child);
	}
	
	public virtual void Sibling(int32 row, int32 column, void* idx)
	{
		CQt.QAbstractItemModel_Sibling(this.nativePtr, row, column, idx);
	}
	
	public virtual int32 RowCount(void* parent)
	{
		return CQt.QAbstractItemModel_RowCount(this.nativePtr, parent);
	}
	
	public virtual int32 ColumnCount(void* parent)
	{
		return CQt.QAbstractItemModel_ColumnCount(this.nativePtr, parent);
	}
	
	public virtual bool HasChildren(void* parent)
	{
		return CQt.QAbstractItemModel_HasChildren(this.nativePtr, parent);
	}
	
	public virtual void Data(void* index, int32 role)
	{
		CQt.QAbstractItemModel_Data(this.nativePtr, index, role);
	}
	
	public virtual bool SetData(void* index, void* value, int32 role)
	{
		return CQt.QAbstractItemModel_SetData(this.nativePtr, index, value, role);
	}
	
	public virtual void HeaderData(int32 section, int64 orientation, int32 role)
	{
		CQt.QAbstractItemModel_HeaderData(this.nativePtr, section, orientation, role);
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
	
	public virtual bool DropMimeData(void* data, int64 action, int32 row, int32 column, void* parent)
	{
		return CQt.QAbstractItemModel_DropMimeData(this.nativePtr, data, action, row, column, parent);
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
	
	public virtual int64 Flags(void* index)
	{
		return CQt.QAbstractItemModel_Flags(this.nativePtr, index);
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
	
	public virtual void ResetInternalData()
	{
		CQt.QAbstractItemModel_ResetInternalData(this.nativePtr);
	}
	
	public void CreateIndex(int32 row, int32 column)
	{
		CQt.QAbstractItemModel_CreateIndex(this.nativePtr, row, column);
	}
	
	public void CreateIndex2(int32 row, int32 column, c_uintptr id)
	{
		CQt.QAbstractItemModel_CreateIndex2(this.nativePtr, row, column, id);
	}
	
	public void EncodeData(void[] indexes, void* stream)
	{
		CQt.QAbstractItemModel_EncodeData(this.nativePtr, indexes, stream);
	}
	
	public bool DecodeData(int32 row, int32 column, void* parent, void* stream)
	{
		return CQt.QAbstractItemModel_DecodeData(this.nativePtr, row, column, parent, stream);
	}
	
	public void BeginInsertRows(void* parent, int32 first, int32 last)
	{
		CQt.QAbstractItemModel_BeginInsertRows(this.nativePtr, parent, first, last);
	}
	
	public void EndInsertRows()
	{
		CQt.QAbstractItemModel_EndInsertRows(this.nativePtr);
	}
	
	public void BeginRemoveRows(void* parent, int32 first, int32 last)
	{
		CQt.QAbstractItemModel_BeginRemoveRows(this.nativePtr, parent, first, last);
	}
	
	public void EndRemoveRows()
	{
		CQt.QAbstractItemModel_EndRemoveRows(this.nativePtr);
	}
	
	public bool BeginMoveRows(void* sourceParent, int32 sourceFirst, int32 sourceLast, void* destinationParent, int32 destinationRow)
	{
		return CQt.QAbstractItemModel_BeginMoveRows(this.nativePtr, sourceParent, sourceFirst, sourceLast, destinationParent, destinationRow);
	}
	
	public void EndMoveRows()
	{
		CQt.QAbstractItemModel_EndMoveRows(this.nativePtr);
	}
	
	public void BeginInsertColumns(void* parent, int32 first, int32 last)
	{
		CQt.QAbstractItemModel_BeginInsertColumns(this.nativePtr, parent, first, last);
	}
	
	public void EndInsertColumns()
	{
		CQt.QAbstractItemModel_EndInsertColumns(this.nativePtr);
	}
	
	public void BeginRemoveColumns(void* parent, int32 first, int32 last)
	{
		CQt.QAbstractItemModel_BeginRemoveColumns(this.nativePtr, parent, first, last);
	}
	
	public void EndRemoveColumns()
	{
		CQt.QAbstractItemModel_EndRemoveColumns(this.nativePtr);
	}
	
	public bool BeginMoveColumns(void* sourceParent, int32 sourceFirst, int32 sourceLast, void* destinationParent, int32 destinationColumn)
	{
		return CQt.QAbstractItemModel_BeginMoveColumns(this.nativePtr, sourceParent, sourceFirst, sourceLast, destinationParent, destinationColumn);
	}
	
	public void EndMoveColumns()
	{
		CQt.QAbstractItemModel_EndMoveColumns(this.nativePtr);
	}
	
	public void BeginResetModel()
	{
		CQt.QAbstractItemModel_BeginResetModel(this.nativePtr);
	}
	
	public void EndResetModel()
	{
		CQt.QAbstractItemModel_EndResetModel(this.nativePtr);
	}
	
	public void ChangePersistentIndex(void* from, void* to)
	{
		CQt.QAbstractItemModel_ChangePersistentIndex(this.nativePtr, from, to);
	}
	
	public void ChangePersistentIndexList(void[] from, void[] to)
	{
		CQt.QAbstractItemModel_ChangePersistentIndexList(this.nativePtr, from, to);
	}
	
	public void[] PersistentIndexList()
	{
		return CQt.QAbstractItemModel_PersistentIndexList(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QAbstractItemModel_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QAbstractItemModel_Tr3(s, c, n);
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
	
	public void CreateIndex3(int32 row, int32 column, void* data)
	{
		CQt.QAbstractItemModel_CreateIndex3(this.nativePtr, row, column, data);
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
	[LinkName("QAbstractItemModel_new")]
	public static extern void* QAbstractItemModel_new();
	[LinkName("QAbstractItemModel_new2")]
	public static extern void* QAbstractItemModel_new2(void* parent);
	[LinkName("QAbstractItemModel_MetaObject")]
	public static extern void* QAbstractItemModel_MetaObject(void* c_this);
	[LinkName("QAbstractItemModel_Metacast")]
	public static extern void* QAbstractItemModel_Metacast(void* c_this, char8[] param1);
	[LinkName("QAbstractItemModel_Metacall")]
	public static extern int32 QAbstractItemModel_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QAbstractItemModel_Tr")]
	public static extern libqt_string QAbstractItemModel_Tr(char8[] s);
	[LinkName("QAbstractItemModel_HasIndex")]
	public static extern bool QAbstractItemModel_HasIndex(void* c_this, int32 row, int32 column);
	[LinkName("QAbstractItemModel_Index")]
	public static extern void QAbstractItemModel_Index(void* c_this, int32 row, int32 column, void* parent);
	[LinkName("QAbstractItemModel_Parent")]
	public static extern void QAbstractItemModel_Parent(void* c_this, void* child);
	[LinkName("QAbstractItemModel_Sibling")]
	public static extern void QAbstractItemModel_Sibling(void* c_this, int32 row, int32 column, void* idx);
	[LinkName("QAbstractItemModel_RowCount")]
	public static extern int32 QAbstractItemModel_RowCount(void* c_this, void* parent);
	[LinkName("QAbstractItemModel_ColumnCount")]
	public static extern int32 QAbstractItemModel_ColumnCount(void* c_this, void* parent);
	[LinkName("QAbstractItemModel_HasChildren")]
	public static extern bool QAbstractItemModel_HasChildren(void* c_this, void* parent);
	[LinkName("QAbstractItemModel_Data")]
	public static extern void QAbstractItemModel_Data(void* c_this, void* index, int32 role);
	[LinkName("QAbstractItemModel_SetData")]
	public static extern bool QAbstractItemModel_SetData(void* c_this, void* index, void* value, int32 role);
	[LinkName("QAbstractItemModel_HeaderData")]
	public static extern void QAbstractItemModel_HeaderData(void* c_this, int32 section, int64 orientation, int32 role);
	[LinkName("QAbstractItemModel_SetHeaderData")]
	public static extern bool QAbstractItemModel_SetHeaderData(void* c_this, int32 section, int64 orientation, void* value, int32 role);
	[LinkName("QAbstractItemModel_ItemData")]
	public static extern void* QAbstractItemModel_ItemData(void* c_this, void* index);
	[LinkName("QAbstractItemModel_SetItemData")]
	public static extern bool QAbstractItemModel_SetItemData(void* c_this, void* index, void* roles);
	[LinkName("QAbstractItemModel_ClearItemData")]
	public static extern bool QAbstractItemModel_ClearItemData(void* c_this, void* index);
	[LinkName("QAbstractItemModel_MimeTypes")]
	public static extern libqt_string[] QAbstractItemModel_MimeTypes(void* c_this);
	[LinkName("QAbstractItemModel_MimeData")]
	public static extern void* QAbstractItemModel_MimeData(void* c_this, void[] indexes);
	[LinkName("QAbstractItemModel_CanDropMimeData")]
	public static extern bool QAbstractItemModel_CanDropMimeData(void* c_this, void* data, int64 action, int32 row, int32 column, void* parent);
	[LinkName("QAbstractItemModel_DropMimeData")]
	public static extern bool QAbstractItemModel_DropMimeData(void* c_this, void* data, int64 action, int32 row, int32 column, void* parent);
	[LinkName("QAbstractItemModel_SupportedDropActions")]
	public static extern int64 QAbstractItemModel_SupportedDropActions(void* c_this);
	[LinkName("QAbstractItemModel_SupportedDragActions")]
	public static extern int64 QAbstractItemModel_SupportedDragActions(void* c_this);
	[LinkName("QAbstractItemModel_InsertRows")]
	public static extern bool QAbstractItemModel_InsertRows(void* c_this, int32 row, int32 count, void* parent);
	[LinkName("QAbstractItemModel_InsertColumns")]
	public static extern bool QAbstractItemModel_InsertColumns(void* c_this, int32 column, int32 count, void* parent);
	[LinkName("QAbstractItemModel_RemoveRows")]
	public static extern bool QAbstractItemModel_RemoveRows(void* c_this, int32 row, int32 count, void* parent);
	[LinkName("QAbstractItemModel_RemoveColumns")]
	public static extern bool QAbstractItemModel_RemoveColumns(void* c_this, int32 column, int32 count, void* parent);
	[LinkName("QAbstractItemModel_MoveRows")]
	public static extern bool QAbstractItemModel_MoveRows(void* c_this, void* sourceParent, int32 sourceRow, int32 count, void* destinationParent, int32 destinationChild);
	[LinkName("QAbstractItemModel_MoveColumns")]
	public static extern bool QAbstractItemModel_MoveColumns(void* c_this, void* sourceParent, int32 sourceColumn, int32 count, void* destinationParent, int32 destinationChild);
	[LinkName("QAbstractItemModel_InsertRow")]
	public static extern bool QAbstractItemModel_InsertRow(void* c_this, int32 row);
	[LinkName("QAbstractItemModel_InsertColumn")]
	public static extern bool QAbstractItemModel_InsertColumn(void* c_this, int32 column);
	[LinkName("QAbstractItemModel_RemoveRow")]
	public static extern bool QAbstractItemModel_RemoveRow(void* c_this, int32 row);
	[LinkName("QAbstractItemModel_RemoveColumn")]
	public static extern bool QAbstractItemModel_RemoveColumn(void* c_this, int32 column);
	[LinkName("QAbstractItemModel_MoveRow")]
	public static extern bool QAbstractItemModel_MoveRow(void* c_this, void* sourceParent, int32 sourceRow, void* destinationParent, int32 destinationChild);
	[LinkName("QAbstractItemModel_MoveColumn")]
	public static extern bool QAbstractItemModel_MoveColumn(void* c_this, void* sourceParent, int32 sourceColumn, void* destinationParent, int32 destinationChild);
	[LinkName("QAbstractItemModel_FetchMore")]
	public static extern void QAbstractItemModel_FetchMore(void* c_this, void* parent);
	[LinkName("QAbstractItemModel_CanFetchMore")]
	public static extern bool QAbstractItemModel_CanFetchMore(void* c_this, void* parent);
	[LinkName("QAbstractItemModel_Flags")]
	public static extern int64 QAbstractItemModel_Flags(void* c_this, void* index);
	[LinkName("QAbstractItemModel_Sort")]
	public static extern void QAbstractItemModel_Sort(void* c_this, int32 column, int64 order);
	[LinkName("QAbstractItemModel_Buddy")]
	public static extern void QAbstractItemModel_Buddy(void* c_this, void* index);
	[LinkName("QAbstractItemModel_Match")]
	public static extern void[] QAbstractItemModel_Match(void* c_this, void* start, int32 role, void* value, int32 hits, int64 flags);
	[LinkName("QAbstractItemModel_Span")]
	public static extern void QAbstractItemModel_Span(void* c_this, void* index);
	[LinkName("QAbstractItemModel_RoleNames")]
	public static extern void* QAbstractItemModel_RoleNames(void* c_this);
	[LinkName("QAbstractItemModel_CheckIndex")]
	public static extern bool QAbstractItemModel_CheckIndex(void* c_this, void* index);
	[LinkName("QAbstractItemModel_MultiData")]
	public static extern void QAbstractItemModel_MultiData(void* c_this, void* index, void roleDataSpan);
	[LinkName("QAbstractItemModel_Connect_DataChanged")]
	public static extern void QAbstractItemModel_Connect_DataChanged(void* c_this, c_intptr slot);
	[LinkName("QAbstractItemModel_Connect_HeaderDataChanged")]
	public static extern void QAbstractItemModel_Connect_HeaderDataChanged(void* c_this, c_intptr slot);
	[LinkName("QAbstractItemModel_Connect_LayoutChanged")]
	public static extern void QAbstractItemModel_Connect_LayoutChanged(void* c_this, c_intptr slot);
	[LinkName("QAbstractItemModel_Connect_LayoutAboutToBeChanged")]
	public static extern void QAbstractItemModel_Connect_LayoutAboutToBeChanged(void* c_this, c_intptr slot);
	[LinkName("QAbstractItemModel_Submit")]
	public static extern bool QAbstractItemModel_Submit(void* c_this);
	[LinkName("QAbstractItemModel_Revert")]
	public static extern void QAbstractItemModel_Revert(void* c_this);
	[LinkName("QAbstractItemModel_ResetInternalData")]
	public static extern void QAbstractItemModel_ResetInternalData(void* c_this);
	[LinkName("QAbstractItemModel_CreateIndex")]
	public static extern void QAbstractItemModel_CreateIndex(void* c_this, int32 row, int32 column);
	[LinkName("QAbstractItemModel_CreateIndex2")]
	public static extern void QAbstractItemModel_CreateIndex2(void* c_this, int32 row, int32 column, c_uintptr id);
	[LinkName("QAbstractItemModel_EncodeData")]
	public static extern void QAbstractItemModel_EncodeData(void* c_this, void[] indexes, void* stream);
	[LinkName("QAbstractItemModel_DecodeData")]
	public static extern bool QAbstractItemModel_DecodeData(void* c_this, int32 row, int32 column, void* parent, void* stream);
	[LinkName("QAbstractItemModel_BeginInsertRows")]
	public static extern void QAbstractItemModel_BeginInsertRows(void* c_this, void* parent, int32 first, int32 last);
	[LinkName("QAbstractItemModel_EndInsertRows")]
	public static extern void QAbstractItemModel_EndInsertRows(void* c_this);
	[LinkName("QAbstractItemModel_BeginRemoveRows")]
	public static extern void QAbstractItemModel_BeginRemoveRows(void* c_this, void* parent, int32 first, int32 last);
	[LinkName("QAbstractItemModel_EndRemoveRows")]
	public static extern void QAbstractItemModel_EndRemoveRows(void* c_this);
	[LinkName("QAbstractItemModel_BeginMoveRows")]
	public static extern bool QAbstractItemModel_BeginMoveRows(void* c_this, void* sourceParent, int32 sourceFirst, int32 sourceLast, void* destinationParent, int32 destinationRow);
	[LinkName("QAbstractItemModel_EndMoveRows")]
	public static extern void QAbstractItemModel_EndMoveRows(void* c_this);
	[LinkName("QAbstractItemModel_BeginInsertColumns")]
	public static extern void QAbstractItemModel_BeginInsertColumns(void* c_this, void* parent, int32 first, int32 last);
	[LinkName("QAbstractItemModel_EndInsertColumns")]
	public static extern void QAbstractItemModel_EndInsertColumns(void* c_this);
	[LinkName("QAbstractItemModel_BeginRemoveColumns")]
	public static extern void QAbstractItemModel_BeginRemoveColumns(void* c_this, void* parent, int32 first, int32 last);
	[LinkName("QAbstractItemModel_EndRemoveColumns")]
	public static extern void QAbstractItemModel_EndRemoveColumns(void* c_this);
	[LinkName("QAbstractItemModel_BeginMoveColumns")]
	public static extern bool QAbstractItemModel_BeginMoveColumns(void* c_this, void* sourceParent, int32 sourceFirst, int32 sourceLast, void* destinationParent, int32 destinationColumn);
	[LinkName("QAbstractItemModel_EndMoveColumns")]
	public static extern void QAbstractItemModel_EndMoveColumns(void* c_this);
	[LinkName("QAbstractItemModel_BeginResetModel")]
	public static extern void QAbstractItemModel_BeginResetModel(void* c_this);
	[LinkName("QAbstractItemModel_EndResetModel")]
	public static extern void QAbstractItemModel_EndResetModel(void* c_this);
	[LinkName("QAbstractItemModel_ChangePersistentIndex")]
	public static extern void QAbstractItemModel_ChangePersistentIndex(void* c_this, void* from, void* to);
	[LinkName("QAbstractItemModel_ChangePersistentIndexList")]
	public static extern void QAbstractItemModel_ChangePersistentIndexList(void* c_this, void[] from, void[] to);
	[LinkName("QAbstractItemModel_PersistentIndexList")]
	public static extern void[] QAbstractItemModel_PersistentIndexList(void* c_this);
	[LinkName("QAbstractItemModel_Tr2")]
	public static extern libqt_string QAbstractItemModel_Tr2(char8[] s, char8[] c);
	[LinkName("QAbstractItemModel_Tr3")]
	public static extern libqt_string QAbstractItemModel_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QAbstractItemModel_HasIndex3")]
	public static extern bool QAbstractItemModel_HasIndex3(void* c_this, int32 row, int32 column, void* parent);
	[LinkName("QAbstractItemModel_InsertRow2")]
	public static extern bool QAbstractItemModel_InsertRow2(void* c_this, int32 row, void* parent);
	[LinkName("QAbstractItemModel_InsertColumn2")]
	public static extern bool QAbstractItemModel_InsertColumn2(void* c_this, int32 column, void* parent);
	[LinkName("QAbstractItemModel_RemoveRow2")]
	public static extern bool QAbstractItemModel_RemoveRow2(void* c_this, int32 row, void* parent);
	[LinkName("QAbstractItemModel_RemoveColumn2")]
	public static extern bool QAbstractItemModel_RemoveColumn2(void* c_this, int32 column, void* parent);
	[LinkName("QAbstractItemModel_CheckIndex2")]
	public static extern bool QAbstractItemModel_CheckIndex2(void* c_this, void* index, int64 options);
	[LinkName("QAbstractItemModel_Connect_DataChanged3")]
	public static extern void QAbstractItemModel_Connect_DataChanged3(void* c_this, c_intptr slot);
	[LinkName("QAbstractItemModel_Connect_LayoutChanged1")]
	public static extern void QAbstractItemModel_Connect_LayoutChanged1(void* c_this, c_intptr slot);
	[LinkName("QAbstractItemModel_Connect_LayoutChanged2")]
	public static extern void QAbstractItemModel_Connect_LayoutChanged2(void* c_this, c_intptr slot);
	[LinkName("QAbstractItemModel_Connect_LayoutAboutToBeChanged1")]
	public static extern void QAbstractItemModel_Connect_LayoutAboutToBeChanged1(void* c_this, c_intptr slot);
	[LinkName("QAbstractItemModel_Connect_LayoutAboutToBeChanged2")]
	public static extern void QAbstractItemModel_Connect_LayoutAboutToBeChanged2(void* c_this, c_intptr slot);
	[LinkName("QAbstractItemModel_CreateIndex3")]
	public static extern void QAbstractItemModel_CreateIndex3(void* c_this, int32 row, int32 column, void* data);
	/// Delete this object from C++ memory
	[LinkName("QAbstractItemModel_Delete")]
	public static extern void QAbstractItemModel_Delete(void* self);
}
public class QAbstractTableModel
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QAbstractTableModel_new();
	}
	
	public ~this()
	{
		CQt.QAbstractTableModel_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QAbstractTableModel_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QAbstractTableModel_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QAbstractTableModel_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QAbstractTableModel_Tr(s);
	}
	
	public virtual void Index(int32 row, int32 column, void* parent)
	{
		CQt.QAbstractTableModel_Index(this.nativePtr, row, column, parent);
	}
	
	public virtual void Sibling(int32 row, int32 column, void* idx)
	{
		CQt.QAbstractTableModel_Sibling(this.nativePtr, row, column, idx);
	}
	
	public virtual bool DropMimeData(void* data, int64 action, int32 row, int32 column, void* parent)
	{
		return CQt.QAbstractTableModel_DropMimeData(this.nativePtr, data, action, row, column, parent);
	}
	
	public virtual int64 Flags(void* index)
	{
		return CQt.QAbstractTableModel_Flags(this.nativePtr, index);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QAbstractTableModel_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QAbstractTableModel_Tr3(s, c, n);
	}
	
	public bool HasIndex(int32 row, int32 column)
	{
		return CQt.QAbstractItemModel_HasIndex(this.nativePtr, row, column);
	}
	
	public virtual void Parent(void* child)
	{
		CQt.QAbstractItemModel_Parent(this.nativePtr, child);
	}
	
	public virtual int32 RowCount(void* parent)
	{
		return CQt.QAbstractItemModel_RowCount(this.nativePtr, parent);
	}
	
	public virtual int32 ColumnCount(void* parent)
	{
		return CQt.QAbstractItemModel_ColumnCount(this.nativePtr, parent);
	}
	
	public virtual bool HasChildren(void* parent)
	{
		return CQt.QAbstractItemModel_HasChildren(this.nativePtr, parent);
	}
	
	public virtual void Data(void* index, int32 role)
	{
		CQt.QAbstractItemModel_Data(this.nativePtr, index, role);
	}
	
	public virtual bool SetData(void* index, void* value, int32 role)
	{
		return CQt.QAbstractItemModel_SetData(this.nativePtr, index, value, role);
	}
	
	public virtual void HeaderData(int32 section, int64 orientation, int32 role)
	{
		CQt.QAbstractItemModel_HeaderData(this.nativePtr, section, orientation, role);
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
	[LinkName("QAbstractTableModel_new")]
	public static extern void* QAbstractTableModel_new();
	[LinkName("QAbstractTableModel_new2")]
	public static extern void* QAbstractTableModel_new2(void* parent);
	[LinkName("QAbstractTableModel_MetaObject")]
	public static extern void* QAbstractTableModel_MetaObject(void* c_this);
	[LinkName("QAbstractTableModel_Metacast")]
	public static extern void* QAbstractTableModel_Metacast(void* c_this, char8[] param1);
	[LinkName("QAbstractTableModel_Metacall")]
	public static extern int32 QAbstractTableModel_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QAbstractTableModel_Tr")]
	public static extern libqt_string QAbstractTableModel_Tr(char8[] s);
	[LinkName("QAbstractTableModel_Index")]
	public static extern void QAbstractTableModel_Index(void* c_this, int32 row, int32 column, void* parent);
	[LinkName("QAbstractTableModel_Sibling")]
	public static extern void QAbstractTableModel_Sibling(void* c_this, int32 row, int32 column, void* idx);
	[LinkName("QAbstractTableModel_DropMimeData")]
	public static extern bool QAbstractTableModel_DropMimeData(void* c_this, void* data, int64 action, int32 row, int32 column, void* parent);
	[LinkName("QAbstractTableModel_Flags")]
	public static extern int64 QAbstractTableModel_Flags(void* c_this, void* index);
	[LinkName("QAbstractTableModel_Tr2")]
	public static extern libqt_string QAbstractTableModel_Tr2(char8[] s, char8[] c);
	[LinkName("QAbstractTableModel_Tr3")]
	public static extern libqt_string QAbstractTableModel_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QAbstractTableModel_Delete")]
	public static extern void QAbstractTableModel_Delete(void* self);
}
public class QAbstractListModel
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QAbstractListModel_new();
	}
	
	public ~this()
	{
		CQt.QAbstractListModel_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QAbstractListModel_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QAbstractListModel_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QAbstractListModel_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QAbstractListModel_Tr(s);
	}
	
	public virtual void Index(int32 row, int32 column, void* parent)
	{
		CQt.QAbstractListModel_Index(this.nativePtr, row, column, parent);
	}
	
	public virtual void Sibling(int32 row, int32 column, void* idx)
	{
		CQt.QAbstractListModel_Sibling(this.nativePtr, row, column, idx);
	}
	
	public virtual bool DropMimeData(void* data, int64 action, int32 row, int32 column, void* parent)
	{
		return CQt.QAbstractListModel_DropMimeData(this.nativePtr, data, action, row, column, parent);
	}
	
	public virtual int64 Flags(void* index)
	{
		return CQt.QAbstractListModel_Flags(this.nativePtr, index);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QAbstractListModel_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QAbstractListModel_Tr3(s, c, n);
	}
	
	public bool HasIndex(int32 row, int32 column)
	{
		return CQt.QAbstractItemModel_HasIndex(this.nativePtr, row, column);
	}
	
	public virtual void Parent(void* child)
	{
		CQt.QAbstractItemModel_Parent(this.nativePtr, child);
	}
	
	public virtual int32 RowCount(void* parent)
	{
		return CQt.QAbstractItemModel_RowCount(this.nativePtr, parent);
	}
	
	public virtual int32 ColumnCount(void* parent)
	{
		return CQt.QAbstractItemModel_ColumnCount(this.nativePtr, parent);
	}
	
	public virtual bool HasChildren(void* parent)
	{
		return CQt.QAbstractItemModel_HasChildren(this.nativePtr, parent);
	}
	
	public virtual void Data(void* index, int32 role)
	{
		CQt.QAbstractItemModel_Data(this.nativePtr, index, role);
	}
	
	public virtual bool SetData(void* index, void* value, int32 role)
	{
		return CQt.QAbstractItemModel_SetData(this.nativePtr, index, value, role);
	}
	
	public virtual void HeaderData(int32 section, int64 orientation, int32 role)
	{
		CQt.QAbstractItemModel_HeaderData(this.nativePtr, section, orientation, role);
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
	[LinkName("QAbstractListModel_new")]
	public static extern void* QAbstractListModel_new();
	[LinkName("QAbstractListModel_new2")]
	public static extern void* QAbstractListModel_new2(void* parent);
	[LinkName("QAbstractListModel_MetaObject")]
	public static extern void* QAbstractListModel_MetaObject(void* c_this);
	[LinkName("QAbstractListModel_Metacast")]
	public static extern void* QAbstractListModel_Metacast(void* c_this, char8[] param1);
	[LinkName("QAbstractListModel_Metacall")]
	public static extern int32 QAbstractListModel_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QAbstractListModel_Tr")]
	public static extern libqt_string QAbstractListModel_Tr(char8[] s);
	[LinkName("QAbstractListModel_Index")]
	public static extern void QAbstractListModel_Index(void* c_this, int32 row, int32 column, void* parent);
	[LinkName("QAbstractListModel_Sibling")]
	public static extern void QAbstractListModel_Sibling(void* c_this, int32 row, int32 column, void* idx);
	[LinkName("QAbstractListModel_DropMimeData")]
	public static extern bool QAbstractListModel_DropMimeData(void* c_this, void* data, int64 action, int32 row, int32 column, void* parent);
	[LinkName("QAbstractListModel_Flags")]
	public static extern int64 QAbstractListModel_Flags(void* c_this, void* index);
	[LinkName("QAbstractListModel_Tr2")]
	public static extern libqt_string QAbstractListModel_Tr2(char8[] s, char8[] c);
	[LinkName("QAbstractListModel_Tr3")]
	public static extern libqt_string QAbstractListModel_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QAbstractListModel_Delete")]
	public static extern void QAbstractListModel_Delete(void* self);
}