using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QAbstractItemDelegate__EndEditHint
{
	NoHint = 0,
	EditNextItem = 1,
	EditPreviousItem = 2,
	SubmitModelCache = 3,
	RevertModelCache = 4,
}
public struct QAbstractItemDelegate : QObject
{
	[LinkName("QAbstractItemDelegate_new")]
	public static extern QAbstractItemDelegate* QAbstractItemDelegate_new();
	[LinkName("QAbstractItemDelegate_new2")]
	public static extern QAbstractItemDelegate* QAbstractItemDelegate_new2(QObject* parent);
	[LinkName("QAbstractItemDelegate_MetaObject")]
	public static extern QMetaObject* QAbstractItemDelegate_MetaObject(Self* c_this);
	[LinkName("QAbstractItemDelegate_Metacast")]
	public static extern void* QAbstractItemDelegate_Metacast(Self* c_this, char8[] param1);
	[LinkName("QAbstractItemDelegate_Metacall")]
	public static extern int32 QAbstractItemDelegate_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QAbstractItemDelegate_Tr")]
	public static extern libqt_string QAbstractItemDelegate_Tr(char8[] s);
	[LinkName("QAbstractItemDelegate_Paint")]
	public static extern void QAbstractItemDelegate_Paint(Self* c_this, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index);
	[LinkName("QAbstractItemDelegate_SizeHint")]
	public static extern QSize QAbstractItemDelegate_SizeHint(Self* c_this, QStyleOptionViewItem* option, QModelIndex* index);
	[LinkName("QAbstractItemDelegate_CreateEditor")]
	public static extern QWidget* QAbstractItemDelegate_CreateEditor(Self* c_this, QWidget* parent, QStyleOptionViewItem* option, QModelIndex* index);
	[LinkName("QAbstractItemDelegate_DestroyEditor")]
	public static extern void QAbstractItemDelegate_DestroyEditor(Self* c_this, QWidget* editor, QModelIndex* index);
	[LinkName("QAbstractItemDelegate_SetEditorData")]
	public static extern void QAbstractItemDelegate_SetEditorData(Self* c_this, QWidget* editor, QModelIndex* index);
	[LinkName("QAbstractItemDelegate_SetModelData")]
	public static extern void QAbstractItemDelegate_SetModelData(Self* c_this, QWidget* editor, QAbstractItemModel* model, QModelIndex* index);
	[LinkName("QAbstractItemDelegate_UpdateEditorGeometry")]
	public static extern void QAbstractItemDelegate_UpdateEditorGeometry(Self* c_this, QWidget* editor, QStyleOptionViewItem* option, QModelIndex* index);
	[LinkName("QAbstractItemDelegate_EditorEvent")]
	public static extern bool QAbstractItemDelegate_EditorEvent(Self* c_this, QEvent* event, QAbstractItemModel* model, QStyleOptionViewItem* option, QModelIndex* index);
	[LinkName("QAbstractItemDelegate_HelpEvent")]
	public static extern bool QAbstractItemDelegate_HelpEvent(Self* c_this, QHelpEvent* event, QAbstractItemView* view, QStyleOptionViewItem* option, QModelIndex* index);
	[LinkName("QAbstractItemDelegate_PaintingRoles")]
	public static extern int32[] QAbstractItemDelegate_PaintingRoles(Self* c_this);
	[LinkName("QAbstractItemDelegate_CommitData")]
	public static extern void QAbstractItemDelegate_CommitData(Self* c_this, QWidget* editor);
	[LinkName("QAbstractItemDelegate_CloseEditor")]
	public static extern void QAbstractItemDelegate_CloseEditor(Self* c_this, QWidget* editor);
	[LinkName("QAbstractItemDelegate_SizeHintChanged")]
	public static extern void QAbstractItemDelegate_SizeHintChanged(Self* c_this, QModelIndex* param1);
	[LinkName("QAbstractItemDelegate_Tr2")]
	public static extern libqt_string QAbstractItemDelegate_Tr2(char8[] s, char8[] c);
	[LinkName("QAbstractItemDelegate_Tr3")]
	public static extern libqt_string QAbstractItemDelegate_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QAbstractItemDelegate_CloseEditor2")]
	public static extern void QAbstractItemDelegate_CloseEditor2(Self* c_this, QWidget* editor, int64 hint);
}