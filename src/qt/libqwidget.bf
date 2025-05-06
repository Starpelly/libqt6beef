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
	public static extern QWidgetData* QWidgetData_new(QWidgetData* param1);
	[LinkName("QWidgetData_OperatorAssign")]
	public static extern void QWidgetData_OperatorAssign(Self* c_this, QWidgetData* param1);
}
public struct QWidget : QPaintDevice
{
	[LinkName("QWidget_new")]
	public static extern QWidget* QWidget_new(QWidget* parent);
	[LinkName("QWidget_new2")]
	public static extern QWidget* QWidget_new2();
	[LinkName("QWidget_new3")]
	public static extern QWidget* QWidget_new3(QWidget* parent, int64 f);
	[LinkName("QWidget_MetaObject")]
	public static extern QMetaObject* QWidget_MetaObject(Self* c_this);
	[LinkName("QWidget_Metacast")]
	public static extern void* QWidget_Metacast(Self* c_this, char8[] param1);
	[LinkName("QWidget_Metacall")]
	public static extern int32 QWidget_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QWidget_Tr")]
	public static extern libqt_string QWidget_Tr(char8[] s);
	[LinkName("QWidget_DevType")]
	public static extern int32 QWidget_DevType(Self* c_this);
	[LinkName("QWidget_WinId")]
	public static extern c_uintptr QWidget_WinId(Self* c_this);
	[LinkName("QWidget_CreateWinId")]
	public static extern void QWidget_CreateWinId(Self* c_this);
	[LinkName("QWidget_InternalWinId")]
	public static extern c_uintptr QWidget_InternalWinId(Self* c_this);
	[LinkName("QWidget_EffectiveWinId")]
	public static extern c_uintptr QWidget_EffectiveWinId(Self* c_this);
	[LinkName("QWidget_Style")]
	public static extern QStyle* QWidget_Style(Self* c_this);
	[LinkName("QWidget_SetStyle")]
	public static extern void QWidget_SetStyle(Self* c_this, QStyle* style);
	[LinkName("QWidget_IsTopLevel")]
	public static extern bool QWidget_IsTopLevel(Self* c_this);
	[LinkName("QWidget_IsWindow")]
	public static extern bool QWidget_IsWindow(Self* c_this);
	[LinkName("QWidget_IsModal")]
	public static extern bool QWidget_IsModal(Self* c_this);
	[LinkName("QWidget_WindowModality")]
	public static extern int64 QWidget_WindowModality(Self* c_this);
	[LinkName("QWidget_SetWindowModality")]
	public static extern void QWidget_SetWindowModality(Self* c_this, int64 windowModality);
	[LinkName("QWidget_IsEnabled")]
	public static extern bool QWidget_IsEnabled(Self* c_this);
	[LinkName("QWidget_IsEnabledTo")]
	public static extern bool QWidget_IsEnabledTo(Self* c_this, QWidget* param1);
	[LinkName("QWidget_SetEnabled")]
	public static extern void QWidget_SetEnabled(Self* c_this, bool enabled);
	[LinkName("QWidget_SetDisabled")]
	public static extern void QWidget_SetDisabled(Self* c_this, bool disabled);
	[LinkName("QWidget_SetWindowModified")]
	public static extern void QWidget_SetWindowModified(Self* c_this, bool windowModified);
	[LinkName("QWidget_FrameGeometry")]
	public static extern QRect QWidget_FrameGeometry(Self* c_this);
	[LinkName("QWidget_Geometry")]
	public static extern QRect* QWidget_Geometry(Self* c_this);
	[LinkName("QWidget_NormalGeometry")]
	public static extern QRect QWidget_NormalGeometry(Self* c_this);
	[LinkName("QWidget_X")]
	public static extern int32 QWidget_X(Self* c_this);
	[LinkName("QWidget_Y")]
	public static extern int32 QWidget_Y(Self* c_this);
	[LinkName("QWidget_Pos")]
	public static extern QPoint QWidget_Pos(Self* c_this);
	[LinkName("QWidget_FrameSize")]
	public static extern QSize QWidget_FrameSize(Self* c_this);
	[LinkName("QWidget_Size")]
	public static extern QSize QWidget_Size(Self* c_this);
	[LinkName("QWidget_Width")]
	public static extern int32 QWidget_Width(Self* c_this);
	[LinkName("QWidget_Height")]
	public static extern int32 QWidget_Height(Self* c_this);
	[LinkName("QWidget_Rect")]
	public static extern QRect QWidget_Rect(Self* c_this);
	[LinkName("QWidget_ChildrenRect")]
	public static extern QRect QWidget_ChildrenRect(Self* c_this);
	[LinkName("QWidget_ChildrenRegion")]
	public static extern QRegion QWidget_ChildrenRegion(Self* c_this);
	[LinkName("QWidget_MinimumSize")]
	public static extern QSize QWidget_MinimumSize(Self* c_this);
	[LinkName("QWidget_MaximumSize")]
	public static extern QSize QWidget_MaximumSize(Self* c_this);
	[LinkName("QWidget_MinimumWidth")]
	public static extern int32 QWidget_MinimumWidth(Self* c_this);
	[LinkName("QWidget_MinimumHeight")]
	public static extern int32 QWidget_MinimumHeight(Self* c_this);
	[LinkName("QWidget_MaximumWidth")]
	public static extern int32 QWidget_MaximumWidth(Self* c_this);
	[LinkName("QWidget_MaximumHeight")]
	public static extern int32 QWidget_MaximumHeight(Self* c_this);
	[LinkName("QWidget_SetMinimumSize")]
	public static extern void QWidget_SetMinimumSize(Self* c_this, QSize* minimumSize);
	[LinkName("QWidget_SetMinimumSize2")]
	public static extern void QWidget_SetMinimumSize2(Self* c_this, int32 minw, int32 minh);
	[LinkName("QWidget_SetMaximumSize")]
	public static extern void QWidget_SetMaximumSize(Self* c_this, QSize* maximumSize);
	[LinkName("QWidget_SetMaximumSize2")]
	public static extern void QWidget_SetMaximumSize2(Self* c_this, int32 maxw, int32 maxh);
	[LinkName("QWidget_SetMinimumWidth")]
	public static extern void QWidget_SetMinimumWidth(Self* c_this, int32 minw);
	[LinkName("QWidget_SetMinimumHeight")]
	public static extern void QWidget_SetMinimumHeight(Self* c_this, int32 minh);
	[LinkName("QWidget_SetMaximumWidth")]
	public static extern void QWidget_SetMaximumWidth(Self* c_this, int32 maxw);
	[LinkName("QWidget_SetMaximumHeight")]
	public static extern void QWidget_SetMaximumHeight(Self* c_this, int32 maxh);
	[LinkName("QWidget_SizeIncrement")]
	public static extern QSize QWidget_SizeIncrement(Self* c_this);
	[LinkName("QWidget_SetSizeIncrement")]
	public static extern void QWidget_SetSizeIncrement(Self* c_this, QSize* sizeIncrement);
	[LinkName("QWidget_SetSizeIncrement2")]
	public static extern void QWidget_SetSizeIncrement2(Self* c_this, int32 w, int32 h);
	[LinkName("QWidget_BaseSize")]
	public static extern QSize QWidget_BaseSize(Self* c_this);
	[LinkName("QWidget_SetBaseSize")]
	public static extern void QWidget_SetBaseSize(Self* c_this, QSize* baseSize);
	[LinkName("QWidget_SetBaseSize2")]
	public static extern void QWidget_SetBaseSize2(Self* c_this, int32 basew, int32 baseh);
	[LinkName("QWidget_SetFixedSize")]
	public static extern void QWidget_SetFixedSize(Self* c_this, QSize* fixedSize);
	[LinkName("QWidget_SetFixedSize2")]
	public static extern void QWidget_SetFixedSize2(Self* c_this, int32 w, int32 h);
	[LinkName("QWidget_SetFixedWidth")]
	public static extern void QWidget_SetFixedWidth(Self* c_this, int32 w);
	[LinkName("QWidget_SetFixedHeight")]
	public static extern void QWidget_SetFixedHeight(Self* c_this, int32 h);
	[LinkName("QWidget_MapToGlobal")]
	public static extern QPointF QWidget_MapToGlobal(Self* c_this, QPointF* param1);
	[LinkName("QWidget_MapToGlobalWithQPoint")]
	public static extern QPoint QWidget_MapToGlobalWithQPoint(Self* c_this, QPoint* param1);
	[LinkName("QWidget_MapFromGlobal")]
	public static extern QPointF QWidget_MapFromGlobal(Self* c_this, QPointF* param1);
	[LinkName("QWidget_MapFromGlobalWithQPoint")]
	public static extern QPoint QWidget_MapFromGlobalWithQPoint(Self* c_this, QPoint* param1);
	[LinkName("QWidget_MapToParent")]
	public static extern QPointF QWidget_MapToParent(Self* c_this, QPointF* param1);
	[LinkName("QWidget_MapToParentWithQPoint")]
	public static extern QPoint QWidget_MapToParentWithQPoint(Self* c_this, QPoint* param1);
	[LinkName("QWidget_MapFromParent")]
	public static extern QPointF QWidget_MapFromParent(Self* c_this, QPointF* param1);
	[LinkName("QWidget_MapFromParentWithQPoint")]
	public static extern QPoint QWidget_MapFromParentWithQPoint(Self* c_this, QPoint* param1);
	[LinkName("QWidget_MapTo")]
	public static extern QPointF QWidget_MapTo(Self* c_this, QWidget* param1, QPointF* param2);
	[LinkName("QWidget_MapTo2")]
	public static extern QPoint QWidget_MapTo2(Self* c_this, QWidget* param1, QPoint* param2);
	[LinkName("QWidget_MapFrom")]
	public static extern QPointF QWidget_MapFrom(Self* c_this, QWidget* param1, QPointF* param2);
	[LinkName("QWidget_MapFrom2")]
	public static extern QPoint QWidget_MapFrom2(Self* c_this, QWidget* param1, QPoint* param2);
	[LinkName("QWidget_Window")]
	public static extern QWidget* QWidget_Window(Self* c_this);
	[LinkName("QWidget_NativeParentWidget")]
	public static extern QWidget* QWidget_NativeParentWidget(Self* c_this);
	[LinkName("QWidget_TopLevelWidget")]
	public static extern QWidget* QWidget_TopLevelWidget(Self* c_this);
	[LinkName("QWidget_Palette")]
	public static extern QPalette* QWidget_Palette(Self* c_this);
	[LinkName("QWidget_SetPalette")]
	public static extern void QWidget_SetPalette(Self* c_this, QPalette* palette);
	[LinkName("QWidget_SetBackgroundRole")]
	public static extern void QWidget_SetBackgroundRole(Self* c_this, int64 backgroundRole);
	[LinkName("QWidget_BackgroundRole")]
	public static extern int64 QWidget_BackgroundRole(Self* c_this);
	[LinkName("QWidget_SetForegroundRole")]
	public static extern void QWidget_SetForegroundRole(Self* c_this, int64 foregroundRole);
	[LinkName("QWidget_ForegroundRole")]
	public static extern int64 QWidget_ForegroundRole(Self* c_this);
	[LinkName("QWidget_Font")]
	public static extern QFont* QWidget_Font(Self* c_this);
	[LinkName("QWidget_SetFont")]
	public static extern void QWidget_SetFont(Self* c_this, QFont* font);
	[LinkName("QWidget_FontMetrics")]
	public static extern QFontMetrics QWidget_FontMetrics(Self* c_this);
	[LinkName("QWidget_FontInfo")]
	public static extern QFontInfo QWidget_FontInfo(Self* c_this);
	[LinkName("QWidget_Cursor")]
	public static extern QCursor QWidget_Cursor(Self* c_this);
	[LinkName("QWidget_SetCursor")]
	public static extern void QWidget_SetCursor(Self* c_this, QCursor* cursor);
	[LinkName("QWidget_UnsetCursor")]
	public static extern void QWidget_UnsetCursor(Self* c_this);
	[LinkName("QWidget_SetMouseTracking")]
	public static extern void QWidget_SetMouseTracking(Self* c_this, bool enable);
	[LinkName("QWidget_HasMouseTracking")]
	public static extern bool QWidget_HasMouseTracking(Self* c_this);
	[LinkName("QWidget_UnderMouse")]
	public static extern bool QWidget_UnderMouse(Self* c_this);
	[LinkName("QWidget_SetTabletTracking")]
	public static extern void QWidget_SetTabletTracking(Self* c_this, bool enable);
	[LinkName("QWidget_HasTabletTracking")]
	public static extern bool QWidget_HasTabletTracking(Self* c_this);
	[LinkName("QWidget_SetMask")]
	public static extern void QWidget_SetMask(Self* c_this, QBitmap* mask);
	[LinkName("QWidget_SetMaskWithMask")]
	public static extern void QWidget_SetMaskWithMask(Self* c_this, QRegion* mask);
	[LinkName("QWidget_Mask")]
	public static extern QRegion QWidget_Mask(Self* c_this);
	[LinkName("QWidget_ClearMask")]
	public static extern void QWidget_ClearMask(Self* c_this);
	[LinkName("QWidget_Render")]
	public static extern void QWidget_Render(Self* c_this, QPaintDevice* target);
	[LinkName("QWidget_RenderWithPainter")]
	public static extern void QWidget_RenderWithPainter(Self* c_this, QPainter* painter);
	[LinkName("QWidget_Grab")]
	public static extern QPixmap QWidget_Grab(Self* c_this);
	[LinkName("QWidget_GraphicsEffect")]
	public static extern QGraphicsEffect* QWidget_GraphicsEffect(Self* c_this);
	[LinkName("QWidget_SetGraphicsEffect")]
	public static extern void QWidget_SetGraphicsEffect(Self* c_this, QGraphicsEffect* effect);
	[LinkName("QWidget_GrabGesture")]
	public static extern void QWidget_GrabGesture(Self* c_this, int64 typeVal);
	[LinkName("QWidget_UngrabGesture")]
	public static extern void QWidget_UngrabGesture(Self* c_this, int64 typeVal);
	[LinkName("QWidget_SetWindowTitle")]
	public static extern void QWidget_SetWindowTitle(Self* c_this, libqt_string windowTitle);
	[LinkName("QWidget_SetStyleSheet")]
	public static extern void QWidget_SetStyleSheet(Self* c_this, libqt_string styleSheet);
	[LinkName("QWidget_StyleSheet")]
	public static extern libqt_string QWidget_StyleSheet(Self* c_this);
	[LinkName("QWidget_WindowTitle")]
	public static extern libqt_string QWidget_WindowTitle(Self* c_this);
	[LinkName("QWidget_SetWindowIcon")]
	public static extern void QWidget_SetWindowIcon(Self* c_this, QIcon* icon);
	[LinkName("QWidget_WindowIcon")]
	public static extern QIcon QWidget_WindowIcon(Self* c_this);
	[LinkName("QWidget_SetWindowIconText")]
	public static extern void QWidget_SetWindowIconText(Self* c_this, libqt_string windowIconText);
	[LinkName("QWidget_WindowIconText")]
	public static extern libqt_string QWidget_WindowIconText(Self* c_this);
	[LinkName("QWidget_SetWindowRole")]
	public static extern void QWidget_SetWindowRole(Self* c_this, libqt_string windowRole);
	[LinkName("QWidget_WindowRole")]
	public static extern libqt_string QWidget_WindowRole(Self* c_this);
	[LinkName("QWidget_SetWindowFilePath")]
	public static extern void QWidget_SetWindowFilePath(Self* c_this, libqt_string filePath);
	[LinkName("QWidget_WindowFilePath")]
	public static extern libqt_string QWidget_WindowFilePath(Self* c_this);
	[LinkName("QWidget_SetWindowOpacity")]
	public static extern void QWidget_SetWindowOpacity(Self* c_this, double level);
	[LinkName("QWidget_WindowOpacity")]
	public static extern double QWidget_WindowOpacity(Self* c_this);
	[LinkName("QWidget_IsWindowModified")]
	public static extern bool QWidget_IsWindowModified(Self* c_this);
	[LinkName("QWidget_SetToolTip")]
	public static extern void QWidget_SetToolTip(Self* c_this, libqt_string toolTip);
	[LinkName("QWidget_ToolTip")]
	public static extern libqt_string QWidget_ToolTip(Self* c_this);
	[LinkName("QWidget_SetToolTipDuration")]
	public static extern void QWidget_SetToolTipDuration(Self* c_this, int32 msec);
	[LinkName("QWidget_ToolTipDuration")]
	public static extern int32 QWidget_ToolTipDuration(Self* c_this);
	[LinkName("QWidget_SetStatusTip")]
	public static extern void QWidget_SetStatusTip(Self* c_this, libqt_string statusTip);
	[LinkName("QWidget_StatusTip")]
	public static extern libqt_string QWidget_StatusTip(Self* c_this);
	[LinkName("QWidget_SetWhatsThis")]
	public static extern void QWidget_SetWhatsThis(Self* c_this, libqt_string whatsThis);
	[LinkName("QWidget_WhatsThis")]
	public static extern libqt_string QWidget_WhatsThis(Self* c_this);
	[LinkName("QWidget_AccessibleName")]
	public static extern libqt_string QWidget_AccessibleName(Self* c_this);
	[LinkName("QWidget_SetAccessibleName")]
	public static extern void QWidget_SetAccessibleName(Self* c_this, libqt_string name);
	[LinkName("QWidget_AccessibleDescription")]
	public static extern libqt_string QWidget_AccessibleDescription(Self* c_this);
	[LinkName("QWidget_SetAccessibleDescription")]
	public static extern void QWidget_SetAccessibleDescription(Self* c_this, libqt_string description);
	[LinkName("QWidget_SetLayoutDirection")]
	public static extern void QWidget_SetLayoutDirection(Self* c_this, int64 direction);
	[LinkName("QWidget_LayoutDirection")]
	public static extern int64 QWidget_LayoutDirection(Self* c_this);
	[LinkName("QWidget_UnsetLayoutDirection")]
	public static extern void QWidget_UnsetLayoutDirection(Self* c_this);
	[LinkName("QWidget_SetLocale")]
	public static extern void QWidget_SetLocale(Self* c_this, QLocale* locale);
	[LinkName("QWidget_Locale")]
	public static extern QLocale QWidget_Locale(Self* c_this);
	[LinkName("QWidget_UnsetLocale")]
	public static extern void QWidget_UnsetLocale(Self* c_this);
	[LinkName("QWidget_IsRightToLeft")]
	public static extern bool QWidget_IsRightToLeft(Self* c_this);
	[LinkName("QWidget_IsLeftToRight")]
	public static extern bool QWidget_IsLeftToRight(Self* c_this);
	[LinkName("QWidget_SetFocus")]
	public static extern void QWidget_SetFocus(Self* c_this);
	[LinkName("QWidget_IsActiveWindow")]
	public static extern bool QWidget_IsActiveWindow(Self* c_this);
	[LinkName("QWidget_ActivateWindow")]
	public static extern void QWidget_ActivateWindow(Self* c_this);
	[LinkName("QWidget_ClearFocus")]
	public static extern void QWidget_ClearFocus(Self* c_this);
	[LinkName("QWidget_SetFocusWithReason")]
	public static extern void QWidget_SetFocusWithReason(Self* c_this, int64 reason);
	[LinkName("QWidget_FocusPolicy")]
	public static extern int64 QWidget_FocusPolicy(Self* c_this);
	[LinkName("QWidget_SetFocusPolicy")]
	public static extern void QWidget_SetFocusPolicy(Self* c_this, int64 policy);
	[LinkName("QWidget_HasFocus")]
	public static extern bool QWidget_HasFocus(Self* c_this);
	[LinkName("QWidget_SetTabOrder")]
	public static extern void QWidget_SetTabOrder(QWidget* param1, QWidget* param2);
	[LinkName("QWidget_SetFocusProxy")]
	public static extern void QWidget_SetFocusProxy(Self* c_this, QWidget* focusProxy);
	[LinkName("QWidget_FocusProxy")]
	public static extern QWidget* QWidget_FocusProxy(Self* c_this);
	[LinkName("QWidget_ContextMenuPolicy")]
	public static extern int64 QWidget_ContextMenuPolicy(Self* c_this);
	[LinkName("QWidget_SetContextMenuPolicy")]
	public static extern void QWidget_SetContextMenuPolicy(Self* c_this, int64 policy);
	[LinkName("QWidget_GrabMouse")]
	public static extern void QWidget_GrabMouse(Self* c_this);
	[LinkName("QWidget_GrabMouseWithQCursor")]
	public static extern void QWidget_GrabMouseWithQCursor(Self* c_this, QCursor* param1);
	[LinkName("QWidget_ReleaseMouse")]
	public static extern void QWidget_ReleaseMouse(Self* c_this);
	[LinkName("QWidget_GrabKeyboard")]
	public static extern void QWidget_GrabKeyboard(Self* c_this);
	[LinkName("QWidget_ReleaseKeyboard")]
	public static extern void QWidget_ReleaseKeyboard(Self* c_this);
	[LinkName("QWidget_GrabShortcut")]
	public static extern int32 QWidget_GrabShortcut(Self* c_this, QKeySequence* key);
	[LinkName("QWidget_ReleaseShortcut")]
	public static extern void QWidget_ReleaseShortcut(Self* c_this, int32 id);
	[LinkName("QWidget_SetShortcutEnabled")]
	public static extern void QWidget_SetShortcutEnabled(Self* c_this, int32 id);
	[LinkName("QWidget_SetShortcutAutoRepeat")]
	public static extern void QWidget_SetShortcutAutoRepeat(Self* c_this, int32 id);
	[LinkName("QWidget_MouseGrabber")]
	public static extern QWidget* QWidget_MouseGrabber();
	[LinkName("QWidget_KeyboardGrabber")]
	public static extern QWidget* QWidget_KeyboardGrabber();
	[LinkName("QWidget_UpdatesEnabled")]
	public static extern bool QWidget_UpdatesEnabled(Self* c_this);
	[LinkName("QWidget_SetUpdatesEnabled")]
	public static extern void QWidget_SetUpdatesEnabled(Self* c_this, bool enable);
	[LinkName("QWidget_GraphicsProxyWidget")]
	public static extern QGraphicsProxyWidget* QWidget_GraphicsProxyWidget(Self* c_this);
	[LinkName("QWidget_Update")]
	public static extern void QWidget_Update(Self* c_this);
	[LinkName("QWidget_Repaint")]
	public static extern void QWidget_Repaint(Self* c_this);
	[LinkName("QWidget_Update2")]
	public static extern void QWidget_Update2(Self* c_this, int32 x, int32 y, int32 w, int32 h);
	[LinkName("QWidget_UpdateWithQRect")]
	public static extern void QWidget_UpdateWithQRect(Self* c_this, QRect* param1);
	[LinkName("QWidget_UpdateWithQRegion")]
	public static extern void QWidget_UpdateWithQRegion(Self* c_this, QRegion* param1);
	[LinkName("QWidget_Repaint2")]
	public static extern void QWidget_Repaint2(Self* c_this, int32 x, int32 y, int32 w, int32 h);
	[LinkName("QWidget_RepaintWithQRect")]
	public static extern void QWidget_RepaintWithQRect(Self* c_this, QRect* param1);
	[LinkName("QWidget_RepaintWithQRegion")]
	public static extern void QWidget_RepaintWithQRegion(Self* c_this, QRegion* param1);
	[LinkName("QWidget_SetVisible")]
	public static extern void QWidget_SetVisible(Self* c_this, bool visible);
	[LinkName("QWidget_SetHidden")]
	public static extern void QWidget_SetHidden(Self* c_this, bool hidden);
	[LinkName("QWidget_Show")]
	public static extern void QWidget_Show(Self* c_this);
	[LinkName("QWidget_Hide")]
	public static extern void QWidget_Hide(Self* c_this);
	[LinkName("QWidget_ShowMinimized")]
	public static extern void QWidget_ShowMinimized(Self* c_this);
	[LinkName("QWidget_ShowMaximized")]
	public static extern void QWidget_ShowMaximized(Self* c_this);
	[LinkName("QWidget_ShowFullScreen")]
	public static extern void QWidget_ShowFullScreen(Self* c_this);
	[LinkName("QWidget_ShowNormal")]
	public static extern void QWidget_ShowNormal(Self* c_this);
	[LinkName("QWidget_Close")]
	public static extern bool QWidget_Close(Self* c_this);
	[LinkName("QWidget_Raise")]
	public static extern void QWidget_Raise(Self* c_this);
	[LinkName("QWidget_Lower")]
	public static extern void QWidget_Lower(Self* c_this);
	[LinkName("QWidget_StackUnder")]
	public static extern void QWidget_StackUnder(Self* c_this, QWidget* param1);
	[LinkName("QWidget_Move")]
	public static extern void QWidget_Move(Self* c_this, int32 x, int32 y);
	[LinkName("QWidget_MoveWithQPoint")]
	public static extern void QWidget_MoveWithQPoint(Self* c_this, QPoint* param1);
	[LinkName("QWidget_Resize")]
	public static extern void QWidget_Resize(Self* c_this, int32 w, int32 h);
	[LinkName("QWidget_ResizeWithQSize")]
	public static extern void QWidget_ResizeWithQSize(Self* c_this, QSize* param1);
	[LinkName("QWidget_SetGeometry")]
	public static extern void QWidget_SetGeometry(Self* c_this, int32 x, int32 y, int32 w, int32 h);
	[LinkName("QWidget_SetGeometryWithGeometry")]
	public static extern void QWidget_SetGeometryWithGeometry(Self* c_this, QRect* geometry);
	[LinkName("QWidget_SaveGeometry")]
	public static extern libqt_string QWidget_SaveGeometry(Self* c_this);
	[LinkName("QWidget_RestoreGeometry")]
	public static extern bool QWidget_RestoreGeometry(Self* c_this, libqt_string geometry);
	[LinkName("QWidget_AdjustSize")]
	public static extern void QWidget_AdjustSize(Self* c_this);
	[LinkName("QWidget_IsVisible")]
	public static extern bool QWidget_IsVisible(Self* c_this);
	[LinkName("QWidget_IsVisibleTo")]
	public static extern bool QWidget_IsVisibleTo(Self* c_this, QWidget* param1);
	[LinkName("QWidget_IsHidden")]
	public static extern bool QWidget_IsHidden(Self* c_this);
	[LinkName("QWidget_IsMinimized")]
	public static extern bool QWidget_IsMinimized(Self* c_this);
	[LinkName("QWidget_IsMaximized")]
	public static extern bool QWidget_IsMaximized(Self* c_this);
	[LinkName("QWidget_IsFullScreen")]
	public static extern bool QWidget_IsFullScreen(Self* c_this);
	[LinkName("QWidget_WindowState")]
	public static extern int64 QWidget_WindowState(Self* c_this);
	[LinkName("QWidget_SetWindowState")]
	public static extern void QWidget_SetWindowState(Self* c_this, int64 state);
	[LinkName("QWidget_OverrideWindowState")]
	public static extern void QWidget_OverrideWindowState(Self* c_this, int64 state);
	[LinkName("QWidget_SizeHint")]
	public static extern QSize QWidget_SizeHint(Self* c_this);
	[LinkName("QWidget_MinimumSizeHint")]
	public static extern QSize QWidget_MinimumSizeHint(Self* c_this);
	[LinkName("QWidget_SizePolicy")]
	public static extern QSizePolicy QWidget_SizePolicy(Self* c_this);
	[LinkName("QWidget_SetSizePolicy")]
	public static extern void QWidget_SetSizePolicy(Self* c_this, QSizePolicy sizePolicy);
	[LinkName("QWidget_SetSizePolicy2")]
	public static extern void QWidget_SetSizePolicy2(Self* c_this, int64 horizontal, int64 vertical);
	[LinkName("QWidget_HeightForWidth")]
	public static extern int32 QWidget_HeightForWidth(Self* c_this, int32 param1);
	[LinkName("QWidget_HasHeightForWidth")]
	public static extern bool QWidget_HasHeightForWidth(Self* c_this);
	[LinkName("QWidget_VisibleRegion")]
	public static extern QRegion QWidget_VisibleRegion(Self* c_this);
	[LinkName("QWidget_SetContentsMargins")]
	public static extern void QWidget_SetContentsMargins(Self* c_this, int32 left, int32 top, int32 right, int32 bottom);
	[LinkName("QWidget_SetContentsMarginsWithMargins")]
	public static extern void QWidget_SetContentsMarginsWithMargins(Self* c_this, QMargins* margins);
	[LinkName("QWidget_ContentsMargins")]
	public static extern QMargins QWidget_ContentsMargins(Self* c_this);
	[LinkName("QWidget_ContentsRect")]
	public static extern QRect QWidget_ContentsRect(Self* c_this);
	[LinkName("QWidget_Layout")]
	public static extern QLayout* QWidget_Layout(Self* c_this);
	[LinkName("QWidget_SetLayout")]
	public static extern void QWidget_SetLayout(Self* c_this, QLayout* layout);
	[LinkName("QWidget_UpdateGeometry")]
	public static extern void QWidget_UpdateGeometry(Self* c_this);
	[LinkName("QWidget_SetParent")]
	public static extern void QWidget_SetParent(Self* c_this, QWidget* parent);
	[LinkName("QWidget_SetParent2")]
	public static extern void QWidget_SetParent2(Self* c_this, QWidget* parent, int64 f);
	[LinkName("QWidget_Scroll")]
	public static extern void QWidget_Scroll(Self* c_this, int32 dx, int32 dy);
	[LinkName("QWidget_Scroll2")]
	public static extern void QWidget_Scroll2(Self* c_this, int32 dx, int32 dy, QRect* param3);
	[LinkName("QWidget_FocusWidget")]
	public static extern QWidget* QWidget_FocusWidget(Self* c_this);
	[LinkName("QWidget_NextInFocusChain")]
	public static extern QWidget* QWidget_NextInFocusChain(Self* c_this);
	[LinkName("QWidget_PreviousInFocusChain")]
	public static extern QWidget* QWidget_PreviousInFocusChain(Self* c_this);
	[LinkName("QWidget_AcceptDrops")]
	public static extern bool QWidget_AcceptDrops(Self* c_this);
	[LinkName("QWidget_SetAcceptDrops")]
	public static extern void QWidget_SetAcceptDrops(Self* c_this, bool on);
	[LinkName("QWidget_AddAction")]
	public static extern void QWidget_AddAction(Self* c_this, QAction* action);
	[LinkName("QWidget_AddActions")]
	public static extern void QWidget_AddActions(Self* c_this, QAction*[] actions);
	[LinkName("QWidget_InsertActions")]
	public static extern void QWidget_InsertActions(Self* c_this, QAction* before, QAction*[] actions);
	[LinkName("QWidget_InsertAction")]
	public static extern void QWidget_InsertAction(Self* c_this, QAction* before, QAction* action);
	[LinkName("QWidget_RemoveAction")]
	public static extern void QWidget_RemoveAction(Self* c_this, QAction* action);
	[LinkName("QWidget_Actions")]
	public static extern QAction*[] QWidget_Actions(Self* c_this);
	[LinkName("QWidget_AddActionWithText")]
	public static extern QAction* QWidget_AddActionWithText(Self* c_this, libqt_string text);
	[LinkName("QWidget_AddAction2")]
	public static extern QAction* QWidget_AddAction2(Self* c_this, QIcon* icon, libqt_string text);
	[LinkName("QWidget_AddAction3")]
	public static extern QAction* QWidget_AddAction3(Self* c_this, libqt_string text, QKeySequence* shortcut);
	[LinkName("QWidget_AddAction4")]
	public static extern QAction* QWidget_AddAction4(Self* c_this, QIcon* icon, libqt_string text, QKeySequence* shortcut);
	[LinkName("QWidget_ParentWidget")]
	public static extern QWidget* QWidget_ParentWidget(Self* c_this);
	[LinkName("QWidget_SetWindowFlags")]
	public static extern void QWidget_SetWindowFlags(Self* c_this, int64 typeVal);
	[LinkName("QWidget_WindowFlags")]
	public static extern int64 QWidget_WindowFlags(Self* c_this);
	[LinkName("QWidget_SetWindowFlag")]
	public static extern void QWidget_SetWindowFlag(Self* c_this, int64 param1);
	[LinkName("QWidget_OverrideWindowFlags")]
	public static extern void QWidget_OverrideWindowFlags(Self* c_this, int64 typeVal);
	[LinkName("QWidget_WindowType")]
	public static extern int64 QWidget_WindowType(Self* c_this);
	[LinkName("QWidget_Find")]
	public static extern QWidget* QWidget_Find(uint64 param1);
	[LinkName("QWidget_ChildAt")]
	public static extern QWidget* QWidget_ChildAt(Self* c_this, int32 x, int32 y);
	[LinkName("QWidget_ChildAtWithQPoint")]
	public static extern QWidget* QWidget_ChildAtWithQPoint(Self* c_this, QPoint* p);
	[LinkName("QWidget_SetAttribute")]
	public static extern void QWidget_SetAttribute(Self* c_this, int64 param1);
	[LinkName("QWidget_TestAttribute")]
	public static extern bool QWidget_TestAttribute(Self* c_this, int64 param1);
	[LinkName("QWidget_PaintEngine")]
	public static extern QPaintEngine* QWidget_PaintEngine(Self* c_this);
	[LinkName("QWidget_EnsurePolished")]
	public static extern void QWidget_EnsurePolished(Self* c_this);
	[LinkName("QWidget_IsAncestorOf")]
	public static extern bool QWidget_IsAncestorOf(Self* c_this, QWidget* child);
	[LinkName("QWidget_AutoFillBackground")]
	public static extern bool QWidget_AutoFillBackground(Self* c_this);
	[LinkName("QWidget_SetAutoFillBackground")]
	public static extern void QWidget_SetAutoFillBackground(Self* c_this, bool enabled);
	[LinkName("QWidget_BackingStore")]
	public static extern QBackingStore* QWidget_BackingStore(Self* c_this);
	[LinkName("QWidget_WindowHandle")]
	public static extern QWindow* QWidget_WindowHandle(Self* c_this);
	[LinkName("QWidget_Screen")]
	public static extern QScreen* QWidget_Screen(Self* c_this);
	[LinkName("QWidget_SetScreen")]
	public static extern void QWidget_SetScreen(Self* c_this, QScreen* screen);
	[LinkName("QWidget_CreateWindowContainer")]
	public static extern QWidget* QWidget_CreateWindowContainer(QWindow* window);
	[LinkName("QWidget_WindowTitleChanged")]
	public static extern void QWidget_WindowTitleChanged(Self* c_this, libqt_string title);
	[LinkName("QWidget_WindowIconChanged")]
	public static extern void QWidget_WindowIconChanged(Self* c_this, QIcon* icon);
	[LinkName("QWidget_WindowIconTextChanged")]
	public static extern void QWidget_WindowIconTextChanged(Self* c_this, libqt_string iconText);
	[LinkName("QWidget_CustomContextMenuRequested")]
	public static extern void QWidget_CustomContextMenuRequested(Self* c_this, QPoint* pos);
	[LinkName("QWidget_Event")]
	public static extern bool QWidget_Event(Self* c_this, QEvent* event);
	[LinkName("QWidget_MousePressEvent")]
	public static extern void QWidget_MousePressEvent(Self* c_this, QMouseEvent* event);
	[LinkName("QWidget_MouseReleaseEvent")]
	public static extern void QWidget_MouseReleaseEvent(Self* c_this, QMouseEvent* event);
	[LinkName("QWidget_MouseDoubleClickEvent")]
	public static extern void QWidget_MouseDoubleClickEvent(Self* c_this, QMouseEvent* event);
	[LinkName("QWidget_MouseMoveEvent")]
	public static extern void QWidget_MouseMoveEvent(Self* c_this, QMouseEvent* event);
	[LinkName("QWidget_WheelEvent")]
	public static extern void QWidget_WheelEvent(Self* c_this, QWheelEvent* event);
	[LinkName("QWidget_KeyPressEvent")]
	public static extern void QWidget_KeyPressEvent(Self* c_this, QKeyEvent* event);
	[LinkName("QWidget_KeyReleaseEvent")]
	public static extern void QWidget_KeyReleaseEvent(Self* c_this, QKeyEvent* event);
	[LinkName("QWidget_FocusInEvent")]
	public static extern void QWidget_FocusInEvent(Self* c_this, QFocusEvent* event);
	[LinkName("QWidget_FocusOutEvent")]
	public static extern void QWidget_FocusOutEvent(Self* c_this, QFocusEvent* event);
	[LinkName("QWidget_EnterEvent")]
	public static extern void QWidget_EnterEvent(Self* c_this, QEnterEvent* event);
	[LinkName("QWidget_LeaveEvent")]
	public static extern void QWidget_LeaveEvent(Self* c_this, QEvent* event);
	[LinkName("QWidget_PaintEvent")]
	public static extern void QWidget_PaintEvent(Self* c_this, QPaintEvent* event);
	[LinkName("QWidget_MoveEvent")]
	public static extern void QWidget_MoveEvent(Self* c_this, QMoveEvent* event);
	[LinkName("QWidget_ResizeEvent")]
	public static extern void QWidget_ResizeEvent(Self* c_this, QResizeEvent* event);
	[LinkName("QWidget_CloseEvent")]
	public static extern void QWidget_CloseEvent(Self* c_this, QCloseEvent* event);
	[LinkName("QWidget_ContextMenuEvent")]
	public static extern void QWidget_ContextMenuEvent(Self* c_this, QContextMenuEvent* event);
	[LinkName("QWidget_TabletEvent")]
	public static extern void QWidget_TabletEvent(Self* c_this, QTabletEvent* event);
	[LinkName("QWidget_ActionEvent")]
	public static extern void QWidget_ActionEvent(Self* c_this, QActionEvent* event);
	[LinkName("QWidget_DragEnterEvent")]
	public static extern void QWidget_DragEnterEvent(Self* c_this, QDragEnterEvent* event);
	[LinkName("QWidget_DragMoveEvent")]
	public static extern void QWidget_DragMoveEvent(Self* c_this, QDragMoveEvent* event);
	[LinkName("QWidget_DragLeaveEvent")]
	public static extern void QWidget_DragLeaveEvent(Self* c_this, QDragLeaveEvent* event);
	[LinkName("QWidget_DropEvent")]
	public static extern void QWidget_DropEvent(Self* c_this, QDropEvent* event);
	[LinkName("QWidget_ShowEvent")]
	public static extern void QWidget_ShowEvent(Self* c_this, QShowEvent* event);
	[LinkName("QWidget_HideEvent")]
	public static extern void QWidget_HideEvent(Self* c_this, QHideEvent* event);
	[LinkName("QWidget_NativeEvent")]
	public static extern bool QWidget_NativeEvent(Self* c_this, libqt_string eventType, void* message, c_uintptr* result);
	[LinkName("QWidget_ChangeEvent")]
	public static extern void QWidget_ChangeEvent(Self* c_this, QEvent* param1);
	[LinkName("QWidget_Metric")]
	public static extern int32 QWidget_Metric(Self* c_this, int64 param1);
	[LinkName("QWidget_InitPainter")]
	public static extern void QWidget_InitPainter(Self* c_this, QPainter* painter);
	[LinkName("QWidget_Redirected")]
	public static extern QPaintDevice* QWidget_Redirected(Self* c_this, QPoint* offset);
	[LinkName("QWidget_SharedPainter")]
	public static extern QPainter* QWidget_SharedPainter(Self* c_this);
	[LinkName("QWidget_InputMethodEvent")]
	public static extern void QWidget_InputMethodEvent(Self* c_this, QInputMethodEvent* param1);
	[LinkName("QWidget_InputMethodQuery")]
	public static extern QVariant QWidget_InputMethodQuery(Self* c_this, int64 param1);
	[LinkName("QWidget_InputMethodHints")]
	public static extern int64 QWidget_InputMethodHints(Self* c_this);
	[LinkName("QWidget_SetInputMethodHints")]
	public static extern void QWidget_SetInputMethodHints(Self* c_this, int64 hints);
	[LinkName("QWidget_UpdateMicroFocus")]
	public static extern void QWidget_UpdateMicroFocus(Self* c_this);
	[LinkName("QWidget_Create")]
	public static extern void QWidget_Create(Self* c_this);
	[LinkName("QWidget_Destroy")]
	public static extern void QWidget_Destroy(Self* c_this);
	[LinkName("QWidget_FocusNextPrevChild")]
	public static extern bool QWidget_FocusNextPrevChild(Self* c_this, bool next);
	[LinkName("QWidget_FocusNextChild")]
	public static extern bool QWidget_FocusNextChild(Self* c_this);
	[LinkName("QWidget_FocusPreviousChild")]
	public static extern bool QWidget_FocusPreviousChild(Self* c_this);
	[LinkName("QWidget_Tr2")]
	public static extern libqt_string QWidget_Tr2(char8[] s, char8[] c);
	[LinkName("QWidget_Tr3")]
	public static extern libqt_string QWidget_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QWidget_Render2")]
	public static extern void QWidget_Render2(Self* c_this, QPaintDevice* target, QPoint* targetOffset);
	[LinkName("QWidget_Render3")]
	public static extern void QWidget_Render3(Self* c_this, QPaintDevice* target, QPoint* targetOffset, QRegion* sourceRegion);
	[LinkName("QWidget_Render4")]
	public static extern void QWidget_Render4(Self* c_this, QPaintDevice* target, QPoint* targetOffset, QRegion* sourceRegion, int64 renderFlags);
	[LinkName("QWidget_Render22")]
	public static extern void QWidget_Render22(Self* c_this, QPainter* painter, QPoint* targetOffset);
	[LinkName("QWidget_Render32")]
	public static extern void QWidget_Render32(Self* c_this, QPainter* painter, QPoint* targetOffset, QRegion* sourceRegion);
	[LinkName("QWidget_Render42")]
	public static extern void QWidget_Render42(Self* c_this, QPainter* painter, QPoint* targetOffset, QRegion* sourceRegion, int64 renderFlags);
	[LinkName("QWidget_Grab1")]
	public static extern QPixmap QWidget_Grab1(Self* c_this, QRect* rectangle);
	[LinkName("QWidget_GrabGesture2")]
	public static extern void QWidget_GrabGesture2(Self* c_this, int64 typeVal, int64 flags);
	[LinkName("QWidget_GrabShortcut2")]
	public static extern int32 QWidget_GrabShortcut2(Self* c_this, QKeySequence* key, int64 context);
	[LinkName("QWidget_SetShortcutEnabled2")]
	public static extern void QWidget_SetShortcutEnabled2(Self* c_this, int32 id, bool enable);
	[LinkName("QWidget_SetShortcutAutoRepeat2")]
	public static extern void QWidget_SetShortcutAutoRepeat2(Self* c_this, int32 id, bool enable);
	[LinkName("QWidget_SetWindowFlag2")]
	public static extern void QWidget_SetWindowFlag2(Self* c_this, int64 param1, bool on);
	[LinkName("QWidget_SetAttribute2")]
	public static extern void QWidget_SetAttribute2(Self* c_this, int64 param1, bool on);
	[LinkName("QWidget_CreateWindowContainer2")]
	public static extern QWidget* QWidget_CreateWindowContainer2(QWindow* window, QWidget* parent);
	[LinkName("QWidget_CreateWindowContainer3")]
	public static extern QWidget* QWidget_CreateWindowContainer3(QWindow* window, QWidget* parent, int64 flags);
	[LinkName("QWidget_UpdateMicroFocus1")]
	public static extern void QWidget_UpdateMicroFocus1(Self* c_this, int64 query);
	[LinkName("QWidget_Create1")]
	public static extern void QWidget_Create1(Self* c_this, uint64 param1);
	[LinkName("QWidget_Create2")]
	public static extern void QWidget_Create2(Self* c_this, uint64 param1, bool initializeWindow);
	[LinkName("QWidget_Create3")]
	public static extern void QWidget_Create3(Self* c_this, uint64 param1, bool initializeWindow, bool destroyOldWindow);
	[LinkName("QWidget_Destroy1")]
	public static extern void QWidget_Destroy1(Self* c_this, bool destroyWindow);
	[LinkName("QWidget_Destroy2")]
	public static extern void QWidget_Destroy2(Self* c_this, bool destroyWindow, bool destroySubWindows);
}