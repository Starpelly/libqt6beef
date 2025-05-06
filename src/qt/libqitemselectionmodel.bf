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
	public static extern QItemSelectionRange* QItemSelectionRange_new();
	[LinkName("QItemSelectionRange_new2")]
	public static extern QItemSelectionRange* QItemSelectionRange_new2(QModelIndex* topL, QModelIndex* bottomR);
	[LinkName("QItemSelectionRange_new3")]
	public static extern QItemSelectionRange* QItemSelectionRange_new3(QModelIndex* index);
	[LinkName("QItemSelectionRange_new4")]
	public static extern QItemSelectionRange* QItemSelectionRange_new4(QItemSelectionRange* param1);
	[LinkName("QItemSelectionRange_Swap")]
	public static extern void QItemSelectionRange_Swap(Self* c_this, QItemSelectionRange* other);
	[LinkName("QItemSelectionRange_Top")]
	public static extern int32 QItemSelectionRange_Top(Self* c_this);
	[LinkName("QItemSelectionRange_Left")]
	public static extern int32 QItemSelectionRange_Left(Self* c_this);
	[LinkName("QItemSelectionRange_Bottom")]
	public static extern int32 QItemSelectionRange_Bottom(Self* c_this);
	[LinkName("QItemSelectionRange_Right")]
	public static extern int32 QItemSelectionRange_Right(Self* c_this);
	[LinkName("QItemSelectionRange_Width")]
	public static extern int32 QItemSelectionRange_Width(Self* c_this);
	[LinkName("QItemSelectionRange_Height")]
	public static extern int32 QItemSelectionRange_Height(Self* c_this);
	[LinkName("QItemSelectionRange_TopLeft")]
	public static extern QPersistentModelIndex* QItemSelectionRange_TopLeft(Self* c_this);
	[LinkName("QItemSelectionRange_BottomRight")]
	public static extern QPersistentModelIndex* QItemSelectionRange_BottomRight(Self* c_this);
	[LinkName("QItemSelectionRange_Parent")]
	public static extern QModelIndex QItemSelectionRange_Parent(Self* c_this);
	[LinkName("QItemSelectionRange_Model")]
	public static extern QAbstractItemModel* QItemSelectionRange_Model(Self* c_this);
	[LinkName("QItemSelectionRange_Contains")]
	public static extern bool QItemSelectionRange_Contains(Self* c_this, QModelIndex* index);
	[LinkName("QItemSelectionRange_Contains2")]
	public static extern bool QItemSelectionRange_Contains2(Self* c_this, int32 row, int32 column, QModelIndex* parentIndex);
	[LinkName("QItemSelectionRange_Intersects")]
	public static extern bool QItemSelectionRange_Intersects(Self* c_this, QItemSelectionRange* other);
	[LinkName("QItemSelectionRange_Intersected")]
	public static extern QItemSelectionRange QItemSelectionRange_Intersected(Self* c_this, QItemSelectionRange* other);
	[LinkName("QItemSelectionRange_OperatorEqual")]
	public static extern bool QItemSelectionRange_OperatorEqual(Self* c_this, QItemSelectionRange* other);
	[LinkName("QItemSelectionRange_OperatorNotEqual")]
	public static extern bool QItemSelectionRange_OperatorNotEqual(Self* c_this, QItemSelectionRange* other);
	[LinkName("QItemSelectionRange_IsValid")]
	public static extern bool QItemSelectionRange_IsValid(Self* c_this);
	[LinkName("QItemSelectionRange_IsEmpty")]
	public static extern bool QItemSelectionRange_IsEmpty(Self* c_this);
	[LinkName("QItemSelectionRange_Indexes")]
	public static extern QModelIndex[] QItemSelectionRange_Indexes(Self* c_this);
}
public struct QItemSelectionModel : QObject
{
	[LinkName("QItemSelectionModel_new")]
	public static extern QItemSelectionModel* QItemSelectionModel_new();
	[LinkName("QItemSelectionModel_new2")]
	public static extern QItemSelectionModel* QItemSelectionModel_new2(QAbstractItemModel* model, QObject* parent);
	[LinkName("QItemSelectionModel_new3")]
	public static extern QItemSelectionModel* QItemSelectionModel_new3(QAbstractItemModel* model);
	[LinkName("QItemSelectionModel_MetaObject")]
	public static extern QMetaObject* QItemSelectionModel_MetaObject(Self* c_this);
	[LinkName("QItemSelectionModel_Metacast")]
	public static extern void* QItemSelectionModel_Metacast(Self* c_this, char8[] param1);
	[LinkName("QItemSelectionModel_Metacall")]
	public static extern int32 QItemSelectionModel_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QItemSelectionModel_Tr")]
	public static extern libqt_string QItemSelectionModel_Tr(char8[] s);
	[LinkName("QItemSelectionModel_CurrentIndex")]
	public static extern QModelIndex QItemSelectionModel_CurrentIndex(Self* c_this);
	[LinkName("QItemSelectionModel_IsSelected")]
	public static extern bool QItemSelectionModel_IsSelected(Self* c_this, QModelIndex* index);
	[LinkName("QItemSelectionModel_IsRowSelected")]
	public static extern bool QItemSelectionModel_IsRowSelected(Self* c_this, int32 row);
	[LinkName("QItemSelectionModel_IsColumnSelected")]
	public static extern bool QItemSelectionModel_IsColumnSelected(Self* c_this, int32 column);
	[LinkName("QItemSelectionModel_RowIntersectsSelection")]
	public static extern bool QItemSelectionModel_RowIntersectsSelection(Self* c_this, int32 row);
	[LinkName("QItemSelectionModel_ColumnIntersectsSelection")]
	public static extern bool QItemSelectionModel_ColumnIntersectsSelection(Self* c_this, int32 column);
	[LinkName("QItemSelectionModel_HasSelection")]
	public static extern bool QItemSelectionModel_HasSelection(Self* c_this);
	[LinkName("QItemSelectionModel_SelectedIndexes")]
	public static extern QModelIndex[] QItemSelectionModel_SelectedIndexes(Self* c_this);
	[LinkName("QItemSelectionModel_SelectedRows")]
	public static extern QModelIndex[] QItemSelectionModel_SelectedRows(Self* c_this);
	[LinkName("QItemSelectionModel_SelectedColumns")]
	public static extern QModelIndex[] QItemSelectionModel_SelectedColumns(Self* c_this);
	[LinkName("QItemSelectionModel_Selection")]
	public static extern QItemSelection QItemSelectionModel_Selection(Self* c_this);
	[LinkName("QItemSelectionModel_Model")]
	public static extern QAbstractItemModel* QItemSelectionModel_Model(Self* c_this);
	[LinkName("QItemSelectionModel_Model2")]
	public static extern QAbstractItemModel* QItemSelectionModel_Model2(Self* c_this);
	[LinkName("QItemSelectionModel_SetModel")]
	public static extern void QItemSelectionModel_SetModel(Self* c_this, QAbstractItemModel* model);
	[LinkName("QItemSelectionModel_SetCurrentIndex")]
	public static extern void QItemSelectionModel_SetCurrentIndex(Self* c_this, QModelIndex* index, int64 command);
	[LinkName("QItemSelectionModel_Select")]
	public static extern void QItemSelectionModel_Select(Self* c_this, QModelIndex* index, int64 command);
	[LinkName("QItemSelectionModel_Select2")]
	public static extern void QItemSelectionModel_Select2(Self* c_this, QItemSelection* selection, int64 command);
	[LinkName("QItemSelectionModel_Clear")]
	public static extern void QItemSelectionModel_Clear(Self* c_this);
	[LinkName("QItemSelectionModel_Reset")]
	public static extern void QItemSelectionModel_Reset(Self* c_this);
	[LinkName("QItemSelectionModel_ClearSelection")]
	public static extern void QItemSelectionModel_ClearSelection(Self* c_this);
	[LinkName("QItemSelectionModel_ClearCurrentIndex")]
	public static extern void QItemSelectionModel_ClearCurrentIndex(Self* c_this);
	[LinkName("QItemSelectionModel_SelectionChanged")]
	public static extern void QItemSelectionModel_SelectionChanged(Self* c_this, QItemSelection* selected, QItemSelection* deselected);
	[LinkName("QItemSelectionModel_CurrentChanged")]
	public static extern void QItemSelectionModel_CurrentChanged(Self* c_this, QModelIndex* current, QModelIndex* previous);
	[LinkName("QItemSelectionModel_CurrentRowChanged")]
	public static extern void QItemSelectionModel_CurrentRowChanged(Self* c_this, QModelIndex* current, QModelIndex* previous);
	[LinkName("QItemSelectionModel_CurrentColumnChanged")]
	public static extern void QItemSelectionModel_CurrentColumnChanged(Self* c_this, QModelIndex* current, QModelIndex* previous);
	[LinkName("QItemSelectionModel_ModelChanged")]
	public static extern void QItemSelectionModel_ModelChanged(Self* c_this, QAbstractItemModel* model);
	[LinkName("QItemSelectionModel_EmitSelectionChanged")]
	public static extern void QItemSelectionModel_EmitSelectionChanged(Self* c_this, QItemSelection* newSelection, QItemSelection* oldSelection);
	[LinkName("QItemSelectionModel_Tr2")]
	public static extern libqt_string QItemSelectionModel_Tr2(char8[] s, char8[] c);
	[LinkName("QItemSelectionModel_Tr3")]
	public static extern libqt_string QItemSelectionModel_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QItemSelectionModel_IsRowSelected2")]
	public static extern bool QItemSelectionModel_IsRowSelected2(Self* c_this, int32 row, QModelIndex* parent);
	[LinkName("QItemSelectionModel_IsColumnSelected2")]
	public static extern bool QItemSelectionModel_IsColumnSelected2(Self* c_this, int32 column, QModelIndex* parent);
	[LinkName("QItemSelectionModel_RowIntersectsSelection2")]
	public static extern bool QItemSelectionModel_RowIntersectsSelection2(Self* c_this, int32 row, QModelIndex* parent);
	[LinkName("QItemSelectionModel_ColumnIntersectsSelection2")]
	public static extern bool QItemSelectionModel_ColumnIntersectsSelection2(Self* c_this, int32 column, QModelIndex* parent);
	[LinkName("QItemSelectionModel_SelectedRows1")]
	public static extern QModelIndex[] QItemSelectionModel_SelectedRows1(Self* c_this, int32 column);
	[LinkName("QItemSelectionModel_SelectedColumns1")]
	public static extern QModelIndex[] QItemSelectionModel_SelectedColumns1(Self* c_this, int32 row);
}
public struct QItemSelection// Also inherits unprojectable QList<QItemSelectionRange>

{
	[LinkName("QItemSelection_new")]
	public static extern QItemSelection* QItemSelection_new(QModelIndex* topLeft, QModelIndex* bottomRight);
	[LinkName("QItemSelection_new2")]
	public static extern QItemSelection* QItemSelection_new2();
	[LinkName("QItemSelection_new3")]
	public static extern QItemSelection* QItemSelection_new3(QItemSelection* param1);
	[LinkName("QItemSelection_Select")]
	public static extern void QItemSelection_Select(Self* c_this, QModelIndex* topLeft, QModelIndex* bottomRight);
	[LinkName("QItemSelection_Contains")]
	public static extern bool QItemSelection_Contains(Self* c_this, QModelIndex* index);
	[LinkName("QItemSelection_Indexes")]
	public static extern QModelIndex[] QItemSelection_Indexes(Self* c_this);
	[LinkName("QItemSelection_Merge")]
	public static extern void QItemSelection_Merge(Self* c_this, QItemSelection* other, int64 command);
	[LinkName("QItemSelection_Split")]
	public static extern void QItemSelection_Split(QItemSelectionRange* range, QItemSelectionRange* other, QItemSelection* result);
}