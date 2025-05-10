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
public interface IQWidgetData
{
	void* NativePtr { get; }
}
public class QWidgetData : IQWidgetData
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQWidgetData param1)
	{
		this.nativePtr = CQt.QWidgetData_new((param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public ~this()
	{
		CQt.QWidgetData_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQWidgetData param1)
	{
		CQt.QWidgetData_OperatorAssign(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QWidgetData_new")]
	public static extern void* QWidgetData_new(void* param1);
	[LinkName("QWidgetData_OperatorAssign")]
	public static extern void QWidgetData_OperatorAssign(void* c_this, void* param1);
	/// Delete this object from C++ memory
	[LinkName("QWidgetData_Delete")]
	public static extern void QWidgetData_Delete(void* self);
}
public interface IQWidget
{
	void* NativePtr { get; }
}
public class QWidget : IQWidget, IQObject, IQPaintDevice
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQWidget parent)
	{
		this.nativePtr = CQt.QWidget_new((parent == null) ? null : (void*)parent.NativePtr);
	}
	
	public ~this()
	{
		CQt.QWidget_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QWidget_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QWidget_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QWidget_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QWidget_Tr(s);
	}
	
	public virtual int32 DevType()
	{
		return CQt.QWidget_DevType(this.nativePtr);
	}
	
	public c_uintptr WinId()
	{
		return CQt.QWidget_WinId(this.nativePtr);
	}
	
	public void CreateWinId()
	{
		CQt.QWidget_CreateWinId(this.nativePtr);
	}
	
	public c_uintptr InternalWinId()
	{
		return CQt.QWidget_InternalWinId(this.nativePtr);
	}
	
	public c_uintptr EffectiveWinId()
	{
		return CQt.QWidget_EffectiveWinId(this.nativePtr);
	}
	
	public void* Style()
	{
		return CQt.QWidget_Style(this.nativePtr);
	}
	
	public void SetStyle(IQStyle style)
	{
		CQt.QWidget_SetStyle(this.nativePtr, (style == null) ? null : (void*)style.NativePtr);
	}
	
	public bool IsTopLevel()
	{
		return CQt.QWidget_IsTopLevel(this.nativePtr);
	}
	
	public bool IsWindow()
	{
		return CQt.QWidget_IsWindow(this.nativePtr);
	}
	
	public bool IsModal()
	{
		return CQt.QWidget_IsModal(this.nativePtr);
	}
	
	public int64 WindowModality()
	{
		return CQt.QWidget_WindowModality(this.nativePtr);
	}
	
	public void SetWindowModality(int64 windowModality)
	{
		CQt.QWidget_SetWindowModality(this.nativePtr, windowModality);
	}
	
	public bool IsEnabled()
	{
		return CQt.QWidget_IsEnabled(this.nativePtr);
	}
	
	public bool IsEnabledTo(IQWidget param1)
	{
		return CQt.QWidget_IsEnabledTo(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public void SetEnabled(bool enabled)
	{
		CQt.QWidget_SetEnabled(this.nativePtr, enabled);
	}
	
	public void SetDisabled(bool disabled)
	{
		CQt.QWidget_SetDisabled(this.nativePtr, disabled);
	}
	
	public void SetWindowModified(bool windowModified)
	{
		CQt.QWidget_SetWindowModified(this.nativePtr, windowModified);
	}
	
	public void FrameGeometry()
	{
		CQt.QWidget_FrameGeometry(this.nativePtr);
	}
	
	public void* Geometry()
	{
		return CQt.QWidget_Geometry(this.nativePtr);
	}
	
	public void NormalGeometry()
	{
		CQt.QWidget_NormalGeometry(this.nativePtr);
	}
	
	public int32 X()
	{
		return CQt.QWidget_X(this.nativePtr);
	}
	
	public int32 Y()
	{
		return CQt.QWidget_Y(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QWidget_Pos(this.nativePtr);
	}
	
	public void FrameSize()
	{
		CQt.QWidget_FrameSize(this.nativePtr);
	}
	
	public void Size()
	{
		CQt.QWidget_Size(this.nativePtr);
	}
	
	public int32 Width()
	{
		return CQt.QWidget_Width(this.nativePtr);
	}
	
	public int32 Height()
	{
		return CQt.QWidget_Height(this.nativePtr);
	}
	
	public void Rect()
	{
		CQt.QWidget_Rect(this.nativePtr);
	}
	
	public void ChildrenRect()
	{
		CQt.QWidget_ChildrenRect(this.nativePtr);
	}
	
	public void ChildrenRegion()
	{
		CQt.QWidget_ChildrenRegion(this.nativePtr);
	}
	
	public void MinimumSize()
	{
		CQt.QWidget_MinimumSize(this.nativePtr);
	}
	
	public void MaximumSize()
	{
		CQt.QWidget_MaximumSize(this.nativePtr);
	}
	
	public int32 MinimumWidth()
	{
		return CQt.QWidget_MinimumWidth(this.nativePtr);
	}
	
	public int32 MinimumHeight()
	{
		return CQt.QWidget_MinimumHeight(this.nativePtr);
	}
	
	public int32 MaximumWidth()
	{
		return CQt.QWidget_MaximumWidth(this.nativePtr);
	}
	
	public int32 MaximumHeight()
	{
		return CQt.QWidget_MaximumHeight(this.nativePtr);
	}
	
	public void SetMinimumSize(IQSize minimumSize)
	{
		CQt.QWidget_SetMinimumSize(this.nativePtr, (minimumSize == default) ? default : (void*)minimumSize.NativePtr);
	}
	
	public void SetMinimumSize2(int32 minw, int32 minh)
	{
		CQt.QWidget_SetMinimumSize2(this.nativePtr, minw, minh);
	}
	
	public void SetMaximumSize(IQSize maximumSize)
	{
		CQt.QWidget_SetMaximumSize(this.nativePtr, (maximumSize == default) ? default : (void*)maximumSize.NativePtr);
	}
	
	public void SetMaximumSize2(int32 maxw, int32 maxh)
	{
		CQt.QWidget_SetMaximumSize2(this.nativePtr, maxw, maxh);
	}
	
	public void SetMinimumWidth(int32 minw)
	{
		CQt.QWidget_SetMinimumWidth(this.nativePtr, minw);
	}
	
	public void SetMinimumHeight(int32 minh)
	{
		CQt.QWidget_SetMinimumHeight(this.nativePtr, minh);
	}
	
	public void SetMaximumWidth(int32 maxw)
	{
		CQt.QWidget_SetMaximumWidth(this.nativePtr, maxw);
	}
	
	public void SetMaximumHeight(int32 maxh)
	{
		CQt.QWidget_SetMaximumHeight(this.nativePtr, maxh);
	}
	
	public void SizeIncrement()
	{
		CQt.QWidget_SizeIncrement(this.nativePtr);
	}
	
	public void SetSizeIncrement(IQSize sizeIncrement)
	{
		CQt.QWidget_SetSizeIncrement(this.nativePtr, (sizeIncrement == default) ? default : (void*)sizeIncrement.NativePtr);
	}
	
	public void SetSizeIncrement2(int32 w, int32 h)
	{
		CQt.QWidget_SetSizeIncrement2(this.nativePtr, w, h);
	}
	
	public void BaseSize()
	{
		CQt.QWidget_BaseSize(this.nativePtr);
	}
	
	public void SetBaseSize(IQSize baseSize)
	{
		CQt.QWidget_SetBaseSize(this.nativePtr, (baseSize == default) ? default : (void*)baseSize.NativePtr);
	}
	
	public void SetBaseSize2(int32 basew, int32 baseh)
	{
		CQt.QWidget_SetBaseSize2(this.nativePtr, basew, baseh);
	}
	
	public void SetFixedSize(IQSize fixedSize)
	{
		CQt.QWidget_SetFixedSize(this.nativePtr, (fixedSize == default) ? default : (void*)fixedSize.NativePtr);
	}
	
	public void SetFixedSize2(int32 w, int32 h)
	{
		CQt.QWidget_SetFixedSize2(this.nativePtr, w, h);
	}
	
	public void SetFixedWidth(int32 w)
	{
		CQt.QWidget_SetFixedWidth(this.nativePtr, w);
	}
	
	public void SetFixedHeight(int32 h)
	{
		CQt.QWidget_SetFixedHeight(this.nativePtr, h);
	}
	
	public void MapToGlobal(IQPointF param1)
	{
		CQt.QWidget_MapToGlobal(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapToGlobalWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MapToGlobalWithQPoint(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapFromGlobal(IQPointF param1)
	{
		CQt.QWidget_MapFromGlobal(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapFromGlobalWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MapFromGlobalWithQPoint(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapToParent(IQPointF param1)
	{
		CQt.QWidget_MapToParent(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapToParentWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MapToParentWithQPoint(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapFromParent(IQPointF param1)
	{
		CQt.QWidget_MapFromParent(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapFromParentWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MapFromParentWithQPoint(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapTo(IQWidget param1, IQPointF param2)
	{
		CQt.QWidget_MapTo(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr, (param2 == default) ? default : (void*)param2.NativePtr);
	}
	
	public void MapTo2(IQWidget param1, IQPoint param2)
	{
		CQt.QWidget_MapTo2(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr, (param2 == default) ? default : (void*)param2.NativePtr);
	}
	
	public void MapFrom(IQWidget param1, IQPointF param2)
	{
		CQt.QWidget_MapFrom(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr, (param2 == default) ? default : (void*)param2.NativePtr);
	}
	
	public void MapFrom2(IQWidget param1, IQPoint param2)
	{
		CQt.QWidget_MapFrom2(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr, (param2 == default) ? default : (void*)param2.NativePtr);
	}
	
	public void* Window()
	{
		return CQt.QWidget_Window(this.nativePtr);
	}
	
	public void* NativeParentWidget()
	{
		return CQt.QWidget_NativeParentWidget(this.nativePtr);
	}
	
	public void* TopLevelWidget()
	{
		return CQt.QWidget_TopLevelWidget(this.nativePtr);
	}
	
	public void* Palette()
	{
		return CQt.QWidget_Palette(this.nativePtr);
	}
	
	public void SetPalette(IQPalette palette)
	{
		CQt.QWidget_SetPalette(this.nativePtr, (palette == default) ? default : (void*)palette.NativePtr);
	}
	
	public void SetBackgroundRole(int64 backgroundRole)
	{
		CQt.QWidget_SetBackgroundRole(this.nativePtr, backgroundRole);
	}
	
	public int64 BackgroundRole()
	{
		return CQt.QWidget_BackgroundRole(this.nativePtr);
	}
	
	public void SetForegroundRole(int64 foregroundRole)
	{
		CQt.QWidget_SetForegroundRole(this.nativePtr, foregroundRole);
	}
	
	public int64 ForegroundRole()
	{
		return CQt.QWidget_ForegroundRole(this.nativePtr);
	}
	
	public void* Font()
	{
		return CQt.QWidget_Font(this.nativePtr);
	}
	
	public void SetFont(IQFont font)
	{
		CQt.QWidget_SetFont(this.nativePtr, (font == default) ? default : (void*)font.NativePtr);
	}
	
	public void FontMetrics()
	{
		CQt.QWidget_FontMetrics(this.nativePtr);
	}
	
	public void FontInfo()
	{
		CQt.QWidget_FontInfo(this.nativePtr);
	}
	
	public void Cursor()
	{
		CQt.QWidget_Cursor(this.nativePtr);
	}
	
	public void SetCursor(IQCursor cursor)
	{
		CQt.QWidget_SetCursor(this.nativePtr, (cursor == default) ? default : (void*)cursor.NativePtr);
	}
	
	public void UnsetCursor()
	{
		CQt.QWidget_UnsetCursor(this.nativePtr);
	}
	
	public void SetMouseTracking(bool enable)
	{
		CQt.QWidget_SetMouseTracking(this.nativePtr, enable);
	}
	
	public bool HasMouseTracking()
	{
		return CQt.QWidget_HasMouseTracking(this.nativePtr);
	}
	
	public bool UnderMouse()
	{
		return CQt.QWidget_UnderMouse(this.nativePtr);
	}
	
	public void SetTabletTracking(bool enable)
	{
		CQt.QWidget_SetTabletTracking(this.nativePtr, enable);
	}
	
	public bool HasTabletTracking()
	{
		return CQt.QWidget_HasTabletTracking(this.nativePtr);
	}
	
	public void SetMask(IQBitmap mask)
	{
		CQt.QWidget_SetMask(this.nativePtr, (mask == default) ? default : (void*)mask.NativePtr);
	}
	
	public void SetMaskWithMask(IQRegion mask)
	{
		CQt.QWidget_SetMaskWithMask(this.nativePtr, (mask == default) ? default : (void*)mask.NativePtr);
	}
	
	public void Mask()
	{
		CQt.QWidget_Mask(this.nativePtr);
	}
	
	public void ClearMask()
	{
		CQt.QWidget_ClearMask(this.nativePtr);
	}
	
	public void Render(IQPaintDevice target)
	{
		CQt.QWidget_Render(this.nativePtr, (target == null) ? null : (void*)target.NativePtr);
	}
	
	public void RenderWithPainter(IQPainter painter)
	{
		CQt.QWidget_RenderWithPainter(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr);
	}
	
	public void Grab()
	{
		CQt.QWidget_Grab(this.nativePtr);
	}
	
	public void* GraphicsEffect()
	{
		return CQt.QWidget_GraphicsEffect(this.nativePtr);
	}
	
	public void SetGraphicsEffect(IQGraphicsEffect effect)
	{
		CQt.QWidget_SetGraphicsEffect(this.nativePtr, (effect == null) ? null : (void*)effect.NativePtr);
	}
	
	public void GrabGesture(int64 typeVal)
	{
		CQt.QWidget_GrabGesture(this.nativePtr, typeVal);
	}
	
	public void UngrabGesture(int64 typeVal)
	{
		CQt.QWidget_UngrabGesture(this.nativePtr, typeVal);
	}
	
	public void SetWindowTitle(String windowTitle)
	{
		CQt.QWidget_SetWindowTitle(this.nativePtr, libqt_string(windowTitle));
	}
	
	public void SetStyleSheet(String styleSheet)
	{
		CQt.QWidget_SetStyleSheet(this.nativePtr, libqt_string(styleSheet));
	}
	
	public libqt_string StyleSheet()
	{
		return CQt.QWidget_StyleSheet(this.nativePtr);
	}
	
	public libqt_string WindowTitle()
	{
		return CQt.QWidget_WindowTitle(this.nativePtr);
	}
	
	public void SetWindowIcon(IQIcon icon)
	{
		CQt.QWidget_SetWindowIcon(this.nativePtr, (icon == default) ? default : (void*)icon.NativePtr);
	}
	
	public void WindowIcon()
	{
		CQt.QWidget_WindowIcon(this.nativePtr);
	}
	
	public void SetWindowIconText(String windowIconText)
	{
		CQt.QWidget_SetWindowIconText(this.nativePtr, libqt_string(windowIconText));
	}
	
	public libqt_string WindowIconText()
	{
		return CQt.QWidget_WindowIconText(this.nativePtr);
	}
	
	public void SetWindowRole(String windowRole)
	{
		CQt.QWidget_SetWindowRole(this.nativePtr, libqt_string(windowRole));
	}
	
	public libqt_string WindowRole()
	{
		return CQt.QWidget_WindowRole(this.nativePtr);
	}
	
	public void SetWindowFilePath(String filePath)
	{
		CQt.QWidget_SetWindowFilePath(this.nativePtr, libqt_string(filePath));
	}
	
	public libqt_string WindowFilePath()
	{
		return CQt.QWidget_WindowFilePath(this.nativePtr);
	}
	
	public void SetWindowOpacity(double level)
	{
		CQt.QWidget_SetWindowOpacity(this.nativePtr, level);
	}
	
	public double WindowOpacity()
	{
		return CQt.QWidget_WindowOpacity(this.nativePtr);
	}
	
	public bool IsWindowModified()
	{
		return CQt.QWidget_IsWindowModified(this.nativePtr);
	}
	
	public void SetToolTip(String toolTip)
	{
		CQt.QWidget_SetToolTip(this.nativePtr, libqt_string(toolTip));
	}
	
	public libqt_string ToolTip()
	{
		return CQt.QWidget_ToolTip(this.nativePtr);
	}
	
	public void SetToolTipDuration(int32 msec)
	{
		CQt.QWidget_SetToolTipDuration(this.nativePtr, msec);
	}
	
	public int32 ToolTipDuration()
	{
		return CQt.QWidget_ToolTipDuration(this.nativePtr);
	}
	
	public void SetStatusTip(String statusTip)
	{
		CQt.QWidget_SetStatusTip(this.nativePtr, libqt_string(statusTip));
	}
	
	public libqt_string StatusTip()
	{
		return CQt.QWidget_StatusTip(this.nativePtr);
	}
	
	public void SetWhatsThis(String whatsThis)
	{
		CQt.QWidget_SetWhatsThis(this.nativePtr, libqt_string(whatsThis));
	}
	
	public libqt_string WhatsThis()
	{
		return CQt.QWidget_WhatsThis(this.nativePtr);
	}
	
	public libqt_string AccessibleName()
	{
		return CQt.QWidget_AccessibleName(this.nativePtr);
	}
	
	public void SetAccessibleName(String name)
	{
		CQt.QWidget_SetAccessibleName(this.nativePtr, libqt_string(name));
	}
	
	public libqt_string AccessibleDescription()
	{
		return CQt.QWidget_AccessibleDescription(this.nativePtr);
	}
	
	public void SetAccessibleDescription(String description)
	{
		CQt.QWidget_SetAccessibleDescription(this.nativePtr, libqt_string(description));
	}
	
	public void SetLayoutDirection(int64 direction)
	{
		CQt.QWidget_SetLayoutDirection(this.nativePtr, direction);
	}
	
	public int64 LayoutDirection()
	{
		return CQt.QWidget_LayoutDirection(this.nativePtr);
	}
	
	public void UnsetLayoutDirection()
	{
		CQt.QWidget_UnsetLayoutDirection(this.nativePtr);
	}
	
	public void SetLocale(IQLocale locale)
	{
		CQt.QWidget_SetLocale(this.nativePtr, (locale == default) ? default : (void*)locale.NativePtr);
	}
	
	public void Locale()
	{
		CQt.QWidget_Locale(this.nativePtr);
	}
	
	public void UnsetLocale()
	{
		CQt.QWidget_UnsetLocale(this.nativePtr);
	}
	
	public bool IsRightToLeft()
	{
		return CQt.QWidget_IsRightToLeft(this.nativePtr);
	}
	
	public bool IsLeftToRight()
	{
		return CQt.QWidget_IsLeftToRight(this.nativePtr);
	}
	
	public void SetFocus()
	{
		CQt.QWidget_SetFocus(this.nativePtr);
	}
	
	public bool IsActiveWindow()
	{
		return CQt.QWidget_IsActiveWindow(this.nativePtr);
	}
	
	public void ActivateWindow()
	{
		CQt.QWidget_ActivateWindow(this.nativePtr);
	}
	
	public void ClearFocus()
	{
		CQt.QWidget_ClearFocus(this.nativePtr);
	}
	
	public void SetFocusWithReason(int64 reason)
	{
		CQt.QWidget_SetFocusWithReason(this.nativePtr, reason);
	}
	
	public int64 FocusPolicy()
	{
		return CQt.QWidget_FocusPolicy(this.nativePtr);
	}
	
	public void SetFocusPolicy(int64 policy)
	{
		CQt.QWidget_SetFocusPolicy(this.nativePtr, policy);
	}
	
	public bool HasFocus()
	{
		return CQt.QWidget_HasFocus(this.nativePtr);
	}
	
	public static void SetTabOrder(IQWidget param1, IQWidget param2)
	{
		CQt.QWidget_SetTabOrder((param1 == null) ? null : (void*)param1.NativePtr, (param2 == null) ? null : (void*)param2.NativePtr);
	}
	
	public void SetFocusProxy(IQWidget focusProxy)
	{
		CQt.QWidget_SetFocusProxy(this.nativePtr, (focusProxy == null) ? null : (void*)focusProxy.NativePtr);
	}
	
	public void* FocusProxy()
	{
		return CQt.QWidget_FocusProxy(this.nativePtr);
	}
	
	public int64 ContextMenuPolicy()
	{
		return CQt.QWidget_ContextMenuPolicy(this.nativePtr);
	}
	
	public void SetContextMenuPolicy(int64 policy)
	{
		CQt.QWidget_SetContextMenuPolicy(this.nativePtr, policy);
	}
	
	public void GrabMouse()
	{
		CQt.QWidget_GrabMouse(this.nativePtr);
	}
	
	public void GrabMouseWithQCursor(IQCursor param1)
	{
		CQt.QWidget_GrabMouseWithQCursor(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void ReleaseMouse()
	{
		CQt.QWidget_ReleaseMouse(this.nativePtr);
	}
	
	public void GrabKeyboard()
	{
		CQt.QWidget_GrabKeyboard(this.nativePtr);
	}
	
	public void ReleaseKeyboard()
	{
		CQt.QWidget_ReleaseKeyboard(this.nativePtr);
	}
	
	public int32 GrabShortcut(IQKeySequence key)
	{
		return CQt.QWidget_GrabShortcut(this.nativePtr, (key == default) ? default : (void*)key.NativePtr);
	}
	
	public void ReleaseShortcut(int32 id)
	{
		CQt.QWidget_ReleaseShortcut(this.nativePtr, id);
	}
	
	public void SetShortcutEnabled(int32 id)
	{
		CQt.QWidget_SetShortcutEnabled(this.nativePtr, id);
	}
	
	public void SetShortcutAutoRepeat(int32 id)
	{
		CQt.QWidget_SetShortcutAutoRepeat(this.nativePtr, id);
	}
	
	public static void* MouseGrabber()
	{
		return CQt.QWidget_MouseGrabber();
	}
	
	public static void* KeyboardGrabber()
	{
		return CQt.QWidget_KeyboardGrabber();
	}
	
	public bool UpdatesEnabled()
	{
		return CQt.QWidget_UpdatesEnabled(this.nativePtr);
	}
	
	public void SetUpdatesEnabled(bool enable)
	{
		CQt.QWidget_SetUpdatesEnabled(this.nativePtr, enable);
	}
	
	public void* GraphicsProxyWidget()
	{
		return CQt.QWidget_GraphicsProxyWidget(this.nativePtr);
	}
	
	public void Update()
	{
		CQt.QWidget_Update(this.nativePtr);
	}
	
	public void Repaint()
	{
		CQt.QWidget_Repaint(this.nativePtr);
	}
	
	public void Update2(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_Update2(this.nativePtr, x, y, w, h);
	}
	
	public void UpdateWithQRect(IQRect param1)
	{
		CQt.QWidget_UpdateWithQRect(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void UpdateWithQRegion(IQRegion param1)
	{
		CQt.QWidget_UpdateWithQRegion(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void Repaint2(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_Repaint2(this.nativePtr, x, y, w, h);
	}
	
	public void RepaintWithQRect(IQRect param1)
	{
		CQt.QWidget_RepaintWithQRect(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void RepaintWithQRegion(IQRegion param1)
	{
		CQt.QWidget_RepaintWithQRegion(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public virtual void SetVisible(bool visible)
	{
		CQt.QWidget_SetVisible(this.nativePtr, visible);
	}
	
	public void SetHidden(bool hidden)
	{
		CQt.QWidget_SetHidden(this.nativePtr, hidden);
	}
	
	public void Show()
	{
		CQt.QWidget_Show(this.nativePtr);
	}
	
	public void Hide()
	{
		CQt.QWidget_Hide(this.nativePtr);
	}
	
	public void ShowMinimized()
	{
		CQt.QWidget_ShowMinimized(this.nativePtr);
	}
	
	public void ShowMaximized()
	{
		CQt.QWidget_ShowMaximized(this.nativePtr);
	}
	
	public void ShowFullScreen()
	{
		CQt.QWidget_ShowFullScreen(this.nativePtr);
	}
	
	public void ShowNormal()
	{
		CQt.QWidget_ShowNormal(this.nativePtr);
	}
	
	public bool Close()
	{
		return CQt.QWidget_Close(this.nativePtr);
	}
	
	public void Raise()
	{
		CQt.QWidget_Raise(this.nativePtr);
	}
	
	public void Lower()
	{
		CQt.QWidget_Lower(this.nativePtr);
	}
	
	public void StackUnder(IQWidget param1)
	{
		CQt.QWidget_StackUnder(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public void Move(int32 x, int32 y)
	{
		CQt.QWidget_Move(this.nativePtr, x, y);
	}
	
	public void MoveWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MoveWithQPoint(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void Resize(int32 w, int32 h)
	{
		CQt.QWidget_Resize(this.nativePtr, w, h);
	}
	
	public void ResizeWithQSize(IQSize param1)
	{
		CQt.QWidget_ResizeWithQSize(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void SetGeometry(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_SetGeometry(this.nativePtr, x, y, w, h);
	}
	
	public void SetGeometryWithGeometry(IQRect geometry)
	{
		CQt.QWidget_SetGeometryWithGeometry(this.nativePtr, (geometry == default) ? default : (void*)geometry.NativePtr);
	}
	
	public libqt_string SaveGeometry()
	{
		return CQt.QWidget_SaveGeometry(this.nativePtr);
	}
	
	public bool RestoreGeometry(String geometry)
	{
		return CQt.QWidget_RestoreGeometry(this.nativePtr, libqt_string(geometry));
	}
	
	public void AdjustSize()
	{
		CQt.QWidget_AdjustSize(this.nativePtr);
	}
	
	public bool IsVisible()
	{
		return CQt.QWidget_IsVisible(this.nativePtr);
	}
	
	public bool IsVisibleTo(IQWidget param1)
	{
		return CQt.QWidget_IsVisibleTo(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public bool IsHidden()
	{
		return CQt.QWidget_IsHidden(this.nativePtr);
	}
	
	public bool IsMinimized()
	{
		return CQt.QWidget_IsMinimized(this.nativePtr);
	}
	
	public bool IsMaximized()
	{
		return CQt.QWidget_IsMaximized(this.nativePtr);
	}
	
	public bool IsFullScreen()
	{
		return CQt.QWidget_IsFullScreen(this.nativePtr);
	}
	
	public int64 WindowState()
	{
		return CQt.QWidget_WindowState(this.nativePtr);
	}
	
	public void SetWindowState(int64 state)
	{
		CQt.QWidget_SetWindowState(this.nativePtr, state);
	}
	
	public void OverrideWindowState(int64 state)
	{
		CQt.QWidget_OverrideWindowState(this.nativePtr, state);
	}
	
	public virtual void SizeHint()
	{
		CQt.QWidget_SizeHint(this.nativePtr);
	}
	
	public virtual void MinimumSizeHint()
	{
		CQt.QWidget_MinimumSizeHint(this.nativePtr);
	}
	
	public void SizePolicy()
	{
		CQt.QWidget_SizePolicy(this.nativePtr);
	}
	
	public void SetSizePolicy(IQSizePolicy sizePolicy)
	{
		CQt.QWidget_SetSizePolicy(this.nativePtr, (sizePolicy == default) ? default : (void)sizePolicy.NativePtr);
	}
	
	public void SetSizePolicy2(int64 horizontal, int64 vertical)
	{
		CQt.QWidget_SetSizePolicy2(this.nativePtr, horizontal, vertical);
	}
	
	public virtual int32 HeightForWidth(int32 param1)
	{
		return CQt.QWidget_HeightForWidth(this.nativePtr, param1);
	}
	
	public virtual bool HasHeightForWidth()
	{
		return CQt.QWidget_HasHeightForWidth(this.nativePtr);
	}
	
	public void VisibleRegion()
	{
		CQt.QWidget_VisibleRegion(this.nativePtr);
	}
	
	public void SetContentsMargins(int32 left, int32 top, int32 right, int32 bottom)
	{
		CQt.QWidget_SetContentsMargins(this.nativePtr, left, top, right, bottom);
	}
	
	public void SetContentsMarginsWithMargins(IQMargins margins)
	{
		CQt.QWidget_SetContentsMarginsWithMargins(this.nativePtr, (margins == default) ? default : (void*)margins.NativePtr);
	}
	
	public void ContentsMargins()
	{
		CQt.QWidget_ContentsMargins(this.nativePtr);
	}
	
	public void ContentsRect()
	{
		CQt.QWidget_ContentsRect(this.nativePtr);
	}
	
	public void* Layout()
	{
		return CQt.QWidget_Layout(this.nativePtr);
	}
	
	public void SetLayout(IQLayout layout)
	{
		CQt.QWidget_SetLayout(this.nativePtr, (layout == null) ? null : (void*)layout.NativePtr);
	}
	
	public void UpdateGeometry()
	{
		CQt.QWidget_UpdateGeometry(this.nativePtr);
	}
	
	public void SetParent(IQWidget parent)
	{
		CQt.QWidget_SetParent(this.nativePtr, (parent == null) ? null : (void*)parent.NativePtr);
	}
	
	public void SetParent2(IQWidget parent, int64 f)
	{
		CQt.QWidget_SetParent2(this.nativePtr, (parent == null) ? null : (void*)parent.NativePtr, f);
	}
	
	public void Scroll(int32 dx, int32 dy)
	{
		CQt.QWidget_Scroll(this.nativePtr, dx, dy);
	}
	
	public void Scroll2(int32 dx, int32 dy, IQRect param3)
	{
		CQt.QWidget_Scroll2(this.nativePtr, dx, dy, (param3 == default) ? default : (void*)param3.NativePtr);
	}
	
	public void* FocusWidget()
	{
		return CQt.QWidget_FocusWidget(this.nativePtr);
	}
	
	public void* NextInFocusChain()
	{
		return CQt.QWidget_NextInFocusChain(this.nativePtr);
	}
	
	public void* PreviousInFocusChain()
	{
		return CQt.QWidget_PreviousInFocusChain(this.nativePtr);
	}
	
	public bool AcceptDrops()
	{
		return CQt.QWidget_AcceptDrops(this.nativePtr);
	}
	
	public void SetAcceptDrops(bool on)
	{
		CQt.QWidget_SetAcceptDrops(this.nativePtr, on);
	}
	
	public void AddAction(IQAction action)
	{
		CQt.QWidget_AddAction(this.nativePtr, (action == null) ? null : (void*)action.NativePtr);
	}
	
	public void AddActions(IQAction[] actions)
	{
		CQt.QWidget_AddActions(this.nativePtr, null);
	}
	
	public void InsertActions(IQAction before, IQAction[] actions)
	{
		CQt.QWidget_InsertActions(this.nativePtr, (before == null) ? null : (void*)before.NativePtr, null);
	}
	
	public void InsertAction(IQAction before, IQAction action)
	{
		CQt.QWidget_InsertAction(this.nativePtr, (before == null) ? null : (void*)before.NativePtr, (action == null) ? null : (void*)action.NativePtr);
	}
	
	public void RemoveAction(IQAction action)
	{
		CQt.QWidget_RemoveAction(this.nativePtr, (action == null) ? null : (void*)action.NativePtr);
	}
	
	public void*[] Actions()
	{
		return CQt.QWidget_Actions(this.nativePtr);
	}
	
	public void* AddActionWithText(String text)
	{
		return CQt.QWidget_AddActionWithText(this.nativePtr, libqt_string(text));
	}
	
	public void* AddAction2(IQIcon icon, String text)
	{
		return CQt.QWidget_AddAction2(this.nativePtr, (icon == default) ? default : (void*)icon.NativePtr, libqt_string(text));
	}
	
	public void* AddAction3(String text, IQKeySequence shortcut)
	{
		return CQt.QWidget_AddAction3(this.nativePtr, libqt_string(text), (shortcut == default) ? default : (void*)shortcut.NativePtr);
	}
	
	public void* AddAction4(IQIcon icon, String text, IQKeySequence shortcut)
	{
		return CQt.QWidget_AddAction4(this.nativePtr, (icon == default) ? default : (void*)icon.NativePtr, libqt_string(text), (shortcut == default) ? default : (void*)shortcut.NativePtr);
	}
	
	public void* ParentWidget()
	{
		return CQt.QWidget_ParentWidget(this.nativePtr);
	}
	
	public void SetWindowFlags(int64 typeVal)
	{
		CQt.QWidget_SetWindowFlags(this.nativePtr, typeVal);
	}
	
	public int64 WindowFlags()
	{
		return CQt.QWidget_WindowFlags(this.nativePtr);
	}
	
	public void SetWindowFlag(int64 param1)
	{
		CQt.QWidget_SetWindowFlag(this.nativePtr, param1);
	}
	
	public void OverrideWindowFlags(int64 typeVal)
	{
		CQt.QWidget_OverrideWindowFlags(this.nativePtr, typeVal);
	}
	
	public int64 WindowType()
	{
		return CQt.QWidget_WindowType(this.nativePtr);
	}
	
	public static void* Find(uint64 param1)
	{
		return CQt.QWidget_Find(param1);
	}
	
	public void* ChildAt(int32 x, int32 y)
	{
		return CQt.QWidget_ChildAt(this.nativePtr, x, y);
	}
	
	public void* ChildAtWithQPoint(IQPoint p)
	{
		return CQt.QWidget_ChildAtWithQPoint(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
	}
	
	public void SetAttribute(int64 param1)
	{
		CQt.QWidget_SetAttribute(this.nativePtr, param1);
	}
	
	public bool TestAttribute(int64 param1)
	{
		return CQt.QWidget_TestAttribute(this.nativePtr, param1);
	}
	
	public virtual void* PaintEngine()
	{
		return CQt.QWidget_PaintEngine(this.nativePtr);
	}
	
	public void EnsurePolished()
	{
		CQt.QWidget_EnsurePolished(this.nativePtr);
	}
	
	public bool IsAncestorOf(IQWidget child)
	{
		return CQt.QWidget_IsAncestorOf(this.nativePtr, (child == null) ? null : (void*)child.NativePtr);
	}
	
	public bool AutoFillBackground()
	{
		return CQt.QWidget_AutoFillBackground(this.nativePtr);
	}
	
	public void SetAutoFillBackground(bool enabled)
	{
		CQt.QWidget_SetAutoFillBackground(this.nativePtr, enabled);
	}
	
	public void* BackingStore()
	{
		return CQt.QWidget_BackingStore(this.nativePtr);
	}
	
	public void* WindowHandle()
	{
		return CQt.QWidget_WindowHandle(this.nativePtr);
	}
	
	public void* Screen()
	{
		return CQt.QWidget_Screen(this.nativePtr);
	}
	
	public void SetScreen(IQScreen screen)
	{
		CQt.QWidget_SetScreen(this.nativePtr, (screen == null) ? null : (void*)screen.NativePtr);
	}
	
	public static void* CreateWindowContainer(IQWindow window)
	{
		return CQt.QWidget_CreateWindowContainer((window == null) ? null : (void*)window.NativePtr);
	}
	
	public virtual bool Event(IQEvent event)
	{
		return CQt.QWidget_Event(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void MousePressEvent(IQMouseEvent event)
	{
		CQt.QWidget_MousePressEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void MouseReleaseEvent(IQMouseEvent event)
	{
		CQt.QWidget_MouseReleaseEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void MouseDoubleClickEvent(IQMouseEvent event)
	{
		CQt.QWidget_MouseDoubleClickEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void MouseMoveEvent(IQMouseEvent event)
	{
		CQt.QWidget_MouseMoveEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void WheelEvent(IQWheelEvent event)
	{
		CQt.QWidget_WheelEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void KeyPressEvent(IQKeyEvent event)
	{
		CQt.QWidget_KeyPressEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void KeyReleaseEvent(IQKeyEvent event)
	{
		CQt.QWidget_KeyReleaseEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void FocusInEvent(IQFocusEvent event)
	{
		CQt.QWidget_FocusInEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void FocusOutEvent(IQFocusEvent event)
	{
		CQt.QWidget_FocusOutEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void EnterEvent(IQEnterEvent event)
	{
		CQt.QWidget_EnterEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void LeaveEvent(IQEvent event)
	{
		CQt.QWidget_LeaveEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void PaintEvent(IQPaintEvent event)
	{
		CQt.QWidget_PaintEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void MoveEvent(IQMoveEvent event)
	{
		CQt.QWidget_MoveEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void ResizeEvent(IQResizeEvent event)
	{
		CQt.QWidget_ResizeEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void CloseEvent(IQCloseEvent event)
	{
		CQt.QWidget_CloseEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void ContextMenuEvent(IQContextMenuEvent event)
	{
		CQt.QWidget_ContextMenuEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void TabletEvent(IQTabletEvent event)
	{
		CQt.QWidget_TabletEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void ActionEvent(IQActionEvent event)
	{
		CQt.QWidget_ActionEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void DragEnterEvent(IQDragEnterEvent event)
	{
		CQt.QWidget_DragEnterEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void DragMoveEvent(IQDragMoveEvent event)
	{
		CQt.QWidget_DragMoveEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void DragLeaveEvent(IQDragLeaveEvent event)
	{
		CQt.QWidget_DragLeaveEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void DropEvent(IQDropEvent event)
	{
		CQt.QWidget_DropEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void ShowEvent(IQShowEvent event)
	{
		CQt.QWidget_ShowEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void HideEvent(IQHideEvent event)
	{
		CQt.QWidget_HideEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual bool NativeEvent(String eventType, void* message, c_uintptr* result)
	{
		return CQt.QWidget_NativeEvent(this.nativePtr, libqt_string(eventType), message, result);
	}
	
	public virtual void ChangeEvent(IQEvent param1)
	{
		CQt.QWidget_ChangeEvent(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public virtual int32 Metric(int64 param1)
	{
		return CQt.QWidget_Metric(this.nativePtr, param1);
	}
	
	public virtual void InitPainter(IQPainter painter)
	{
		CQt.QWidget_InitPainter(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr);
	}
	
	public virtual void* Redirected(IQPoint offset)
	{
		return CQt.QWidget_Redirected(this.nativePtr, (offset == null) ? null : (void*)offset.NativePtr);
	}
	
	public virtual void* SharedPainter()
	{
		return CQt.QWidget_SharedPainter(this.nativePtr);
	}
	
	public virtual void InputMethodEvent(IQInputMethodEvent param1)
	{
		CQt.QWidget_InputMethodEvent(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public virtual void InputMethodQuery(int64 param1)
	{
		CQt.QWidget_InputMethodQuery(this.nativePtr, param1);
	}
	
	public int64 InputMethodHints()
	{
		return CQt.QWidget_InputMethodHints(this.nativePtr);
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		CQt.QWidget_SetInputMethodHints(this.nativePtr, hints);
	}
	
	public void UpdateMicroFocus()
	{
		CQt.QWidget_UpdateMicroFocus(this.nativePtr);
	}
	
	public void Create()
	{
		CQt.QWidget_Create(this.nativePtr);
	}
	
	public void Destroy()
	{
		CQt.QWidget_Destroy(this.nativePtr);
	}
	
	public virtual bool FocusNextPrevChild(bool next)
	{
		return CQt.QWidget_FocusNextPrevChild(this.nativePtr, next);
	}
	
	public bool FocusNextChild()
	{
		return CQt.QWidget_FocusNextChild(this.nativePtr);
	}
	
	public bool FocusPreviousChild()
	{
		return CQt.QWidget_FocusPreviousChild(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QWidget_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QWidget_Tr3(s, c, n);
	}
	
	public void Render2(IQPaintDevice target, IQPoint targetOffset)
	{
		CQt.QWidget_Render2(this.nativePtr, (target == null) ? null : (void*)target.NativePtr, (targetOffset == default) ? default : (void*)targetOffset.NativePtr);
	}
	
	public void Render3(IQPaintDevice target, IQPoint targetOffset, IQRegion sourceRegion)
	{
		CQt.QWidget_Render3(this.nativePtr, (target == null) ? null : (void*)target.NativePtr, (targetOffset == default) ? default : (void*)targetOffset.NativePtr, (sourceRegion == default) ? default : (void*)sourceRegion.NativePtr);
	}
	
	public void Render4(IQPaintDevice target, IQPoint targetOffset, IQRegion sourceRegion, int64 renderFlags)
	{
		CQt.QWidget_Render4(this.nativePtr, (target == null) ? null : (void*)target.NativePtr, (targetOffset == default) ? default : (void*)targetOffset.NativePtr, (sourceRegion == default) ? default : (void*)sourceRegion.NativePtr, renderFlags);
	}
	
	public void Render22(IQPainter painter, IQPoint targetOffset)
	{
		CQt.QWidget_Render22(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr, (targetOffset == default) ? default : (void*)targetOffset.NativePtr);
	}
	
	public void Render32(IQPainter painter, IQPoint targetOffset, IQRegion sourceRegion)
	{
		CQt.QWidget_Render32(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr, (targetOffset == default) ? default : (void*)targetOffset.NativePtr, (sourceRegion == default) ? default : (void*)sourceRegion.NativePtr);
	}
	
	public void Render42(IQPainter painter, IQPoint targetOffset, IQRegion sourceRegion, int64 renderFlags)
	{
		CQt.QWidget_Render42(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr, (targetOffset == default) ? default : (void*)targetOffset.NativePtr, (sourceRegion == default) ? default : (void*)sourceRegion.NativePtr, renderFlags);
	}
	
	public void Grab1(IQRect rectangle)
	{
		CQt.QWidget_Grab1(this.nativePtr, (rectangle == default) ? default : (void*)rectangle.NativePtr);
	}
	
	public void GrabGesture2(int64 typeVal, int64 flags)
	{
		CQt.QWidget_GrabGesture2(this.nativePtr, typeVal, flags);
	}
	
	public int32 GrabShortcut2(IQKeySequence key, int64 context)
	{
		return CQt.QWidget_GrabShortcut2(this.nativePtr, (key == default) ? default : (void*)key.NativePtr, context);
	}
	
	public void SetShortcutEnabled2(int32 id, bool enable)
	{
		CQt.QWidget_SetShortcutEnabled2(this.nativePtr, id, enable);
	}
	
	public void SetShortcutAutoRepeat2(int32 id, bool enable)
	{
		CQt.QWidget_SetShortcutAutoRepeat2(this.nativePtr, id, enable);
	}
	
	public void SetWindowFlag2(int64 param1, bool on)
	{
		CQt.QWidget_SetWindowFlag2(this.nativePtr, param1, on);
	}
	
	public void SetAttribute2(int64 param1, bool on)
	{
		CQt.QWidget_SetAttribute2(this.nativePtr, param1, on);
	}
	
	public static void* CreateWindowContainer2(IQWindow window, IQWidget parent)
	{
		return CQt.QWidget_CreateWindowContainer2((window == null) ? null : (void*)window.NativePtr, (parent == null) ? null : (void*)parent.NativePtr);
	}
	
	public static void* CreateWindowContainer3(IQWindow window, IQWidget parent, int64 flags)
	{
		return CQt.QWidget_CreateWindowContainer3((window == null) ? null : (void*)window.NativePtr, (parent == null) ? null : (void*)parent.NativePtr, flags);
	}
	
	public void UpdateMicroFocus1(int64 query)
	{
		CQt.QWidget_UpdateMicroFocus1(this.nativePtr, query);
	}
	
	public void Create1(uint64 param1)
	{
		CQt.QWidget_Create1(this.nativePtr, param1);
	}
	
	public void Create2(uint64 param1, bool initializeWindow)
	{
		CQt.QWidget_Create2(this.nativePtr, param1, initializeWindow);
	}
	
	public void Create3(uint64 param1, bool initializeWindow, bool destroyOldWindow)
	{
		CQt.QWidget_Create3(this.nativePtr, param1, initializeWindow, destroyOldWindow);
	}
	
	public void Destroy1(bool destroyWindow)
	{
		CQt.QWidget_Destroy1(this.nativePtr, destroyWindow);
	}
	
	public void Destroy2(bool destroyWindow, bool destroySubWindows)
	{
		CQt.QWidget_Destroy2(this.nativePtr, destroyWindow, destroySubWindows);
	}
	
	public virtual bool EventFilter(IQObject watched, IQEvent event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, (watched == null) ? null : (void*)watched.NativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(IQAnyStringView name)
	{
		CQt.QObject_SetObjectName(this.nativePtr, (name == default) ? default : (char8*)name.NativePtr);
	}
	
	public bool IsWidgetType()
	{
		return CQt.QObject_IsWidgetType(this.nativePtr);
	}
	
	public bool IsWindowType()
	{
		return CQt.QObject_IsWindowType(this.nativePtr);
	}
	
	public bool IsQuickItemType()
	{
		return CQt.QObject_IsQuickItemType(this.nativePtr);
	}
	
	public bool SignalsBlocked()
	{
		return CQt.QObject_SignalsBlocked(this.nativePtr);
	}
	
	public bool BlockSignals(bool b)
	{
		return CQt.QObject_BlockSignals(this.nativePtr, b);
	}
	
	public void* Thread()
	{
		return CQt.QObject_Thread(this.nativePtr);
	}
	
	public void MoveToThread(IQThread thread)
	{
		CQt.QObject_MoveToThread(this.nativePtr, (thread == null) ? null : (void*)thread.NativePtr);
	}
	
	public int32 StartTimer(int32 interval)
	{
		return CQt.QObject_StartTimer(this.nativePtr, interval);
	}
	
	public void KillTimer(int32 id)
	{
		CQt.QObject_KillTimer(this.nativePtr, id);
	}
	
	public void*[] Children()
	{
		return CQt.QObject_Children(this.nativePtr);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, (filterObj == null) ? null : (void*)filterObj.NativePtr);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, (obj == null) ? null : (void*)obj.NativePtr);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		CQt.QObject_Connect((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (method == default) ? default : (void*)method.NativePtr);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		CQt.QObject_Connect2(this.nativePtr, (sender == null) ? null : (void*)sender.NativePtr, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return CQt.QObject_Disconnect((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (member == default) ? default : (void*)member.NativePtr);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__Connection param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection((param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void DumpObjectTree()
	{
		CQt.QObject_DumpObjectTree(this.nativePtr);
	}
	
	public void DumpObjectInfo()
	{
		CQt.QObject_DumpObjectInfo(this.nativePtr);
	}
	
	public bool SetProperty(char8* name, IQVariant value)
	{
		return CQt.QObject_SetProperty(this.nativePtr, name, (value == default) ? default : (void*)value.NativePtr);
	}
	
	public void Property(char8* name)
	{
		CQt.QObject_Property(this.nativePtr, name);
	}
	
	public libqt_string[] DynamicPropertyNames()
	{
		return CQt.QObject_DynamicPropertyNames(this.nativePtr);
	}
	
	public void* BindingStorage()
	{
		return CQt.QObject_BindingStorage(this.nativePtr);
	}
	
	public void* BindingStorage2()
	{
		return CQt.QObject_BindingStorage2(this.nativePtr);
	}
	
	public void* Parent()
	{
		return CQt.QObject_Parent(this.nativePtr);
	}
	
	public bool Inherits(char8* classname)
	{
		return CQt.QObject_Inherits(this.nativePtr, classname);
	}
	
	public void DeleteLater()
	{
		CQt.QObject_DeleteLater(this.nativePtr);
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return CQt.QObject_StartTimer2(this.nativePtr, interval, timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		CQt.QObject_Connect5((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (method == default) ? default : (void*)method.NativePtr, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		CQt.QObject_Connect4(this.nativePtr, (sender == null) ? null : (void*)sender.NativePtr, signal, member, typeVal);
	}
	
	public bool PaintingActive()
	{
		return CQt.QPaintDevice_PaintingActive(this.nativePtr);
	}
	
	public int32 WidthMM()
	{
		return CQt.QPaintDevice_WidthMM(this.nativePtr);
	}
	
	public int32 HeightMM()
	{
		return CQt.QPaintDevice_HeightMM(this.nativePtr);
	}
	
	public int32 LogicalDpiX()
	{
		return CQt.QPaintDevice_LogicalDpiX(this.nativePtr);
	}
	
	public int32 LogicalDpiY()
	{
		return CQt.QPaintDevice_LogicalDpiY(this.nativePtr);
	}
	
	public int32 PhysicalDpiX()
	{
		return CQt.QPaintDevice_PhysicalDpiX(this.nativePtr);
	}
	
	public int32 PhysicalDpiY()
	{
		return CQt.QPaintDevice_PhysicalDpiY(this.nativePtr);
	}
	
	public double DevicePixelRatio()
	{
		return CQt.QPaintDevice_DevicePixelRatio(this.nativePtr);
	}
	
	public double DevicePixelRatioF()
	{
		return CQt.QPaintDevice_DevicePixelRatioF(this.nativePtr);
	}
	
	public int32 ColorCount()
	{
		return CQt.QPaintDevice_ColorCount(this.nativePtr);
	}
	
	public int32 Depth()
	{
		return CQt.QPaintDevice_Depth(this.nativePtr);
	}
	
	public static double DevicePixelRatioFScale()
	{
		return CQt.QPaintDevice_DevicePixelRatioFScale();
	}
	
}
extension CQt
{
	[LinkName("QWidget_new")]
	public static extern void* QWidget_new(void* parent);
	[LinkName("QWidget_new2")]
	public static extern void* QWidget_new2();
	[LinkName("QWidget_new3")]
	public static extern void* QWidget_new3(void* parent, int64 f);
	[LinkName("QWidget_MetaObject")]
	public static extern void* QWidget_MetaObject(void* c_this);
	[LinkName("QWidget_Metacast")]
	public static extern void* QWidget_Metacast(void* c_this, char8* param1);
	[LinkName("QWidget_Metacall")]
	public static extern int32 QWidget_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QWidget_Tr")]
	public static extern libqt_string QWidget_Tr(char8* s);
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
	public static extern void* QWidget_Style(void* c_this);
	[LinkName("QWidget_SetStyle")]
	public static extern void QWidget_SetStyle(void* c_this, void* style);
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
	public static extern bool QWidget_IsEnabledTo(void* c_this, void* param1);
	[LinkName("QWidget_SetEnabled")]
	public static extern void QWidget_SetEnabled(void* c_this, bool enabled);
	[LinkName("QWidget_SetDisabled")]
	public static extern void QWidget_SetDisabled(void* c_this, bool disabled);
	[LinkName("QWidget_SetWindowModified")]
	public static extern void QWidget_SetWindowModified(void* c_this, bool windowModified);
	[LinkName("QWidget_FrameGeometry")]
	public static extern void QWidget_FrameGeometry(void* c_this);
	[LinkName("QWidget_Geometry")]
	public static extern void* QWidget_Geometry(void* c_this);
	[LinkName("QWidget_NormalGeometry")]
	public static extern void QWidget_NormalGeometry(void* c_this);
	[LinkName("QWidget_X")]
	public static extern int32 QWidget_X(void* c_this);
	[LinkName("QWidget_Y")]
	public static extern int32 QWidget_Y(void* c_this);
	[LinkName("QWidget_Pos")]
	public static extern void QWidget_Pos(void* c_this);
	[LinkName("QWidget_FrameSize")]
	public static extern void QWidget_FrameSize(void* c_this);
	[LinkName("QWidget_Size")]
	public static extern void QWidget_Size(void* c_this);
	[LinkName("QWidget_Width")]
	public static extern int32 QWidget_Width(void* c_this);
	[LinkName("QWidget_Height")]
	public static extern int32 QWidget_Height(void* c_this);
	[LinkName("QWidget_Rect")]
	public static extern void QWidget_Rect(void* c_this);
	[LinkName("QWidget_ChildrenRect")]
	public static extern void QWidget_ChildrenRect(void* c_this);
	[LinkName("QWidget_ChildrenRegion")]
	public static extern void QWidget_ChildrenRegion(void* c_this);
	[LinkName("QWidget_MinimumSize")]
	public static extern void QWidget_MinimumSize(void* c_this);
	[LinkName("QWidget_MaximumSize")]
	public static extern void QWidget_MaximumSize(void* c_this);
	[LinkName("QWidget_MinimumWidth")]
	public static extern int32 QWidget_MinimumWidth(void* c_this);
	[LinkName("QWidget_MinimumHeight")]
	public static extern int32 QWidget_MinimumHeight(void* c_this);
	[LinkName("QWidget_MaximumWidth")]
	public static extern int32 QWidget_MaximumWidth(void* c_this);
	[LinkName("QWidget_MaximumHeight")]
	public static extern int32 QWidget_MaximumHeight(void* c_this);
	[LinkName("QWidget_SetMinimumSize")]
	public static extern void QWidget_SetMinimumSize(void* c_this, void* minimumSize);
	[LinkName("QWidget_SetMinimumSize2")]
	public static extern void QWidget_SetMinimumSize2(void* c_this, int32 minw, int32 minh);
	[LinkName("QWidget_SetMaximumSize")]
	public static extern void QWidget_SetMaximumSize(void* c_this, void* maximumSize);
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
	public static extern void QWidget_SizeIncrement(void* c_this);
	[LinkName("QWidget_SetSizeIncrement")]
	public static extern void QWidget_SetSizeIncrement(void* c_this, void* sizeIncrement);
	[LinkName("QWidget_SetSizeIncrement2")]
	public static extern void QWidget_SetSizeIncrement2(void* c_this, int32 w, int32 h);
	[LinkName("QWidget_BaseSize")]
	public static extern void QWidget_BaseSize(void* c_this);
	[LinkName("QWidget_SetBaseSize")]
	public static extern void QWidget_SetBaseSize(void* c_this, void* baseSize);
	[LinkName("QWidget_SetBaseSize2")]
	public static extern void QWidget_SetBaseSize2(void* c_this, int32 basew, int32 baseh);
	[LinkName("QWidget_SetFixedSize")]
	public static extern void QWidget_SetFixedSize(void* c_this, void* fixedSize);
	[LinkName("QWidget_SetFixedSize2")]
	public static extern void QWidget_SetFixedSize2(void* c_this, int32 w, int32 h);
	[LinkName("QWidget_SetFixedWidth")]
	public static extern void QWidget_SetFixedWidth(void* c_this, int32 w);
	[LinkName("QWidget_SetFixedHeight")]
	public static extern void QWidget_SetFixedHeight(void* c_this, int32 h);
	[LinkName("QWidget_MapToGlobal")]
	public static extern void QWidget_MapToGlobal(void* c_this, void* param1);
	[LinkName("QWidget_MapToGlobalWithQPoint")]
	public static extern void QWidget_MapToGlobalWithQPoint(void* c_this, void* param1);
	[LinkName("QWidget_MapFromGlobal")]
	public static extern void QWidget_MapFromGlobal(void* c_this, void* param1);
	[LinkName("QWidget_MapFromGlobalWithQPoint")]
	public static extern void QWidget_MapFromGlobalWithQPoint(void* c_this, void* param1);
	[LinkName("QWidget_MapToParent")]
	public static extern void QWidget_MapToParent(void* c_this, void* param1);
	[LinkName("QWidget_MapToParentWithQPoint")]
	public static extern void QWidget_MapToParentWithQPoint(void* c_this, void* param1);
	[LinkName("QWidget_MapFromParent")]
	public static extern void QWidget_MapFromParent(void* c_this, void* param1);
	[LinkName("QWidget_MapFromParentWithQPoint")]
	public static extern void QWidget_MapFromParentWithQPoint(void* c_this, void* param1);
	[LinkName("QWidget_MapTo")]
	public static extern void QWidget_MapTo(void* c_this, void* param1, void* param2);
	[LinkName("QWidget_MapTo2")]
	public static extern void QWidget_MapTo2(void* c_this, void* param1, void* param2);
	[LinkName("QWidget_MapFrom")]
	public static extern void QWidget_MapFrom(void* c_this, void* param1, void* param2);
	[LinkName("QWidget_MapFrom2")]
	public static extern void QWidget_MapFrom2(void* c_this, void* param1, void* param2);
	[LinkName("QWidget_Window")]
	public static extern void* QWidget_Window(void* c_this);
	[LinkName("QWidget_NativeParentWidget")]
	public static extern void* QWidget_NativeParentWidget(void* c_this);
	[LinkName("QWidget_TopLevelWidget")]
	public static extern void* QWidget_TopLevelWidget(void* c_this);
	[LinkName("QWidget_Palette")]
	public static extern void* QWidget_Palette(void* c_this);
	[LinkName("QWidget_SetPalette")]
	public static extern void QWidget_SetPalette(void* c_this, void* palette);
	[LinkName("QWidget_SetBackgroundRole")]
	public static extern void QWidget_SetBackgroundRole(void* c_this, int64 backgroundRole);
	[LinkName("QWidget_BackgroundRole")]
	public static extern int64 QWidget_BackgroundRole(void* c_this);
	[LinkName("QWidget_SetForegroundRole")]
	public static extern void QWidget_SetForegroundRole(void* c_this, int64 foregroundRole);
	[LinkName("QWidget_ForegroundRole")]
	public static extern int64 QWidget_ForegroundRole(void* c_this);
	[LinkName("QWidget_Font")]
	public static extern void* QWidget_Font(void* c_this);
	[LinkName("QWidget_SetFont")]
	public static extern void QWidget_SetFont(void* c_this, void* font);
	[LinkName("QWidget_FontMetrics")]
	public static extern void QWidget_FontMetrics(void* c_this);
	[LinkName("QWidget_FontInfo")]
	public static extern void QWidget_FontInfo(void* c_this);
	[LinkName("QWidget_Cursor")]
	public static extern void QWidget_Cursor(void* c_this);
	[LinkName("QWidget_SetCursor")]
	public static extern void QWidget_SetCursor(void* c_this, void* cursor);
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
	public static extern void QWidget_SetMask(void* c_this, void* mask);
	[LinkName("QWidget_SetMaskWithMask")]
	public static extern void QWidget_SetMaskWithMask(void* c_this, void* mask);
	[LinkName("QWidget_Mask")]
	public static extern void QWidget_Mask(void* c_this);
	[LinkName("QWidget_ClearMask")]
	public static extern void QWidget_ClearMask(void* c_this);
	[LinkName("QWidget_Render")]
	public static extern void QWidget_Render(void* c_this, void* target);
	[LinkName("QWidget_RenderWithPainter")]
	public static extern void QWidget_RenderWithPainter(void* c_this, void* painter);
	[LinkName("QWidget_Grab")]
	public static extern void QWidget_Grab(void* c_this);
	[LinkName("QWidget_GraphicsEffect")]
	public static extern void* QWidget_GraphicsEffect(void* c_this);
	[LinkName("QWidget_SetGraphicsEffect")]
	public static extern void QWidget_SetGraphicsEffect(void* c_this, void* effect);
	[LinkName("QWidget_GrabGesture")]
	public static extern void QWidget_GrabGesture(void* c_this, int64 typeVal);
	[LinkName("QWidget_UngrabGesture")]
	public static extern void QWidget_UngrabGesture(void* c_this, int64 typeVal);
	[LinkName("QWidget_SetWindowTitle")]
	public static extern void QWidget_SetWindowTitle(void* c_this, libqt_string windowTitle);
	[LinkName("QWidget_SetStyleSheet")]
	public static extern void QWidget_SetStyleSheet(void* c_this, libqt_string styleSheet);
	[LinkName("QWidget_StyleSheet")]
	public static extern libqt_string QWidget_StyleSheet(void* c_this);
	[LinkName("QWidget_WindowTitle")]
	public static extern libqt_string QWidget_WindowTitle(void* c_this);
	[LinkName("QWidget_SetWindowIcon")]
	public static extern void QWidget_SetWindowIcon(void* c_this, void* icon);
	[LinkName("QWidget_WindowIcon")]
	public static extern void QWidget_WindowIcon(void* c_this);
	[LinkName("QWidget_SetWindowIconText")]
	public static extern void QWidget_SetWindowIconText(void* c_this, libqt_string windowIconText);
	[LinkName("QWidget_WindowIconText")]
	public static extern libqt_string QWidget_WindowIconText(void* c_this);
	[LinkName("QWidget_SetWindowRole")]
	public static extern void QWidget_SetWindowRole(void* c_this, libqt_string windowRole);
	[LinkName("QWidget_WindowRole")]
	public static extern libqt_string QWidget_WindowRole(void* c_this);
	[LinkName("QWidget_SetWindowFilePath")]
	public static extern void QWidget_SetWindowFilePath(void* c_this, libqt_string filePath);
	[LinkName("QWidget_WindowFilePath")]
	public static extern libqt_string QWidget_WindowFilePath(void* c_this);
	[LinkName("QWidget_SetWindowOpacity")]
	public static extern void QWidget_SetWindowOpacity(void* c_this, double level);
	[LinkName("QWidget_WindowOpacity")]
	public static extern double QWidget_WindowOpacity(void* c_this);
	[LinkName("QWidget_IsWindowModified")]
	public static extern bool QWidget_IsWindowModified(void* c_this);
	[LinkName("QWidget_SetToolTip")]
	public static extern void QWidget_SetToolTip(void* c_this, libqt_string toolTip);
	[LinkName("QWidget_ToolTip")]
	public static extern libqt_string QWidget_ToolTip(void* c_this);
	[LinkName("QWidget_SetToolTipDuration")]
	public static extern void QWidget_SetToolTipDuration(void* c_this, int32 msec);
	[LinkName("QWidget_ToolTipDuration")]
	public static extern int32 QWidget_ToolTipDuration(void* c_this);
	[LinkName("QWidget_SetStatusTip")]
	public static extern void QWidget_SetStatusTip(void* c_this, libqt_string statusTip);
	[LinkName("QWidget_StatusTip")]
	public static extern libqt_string QWidget_StatusTip(void* c_this);
	[LinkName("QWidget_SetWhatsThis")]
	public static extern void QWidget_SetWhatsThis(void* c_this, libqt_string whatsThis);
	[LinkName("QWidget_WhatsThis")]
	public static extern libqt_string QWidget_WhatsThis(void* c_this);
	[LinkName("QWidget_AccessibleName")]
	public static extern libqt_string QWidget_AccessibleName(void* c_this);
	[LinkName("QWidget_SetAccessibleName")]
	public static extern void QWidget_SetAccessibleName(void* c_this, libqt_string name);
	[LinkName("QWidget_AccessibleDescription")]
	public static extern libqt_string QWidget_AccessibleDescription(void* c_this);
	[LinkName("QWidget_SetAccessibleDescription")]
	public static extern void QWidget_SetAccessibleDescription(void* c_this, libqt_string description);
	[LinkName("QWidget_SetLayoutDirection")]
	public static extern void QWidget_SetLayoutDirection(void* c_this, int64 direction);
	[LinkName("QWidget_LayoutDirection")]
	public static extern int64 QWidget_LayoutDirection(void* c_this);
	[LinkName("QWidget_UnsetLayoutDirection")]
	public static extern void QWidget_UnsetLayoutDirection(void* c_this);
	[LinkName("QWidget_SetLocale")]
	public static extern void QWidget_SetLocale(void* c_this, void* locale);
	[LinkName("QWidget_Locale")]
	public static extern void QWidget_Locale(void* c_this);
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
	public static extern void QWidget_SetTabOrder(void* param1, void* param2);
	[LinkName("QWidget_SetFocusProxy")]
	public static extern void QWidget_SetFocusProxy(void* c_this, void* focusProxy);
	[LinkName("QWidget_FocusProxy")]
	public static extern void* QWidget_FocusProxy(void* c_this);
	[LinkName("QWidget_ContextMenuPolicy")]
	public static extern int64 QWidget_ContextMenuPolicy(void* c_this);
	[LinkName("QWidget_SetContextMenuPolicy")]
	public static extern void QWidget_SetContextMenuPolicy(void* c_this, int64 policy);
	[LinkName("QWidget_GrabMouse")]
	public static extern void QWidget_GrabMouse(void* c_this);
	[LinkName("QWidget_GrabMouseWithQCursor")]
	public static extern void QWidget_GrabMouseWithQCursor(void* c_this, void* param1);
	[LinkName("QWidget_ReleaseMouse")]
	public static extern void QWidget_ReleaseMouse(void* c_this);
	[LinkName("QWidget_GrabKeyboard")]
	public static extern void QWidget_GrabKeyboard(void* c_this);
	[LinkName("QWidget_ReleaseKeyboard")]
	public static extern void QWidget_ReleaseKeyboard(void* c_this);
	[LinkName("QWidget_GrabShortcut")]
	public static extern int32 QWidget_GrabShortcut(void* c_this, void* key);
	[LinkName("QWidget_ReleaseShortcut")]
	public static extern void QWidget_ReleaseShortcut(void* c_this, int32 id);
	[LinkName("QWidget_SetShortcutEnabled")]
	public static extern void QWidget_SetShortcutEnabled(void* c_this, int32 id);
	[LinkName("QWidget_SetShortcutAutoRepeat")]
	public static extern void QWidget_SetShortcutAutoRepeat(void* c_this, int32 id);
	[LinkName("QWidget_MouseGrabber")]
	public static extern void* QWidget_MouseGrabber();
	[LinkName("QWidget_KeyboardGrabber")]
	public static extern void* QWidget_KeyboardGrabber();
	[LinkName("QWidget_UpdatesEnabled")]
	public static extern bool QWidget_UpdatesEnabled(void* c_this);
	[LinkName("QWidget_SetUpdatesEnabled")]
	public static extern void QWidget_SetUpdatesEnabled(void* c_this, bool enable);
	[LinkName("QWidget_GraphicsProxyWidget")]
	public static extern void* QWidget_GraphicsProxyWidget(void* c_this);
	[LinkName("QWidget_Update")]
	public static extern void QWidget_Update(void* c_this);
	[LinkName("QWidget_Repaint")]
	public static extern void QWidget_Repaint(void* c_this);
	[LinkName("QWidget_Update2")]
	public static extern void QWidget_Update2(void* c_this, int32 x, int32 y, int32 w, int32 h);
	[LinkName("QWidget_UpdateWithQRect")]
	public static extern void QWidget_UpdateWithQRect(void* c_this, void* param1);
	[LinkName("QWidget_UpdateWithQRegion")]
	public static extern void QWidget_UpdateWithQRegion(void* c_this, void* param1);
	[LinkName("QWidget_Repaint2")]
	public static extern void QWidget_Repaint2(void* c_this, int32 x, int32 y, int32 w, int32 h);
	[LinkName("QWidget_RepaintWithQRect")]
	public static extern void QWidget_RepaintWithQRect(void* c_this, void* param1);
	[LinkName("QWidget_RepaintWithQRegion")]
	public static extern void QWidget_RepaintWithQRegion(void* c_this, void* param1);
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
	public static extern void QWidget_StackUnder(void* c_this, void* param1);
	[LinkName("QWidget_Move")]
	public static extern void QWidget_Move(void* c_this, int32 x, int32 y);
	[LinkName("QWidget_MoveWithQPoint")]
	public static extern void QWidget_MoveWithQPoint(void* c_this, void* param1);
	[LinkName("QWidget_Resize")]
	public static extern void QWidget_Resize(void* c_this, int32 w, int32 h);
	[LinkName("QWidget_ResizeWithQSize")]
	public static extern void QWidget_ResizeWithQSize(void* c_this, void* param1);
	[LinkName("QWidget_SetGeometry")]
	public static extern void QWidget_SetGeometry(void* c_this, int32 x, int32 y, int32 w, int32 h);
	[LinkName("QWidget_SetGeometryWithGeometry")]
	public static extern void QWidget_SetGeometryWithGeometry(void* c_this, void* geometry);
	[LinkName("QWidget_SaveGeometry")]
	public static extern libqt_string QWidget_SaveGeometry(void* c_this);
	[LinkName("QWidget_RestoreGeometry")]
	public static extern bool QWidget_RestoreGeometry(void* c_this, libqt_string geometry);
	[LinkName("QWidget_AdjustSize")]
	public static extern void QWidget_AdjustSize(void* c_this);
	[LinkName("QWidget_IsVisible")]
	public static extern bool QWidget_IsVisible(void* c_this);
	[LinkName("QWidget_IsVisibleTo")]
	public static extern bool QWidget_IsVisibleTo(void* c_this, void* param1);
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
	public static extern void QWidget_SizeHint(void* c_this);
	[LinkName("QWidget_MinimumSizeHint")]
	public static extern void QWidget_MinimumSizeHint(void* c_this);
	[LinkName("QWidget_SizePolicy")]
	public static extern void QWidget_SizePolicy(void* c_this);
	[LinkName("QWidget_SetSizePolicy")]
	public static extern void QWidget_SetSizePolicy(void* c_this, void sizePolicy);
	[LinkName("QWidget_SetSizePolicy2")]
	public static extern void QWidget_SetSizePolicy2(void* c_this, int64 horizontal, int64 vertical);
	[LinkName("QWidget_HeightForWidth")]
	public static extern int32 QWidget_HeightForWidth(void* c_this, int32 param1);
	[LinkName("QWidget_HasHeightForWidth")]
	public static extern bool QWidget_HasHeightForWidth(void* c_this);
	[LinkName("QWidget_VisibleRegion")]
	public static extern void QWidget_VisibleRegion(void* c_this);
	[LinkName("QWidget_SetContentsMargins")]
	public static extern void QWidget_SetContentsMargins(void* c_this, int32 left, int32 top, int32 right, int32 bottom);
	[LinkName("QWidget_SetContentsMarginsWithMargins")]
	public static extern void QWidget_SetContentsMarginsWithMargins(void* c_this, void* margins);
	[LinkName("QWidget_ContentsMargins")]
	public static extern void QWidget_ContentsMargins(void* c_this);
	[LinkName("QWidget_ContentsRect")]
	public static extern void QWidget_ContentsRect(void* c_this);
	[LinkName("QWidget_Layout")]
	public static extern void* QWidget_Layout(void* c_this);
	[LinkName("QWidget_SetLayout")]
	public static extern void QWidget_SetLayout(void* c_this, void* layout);
	[LinkName("QWidget_UpdateGeometry")]
	public static extern void QWidget_UpdateGeometry(void* c_this);
	[LinkName("QWidget_SetParent")]
	public static extern void QWidget_SetParent(void* c_this, void* parent);
	[LinkName("QWidget_SetParent2")]
	public static extern void QWidget_SetParent2(void* c_this, void* parent, int64 f);
	[LinkName("QWidget_Scroll")]
	public static extern void QWidget_Scroll(void* c_this, int32 dx, int32 dy);
	[LinkName("QWidget_Scroll2")]
	public static extern void QWidget_Scroll2(void* c_this, int32 dx, int32 dy, void* param3);
	[LinkName("QWidget_FocusWidget")]
	public static extern void* QWidget_FocusWidget(void* c_this);
	[LinkName("QWidget_NextInFocusChain")]
	public static extern void* QWidget_NextInFocusChain(void* c_this);
	[LinkName("QWidget_PreviousInFocusChain")]
	public static extern void* QWidget_PreviousInFocusChain(void* c_this);
	[LinkName("QWidget_AcceptDrops")]
	public static extern bool QWidget_AcceptDrops(void* c_this);
	[LinkName("QWidget_SetAcceptDrops")]
	public static extern void QWidget_SetAcceptDrops(void* c_this, bool on);
	[LinkName("QWidget_AddAction")]
	public static extern void QWidget_AddAction(void* c_this, void* action);
	[LinkName("QWidget_AddActions")]
	public static extern void QWidget_AddActions(void* c_this, void*[] actions);
	[LinkName("QWidget_InsertActions")]
	public static extern void QWidget_InsertActions(void* c_this, void* before, void*[] actions);
	[LinkName("QWidget_InsertAction")]
	public static extern void QWidget_InsertAction(void* c_this, void* before, void* action);
	[LinkName("QWidget_RemoveAction")]
	public static extern void QWidget_RemoveAction(void* c_this, void* action);
	[LinkName("QWidget_Actions")]
	public static extern void*[] QWidget_Actions(void* c_this);
	[LinkName("QWidget_AddActionWithText")]
	public static extern void* QWidget_AddActionWithText(void* c_this, libqt_string text);
	[LinkName("QWidget_AddAction2")]
	public static extern void* QWidget_AddAction2(void* c_this, void* icon, libqt_string text);
	[LinkName("QWidget_AddAction3")]
	public static extern void* QWidget_AddAction3(void* c_this, libqt_string text, void* shortcut);
	[LinkName("QWidget_AddAction4")]
	public static extern void* QWidget_AddAction4(void* c_this, void* icon, libqt_string text, void* shortcut);
	[LinkName("QWidget_ParentWidget")]
	public static extern void* QWidget_ParentWidget(void* c_this);
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
	public static extern void* QWidget_Find(uint64 param1);
	[LinkName("QWidget_ChildAt")]
	public static extern void* QWidget_ChildAt(void* c_this, int32 x, int32 y);
	[LinkName("QWidget_ChildAtWithQPoint")]
	public static extern void* QWidget_ChildAtWithQPoint(void* c_this, void* p);
	[LinkName("QWidget_SetAttribute")]
	public static extern void QWidget_SetAttribute(void* c_this, int64 param1);
	[LinkName("QWidget_TestAttribute")]
	public static extern bool QWidget_TestAttribute(void* c_this, int64 param1);
	[LinkName("QWidget_PaintEngine")]
	public static extern void* QWidget_PaintEngine(void* c_this);
	[LinkName("QWidget_EnsurePolished")]
	public static extern void QWidget_EnsurePolished(void* c_this);
	[LinkName("QWidget_IsAncestorOf")]
	public static extern bool QWidget_IsAncestorOf(void* c_this, void* child);
	[LinkName("QWidget_AutoFillBackground")]
	public static extern bool QWidget_AutoFillBackground(void* c_this);
	[LinkName("QWidget_SetAutoFillBackground")]
	public static extern void QWidget_SetAutoFillBackground(void* c_this, bool enabled);
	[LinkName("QWidget_BackingStore")]
	public static extern void* QWidget_BackingStore(void* c_this);
	[LinkName("QWidget_WindowHandle")]
	public static extern void* QWidget_WindowHandle(void* c_this);
	[LinkName("QWidget_Screen")]
	public static extern void* QWidget_Screen(void* c_this);
	[LinkName("QWidget_SetScreen")]
	public static extern void QWidget_SetScreen(void* c_this, void* screen);
	[LinkName("QWidget_CreateWindowContainer")]
	public static extern void* QWidget_CreateWindowContainer(void* window);
	[LinkName("QWidget_Connect_WindowTitleChanged")]
	public static extern void QWidget_Connect_WindowTitleChanged(void* c_this, c_intptr slot);
	[LinkName("QWidget_Connect_WindowIconChanged")]
	public static extern void QWidget_Connect_WindowIconChanged(void* c_this, c_intptr slot);
	[LinkName("QWidget_Connect_WindowIconTextChanged")]
	public static extern void QWidget_Connect_WindowIconTextChanged(void* c_this, c_intptr slot);
	[LinkName("QWidget_Connect_CustomContextMenuRequested")]
	public static extern void QWidget_Connect_CustomContextMenuRequested(void* c_this, c_intptr slot);
	[LinkName("QWidget_Event")]
	public static extern bool QWidget_Event(void* c_this, void* event);
	[LinkName("QWidget_MousePressEvent")]
	public static extern void QWidget_MousePressEvent(void* c_this, void* event);
	[LinkName("QWidget_MouseReleaseEvent")]
	public static extern void QWidget_MouseReleaseEvent(void* c_this, void* event);
	[LinkName("QWidget_MouseDoubleClickEvent")]
	public static extern void QWidget_MouseDoubleClickEvent(void* c_this, void* event);
	[LinkName("QWidget_MouseMoveEvent")]
	public static extern void QWidget_MouseMoveEvent(void* c_this, void* event);
	[LinkName("QWidget_WheelEvent")]
	public static extern void QWidget_WheelEvent(void* c_this, void* event);
	[LinkName("QWidget_KeyPressEvent")]
	public static extern void QWidget_KeyPressEvent(void* c_this, void* event);
	[LinkName("QWidget_KeyReleaseEvent")]
	public static extern void QWidget_KeyReleaseEvent(void* c_this, void* event);
	[LinkName("QWidget_FocusInEvent")]
	public static extern void QWidget_FocusInEvent(void* c_this, void* event);
	[LinkName("QWidget_FocusOutEvent")]
	public static extern void QWidget_FocusOutEvent(void* c_this, void* event);
	[LinkName("QWidget_EnterEvent")]
	public static extern void QWidget_EnterEvent(void* c_this, void* event);
	[LinkName("QWidget_LeaveEvent")]
	public static extern void QWidget_LeaveEvent(void* c_this, void* event);
	[LinkName("QWidget_PaintEvent")]
	public static extern void QWidget_PaintEvent(void* c_this, void* event);
	[LinkName("QWidget_MoveEvent")]
	public static extern void QWidget_MoveEvent(void* c_this, void* event);
	[LinkName("QWidget_ResizeEvent")]
	public static extern void QWidget_ResizeEvent(void* c_this, void* event);
	[LinkName("QWidget_CloseEvent")]
	public static extern void QWidget_CloseEvent(void* c_this, void* event);
	[LinkName("QWidget_ContextMenuEvent")]
	public static extern void QWidget_ContextMenuEvent(void* c_this, void* event);
	[LinkName("QWidget_TabletEvent")]
	public static extern void QWidget_TabletEvent(void* c_this, void* event);
	[LinkName("QWidget_ActionEvent")]
	public static extern void QWidget_ActionEvent(void* c_this, void* event);
	[LinkName("QWidget_DragEnterEvent")]
	public static extern void QWidget_DragEnterEvent(void* c_this, void* event);
	[LinkName("QWidget_DragMoveEvent")]
	public static extern void QWidget_DragMoveEvent(void* c_this, void* event);
	[LinkName("QWidget_DragLeaveEvent")]
	public static extern void QWidget_DragLeaveEvent(void* c_this, void* event);
	[LinkName("QWidget_DropEvent")]
	public static extern void QWidget_DropEvent(void* c_this, void* event);
	[LinkName("QWidget_ShowEvent")]
	public static extern void QWidget_ShowEvent(void* c_this, void* event);
	[LinkName("QWidget_HideEvent")]
	public static extern void QWidget_HideEvent(void* c_this, void* event);
	[LinkName("QWidget_NativeEvent")]
	public static extern bool QWidget_NativeEvent(void* c_this, libqt_string eventType, void* message, c_uintptr* result);
	[LinkName("QWidget_ChangeEvent")]
	public static extern void QWidget_ChangeEvent(void* c_this, void* param1);
	[LinkName("QWidget_Metric")]
	public static extern int32 QWidget_Metric(void* c_this, int64 param1);
	[LinkName("QWidget_InitPainter")]
	public static extern void QWidget_InitPainter(void* c_this, void* painter);
	[LinkName("QWidget_Redirected")]
	public static extern void* QWidget_Redirected(void* c_this, void* offset);
	[LinkName("QWidget_SharedPainter")]
	public static extern void* QWidget_SharedPainter(void* c_this);
	[LinkName("QWidget_InputMethodEvent")]
	public static extern void QWidget_InputMethodEvent(void* c_this, void* param1);
	[LinkName("QWidget_InputMethodQuery")]
	public static extern void QWidget_InputMethodQuery(void* c_this, int64 param1);
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
	public static extern libqt_string QWidget_Tr2(char8* s, char8* c);
	[LinkName("QWidget_Tr3")]
	public static extern libqt_string QWidget_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QWidget_Render2")]
	public static extern void QWidget_Render2(void* c_this, void* target, void* targetOffset);
	[LinkName("QWidget_Render3")]
	public static extern void QWidget_Render3(void* c_this, void* target, void* targetOffset, void* sourceRegion);
	[LinkName("QWidget_Render4")]
	public static extern void QWidget_Render4(void* c_this, void* target, void* targetOffset, void* sourceRegion, int64 renderFlags);
	[LinkName("QWidget_Render22")]
	public static extern void QWidget_Render22(void* c_this, void* painter, void* targetOffset);
	[LinkName("QWidget_Render32")]
	public static extern void QWidget_Render32(void* c_this, void* painter, void* targetOffset, void* sourceRegion);
	[LinkName("QWidget_Render42")]
	public static extern void QWidget_Render42(void* c_this, void* painter, void* targetOffset, void* sourceRegion, int64 renderFlags);
	[LinkName("QWidget_Grab1")]
	public static extern void QWidget_Grab1(void* c_this, void* rectangle);
	[LinkName("QWidget_GrabGesture2")]
	public static extern void QWidget_GrabGesture2(void* c_this, int64 typeVal, int64 flags);
	[LinkName("QWidget_GrabShortcut2")]
	public static extern int32 QWidget_GrabShortcut2(void* c_this, void* key, int64 context);
	[LinkName("QWidget_SetShortcutEnabled2")]
	public static extern void QWidget_SetShortcutEnabled2(void* c_this, int32 id, bool enable);
	[LinkName("QWidget_SetShortcutAutoRepeat2")]
	public static extern void QWidget_SetShortcutAutoRepeat2(void* c_this, int32 id, bool enable);
	[LinkName("QWidget_SetWindowFlag2")]
	public static extern void QWidget_SetWindowFlag2(void* c_this, int64 param1, bool on);
	[LinkName("QWidget_SetAttribute2")]
	public static extern void QWidget_SetAttribute2(void* c_this, int64 param1, bool on);
	[LinkName("QWidget_CreateWindowContainer2")]
	public static extern void* QWidget_CreateWindowContainer2(void* window, void* parent);
	[LinkName("QWidget_CreateWindowContainer3")]
	public static extern void* QWidget_CreateWindowContainer3(void* window, void* parent, int64 flags);
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
	/// Delete this object from C++ memory
	[LinkName("QWidget_Delete")]
	public static extern void QWidget_Delete(void* self);
}