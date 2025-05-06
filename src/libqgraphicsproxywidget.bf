using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QGraphicsProxyWidget__
{
	Type = 12,
}
public struct QGraphicsProxyWidget
{
	[LinkName("QGraphicsProxyWidget_new")]
	public static extern void* QGraphicsProxyWidget_new();
	[LinkName("QGraphicsProxyWidget_new2")]
	public static extern void* QGraphicsProxyWidget_new2(QGraphicsItem parent);
	[LinkName("QGraphicsProxyWidget_new3")]
	public static extern void* QGraphicsProxyWidget_new3(QGraphicsItem parent, int64 wFlags);
	[LinkName("QGraphicsProxyWidget_MetaObject")]
	public static extern QMetaObject QGraphicsProxyWidget_MetaObject(void* c_this);
	[LinkName("QGraphicsProxyWidget_Metacast")]
	public static extern void QGraphicsProxyWidget_Metacast(void* c_this, char8[] param1);
	[LinkName("QGraphicsProxyWidget_Metacall")]
	public static extern int32 QGraphicsProxyWidget_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QGraphicsProxyWidget_Tr")]
	public static extern char8[] QGraphicsProxyWidget_Tr(char8[] s);
	[LinkName("QGraphicsProxyWidget_SetWidget")]
	public static extern void QGraphicsProxyWidget_SetWidget(void* c_this, QWidget widget);
	[LinkName("QGraphicsProxyWidget_Widget")]
	public static extern QWidget QGraphicsProxyWidget_Widget(void* c_this);
	[LinkName("QGraphicsProxyWidget_SubWidgetRect")]
	public static extern QRectF QGraphicsProxyWidget_SubWidgetRect(void* c_this, QWidget widget);
	[LinkName("QGraphicsProxyWidget_SetGeometry")]
	public static extern void QGraphicsProxyWidget_SetGeometry(void* c_this, QRectF rect);
	[LinkName("QGraphicsProxyWidget_Paint")]
	public static extern void QGraphicsProxyWidget_Paint(void* c_this, QPainter painter, QStyleOptionGraphicsItem option, QWidget widget);
	[LinkName("QGraphicsProxyWidget_Type")]
	public static extern int32 QGraphicsProxyWidget_Type(void* c_this);
	[LinkName("QGraphicsProxyWidget_CreateProxyForChildWidget")]
	public static extern QGraphicsProxyWidget QGraphicsProxyWidget_CreateProxyForChildWidget(void* c_this, QWidget child);
	[LinkName("QGraphicsProxyWidget_ItemChange")]
	public static extern QVariant QGraphicsProxyWidget_ItemChange(void* c_this, int64 change, QVariant value);
	[LinkName("QGraphicsProxyWidget_Event")]
	public static extern bool QGraphicsProxyWidget_Event(void* c_this, QEvent event);
	[LinkName("QGraphicsProxyWidget_EventFilter")]
	public static extern bool QGraphicsProxyWidget_EventFilter(void* c_this, QObject object, QEvent event);
	[LinkName("QGraphicsProxyWidget_ShowEvent")]
	public static extern void QGraphicsProxyWidget_ShowEvent(void* c_this, QShowEvent event);
	[LinkName("QGraphicsProxyWidget_HideEvent")]
	public static extern void QGraphicsProxyWidget_HideEvent(void* c_this, QHideEvent event);
	[LinkName("QGraphicsProxyWidget_ContextMenuEvent")]
	public static extern void QGraphicsProxyWidget_ContextMenuEvent(void* c_this, QGraphicsSceneContextMenuEvent event);
	[LinkName("QGraphicsProxyWidget_DragEnterEvent")]
	public static extern void QGraphicsProxyWidget_DragEnterEvent(void* c_this, QGraphicsSceneDragDropEvent event);
	[LinkName("QGraphicsProxyWidget_DragLeaveEvent")]
	public static extern void QGraphicsProxyWidget_DragLeaveEvent(void* c_this, QGraphicsSceneDragDropEvent event);
	[LinkName("QGraphicsProxyWidget_DragMoveEvent")]
	public static extern void QGraphicsProxyWidget_DragMoveEvent(void* c_this, QGraphicsSceneDragDropEvent event);
	[LinkName("QGraphicsProxyWidget_DropEvent")]
	public static extern void QGraphicsProxyWidget_DropEvent(void* c_this, QGraphicsSceneDragDropEvent event);
	[LinkName("QGraphicsProxyWidget_HoverEnterEvent")]
	public static extern void QGraphicsProxyWidget_HoverEnterEvent(void* c_this, QGraphicsSceneHoverEvent event);
	[LinkName("QGraphicsProxyWidget_HoverLeaveEvent")]
	public static extern void QGraphicsProxyWidget_HoverLeaveEvent(void* c_this, QGraphicsSceneHoverEvent event);
	[LinkName("QGraphicsProxyWidget_HoverMoveEvent")]
	public static extern void QGraphicsProxyWidget_HoverMoveEvent(void* c_this, QGraphicsSceneHoverEvent event);
	[LinkName("QGraphicsProxyWidget_GrabMouseEvent")]
	public static extern void QGraphicsProxyWidget_GrabMouseEvent(void* c_this, QEvent event);
	[LinkName("QGraphicsProxyWidget_UngrabMouseEvent")]
	public static extern void QGraphicsProxyWidget_UngrabMouseEvent(void* c_this, QEvent event);
	[LinkName("QGraphicsProxyWidget_MouseMoveEvent")]
	public static extern void QGraphicsProxyWidget_MouseMoveEvent(void* c_this, QGraphicsSceneMouseEvent event);
	[LinkName("QGraphicsProxyWidget_MousePressEvent")]
	public static extern void QGraphicsProxyWidget_MousePressEvent(void* c_this, QGraphicsSceneMouseEvent event);
	[LinkName("QGraphicsProxyWidget_MouseReleaseEvent")]
	public static extern void QGraphicsProxyWidget_MouseReleaseEvent(void* c_this, QGraphicsSceneMouseEvent event);
	[LinkName("QGraphicsProxyWidget_MouseDoubleClickEvent")]
	public static extern void QGraphicsProxyWidget_MouseDoubleClickEvent(void* c_this, QGraphicsSceneMouseEvent event);
	[LinkName("QGraphicsProxyWidget_WheelEvent")]
	public static extern void QGraphicsProxyWidget_WheelEvent(void* c_this, QGraphicsSceneWheelEvent event);
	[LinkName("QGraphicsProxyWidget_KeyPressEvent")]
	public static extern void QGraphicsProxyWidget_KeyPressEvent(void* c_this, QKeyEvent event);
	[LinkName("QGraphicsProxyWidget_KeyReleaseEvent")]
	public static extern void QGraphicsProxyWidget_KeyReleaseEvent(void* c_this, QKeyEvent event);
	[LinkName("QGraphicsProxyWidget_FocusInEvent")]
	public static extern void QGraphicsProxyWidget_FocusInEvent(void* c_this, QFocusEvent event);
	[LinkName("QGraphicsProxyWidget_FocusOutEvent")]
	public static extern void QGraphicsProxyWidget_FocusOutEvent(void* c_this, QFocusEvent event);
	[LinkName("QGraphicsProxyWidget_FocusNextPrevChild")]
	public static extern bool QGraphicsProxyWidget_FocusNextPrevChild(void* c_this, bool next);
	[LinkName("QGraphicsProxyWidget_InputMethodQuery")]
	public static extern QVariant QGraphicsProxyWidget_InputMethodQuery(void* c_this, int64 query);
	[LinkName("QGraphicsProxyWidget_InputMethodEvent")]
	public static extern void QGraphicsProxyWidget_InputMethodEvent(void* c_this, QInputMethodEvent event);
	[LinkName("QGraphicsProxyWidget_SizeHint")]
	public static extern QSizeF QGraphicsProxyWidget_SizeHint(void* c_this, int64 which, QSizeF constraint);
	[LinkName("QGraphicsProxyWidget_ResizeEvent")]
	public static extern void QGraphicsProxyWidget_ResizeEvent(void* c_this, QGraphicsSceneResizeEvent event);
	[LinkName("QGraphicsProxyWidget_NewProxyWidget")]
	public static extern QGraphicsProxyWidget QGraphicsProxyWidget_NewProxyWidget(void* c_this, QWidget param1);
	[LinkName("QGraphicsProxyWidget_Tr2")]
	public static extern char8[] QGraphicsProxyWidget_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsProxyWidget_Tr3")]
	public static extern char8[] QGraphicsProxyWidget_Tr3(char8[] s, char8[] c, int32 n);
}