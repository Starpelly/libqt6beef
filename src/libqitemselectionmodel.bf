using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QItemSelectionModel__SelectionFlag
{
	NoUpdate = 0,
	Clear = 1,
	Select = 2,
	Deselect = 4,
	Toggle = 8,
	Current = 16,
	Rows = 32,
	Columns = 64,
	SelectCurrent = 18,
	ToggleCurrent = 24,
	ClearAndSelect = 3,
}
public struct QItemSelectionRange
{
	[LinkName("QItemSelectionRange_new")]
	public static extern void* QItemSelectionRange_new();
	[LinkName("QItemSelectionRange_new2")]
	public static extern void* QItemSelectionRange_new2(QModelIndex topL, QModelIndex bottomR);
	[LinkName("QItemSelectionRange_new3")]
	public static extern void* QItemSelectionRange_new3(QModelIndex index);
	[LinkName("QItemSelectionRange_new4")]
	public static extern void* QItemSelectionRange_new4(QItemSelectionRange param1);
	[LinkName("QItemSelectionRange_Swap")]
	public static extern void QItemSelectionRange_Swap(void* c_this, QItemSelectionRange other);
	[LinkName("QItemSelectionRange_Top")]
	public static extern int32 QItemSelectionRange_Top(void* c_this);
	[LinkName("QItemSelectionRange_Left")]
	public static extern int32 QItemSelectionRange_Left(void* c_this);
	[LinkName("QItemSelectionRange_Bottom")]
	public static extern int32 QItemSelectionRange_Bottom(void* c_this);
	[LinkName("QItemSelectionRange_Right")]
	public static extern int32 QItemSelectionRange_Right(void* c_this);
	[LinkName("QItemSelectionRange_Width")]
	public static extern int32 QItemSelectionRange_Width(void* c_this);
	[LinkName("QItemSelectionRange_Height")]
	public static extern int32 QItemSelectionRange_Height(void* c_this);
	[LinkName("QItemSelectionRange_TopLeft")]
	public static extern QPersistentModelIndex QItemSelectionRange_TopLeft(void* c_this);
	[LinkName("QItemSelectionRange_BottomRight")]
	public static extern QPersistentModelIndex QItemSelectionRange_BottomRight(void* c_this);
	[LinkName("QItemSelectionRange_Parent")]
	public static extern QModelIndex QItemSelectionRange_Parent(void* c_this);
	[LinkName("QItemSelectionRange_Model")]
	public static extern QAbstractItemModel QItemSelectionRange_Model(void* c_this);
	[LinkName("QItemSelectionRange_Contains")]
	public static extern bool QItemSelectionRange_Contains(void* c_this, QModelIndex index);
	[LinkName("QItemSelectionRange_Contains2")]
	public static extern bool QItemSelectionRange_Contains2(void* c_this, int32 row, int32 column, QModelIndex parentIndex);
	[LinkName("QItemSelectionRange_Intersects")]
	public static extern bool QItemSelectionRange_Intersects(void* c_this, QItemSelectionRange other);
	[LinkName("QItemSelectionRange_Intersected")]
	public static extern QItemSelectionRange QItemSelectionRange_Intersected(void* c_this, QItemSelectionRange other);
	[LinkName("QItemSelectionRange_OperatorEqual")]
	public static extern bool QItemSelectionRange_OperatorEqual(void* c_this, QItemSelectionRange other);
	[LinkName("QItemSelectionRange_OperatorNotEqual")]
	public static extern bool QItemSelectionRange_OperatorNotEqual(void* c_this, QItemSelectionRange other);
	[LinkName("QItemSelectionRange_IsValid")]
	public static extern bool QItemSelectionRange_IsValid(void* c_this);
	[LinkName("QItemSelectionRange_IsEmpty")]
	public static extern bool QItemSelectionRange_IsEmpty(void* c_this);
	[LinkName("QItemSelectionRange_Indexes")]
	public static extern QModelIndex[] QItemSelectionRange_Indexes(void* c_this);
}
public struct QItemSelectionModel
{
	[LinkName("QItemSelectionModel_new")]
	public static extern void* QItemSelectionModel_new();
	[LinkName("QItemSelectionModel_new2")]
	public static extern void* QItemSelectionModel_new2(QAbstractItemModel model, QObject parent);
	[LinkName("QItemSelectionModel_new3")]
	public static extern void* QItemSelectionModel_new3(QAbstractItemModel model);
	[LinkName("QItemSelectionModel_MetaObject")]
	public static extern QMetaObject QItemSelectionModel_MetaObject(void* c_this);
	[LinkName("QItemSelectionModel_Metacast")]
	public static extern void QItemSelectionModel_Metacast(void* c_this, char8[] param1);
	[LinkName("QItemSelectionModel_Metacall")]
	public static extern int32 QItemSelectionModel_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QItemSelectionModel_Tr")]
	public static extern char8[] QItemSelectionModel_Tr(char8[] s);
	[LinkName("QItemSelectionModel_CurrentIndex")]
	public static extern QModelIndex QItemSelectionModel_CurrentIndex(void* c_this);
	[LinkName("QItemSelectionModel_IsSelected")]
	public static extern bool QItemSelectionModel_IsSelected(void* c_this, QModelIndex index);
	[LinkName("QItemSelectionModel_IsRowSelected")]
	public static extern bool QItemSelectionModel_IsRowSelected(void* c_this, int32 row);
	[LinkName("QItemSelectionModel_IsColumnSelected")]
	public static extern bool QItemSelectionModel_IsColumnSelected(void* c_this, int32 column);
	[LinkName("QItemSelectionModel_RowIntersectsSelection")]
	public static extern bool QItemSelectionModel_RowIntersectsSelection(void* c_this, int32 row);
	[LinkName("QItemSelectionModel_ColumnIntersectsSelection")]
	public static extern bool QItemSelectionModel_ColumnIntersectsSelection(void* c_this, int32 column);
	[LinkName("QItemSelectionModel_HasSelection")]
	public static extern bool QItemSelectionModel_HasSelection(void* c_this);
	[LinkName("QItemSelectionModel_SelectedIndexes")]
	public static extern QModelIndex[] QItemSelectionModel_SelectedIndexes(void* c_this);
	[LinkName("QItemSelectionModel_SelectedRows")]
	public static extern QModelIndex[] QItemSelectionModel_SelectedRows(void* c_this);
	[LinkName("QItemSelectionModel_SelectedColumns")]
	public static extern QModelIndex[] QItemSelectionModel_SelectedColumns(void* c_this);
	[LinkName("QItemSelectionModel_Selection")]
	public static extern QItemSelection QItemSelectionModel_Selection(void* c_this);
	[LinkName("QItemSelectionModel_Model")]
	public static extern QAbstractItemModel QItemSelectionModel_Model(void* c_this);
	[LinkName("QItemSelectionModel_Model2")]
	public static extern QAbstractItemModel QItemSelectionModel_Model2(void* c_this);
	[LinkName("QItemSelectionModel_SetModel")]
	public static extern void QItemSelectionModel_SetModel(void* c_this, QAbstractItemModel model);
	[LinkName("QItemSelectionModel_SetCurrentIndex")]
	public static extern void QItemSelectionModel_SetCurrentIndex(void* c_this, QModelIndex index, int64 command);
	[LinkName("QItemSelectionModel_Select")]
	public static extern void QItemSelectionModel_Select(void* c_this, QModelIndex index, int64 command);
	[LinkName("QItemSelectionModel_Select2")]
	public static extern void QItemSelectionModel_Select2(void* c_this, QItemSelection selection, int64 command);
	[LinkName("QItemSelectionModel_Clear")]
	public static extern void QItemSelectionModel_Clear(void* c_this);
	[LinkName("QItemSelectionModel_Reset")]
	public static extern void QItemSelectionModel_Reset(void* c_this);
	[LinkName("QItemSelectionModel_ClearSelection")]
	public static extern void QItemSelectionModel_ClearSelection(void* c_this);
	[LinkName("QItemSelectionModel_ClearCurrentIndex")]
	public static extern void QItemSelectionModel_ClearCurrentIndex(void* c_this);
	[LinkName("QItemSelectionModel_SelectionChanged")]
	public static extern void QItemSelectionModel_SelectionChanged(void* c_this, QItemSelection selected, QItemSelection deselected);
	[LinkName("QItemSelectionModel_CurrentChanged")]
	public static extern void QItemSelectionModel_CurrentChanged(void* c_this, QModelIndex current, QModelIndex previous);
	[LinkName("QItemSelectionModel_CurrentRowChanged")]
	public static extern void QItemSelectionModel_CurrentRowChanged(void* c_this, QModelIndex current, QModelIndex previous);
	[LinkName("QItemSelectionModel_CurrentColumnChanged")]
	public static extern void QItemSelectionModel_CurrentColumnChanged(void* c_this, QModelIndex current, QModelIndex previous);
	[LinkName("QItemSelectionModel_ModelChanged")]
	public static extern void QItemSelectionModel_ModelChanged(void* c_this, QAbstractItemModel model);
	[LinkName("QItemSelectionModel_EmitSelectionChanged")]
	public static extern void QItemSelectionModel_EmitSelectionChanged(void* c_this, QItemSelection newSelection, QItemSelection oldSelection);
	[LinkName("QItemSelectionModel_Tr2")]
	public static extern char8[] QItemSelectionModel_Tr2(char8[] s, char8[] c);
	[LinkName("QItemSelectionModel_Tr3")]
	public static extern char8[] QItemSelectionModel_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QItemSelectionModel_IsRowSelected2")]
	public static extern bool QItemSelectionModel_IsRowSelected2(void* c_this, int32 row, QModelIndex parent);
	[LinkName("QItemSelectionModel_IsColumnSelected2")]
	public static extern bool QItemSelectionModel_IsColumnSelected2(void* c_this, int32 column, QModelIndex parent);
	[LinkName("QItemSelectionModel_RowIntersectsSelection2")]
	public static extern bool QItemSelectionModel_RowIntersectsSelection2(void* c_this, int32 row, QModelIndex parent);
	[LinkName("QItemSelectionModel_ColumnIntersectsSelection2")]
	public static extern bool QItemSelectionModel_ColumnIntersectsSelection2(void* c_this, int32 column, QModelIndex parent);
	[LinkName("QItemSelectionModel_SelectedRows1")]
	public static extern QModelIndex[] QItemSelectionModel_SelectedRows1(void* c_this, int32 column);
	[LinkName("QItemSelectionModel_SelectedColumns1")]
	public static extern QModelIndex[] QItemSelectionModel_SelectedColumns1(void* c_this, int32 row);
}
public struct QItemSelection
{
	[LinkName("QItemSelection_new")]
	public static extern void* QItemSelection_new(QModelIndex topLeft, QModelIndex bottomRight);
	[LinkName("QItemSelection_new2")]
	public static extern void* QItemSelection_new2();
	[LinkName("QItemSelection_new3")]
	public static extern void* QItemSelection_new3(QItemSelection param1);
	[LinkName("QItemSelection_Select")]
	public static extern void QItemSelection_Select(void* c_this, QModelIndex topLeft, QModelIndex bottomRight);
	[LinkName("QItemSelection_Contains")]
	public static extern bool QItemSelection_Contains(void* c_this, QModelIndex index);
	[LinkName("QItemSelection_Indexes")]
	public static extern QModelIndex[] QItemSelection_Indexes(void* c_this);
	[LinkName("QItemSelection_Merge")]
	public static extern void QItemSelection_Merge(void* c_this, QItemSelection other, int64 command);
	[LinkName("QItemSelection_Split")]
	public static extern void QItemSelection_Split(QItemSelectionRange range, QItemSelectionRange other, QItemSelection result);
}