using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QGraphicsProxyWidget__
{
	Type = 12,
}
public struct QGraphicsProxyWidget : QGraphicsWidget
{
	[LinkName("QGraphicsProxyWidget_new")]
	public static extern QGraphicsProxyWidget* QGraphicsProxyWidget_new();
	[LinkName("QGraphicsProxyWidget_new2")]
	public static extern QGraphicsProxyWidget* QGraphicsProxyWidget_new2(QGraphicsItem* parent);
	[LinkName("QGraphicsProxyWidget_new3")]
	public static extern QGraphicsProxyWidget* QGraphicsProxyWidget_new3(QGraphicsItem* parent, int64 wFlags);
	[LinkName("QGraphicsProxyWidget_MetaObject")]
	public static extern QMetaObject* QGraphicsProxyWidget_MetaObject(Self* c_this);
	[LinkName("QGraphicsProxyWidget_Metacast")]
	public static extern void* QGraphicsProxyWidget_Metacast(Self* c_this, char8[] param1);
	[LinkName("QGraphicsProxyWidget_Metacall")]
	public static extern int32 QGraphicsProxyWidget_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QGraphicsProxyWidget_Tr")]
	public static extern libqt_string QGraphicsProxyWidget_Tr(char8[] s);
	[LinkName("QGraphicsProxyWidget_SetWidget")]
	public static extern void QGraphicsProxyWidget_SetWidget(Self* c_this, QWidget* widget);
	[LinkName("QGraphicsProxyWidget_Widget")]
	public static extern QWidget* QGraphicsProxyWidget_Widget(Self* c_this);
	[LinkName("QGraphicsProxyWidget_SubWidgetRect")]
	public static extern QRectF QGraphicsProxyWidget_SubWidgetRect(Self* c_this, QWidget* widget);
	[LinkName("QGraphicsProxyWidget_SetGeometry")]
	public static extern void QGraphicsProxyWidget_SetGeometry(Self* c_this, QRectF* rect);
	[LinkName("QGraphicsProxyWidget_Paint")]
	public static extern void QGraphicsProxyWidget_Paint(Self* c_this, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);
	[LinkName("QGraphicsProxyWidget_Type")]
	public static extern int32 QGraphicsProxyWidget_Type(Self* c_this);
	[LinkName("QGraphicsProxyWidget_CreateProxyForChildWidget")]
	public static extern QGraphicsProxyWidget* QGraphicsProxyWidget_CreateProxyForChildWidget(Self* c_this, QWidget* child);
	[LinkName("QGraphicsProxyWidget_ItemChange")]
	public static extern QVariant QGraphicsProxyWidget_ItemChange(Self* c_this, int64 change, QVariant* value);
	[LinkName("QGraphicsProxyWidget_Event")]
	public static extern bool QGraphicsProxyWidget_Event(Self* c_this, QEvent* event);
	[LinkName("QGraphicsProxyWidget_EventFilter")]
	public static extern bool QGraphicsProxyWidget_EventFilter(Self* c_this, QObject* object, QEvent* event);
	[LinkName("QGraphicsProxyWidget_ShowEvent")]
	public static extern void QGraphicsProxyWidget_ShowEvent(Self* c_this, QShowEvent* event);
	[LinkName("QGraphicsProxyWidget_HideEvent")]
	public static extern void QGraphicsProxyWidget_HideEvent(Self* c_this, QHideEvent* event);
	[LinkName("QGraphicsProxyWidget_ContextMenuEvent")]
	public static extern void QGraphicsProxyWidget_ContextMenuEvent(Self* c_this, QGraphicsSceneContextMenuEvent* event);
	[LinkName("QGraphicsProxyWidget_DragEnterEvent")]
	public static extern void QGraphicsProxyWidget_DragEnterEvent(Self* c_this, QGraphicsSceneDragDropEvent* event);
	[LinkName("QGraphicsProxyWidget_DragLeaveEvent")]
	public static extern void QGraphicsProxyWidget_DragLeaveEvent(Self* c_this, QGraphicsSceneDragDropEvent* event);
	[LinkName("QGraphicsProxyWidget_DragMoveEvent")]
	public static extern void QGraphicsProxyWidget_DragMoveEvent(Self* c_this, QGraphicsSceneDragDropEvent* event);
	[LinkName("QGraphicsProxyWidget_DropEvent")]
	public static extern void QGraphicsProxyWidget_DropEvent(Self* c_this, QGraphicsSceneDragDropEvent* event);
	[LinkName("QGraphicsProxyWidget_HoverEnterEvent")]
	public static extern void QGraphicsProxyWidget_HoverEnterEvent(Self* c_this, QGraphicsSceneHoverEvent* event);
	[LinkName("QGraphicsProxyWidget_HoverLeaveEvent")]
	public static extern void QGraphicsProxyWidget_HoverLeaveEvent(Self* c_this, QGraphicsSceneHoverEvent* event);
	[LinkName("QGraphicsProxyWidget_HoverMoveEvent")]
	public static extern void QGraphicsProxyWidget_HoverMoveEvent(Self* c_this, QGraphicsSceneHoverEvent* event);
	[LinkName("QGraphicsProxyWidget_GrabMouseEvent")]
	public static extern void QGraphicsProxyWidget_GrabMouseEvent(Self* c_this, QEvent* event);
	[LinkName("QGraphicsProxyWidget_UngrabMouseEvent")]
	public static extern void QGraphicsProxyWidget_UngrabMouseEvent(Self* c_this, QEvent* event);
	[LinkName("QGraphicsProxyWidget_MouseMoveEvent")]
	public static extern void QGraphicsProxyWidget_MouseMoveEvent(Self* c_this, QGraphicsSceneMouseEvent* event);
	[LinkName("QGraphicsProxyWidget_MousePressEvent")]
	public static extern void QGraphicsProxyWidget_MousePressEvent(Self* c_this, QGraphicsSceneMouseEvent* event);
	[LinkName("QGraphicsProxyWidget_MouseReleaseEvent")]
	public static extern void QGraphicsProxyWidget_MouseReleaseEvent(Self* c_this, QGraphicsSceneMouseEvent* event);
	[LinkName("QGraphicsProxyWidget_MouseDoubleClickEvent")]
	public static extern void QGraphicsProxyWidget_MouseDoubleClickEvent(Self* c_this, QGraphicsSceneMouseEvent* event);
	[LinkName("QGraphicsProxyWidget_WheelEvent")]
	public static extern void QGraphicsProxyWidget_WheelEvent(Self* c_this, QGraphicsSceneWheelEvent* event);
	[LinkName("QGraphicsProxyWidget_KeyPressEvent")]
	public static extern void QGraphicsProxyWidget_KeyPressEvent(Self* c_this, QKeyEvent* event);
	[LinkName("QGraphicsProxyWidget_KeyReleaseEvent")]
	public static extern void QGraphicsProxyWidget_KeyReleaseEvent(Self* c_this, QKeyEvent* event);
	[LinkName("QGraphicsProxyWidget_FocusInEvent")]
	public static extern void QGraphicsProxyWidget_FocusInEvent(Self* c_this, QFocusEvent* event);
	[LinkName("QGraphicsProxyWidget_FocusOutEvent")]
	public static extern void QGraphicsProxyWidget_FocusOutEvent(Self* c_this, QFocusEvent* event);
	[LinkName("QGraphicsProxyWidget_FocusNextPrevChild")]
	public static extern bool QGraphicsProxyWidget_FocusNextPrevChild(Self* c_this, bool next);
	[LinkName("QGraphicsProxyWidget_InputMethodQuery")]
	public static extern QVariant QGraphicsProxyWidget_InputMethodQuery(Self* c_this, int64 query);
	[LinkName("QGraphicsProxyWidget_InputMethodEvent")]
	public static extern void QGraphicsProxyWidget_InputMethodEvent(Self* c_this, QInputMethodEvent* event);
	[LinkName("QGraphicsProxyWidget_SizeHint")]
	public static extern QSizeF QGraphicsProxyWidget_SizeHint(Self* c_this, int64 which, QSizeF* constraint);
	[LinkName("QGraphicsProxyWidget_ResizeEvent")]
	public static extern void QGraphicsProxyWidget_ResizeEvent(Self* c_this, QGraphicsSceneResizeEvent* event);
	[LinkName("QGraphicsProxyWidget_NewProxyWidget")]
	public static extern QGraphicsProxyWidget* QGraphicsProxyWidget_NewProxyWidget(Self* c_this, QWidget* param1);
	[LinkName("QGraphicsProxyWidget_Tr2")]
	public static extern libqt_string QGraphicsProxyWidget_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsProxyWidget_Tr3")]
	public static extern libqt_string QGraphicsProxyWidget_Tr3(char8[] s, char8[] c, int32 n);
}