using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QGraphicsWidget__
{
	Type = 11,
}
public struct QGraphicsWidget
{
	[LinkName("QGraphicsWidget_new")]
	public static extern void* QGraphicsWidget_new();
	[LinkName("QGraphicsWidget_new2")]
	public static extern void* QGraphicsWidget_new2(QGraphicsItem parent);
	[LinkName("QGraphicsWidget_new3")]
	public static extern void* QGraphicsWidget_new3(QGraphicsItem parent, int64 wFlags);
	[LinkName("QGraphicsWidget_MetaObject")]
	public static extern QMetaObject QGraphicsWidget_MetaObject(void* c_this);
	[LinkName("QGraphicsWidget_Metacast")]
	public static extern void QGraphicsWidget_Metacast(void* c_this, char8[] param1);
	[LinkName("QGraphicsWidget_Metacall")]
	public static extern int32 QGraphicsWidget_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QGraphicsWidget_Tr")]
	public static extern char8[] QGraphicsWidget_Tr(char8[] s);
	[LinkName("QGraphicsWidget_Layout")]
	public static extern QGraphicsLayout QGraphicsWidget_Layout(void* c_this);
	[LinkName("QGraphicsWidget_SetLayout")]
	public static extern void QGraphicsWidget_SetLayout(void* c_this, QGraphicsLayout layout);
	[LinkName("QGraphicsWidget_AdjustSize")]
	public static extern void QGraphicsWidget_AdjustSize(void* c_this);
	[LinkName("QGraphicsWidget_LayoutDirection")]
	public static extern int64 QGraphicsWidget_LayoutDirection(void* c_this);
	[LinkName("QGraphicsWidget_SetLayoutDirection")]
	public static extern void QGraphicsWidget_SetLayoutDirection(void* c_this, int64 direction);
	[LinkName("QGraphicsWidget_UnsetLayoutDirection")]
	public static extern void QGraphicsWidget_UnsetLayoutDirection(void* c_this);
	[LinkName("QGraphicsWidget_Style")]
	public static extern QStyle QGraphicsWidget_Style(void* c_this);
	[LinkName("QGraphicsWidget_SetStyle")]
	public static extern void QGraphicsWidget_SetStyle(void* c_this, QStyle style);
	[LinkName("QGraphicsWidget_Font")]
	public static extern QFont QGraphicsWidget_Font(void* c_this);
	[LinkName("QGraphicsWidget_SetFont")]
	public static extern void QGraphicsWidget_SetFont(void* c_this, QFont font);
	[LinkName("QGraphicsWidget_Palette")]
	public static extern QPalette QGraphicsWidget_Palette(void* c_this);
	[LinkName("QGraphicsWidget_SetPalette")]
	public static extern void QGraphicsWidget_SetPalette(void* c_this, QPalette palette);
	[LinkName("QGraphicsWidget_AutoFillBackground")]
	public static extern bool QGraphicsWidget_AutoFillBackground(void* c_this);
	[LinkName("QGraphicsWidget_SetAutoFillBackground")]
	public static extern void QGraphicsWidget_SetAutoFillBackground(void* c_this, bool enabled);
	[LinkName("QGraphicsWidget_Resize")]
	public static extern void QGraphicsWidget_Resize(void* c_this, QSizeF size);
	[LinkName("QGraphicsWidget_Resize2")]
	public static extern void QGraphicsWidget_Resize2(void* c_this, double w, double h);
	[LinkName("QGraphicsWidget_Size")]
	public static extern QSizeF QGraphicsWidget_Size(void* c_this);
	[LinkName("QGraphicsWidget_SetGeometry")]
	public static extern void QGraphicsWidget_SetGeometry(void* c_this, QRectF rect);
	[LinkName("QGraphicsWidget_SetGeometry2")]
	public static extern void QGraphicsWidget_SetGeometry2(void* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsWidget_Rect")]
	public static extern QRectF QGraphicsWidget_Rect(void* c_this);
	[LinkName("QGraphicsWidget_SetContentsMargins")]
	public static extern void QGraphicsWidget_SetContentsMargins(void* c_this, double left, double top, double right, double bottom);
	[LinkName("QGraphicsWidget_SetContentsMarginsWithMargins")]
	public static extern void QGraphicsWidget_SetContentsMarginsWithMargins(void* c_this, QMarginsF margins);
	[LinkName("QGraphicsWidget_GetContentsMargins")]
	public static extern void QGraphicsWidget_GetContentsMargins(void* c_this, double left, double top, double right, double bottom);
	[LinkName("QGraphicsWidget_SetWindowFrameMargins")]
	public static extern void QGraphicsWidget_SetWindowFrameMargins(void* c_this, double left, double top, double right, double bottom);
	[LinkName("QGraphicsWidget_SetWindowFrameMarginsWithMargins")]
	public static extern void QGraphicsWidget_SetWindowFrameMarginsWithMargins(void* c_this, QMarginsF margins);
	[LinkName("QGraphicsWidget_GetWindowFrameMargins")]
	public static extern void QGraphicsWidget_GetWindowFrameMargins(void* c_this, double left, double top, double right, double bottom);
	[LinkName("QGraphicsWidget_UnsetWindowFrameMargins")]
	public static extern void QGraphicsWidget_UnsetWindowFrameMargins(void* c_this);
	[LinkName("QGraphicsWidget_WindowFrameGeometry")]
	public static extern QRectF QGraphicsWidget_WindowFrameGeometry(void* c_this);
	[LinkName("QGraphicsWidget_WindowFrameRect")]
	public static extern QRectF QGraphicsWidget_WindowFrameRect(void* c_this);
	[LinkName("QGraphicsWidget_WindowFlags")]
	public static extern int64 QGraphicsWidget_WindowFlags(void* c_this);
	[LinkName("QGraphicsWidget_WindowType")]
	public static extern int64 QGraphicsWidget_WindowType(void* c_this);
	[LinkName("QGraphicsWidget_SetWindowFlags")]
	public static extern void QGraphicsWidget_SetWindowFlags(void* c_this, int64 wFlags);
	[LinkName("QGraphicsWidget_IsActiveWindow")]
	public static extern bool QGraphicsWidget_IsActiveWindow(void* c_this);
	[LinkName("QGraphicsWidget_SetWindowTitle")]
	public static extern void QGraphicsWidget_SetWindowTitle(void* c_this, char8[] title);
	[LinkName("QGraphicsWidget_WindowTitle")]
	public static extern char8[] QGraphicsWidget_WindowTitle(void* c_this);
	[LinkName("QGraphicsWidget_FocusPolicy")]
	public static extern int64 QGraphicsWidget_FocusPolicy(void* c_this);
	[LinkName("QGraphicsWidget_SetFocusPolicy")]
	public static extern void QGraphicsWidget_SetFocusPolicy(void* c_this, int64 policy);
	[LinkName("QGraphicsWidget_SetTabOrder")]
	public static extern void QGraphicsWidget_SetTabOrder(QGraphicsWidget first, QGraphicsWidget second);
	[LinkName("QGraphicsWidget_FocusWidget")]
	public static extern QGraphicsWidget QGraphicsWidget_FocusWidget(void* c_this);
	[LinkName("QGraphicsWidget_GrabShortcut")]
	public static extern int32 QGraphicsWidget_GrabShortcut(void* c_this, QKeySequence sequence);
	[LinkName("QGraphicsWidget_ReleaseShortcut")]
	public static extern void QGraphicsWidget_ReleaseShortcut(void* c_this, int32 id);
	[LinkName("QGraphicsWidget_SetShortcutEnabled")]
	public static extern void QGraphicsWidget_SetShortcutEnabled(void* c_this, int32 id);
	[LinkName("QGraphicsWidget_SetShortcutAutoRepeat")]
	public static extern void QGraphicsWidget_SetShortcutAutoRepeat(void* c_this, int32 id);
	[LinkName("QGraphicsWidget_AddAction")]
	public static extern void QGraphicsWidget_AddAction(void* c_this, QAction action);
	[LinkName("QGraphicsWidget_AddActions")]
	public static extern void QGraphicsWidget_AddActions(void* c_this, QAction[] actions);
	[LinkName("QGraphicsWidget_InsertActions")]
	public static extern void QGraphicsWidget_InsertActions(void* c_this, QAction before, QAction[] actions);
	[LinkName("QGraphicsWidget_InsertAction")]
	public static extern void QGraphicsWidget_InsertAction(void* c_this, QAction before, QAction action);
	[LinkName("QGraphicsWidget_RemoveAction")]
	public static extern void QGraphicsWidget_RemoveAction(void* c_this, QAction action);
	[LinkName("QGraphicsWidget_Actions")]
	public static extern QAction[] QGraphicsWidget_Actions(void* c_this);
	[LinkName("QGraphicsWidget_SetAttribute")]
	public static extern void QGraphicsWidget_SetAttribute(void* c_this, int64 attribute);
	[LinkName("QGraphicsWidget_TestAttribute")]
	public static extern bool QGraphicsWidget_TestAttribute(void* c_this, int64 attribute);
	[LinkName("QGraphicsWidget_Type")]
	public static extern int32 QGraphicsWidget_Type(void* c_this);
	[LinkName("QGraphicsWidget_Paint")]
	public static extern void QGraphicsWidget_Paint(void* c_this, QPainter painter, QStyleOptionGraphicsItem option, QWidget widget);
	[LinkName("QGraphicsWidget_PaintWindowFrame")]
	public static extern void QGraphicsWidget_PaintWindowFrame(void* c_this, QPainter painter, QStyleOptionGraphicsItem option, QWidget widget);
	[LinkName("QGraphicsWidget_BoundingRect")]
	public static extern QRectF QGraphicsWidget_BoundingRect(void* c_this);
	[LinkName("QGraphicsWidget_Shape")]
	public static extern QPainterPath QGraphicsWidget_Shape(void* c_this);
	[LinkName("QGraphicsWidget_GeometryChanged")]
	public static extern void QGraphicsWidget_GeometryChanged(void* c_this);
	[LinkName("QGraphicsWidget_LayoutChanged")]
	public static extern void QGraphicsWidget_LayoutChanged(void* c_this);
	[LinkName("QGraphicsWidget_Close")]
	public static extern bool QGraphicsWidget_Close(void* c_this);
	[LinkName("QGraphicsWidget_InitStyleOption")]
	public static extern void QGraphicsWidget_InitStyleOption(void* c_this, QStyleOption option);
	[LinkName("QGraphicsWidget_SizeHint")]
	public static extern QSizeF QGraphicsWidget_SizeHint(void* c_this, int64 which, QSizeF constraint);
	[LinkName("QGraphicsWidget_UpdateGeometry")]
	public static extern void QGraphicsWidget_UpdateGeometry(void* c_this);
	[LinkName("QGraphicsWidget_ItemChange")]
	public static extern QVariant QGraphicsWidget_ItemChange(void* c_this, int64 change, QVariant value);
	[LinkName("QGraphicsWidget_PropertyChange")]
	public static extern QVariant QGraphicsWidget_PropertyChange(void* c_this, char8[] propertyName, QVariant value);
	[LinkName("QGraphicsWidget_SceneEvent")]
	public static extern bool QGraphicsWidget_SceneEvent(void* c_this, QEvent event);
	[LinkName("QGraphicsWidget_WindowFrameEvent")]
	public static extern bool QGraphicsWidget_WindowFrameEvent(void* c_this, QEvent e);
	[LinkName("QGraphicsWidget_WindowFrameSectionAt")]
	public static extern int64 QGraphicsWidget_WindowFrameSectionAt(void* c_this, QPointF pos);
	[LinkName("QGraphicsWidget_Event")]
	public static extern bool QGraphicsWidget_Event(void* c_this, QEvent event);
	[LinkName("QGraphicsWidget_ChangeEvent")]
	public static extern void QGraphicsWidget_ChangeEvent(void* c_this, QEvent event);
	[LinkName("QGraphicsWidget_CloseEvent")]
	public static extern void QGraphicsWidget_CloseEvent(void* c_this, QCloseEvent event);
	[LinkName("QGraphicsWidget_FocusInEvent")]
	public static extern void QGraphicsWidget_FocusInEvent(void* c_this, QFocusEvent event);
	[LinkName("QGraphicsWidget_FocusNextPrevChild")]
	public static extern bool QGraphicsWidget_FocusNextPrevChild(void* c_this, bool next);
	[LinkName("QGraphicsWidget_FocusOutEvent")]
	public static extern void QGraphicsWidget_FocusOutEvent(void* c_this, QFocusEvent event);
	[LinkName("QGraphicsWidget_HideEvent")]
	public static extern void QGraphicsWidget_HideEvent(void* c_this, QHideEvent event);
	[LinkName("QGraphicsWidget_MoveEvent")]
	public static extern void QGraphicsWidget_MoveEvent(void* c_this, QGraphicsSceneMoveEvent event);
	[LinkName("QGraphicsWidget_PolishEvent")]
	public static extern void QGraphicsWidget_PolishEvent(void* c_this);
	[LinkName("QGraphicsWidget_ResizeEvent")]
	public static extern void QGraphicsWidget_ResizeEvent(void* c_this, QGraphicsSceneResizeEvent event);
	[LinkName("QGraphicsWidget_ShowEvent")]
	public static extern void QGraphicsWidget_ShowEvent(void* c_this, QShowEvent event);
	[LinkName("QGraphicsWidget_HoverMoveEvent")]
	public static extern void QGraphicsWidget_HoverMoveEvent(void* c_this, QGraphicsSceneHoverEvent event);
	[LinkName("QGraphicsWidget_HoverLeaveEvent")]
	public static extern void QGraphicsWidget_HoverLeaveEvent(void* c_this, QGraphicsSceneHoverEvent event);
	[LinkName("QGraphicsWidget_GrabMouseEvent")]
	public static extern void QGraphicsWidget_GrabMouseEvent(void* c_this, QEvent event);
	[LinkName("QGraphicsWidget_UngrabMouseEvent")]
	public static extern void QGraphicsWidget_UngrabMouseEvent(void* c_this, QEvent event);
	[LinkName("QGraphicsWidget_GrabKeyboardEvent")]
	public static extern void QGraphicsWidget_GrabKeyboardEvent(void* c_this, QEvent event);
	[LinkName("QGraphicsWidget_UngrabKeyboardEvent")]
	public static extern void QGraphicsWidget_UngrabKeyboardEvent(void* c_this, QEvent event);
	[LinkName("QGraphicsWidget_Tr2")]
	public static extern char8[] QGraphicsWidget_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsWidget_Tr3")]
	public static extern char8[] QGraphicsWidget_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QGraphicsWidget_GrabShortcut2")]
	public static extern int32 QGraphicsWidget_GrabShortcut2(void* c_this, QKeySequence sequence, int64 context);
	[LinkName("QGraphicsWidget_SetShortcutEnabled2")]
	public static extern void QGraphicsWidget_SetShortcutEnabled2(void* c_this, int32 id, bool enabled);
	[LinkName("QGraphicsWidget_SetShortcutAutoRepeat2")]
	public static extern void QGraphicsWidget_SetShortcutAutoRepeat2(void* c_this, int32 id, bool enabled);
	[LinkName("QGraphicsWidget_SetAttribute2")]
	public static extern void QGraphicsWidget_SetAttribute2(void* c_this, int64 attribute, bool on);
}