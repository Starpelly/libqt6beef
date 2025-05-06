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
public struct QStyleOption
{
	[LinkName("QStyleOption_new")]
	public static extern void* QStyleOption_new();
	[LinkName("QStyleOption_new2")]
	public static extern void* QStyleOption_new2(QStyleOption other);
	[LinkName("QStyleOption_new3")]
	public static extern void* QStyleOption_new3(int32 version);
	[LinkName("QStyleOption_new4")]
	public static extern void* QStyleOption_new4(int32 version, int32 typeVal);
	[LinkName("QStyleOption_InitFrom")]
	public static extern void QStyleOption_InitFrom(void* c_this, QWidget w);
	[LinkName("QStyleOption_OperatorAssign")]
	public static extern void QStyleOption_OperatorAssign(void* c_this, QStyleOption other);
}
public struct QStyleOptionFocusRect
{
	[LinkName("QStyleOptionFocusRect_new")]
	public static extern void* QStyleOptionFocusRect_new();
	[LinkName("QStyleOptionFocusRect_new2")]
	public static extern void* QStyleOptionFocusRect_new2(QStyleOptionFocusRect other);
}
public struct QStyleOptionFrame
{
	[LinkName("QStyleOptionFrame_new")]
	public static extern void* QStyleOptionFrame_new();
	[LinkName("QStyleOptionFrame_new2")]
	public static extern void* QStyleOptionFrame_new2(QStyleOptionFrame other);
}
public struct QStyleOptionTabWidgetFrame
{
	[LinkName("QStyleOptionTabWidgetFrame_new")]
	public static extern void* QStyleOptionTabWidgetFrame_new();
	[LinkName("QStyleOptionTabWidgetFrame_new2")]
	public static extern void* QStyleOptionTabWidgetFrame_new2(QStyleOptionTabWidgetFrame other);
}
public struct QStyleOptionTabBarBase
{
	[LinkName("QStyleOptionTabBarBase_new")]
	public static extern void* QStyleOptionTabBarBase_new();
	[LinkName("QStyleOptionTabBarBase_new2")]
	public static extern void* QStyleOptionTabBarBase_new2(QStyleOptionTabBarBase other);
}
public struct QStyleOptionHeader
{
	[LinkName("QStyleOptionHeader_new")]
	public static extern void* QStyleOptionHeader_new();
	[LinkName("QStyleOptionHeader_new2")]
	public static extern void* QStyleOptionHeader_new2(QStyleOptionHeader other);
}
public struct QStyleOptionHeaderV2
{
	[LinkName("QStyleOptionHeaderV2_new")]
	public static extern void* QStyleOptionHeaderV2_new();
	[LinkName("QStyleOptionHeaderV2_new2")]
	public static extern void* QStyleOptionHeaderV2_new2(QStyleOptionHeaderV2 other);
}
public struct QStyleOptionButton
{
	[LinkName("QStyleOptionButton_new")]
	public static extern void* QStyleOptionButton_new();
	[LinkName("QStyleOptionButton_new2")]
	public static extern void* QStyleOptionButton_new2(QStyleOptionButton other);
}
public struct QStyleOptionTab
{
	[LinkName("QStyleOptionTab_new")]
	public static extern void* QStyleOptionTab_new();
	[LinkName("QStyleOptionTab_new2")]
	public static extern void* QStyleOptionTab_new2(QStyleOptionTab other);
}
public struct QStyleOptionToolBar
{
	[LinkName("QStyleOptionToolBar_new")]
	public static extern void* QStyleOptionToolBar_new();
	[LinkName("QStyleOptionToolBar_new2")]
	public static extern void* QStyleOptionToolBar_new2(QStyleOptionToolBar other);
}
public struct QStyleOptionProgressBar
{
	[LinkName("QStyleOptionProgressBar_new")]
	public static extern void* QStyleOptionProgressBar_new();
	[LinkName("QStyleOptionProgressBar_new2")]
	public static extern void* QStyleOptionProgressBar_new2(QStyleOptionProgressBar other);
}
public struct QStyleOptionMenuItem
{
	[LinkName("QStyleOptionMenuItem_new")]
	public static extern void* QStyleOptionMenuItem_new();
	[LinkName("QStyleOptionMenuItem_new2")]
	public static extern void* QStyleOptionMenuItem_new2(QStyleOptionMenuItem other);
}
public struct QStyleOptionDockWidget
{
	[LinkName("QStyleOptionDockWidget_new")]
	public static extern void* QStyleOptionDockWidget_new();
	[LinkName("QStyleOptionDockWidget_new2")]
	public static extern void* QStyleOptionDockWidget_new2(QStyleOptionDockWidget other);
}
public struct QStyleOptionViewItem
{
	[LinkName("QStyleOptionViewItem_new")]
	public static extern void* QStyleOptionViewItem_new();
	[LinkName("QStyleOptionViewItem_new2")]
	public static extern void* QStyleOptionViewItem_new2(QStyleOptionViewItem other);
}
public struct QStyleOptionToolBox
{
	[LinkName("QStyleOptionToolBox_new")]
	public static extern void* QStyleOptionToolBox_new();
	[LinkName("QStyleOptionToolBox_new2")]
	public static extern void* QStyleOptionToolBox_new2(QStyleOptionToolBox other);
}
public struct QStyleOptionRubberBand
{
	[LinkName("QStyleOptionRubberBand_new")]
	public static extern void* QStyleOptionRubberBand_new();
	[LinkName("QStyleOptionRubberBand_new2")]
	public static extern void* QStyleOptionRubberBand_new2(QStyleOptionRubberBand other);
}
public struct QStyleOptionComplex
{
	[LinkName("QStyleOptionComplex_new")]
	public static extern void* QStyleOptionComplex_new();
	[LinkName("QStyleOptionComplex_new2")]
	public static extern void* QStyleOptionComplex_new2(QStyleOptionComplex other);
	[LinkName("QStyleOptionComplex_new3")]
	public static extern void* QStyleOptionComplex_new3(int32 version);
	[LinkName("QStyleOptionComplex_new4")]
	public static extern void* QStyleOptionComplex_new4(int32 version, int32 typeVal);
}
public struct QStyleOptionSlider
{
	[LinkName("QStyleOptionSlider_new")]
	public static extern void* QStyleOptionSlider_new();
	[LinkName("QStyleOptionSlider_new2")]
	public static extern void* QStyleOptionSlider_new2(QStyleOptionSlider other);
}
public struct QStyleOptionSpinBox
{
	[LinkName("QStyleOptionSpinBox_new")]
	public static extern void* QStyleOptionSpinBox_new();
	[LinkName("QStyleOptionSpinBox_new2")]
	public static extern void* QStyleOptionSpinBox_new2(QStyleOptionSpinBox other);
}
public struct QStyleOptionToolButton
{
	[LinkName("QStyleOptionToolButton_new")]
	public static extern void* QStyleOptionToolButton_new();
	[LinkName("QStyleOptionToolButton_new2")]
	public static extern void* QStyleOptionToolButton_new2(QStyleOptionToolButton other);
}
public struct QStyleOptionComboBox
{
	[LinkName("QStyleOptionComboBox_new")]
	public static extern void* QStyleOptionComboBox_new();
	[LinkName("QStyleOptionComboBox_new2")]
	public static extern void* QStyleOptionComboBox_new2(QStyleOptionComboBox other);
}
public struct QStyleOptionTitleBar
{
	[LinkName("QStyleOptionTitleBar_new")]
	public static extern void* QStyleOptionTitleBar_new();
	[LinkName("QStyleOptionTitleBar_new2")]
	public static extern void* QStyleOptionTitleBar_new2(QStyleOptionTitleBar other);
}
public struct QStyleOptionGroupBox
{
	[LinkName("QStyleOptionGroupBox_new")]
	public static extern void* QStyleOptionGroupBox_new();
	[LinkName("QStyleOptionGroupBox_new2")]
	public static extern void* QStyleOptionGroupBox_new2(QStyleOptionGroupBox other);
}
public struct QStyleOptionSizeGrip
{
	[LinkName("QStyleOptionSizeGrip_new")]
	public static extern void* QStyleOptionSizeGrip_new();
	[LinkName("QStyleOptionSizeGrip_new2")]
	public static extern void* QStyleOptionSizeGrip_new2(QStyleOptionSizeGrip other);
}
public struct QStyleOptionGraphicsItem
{
	[LinkName("QStyleOptionGraphicsItem_new")]
	public static extern void* QStyleOptionGraphicsItem_new();
	[LinkName("QStyleOptionGraphicsItem_new2")]
	public static extern void* QStyleOptionGraphicsItem_new2(QStyleOptionGraphicsItem other);
	[LinkName("QStyleOptionGraphicsItem_LevelOfDetailFromTransform")]
	public static extern double QStyleOptionGraphicsItem_LevelOfDetailFromTransform(QTransform worldTransform);
}
public struct QStyleHintReturn
{
	[LinkName("QStyleHintReturn_new")]
	public static extern void* QStyleHintReturn_new();
	[LinkName("QStyleHintReturn_new2")]
	public static extern void* QStyleHintReturn_new2(QStyleHintReturn param1);
	[LinkName("QStyleHintReturn_new3")]
	public static extern void* QStyleHintReturn_new3(int32 version);
	[LinkName("QStyleHintReturn_new4")]
	public static extern void* QStyleHintReturn_new4(int32 version, int32 typeVal);
	[LinkName("QStyleHintReturn_OperatorAssign")]
	public static extern void QStyleHintReturn_OperatorAssign(void* c_this, QStyleHintReturn param1);
}
public struct QStyleHintReturnMask
{
	[LinkName("QStyleHintReturnMask_new")]
	public static extern void* QStyleHintReturnMask_new();
	[LinkName("QStyleHintReturnMask_new2")]
	public static extern void* QStyleHintReturnMask_new2(QStyleHintReturnMask param1);
	[LinkName("QStyleHintReturnMask_OperatorAssign")]
	public static extern void QStyleHintReturnMask_OperatorAssign(void* c_this, QStyleHintReturnMask param1);
}
public struct QStyleHintReturnVariant
{
	[LinkName("QStyleHintReturnVariant_new")]
	public static extern void* QStyleHintReturnVariant_new();
	[LinkName("QStyleHintReturnVariant_new2")]
	public static extern void* QStyleHintReturnVariant_new2(QStyleHintReturnVariant param1);
	[LinkName("QStyleHintReturnVariant_OperatorAssign")]
	public static extern void QStyleHintReturnVariant_OperatorAssign(void* c_this, QStyleHintReturnVariant param1);
}