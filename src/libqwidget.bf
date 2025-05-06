using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QWidget__RenderFlag
{
	DrawWindowBackground = 1,
	DrawChildren = 2,
	IgnoreMask = 4,
}
public struct QWidgetData
{
	[LinkName("QWidgetData_new")]
	public static extern void* QWidgetData_new(QWidgetData param1);
	[LinkName("QWidgetData_OperatorAssign")]
	public static extern void QWidgetData_OperatorAssign(void* c_this, QWidgetData param1);
}
public struct QWidget
{
	[LinkName("QWidget_new")]
	public static extern void* QWidget_new(QWidget parent);
	[LinkName("QWidget_new2")]
	public static extern void* QWidget_new2();
	[LinkName("QWidget_new3")]
	public static extern void* QWidget_new3(QWidget parent, int64 f);
	[LinkName("QWidget_MetaObject")]
	public static extern QMetaObject QWidget_MetaObject(void* c_this);
	[LinkName("QWidget_Metacast")]
	public static extern void QWidget_Metacast(void* c_this, char8[] param1);
	[LinkName("QWidget_Metacall")]
	public static extern int32 QWidget_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QWidget_Tr")]
	public static extern char8[] QWidget_Tr(char8[] s);
	[LinkName("QWidget_DevType")]
	public static extern int32 QWidget_DevType(void* c_this);
	[LinkName("QWidget_WinId")]
	public static extern c_uintptr QWidget_WinId(void* c_this);
	[LinkName("QWidget_CreateWinId")]
	public static extern void QWidget_CreateWinId(void* c_this);
	[LinkName("QWidget_InternalWinId")]
	public static extern c_uintptr QWidget_InternalWinId(void* c_this);
	[LinkName("QWidget_EffectiveWinId")]
	public static extern c_uintptr QWidget_EffectiveWinId(void* c_this);
	[LinkName("QWidget_Style")]
	public static extern QStyle QWidget_Style(void* c_this);
	[LinkName("QWidget_SetStyle")]
	public static extern void QWidget_SetStyle(void* c_this, QStyle style);
	[LinkName("QWidget_IsTopLevel")]
	public static extern bool QWidget_IsTopLevel(void* c_this);
	[LinkName("QWidget_IsWindow")]
	public static extern bool QWidget_IsWindow(void* c_this);
	[LinkName("QWidget_IsModal")]
	public static extern bool QWidget_IsModal(void* c_this);
	[LinkName("QWidget_WindowModality")]
	public static extern int64 QWidget_WindowModality(void* c_this);
	[LinkName("QWidget_SetWindowModality")]
	public static extern void QWidget_SetWindowModality(void* c_this, int64 windowModality);
	[LinkName("QWidget_IsEnabled")]
	public static extern bool QWidget_IsEnabled(void* c_this);
	[LinkName("QWidget_IsEnabledTo")]
	public static extern bool QWidget_IsEnabledTo(void* c_this, QWidget param1);
	[LinkName("QWidget_SetEnabled")]
	public static extern void QWidget_SetEnabled(void* c_this, bool enabled);
	[LinkName("QWidget_SetDisabled")]
	public static extern void QWidget_SetDisabled(void* c_this, bool disabled);
	[LinkName("QWidget_SetWindowModified")]
	public static extern void QWidget_SetWindowModified(void* c_this, bool windowModified);
	[LinkName("QWidget_FrameGeometry")]
	public static extern QRect QWidget_FrameGeometry(void* c_this);
	[LinkName("QWidget_Geometry")]
	public static extern QRect QWidget_Geometry(void* c_this);
	[LinkName("QWidget_NormalGeometry")]
	public static extern QRect QWidget_NormalGeometry(void* c_this);
	[LinkName("QWidget_X")]
	public static extern int32 QWidget_X(void* c_this);
	[LinkName("QWidget_Y")]
	public static extern int32 QWidget_Y(void* c_this);
	[LinkName("QWidget_Pos")]
	public static extern QPoint QWidget_Pos(void* c_this);
	[LinkName("QWidget_FrameSize")]
	public static extern QSize QWidget_FrameSize(void* c_this);
	[LinkName("QWidget_Size")]
	public static extern QSize QWidget_Size(void* c_this);
	[LinkName("QWidget_Width")]
	public static extern int32 QWidget_Width(void* c_this);
	[LinkName("QWidget_Height")]
	public static extern int32 QWidget_Height(void* c_this);
	[LinkName("QWidget_Rect")]
	public static extern QRect QWidget_Rect(void* c_this);
	[LinkName("QWidget_ChildrenRect")]
	public static extern QRect QWidget_ChildrenRect(void* c_this);
	[LinkName("QWidget_ChildrenRegion")]
	public static extern QRegion QWidget_ChildrenRegion(void* c_this);
	[LinkName("QWidget_MinimumSize")]
	public static extern QSize QWidget_MinimumSize(void* c_this);
	[LinkName("QWidget_MaximumSize")]
	public static extern QSize QWidget_MaximumSize(void* c_this);
	[LinkName("QWidget_MinimumWidth")]
	public static extern int32 QWidget_MinimumWidth(void* c_this);
	[LinkName("QWidget_MinimumHeight")]
	public static extern int32 QWidget_MinimumHeight(void* c_this);
	[LinkName("QWidget_MaximumWidth")]
	public static extern int32 QWidget_MaximumWidth(void* c_this);
	[LinkName("QWidget_MaximumHeight")]
	public static extern int32 QWidget_MaximumHeight(void* c_this);
	[LinkName("QWidget_SetMinimumSize")]
	public static extern void QWidget_SetMinimumSize(void* c_this, QSize minimumSize);
	[LinkName("QWidget_SetMinimumSize2")]
	public static extern void QWidget_SetMinimumSize2(void* c_this, int32 minw, int32 minh);
	[LinkName("QWidget_SetMaximumSize")]
	public static extern void QWidget_SetMaximumSize(void* c_this, QSize maximumSize);
	[LinkName("QWidget_SetMaximumSize2")]
	public static extern void QWidget_SetMaximumSize2(void* c_this, int32 maxw, int32 maxh);
	[LinkName("QWidget_SetMinimumWidth")]
	public static extern void QWidget_SetMinimumWidth(void* c_this, int32 minw);
	[LinkName("QWidget_SetMinimumHeight")]
	public static extern void QWidget_SetMinimumHeight(void* c_this, int32 minh);
	[LinkName("QWidget_SetMaximumWidth")]
	public static extern void QWidget_SetMaximumWidth(void* c_this, int32 maxw);
	[LinkName("QWidget_SetMaximumHeight")]
	public static extern void QWidget_SetMaximumHeight(void* c_this, int32 maxh);
	[LinkName("QWidget_SizeIncrement")]
	public static extern QSize QWidget_SizeIncrement(void* c_this);
	[LinkName("QWidget_SetSizeIncrement")]
	public static extern void QWidget_SetSizeIncrement(void* c_this, QSize sizeIncrement);
	[LinkName("QWidget_SetSizeIncrement2")]
	public static extern void QWidget_SetSizeIncrement2(void* c_this, int32 w, int32 h);
	[LinkName("QWidget_BaseSize")]
	public static extern QSize QWidget_BaseSize(void* c_this);
	[LinkName("QWidget_SetBaseSize")]
	public static extern void QWidget_SetBaseSize(void* c_this, QSize baseSize);
	[LinkName("QWidget_SetBaseSize2")]
	public static extern void QWidget_SetBaseSize2(void* c_this, int32 basew, int32 baseh);
	[LinkName("QWidget_SetFixedSize")]
	public static extern void QWidget_SetFixedSize(void* c_this, QSize fixedSize);
	[LinkName("QWidget_SetFixedSize2")]
	public static extern void QWidget_SetFixedSize2(void* c_this, int32 w, int32 h);
	[LinkName("QWidget_SetFixedWidth")]
	public static extern void QWidget_SetFixedWidth(void* c_this, int32 w);
	[LinkName("QWidget_SetFixedHeight")]
	public static extern void QWidget_SetFixedHeight(void* c_this, int32 h);
	[LinkName("QWidget_MapToGlobal")]
	public static extern QPointF QWidget_MapToGlobal(void* c_this, QPointF param1);
	[LinkName("QWidget_MapToGlobalWithQPoint")]
	public static extern QPoint QWidget_MapToGlobalWithQPoint(void* c_this, QPoint param1);
	[LinkName("QWidget_MapFromGlobal")]
	public static extern QPointF QWidget_MapFromGlobal(void* c_this, QPointF param1);
	[LinkName("QWidget_MapFromGlobalWithQPoint")]
	public static extern QPoint QWidget_MapFromGlobalWithQPoint(void* c_this, QPoint param1);
	[LinkName("QWidget_MapToParent")]
	public static extern QPointF QWidget_MapToParent(void* c_this, QPointF param1);
	[LinkName("QWidget_MapToParentWithQPoint")]
	public static extern QPoint QWidget_MapToParentWithQPoint(void* c_this, QPoint param1);
	[LinkName("QWidget_MapFromParent")]
	public static extern QPointF QWidget_MapFromParent(void* c_this, QPointF param1);
	[LinkName("QWidget_MapFromParentWithQPoint")]
	public static extern QPoint QWidget_MapFromParentWithQPoint(void* c_this, QPoint param1);
	[LinkName("QWidget_MapTo")]
	public static extern QPointF QWidget_MapTo(void* c_this, QWidget param1, QPointF param2);
	[LinkName("QWidget_MapTo2")]
	public static extern QPoint QWidget_MapTo2(void* c_this, QWidget param1, QPoint param2);
	[LinkName("QWidget_MapFrom")]
	public static extern QPointF QWidget_MapFrom(void* c_this, QWidget param1, QPointF param2);
	[LinkName("QWidget_MapFrom2")]
	public static extern QPoint QWidget_MapFrom2(void* c_this, QWidget param1, QPoint param2);
	[LinkName("QWidget_Window")]
	public static extern QWidget QWidget_Window(void* c_this);
	[LinkName("QWidget_NativeParentWidget")]
	public static extern QWidget QWidget_NativeParentWidget(void* c_this);
	[LinkName("QWidget_TopLevelWidget")]
	public static extern QWidget QWidget_TopLevelWidget(void* c_this);
	[LinkName("QWidget_Palette")]
	public static extern QPalette QWidget_Palette(void* c_this);
	[LinkName("QWidget_SetPalette")]
	public static extern void QWidget_SetPalette(void* c_this, QPalette palette);
	[LinkName("QWidget_SetBackgroundRole")]
	public static extern void QWidget_SetBackgroundRole(void* c_this, int64 backgroundRole);
	[LinkName("QWidget_BackgroundRole")]
	public static extern int64 QWidget_BackgroundRole(void* c_this);
	[LinkName("QWidget_SetForegroundRole")]
	public static extern void QWidget_SetForegroundRole(void* c_this, int64 foregroundRole);
	[LinkName("QWidget_ForegroundRole")]
	public static extern int64 QWidget_ForegroundRole(void* c_this);
	[LinkName("QWidget_Font")]
	public static extern QFont QWidget_Font(void* c_this);
	[LinkName("QWidget_SetFont")]
	public static extern void QWidget_SetFont(void* c_this, QFont font);
	[LinkName("QWidget_FontMetrics")]
	public static extern QFontMetrics QWidget_FontMetrics(void* c_this);
	[LinkName("QWidget_FontInfo")]
	public static extern QFontInfo QWidget_FontInfo(void* c_this);
	[LinkName("QWidget_Cursor")]
	public static extern QCursor QWidget_Cursor(void* c_this);
	[LinkName("QWidget_SetCursor")]
	public static extern void QWidget_SetCursor(void* c_this, QCursor cursor);
	[LinkName("QWidget_UnsetCursor")]
	public static extern void QWidget_UnsetCursor(void* c_this);
	[LinkName("QWidget_SetMouseTracking")]
	public static extern void QWidget_SetMouseTracking(void* c_this, bool enable);
	[LinkName("QWidget_HasMouseTracking")]
	public static extern bool QWidget_HasMouseTracking(void* c_this);
	[LinkName("QWidget_UnderMouse")]
	public static extern bool QWidget_UnderMouse(void* c_this);
	[LinkName("QWidget_SetTabletTracking")]
	public static extern void QWidget_SetTabletTracking(void* c_this, bool enable);
	[LinkName("QWidget_HasTabletTracking")]
	public static extern bool QWidget_HasTabletTracking(void* c_this);
	[LinkName("QWidget_SetMask")]
	public static extern void QWidget_SetMask(void* c_this, QBitmap mask);
	[LinkName("QWidget_SetMaskWithMask")]
	public static extern void QWidget_SetMaskWithMask(void* c_this, QRegion mask);
	[LinkName("QWidget_Mask")]
	public static extern QRegion QWidget_Mask(void* c_this);
	[LinkName("QWidget_ClearMask")]
	public static extern void QWidget_ClearMask(void* c_this);
	[LinkName("QWidget_Render")]
	public static extern void QWidget_Render(void* c_this, QPaintDevice target);
	[LinkName("QWidget_RenderWithPainter")]
	public static extern void QWidget_RenderWithPainter(void* c_this, QPainter painter);
	[LinkName("QWidget_Grab")]
	public static extern QPixmap QWidget_Grab(void* c_this);
	[LinkName("QWidget_GraphicsEffect")]
	public static extern QGraphicsEffect QWidget_GraphicsEffect(void* c_this);
	[LinkName("QWidget_SetGraphicsEffect")]
	public static extern void QWidget_SetGraphicsEffect(void* c_this, QGraphicsEffect effect);
	[LinkName("QWidget_GrabGesture")]
	public static extern void QWidget_GrabGesture(void* c_this, int64 typeVal);
	[LinkName("QWidget_UngrabGesture")]
	public static extern void QWidget_UngrabGesture(void* c_this, int64 typeVal);
	[LinkName("QWidget_SetWindowTitle")]
	public static extern void QWidget_SetWindowTitle(void* c_this, char8[] windowTitle);
	[LinkName("QWidget_SetStyleSheet")]
	public static extern void QWidget_SetStyleSheet(void* c_this, char8[] styleSheet);
	[LinkName("QWidget_StyleSheet")]
	public static extern char8[] QWidget_StyleSheet(void* c_this);
	[LinkName("QWidget_WindowTitle")]
	public static extern char8[] QWidget_WindowTitle(void* c_this);
	[LinkName("QWidget_SetWindowIcon")]
	public static extern void QWidget_SetWindowIcon(void* c_this, QIcon icon);
	[LinkName("QWidget_WindowIcon")]
	public static extern QIcon QWidget_WindowIcon(void* c_this);
	[LinkName("QWidget_SetWindowIconText")]
	public static extern void QWidget_SetWindowIconText(void* c_this, char8[] windowIconText);
	[LinkName("QWidget_WindowIconText")]
	public static extern char8[] QWidget_WindowIconText(void* c_this);
	[LinkName("QWidget_SetWindowRole")]
	public static extern void QWidget_SetWindowRole(void* c_this, char8[] windowRole);
	[LinkName("QWidget_WindowRole")]
	public static extern char8[] QWidget_WindowRole(void* c_this);
	[LinkName("QWidget_SetWindowFilePath")]
	public static extern void QWidget_SetWindowFilePath(void* c_this, char8[] filePath);
	[LinkName("QWidget_WindowFilePath")]
	public static extern char8[] QWidget_WindowFilePath(void* c_this);
	[LinkName("QWidget_SetWindowOpacity")]
	public static extern void QWidget_SetWindowOpacity(void* c_this, double level);
	[LinkName("QWidget_WindowOpacity")]
	public static extern double QWidget_WindowOpacity(void* c_this);
	[LinkName("QWidget_IsWindowModified")]
	public static extern bool QWidget_IsWindowModified(void* c_this);
	[LinkName("QWidget_SetToolTip")]
	public static extern void QWidget_SetToolTip(void* c_this, char8[] toolTip);
	[LinkName("QWidget_ToolTip")]
	public static extern char8[] QWidget_ToolTip(void* c_this);
	[LinkName("QWidget_SetToolTipDuration")]
	public static extern void QWidget_SetToolTipDuration(void* c_this, int32 msec);
	[LinkName("QWidget_ToolTipDuration")]
	public static extern int32 QWidget_ToolTipDuration(void* c_this);
	[LinkName("QWidget_SetStatusTip")]
	public static extern void QWidget_SetStatusTip(void* c_this, char8[] statusTip);
	[LinkName("QWidget_StatusTip")]
	public static extern char8[] QWidget_StatusTip(void* c_this);
	[LinkName("QWidget_SetWhatsThis")]
	public static extern void QWidget_SetWhatsThis(void* c_this, char8[] whatsThis);
	[LinkName("QWidget_WhatsThis")]
	public static extern char8[] QWidget_WhatsThis(void* c_this);
	[LinkName("QWidget_AccessibleName")]
	public static extern char8[] QWidget_AccessibleName(void* c_this);
	[LinkName("QWidget_SetAccessibleName")]
	public static extern void QWidget_SetAccessibleName(void* c_this, char8[] name);
	[LinkName("QWidget_AccessibleDescription")]
	public static extern char8[] QWidget_AccessibleDescription(void* c_this);
	[LinkName("QWidget_SetAccessibleDescription")]
	public static extern void QWidget_SetAccessibleDescription(void* c_this, char8[] description);
	[LinkName("QWidget_SetLayoutDirection")]
	public static extern void QWidget_SetLayoutDirection(void* c_this, int64 direction);
	[LinkName("QWidget_LayoutDirection")]
	public static extern int64 QWidget_LayoutDirection(void* c_this);
	[LinkName("QWidget_UnsetLayoutDirection")]
	public static extern void QWidget_UnsetLayoutDirection(void* c_this);
	[LinkName("QWidget_SetLocale")]
	public static extern void QWidget_SetLocale(void* c_this, QLocale locale);
	[LinkName("QWidget_Locale")]
	public static extern QLocale QWidget_Locale(void* c_this);
	[LinkName("QWidget_UnsetLocale")]
	public static extern void QWidget_UnsetLocale(void* c_this);
	[LinkName("QWidget_IsRightToLeft")]
	public static extern bool QWidget_IsRightToLeft(void* c_this);
	[LinkName("QWidget_IsLeftToRight")]
	public static extern bool QWidget_IsLeftToRight(void* c_this);
	[LinkName("QWidget_SetFocus")]
	public static extern void QWidget_SetFocus(void* c_this);
	[LinkName("QWidget_IsActiveWindow")]
	public static extern bool QWidget_IsActiveWindow(void* c_this);
	[LinkName("QWidget_ActivateWindow")]
	public static extern void QWidget_ActivateWindow(void* c_this);
	[LinkName("QWidget_ClearFocus")]
	public static extern void QWidget_ClearFocus(void* c_this);
	[LinkName("QWidget_SetFocusWithReason")]
	public static extern void QWidget_SetFocusWithReason(void* c_this, int64 reason);
	[LinkName("QWidget_FocusPolicy")]
	public static extern int64 QWidget_FocusPolicy(void* c_this);
	[LinkName("QWidget_SetFocusPolicy")]
	public static extern void QWidget_SetFocusPolicy(void* c_this, int64 policy);
	[LinkName("QWidget_HasFocus")]
	public static extern bool QWidget_HasFocus(void* c_this);
	[LinkName("QWidget_SetTabOrder")]
	public static extern void QWidget_SetTabOrder(QWidget param1, QWidget param2);
	[LinkName("QWidget_SetFocusProxy")]
	public static extern void QWidget_SetFocusProxy(void* c_this, QWidget focusProxy);
	[LinkName("QWidget_FocusProxy")]
	public static extern QWidget QWidget_FocusProxy(void* c_this);
	[LinkName("QWidget_ContextMenuPolicy")]
	public static extern int64 QWidget_ContextMenuPolicy(void* c_this);
	[LinkName("QWidget_SetContextMenuPolicy")]
	public static extern void QWidget_SetContextMenuPolicy(void* c_this, int64 policy);
	[LinkName("QWidget_GrabMouse")]
	public static extern void QWidget_GrabMouse(void* c_this);
	[LinkName("QWidget_GrabMouseWithQCursor")]
	public static extern void QWidget_GrabMouseWithQCursor(void* c_this, QCursor param1);
	[LinkName("QWidget_ReleaseMouse")]
	public static extern void QWidget_ReleaseMouse(void* c_this);
	[LinkName("QWidget_GrabKeyboard")]
	public static extern void QWidget_GrabKeyboard(void* c_this);
	[LinkName("QWidget_ReleaseKeyboard")]
	public static extern void QWidget_ReleaseKeyboard(void* c_this);
	[LinkName("QWidget_GrabShortcut")]
	public static extern int32 QWidget_GrabShortcut(void* c_this, QKeySequence key);
	[LinkName("QWidget_ReleaseShortcut")]
	public static extern void QWidget_ReleaseShortcut(void* c_this, int32 id);
	[LinkName("QWidget_SetShortcutEnabled")]
	public static extern void QWidget_SetShortcutEnabled(void* c_this, int32 id);
	[LinkName("QWidget_SetShortcutAutoRepeat")]
	public static extern void QWidget_SetShortcutAutoRepeat(void* c_this, int32 id);
	[LinkName("QWidget_MouseGrabber")]
	public static extern QWidget QWidget_MouseGrabber();
	[LinkName("QWidget_KeyboardGrabber")]
	public static extern QWidget QWidget_KeyboardGrabber();
	[LinkName("QWidget_UpdatesEnabled")]
	public static extern bool QWidget_UpdatesEnabled(void* c_this);
	[LinkName("QWidget_SetUpdatesEnabled")]
	public static extern void QWidget_SetUpdatesEnabled(void* c_this, bool enable);
	[LinkName("QWidget_GraphicsProxyWidget")]
	public static extern QGraphicsProxyWidget QWidget_GraphicsProxyWidget(void* c_this);
	[LinkName("QWidget_Update")]
	public static extern void QWidget_Update(void* c_this);
	[LinkName("QWidget_Repaint")]
	public static extern void QWidget_Repaint(void* c_this);
	[LinkName("QWidget_Update2")]
	public static extern void QWidget_Update2(void* c_this, int32 x, int32 y, int32 w, int32 h);
	[LinkName("QWidget_UpdateWithQRect")]
	public static extern void QWidget_UpdateWithQRect(void* c_this, QRect param1);
	[LinkName("QWidget_UpdateWithQRegion")]
	public static extern void QWidget_UpdateWithQRegion(void* c_this, QRegion param1);
	[LinkName("QWidget_Repaint2")]
	public static extern void QWidget_Repaint2(void* c_this, int32 x, int32 y, int32 w, int32 h);
	[LinkName("QWidget_RepaintWithQRect")]
	public static extern void QWidget_RepaintWithQRect(void* c_this, QRect param1);
	[LinkName("QWidget_RepaintWithQRegion")]
	public static extern void QWidget_RepaintWithQRegion(void* c_this, QRegion param1);
	[LinkName("QWidget_SetVisible")]
	public static extern void QWidget_SetVisible(void* c_this, bool visible);
	[LinkName("QWidget_SetHidden")]
	public static extern void QWidget_SetHidden(void* c_this, bool hidden);
	[LinkName("QWidget_Show")]
	public static extern void QWidget_Show(void* c_this);
	[LinkName("QWidget_Hide")]
	public static extern void QWidget_Hide(void* c_this);
	[LinkName("QWidget_ShowMinimized")]
	public static extern void QWidget_ShowMinimized(void* c_this);
	[LinkName("QWidget_ShowMaximized")]
	public static extern void QWidget_ShowMaximized(void* c_this);
	[LinkName("QWidget_ShowFullScreen")]
	public static extern void QWidget_ShowFullScreen(void* c_this);
	[LinkName("QWidget_ShowNormal")]
	public static extern void QWidget_ShowNormal(void* c_this);
	[LinkName("QWidget_Close")]
	public static extern bool QWidget_Close(void* c_this);
	[LinkName("QWidget_Raise")]
	public static extern void QWidget_Raise(void* c_this);
	[LinkName("QWidget_Lower")]
	public static extern void QWidget_Lower(void* c_this);
	[LinkName("QWidget_StackUnder")]
	public static extern void QWidget_StackUnder(void* c_this, QWidget param1);
	[LinkName("QWidget_Move")]
	public static extern void QWidget_Move(void* c_this, int32 x, int32 y);
	[LinkName("QWidget_MoveWithQPoint")]
	public static extern void QWidget_MoveWithQPoint(void* c_this, QPoint param1);
	[LinkName("QWidget_Resize")]
	public static extern void QWidget_Resize(void* c_this, int32 w, int32 h);
	[LinkName("QWidget_ResizeWithQSize")]
	public static extern void QWidget_ResizeWithQSize(void* c_this, QSize param1);
	[LinkName("QWidget_SetGeometry")]
	public static extern void QWidget_SetGeometry(void* c_this, int32 x, int32 y, int32 w, int32 h);
	[LinkName("QWidget_SetGeometryWithGeometry")]
	public static extern void QWidget_SetGeometryWithGeometry(void* c_this, QRect geometry);
	[LinkName("QWidget_SaveGeometry")]
	public static extern uint8[] QWidget_SaveGeometry(void* c_this);
	[LinkName("QWidget_RestoreGeometry")]
	public static extern bool QWidget_RestoreGeometry(void* c_this, uint8[] geometry);
	[LinkName("QWidget_AdjustSize")]
	public static extern void QWidget_AdjustSize(void* c_this);
	[LinkName("QWidget_IsVisible")]
	public static extern bool QWidget_IsVisible(void* c_this);
	[LinkName("QWidget_IsVisibleTo")]
	public static extern bool QWidget_IsVisibleTo(void* c_this, QWidget param1);
	[LinkName("QWidget_IsHidden")]
	public static extern bool QWidget_IsHidden(void* c_this);
	[LinkName("QWidget_IsMinimized")]
	public static extern bool QWidget_IsMinimized(void* c_this);
	[LinkName("QWidget_IsMaximized")]
	public static extern bool QWidget_IsMaximized(void* c_this);
	[LinkName("QWidget_IsFullScreen")]
	public static extern bool QWidget_IsFullScreen(void* c_this);
	[LinkName("QWidget_WindowState")]
	public static extern int64 QWidget_WindowState(void* c_this);
	[LinkName("QWidget_SetWindowState")]
	public static extern void QWidget_SetWindowState(void* c_this, int64 state);
	[LinkName("QWidget_OverrideWindowState")]
	public static extern void QWidget_OverrideWindowState(void* c_this, int64 state);
	[LinkName("QWidget_SizeHint")]
	public static extern QSize QWidget_SizeHint(void* c_this);
	[LinkName("QWidget_MinimumSizeHint")]
	public static extern QSize QWidget_MinimumSizeHint(void* c_this);
	[LinkName("QWidget_SizePolicy")]
	public static extern QSizePolicy QWidget_SizePolicy(void* c_this);
	[LinkName("QWidget_SetSizePolicy")]
	public static extern void QWidget_SetSizePolicy(void* c_this, QSizePolicy sizePolicy);
	[LinkName("QWidget_SetSizePolicy2")]
	public static extern void QWidget_SetSizePolicy2(void* c_this, int64 horizontal, int64 vertical);
	[LinkName("QWidget_HeightForWidth")]
	public static extern int32 QWidget_HeightForWidth(void* c_this, int32 param1);
	[LinkName("QWidget_HasHeightForWidth")]
	public static extern bool QWidget_HasHeightForWidth(void* c_this);
	[LinkName("QWidget_VisibleRegion")]
	public static extern QRegion QWidget_VisibleRegion(void* c_this);
	[LinkName("QWidget_SetContentsMargins")]
	public static extern void QWidget_SetContentsMargins(void* c_this, int32 left, int32 top, int32 right, int32 bottom);
	[LinkName("QWidget_SetContentsMarginsWithMargins")]
	public static extern void QWidget_SetContentsMarginsWithMargins(void* c_this, QMargins margins);
	[LinkName("QWidget_ContentsMargins")]
	public static extern QMargins QWidget_ContentsMargins(void* c_this);
	[LinkName("QWidget_ContentsRect")]
	public static extern QRect QWidget_ContentsRect(void* c_this);
	[LinkName("QWidget_Layout")]
	public static extern QLayout QWidget_Layout(void* c_this);
	[LinkName("QWidget_SetLayout")]
	public static extern void QWidget_SetLayout(void* c_this, QLayout layout);
	[LinkName("QWidget_UpdateGeometry")]
	public static extern void QWidget_UpdateGeometry(void* c_this);
	[LinkName("QWidget_SetParent")]
	public static extern void QWidget_SetParent(void* c_this, QWidget parent);
	[LinkName("QWidget_SetParent2")]
	public static extern void QWidget_SetParent2(void* c_this, QWidget parent, int64 f);
	[LinkName("QWidget_Scroll")]
	public static extern void QWidget_Scroll(void* c_this, int32 dx, int32 dy);
	[LinkName("QWidget_Scroll2")]
	public static extern void QWidget_Scroll2(void* c_this, int32 dx, int32 dy, QRect param3);
	[LinkName("QWidget_FocusWidget")]
	public static extern QWidget QWidget_FocusWidget(void* c_this);
	[LinkName("QWidget_NextInFocusChain")]
	public static extern QWidget QWidget_NextInFocusChain(void* c_this);
	[LinkName("QWidget_PreviousInFocusChain")]
	public static extern QWidget QWidget_PreviousInFocusChain(void* c_this);
	[LinkName("QWidget_AcceptDrops")]
	public static extern bool QWidget_AcceptDrops(void* c_this);
	[LinkName("QWidget_SetAcceptDrops")]
	public static extern void QWidget_SetAcceptDrops(void* c_this, bool on);
	[LinkName("QWidget_AddAction")]
	public static extern void QWidget_AddAction(void* c_this, QAction action);
	[LinkName("QWidget_AddActions")]
	public static extern void QWidget_AddActions(void* c_this, QAction[] actions);
	[LinkName("QWidget_InsertActions")]
	public static extern void QWidget_InsertActions(void* c_this, QAction before, QAction[] actions);
	[LinkName("QWidget_InsertAction")]
	public static extern void QWidget_InsertAction(void* c_this, QAction before, QAction action);
	[LinkName("QWidget_RemoveAction")]
	public static extern void QWidget_RemoveAction(void* c_this, QAction action);
	[LinkName("QWidget_Actions")]
	public static extern QAction[] QWidget_Actions(void* c_this);
	[LinkName("QWidget_AddActionWithText")]
	public static extern QAction QWidget_AddActionWithText(void* c_this, char8[] text);
	[LinkName("QWidget_AddAction2")]
	public static extern QAction QWidget_AddAction2(void* c_this, QIcon icon, char8[] text);
	[LinkName("QWidget_AddAction3")]
	public static extern QAction QWidget_AddAction3(void* c_this, char8[] text, QKeySequence shortcut);
	[LinkName("QWidget_AddAction4")]
	public static extern QAction QWidget_AddAction4(void* c_this, QIcon icon, char8[] text, QKeySequence shortcut);
	[LinkName("QWidget_ParentWidget")]
	public static extern QWidget QWidget_ParentWidget(void* c_this);
	[LinkName("QWidget_SetWindowFlags")]
	public static extern void QWidget_SetWindowFlags(void* c_this, int64 typeVal);
	[LinkName("QWidget_WindowFlags")]
	public static extern int64 QWidget_WindowFlags(void* c_this);
	[LinkName("QWidget_SetWindowFlag")]
	public static extern void QWidget_SetWindowFlag(void* c_this, int64 param1);
	[LinkName("QWidget_OverrideWindowFlags")]
	public static extern void QWidget_OverrideWindowFlags(void* c_this, int64 typeVal);
	[LinkName("QWidget_WindowType")]
	public static extern int64 QWidget_WindowType(void* c_this);
	[LinkName("QWidget_Find")]
	public static extern QWidget QWidget_Find(uint64 param1);
	[LinkName("QWidget_ChildAt")]
	public static extern QWidget QWidget_ChildAt(void* c_this, int32 x, int32 y);
	[LinkName("QWidget_ChildAtWithQPoint")]
	public static extern QWidget QWidget_ChildAtWithQPoint(void* c_this, QPoint p);
	[LinkName("QWidget_SetAttribute")]
	public static extern void QWidget_SetAttribute(void* c_this, int64 param1);
	[LinkName("QWidget_TestAttribute")]
	public static extern bool QWidget_TestAttribute(void* c_this, int64 param1);
	[LinkName("QWidget_PaintEngine")]
	public static extern QPaintEngine QWidget_PaintEngine(void* c_this);
	[LinkName("QWidget_EnsurePolished")]
	public static extern void QWidget_EnsurePolished(void* c_this);
	[LinkName("QWidget_IsAncestorOf")]
	public static extern bool QWidget_IsAncestorOf(void* c_this, QWidget child);
	[LinkName("QWidget_AutoFillBackground")]
	public static extern bool QWidget_AutoFillBackground(void* c_this);
	[LinkName("QWidget_SetAutoFillBackground")]
	public static extern void QWidget_SetAutoFillBackground(void* c_this, bool enabled);
	[LinkName("QWidget_BackingStore")]
	public static extern QBackingStore QWidget_BackingStore(void* c_this);
	[LinkName("QWidget_WindowHandle")]
	public static extern QWindow QWidget_WindowHandle(void* c_this);
	[LinkName("QWidget_Screen")]
	public static extern QScreen QWidget_Screen(void* c_this);
	[LinkName("QWidget_SetScreen")]
	public static extern void QWidget_SetScreen(void* c_this, QScreen screen);
	[LinkName("QWidget_CreateWindowContainer")]
	public static extern QWidget QWidget_CreateWindowContainer(QWindow window);
	[LinkName("QWidget_WindowTitleChanged")]
	public static extern void QWidget_WindowTitleChanged(void* c_this, char8[] title);
	[LinkName("QWidget_WindowIconChanged")]
	public static extern void QWidget_WindowIconChanged(void* c_this, QIcon icon);
	[LinkName("QWidget_WindowIconTextChanged")]
	public static extern void QWidget_WindowIconTextChanged(void* c_this, char8[] iconText);
	[LinkName("QWidget_CustomContextMenuRequested")]
	public static extern void QWidget_CustomContextMenuRequested(void* c_this, QPoint pos);
	[LinkName("QWidget_Event")]
	public static extern bool QWidget_Event(void* c_this, QEvent event);
	[LinkName("QWidget_MousePressEvent")]
	public static extern void QWidget_MousePressEvent(void* c_this, QMouseEvent event);
	[LinkName("QWidget_MouseReleaseEvent")]
	public static extern void QWidget_MouseReleaseEvent(void* c_this, QMouseEvent event);
	[LinkName("QWidget_MouseDoubleClickEvent")]
	public static extern void QWidget_MouseDoubleClickEvent(void* c_this, QMouseEvent event);
	[LinkName("QWidget_MouseMoveEvent")]
	public static extern void QWidget_MouseMoveEvent(void* c_this, QMouseEvent event);
	[LinkName("QWidget_WheelEvent")]
	public static extern void QWidget_WheelEvent(void* c_this, QWheelEvent event);
	[LinkName("QWidget_KeyPressEvent")]
	public static extern void QWidget_KeyPressEvent(void* c_this, QKeyEvent event);
	[LinkName("QWidget_KeyReleaseEvent")]
	public static extern void QWidget_KeyReleaseEvent(void* c_this, QKeyEvent event);
	[LinkName("QWidget_FocusInEvent")]
	public static extern void QWidget_FocusInEvent(void* c_this, QFocusEvent event);
	[LinkName("QWidget_FocusOutEvent")]
	public static extern void QWidget_FocusOutEvent(void* c_this, QFocusEvent event);
	[LinkName("QWidget_EnterEvent")]
	public static extern void QWidget_EnterEvent(void* c_this, QEnterEvent event);
	[LinkName("QWidget_LeaveEvent")]
	public static extern void QWidget_LeaveEvent(void* c_this, QEvent event);
	[LinkName("QWidget_PaintEvent")]
	public static extern void QWidget_PaintEvent(void* c_this, QPaintEvent event);
	[LinkName("QWidget_MoveEvent")]
	public static extern void QWidget_MoveEvent(void* c_this, QMoveEvent event);
	[LinkName("QWidget_ResizeEvent")]
	public static extern void QWidget_ResizeEvent(void* c_this, QResizeEvent event);
	[LinkName("QWidget_CloseEvent")]
	public static extern void QWidget_CloseEvent(void* c_this, QCloseEvent event);
	[LinkName("QWidget_ContextMenuEvent")]
	public static extern void QWidget_ContextMenuEvent(void* c_this, QContextMenuEvent event);
	[LinkName("QWidget_TabletEvent")]
	public static extern void QWidget_TabletEvent(void* c_this, QTabletEvent event);
	[LinkName("QWidget_ActionEvent")]
	public static extern void QWidget_ActionEvent(void* c_this, QActionEvent event);
	[LinkName("QWidget_DragEnterEvent")]
	public static extern void QWidget_DragEnterEvent(void* c_this, QDragEnterEvent event);
	[LinkName("QWidget_DragMoveEvent")]
	public static extern void QWidget_DragMoveEvent(void* c_this, QDragMoveEvent event);
	[LinkName("QWidget_DragLeaveEvent")]
	public static extern void QWidget_DragLeaveEvent(void* c_this, QDragLeaveEvent event);
	[LinkName("QWidget_DropEvent")]
	public static extern void QWidget_DropEvent(void* c_this, QDropEvent event);
	[LinkName("QWidget_ShowEvent")]
	public static extern void QWidget_ShowEvent(void* c_this, QShowEvent event);
	[LinkName("QWidget_HideEvent")]
	public static extern void QWidget_HideEvent(void* c_this, QHideEvent event);
	[LinkName("QWidget_NativeEvent")]
	public static extern bool QWidget_NativeEvent(void* c_this, uint8[] eventType, void message, c_uintptr result);
	[LinkName("QWidget_ChangeEvent")]
	public static extern void QWidget_ChangeEvent(void* c_this, QEvent param1);
	[LinkName("QWidget_Metric")]
	public static extern int32 QWidget_Metric(void* c_this, int64 param1);
	[LinkName("QWidget_InitPainter")]
	public static extern void QWidget_InitPainter(void* c_this, QPainter painter);
	[LinkName("QWidget_Redirected")]
	public static extern QPaintDevice QWidget_Redirected(void* c_this, QPoint offset);
	[LinkName("QWidget_SharedPainter")]
	public static extern QPainter QWidget_SharedPainter(void* c_this);
	[LinkName("QWidget_InputMethodEvent")]
	public static extern void QWidget_InputMethodEvent(void* c_this, QInputMethodEvent param1);
	[LinkName("QWidget_InputMethodQuery")]
	public static extern QVariant QWidget_InputMethodQuery(void* c_this, int64 param1);
	[LinkName("QWidget_InputMethodHints")]
	public static extern int64 QWidget_InputMethodHints(void* c_this);
	[LinkName("QWidget_SetInputMethodHints")]
	public static extern void QWidget_SetInputMethodHints(void* c_this, int64 hints);
	[LinkName("QWidget_UpdateMicroFocus")]
	public static extern void QWidget_UpdateMicroFocus(void* c_this);
	[LinkName("QWidget_Create")]
	public static extern void QWidget_Create(void* c_this);
	[LinkName("QWidget_Destroy")]
	public static extern void QWidget_Destroy(void* c_this);
	[LinkName("QWidget_FocusNextPrevChild")]
	public static extern bool QWidget_FocusNextPrevChild(void* c_this, bool next);
	[LinkName("QWidget_FocusNextChild")]
	public static extern bool QWidget_FocusNextChild(void* c_this);
	[LinkName("QWidget_FocusPreviousChild")]
	public static extern bool QWidget_FocusPreviousChild(void* c_this);
	[LinkName("QWidget_Tr2")]
	public static extern char8[] QWidget_Tr2(char8[] s, char8[] c);
	[LinkName("QWidget_Tr3")]
	public static extern char8[] QWidget_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QWidget_Render2")]
	public static extern void QWidget_Render2(void* c_this, QPaintDevice target, QPoint targetOffset);
	[LinkName("QWidget_Render3")]
	public static extern void QWidget_Render3(void* c_this, QPaintDevice target, QPoint targetOffset, QRegion sourceRegion);
	[LinkName("QWidget_Render4")]
	public static extern void QWidget_Render4(void* c_this, QPaintDevice target, QPoint targetOffset, QRegion sourceRegion, int64 renderFlags);
	[LinkName("QWidget_Render22")]
	public static extern void QWidget_Render22(void* c_this, QPainter painter, QPoint targetOffset);
	[LinkName("QWidget_Render32")]
	public static extern void QWidget_Render32(void* c_this, QPainter painter, QPoint targetOffset, QRegion sourceRegion);
	[LinkName("QWidget_Render42")]
	public static extern void QWidget_Render42(void* c_this, QPainter painter, QPoint targetOffset, QRegion sourceRegion, int64 renderFlags);
	[LinkName("QWidget_Grab1")]
	public static extern QPixmap QWidget_Grab1(void* c_this, QRect rectangle);
	[LinkName("QWidget_GrabGesture2")]
	public static extern void QWidget_GrabGesture2(void* c_this, int64 typeVal, int64 flags);
	[LinkName("QWidget_GrabShortcut2")]
	public static extern int32 QWidget_GrabShortcut2(void* c_this, QKeySequence key, int64 context);
	[LinkName("QWidget_SetShortcutEnabled2")]
	public static extern void QWidget_SetShortcutEnabled2(void* c_this, int32 id, bool enable);
	[LinkName("QWidget_SetShortcutAutoRepeat2")]
	public static extern void QWidget_SetShortcutAutoRepeat2(void* c_this, int32 id, bool enable);
	[LinkName("QWidget_SetWindowFlag2")]
	public static extern void QWidget_SetWindowFlag2(void* c_this, int64 param1, bool on);
	[LinkName("QWidget_SetAttribute2")]
	public static extern void QWidget_SetAttribute2(void* c_this, int64 param1, bool on);
	[LinkName("QWidget_CreateWindowContainer2")]
	public static extern QWidget QWidget_CreateWindowContainer2(QWindow window, QWidget parent);
	[LinkName("QWidget_CreateWindowContainer3")]
	public static extern QWidget QWidget_CreateWindowContainer3(QWindow window, QWidget parent, int64 flags);
	[LinkName("QWidget_UpdateMicroFocus1")]
	public static extern void QWidget_UpdateMicroFocus1(void* c_this, int64 query);
	[LinkName("QWidget_Create1")]
	public static extern void QWidget_Create1(void* c_this, uint64 param1);
	[LinkName("QWidget_Create2")]
	public static extern void QWidget_Create2(void* c_this, uint64 param1, bool initializeWindow);
	[LinkName("QWidget_Create3")]
	public static extern void QWidget_Create3(void* c_this, uint64 param1, bool initializeWindow, bool destroyOldWindow);
	[LinkName("QWidget_Destroy1")]
	public static extern void QWidget_Destroy1(void* c_this, bool destroyWindow);
	[LinkName("QWidget_Destroy2")]
	public static extern void QWidget_Destroy2(void* c_this, bool destroyWindow, bool destroySubWindows);
}