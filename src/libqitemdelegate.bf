using System;
using System.Interop;
namespace Qt;

public struct QItemDelegate
{
	[LinkName("QItemDelegate_new")]
	public static extern void* QItemDelegate_new();
	[LinkName("QItemDelegate_new2")]
	public static extern void* QItemDelegate_new2(QObject parent);
	[LinkName("QItemDelegate_MetaObject")]
	public static extern QMetaObject QItemDelegate_MetaObject(void* c_this);
	[LinkName("QItemDelegate_Metacast")]
	public static extern void QItemDelegate_Metacast(void* c_this, char8[] param1);
	[LinkName("QItemDelegate_Metacall")]
	public static extern int32 QItemDelegate_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QItemDelegate_Tr")]
	public static extern char8[] QItemDelegate_Tr(char8[] s);
	[LinkName("QItemDelegate_HasClipping")]
	public static extern bool QItemDelegate_HasClipping(void* c_this);
	[LinkName("QItemDelegate_SetClipping")]
	public static extern void QItemDelegate_SetClipping(void* c_this, bool clip);
	[LinkName("QItemDelegate_Paint")]
	public static extern void QItemDelegate_Paint(void* c_this, QPainter painter, QStyleOptionViewItem option, QModelIndex index);
	[LinkName("QItemDelegate_SizeHint")]
	public static extern QSize QItemDelegate_SizeHint(void* c_this, QStyleOptionViewItem option, QModelIndex index);
	[LinkName("QItemDelegate_CreateEditor")]
	public static extern QWidget QItemDelegate_CreateEditor(void* c_this, QWidget parent, QStyleOptionViewItem option, QModelIndex index);
	[LinkName("QItemDelegate_SetEditorData")]
	public static extern void QItemDelegate_SetEditorData(void* c_this, QWidget editor, QModelIndex index);
	[LinkName("QItemDelegate_SetModelData")]
	public static extern void QItemDelegate_SetModelData(void* c_this, QWidget editor, QAbstractItemModel model, QModelIndex index);
	[LinkName("QItemDelegate_UpdateEditorGeometry")]
	public static extern void QItemDelegate_UpdateEditorGeometry(void* c_this, QWidget editor, QStyleOptionViewItem option, QModelIndex index);
	[LinkName("QItemDelegate_ItemEditorFactory")]
	public static extern QItemEditorFactory QItemDelegate_ItemEditorFactory(void* c_this);
	[LinkName("QItemDelegate_SetItemEditorFactory")]
	public static extern void QItemDelegate_SetItemEditorFactory(void* c_this, QItemEditorFactory factory);
	[LinkName("QItemDelegate_DrawDisplay")]
	public static extern void QItemDelegate_DrawDisplay(void* c_this, QPainter painter, QStyleOptionViewItem option, QRect rect, char8[] text);
	[LinkName("QItemDelegate_DrawDecoration")]
	public static extern void QItemDelegate_DrawDecoration(void* c_this, QPainter painter, QStyleOptionViewItem option, QRect rect, QPixmap pixmap);
	[LinkName("QItemDelegate_DrawFocus")]
	public static extern void QItemDelegate_DrawFocus(void* c_this, QPainter painter, QStyleOptionViewItem option, QRect rect);
	[LinkName("QItemDelegate_DrawCheck")]
	public static extern void QItemDelegate_DrawCheck(void* c_this, QPainter painter, QStyleOptionViewItem option, QRect rect, int64 state);
	[LinkName("QItemDelegate_DrawBackground")]
	public static extern void QItemDelegate_DrawBackground(void* c_this, QPainter painter, QStyleOptionViewItem option, QModelIndex index);
	[LinkName("QItemDelegate_DoLayout")]
	public static extern void QItemDelegate_DoLayout(void* c_this, QStyleOptionViewItem option, QRect checkRect, QRect iconRect, QRect textRect, bool hint);
	[LinkName("QItemDelegate_Rect")]
	public static extern QRect QItemDelegate_Rect(void* c_this, QStyleOptionViewItem option, QModelIndex index, int32 role);
	[LinkName("QItemDelegate_EventFilter")]
	public static extern bool QItemDelegate_EventFilter(void* c_this, QObject object, QEvent event);
	[LinkName("QItemDelegate_EditorEvent")]
	public static extern bool QItemDelegate_EditorEvent(void* c_this, QEvent event, QAbstractItemModel model, QStyleOptionViewItem option, QModelIndex index);
	[LinkName("QItemDelegate_SetOptions")]
	public static extern QStyleOptionViewItem QItemDelegate_SetOptions(void* c_this, QModelIndex index, QStyleOptionViewItem option);
	[LinkName("QItemDelegate_Decoration")]
	public static extern QPixmap QItemDelegate_Decoration(void* c_this, QStyleOptionViewItem option, QVariant variant);
	[LinkName("QItemDelegate_DoCheck")]
	public static extern QRect QItemDelegate_DoCheck(void* c_this, QStyleOptionViewItem option, QRect bounding, QVariant variant);
	[LinkName("QItemDelegate_TextRectangle")]
	public static extern QRect QItemDelegate_TextRectangle(void* c_this, QPainter painter, QRect rect, QFont font, char8[] text);
	[LinkName("QItemDelegate_Tr2")]
	public static extern char8[] QItemDelegate_Tr2(char8[] s, char8[] c);
	[LinkName("QItemDelegate_Tr3")]
	public static extern char8[] QItemDelegate_Tr3(char8[] s, char8[] c, int32 n);
}