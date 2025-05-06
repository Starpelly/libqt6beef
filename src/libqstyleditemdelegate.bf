using System;
using System.Interop;
namespace Qt;

public struct QStyledItemDelegate
{
	[LinkName("QStyledItemDelegate_new")]
	public static extern void* QStyledItemDelegate_new();
	[LinkName("QStyledItemDelegate_new2")]
	public static extern void* QStyledItemDelegate_new2(QObject parent);
	[LinkName("QStyledItemDelegate_MetaObject")]
	public static extern QMetaObject QStyledItemDelegate_MetaObject(void* c_this);
	[LinkName("QStyledItemDelegate_Metacast")]
	public static extern void QStyledItemDelegate_Metacast(void* c_this, char8[] param1);
	[LinkName("QStyledItemDelegate_Metacall")]
	public static extern int32 QStyledItemDelegate_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QStyledItemDelegate_Tr")]
	public static extern char8[] QStyledItemDelegate_Tr(char8[] s);
	[LinkName("QStyledItemDelegate_Paint")]
	public static extern void QStyledItemDelegate_Paint(void* c_this, QPainter painter, QStyleOptionViewItem option, QModelIndex index);
	[LinkName("QStyledItemDelegate_SizeHint")]
	public static extern QSize QStyledItemDelegate_SizeHint(void* c_this, QStyleOptionViewItem option, QModelIndex index);
	[LinkName("QStyledItemDelegate_CreateEditor")]
	public static extern QWidget QStyledItemDelegate_CreateEditor(void* c_this, QWidget parent, QStyleOptionViewItem option, QModelIndex index);
	[LinkName("QStyledItemDelegate_SetEditorData")]
	public static extern void QStyledItemDelegate_SetEditorData(void* c_this, QWidget editor, QModelIndex index);
	[LinkName("QStyledItemDelegate_SetModelData")]
	public static extern void QStyledItemDelegate_SetModelData(void* c_this, QWidget editor, QAbstractItemModel model, QModelIndex index);
	[LinkName("QStyledItemDelegate_UpdateEditorGeometry")]
	public static extern void QStyledItemDelegate_UpdateEditorGeometry(void* c_this, QWidget editor, QStyleOptionViewItem option, QModelIndex index);
	[LinkName("QStyledItemDelegate_ItemEditorFactory")]
	public static extern QItemEditorFactory QStyledItemDelegate_ItemEditorFactory(void* c_this);
	[LinkName("QStyledItemDelegate_SetItemEditorFactory")]
	public static extern void QStyledItemDelegate_SetItemEditorFactory(void* c_this, QItemEditorFactory factory);
	[LinkName("QStyledItemDelegate_DisplayText")]
	public static extern char8[] QStyledItemDelegate_DisplayText(void* c_this, QVariant value, QLocale locale);
	[LinkName("QStyledItemDelegate_InitStyleOption")]
	public static extern void QStyledItemDelegate_InitStyleOption(void* c_this, QStyleOptionViewItem option, QModelIndex index);
	[LinkName("QStyledItemDelegate_EventFilter")]
	public static extern bool QStyledItemDelegate_EventFilter(void* c_this, QObject object, QEvent event);
	[LinkName("QStyledItemDelegate_EditorEvent")]
	public static extern bool QStyledItemDelegate_EditorEvent(void* c_this, QEvent event, QAbstractItemModel model, QStyleOptionViewItem option, QModelIndex index);
	[LinkName("QStyledItemDelegate_Tr2")]
	public static extern char8[] QStyledItemDelegate_Tr2(char8[] s, char8[] c);
	[LinkName("QStyledItemDelegate_Tr3")]
	public static extern char8[] QStyledItemDelegate_Tr3(char8[] s, char8[] c, int32 n);
}