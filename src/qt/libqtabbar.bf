using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QTabBar__Shape
{
	RoundedNorth = 0,
	RoundedSouth = 1,
	RoundedWest = 2,
	RoundedEast = 3,
	TriangularNorth = 4,
	TriangularSouth = 5,
	TriangularWest = 6,
	TriangularEast = 7,
}
[AllowDuplicates]
public enum QTabBar__ButtonPosition
{
	LeftSide = 0,
	RightSide = 1,
}
[AllowDuplicates]
public enum QTabBar__SelectionBehavior
{
	SelectLeftTab = 0,
	SelectRightTab = 1,
	SelectPreviousTab = 2,
}
public class QTabBar
{
	protected void* nativePtr;
	
	public this(void* parent)
	{
		this.nativePtr = CQt.QTabBar_new(parent);
	}
	
	public ~this()
	{
		CQt.QTabBar_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QTabBar_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QTabBar_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QTabBar_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QTabBar_Tr(s);
	}
	
	public int64 Shape()
	{
		return CQt.QTabBar_Shape(this.nativePtr);
	}
	
	public void SetShape(int64 shape)
	{
		CQt.QTabBar_SetShape(this.nativePtr, shape);
	}
	
	public int32 AddTab(libqt_string text)
	{
		return CQt.QTabBar_AddTab(this.nativePtr, text);
	}
	
	public int32 AddTab2(void* icon, libqt_string text)
	{
		return CQt.QTabBar_AddTab2(this.nativePtr, icon, text);
	}
	
	public int32 InsertTab(int32 index, libqt_string text)
	{
		return CQt.QTabBar_InsertTab(this.nativePtr, index, text);
	}
	
	public int32 InsertTab2(int32 index, void* icon, libqt_string text)
	{
		return CQt.QTabBar_InsertTab2(this.nativePtr, index, icon, text);
	}
	
	public void RemoveTab(int32 index)
	{
		CQt.QTabBar_RemoveTab(this.nativePtr, index);
	}
	
	public void MoveTab(int32 from, int32 to)
	{
		CQt.QTabBar_MoveTab(this.nativePtr, from, to);
	}
	
	public bool IsTabEnabled(int32 index)
	{
		return CQt.QTabBar_IsTabEnabled(this.nativePtr, index);
	}
	
	public void SetTabEnabled(int32 index, bool enabled)
	{
		CQt.QTabBar_SetTabEnabled(this.nativePtr, index, enabled);
	}
	
	public bool IsTabVisible(int32 index)
	{
		return CQt.QTabBar_IsTabVisible(this.nativePtr, index);
	}
	
	public void SetTabVisible(int32 index, bool visible)
	{
		CQt.QTabBar_SetTabVisible(this.nativePtr, index, visible);
	}
	
	public libqt_string TabText(int32 index)
	{
		return CQt.QTabBar_TabText(this.nativePtr, index);
	}
	
	public void SetTabText(int32 index, libqt_string text)
	{
		CQt.QTabBar_SetTabText(this.nativePtr, index, text);
	}
	
	public void TabTextColor(int32 index)
	{
		CQt.QTabBar_TabTextColor(this.nativePtr, index);
	}
	
	public void SetTabTextColor(int32 index, void* color)
	{
		CQt.QTabBar_SetTabTextColor(this.nativePtr, index, color);
	}
	
	public void TabIcon(int32 index)
	{
		CQt.QTabBar_TabIcon(this.nativePtr, index);
	}
	
	public void SetTabIcon(int32 index, void* icon)
	{
		CQt.QTabBar_SetTabIcon(this.nativePtr, index, icon);
	}
	
	public int64 ElideMode()
	{
		return CQt.QTabBar_ElideMode(this.nativePtr);
	}
	
	public void SetElideMode(int64 mode)
	{
		CQt.QTabBar_SetElideMode(this.nativePtr, mode);
	}
	
	public void SetTabToolTip(int32 index, libqt_string tip)
	{
		CQt.QTabBar_SetTabToolTip(this.nativePtr, index, tip);
	}
	
	public libqt_string TabToolTip(int32 index)
	{
		return CQt.QTabBar_TabToolTip(this.nativePtr, index);
	}
	
	public void SetTabWhatsThis(int32 index, libqt_string text)
	{
		CQt.QTabBar_SetTabWhatsThis(this.nativePtr, index, text);
	}
	
	public libqt_string TabWhatsThis(int32 index)
	{
		return CQt.QTabBar_TabWhatsThis(this.nativePtr, index);
	}
	
	public void SetTabData(int32 index, void* data)
	{
		CQt.QTabBar_SetTabData(this.nativePtr, index, data);
	}
	
	public void TabData(int32 index)
	{
		CQt.QTabBar_TabData(this.nativePtr, index);
	}
	
	public void TabRect(int32 index)
	{
		CQt.QTabBar_TabRect(this.nativePtr, index);
	}
	
	public int32 TabAt(void* pos)
	{
		return CQt.QTabBar_TabAt(this.nativePtr, pos);
	}
	
	public int32 CurrentIndex()
	{
		return CQt.QTabBar_CurrentIndex(this.nativePtr);
	}
	
	public int32 Count()
	{
		return CQt.QTabBar_Count(this.nativePtr);
	}
	
	public virtual void SizeHint()
	{
		CQt.QTabBar_SizeHint(this.nativePtr);
	}
	
	public virtual void MinimumSizeHint()
	{
		CQt.QTabBar_MinimumSizeHint(this.nativePtr);
	}
	
	public void SetDrawBase(bool drawTheBase)
	{
		CQt.QTabBar_SetDrawBase(this.nativePtr, drawTheBase);
	}
	
	public bool DrawBase()
	{
		return CQt.QTabBar_DrawBase(this.nativePtr);
	}
	
	public void IconSize()
	{
		CQt.QTabBar_IconSize(this.nativePtr);
	}
	
	public void SetIconSize(void* size)
	{
		CQt.QTabBar_SetIconSize(this.nativePtr, size);
	}
	
	public bool UsesScrollButtons()
	{
		return CQt.QTabBar_UsesScrollButtons(this.nativePtr);
	}
	
	public void SetUsesScrollButtons(bool useButtons)
	{
		CQt.QTabBar_SetUsesScrollButtons(this.nativePtr, useButtons);
	}
	
	public bool TabsClosable()
	{
		return CQt.QTabBar_TabsClosable(this.nativePtr);
	}
	
	public void SetTabsClosable(bool closable)
	{
		CQt.QTabBar_SetTabsClosable(this.nativePtr, closable);
	}
	
	public void SetTabButton(int32 index, int64 position, void* widget)
	{
		CQt.QTabBar_SetTabButton(this.nativePtr, index, position, widget);
	}
	
	public void* TabButton(int32 index, int64 position)
	{
		return CQt.QTabBar_TabButton(this.nativePtr, index, position);
	}
	
	public int64 SelectionBehaviorOnRemove()
	{
		return CQt.QTabBar_SelectionBehaviorOnRemove(this.nativePtr);
	}
	
	public void SetSelectionBehaviorOnRemove(int64 behavior)
	{
		CQt.QTabBar_SetSelectionBehaviorOnRemove(this.nativePtr, behavior);
	}
	
	public bool Expanding()
	{
		return CQt.QTabBar_Expanding(this.nativePtr);
	}
	
	public void SetExpanding(bool enabled)
	{
		CQt.QTabBar_SetExpanding(this.nativePtr, enabled);
	}
	
	public bool IsMovable()
	{
		return CQt.QTabBar_IsMovable(this.nativePtr);
	}
	
	public void SetMovable(bool movable)
	{
		CQt.QTabBar_SetMovable(this.nativePtr, movable);
	}
	
	public bool DocumentMode()
	{
		return CQt.QTabBar_DocumentMode(this.nativePtr);
	}
	
	public void SetDocumentMode(bool set)
	{
		CQt.QTabBar_SetDocumentMode(this.nativePtr, set);
	}
	
	public bool AutoHide()
	{
		return CQt.QTabBar_AutoHide(this.nativePtr);
	}
	
	public void SetAutoHide(bool hide)
	{
		CQt.QTabBar_SetAutoHide(this.nativePtr, hide);
	}
	
	public bool ChangeCurrentOnDrag()
	{
		return CQt.QTabBar_ChangeCurrentOnDrag(this.nativePtr);
	}
	
	public void SetChangeCurrentOnDrag(bool change)
	{
		CQt.QTabBar_SetChangeCurrentOnDrag(this.nativePtr, change);
	}
	
	public libqt_string AccessibleTabName(int32 index)
	{
		return CQt.QTabBar_AccessibleTabName(this.nativePtr, index);
	}
	
	public void SetAccessibleTabName(int32 index, libqt_string name)
	{
		CQt.QTabBar_SetAccessibleTabName(this.nativePtr, index, name);
	}
	
	public void SetCurrentIndex(int32 index)
	{
		CQt.QTabBar_SetCurrentIndex(this.nativePtr, index);
	}
	
	public virtual void TabSizeHint(int32 index)
	{
		CQt.QTabBar_TabSizeHint(this.nativePtr, index);
	}
	
	public virtual void MinimumTabSizeHint(int32 index)
	{
		CQt.QTabBar_MinimumTabSizeHint(this.nativePtr, index);
	}
	
	public virtual void TabInserted(int32 index)
	{
		CQt.QTabBar_TabInserted(this.nativePtr, index);
	}
	
	public virtual void TabRemoved(int32 index)
	{
		CQt.QTabBar_TabRemoved(this.nativePtr, index);
	}
	
	public virtual void TabLayoutChange()
	{
		CQt.QTabBar_TabLayoutChange(this.nativePtr);
	}
	
	public virtual bool Event(void* param1)
	{
		return CQt.QTabBar_Event(this.nativePtr, param1);
	}
	
	public virtual void ResizeEvent(void* param1)
	{
		CQt.QTabBar_ResizeEvent(this.nativePtr, param1);
	}
	
	public virtual void ShowEvent(void* param1)
	{
		CQt.QTabBar_ShowEvent(this.nativePtr, param1);
	}
	
	public virtual void HideEvent(void* param1)
	{
		CQt.QTabBar_HideEvent(this.nativePtr, param1);
	}
	
	public virtual void PaintEvent(void* param1)
	{
		CQt.QTabBar_PaintEvent(this.nativePtr, param1);
	}
	
	public virtual void MousePressEvent(void* param1)
	{
		CQt.QTabBar_MousePressEvent(this.nativePtr, param1);
	}
	
	public virtual void MouseMoveEvent(void* param1)
	{
		CQt.QTabBar_MouseMoveEvent(this.nativePtr, param1);
	}
	
	public virtual void MouseReleaseEvent(void* param1)
	{
		CQt.QTabBar_MouseReleaseEvent(this.nativePtr, param1);
	}
	
	public virtual void MouseDoubleClickEvent(void* param1)
	{
		CQt.QTabBar_MouseDoubleClickEvent(this.nativePtr, param1);
	}
	
	public virtual void WheelEvent(void* event)
	{
		CQt.QTabBar_WheelEvent(this.nativePtr, event);
	}
	
	public virtual void KeyPressEvent(void* param1)
	{
		CQt.QTabBar_KeyPressEvent(this.nativePtr, param1);
	}
	
	public virtual void ChangeEvent(void* param1)
	{
		CQt.QTabBar_ChangeEvent(this.nativePtr, param1);
	}
	
	public virtual void TimerEvent(void* event)
	{
		CQt.QTabBar_TimerEvent(this.nativePtr, event);
	}
	
	public virtual void InitStyleOption(void* option, int32 tabIndex)
	{
		CQt.QTabBar_InitStyleOption(this.nativePtr, option, tabIndex);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QTabBar_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QTabBar_Tr3(s, c, n);
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
	
	public void SetStyle(void* style)
	{
		CQt.QWidget_SetStyle(this.nativePtr, style);
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
	
	public bool IsEnabledTo(void* param1)
	{
		return CQt.QWidget_IsEnabledTo(this.nativePtr, param1);
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
	
	public void SetMinimumSize(void* minimumSize)
	{
		CQt.QWidget_SetMinimumSize(this.nativePtr, minimumSize);
	}
	
	public void SetMinimumSize2(int32 minw, int32 minh)
	{
		CQt.QWidget_SetMinimumSize2(this.nativePtr, minw, minh);
	}
	
	public void SetMaximumSize(void* maximumSize)
	{
		CQt.QWidget_SetMaximumSize(this.nativePtr, maximumSize);
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
	
	public void SetSizeIncrement(void* sizeIncrement)
	{
		CQt.QWidget_SetSizeIncrement(this.nativePtr, sizeIncrement);
	}
	
	public void SetSizeIncrement2(int32 w, int32 h)
	{
		CQt.QWidget_SetSizeIncrement2(this.nativePtr, w, h);
	}
	
	public void BaseSize()
	{
		CQt.QWidget_BaseSize(this.nativePtr);
	}
	
	public void SetBaseSize(void* baseSize)
	{
		CQt.QWidget_SetBaseSize(this.nativePtr, baseSize);
	}
	
	public void SetBaseSize2(int32 basew, int32 baseh)
	{
		CQt.QWidget_SetBaseSize2(this.nativePtr, basew, baseh);
	}
	
	public void SetFixedSize(void* fixedSize)
	{
		CQt.QWidget_SetFixedSize(this.nativePtr, fixedSize);
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
	
	public void MapToGlobal(void* param1)
	{
		CQt.QWidget_MapToGlobal(this.nativePtr, param1);
	}
	
	public void MapToGlobalWithQPoint(void* param1)
	{
		CQt.QWidget_MapToGlobalWithQPoint(this.nativePtr, param1);
	}
	
	public void MapFromGlobal(void* param1)
	{
		CQt.QWidget_MapFromGlobal(this.nativePtr, param1);
	}
	
	public void MapFromGlobalWithQPoint(void* param1)
	{
		CQt.QWidget_MapFromGlobalWithQPoint(this.nativePtr, param1);
	}
	
	public void MapToParent(void* param1)
	{
		CQt.QWidget_MapToParent(this.nativePtr, param1);
	}
	
	public void MapToParentWithQPoint(void* param1)
	{
		CQt.QWidget_MapToParentWithQPoint(this.nativePtr, param1);
	}
	
	public void MapFromParent(void* param1)
	{
		CQt.QWidget_MapFromParent(this.nativePtr, param1);
	}
	
	public void MapFromParentWithQPoint(void* param1)
	{
		CQt.QWidget_MapFromParentWithQPoint(this.nativePtr, param1);
	}
	
	public void MapTo(void* param1, void* param2)
	{
		CQt.QWidget_MapTo(this.nativePtr, param1, param2);
	}
	
	public void MapTo2(void* param1, void* param2)
	{
		CQt.QWidget_MapTo2(this.nativePtr, param1, param2);
	}
	
	public void MapFrom(void* param1, void* param2)
	{
		CQt.QWidget_MapFrom(this.nativePtr, param1, param2);
	}
	
	public void MapFrom2(void* param1, void* param2)
	{
		CQt.QWidget_MapFrom2(this.nativePtr, param1, param2);
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
	
	public void SetPalette(void* palette)
	{
		CQt.QWidget_SetPalette(this.nativePtr, palette);
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
	
	public void SetFont(void* font)
	{
		CQt.QWidget_SetFont(this.nativePtr, font);
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
	
	public void SetCursor(void* cursor)
	{
		CQt.QWidget_SetCursor(this.nativePtr, cursor);
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
	
	public void SetMask(void* mask)
	{
		CQt.QWidget_SetMask(this.nativePtr, mask);
	}
	
	public void SetMaskWithMask(void* mask)
	{
		CQt.QWidget_SetMaskWithMask(this.nativePtr, mask);
	}
	
	public void Mask()
	{
		CQt.QWidget_Mask(this.nativePtr);
	}
	
	public void ClearMask()
	{
		CQt.QWidget_ClearMask(this.nativePtr);
	}
	
	public void Render(void* target)
	{
		CQt.QWidget_Render(this.nativePtr, target);
	}
	
	public void RenderWithPainter(void* painter)
	{
		CQt.QWidget_RenderWithPainter(this.nativePtr, painter);
	}
	
	public void Grab()
	{
		CQt.QWidget_Grab(this.nativePtr);
	}
	
	public void* GraphicsEffect()
	{
		return CQt.QWidget_GraphicsEffect(this.nativePtr);
	}
	
	public void SetGraphicsEffect(void* effect)
	{
		CQt.QWidget_SetGraphicsEffect(this.nativePtr, effect);
	}
	
	public void GrabGesture(int64 typeVal)
	{
		CQt.QWidget_GrabGesture(this.nativePtr, typeVal);
	}
	
	public void UngrabGesture(int64 typeVal)
	{
		CQt.QWidget_UngrabGesture(this.nativePtr, typeVal);
	}
	
	public void SetWindowTitle(libqt_string windowTitle)
	{
		CQt.QWidget_SetWindowTitle(this.nativePtr, windowTitle);
	}
	
	public void SetStyleSheet(libqt_string styleSheet)
	{
		CQt.QWidget_SetStyleSheet(this.nativePtr, styleSheet);
	}
	
	public libqt_string StyleSheet()
	{
		return CQt.QWidget_StyleSheet(this.nativePtr);
	}
	
	public libqt_string WindowTitle()
	{
		return CQt.QWidget_WindowTitle(this.nativePtr);
	}
	
	public void SetWindowIcon(void* icon)
	{
		CQt.QWidget_SetWindowIcon(this.nativePtr, icon);
	}
	
	public void WindowIcon()
	{
		CQt.QWidget_WindowIcon(this.nativePtr);
	}
	
	public void SetWindowIconText(libqt_string windowIconText)
	{
		CQt.QWidget_SetWindowIconText(this.nativePtr, windowIconText);
	}
	
	public libqt_string WindowIconText()
	{
		return CQt.QWidget_WindowIconText(this.nativePtr);
	}
	
	public void SetWindowRole(libqt_string windowRole)
	{
		CQt.QWidget_SetWindowRole(this.nativePtr, windowRole);
	}
	
	public libqt_string WindowRole()
	{
		return CQt.QWidget_WindowRole(this.nativePtr);
	}
	
	public void SetWindowFilePath(libqt_string filePath)
	{
		CQt.QWidget_SetWindowFilePath(this.nativePtr, filePath);
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
	
	public void SetToolTip(libqt_string toolTip)
	{
		CQt.QWidget_SetToolTip(this.nativePtr, toolTip);
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
	
	public void SetStatusTip(libqt_string statusTip)
	{
		CQt.QWidget_SetStatusTip(this.nativePtr, statusTip);
	}
	
	public libqt_string StatusTip()
	{
		return CQt.QWidget_StatusTip(this.nativePtr);
	}
	
	public void SetWhatsThis(libqt_string whatsThis)
	{
		CQt.QWidget_SetWhatsThis(this.nativePtr, whatsThis);
	}
	
	public libqt_string WhatsThis()
	{
		return CQt.QWidget_WhatsThis(this.nativePtr);
	}
	
	public libqt_string AccessibleName()
	{
		return CQt.QWidget_AccessibleName(this.nativePtr);
	}
	
	public void SetAccessibleName(libqt_string name)
	{
		CQt.QWidget_SetAccessibleName(this.nativePtr, name);
	}
	
	public libqt_string AccessibleDescription()
	{
		return CQt.QWidget_AccessibleDescription(this.nativePtr);
	}
	
	public void SetAccessibleDescription(libqt_string description)
	{
		CQt.QWidget_SetAccessibleDescription(this.nativePtr, description);
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
	
	public void SetLocale(void* locale)
	{
		CQt.QWidget_SetLocale(this.nativePtr, locale);
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
	
	public static void SetTabOrder(void* param1, void* param2)
	{
		CQt.QWidget_SetTabOrder(param1, param2);
	}
	
	public void SetFocusProxy(void* focusProxy)
	{
		CQt.QWidget_SetFocusProxy(this.nativePtr, focusProxy);
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
	
	public void GrabMouseWithQCursor(void* param1)
	{
		CQt.QWidget_GrabMouseWithQCursor(this.nativePtr, param1);
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
	
	public int32 GrabShortcut(void* key)
	{
		return CQt.QWidget_GrabShortcut(this.nativePtr, key);
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
	
	public void UpdateWithQRect(void* param1)
	{
		CQt.QWidget_UpdateWithQRect(this.nativePtr, param1);
	}
	
	public void UpdateWithQRegion(void* param1)
	{
		CQt.QWidget_UpdateWithQRegion(this.nativePtr, param1);
	}
	
	public void Repaint2(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_Repaint2(this.nativePtr, x, y, w, h);
	}
	
	public void RepaintWithQRect(void* param1)
	{
		CQt.QWidget_RepaintWithQRect(this.nativePtr, param1);
	}
	
	public void RepaintWithQRegion(void* param1)
	{
		CQt.QWidget_RepaintWithQRegion(this.nativePtr, param1);
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
	
	public void StackUnder(void* param1)
	{
		CQt.QWidget_StackUnder(this.nativePtr, param1);
	}
	
	public void Move(int32 x, int32 y)
	{
		CQt.QWidget_Move(this.nativePtr, x, y);
	}
	
	public void MoveWithQPoint(void* param1)
	{
		CQt.QWidget_MoveWithQPoint(this.nativePtr, param1);
	}
	
	public void Resize(int32 w, int32 h)
	{
		CQt.QWidget_Resize(this.nativePtr, w, h);
	}
	
	public void ResizeWithQSize(void* param1)
	{
		CQt.QWidget_ResizeWithQSize(this.nativePtr, param1);
	}
	
	public void SetGeometry(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_SetGeometry(this.nativePtr, x, y, w, h);
	}
	
	public void SetGeometryWithGeometry(void* geometry)
	{
		CQt.QWidget_SetGeometryWithGeometry(this.nativePtr, geometry);
	}
	
	public libqt_string SaveGeometry()
	{
		return CQt.QWidget_SaveGeometry(this.nativePtr);
	}
	
	public bool RestoreGeometry(libqt_string geometry)
	{
		return CQt.QWidget_RestoreGeometry(this.nativePtr, geometry);
	}
	
	public void AdjustSize()
	{
		CQt.QWidget_AdjustSize(this.nativePtr);
	}
	
	public bool IsVisible()
	{
		return CQt.QWidget_IsVisible(this.nativePtr);
	}
	
	public bool IsVisibleTo(void* param1)
	{
		return CQt.QWidget_IsVisibleTo(this.nativePtr, param1);
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
	
	public void SizePolicy()
	{
		CQt.QWidget_SizePolicy(this.nativePtr);
	}
	
	public void SetSizePolicy(void sizePolicy)
	{
		CQt.QWidget_SetSizePolicy(this.nativePtr, sizePolicy);
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
	
	public void SetContentsMarginsWithMargins(void* margins)
	{
		CQt.QWidget_SetContentsMarginsWithMargins(this.nativePtr, margins);
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
	
	public void SetLayout(void* layout)
	{
		CQt.QWidget_SetLayout(this.nativePtr, layout);
	}
	
	public void UpdateGeometry()
	{
		CQt.QWidget_UpdateGeometry(this.nativePtr);
	}
	
	public void SetParent(void* parent)
	{
		CQt.QWidget_SetParent(this.nativePtr, parent);
	}
	
	public void SetParent2(void* parent, int64 f)
	{
		CQt.QWidget_SetParent2(this.nativePtr, parent, f);
	}
	
	public void Scroll(int32 dx, int32 dy)
	{
		CQt.QWidget_Scroll(this.nativePtr, dx, dy);
	}
	
	public void Scroll2(int32 dx, int32 dy, void* param3)
	{
		CQt.QWidget_Scroll2(this.nativePtr, dx, dy, param3);
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
	
	public void AddAction(void* action)
	{
		CQt.QWidget_AddAction(this.nativePtr, action);
	}
	
	public void AddActions(void*[] actions)
	{
		CQt.QWidget_AddActions(this.nativePtr, actions);
	}
	
	public void InsertActions(void* before, void*[] actions)
	{
		CQt.QWidget_InsertActions(this.nativePtr, before, actions);
	}
	
	public void InsertAction(void* before, void* action)
	{
		CQt.QWidget_InsertAction(this.nativePtr, before, action);
	}
	
	public void RemoveAction(void* action)
	{
		CQt.QWidget_RemoveAction(this.nativePtr, action);
	}
	
	public void*[] Actions()
	{
		return CQt.QWidget_Actions(this.nativePtr);
	}
	
	public void* AddActionWithText(libqt_string text)
	{
		return CQt.QWidget_AddActionWithText(this.nativePtr, text);
	}
	
	public void* AddAction2(void* icon, libqt_string text)
	{
		return CQt.QWidget_AddAction2(this.nativePtr, icon, text);
	}
	
	public void* AddAction3(libqt_string text, void* shortcut)
	{
		return CQt.QWidget_AddAction3(this.nativePtr, text, shortcut);
	}
	
	public void* AddAction4(void* icon, libqt_string text, void* shortcut)
	{
		return CQt.QWidget_AddAction4(this.nativePtr, icon, text, shortcut);
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
	
	public void* ChildAtWithQPoint(void* p)
	{
		return CQt.QWidget_ChildAtWithQPoint(this.nativePtr, p);
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
	
	public bool IsAncestorOf(void* child)
	{
		return CQt.QWidget_IsAncestorOf(this.nativePtr, child);
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
	
	public void SetScreen(void* screen)
	{
		CQt.QWidget_SetScreen(this.nativePtr, screen);
	}
	
	public static void* CreateWindowContainer(void* window)
	{
		return CQt.QWidget_CreateWindowContainer(window);
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
	
	public void Render2(void* target, void* targetOffset)
	{
		CQt.QWidget_Render2(this.nativePtr, target, targetOffset);
	}
	
	public void Render3(void* target, void* targetOffset, void* sourceRegion)
	{
		CQt.QWidget_Render3(this.nativePtr, target, targetOffset, sourceRegion);
	}
	
	public void Render4(void* target, void* targetOffset, void* sourceRegion, int64 renderFlags)
	{
		CQt.QWidget_Render4(this.nativePtr, target, targetOffset, sourceRegion, renderFlags);
	}
	
	public void Render22(void* painter, void* targetOffset)
	{
		CQt.QWidget_Render22(this.nativePtr, painter, targetOffset);
	}
	
	public void Render32(void* painter, void* targetOffset, void* sourceRegion)
	{
		CQt.QWidget_Render32(this.nativePtr, painter, targetOffset, sourceRegion);
	}
	
	public void Render42(void* painter, void* targetOffset, void* sourceRegion, int64 renderFlags)
	{
		CQt.QWidget_Render42(this.nativePtr, painter, targetOffset, sourceRegion, renderFlags);
	}
	
	public void Grab1(void* rectangle)
	{
		CQt.QWidget_Grab1(this.nativePtr, rectangle);
	}
	
	public void GrabGesture2(int64 typeVal, int64 flags)
	{
		CQt.QWidget_GrabGesture2(this.nativePtr, typeVal, flags);
	}
	
	public int32 GrabShortcut2(void* key, int64 context)
	{
		return CQt.QWidget_GrabShortcut2(this.nativePtr, key, context);
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
	
	public static void* CreateWindowContainer2(void* window, void* parent)
	{
		return CQt.QWidget_CreateWindowContainer2(window, parent);
	}
	
	public static void* CreateWindowContainer3(void* window, void* parent, int64 flags)
	{
		return CQt.QWidget_CreateWindowContainer3(window, parent, flags);
	}
	
	public virtual bool EventFilter(void* watched, void* event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, watched, event);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(void name)
	{
		CQt.QObject_SetObjectName(this.nativePtr, name);
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
	
	public void MoveToThread(void* thread)
	{
		CQt.QObject_MoveToThread(this.nativePtr, thread);
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
	
	public void InstallEventFilter(void* filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, filterObj);
	}
	
	public void RemoveEventFilter(void* obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, obj);
	}
	
	public static QMetaObject__Connection Connect(void* sender, void* signal, void* receiver, void* method)
	{
		return CQt.QObject_Connect(sender, signal, receiver, method);
	}
	
	public QMetaObject__Connection Connect2(void* sender, char8[] signal, char8[] member)
	{
		return CQt.QObject_Connect2(this.nativePtr, sender, signal, member);
	}
	
	public static bool Disconnect(void* sender, void* signal, void* receiver, void* member)
	{
		return CQt.QObject_Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__Connection* param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection(param1);
	}
	
	public void DumpObjectTree()
	{
		CQt.QObject_DumpObjectTree(this.nativePtr);
	}
	
	public void DumpObjectInfo()
	{
		CQt.QObject_DumpObjectInfo(this.nativePtr);
	}
	
	public bool SetProperty(char8[] name, void* value)
	{
		return CQt.QObject_SetProperty(this.nativePtr, name, value);
	}
	
	public void Property(char8[] name)
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
	
	public bool Inherits(char8[] classname)
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
	
	public static QMetaObject__Connection Connect5(void* sender, void* signal, void* receiver, void* method, int64 typeVal)
	{
		return CQt.QObject_Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public QMetaObject__Connection Connect4(void* sender, char8[] signal, char8[] member, int64 typeVal)
	{
		return CQt.QObject_Connect4(this.nativePtr, sender, signal, member, typeVal);
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
	[LinkName("QTabBar_new")]
	public static extern void* QTabBar_new(void* parent);
	[LinkName("QTabBar_new2")]
	public static extern void* QTabBar_new2();
	[LinkName("QTabBar_MetaObject")]
	public static extern void* QTabBar_MetaObject(void* c_this);
	[LinkName("QTabBar_Metacast")]
	public static extern void* QTabBar_Metacast(void* c_this, char8[] param1);
	[LinkName("QTabBar_Metacall")]
	public static extern int32 QTabBar_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QTabBar_Tr")]
	public static extern libqt_string QTabBar_Tr(char8[] s);
	[LinkName("QTabBar_Shape")]
	public static extern int64 QTabBar_Shape(void* c_this);
	[LinkName("QTabBar_SetShape")]
	public static extern void QTabBar_SetShape(void* c_this, int64 shape);
	[LinkName("QTabBar_AddTab")]
	public static extern int32 QTabBar_AddTab(void* c_this, libqt_string text);
	[LinkName("QTabBar_AddTab2")]
	public static extern int32 QTabBar_AddTab2(void* c_this, void* icon, libqt_string text);
	[LinkName("QTabBar_InsertTab")]
	public static extern int32 QTabBar_InsertTab(void* c_this, int32 index, libqt_string text);
	[LinkName("QTabBar_InsertTab2")]
	public static extern int32 QTabBar_InsertTab2(void* c_this, int32 index, void* icon, libqt_string text);
	[LinkName("QTabBar_RemoveTab")]
	public static extern void QTabBar_RemoveTab(void* c_this, int32 index);
	[LinkName("QTabBar_MoveTab")]
	public static extern void QTabBar_MoveTab(void* c_this, int32 from, int32 to);
	[LinkName("QTabBar_IsTabEnabled")]
	public static extern bool QTabBar_IsTabEnabled(void* c_this, int32 index);
	[LinkName("QTabBar_SetTabEnabled")]
	public static extern void QTabBar_SetTabEnabled(void* c_this, int32 index, bool enabled);
	[LinkName("QTabBar_IsTabVisible")]
	public static extern bool QTabBar_IsTabVisible(void* c_this, int32 index);
	[LinkName("QTabBar_SetTabVisible")]
	public static extern void QTabBar_SetTabVisible(void* c_this, int32 index, bool visible);
	[LinkName("QTabBar_TabText")]
	public static extern libqt_string QTabBar_TabText(void* c_this, int32 index);
	[LinkName("QTabBar_SetTabText")]
	public static extern void QTabBar_SetTabText(void* c_this, int32 index, libqt_string text);
	[LinkName("QTabBar_TabTextColor")]
	public static extern void QTabBar_TabTextColor(void* c_this, int32 index);
	[LinkName("QTabBar_SetTabTextColor")]
	public static extern void QTabBar_SetTabTextColor(void* c_this, int32 index, void* color);
	[LinkName("QTabBar_TabIcon")]
	public static extern void QTabBar_TabIcon(void* c_this, int32 index);
	[LinkName("QTabBar_SetTabIcon")]
	public static extern void QTabBar_SetTabIcon(void* c_this, int32 index, void* icon);
	[LinkName("QTabBar_ElideMode")]
	public static extern int64 QTabBar_ElideMode(void* c_this);
	[LinkName("QTabBar_SetElideMode")]
	public static extern void QTabBar_SetElideMode(void* c_this, int64 mode);
	[LinkName("QTabBar_SetTabToolTip")]
	public static extern void QTabBar_SetTabToolTip(void* c_this, int32 index, libqt_string tip);
	[LinkName("QTabBar_TabToolTip")]
	public static extern libqt_string QTabBar_TabToolTip(void* c_this, int32 index);
	[LinkName("QTabBar_SetTabWhatsThis")]
	public static extern void QTabBar_SetTabWhatsThis(void* c_this, int32 index, libqt_string text);
	[LinkName("QTabBar_TabWhatsThis")]
	public static extern libqt_string QTabBar_TabWhatsThis(void* c_this, int32 index);
	[LinkName("QTabBar_SetTabData")]
	public static extern void QTabBar_SetTabData(void* c_this, int32 index, void* data);
	[LinkName("QTabBar_TabData")]
	public static extern void QTabBar_TabData(void* c_this, int32 index);
	[LinkName("QTabBar_TabRect")]
	public static extern void QTabBar_TabRect(void* c_this, int32 index);
	[LinkName("QTabBar_TabAt")]
	public static extern int32 QTabBar_TabAt(void* c_this, void* pos);
	[LinkName("QTabBar_CurrentIndex")]
	public static extern int32 QTabBar_CurrentIndex(void* c_this);
	[LinkName("QTabBar_Count")]
	public static extern int32 QTabBar_Count(void* c_this);
	[LinkName("QTabBar_SizeHint")]
	public static extern void QTabBar_SizeHint(void* c_this);
	[LinkName("QTabBar_MinimumSizeHint")]
	public static extern void QTabBar_MinimumSizeHint(void* c_this);
	[LinkName("QTabBar_SetDrawBase")]
	public static extern void QTabBar_SetDrawBase(void* c_this, bool drawTheBase);
	[LinkName("QTabBar_DrawBase")]
	public static extern bool QTabBar_DrawBase(void* c_this);
	[LinkName("QTabBar_IconSize")]
	public static extern void QTabBar_IconSize(void* c_this);
	[LinkName("QTabBar_SetIconSize")]
	public static extern void QTabBar_SetIconSize(void* c_this, void* size);
	[LinkName("QTabBar_UsesScrollButtons")]
	public static extern bool QTabBar_UsesScrollButtons(void* c_this);
	[LinkName("QTabBar_SetUsesScrollButtons")]
	public static extern void QTabBar_SetUsesScrollButtons(void* c_this, bool useButtons);
	[LinkName("QTabBar_TabsClosable")]
	public static extern bool QTabBar_TabsClosable(void* c_this);
	[LinkName("QTabBar_SetTabsClosable")]
	public static extern void QTabBar_SetTabsClosable(void* c_this, bool closable);
	[LinkName("QTabBar_SetTabButton")]
	public static extern void QTabBar_SetTabButton(void* c_this, int32 index, int64 position, void* widget);
	[LinkName("QTabBar_TabButton")]
	public static extern void* QTabBar_TabButton(void* c_this, int32 index, int64 position);
	[LinkName("QTabBar_SelectionBehaviorOnRemove")]
	public static extern int64 QTabBar_SelectionBehaviorOnRemove(void* c_this);
	[LinkName("QTabBar_SetSelectionBehaviorOnRemove")]
	public static extern void QTabBar_SetSelectionBehaviorOnRemove(void* c_this, int64 behavior);
	[LinkName("QTabBar_Expanding")]
	public static extern bool QTabBar_Expanding(void* c_this);
	[LinkName("QTabBar_SetExpanding")]
	public static extern void QTabBar_SetExpanding(void* c_this, bool enabled);
	[LinkName("QTabBar_IsMovable")]
	public static extern bool QTabBar_IsMovable(void* c_this);
	[LinkName("QTabBar_SetMovable")]
	public static extern void QTabBar_SetMovable(void* c_this, bool movable);
	[LinkName("QTabBar_DocumentMode")]
	public static extern bool QTabBar_DocumentMode(void* c_this);
	[LinkName("QTabBar_SetDocumentMode")]
	public static extern void QTabBar_SetDocumentMode(void* c_this, bool set);
	[LinkName("QTabBar_AutoHide")]
	public static extern bool QTabBar_AutoHide(void* c_this);
	[LinkName("QTabBar_SetAutoHide")]
	public static extern void QTabBar_SetAutoHide(void* c_this, bool hide);
	[LinkName("QTabBar_ChangeCurrentOnDrag")]
	public static extern bool QTabBar_ChangeCurrentOnDrag(void* c_this);
	[LinkName("QTabBar_SetChangeCurrentOnDrag")]
	public static extern void QTabBar_SetChangeCurrentOnDrag(void* c_this, bool change);
	[LinkName("QTabBar_AccessibleTabName")]
	public static extern libqt_string QTabBar_AccessibleTabName(void* c_this, int32 index);
	[LinkName("QTabBar_SetAccessibleTabName")]
	public static extern void QTabBar_SetAccessibleTabName(void* c_this, int32 index, libqt_string name);
	[LinkName("QTabBar_SetCurrentIndex")]
	public static extern void QTabBar_SetCurrentIndex(void* c_this, int32 index);
	[LinkName("QTabBar_Connect_CurrentChanged")]
	public static extern void QTabBar_Connect_CurrentChanged(void* c_this, c_intptr slot);
	[LinkName("QTabBar_Connect_TabCloseRequested")]
	public static extern void QTabBar_Connect_TabCloseRequested(void* c_this, c_intptr slot);
	[LinkName("QTabBar_Connect_TabMoved")]
	public static extern void QTabBar_Connect_TabMoved(void* c_this, c_intptr slot);
	[LinkName("QTabBar_Connect_TabBarClicked")]
	public static extern void QTabBar_Connect_TabBarClicked(void* c_this, c_intptr slot);
	[LinkName("QTabBar_Connect_TabBarDoubleClicked")]
	public static extern void QTabBar_Connect_TabBarDoubleClicked(void* c_this, c_intptr slot);
	[LinkName("QTabBar_TabSizeHint")]
	public static extern void QTabBar_TabSizeHint(void* c_this, int32 index);
	[LinkName("QTabBar_MinimumTabSizeHint")]
	public static extern void QTabBar_MinimumTabSizeHint(void* c_this, int32 index);
	[LinkName("QTabBar_TabInserted")]
	public static extern void QTabBar_TabInserted(void* c_this, int32 index);
	[LinkName("QTabBar_TabRemoved")]
	public static extern void QTabBar_TabRemoved(void* c_this, int32 index);
	[LinkName("QTabBar_TabLayoutChange")]
	public static extern void QTabBar_TabLayoutChange(void* c_this);
	[LinkName("QTabBar_Event")]
	public static extern bool QTabBar_Event(void* c_this, void* param1);
	[LinkName("QTabBar_ResizeEvent")]
	public static extern void QTabBar_ResizeEvent(void* c_this, void* param1);
	[LinkName("QTabBar_ShowEvent")]
	public static extern void QTabBar_ShowEvent(void* c_this, void* param1);
	[LinkName("QTabBar_HideEvent")]
	public static extern void QTabBar_HideEvent(void* c_this, void* param1);
	[LinkName("QTabBar_PaintEvent")]
	public static extern void QTabBar_PaintEvent(void* c_this, void* param1);
	[LinkName("QTabBar_MousePressEvent")]
	public static extern void QTabBar_MousePressEvent(void* c_this, void* param1);
	[LinkName("QTabBar_MouseMoveEvent")]
	public static extern void QTabBar_MouseMoveEvent(void* c_this, void* param1);
	[LinkName("QTabBar_MouseReleaseEvent")]
	public static extern void QTabBar_MouseReleaseEvent(void* c_this, void* param1);
	[LinkName("QTabBar_MouseDoubleClickEvent")]
	public static extern void QTabBar_MouseDoubleClickEvent(void* c_this, void* param1);
	[LinkName("QTabBar_WheelEvent")]
	public static extern void QTabBar_WheelEvent(void* c_this, void* event);
	[LinkName("QTabBar_KeyPressEvent")]
	public static extern void QTabBar_KeyPressEvent(void* c_this, void* param1);
	[LinkName("QTabBar_ChangeEvent")]
	public static extern void QTabBar_ChangeEvent(void* c_this, void* param1);
	[LinkName("QTabBar_TimerEvent")]
	public static extern void QTabBar_TimerEvent(void* c_this, void* event);
	[LinkName("QTabBar_InitStyleOption")]
	public static extern void QTabBar_InitStyleOption(void* c_this, void* option, int32 tabIndex);
	[LinkName("QTabBar_Tr2")]
	public static extern libqt_string QTabBar_Tr2(char8[] s, char8[] c);
	[LinkName("QTabBar_Tr3")]
	public static extern libqt_string QTabBar_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QTabBar_Delete")]
	public static extern void QTabBar_Delete(void* self);
}