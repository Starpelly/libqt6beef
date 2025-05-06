using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QWindow__Visibility
{
	Hidden = 0,
	AutomaticVisibility = 1,
	Windowed = 2,
	Minimized = 3,
	Maximized = 4,
	FullScreen = 5,
}
[AllowDuplicates]
public enum QWindow__AncestorMode
{
	ExcludeTransients = 0,
	IncludeTransients = 1,
}
public struct QWindow
{
	[LinkName("QWindow_new")]
	public static extern void* QWindow_new();
	[LinkName("QWindow_new2")]
	public static extern void* QWindow_new2(QWindow parent);
	[LinkName("QWindow_new3")]
	public static extern void* QWindow_new3(QScreen screen);
	[LinkName("QWindow_MetaObject")]
	public static extern QMetaObject QWindow_MetaObject(void* c_this);
	[LinkName("QWindow_Metacast")]
	public static extern void QWindow_Metacast(void* c_this, char8[] param1);
	[LinkName("QWindow_Metacall")]
	public static extern int32 QWindow_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QWindow_Tr")]
	public static extern char8[] QWindow_Tr(char8[] s);
	[LinkName("QWindow_SetSurfaceType")]
	public static extern void QWindow_SetSurfaceType(void* c_this, int64 surfaceType);
	[LinkName("QWindow_SurfaceType")]
	public static extern int64 QWindow_SurfaceType(void* c_this);
	[LinkName("QWindow_IsVisible")]
	public static extern bool QWindow_IsVisible(void* c_this);
	[LinkName("QWindow_Visibility")]
	public static extern int64 QWindow_Visibility(void* c_this);
	[LinkName("QWindow_SetVisibility")]
	public static extern void QWindow_SetVisibility(void* c_this, int64 v);
	[LinkName("QWindow_Create")]
	public static extern void QWindow_Create(void* c_this);
	[LinkName("QWindow_WinId")]
	public static extern c_uintptr QWindow_WinId(void* c_this);
	[LinkName("QWindow_Parent")]
	public static extern QWindow QWindow_Parent(void* c_this);
	[LinkName("QWindow_SetParent")]
	public static extern void QWindow_SetParent(void* c_this, QWindow parent);
	[LinkName("QWindow_IsTopLevel")]
	public static extern bool QWindow_IsTopLevel(void* c_this);
	[LinkName("QWindow_IsModal")]
	public static extern bool QWindow_IsModal(void* c_this);
	[LinkName("QWindow_Modality")]
	public static extern int64 QWindow_Modality(void* c_this);
	[LinkName("QWindow_SetModality")]
	public static extern void QWindow_SetModality(void* c_this, int64 modality);
	[LinkName("QWindow_SetFormat")]
	public static extern void QWindow_SetFormat(void* c_this, QSurfaceFormat format);
	[LinkName("QWindow_Format")]
	public static extern QSurfaceFormat QWindow_Format(void* c_this);
	[LinkName("QWindow_RequestedFormat")]
	public static extern QSurfaceFormat QWindow_RequestedFormat(void* c_this);
	[LinkName("QWindow_SetFlags")]
	public static extern void QWindow_SetFlags(void* c_this, int64 flags);
	[LinkName("QWindow_Flags")]
	public static extern int64 QWindow_Flags(void* c_this);
	[LinkName("QWindow_SetFlag")]
	public static extern void QWindow_SetFlag(void* c_this, int64 param1);
	[LinkName("QWindow_Type")]
	public static extern int64 QWindow_Type(void* c_this);
	[LinkName("QWindow_Title")]
	public static extern char8[] QWindow_Title(void* c_this);
	[LinkName("QWindow_SetOpacity")]
	public static extern void QWindow_SetOpacity(void* c_this, double level);
	[LinkName("QWindow_Opacity")]
	public static extern double QWindow_Opacity(void* c_this);
	[LinkName("QWindow_SetMask")]
	public static extern void QWindow_SetMask(void* c_this, QRegion region);
	[LinkName("QWindow_Mask")]
	public static extern QRegion QWindow_Mask(void* c_this);
	[LinkName("QWindow_IsActive")]
	public static extern bool QWindow_IsActive(void* c_this);
	[LinkName("QWindow_ReportContentOrientationChange")]
	public static extern void QWindow_ReportContentOrientationChange(void* c_this, int64 orientation);
	[LinkName("QWindow_ContentOrientation")]
	public static extern int64 QWindow_ContentOrientation(void* c_this);
	[LinkName("QWindow_DevicePixelRatio")]
	public static extern double QWindow_DevicePixelRatio(void* c_this);
	[LinkName("QWindow_WindowState")]
	public static extern int64 QWindow_WindowState(void* c_this);
	[LinkName("QWindow_WindowStates")]
	public static extern int64 QWindow_WindowStates(void* c_this);
	[LinkName("QWindow_SetWindowState")]
	public static extern void QWindow_SetWindowState(void* c_this, int64 state);
	[LinkName("QWindow_SetWindowStates")]
	public static extern void QWindow_SetWindowStates(void* c_this, int64 states);
	[LinkName("QWindow_SetTransientParent")]
	public static extern void QWindow_SetTransientParent(void* c_this, QWindow parent);
	[LinkName("QWindow_TransientParent")]
	public static extern QWindow QWindow_TransientParent(void* c_this);
	[LinkName("QWindow_IsAncestorOf")]
	public static extern bool QWindow_IsAncestorOf(void* c_this, QWindow child);
	[LinkName("QWindow_IsExposed")]
	public static extern bool QWindow_IsExposed(void* c_this);
	[LinkName("QWindow_MinimumWidth")]
	public static extern int32 QWindow_MinimumWidth(void* c_this);
	[LinkName("QWindow_MinimumHeight")]
	public static extern int32 QWindow_MinimumHeight(void* c_this);
	[LinkName("QWindow_MaximumWidth")]
	public static extern int32 QWindow_MaximumWidth(void* c_this);
	[LinkName("QWindow_MaximumHeight")]
	public static extern int32 QWindow_MaximumHeight(void* c_this);
	[LinkName("QWindow_MinimumSize")]
	public static extern QSize QWindow_MinimumSize(void* c_this);
	[LinkName("QWindow_MaximumSize")]
	public static extern QSize QWindow_MaximumSize(void* c_this);
	[LinkName("QWindow_BaseSize")]
	public static extern QSize QWindow_BaseSize(void* c_this);
	[LinkName("QWindow_SizeIncrement")]
	public static extern QSize QWindow_SizeIncrement(void* c_this);
	[LinkName("QWindow_SetMinimumSize")]
	public static extern void QWindow_SetMinimumSize(void* c_this, QSize size);
	[LinkName("QWindow_SetMaximumSize")]
	public static extern void QWindow_SetMaximumSize(void* c_this, QSize size);
	[LinkName("QWindow_SetBaseSize")]
	public static extern void QWindow_SetBaseSize(void* c_this, QSize size);
	[LinkName("QWindow_SetSizeIncrement")]
	public static extern void QWindow_SetSizeIncrement(void* c_this, QSize size);
	[LinkName("QWindow_Geometry")]
	public static extern QRect QWindow_Geometry(void* c_this);
	[LinkName("QWindow_FrameMargins")]
	public static extern QMargins QWindow_FrameMargins(void* c_this);
	[LinkName("QWindow_FrameGeometry")]
	public static extern QRect QWindow_FrameGeometry(void* c_this);
	[LinkName("QWindow_FramePosition")]
	public static extern QPoint QWindow_FramePosition(void* c_this);
	[LinkName("QWindow_SetFramePosition")]
	public static extern void QWindow_SetFramePosition(void* c_this, QPoint point);
	[LinkName("QWindow_Width")]
	public static extern int32 QWindow_Width(void* c_this);
	[LinkName("QWindow_Height")]
	public static extern int32 QWindow_Height(void* c_this);
	[LinkName("QWindow_X")]
	public static extern int32 QWindow_X(void* c_this);
	[LinkName("QWindow_Y")]
	public static extern int32 QWindow_Y(void* c_this);
	[LinkName("QWindow_Size")]
	public static extern QSize QWindow_Size(void* c_this);
	[LinkName("QWindow_Position")]
	public static extern QPoint QWindow_Position(void* c_this);
	[LinkName("QWindow_SetPosition")]
	public static extern void QWindow_SetPosition(void* c_this, QPoint pt);
	[LinkName("QWindow_SetPosition2")]
	public static extern void QWindow_SetPosition2(void* c_this, int32 posx, int32 posy);
	[LinkName("QWindow_Resize")]
	public static extern void QWindow_Resize(void* c_this, QSize newSize);
	[LinkName("QWindow_Resize2")]
	public static extern void QWindow_Resize2(void* c_this, int32 w, int32 h);
	[LinkName("QWindow_SetFilePath")]
	public static extern void QWindow_SetFilePath(void* c_this, char8[] filePath);
	[LinkName("QWindow_FilePath")]
	public static extern char8[] QWindow_FilePath(void* c_this);
	[LinkName("QWindow_SetIcon")]
	public static extern void QWindow_SetIcon(void* c_this, QIcon icon);
	[LinkName("QWindow_Icon")]
	public static extern QIcon QWindow_Icon(void* c_this);
	[LinkName("QWindow_Destroy")]
	public static extern void QWindow_Destroy(void* c_this);
	[LinkName("QWindow_SetKeyboardGrabEnabled")]
	public static extern bool QWindow_SetKeyboardGrabEnabled(void* c_this, bool grab);
	[LinkName("QWindow_SetMouseGrabEnabled")]
	public static extern bool QWindow_SetMouseGrabEnabled(void* c_this, bool grab);
	[LinkName("QWindow_Screen")]
	public static extern QScreen QWindow_Screen(void* c_this);
	[LinkName("QWindow_SetScreen")]
	public static extern void QWindow_SetScreen(void* c_this, QScreen screen);
	[LinkName("QWindow_AccessibleRoot")]
	public static extern QAccessibleInterface QWindow_AccessibleRoot(void* c_this);
	[LinkName("QWindow_FocusObject")]
	public static extern QObject QWindow_FocusObject(void* c_this);
	[LinkName("QWindow_MapToGlobal")]
	public static extern QPointF QWindow_MapToGlobal(void* c_this, QPointF pos);
	[LinkName("QWindow_MapFromGlobal")]
	public static extern QPointF QWindow_MapFromGlobal(void* c_this, QPointF pos);
	[LinkName("QWindow_MapToGlobalWithPos")]
	public static extern QPoint QWindow_MapToGlobalWithPos(void* c_this, QPoint pos);
	[LinkName("QWindow_MapFromGlobalWithPos")]
	public static extern QPoint QWindow_MapFromGlobalWithPos(void* c_this, QPoint pos);
	[LinkName("QWindow_Cursor")]
	public static extern QCursor QWindow_Cursor(void* c_this);
	[LinkName("QWindow_SetCursor")]
	public static extern void QWindow_SetCursor(void* c_this, QCursor cursor);
	[LinkName("QWindow_UnsetCursor")]
	public static extern void QWindow_UnsetCursor(void* c_this);
	[LinkName("QWindow_FromWinId")]
	public static extern QWindow QWindow_FromWinId(c_uintptr id);
	[LinkName("QWindow_ResolveInterface")]
	public static extern void QWindow_ResolveInterface(void* c_this, char8[] name, int32 revision);
	[LinkName("QWindow_RequestActivate")]
	public static extern void QWindow_RequestActivate(void* c_this);
	[LinkName("QWindow_SetVisible")]
	public static extern void QWindow_SetVisible(void* c_this, bool visible);
	[LinkName("QWindow_Show")]
	public static extern void QWindow_Show(void* c_this);
	[LinkName("QWindow_Hide")]
	public static extern void QWindow_Hide(void* c_this);
	[LinkName("QWindow_ShowMinimized")]
	public static extern void QWindow_ShowMinimized(void* c_this);
	[LinkName("QWindow_ShowMaximized")]
	public static extern void QWindow_ShowMaximized(void* c_this);
	[LinkName("QWindow_ShowFullScreen")]
	public static extern void QWindow_ShowFullScreen(void* c_this);
	[LinkName("QWindow_ShowNormal")]
	public static extern void QWindow_ShowNormal(void* c_this);
	[LinkName("QWindow_Close")]
	public static extern bool QWindow_Close(void* c_this);
	[LinkName("QWindow_Raise")]
	public static extern void QWindow_Raise(void* c_this);
	[LinkName("QWindow_Lower")]
	public static extern void QWindow_Lower(void* c_this);
	[LinkName("QWindow_StartSystemResize")]
	public static extern bool QWindow_StartSystemResize(void* c_this, int64 edges);
	[LinkName("QWindow_StartSystemMove")]
	public static extern bool QWindow_StartSystemMove(void* c_this);
	[LinkName("QWindow_SetTitle")]
	public static extern void QWindow_SetTitle(void* c_this, char8[] title);
	[LinkName("QWindow_SetX")]
	public static extern void QWindow_SetX(void* c_this, int32 arg);
	[LinkName("QWindow_SetY")]
	public static extern void QWindow_SetY(void* c_this, int32 arg);
	[LinkName("QWindow_SetWidth")]
	public static extern void QWindow_SetWidth(void* c_this, int32 arg);
	[LinkName("QWindow_SetHeight")]
	public static extern void QWindow_SetHeight(void* c_this, int32 arg);
	[LinkName("QWindow_SetGeometry")]
	public static extern void QWindow_SetGeometry(void* c_this, int32 posx, int32 posy, int32 w, int32 h);
	[LinkName("QWindow_SetGeometryWithRect")]
	public static extern void QWindow_SetGeometryWithRect(void* c_this, QRect rect);
	[LinkName("QWindow_SetMinimumWidth")]
	public static extern void QWindow_SetMinimumWidth(void* c_this, int32 w);
	[LinkName("QWindow_SetMinimumHeight")]
	public static extern void QWindow_SetMinimumHeight(void* c_this, int32 h);
	[LinkName("QWindow_SetMaximumWidth")]
	public static extern void QWindow_SetMaximumWidth(void* c_this, int32 w);
	[LinkName("QWindow_SetMaximumHeight")]
	public static extern void QWindow_SetMaximumHeight(void* c_this, int32 h);
	[LinkName("QWindow_Alert")]
	public static extern void QWindow_Alert(void* c_this, int32 msec);
	[LinkName("QWindow_RequestUpdate")]
	public static extern void QWindow_RequestUpdate(void* c_this);
	[LinkName("QWindow_ScreenChanged")]
	public static extern void QWindow_ScreenChanged(void* c_this, QScreen screen);
	[LinkName("QWindow_ModalityChanged")]
	public static extern void QWindow_ModalityChanged(void* c_this, int64 modality);
	[LinkName("QWindow_WindowStateChanged")]
	public static extern void QWindow_WindowStateChanged(void* c_this, int64 windowState);
	[LinkName("QWindow_WindowTitleChanged")]
	public static extern void QWindow_WindowTitleChanged(void* c_this, char8[] title);
	[LinkName("QWindow_XChanged")]
	public static extern void QWindow_XChanged(void* c_this, int32 arg);
	[LinkName("QWindow_YChanged")]
	public static extern void QWindow_YChanged(void* c_this, int32 arg);
	[LinkName("QWindow_WidthChanged")]
	public static extern void QWindow_WidthChanged(void* c_this, int32 arg);
	[LinkName("QWindow_HeightChanged")]
	public static extern void QWindow_HeightChanged(void* c_this, int32 arg);
	[LinkName("QWindow_MinimumWidthChanged")]
	public static extern void QWindow_MinimumWidthChanged(void* c_this, int32 arg);
	[LinkName("QWindow_MinimumHeightChanged")]
	public static extern void QWindow_MinimumHeightChanged(void* c_this, int32 arg);
	[LinkName("QWindow_MaximumWidthChanged")]
	public static extern void QWindow_MaximumWidthChanged(void* c_this, int32 arg);
	[LinkName("QWindow_MaximumHeightChanged")]
	public static extern void QWindow_MaximumHeightChanged(void* c_this, int32 arg);
	[LinkName("QWindow_VisibleChanged")]
	public static extern void QWindow_VisibleChanged(void* c_this, bool arg);
	[LinkName("QWindow_VisibilityChanged")]
	public static extern void QWindow_VisibilityChanged(void* c_this, int64 visibility);
	[LinkName("QWindow_ActiveChanged")]
	public static extern void QWindow_ActiveChanged(void* c_this);
	[LinkName("QWindow_ContentOrientationChanged")]
	public static extern void QWindow_ContentOrientationChanged(void* c_this, int64 orientation);
	[LinkName("QWindow_FocusObjectChanged")]
	public static extern void QWindow_FocusObjectChanged(void* c_this, QObject object);
	[LinkName("QWindow_OpacityChanged")]
	public static extern void QWindow_OpacityChanged(void* c_this, double opacity);
	[LinkName("QWindow_TransientParentChanged")]
	public static extern void QWindow_TransientParentChanged(void* c_this, QWindow transientParent);
	[LinkName("QWindow_ExposeEvent")]
	public static extern void QWindow_ExposeEvent(void* c_this, QExposeEvent param1);
	[LinkName("QWindow_ResizeEvent")]
	public static extern void QWindow_ResizeEvent(void* c_this, QResizeEvent param1);
	[LinkName("QWindow_PaintEvent")]
	public static extern void QWindow_PaintEvent(void* c_this, QPaintEvent param1);
	[LinkName("QWindow_MoveEvent")]
	public static extern void QWindow_MoveEvent(void* c_this, QMoveEvent param1);
	[LinkName("QWindow_FocusInEvent")]
	public static extern void QWindow_FocusInEvent(void* c_this, QFocusEvent param1);
	[LinkName("QWindow_FocusOutEvent")]
	public static extern void QWindow_FocusOutEvent(void* c_this, QFocusEvent param1);
	[LinkName("QWindow_ShowEvent")]
	public static extern void QWindow_ShowEvent(void* c_this, QShowEvent param1);
	[LinkName("QWindow_HideEvent")]
	public static extern void QWindow_HideEvent(void* c_this, QHideEvent param1);
	[LinkName("QWindow_CloseEvent")]
	public static extern void QWindow_CloseEvent(void* c_this, QCloseEvent param1);
	[LinkName("QWindow_Event")]
	public static extern bool QWindow_Event(void* c_this, QEvent param1);
	[LinkName("QWindow_KeyPressEvent")]
	public static extern void QWindow_KeyPressEvent(void* c_this, QKeyEvent param1);
	[LinkName("QWindow_KeyReleaseEvent")]
	public static extern void QWindow_KeyReleaseEvent(void* c_this, QKeyEvent param1);
	[LinkName("QWindow_MousePressEvent")]
	public static extern void QWindow_MousePressEvent(void* c_this, QMouseEvent param1);
	[LinkName("QWindow_MouseReleaseEvent")]
	public static extern void QWindow_MouseReleaseEvent(void* c_this, QMouseEvent param1);
	[LinkName("QWindow_MouseDoubleClickEvent")]
	public static extern void QWindow_MouseDoubleClickEvent(void* c_this, QMouseEvent param1);
	[LinkName("QWindow_MouseMoveEvent")]
	public static extern void QWindow_MouseMoveEvent(void* c_this, QMouseEvent param1);
	[LinkName("QWindow_WheelEvent")]
	public static extern void QWindow_WheelEvent(void* c_this, QWheelEvent param1);
	[LinkName("QWindow_TouchEvent")]
	public static extern void QWindow_TouchEvent(void* c_this, QTouchEvent param1);
	[LinkName("QWindow_TabletEvent")]
	public static extern void QWindow_TabletEvent(void* c_this, QTabletEvent param1);
	[LinkName("QWindow_NativeEvent")]
	public static extern bool QWindow_NativeEvent(void* c_this, uint8[] eventType, void message, c_uintptr result);
	[LinkName("QWindow_Tr2")]
	public static extern char8[] QWindow_Tr2(char8[] s, char8[] c);
	[LinkName("QWindow_Tr3")]
	public static extern char8[] QWindow_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QWindow_Parent1")]
	public static extern QWindow QWindow_Parent1(void* c_this, int64 mode);
	[LinkName("QWindow_SetFlag2")]
	public static extern void QWindow_SetFlag2(void* c_this, int64 param1, bool on);
	[LinkName("QWindow_IsAncestorOf2")]
	public static extern bool QWindow_IsAncestorOf2(void* c_this, QWindow child, int64 mode);
}