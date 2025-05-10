using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QStyleOption__OptionType
{
	SO_Default = 0,
	SO_FocusRect = 1,
	SO_Button = 2,
	SO_Tab = 3,
	SO_MenuItem = 4,
	SO_Frame = 5,
	SO_ProgressBar = 6,
	SO_ToolBox = 7,
	SO_Header = 8,
	SO_DockWidget = 9,
	SO_ViewItem = 10,
	SO_TabWidgetFrame = 11,
	SO_TabBarBase = 12,
	SO_RubberBand = 13,
	SO_ToolBar = 14,
	SO_GraphicsItem = 15,
	SO_Complex = 983040,
	SO_Slider = 983041,
	SO_SpinBox = 983042,
	SO_ToolButton = 983043,
	SO_ComboBox = 983044,
	SO_TitleBar = 983045,
	SO_GroupBox = 983046,
	SO_SizeGrip = 983047,
	SO_CustomBase = 3840,
	SO_ComplexCustomBase = 251658240,
}
[AllowDuplicates]
public enum QStyleOption__StyleOptionType
{
	Type = 0,
}
[AllowDuplicates]
public enum QStyleOption__StyleOptionVersion
{
	Version = 1,
}
[AllowDuplicates]
public enum QStyleOptionFocusRect__StyleOptionType
{
	Type = 1,
}
[AllowDuplicates]
public enum QStyleOptionFocusRect__StyleOptionVersion
{
	Version = 1,
}
[AllowDuplicates]
public enum QStyleOptionFrame__StyleOptionType
{
	Type = 5,
}
[AllowDuplicates]
public enum QStyleOptionFrame__StyleOptionVersion
{
	Version = 1,
}
[AllowDuplicates]
public enum QStyleOptionFrame__FrameFeature
{
	None = 0,
	Flat = 1,
	Rounded = 2,
}
[AllowDuplicates]
public enum QStyleOptionTabWidgetFrame__StyleOptionType
{
	Type = 11,
}
[AllowDuplicates]
public enum QStyleOptionTabWidgetFrame__StyleOptionVersion
{
	Version = 1,
}
[AllowDuplicates]
public enum QStyleOptionTabBarBase__StyleOptionType
{
	Type = 12,
}
[AllowDuplicates]
public enum QStyleOptionTabBarBase__StyleOptionVersion
{
	Version = 1,
}
[AllowDuplicates]
public enum QStyleOptionHeader__StyleOptionType
{
	Type = 8,
}
[AllowDuplicates]
public enum QStyleOptionHeader__StyleOptionVersion
{
	Version = 1,
}
[AllowDuplicates]
public enum QStyleOptionHeader__SectionPosition
{
	Beginning = 0,
	Middle = 1,
	End = 2,
	OnlyOneSection = 3,
}
[AllowDuplicates]
public enum QStyleOptionHeader__SelectedPosition
{
	NotAdjacent = 0,
	NextIsSelected = 1,
	PreviousIsSelected = 2,
	NextAndPreviousAreSelected = 3,
}
[AllowDuplicates]
public enum QStyleOptionHeader__SortIndicator
{
	None = 0,
	SortUp = 1,
	SortDown = 2,
}
[AllowDuplicates]
public enum QStyleOptionHeaderV2__StyleOptionType
{
	Type = 8,
}
[AllowDuplicates]
public enum QStyleOptionHeaderV2__StyleOptionVersion
{
	Version = 2,
}
[AllowDuplicates]
public enum QStyleOptionButton__StyleOptionType
{
	Type = 2,
}
[AllowDuplicates]
public enum QStyleOptionButton__StyleOptionVersion
{
	Version = 1,
}
[AllowDuplicates]
public enum QStyleOptionButton__ButtonFeature
{
	None = 0,
	Flat = 1,
	HasMenu = 2,
	DefaultButton = 4,
	AutoDefaultButton = 8,
	CommandLinkButton = 16,
}
[AllowDuplicates]
public enum QStyleOptionTab__StyleOptionType
{
	Type = 3,
}
[AllowDuplicates]
public enum QStyleOptionTab__StyleOptionVersion
{
	Version = 1,
}
[AllowDuplicates]
public enum QStyleOptionTab__TabPosition
{
	Beginning = 0,
	Middle = 1,
	End = 2,
	OnlyOneTab = 3,
}
[AllowDuplicates]
public enum QStyleOptionTab__SelectedPosition
{
	NotAdjacent = 0,
	NextIsSelected = 1,
	PreviousIsSelected = 2,
}
[AllowDuplicates]
public enum QStyleOptionTab__CornerWidget
{
	NoCornerWidgets = 0,
	LeftCornerWidget = 1,
	RightCornerWidget = 2,
}
[AllowDuplicates]
public enum QStyleOptionTab__TabFeature
{
	None = 0,
	HasFrame = 1,
}
[AllowDuplicates]
public enum QStyleOptionToolBar__StyleOptionType
{
	Type = 14,
}
[AllowDuplicates]
public enum QStyleOptionToolBar__StyleOptionVersion
{
	Version = 1,
}
[AllowDuplicates]
public enum QStyleOptionToolBar__ToolBarPosition
{
	Beginning = 0,
	Middle = 1,
	End = 2,
	OnlyOne = 3,
}
[AllowDuplicates]
public enum QStyleOptionToolBar__ToolBarFeature
{
	None = 0,
	Movable = 1,
}
[AllowDuplicates]
public enum QStyleOptionProgressBar__StyleOptionType
{
	Type = 6,
}
[AllowDuplicates]
public enum QStyleOptionProgressBar__StyleOptionVersion
{
	Version = 1,
}
[AllowDuplicates]
public enum QStyleOptionMenuItem__StyleOptionType
{
	Type = 4,
}
[AllowDuplicates]
public enum QStyleOptionMenuItem__StyleOptionVersion
{
	Version = 1,
}
[AllowDuplicates]
public enum QStyleOptionMenuItem__MenuItemType
{
	Normal = 0,
	DefaultItem = 1,
	Separator = 2,
	SubMenu = 3,
	Scroller = 4,
	TearOff = 5,
	Margin = 6,
	EmptyArea = 7,
}
[AllowDuplicates]
public enum QStyleOptionMenuItem__CheckType
{
	NotCheckable = 0,
	Exclusive = 1,
	NonExclusive = 2,
}
[AllowDuplicates]
public enum QStyleOptionDockWidget__StyleOptionType
{
	Type = 9,
}
[AllowDuplicates]
public enum QStyleOptionDockWidget__StyleOptionVersion
{
	Version = 1,
}
[AllowDuplicates]
public enum QStyleOptionViewItem__StyleOptionType
{
	Type = 10,
}
[AllowDuplicates]
public enum QStyleOptionViewItem__StyleOptionVersion
{
	Version = 1,
}
[AllowDuplicates]
public enum QStyleOptionViewItem__Position
{
	Left = 0,
	Right = 1,
	Top = 2,
	Bottom = 3,
}
[AllowDuplicates]
public enum QStyleOptionViewItem__ViewItemFeature
{
	None = 0,
	WrapText = 1,
	Alternate = 2,
	HasCheckIndicator = 4,
	HasDisplay = 8,
	HasDecoration = 16,
}
[AllowDuplicates]
public enum QStyleOptionViewItem__ViewItemPosition
{
	Invalid = 0,
	Beginning = 1,
	Middle = 2,
	End = 3,
	OnlyOne = 4,
}
[AllowDuplicates]
public enum QStyleOptionToolBox__StyleOptionType
{
	Type = 7,
}
[AllowDuplicates]
public enum QStyleOptionToolBox__StyleOptionVersion
{
	Version = 1,
}
[AllowDuplicates]
public enum QStyleOptionToolBox__TabPosition
{
	Beginning = 0,
	Middle = 1,
	End = 2,
	OnlyOneTab = 3,
}
[AllowDuplicates]
public enum QStyleOptionToolBox__SelectedPosition
{
	NotAdjacent = 0,
	NextIsSelected = 1,
	PreviousIsSelected = 2,
}
[AllowDuplicates]
public enum QStyleOptionRubberBand__StyleOptionType
{
	Type = 13,
}
[AllowDuplicates]
public enum QStyleOptionRubberBand__StyleOptionVersion
{
	Version = 1,
}
[AllowDuplicates]
public enum QStyleOptionComplex__StyleOptionType
{
	Type = 983040,
}
[AllowDuplicates]
public enum QStyleOptionComplex__StyleOptionVersion
{
	Version = 1,
}
[AllowDuplicates]
public enum QStyleOptionSlider__StyleOptionType
{
	Type = 983041,
}
[AllowDuplicates]
public enum QStyleOptionSlider__StyleOptionVersion
{
	Version = 1,
}
[AllowDuplicates]
public enum QStyleOptionSpinBox__StyleOptionType
{
	Type = 983042,
}
[AllowDuplicates]
public enum QStyleOptionSpinBox__StyleOptionVersion
{
	Version = 1,
}
[AllowDuplicates]
public enum QStyleOptionToolButton__StyleOptionType
{
	Type = 983043,
}
[AllowDuplicates]
public enum QStyleOptionToolButton__StyleOptionVersion
{
	Version = 1,
}
[AllowDuplicates]
public enum QStyleOptionToolButton__ToolButtonFeature
{
	None = 0,
	Arrow = 1,
	Menu = 4,
	MenuButtonPopup = 4,
	PopupDelay = 8,
	HasMenu = 16,
}
[AllowDuplicates]
public enum QStyleOptionComboBox__StyleOptionType
{
	Type = 983044,
}
[AllowDuplicates]
public enum QStyleOptionComboBox__StyleOptionVersion
{
	Version = 1,
}
[AllowDuplicates]
public enum QStyleOptionTitleBar__StyleOptionType
{
	Type = 983045,
}
[AllowDuplicates]
public enum QStyleOptionTitleBar__StyleOptionVersion
{
	Version = 1,
}
[AllowDuplicates]
public enum QStyleOptionGroupBox__StyleOptionType
{
	Type = 983046,
}
[AllowDuplicates]
public enum QStyleOptionGroupBox__StyleOptionVersion
{
	Version = 1,
}
[AllowDuplicates]
public enum QStyleOptionSizeGrip__StyleOptionType
{
	Type = 983047,
}
[AllowDuplicates]
public enum QStyleOptionSizeGrip__StyleOptionVersion
{
	Version = 1,
}
[AllowDuplicates]
public enum QStyleOptionGraphicsItem__StyleOptionType
{
	Type = 15,
}
[AllowDuplicates]
public enum QStyleOptionGraphicsItem__StyleOptionVersion
{
	Version = 1,
}
[AllowDuplicates]
public enum QStyleHintReturn__HintReturnType
{
	SH_Default = 61440,
	SH_Mask = 61441,
	SH_Variant = 61442,
}
[AllowDuplicates]
public enum QStyleHintReturn__StyleOptionType
{
	Type = 61440,
}
[AllowDuplicates]
public enum QStyleHintReturn__StyleOptionVersion
{
	Version = 1,
}
[AllowDuplicates]
public enum QStyleHintReturnMask__StyleOptionType
{
	Type = 61441,
}
[AllowDuplicates]
public enum QStyleHintReturnMask__StyleOptionVersion
{
	Version = 1,
}
[AllowDuplicates]
public enum QStyleHintReturnVariant__StyleOptionType
{
	Type = 61442,
}
[AllowDuplicates]
public enum QStyleHintReturnVariant__StyleOptionVersion
{
	Version = 1,
}
public interface IQStyleOption
{
	void* NativePtr { get; }
}
public class QStyleOption : IQStyleOption
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QStyleOption_new();
	}
	
	public ~this()
	{
		CQt.QStyleOption_Delete(this.nativePtr);
	}
	
	public void InitFrom(IQWidget w)
	{
		CQt.QStyleOption_InitFrom(this.nativePtr, (w == null) ? null : (void*)w.NativePtr);
	}
	
	public void OperatorAssign(IQStyleOption other)
	{
		CQt.QStyleOption_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QStyleOption_new")]
	public static extern void* QStyleOption_new();
	[LinkName("QStyleOption_new2")]
	public static extern void* QStyleOption_new2(void* other);
	[LinkName("QStyleOption_new3")]
	public static extern void* QStyleOption_new3(int32 version);
	[LinkName("QStyleOption_new4")]
	public static extern void* QStyleOption_new4(int32 version, int32 typeVal);
	[LinkName("QStyleOption_InitFrom")]
	public static extern void QStyleOption_InitFrom(void* c_this, void* w);
	[LinkName("QStyleOption_OperatorAssign")]
	public static extern void QStyleOption_OperatorAssign(void* c_this, void* other);
	/// Delete this object from C++ memory
	[LinkName("QStyleOption_Delete")]
	public static extern void QStyleOption_Delete(void* self);
}
public interface IQStyleOptionFocusRect
{
	void* NativePtr { get; }
}
public class QStyleOptionFocusRect : IQStyleOptionFocusRect, IQStyleOption
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QStyleOptionFocusRect_new();
	}
	
	public ~this()
	{
		CQt.QStyleOptionFocusRect_Delete(this.nativePtr);
	}
	
	public void InitFrom(IQWidget w)
	{
		CQt.QStyleOption_InitFrom(this.nativePtr, (w == null) ? null : (void*)w.NativePtr);
	}
	
	public void OperatorAssign(IQStyleOption other)
	{
		CQt.QStyleOption_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QStyleOptionFocusRect_new")]
	public static extern void* QStyleOptionFocusRect_new();
	[LinkName("QStyleOptionFocusRect_new2")]
	public static extern void* QStyleOptionFocusRect_new2(void* other);
	/// Delete this object from C++ memory
	[LinkName("QStyleOptionFocusRect_Delete")]
	public static extern void QStyleOptionFocusRect_Delete(void* self);
}
public interface IQStyleOptionFrame
{
	void* NativePtr { get; }
}
public class QStyleOptionFrame : IQStyleOptionFrame, IQStyleOption
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QStyleOptionFrame_new();
	}
	
	public ~this()
	{
		CQt.QStyleOptionFrame_Delete(this.nativePtr);
	}
	
	public void InitFrom(IQWidget w)
	{
		CQt.QStyleOption_InitFrom(this.nativePtr, (w == null) ? null : (void*)w.NativePtr);
	}
	
	public void OperatorAssign(IQStyleOption other)
	{
		CQt.QStyleOption_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QStyleOptionFrame_new")]
	public static extern void* QStyleOptionFrame_new();
	[LinkName("QStyleOptionFrame_new2")]
	public static extern void* QStyleOptionFrame_new2(void* other);
	/// Delete this object from C++ memory
	[LinkName("QStyleOptionFrame_Delete")]
	public static extern void QStyleOptionFrame_Delete(void* self);
}
public interface IQStyleOptionTabWidgetFrame
{
	void* NativePtr { get; }
}
public class QStyleOptionTabWidgetFrame : IQStyleOptionTabWidgetFrame, IQStyleOption
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QStyleOptionTabWidgetFrame_new();
	}
	
	public ~this()
	{
		CQt.QStyleOptionTabWidgetFrame_Delete(this.nativePtr);
	}
	
	public void InitFrom(IQWidget w)
	{
		CQt.QStyleOption_InitFrom(this.nativePtr, (w == null) ? null : (void*)w.NativePtr);
	}
	
	public void OperatorAssign(IQStyleOption other)
	{
		CQt.QStyleOption_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QStyleOptionTabWidgetFrame_new")]
	public static extern void* QStyleOptionTabWidgetFrame_new();
	[LinkName("QStyleOptionTabWidgetFrame_new2")]
	public static extern void* QStyleOptionTabWidgetFrame_new2(void* other);
	/// Delete this object from C++ memory
	[LinkName("QStyleOptionTabWidgetFrame_Delete")]
	public static extern void QStyleOptionTabWidgetFrame_Delete(void* self);
}
public interface IQStyleOptionTabBarBase
{
	void* NativePtr { get; }
}
public class QStyleOptionTabBarBase : IQStyleOptionTabBarBase, IQStyleOption
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QStyleOptionTabBarBase_new();
	}
	
	public ~this()
	{
		CQt.QStyleOptionTabBarBase_Delete(this.nativePtr);
	}
	
	public void InitFrom(IQWidget w)
	{
		CQt.QStyleOption_InitFrom(this.nativePtr, (w == null) ? null : (void*)w.NativePtr);
	}
	
	public void OperatorAssign(IQStyleOption other)
	{
		CQt.QStyleOption_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QStyleOptionTabBarBase_new")]
	public static extern void* QStyleOptionTabBarBase_new();
	[LinkName("QStyleOptionTabBarBase_new2")]
	public static extern void* QStyleOptionTabBarBase_new2(void* other);
	/// Delete this object from C++ memory
	[LinkName("QStyleOptionTabBarBase_Delete")]
	public static extern void QStyleOptionTabBarBase_Delete(void* self);
}
public interface IQStyleOptionHeader
{
	void* NativePtr { get; }
}
public class QStyleOptionHeader : IQStyleOptionHeader, IQStyleOption
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QStyleOptionHeader_new();
	}
	
	public ~this()
	{
		CQt.QStyleOptionHeader_Delete(this.nativePtr);
	}
	
	public void InitFrom(IQWidget w)
	{
		CQt.QStyleOption_InitFrom(this.nativePtr, (w == null) ? null : (void*)w.NativePtr);
	}
	
	public void OperatorAssign(IQStyleOption other)
	{
		CQt.QStyleOption_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QStyleOptionHeader_new")]
	public static extern void* QStyleOptionHeader_new();
	[LinkName("QStyleOptionHeader_new2")]
	public static extern void* QStyleOptionHeader_new2(void* other);
	/// Delete this object from C++ memory
	[LinkName("QStyleOptionHeader_Delete")]
	public static extern void QStyleOptionHeader_Delete(void* self);
}
public interface IQStyleOptionHeaderV2
{
	void* NativePtr { get; }
}
public class QStyleOptionHeaderV2 : IQStyleOptionHeaderV2, IQStyleOptionHeader
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QStyleOptionHeaderV2_new();
	}
	
	public ~this()
	{
		CQt.QStyleOptionHeaderV2_Delete(this.nativePtr);
	}
	
	public void InitFrom(IQWidget w)
	{
		CQt.QStyleOption_InitFrom(this.nativePtr, (w == null) ? null : (void*)w.NativePtr);
	}
	
	public void OperatorAssign(IQStyleOption other)
	{
		CQt.QStyleOption_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QStyleOptionHeaderV2_new")]
	public static extern void* QStyleOptionHeaderV2_new();
	[LinkName("QStyleOptionHeaderV2_new2")]
	public static extern void* QStyleOptionHeaderV2_new2(void* other);
	/// Delete this object from C++ memory
	[LinkName("QStyleOptionHeaderV2_Delete")]
	public static extern void QStyleOptionHeaderV2_Delete(void* self);
}
public interface IQStyleOptionButton
{
	void* NativePtr { get; }
}
public class QStyleOptionButton : IQStyleOptionButton, IQStyleOption
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QStyleOptionButton_new();
	}
	
	public ~this()
	{
		CQt.QStyleOptionButton_Delete(this.nativePtr);
	}
	
	public void InitFrom(IQWidget w)
	{
		CQt.QStyleOption_InitFrom(this.nativePtr, (w == null) ? null : (void*)w.NativePtr);
	}
	
	public void OperatorAssign(IQStyleOption other)
	{
		CQt.QStyleOption_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QStyleOptionButton_new")]
	public static extern void* QStyleOptionButton_new();
	[LinkName("QStyleOptionButton_new2")]
	public static extern void* QStyleOptionButton_new2(void* other);
	/// Delete this object from C++ memory
	[LinkName("QStyleOptionButton_Delete")]
	public static extern void QStyleOptionButton_Delete(void* self);
}
public interface IQStyleOptionTab
{
	void* NativePtr { get; }
}
public class QStyleOptionTab : IQStyleOptionTab, IQStyleOption
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QStyleOptionTab_new();
	}
	
	public ~this()
	{
		CQt.QStyleOptionTab_Delete(this.nativePtr);
	}
	
	public void InitFrom(IQWidget w)
	{
		CQt.QStyleOption_InitFrom(this.nativePtr, (w == null) ? null : (void*)w.NativePtr);
	}
	
	public void OperatorAssign(IQStyleOption other)
	{
		CQt.QStyleOption_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QStyleOptionTab_new")]
	public static extern void* QStyleOptionTab_new();
	[LinkName("QStyleOptionTab_new2")]
	public static extern void* QStyleOptionTab_new2(void* other);
	/// Delete this object from C++ memory
	[LinkName("QStyleOptionTab_Delete")]
	public static extern void QStyleOptionTab_Delete(void* self);
}
public interface IQStyleOptionToolBar
{
	void* NativePtr { get; }
}
public class QStyleOptionToolBar : IQStyleOptionToolBar, IQStyleOption
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QStyleOptionToolBar_new();
	}
	
	public ~this()
	{
		CQt.QStyleOptionToolBar_Delete(this.nativePtr);
	}
	
	public void InitFrom(IQWidget w)
	{
		CQt.QStyleOption_InitFrom(this.nativePtr, (w == null) ? null : (void*)w.NativePtr);
	}
	
	public void OperatorAssign(IQStyleOption other)
	{
		CQt.QStyleOption_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QStyleOptionToolBar_new")]
	public static extern void* QStyleOptionToolBar_new();
	[LinkName("QStyleOptionToolBar_new2")]
	public static extern void* QStyleOptionToolBar_new2(void* other);
	/// Delete this object from C++ memory
	[LinkName("QStyleOptionToolBar_Delete")]
	public static extern void QStyleOptionToolBar_Delete(void* self);
}
public interface IQStyleOptionProgressBar
{
	void* NativePtr { get; }
}
public class QStyleOptionProgressBar : IQStyleOptionProgressBar, IQStyleOption
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QStyleOptionProgressBar_new();
	}
	
	public ~this()
	{
		CQt.QStyleOptionProgressBar_Delete(this.nativePtr);
	}
	
	public void InitFrom(IQWidget w)
	{
		CQt.QStyleOption_InitFrom(this.nativePtr, (w == null) ? null : (void*)w.NativePtr);
	}
	
	public void OperatorAssign(IQStyleOption other)
	{
		CQt.QStyleOption_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QStyleOptionProgressBar_new")]
	public static extern void* QStyleOptionProgressBar_new();
	[LinkName("QStyleOptionProgressBar_new2")]
	public static extern void* QStyleOptionProgressBar_new2(void* other);
	/// Delete this object from C++ memory
	[LinkName("QStyleOptionProgressBar_Delete")]
	public static extern void QStyleOptionProgressBar_Delete(void* self);
}
public interface IQStyleOptionMenuItem
{
	void* NativePtr { get; }
}
public class QStyleOptionMenuItem : IQStyleOptionMenuItem, IQStyleOption
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QStyleOptionMenuItem_new();
	}
	
	public ~this()
	{
		CQt.QStyleOptionMenuItem_Delete(this.nativePtr);
	}
	
	public void InitFrom(IQWidget w)
	{
		CQt.QStyleOption_InitFrom(this.nativePtr, (w == null) ? null : (void*)w.NativePtr);
	}
	
	public void OperatorAssign(IQStyleOption other)
	{
		CQt.QStyleOption_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QStyleOptionMenuItem_new")]
	public static extern void* QStyleOptionMenuItem_new();
	[LinkName("QStyleOptionMenuItem_new2")]
	public static extern void* QStyleOptionMenuItem_new2(void* other);
	/// Delete this object from C++ memory
	[LinkName("QStyleOptionMenuItem_Delete")]
	public static extern void QStyleOptionMenuItem_Delete(void* self);
}
public interface IQStyleOptionDockWidget
{
	void* NativePtr { get; }
}
public class QStyleOptionDockWidget : IQStyleOptionDockWidget, IQStyleOption
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QStyleOptionDockWidget_new();
	}
	
	public ~this()
	{
		CQt.QStyleOptionDockWidget_Delete(this.nativePtr);
	}
	
	public void InitFrom(IQWidget w)
	{
		CQt.QStyleOption_InitFrom(this.nativePtr, (w == null) ? null : (void*)w.NativePtr);
	}
	
	public void OperatorAssign(IQStyleOption other)
	{
		CQt.QStyleOption_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QStyleOptionDockWidget_new")]
	public static extern void* QStyleOptionDockWidget_new();
	[LinkName("QStyleOptionDockWidget_new2")]
	public static extern void* QStyleOptionDockWidget_new2(void* other);
	/// Delete this object from C++ memory
	[LinkName("QStyleOptionDockWidget_Delete")]
	public static extern void QStyleOptionDockWidget_Delete(void* self);
}
public interface IQStyleOptionViewItem
{
	void* NativePtr { get; }
}
public class QStyleOptionViewItem : IQStyleOptionViewItem, IQStyleOption
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QStyleOptionViewItem_new();
	}
	
	public ~this()
	{
		CQt.QStyleOptionViewItem_Delete(this.nativePtr);
	}
	
	public void InitFrom(IQWidget w)
	{
		CQt.QStyleOption_InitFrom(this.nativePtr, (w == null) ? null : (void*)w.NativePtr);
	}
	
	public void OperatorAssign(IQStyleOption other)
	{
		CQt.QStyleOption_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QStyleOptionViewItem_new")]
	public static extern void* QStyleOptionViewItem_new();
	[LinkName("QStyleOptionViewItem_new2")]
	public static extern void* QStyleOptionViewItem_new2(void* other);
	/// Delete this object from C++ memory
	[LinkName("QStyleOptionViewItem_Delete")]
	public static extern void QStyleOptionViewItem_Delete(void* self);
}
public interface IQStyleOptionToolBox
{
	void* NativePtr { get; }
}
public class QStyleOptionToolBox : IQStyleOptionToolBox, IQStyleOption
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QStyleOptionToolBox_new();
	}
	
	public ~this()
	{
		CQt.QStyleOptionToolBox_Delete(this.nativePtr);
	}
	
	public void InitFrom(IQWidget w)
	{
		CQt.QStyleOption_InitFrom(this.nativePtr, (w == null) ? null : (void*)w.NativePtr);
	}
	
	public void OperatorAssign(IQStyleOption other)
	{
		CQt.QStyleOption_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QStyleOptionToolBox_new")]
	public static extern void* QStyleOptionToolBox_new();
	[LinkName("QStyleOptionToolBox_new2")]
	public static extern void* QStyleOptionToolBox_new2(void* other);
	/// Delete this object from C++ memory
	[LinkName("QStyleOptionToolBox_Delete")]
	public static extern void QStyleOptionToolBox_Delete(void* self);
}
public interface IQStyleOptionRubberBand
{
	void* NativePtr { get; }
}
public class QStyleOptionRubberBand : IQStyleOptionRubberBand, IQStyleOption
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QStyleOptionRubberBand_new();
	}
	
	public ~this()
	{
		CQt.QStyleOptionRubberBand_Delete(this.nativePtr);
	}
	
	public void InitFrom(IQWidget w)
	{
		CQt.QStyleOption_InitFrom(this.nativePtr, (w == null) ? null : (void*)w.NativePtr);
	}
	
	public void OperatorAssign(IQStyleOption other)
	{
		CQt.QStyleOption_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QStyleOptionRubberBand_new")]
	public static extern void* QStyleOptionRubberBand_new();
	[LinkName("QStyleOptionRubberBand_new2")]
	public static extern void* QStyleOptionRubberBand_new2(void* other);
	/// Delete this object from C++ memory
	[LinkName("QStyleOptionRubberBand_Delete")]
	public static extern void QStyleOptionRubberBand_Delete(void* self);
}
public interface IQStyleOptionComplex
{
	void* NativePtr { get; }
}
public class QStyleOptionComplex : IQStyleOptionComplex, IQStyleOption
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QStyleOptionComplex_new();
	}
	
	public ~this()
	{
		CQt.QStyleOptionComplex_Delete(this.nativePtr);
	}
	
	public void InitFrom(IQWidget w)
	{
		CQt.QStyleOption_InitFrom(this.nativePtr, (w == null) ? null : (void*)w.NativePtr);
	}
	
	public void OperatorAssign(IQStyleOption other)
	{
		CQt.QStyleOption_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QStyleOptionComplex_new")]
	public static extern void* QStyleOptionComplex_new();
	[LinkName("QStyleOptionComplex_new2")]
	public static extern void* QStyleOptionComplex_new2(void* other);
	[LinkName("QStyleOptionComplex_new3")]
	public static extern void* QStyleOptionComplex_new3(int32 version);
	[LinkName("QStyleOptionComplex_new4")]
	public static extern void* QStyleOptionComplex_new4(int32 version, int32 typeVal);
	/// Delete this object from C++ memory
	[LinkName("QStyleOptionComplex_Delete")]
	public static extern void QStyleOptionComplex_Delete(void* self);
}
public interface IQStyleOptionSlider
{
	void* NativePtr { get; }
}
public class QStyleOptionSlider : IQStyleOptionSlider, IQStyleOptionComplex
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QStyleOptionSlider_new();
	}
	
	public ~this()
	{
		CQt.QStyleOptionSlider_Delete(this.nativePtr);
	}
	
	public void InitFrom(IQWidget w)
	{
		CQt.QStyleOption_InitFrom(this.nativePtr, (w == null) ? null : (void*)w.NativePtr);
	}
	
	public void OperatorAssign(IQStyleOption other)
	{
		CQt.QStyleOption_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QStyleOptionSlider_new")]
	public static extern void* QStyleOptionSlider_new();
	[LinkName("QStyleOptionSlider_new2")]
	public static extern void* QStyleOptionSlider_new2(void* other);
	/// Delete this object from C++ memory
	[LinkName("QStyleOptionSlider_Delete")]
	public static extern void QStyleOptionSlider_Delete(void* self);
}
public interface IQStyleOptionSpinBox
{
	void* NativePtr { get; }
}
public class QStyleOptionSpinBox : IQStyleOptionSpinBox, IQStyleOptionComplex
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QStyleOptionSpinBox_new();
	}
	
	public ~this()
	{
		CQt.QStyleOptionSpinBox_Delete(this.nativePtr);
	}
	
	public void InitFrom(IQWidget w)
	{
		CQt.QStyleOption_InitFrom(this.nativePtr, (w == null) ? null : (void*)w.NativePtr);
	}
	
	public void OperatorAssign(IQStyleOption other)
	{
		CQt.QStyleOption_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QStyleOptionSpinBox_new")]
	public static extern void* QStyleOptionSpinBox_new();
	[LinkName("QStyleOptionSpinBox_new2")]
	public static extern void* QStyleOptionSpinBox_new2(void* other);
	/// Delete this object from C++ memory
	[LinkName("QStyleOptionSpinBox_Delete")]
	public static extern void QStyleOptionSpinBox_Delete(void* self);
}
public interface IQStyleOptionToolButton
{
	void* NativePtr { get; }
}
public class QStyleOptionToolButton : IQStyleOptionToolButton, IQStyleOptionComplex
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QStyleOptionToolButton_new();
	}
	
	public ~this()
	{
		CQt.QStyleOptionToolButton_Delete(this.nativePtr);
	}
	
	public void InitFrom(IQWidget w)
	{
		CQt.QStyleOption_InitFrom(this.nativePtr, (w == null) ? null : (void*)w.NativePtr);
	}
	
	public void OperatorAssign(IQStyleOption other)
	{
		CQt.QStyleOption_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QStyleOptionToolButton_new")]
	public static extern void* QStyleOptionToolButton_new();
	[LinkName("QStyleOptionToolButton_new2")]
	public static extern void* QStyleOptionToolButton_new2(void* other);
	/// Delete this object from C++ memory
	[LinkName("QStyleOptionToolButton_Delete")]
	public static extern void QStyleOptionToolButton_Delete(void* self);
}
public interface IQStyleOptionComboBox
{
	void* NativePtr { get; }
}
public class QStyleOptionComboBox : IQStyleOptionComboBox, IQStyleOptionComplex
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QStyleOptionComboBox_new();
	}
	
	public ~this()
	{
		CQt.QStyleOptionComboBox_Delete(this.nativePtr);
	}
	
	public void InitFrom(IQWidget w)
	{
		CQt.QStyleOption_InitFrom(this.nativePtr, (w == null) ? null : (void*)w.NativePtr);
	}
	
	public void OperatorAssign(IQStyleOption other)
	{
		CQt.QStyleOption_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QStyleOptionComboBox_new")]
	public static extern void* QStyleOptionComboBox_new();
	[LinkName("QStyleOptionComboBox_new2")]
	public static extern void* QStyleOptionComboBox_new2(void* other);
	/// Delete this object from C++ memory
	[LinkName("QStyleOptionComboBox_Delete")]
	public static extern void QStyleOptionComboBox_Delete(void* self);
}
public interface IQStyleOptionTitleBar
{
	void* NativePtr { get; }
}
public class QStyleOptionTitleBar : IQStyleOptionTitleBar, IQStyleOptionComplex
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QStyleOptionTitleBar_new();
	}
	
	public ~this()
	{
		CQt.QStyleOptionTitleBar_Delete(this.nativePtr);
	}
	
	public void InitFrom(IQWidget w)
	{
		CQt.QStyleOption_InitFrom(this.nativePtr, (w == null) ? null : (void*)w.NativePtr);
	}
	
	public void OperatorAssign(IQStyleOption other)
	{
		CQt.QStyleOption_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QStyleOptionTitleBar_new")]
	public static extern void* QStyleOptionTitleBar_new();
	[LinkName("QStyleOptionTitleBar_new2")]
	public static extern void* QStyleOptionTitleBar_new2(void* other);
	/// Delete this object from C++ memory
	[LinkName("QStyleOptionTitleBar_Delete")]
	public static extern void QStyleOptionTitleBar_Delete(void* self);
}
public interface IQStyleOptionGroupBox
{
	void* NativePtr { get; }
}
public class QStyleOptionGroupBox : IQStyleOptionGroupBox, IQStyleOptionComplex
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QStyleOptionGroupBox_new();
	}
	
	public ~this()
	{
		CQt.QStyleOptionGroupBox_Delete(this.nativePtr);
	}
	
	public void InitFrom(IQWidget w)
	{
		CQt.QStyleOption_InitFrom(this.nativePtr, (w == null) ? null : (void*)w.NativePtr);
	}
	
	public void OperatorAssign(IQStyleOption other)
	{
		CQt.QStyleOption_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QStyleOptionGroupBox_new")]
	public static extern void* QStyleOptionGroupBox_new();
	[LinkName("QStyleOptionGroupBox_new2")]
	public static extern void* QStyleOptionGroupBox_new2(void* other);
	/// Delete this object from C++ memory
	[LinkName("QStyleOptionGroupBox_Delete")]
	public static extern void QStyleOptionGroupBox_Delete(void* self);
}
public interface IQStyleOptionSizeGrip
{
	void* NativePtr { get; }
}
public class QStyleOptionSizeGrip : IQStyleOptionSizeGrip, IQStyleOptionComplex
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QStyleOptionSizeGrip_new();
	}
	
	public ~this()
	{
		CQt.QStyleOptionSizeGrip_Delete(this.nativePtr);
	}
	
	public void InitFrom(IQWidget w)
	{
		CQt.QStyleOption_InitFrom(this.nativePtr, (w == null) ? null : (void*)w.NativePtr);
	}
	
	public void OperatorAssign(IQStyleOption other)
	{
		CQt.QStyleOption_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QStyleOptionSizeGrip_new")]
	public static extern void* QStyleOptionSizeGrip_new();
	[LinkName("QStyleOptionSizeGrip_new2")]
	public static extern void* QStyleOptionSizeGrip_new2(void* other);
	/// Delete this object from C++ memory
	[LinkName("QStyleOptionSizeGrip_Delete")]
	public static extern void QStyleOptionSizeGrip_Delete(void* self);
}
public interface IQStyleOptionGraphicsItem
{
	void* NativePtr { get; }
}
public class QStyleOptionGraphicsItem : IQStyleOptionGraphicsItem, IQStyleOption
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QStyleOptionGraphicsItem_new();
	}
	
	public ~this()
	{
		CQt.QStyleOptionGraphicsItem_Delete(this.nativePtr);
	}
	
	public static double LevelOfDetailFromTransform(IQTransform worldTransform)
	{
		return CQt.QStyleOptionGraphicsItem_LevelOfDetailFromTransform((worldTransform == default) ? default : (void*)worldTransform.NativePtr);
	}
	
	public void InitFrom(IQWidget w)
	{
		CQt.QStyleOption_InitFrom(this.nativePtr, (w == null) ? null : (void*)w.NativePtr);
	}
	
	public void OperatorAssign(IQStyleOption other)
	{
		CQt.QStyleOption_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QStyleOptionGraphicsItem_new")]
	public static extern void* QStyleOptionGraphicsItem_new();
	[LinkName("QStyleOptionGraphicsItem_new2")]
	public static extern void* QStyleOptionGraphicsItem_new2(void* other);
	[LinkName("QStyleOptionGraphicsItem_LevelOfDetailFromTransform")]
	public static extern double QStyleOptionGraphicsItem_LevelOfDetailFromTransform(void* worldTransform);
	/// Delete this object from C++ memory
	[LinkName("QStyleOptionGraphicsItem_Delete")]
	public static extern void QStyleOptionGraphicsItem_Delete(void* self);
}
public interface IQStyleHintReturn
{
	void* NativePtr { get; }
}
public class QStyleHintReturn : IQStyleHintReturn
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QStyleHintReturn_new();
	}
	
	public ~this()
	{
		CQt.QStyleHintReturn_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQStyleHintReturn param1)
	{
		CQt.QStyleHintReturn_OperatorAssign(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QStyleHintReturn_new")]
	public static extern void* QStyleHintReturn_new();
	[LinkName("QStyleHintReturn_new2")]
	public static extern void* QStyleHintReturn_new2(void* param1);
	[LinkName("QStyleHintReturn_new3")]
	public static extern void* QStyleHintReturn_new3(int32 version);
	[LinkName("QStyleHintReturn_new4")]
	public static extern void* QStyleHintReturn_new4(int32 version, int32 typeVal);
	[LinkName("QStyleHintReturn_OperatorAssign")]
	public static extern void QStyleHintReturn_OperatorAssign(void* c_this, void* param1);
	/// Delete this object from C++ memory
	[LinkName("QStyleHintReturn_Delete")]
	public static extern void QStyleHintReturn_Delete(void* self);
}
public interface IQStyleHintReturnMask
{
	void* NativePtr { get; }
}
public class QStyleHintReturnMask : IQStyleHintReturnMask, IQStyleHintReturn
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QStyleHintReturnMask_new();
	}
	
	public ~this()
	{
		CQt.QStyleHintReturnMask_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQStyleHintReturnMask param1)
	{
		CQt.QStyleHintReturnMask_OperatorAssign(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QStyleHintReturnMask_new")]
	public static extern void* QStyleHintReturnMask_new();
	[LinkName("QStyleHintReturnMask_new2")]
	public static extern void* QStyleHintReturnMask_new2(void* param1);
	[LinkName("QStyleHintReturnMask_OperatorAssign")]
	public static extern void QStyleHintReturnMask_OperatorAssign(void* c_this, void* param1);
	/// Delete this object from C++ memory
	[LinkName("QStyleHintReturnMask_Delete")]
	public static extern void QStyleHintReturnMask_Delete(void* self);
}
public interface IQStyleHintReturnVariant
{
	void* NativePtr { get; }
}
public class QStyleHintReturnVariant : IQStyleHintReturnVariant, IQStyleHintReturn
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QStyleHintReturnVariant_new();
	}
	
	public ~this()
	{
		CQt.QStyleHintReturnVariant_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQStyleHintReturnVariant param1)
	{
		CQt.QStyleHintReturnVariant_OperatorAssign(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QStyleHintReturnVariant_new")]
	public static extern void* QStyleHintReturnVariant_new();
	[LinkName("QStyleHintReturnVariant_new2")]
	public static extern void* QStyleHintReturnVariant_new2(void* param1);
	[LinkName("QStyleHintReturnVariant_OperatorAssign")]
	public static extern void QStyleHintReturnVariant_OperatorAssign(void* c_this, void* param1);
	/// Delete this object from C++ memory
	[LinkName("QStyleHintReturnVariant_Delete")]
	public static extern void QStyleHintReturnVariant_Delete(void* self);
}