using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QStyle__StateFlag
{
	State_None = 0,
	State_Enabled = 1,
	State_Raised = 2,
	State_Sunken = 4,
	State_Off = 8,
	State_NoChange = 16,
	State_On = 32,
	State_DownArrow = 64,
	State_Horizontal = 128,
	State_HasFocus = 256,
	State_Top = 512,
	State_Bottom = 1024,
	State_FocusAtBorder = 2048,
	State_AutoRaise = 4096,
	State_MouseOver = 8192,
	State_UpArrow = 16384,
	State_Selected = 32768,
	State_Active = 65536,
	State_Window = 131072,
	State_Open = 262144,
	State_Children = 524288,
	State_Item = 1048576,
	State_Sibling = 2097152,
	State_Editing = 4194304,
	State_KeyboardFocusChange = 8388608,
	State_ReadOnly = 33554432,
	State_Small = 67108864,
	State_Mini = 134217728,
}
[AllowDuplicates]
public enum QStyle__PrimitiveElement
{
	PE_Frame = 0,
	PE_FrameDefaultButton = 1,
	PE_FrameDockWidget = 2,
	PE_FrameFocusRect = 3,
	PE_FrameGroupBox = 4,
	PE_FrameLineEdit = 5,
	PE_FrameMenu = 6,
	PE_FrameStatusBarItem = 7,
	PE_FrameTabWidget = 8,
	PE_FrameWindow = 9,
	PE_FrameButtonBevel = 10,
	PE_FrameButtonTool = 11,
	PE_FrameTabBarBase = 12,
	PE_PanelButtonCommand = 13,
	PE_PanelButtonBevel = 14,
	PE_PanelButtonTool = 15,
	PE_PanelMenuBar = 16,
	PE_PanelToolBar = 17,
	PE_PanelLineEdit = 18,
	PE_IndicatorArrowDown = 19,
	PE_IndicatorArrowLeft = 20,
	PE_IndicatorArrowRight = 21,
	PE_IndicatorArrowUp = 22,
	PE_IndicatorBranch = 23,
	PE_IndicatorButtonDropDown = 24,
	PE_IndicatorItemViewItemCheck = 25,
	PE_IndicatorCheckBox = 26,
	PE_IndicatorDockWidgetResizeHandle = 27,
	PE_IndicatorHeaderArrow = 28,
	PE_IndicatorMenuCheckMark = 29,
	PE_IndicatorProgressChunk = 30,
	PE_IndicatorRadioButton = 31,
	PE_IndicatorSpinDown = 32,
	PE_IndicatorSpinMinus = 33,
	PE_IndicatorSpinPlus = 34,
	PE_IndicatorSpinUp = 35,
	PE_IndicatorToolBarHandle = 36,
	PE_IndicatorToolBarSeparator = 37,
	PE_PanelTipLabel = 38,
	PE_IndicatorTabTear = 39,
	PE_IndicatorTabTearLeft = 39,
	PE_PanelScrollAreaCorner = 40,
	PE_Widget = 41,
	PE_IndicatorColumnViewArrow = 42,
	PE_IndicatorItemViewItemDrop = 43,
	PE_PanelItemViewItem = 44,
	PE_PanelItemViewRow = 45,
	PE_PanelStatusBar = 46,
	PE_IndicatorTabClose = 47,
	PE_PanelMenu = 48,
	PE_IndicatorTabTearRight = 49,
	PE_CustomBase = 251658240,
}
[AllowDuplicates]
public enum QStyle__ControlElement
{
	CE_PushButton = 0,
	CE_PushButtonBevel = 1,
	CE_PushButtonLabel = 2,
	CE_CheckBox = 3,
	CE_CheckBoxLabel = 4,
	CE_RadioButton = 5,
	CE_RadioButtonLabel = 6,
	CE_TabBarTab = 7,
	CE_TabBarTabShape = 8,
	CE_TabBarTabLabel = 9,
	CE_ProgressBar = 10,
	CE_ProgressBarGroove = 11,
	CE_ProgressBarContents = 12,
	CE_ProgressBarLabel = 13,
	CE_MenuItem = 14,
	CE_MenuScroller = 15,
	CE_MenuVMargin = 16,
	CE_MenuHMargin = 17,
	CE_MenuTearoff = 18,
	CE_MenuEmptyArea = 19,
	CE_MenuBarItem = 20,
	CE_MenuBarEmptyArea = 21,
	CE_ToolButtonLabel = 22,
	CE_Header = 23,
	CE_HeaderSection = 24,
	CE_HeaderLabel = 25,
	CE_ToolBoxTab = 26,
	CE_SizeGrip = 27,
	CE_Splitter = 28,
	CE_RubberBand = 29,
	CE_DockWidgetTitle = 30,
	CE_ScrollBarAddLine = 31,
	CE_ScrollBarSubLine = 32,
	CE_ScrollBarAddPage = 33,
	CE_ScrollBarSubPage = 34,
	CE_ScrollBarSlider = 35,
	CE_ScrollBarFirst = 36,
	CE_ScrollBarLast = 37,
	CE_FocusFrame = 38,
	CE_ComboBoxLabel = 39,
	CE_ToolBar = 40,
	CE_ToolBoxTabShape = 41,
	CE_ToolBoxTabLabel = 42,
	CE_HeaderEmptyArea = 43,
	CE_ColumnViewGrip = 44,
	CE_ItemViewItem = 45,
	CE_ShapedFrame = 46,
	CE_CustomBase = 4026531840,
}
[AllowDuplicates]
public enum QStyle__SubElement
{
	SE_PushButtonContents = 0,
	SE_PushButtonFocusRect = 1,
	SE_CheckBoxIndicator = 2,
	SE_CheckBoxContents = 3,
	SE_CheckBoxFocusRect = 4,
	SE_CheckBoxClickRect = 5,
	SE_RadioButtonIndicator = 6,
	SE_RadioButtonContents = 7,
	SE_RadioButtonFocusRect = 8,
	SE_RadioButtonClickRect = 9,
	SE_ComboBoxFocusRect = 10,
	SE_SliderFocusRect = 11,
	SE_ProgressBarGroove = 12,
	SE_ProgressBarContents = 13,
	SE_ProgressBarLabel = 14,
	SE_ToolBoxTabContents = 15,
	SE_HeaderLabel = 16,
	SE_HeaderArrow = 17,
	SE_TabWidgetTabBar = 18,
	SE_TabWidgetTabPane = 19,
	SE_TabWidgetTabContents = 20,
	SE_TabWidgetLeftCorner = 21,
	SE_TabWidgetRightCorner = 22,
	SE_ItemViewItemCheckIndicator = 23,
	SE_TabBarTearIndicator = 24,
	SE_TabBarTearIndicatorLeft = 24,
	SE_TreeViewDisclosureItem = 25,
	SE_LineEditContents = 26,
	SE_FrameContents = 27,
	SE_DockWidgetCloseButton = 28,
	SE_DockWidgetFloatButton = 29,
	SE_DockWidgetTitleBarText = 30,
	SE_DockWidgetIcon = 31,
	SE_CheckBoxLayoutItem = 32,
	SE_ComboBoxLayoutItem = 33,
	SE_DateTimeEditLayoutItem = 34,
	SE_LabelLayoutItem = 35,
	SE_ProgressBarLayoutItem = 36,
	SE_PushButtonLayoutItem = 37,
	SE_RadioButtonLayoutItem = 38,
	SE_SliderLayoutItem = 39,
	SE_SpinBoxLayoutItem = 40,
	SE_ToolButtonLayoutItem = 41,
	SE_FrameLayoutItem = 42,
	SE_GroupBoxLayoutItem = 43,
	SE_TabWidgetLayoutItem = 44,
	SE_ItemViewItemDecoration = 45,
	SE_ItemViewItemText = 46,
	SE_ItemViewItemFocusRect = 47,
	SE_TabBarTabLeftButton = 48,
	SE_TabBarTabRightButton = 49,
	SE_TabBarTabText = 50,
	SE_ShapedFrameContents = 51,
	SE_ToolBarHandle = 52,
	SE_TabBarScrollLeftButton = 53,
	SE_TabBarScrollRightButton = 54,
	SE_TabBarTearIndicatorRight = 55,
	SE_PushButtonBevel = 56,
	SE_CustomBase = 4026531840,
}
[AllowDuplicates]
public enum QStyle__ComplexControl
{
	CC_SpinBox = 0,
	CC_ComboBox = 1,
	CC_ScrollBar = 2,
	CC_Slider = 3,
	CC_ToolButton = 4,
	CC_TitleBar = 5,
	CC_Dial = 6,
	CC_GroupBox = 7,
	CC_MdiControls = 8,
	CC_CustomBase = 4026531840,
}
[AllowDuplicates]
public enum QStyle__SubControl
{
	SC_None = 0,
	SC_ScrollBarAddLine = 1,
	SC_ScrollBarSubLine = 2,
	SC_ScrollBarAddPage = 4,
	SC_ScrollBarSubPage = 8,
	SC_ScrollBarFirst = 16,
	SC_ScrollBarLast = 32,
	SC_ScrollBarSlider = 64,
	SC_ScrollBarGroove = 128,
	SC_SpinBoxUp = 1,
	SC_SpinBoxDown = 2,
	SC_SpinBoxFrame = 4,
	SC_SpinBoxEditField = 8,
	SC_ComboBoxFrame = 1,
	SC_ComboBoxEditField = 2,
	SC_ComboBoxArrow = 4,
	SC_ComboBoxListBoxPopup = 8,
	SC_SliderGroove = 1,
	SC_SliderHandle = 2,
	SC_SliderTickmarks = 4,
	SC_ToolButton = 1,
	SC_ToolButtonMenu = 2,
	SC_TitleBarSysMenu = 1,
	SC_TitleBarMinButton = 2,
	SC_TitleBarMaxButton = 4,
	SC_TitleBarCloseButton = 8,
	SC_TitleBarNormalButton = 16,
	SC_TitleBarShadeButton = 32,
	SC_TitleBarUnshadeButton = 64,
	SC_TitleBarContextHelpButton = 128,
	SC_TitleBarLabel = 256,
	SC_DialGroove = 1,
	SC_DialHandle = 2,
	SC_DialTickmarks = 4,
	SC_GroupBoxCheckBox = 1,
	SC_GroupBoxLabel = 2,
	SC_GroupBoxContents = 4,
	SC_GroupBoxFrame = 8,
	SC_MdiMinButton = 1,
	SC_MdiNormalButton = 2,
	SC_MdiCloseButton = 4,
	SC_CustomBase = 4026531840,
	SC_All = 4294967295,
}
[AllowDuplicates]
public enum QStyle__PixelMetric
{
	PM_ButtonMargin = 0,
	PM_ButtonDefaultIndicator = 1,
	PM_MenuButtonIndicator = 2,
	PM_ButtonShiftHorizontal = 3,
	PM_ButtonShiftVertical = 4,
	PM_DefaultFrameWidth = 5,
	PM_SpinBoxFrameWidth = 6,
	PM_ComboBoxFrameWidth = 7,
	PM_MaximumDragDistance = 8,
	PM_ScrollBarExtent = 9,
	PM_ScrollBarSliderMin = 10,
	PM_SliderThickness = 11,
	PM_SliderControlThickness = 12,
	PM_SliderLength = 13,
	PM_SliderTickmarkOffset = 14,
	PM_SliderSpaceAvailable = 15,
	PM_DockWidgetSeparatorExtent = 16,
	PM_DockWidgetHandleExtent = 17,
	PM_DockWidgetFrameWidth = 18,
	PM_TabBarTabOverlap = 19,
	PM_TabBarTabHSpace = 20,
	PM_TabBarTabVSpace = 21,
	PM_TabBarBaseHeight = 22,
	PM_TabBarBaseOverlap = 23,
	PM_ProgressBarChunkWidth = 24,
	PM_SplitterWidth = 25,
	PM_TitleBarHeight = 26,
	PM_MenuScrollerHeight = 27,
	PM_MenuHMargin = 28,
	PM_MenuVMargin = 29,
	PM_MenuPanelWidth = 30,
	PM_MenuTearoffHeight = 31,
	PM_MenuDesktopFrameWidth = 32,
	PM_MenuBarPanelWidth = 33,
	PM_MenuBarItemSpacing = 34,
	PM_MenuBarVMargin = 35,
	PM_MenuBarHMargin = 36,
	PM_IndicatorWidth = 37,
	PM_IndicatorHeight = 38,
	PM_ExclusiveIndicatorWidth = 39,
	PM_ExclusiveIndicatorHeight = 40,
	PM_DialogButtonsSeparator = 41,
	PM_DialogButtonsButtonWidth = 42,
	PM_DialogButtonsButtonHeight = 43,
	PM_MdiSubWindowFrameWidth = 44,
	PM_MdiSubWindowMinimizedWidth = 45,
	PM_HeaderMargin = 46,
	PM_HeaderMarkSize = 47,
	PM_HeaderGripMargin = 48,
	PM_TabBarTabShiftHorizontal = 49,
	PM_TabBarTabShiftVertical = 50,
	PM_TabBarScrollButtonWidth = 51,
	PM_ToolBarFrameWidth = 52,
	PM_ToolBarHandleExtent = 53,
	PM_ToolBarItemSpacing = 54,
	PM_ToolBarItemMargin = 55,
	PM_ToolBarSeparatorExtent = 56,
	PM_ToolBarExtensionExtent = 57,
	PM_SpinBoxSliderHeight = 58,
	PM_ToolBarIconSize = 59,
	PM_ListViewIconSize = 60,
	PM_IconViewIconSize = 61,
	PM_SmallIconSize = 62,
	PM_LargeIconSize = 63,
	PM_FocusFrameVMargin = 64,
	PM_FocusFrameHMargin = 65,
	PM_ToolTipLabelFrameWidth = 66,
	PM_CheckBoxLabelSpacing = 67,
	PM_TabBarIconSize = 68,
	PM_SizeGripSize = 69,
	PM_DockWidgetTitleMargin = 70,
	PM_MessageBoxIconSize = 71,
	PM_ButtonIconSize = 72,
	PM_DockWidgetTitleBarButtonMargin = 73,
	PM_RadioButtonLabelSpacing = 74,
	PM_LayoutLeftMargin = 75,
	PM_LayoutTopMargin = 76,
	PM_LayoutRightMargin = 77,
	PM_LayoutBottomMargin = 78,
	PM_LayoutHorizontalSpacing = 79,
	PM_LayoutVerticalSpacing = 80,
	PM_TabBar_ScrollButtonOverlap = 81,
	PM_TextCursorWidth = 82,
	PM_TabCloseIndicatorWidth = 83,
	PM_TabCloseIndicatorHeight = 84,
	PM_ScrollView_ScrollBarSpacing = 85,
	PM_ScrollView_ScrollBarOverlap = 86,
	PM_SubMenuOverlap = 87,
	PM_TreeViewIndentation = 88,
	PM_HeaderDefaultSectionSizeHorizontal = 89,
	PM_HeaderDefaultSectionSizeVertical = 90,
	PM_TitleBarButtonIconSize = 91,
	PM_TitleBarButtonSize = 92,
	PM_LineEditIconSize = 93,
	PM_LineEditIconMargin = 94,
	PM_CustomBase = 4026531840,
}
[AllowDuplicates]
public enum QStyle__ContentsType
{
	CT_PushButton = 0,
	CT_CheckBox = 1,
	CT_RadioButton = 2,
	CT_ToolButton = 3,
	CT_ComboBox = 4,
	CT_Splitter = 5,
	CT_ProgressBar = 6,
	CT_MenuItem = 7,
	CT_MenuBarItem = 8,
	CT_MenuBar = 9,
	CT_Menu = 10,
	CT_TabBarTab = 11,
	CT_Slider = 12,
	CT_ScrollBar = 13,
	CT_LineEdit = 14,
	CT_SpinBox = 15,
	CT_SizeGrip = 16,
	CT_TabWidget = 17,
	CT_DialogButtons = 18,
	CT_HeaderSection = 19,
	CT_GroupBox = 20,
	CT_MdiControls = 21,
	CT_ItemViewItem = 22,
	CT_CustomBase = 4026531840,
}
[AllowDuplicates]
public enum QStyle__RequestSoftwareInputPanel
{
	RSIP_OnMouseClickAndAlreadyFocused = 0,
	RSIP_OnMouseClick = 1,
}
[AllowDuplicates]
public enum QStyle__StyleHint
{
	SH_EtchDisabledText = 0,
	SH_DitherDisabledText = 1,
	SH_ScrollBar_MiddleClickAbsolutePosition = 2,
	SH_ScrollBar_ScrollWhenPointerLeavesControl = 3,
	SH_TabBar_SelectMouseType = 4,
	SH_TabBar_Alignment = 5,
	SH_Header_ArrowAlignment = 6,
	SH_Slider_SnapToValue = 7,
	SH_Slider_SloppyKeyEvents = 8,
	SH_ProgressDialog_CenterCancelButton = 9,
	SH_ProgressDialog_TextLabelAlignment = 10,
	SH_PrintDialog_RightAlignButtons = 11,
	SH_MainWindow_SpaceBelowMenuBar = 12,
	SH_FontDialog_SelectAssociatedText = 13,
	SH_Menu_AllowActiveAndDisabled = 14,
	SH_Menu_SpaceActivatesItem = 15,
	SH_Menu_SubMenuPopupDelay = 16,
	SH_ScrollView_FrameOnlyAroundContents = 17,
	SH_MenuBar_AltKeyNavigation = 18,
	SH_ComboBox_ListMouseTracking = 19,
	SH_Menu_MouseTracking = 20,
	SH_MenuBar_MouseTracking = 21,
	SH_ItemView_ChangeHighlightOnFocus = 22,
	SH_Widget_ShareActivation = 23,
	SH_Workspace_FillSpaceOnMaximize = 24,
	SH_ComboBox_Popup = 25,
	SH_TitleBar_NoBorder = 26,
	SH_Slider_StopMouseOverSlider = 27,
	SH_BlinkCursorWhenTextSelected = 28,
	SH_RichText_FullWidthSelection = 29,
	SH_Menu_Scrollable = 30,
	SH_GroupBox_TextLabelVerticalAlignment = 31,
	SH_GroupBox_TextLabelColor = 32,
	SH_Menu_SloppySubMenus = 33,
	SH_Table_GridLineColor = 34,
	SH_LineEdit_PasswordCharacter = 35,
	SH_DialogButtons_DefaultButton = 36,
	SH_ToolBox_SelectedPageTitleBold = 37,
	SH_TabBar_PreferNoArrows = 38,
	SH_ScrollBar_LeftClickAbsolutePosition = 39,
	SH_ListViewExpand_SelectMouseType = 40,
	SH_UnderlineShortcut = 41,
	SH_SpinBox_AnimateButton = 42,
	SH_SpinBox_KeyPressAutoRepeatRate = 43,
	SH_SpinBox_ClickAutoRepeatRate = 44,
	SH_Menu_FillScreenWithScroll = 45,
	SH_ToolTipLabel_Opacity = 46,
	SH_DrawMenuBarSeparator = 47,
	SH_TitleBar_ModifyNotification = 48,
	SH_Button_FocusPolicy = 49,
	SH_MessageBox_UseBorderForButtonSpacing = 50,
	SH_TitleBar_AutoRaise = 51,
	SH_ToolButton_PopupDelay = 52,
	SH_FocusFrame_Mask = 53,
	SH_RubberBand_Mask = 54,
	SH_WindowFrame_Mask = 55,
	SH_SpinControls_DisableOnBounds = 56,
	SH_Dial_BackgroundRole = 57,
	SH_ComboBox_LayoutDirection = 58,
	SH_ItemView_EllipsisLocation = 59,
	SH_ItemView_ShowDecorationSelected = 60,
	SH_ItemView_ActivateItemOnSingleClick = 61,
	SH_ScrollBar_ContextMenu = 62,
	SH_ScrollBar_RollBetweenButtons = 63,
	SH_Slider_AbsoluteSetButtons = 64,
	SH_Slider_PageSetButtons = 65,
	SH_Menu_KeyboardSearch = 66,
	SH_TabBar_ElideMode = 67,
	SH_DialogButtonLayout = 68,
	SH_ComboBox_PopupFrameStyle = 69,
	SH_MessageBox_TextInteractionFlags = 70,
	SH_DialogButtonBox_ButtonsHaveIcons = 71,
	SH_MessageBox_CenterButtons = 72,
	SH_Menu_SelectionWrap = 73,
	SH_ItemView_MovementWithoutUpdatingSelection = 74,
	SH_ToolTip_Mask = 75,
	SH_FocusFrame_AboveWidget = 76,
	SH_TextControl_FocusIndicatorTextCharFormat = 77,
	SH_WizardStyle = 78,
	SH_ItemView_ArrowKeysNavigateIntoChildren = 79,
	SH_Menu_Mask = 80,
	SH_Menu_FlashTriggeredItem = 81,
	SH_Menu_FadeOutOnHide = 82,
	SH_SpinBox_ClickAutoRepeatThreshold = 83,
	SH_ItemView_PaintAlternatingRowColorsForEmptyArea = 84,
	SH_FormLayoutWrapPolicy = 85,
	SH_TabWidget_DefaultTabPosition = 86,
	SH_ToolBar_Movable = 87,
	SH_FormLayoutFieldGrowthPolicy = 88,
	SH_FormLayoutFormAlignment = 89,
	SH_FormLayoutLabelAlignment = 90,
	SH_ItemView_DrawDelegateFrame = 91,
	SH_TabBar_CloseButtonPosition = 92,
	SH_DockWidget_ButtonsHaveFrame = 93,
	SH_ToolButtonStyle = 94,
	SH_RequestSoftwareInputPanel = 95,
	SH_ScrollBar_Transient = 96,
	SH_Menu_SupportsSections = 97,
	SH_ToolTip_WakeUpDelay = 98,
	SH_ToolTip_FallAsleepDelay = 99,
	SH_Widget_Animate = 100,
	SH_Splitter_OpaqueResize = 101,
	SH_ComboBox_UseNativePopup = 102,
	SH_LineEdit_PasswordMaskDelay = 103,
	SH_TabBar_ChangeCurrentDelay = 104,
	SH_Menu_SubMenuUniDirection = 105,
	SH_Menu_SubMenuUniDirectionFailCount = 106,
	SH_Menu_SubMenuSloppySelectOtherActions = 107,
	SH_Menu_SubMenuSloppyCloseTimeout = 108,
	SH_Menu_SubMenuResetWhenReenteringParent = 109,
	SH_Menu_SubMenuDontStartSloppyOnLeave = 110,
	SH_ItemView_ScrollMode = 111,
	SH_TitleBar_ShowToolTipsOnButtons = 112,
	SH_Widget_Animation_Duration = 113,
	SH_ComboBox_AllowWheelScrolling = 114,
	SH_SpinBox_ButtonsInsideFrame = 115,
	SH_SpinBox_StepModifier = 116,
	SH_TabBar_AllowWheelScrolling = 117,
	SH_Table_AlwaysDrawLeftTopGridLines = 118,
	SH_SpinBox_SelectOnStep = 119,
	SH_CustomBase = 4026531840,
}
[AllowDuplicates]
public enum QStyle__StandardPixmap
{
	SP_TitleBarMenuButton = 0,
	SP_TitleBarMinButton = 1,
	SP_TitleBarMaxButton = 2,
	SP_TitleBarCloseButton = 3,
	SP_TitleBarNormalButton = 4,
	SP_TitleBarShadeButton = 5,
	SP_TitleBarUnshadeButton = 6,
	SP_TitleBarContextHelpButton = 7,
	SP_DockWidgetCloseButton = 8,
	SP_MessageBoxInformation = 9,
	SP_MessageBoxWarning = 10,
	SP_MessageBoxCritical = 11,
	SP_MessageBoxQuestion = 12,
	SP_DesktopIcon = 13,
	SP_TrashIcon = 14,
	SP_ComputerIcon = 15,
	SP_DriveFDIcon = 16,
	SP_DriveHDIcon = 17,
	SP_DriveCDIcon = 18,
	SP_DriveDVDIcon = 19,
	SP_DriveNetIcon = 20,
	SP_DirOpenIcon = 21,
	SP_DirClosedIcon = 22,
	SP_DirLinkIcon = 23,
	SP_DirLinkOpenIcon = 24,
	SP_FileIcon = 25,
	SP_FileLinkIcon = 26,
	SP_ToolBarHorizontalExtensionButton = 27,
	SP_ToolBarVerticalExtensionButton = 28,
	SP_FileDialogStart = 29,
	SP_FileDialogEnd = 30,
	SP_FileDialogToParent = 31,
	SP_FileDialogNewFolder = 32,
	SP_FileDialogDetailedView = 33,
	SP_FileDialogInfoView = 34,
	SP_FileDialogContentsView = 35,
	SP_FileDialogListView = 36,
	SP_FileDialogBack = 37,
	SP_DirIcon = 38,
	SP_DialogOkButton = 39,
	SP_DialogCancelButton = 40,
	SP_DialogHelpButton = 41,
	SP_DialogOpenButton = 42,
	SP_DialogSaveButton = 43,
	SP_DialogCloseButton = 44,
	SP_DialogApplyButton = 45,
	SP_DialogResetButton = 46,
	SP_DialogDiscardButton = 47,
	SP_DialogYesButton = 48,
	SP_DialogNoButton = 49,
	SP_ArrowUp = 50,
	SP_ArrowDown = 51,
	SP_ArrowLeft = 52,
	SP_ArrowRight = 53,
	SP_ArrowBack = 54,
	SP_ArrowForward = 55,
	SP_DirHomeIcon = 56,
	SP_CommandLink = 57,
	SP_VistaShield = 58,
	SP_BrowserReload = 59,
	SP_BrowserStop = 60,
	SP_MediaPlay = 61,
	SP_MediaStop = 62,
	SP_MediaPause = 63,
	SP_MediaSkipForward = 64,
	SP_MediaSkipBackward = 65,
	SP_MediaSeekForward = 66,
	SP_MediaSeekBackward = 67,
	SP_MediaVolume = 68,
	SP_MediaVolumeMuted = 69,
	SP_LineEditClearButton = 70,
	SP_DialogYesToAllButton = 71,
	SP_DialogNoToAllButton = 72,
	SP_DialogSaveAllButton = 73,
	SP_DialogAbortButton = 74,
	SP_DialogRetryButton = 75,
	SP_DialogIgnoreButton = 76,
	SP_RestoreDefaultsButton = 77,
	SP_TabCloseButton = 78,
	NStandardPixmap = 79,
	SP_CustomBase = 4026531840,
}
public interface IQStyle
{
	void* NativePtr { get; }
}
public struct QStylePtr : IQStyle, IDisposable, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QStyle_new());
	}
	
	public void Dispose()
	{
		CQt.QStyle_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QStyle_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QStyle_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QStyle_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QStyle_Tr(s);
	}
	
	public libqt_string Name()
	{
		return CQt.QStyle_Name(this.nativePtr);
	}
	
	public void Polish(IQWidget widget)
	{
		CQt.QStyle_Polish(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void Unpolish(IQWidget widget)
	{
		CQt.QStyle_Unpolish(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void PolishWithApplication(IQApplication application)
	{
		CQt.QStyle_PolishWithApplication(this.nativePtr, (application == default || application.NativePtr == default) ? default : application.NativePtr);
	}
	
	public void UnpolishWithApplication(IQApplication application)
	{
		CQt.QStyle_UnpolishWithApplication(this.nativePtr, (application == default || application.NativePtr == default) ? default : application.NativePtr);
	}
	
	public void PolishWithPalette(IQPalette palette)
	{
		CQt.QStyle_PolishWithPalette(this.nativePtr, (palette == default || palette.NativePtr == default) ? default : palette.NativePtr);
	}
	
	public void ItemTextRect(IQFontMetrics fm, IQRect r, int32 flags, bool enabled, String text)
	{
		CQt.QStyle_ItemTextRect(this.nativePtr, (fm == default || fm.NativePtr == default) ? default : fm.NativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr, flags, enabled, libqt_string(text));
	}
	
	public void ItemPixmapRect(IQRect r, int32 flags, IQPixmap pixmap)
	{
		CQt.QStyle_ItemPixmapRect(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr, flags, (pixmap == default || pixmap.NativePtr == default) ? default : pixmap.NativePtr);
	}
	
	public void DrawItemText(IQPainter painter, IQRect rect, int32 flags, IQPalette pal, bool enabled, String text, int64 textRole)
	{
		CQt.QStyle_DrawItemText(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, flags, (pal == default || pal.NativePtr == default) ? default : pal.NativePtr, enabled, libqt_string(text), (int64)textRole);
	}
	
	public void DrawItemPixmap(IQPainter painter, IQRect rect, int32 alignment, IQPixmap pixmap)
	{
		CQt.QStyle_DrawItemPixmap(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, alignment, (pixmap == default || pixmap.NativePtr == default) ? default : pixmap.NativePtr);
	}
	
	public void StandardPalette()
	{
		CQt.QStyle_StandardPalette(this.nativePtr);
	}
	
	public void DrawPrimitive(int64 pe, IQStyleOption opt, IQPainter p, IQWidget w)
	{
		CQt.QStyle_DrawPrimitive(this.nativePtr, (int64)pe, (opt == default || opt.NativePtr == default) ? default : opt.NativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr, (w == default || w.NativePtr == default) ? default : w.NativePtr);
	}
	
	public void DrawControl(int64 element, IQStyleOption opt, IQPainter p, IQWidget w)
	{
		CQt.QStyle_DrawControl(this.nativePtr, (int64)element, (opt == default || opt.NativePtr == default) ? default : opt.NativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr, (w == default || w.NativePtr == default) ? default : w.NativePtr);
	}
	
	public void SubElementRect(int64 subElement, IQStyleOption option, IQWidget widget)
	{
		CQt.QStyle_SubElementRect(this.nativePtr, (int64)subElement, (option == default || option.NativePtr == default) ? default : option.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void DrawComplexControl(int64 cc, IQStyleOptionComplex opt, IQPainter p, IQWidget widget)
	{
		CQt.QStyle_DrawComplexControl(this.nativePtr, (int64)cc, (opt == default || opt.NativePtr == default) ? default : opt.NativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public int64 HitTestComplexControl(int64 cc, IQStyleOptionComplex opt, IQPoint pt, IQWidget widget)
	{
		return CQt.QStyle_HitTestComplexControl(this.nativePtr, (int64)cc, (opt == default || opt.NativePtr == default) ? default : opt.NativePtr, (pt == default || pt.NativePtr == default) ? default : pt.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void SubControlRect(int64 cc, IQStyleOptionComplex opt, int64 sc, IQWidget widget)
	{
		CQt.QStyle_SubControlRect(this.nativePtr, (int64)cc, (opt == default || opt.NativePtr == default) ? default : opt.NativePtr, (int64)sc, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public int32 PixelMetric(int64 metric, IQStyleOption option, IQWidget widget)
	{
		return CQt.QStyle_PixelMetric(this.nativePtr, (int64)metric, (option == default || option.NativePtr == default) ? default : option.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void SizeFromContents(int64 ct, IQStyleOption opt, IQSize contentsSize, IQWidget w)
	{
		CQt.QStyle_SizeFromContents(this.nativePtr, (int64)ct, (opt == default || opt.NativePtr == default) ? default : opt.NativePtr, (contentsSize == default || contentsSize.NativePtr == default) ? default : contentsSize.NativePtr, (w == default || w.NativePtr == default) ? default : w.NativePtr);
	}
	
	public int32 StyleHint(int64 stylehint, IQStyleOption opt, IQWidget widget, IQStyleHintReturn returnData)
	{
		return CQt.QStyle_StyleHint(this.nativePtr, (int64)stylehint, (opt == default || opt.NativePtr == default) ? default : opt.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr, (returnData == default || returnData.NativePtr == default) ? default : returnData.NativePtr);
	}
	
	public void StandardPixmap(int64 standardPixmap, IQStyleOption opt, IQWidget widget)
	{
		CQt.QStyle_StandardPixmap(this.nativePtr, (int64)standardPixmap, (opt == default || opt.NativePtr == default) ? default : opt.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void StandardIcon(int64 standardIcon, IQStyleOption option, IQWidget widget)
	{
		CQt.QStyle_StandardIcon(this.nativePtr, (int64)standardIcon, (option == default || option.NativePtr == default) ? default : option.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void GeneratedIconPixmap(int64 iconMode, IQPixmap pixmap, IQStyleOption opt)
	{
		CQt.QStyle_GeneratedIconPixmap(this.nativePtr, (int64)iconMode, (pixmap == default || pixmap.NativePtr == default) ? default : pixmap.NativePtr, (opt == default || opt.NativePtr == default) ? default : opt.NativePtr);
	}
	
	public static void VisualRect(int64 direction, IQRect boundingRect, IQRect logicalRect)
	{
		CQt.QStyle_VisualRect((int64)direction, (boundingRect == default || boundingRect.NativePtr == default) ? default : boundingRect.NativePtr, (logicalRect == default || logicalRect.NativePtr == default) ? default : logicalRect.NativePtr);
	}
	
	public static void VisualPos(int64 direction, IQRect boundingRect, IQPoint logicalPos)
	{
		CQt.QStyle_VisualPos((int64)direction, (boundingRect == default || boundingRect.NativePtr == default) ? default : boundingRect.NativePtr, (logicalPos == default || logicalPos.NativePtr == default) ? default : logicalPos.NativePtr);
	}
	
	public static int32 SliderPositionFromValue(int32 min, int32 max, int32 val, int32 space)
	{
		return CQt.QStyle_SliderPositionFromValue(min, max, val, space);
	}
	
	public static int32 SliderValueFromPosition(int32 min, int32 max, int32 pos, int32 space)
	{
		return CQt.QStyle_SliderValueFromPosition(min, max, pos, space);
	}
	
	public static int64 VisualAlignment(int64 direction, int64 alignment)
	{
		return CQt.QStyle_VisualAlignment((int64)direction, alignment);
	}
	
	public static void AlignedRect(int64 direction, int64 alignment, IQSize size, IQRect rectangle)
	{
		CQt.QStyle_AlignedRect((int64)direction, alignment, (size == default || size.NativePtr == default) ? default : size.NativePtr, (rectangle == default || rectangle.NativePtr == default) ? default : rectangle.NativePtr);
	}
	
	public int32 LayoutSpacing(int64 control1, int64 control2, int64 orientation, IQStyleOption option, IQWidget widget)
	{
		return CQt.QStyle_LayoutSpacing(this.nativePtr, (int64)control1, (int64)control2, (int64)orientation, (option == default || option.NativePtr == default) ? default : option.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public int32 CombinedLayoutSpacing(int64 controls1, int64 controls2, int64 orientation)
	{
		return CQt.QStyle_CombinedLayoutSpacing(this.nativePtr, controls1, controls2, (int64)orientation);
	}
	
	public void* Proxy()
	{
		return CQt.QStyle_Proxy(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QStyle_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QStyle_Tr3(s, c, n);
	}
	
	public static int32 SliderPositionFromValue5(int32 min, int32 max, int32 val, int32 space, bool upsideDown)
	{
		return CQt.QStyle_SliderPositionFromValue5(min, max, val, space, upsideDown);
	}
	
	public static int32 SliderValueFromPosition5(int32 min, int32 max, int32 pos, int32 space, bool upsideDown)
	{
		return CQt.QStyle_SliderValueFromPosition5(min, max, pos, space, upsideDown);
	}
	
	public int32 CombinedLayoutSpacing4(int64 controls1, int64 controls2, int64 orientation, IQStyleOption option)
	{
		return CQt.QStyle_CombinedLayoutSpacing4(this.nativePtr, controls1, controls2, (int64)orientation, (option == default || option.NativePtr == default) ? default : option.NativePtr);
	}
	
	public int32 CombinedLayoutSpacing5(int64 controls1, int64 controls2, int64 orientation, IQStyleOption option, IQWidget widget)
	{
		return CQt.QStyle_CombinedLayoutSpacing5(this.nativePtr, controls1, controls2, (int64)orientation, (option == default || option.NativePtr == default) ? default : option.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public bool Event(IQEvent event)
	{
		return CQt.QObject_Event(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public bool EventFilter(IQObject watched, IQEvent event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, (watched == default || watched.NativePtr == default) ? default : watched.NativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(char8* name)
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
	
	public void MoveToThread(IQThread thread)
	{
		CQt.QObject_MoveToThread(this.nativePtr, (thread == default || thread.NativePtr == default) ? default : thread.NativePtr);
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
	
	public void SetParent(IQObject parent)
	{
		CQt.QObject_SetParent(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, (filterObj == default || filterObj.NativePtr == default) ? default : filterObj.NativePtr);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, (obj == default || obj.NativePtr == default) ? default : obj.NativePtr);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		CQt.QObject_Connect((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (method == default || method.NativePtr == default) ? default : method.NativePtr);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		CQt.QObject_Connect2(this.nativePtr, (sender == default || sender.NativePtr == default) ? default : sender.NativePtr, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return CQt.QObject_Disconnect((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (member == default || member.NativePtr == default) ? default : member.NativePtr);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection((param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
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
		return CQt.QObject_SetProperty(this.nativePtr, name, (value == default || value.NativePtr == default) ? default : value.NativePtr);
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
		return CQt.QObject_StartTimer2(this.nativePtr, interval, (int64)timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		CQt.QObject_Connect5((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (method == default || method.NativePtr == default) ? default : method.NativePtr, (int64)typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		CQt.QObject_Connect4(this.nativePtr, (sender == default || sender.NativePtr == default) ? default : sender.NativePtr, signal, member, (int64)typeVal);
	}
	
}
public class QStyle
{
	public QStylePtr handle;
	
	public static implicit operator QStylePtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QStylePtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* MetaObject()
	{
		return this.handle.MetaObject();
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return this.handle.Metacast(param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return this.handle.Metacall(param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return QStylePtr.Tr(s);
	}
	
	public libqt_string Name()
	{
		return this.handle.Name();
	}
	
	public virtual void Polish(IQWidget widget)
	{
		this.handle.Polish(widget);
	}
	
	public virtual void Unpolish(IQWidget widget)
	{
		this.handle.Unpolish(widget);
	}
	
	public virtual void PolishWithApplication(IQApplication application)
	{
		this.handle.PolishWithApplication(application);
	}
	
	public virtual void UnpolishWithApplication(IQApplication application)
	{
		this.handle.UnpolishWithApplication(application);
	}
	
	public virtual void PolishWithPalette(IQPalette palette)
	{
		this.handle.PolishWithPalette(palette);
	}
	
	public virtual void ItemTextRect(IQFontMetrics fm, IQRect r, int32 flags, bool enabled, String text)
	{
		this.handle.ItemTextRect(fm, r, flags, enabled, text);
	}
	
	public virtual void ItemPixmapRect(IQRect r, int32 flags, IQPixmap pixmap)
	{
		this.handle.ItemPixmapRect(r, flags, pixmap);
	}
	
	public virtual void DrawItemText(IQPainter painter, IQRect rect, int32 flags, IQPalette pal, bool enabled, String text, int64 textRole)
	{
		this.handle.DrawItemText(painter, rect, flags, pal, enabled, text, textRole);
	}
	
	public virtual void DrawItemPixmap(IQPainter painter, IQRect rect, int32 alignment, IQPixmap pixmap)
	{
		this.handle.DrawItemPixmap(painter, rect, alignment, pixmap);
	}
	
	public virtual void StandardPalette()
	{
		this.handle.StandardPalette();
	}
	
	public virtual void DrawPrimitive(int64 pe, IQStyleOption opt, IQPainter p, IQWidget w)
	{
		this.handle.DrawPrimitive(pe, opt, p, w);
	}
	
	public virtual void DrawControl(int64 element, IQStyleOption opt, IQPainter p, IQWidget w)
	{
		this.handle.DrawControl(element, opt, p, w);
	}
	
	public virtual void SubElementRect(int64 subElement, IQStyleOption option, IQWidget widget)
	{
		this.handle.SubElementRect(subElement, option, widget);
	}
	
	public virtual void DrawComplexControl(int64 cc, IQStyleOptionComplex opt, IQPainter p, IQWidget widget)
	{
		this.handle.DrawComplexControl(cc, opt, p, widget);
	}
	
	public virtual int64 HitTestComplexControl(int64 cc, IQStyleOptionComplex opt, IQPoint pt, IQWidget widget)
	{
		return this.handle.HitTestComplexControl(cc, opt, pt, widget);
	}
	
	public virtual void SubControlRect(int64 cc, IQStyleOptionComplex opt, int64 sc, IQWidget widget)
	{
		this.handle.SubControlRect(cc, opt, sc, widget);
	}
	
	public virtual int32 PixelMetric(int64 metric, IQStyleOption option, IQWidget widget)
	{
		return this.handle.PixelMetric(metric, option, widget);
	}
	
	public virtual void SizeFromContents(int64 ct, IQStyleOption opt, IQSize contentsSize, IQWidget w)
	{
		this.handle.SizeFromContents(ct, opt, contentsSize, w);
	}
	
	public virtual int32 StyleHint(int64 stylehint, IQStyleOption opt, IQWidget widget, IQStyleHintReturn returnData)
	{
		return this.handle.StyleHint(stylehint, opt, widget, returnData);
	}
	
	public virtual void StandardPixmap(int64 standardPixmap, IQStyleOption opt, IQWidget widget)
	{
		this.handle.StandardPixmap(standardPixmap, opt, widget);
	}
	
	public virtual void StandardIcon(int64 standardIcon, IQStyleOption option, IQWidget widget)
	{
		this.handle.StandardIcon(standardIcon, option, widget);
	}
	
	public virtual void GeneratedIconPixmap(int64 iconMode, IQPixmap pixmap, IQStyleOption opt)
	{
		this.handle.GeneratedIconPixmap(iconMode, pixmap, opt);
	}
	
	public static void VisualRect(int64 direction, IQRect boundingRect, IQRect logicalRect)
	{
		QStylePtr.VisualRect(direction, boundingRect, logicalRect);
	}
	
	public static void VisualPos(int64 direction, IQRect boundingRect, IQPoint logicalPos)
	{
		QStylePtr.VisualPos(direction, boundingRect, logicalPos);
	}
	
	public static int32 SliderPositionFromValue(int32 min, int32 max, int32 val, int32 space)
	{
		return QStylePtr.SliderPositionFromValue(min, max, val, space);
	}
	
	public static int32 SliderValueFromPosition(int32 min, int32 max, int32 pos, int32 space)
	{
		return QStylePtr.SliderValueFromPosition(min, max, pos, space);
	}
	
	public static int64 VisualAlignment(int64 direction, int64 alignment)
	{
		return QStylePtr.VisualAlignment(direction, alignment);
	}
	
	public static void AlignedRect(int64 direction, int64 alignment, IQSize size, IQRect rectangle)
	{
		QStylePtr.AlignedRect(direction, alignment, size, rectangle);
	}
	
	public virtual int32 LayoutSpacing(int64 control1, int64 control2, int64 orientation, IQStyleOption option, IQWidget widget)
	{
		return this.handle.LayoutSpacing(control1, control2, orientation, option, widget);
	}
	
	public int32 CombinedLayoutSpacing(int64 controls1, int64 controls2, int64 orientation)
	{
		return this.handle.CombinedLayoutSpacing(controls1, controls2, orientation);
	}
	
	public void* Proxy()
	{
		return this.handle.Proxy();
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QStylePtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QStylePtr.Tr3(s, c, n);
	}
	
	public static int32 SliderPositionFromValue5(int32 min, int32 max, int32 val, int32 space, bool upsideDown)
	{
		return QStylePtr.SliderPositionFromValue5(min, max, val, space, upsideDown);
	}
	
	public static int32 SliderValueFromPosition5(int32 min, int32 max, int32 pos, int32 space, bool upsideDown)
	{
		return QStylePtr.SliderValueFromPosition5(min, max, pos, space, upsideDown);
	}
	
	public int32 CombinedLayoutSpacing4(int64 controls1, int64 controls2, int64 orientation, IQStyleOption option)
	{
		return this.handle.CombinedLayoutSpacing4(controls1, controls2, orientation, option);
	}
	
	public int32 CombinedLayoutSpacing5(int64 controls1, int64 controls2, int64 orientation, IQStyleOption option, IQWidget widget)
	{
		return this.handle.CombinedLayoutSpacing5(controls1, controls2, orientation, option, widget);
	}
	
	public virtual bool Event(IQEvent event)
	{
		return this.handle.Event(event);
	}
	
	public virtual bool EventFilter(IQObject watched, IQEvent event)
	{
		return this.handle.EventFilter(watched, event);
	}
	
	public libqt_string ObjectName()
	{
		return this.handle.ObjectName();
	}
	
	public void SetObjectName(char8* name)
	{
		this.handle.SetObjectName(name);
	}
	
	public bool IsWidgetType()
	{
		return this.handle.IsWidgetType();
	}
	
	public bool IsWindowType()
	{
		return this.handle.IsWindowType();
	}
	
	public bool IsQuickItemType()
	{
		return this.handle.IsQuickItemType();
	}
	
	public bool SignalsBlocked()
	{
		return this.handle.SignalsBlocked();
	}
	
	public bool BlockSignals(bool b)
	{
		return this.handle.BlockSignals(b);
	}
	
	public void* Thread()
	{
		return this.handle.Thread();
	}
	
	public void MoveToThread(IQThread thread)
	{
		this.handle.MoveToThread(thread);
	}
	
	public int32 StartTimer(int32 interval)
	{
		return this.handle.StartTimer(interval);
	}
	
	public void KillTimer(int32 id)
	{
		this.handle.KillTimer(id);
	}
	
	public void*[] Children()
	{
		return this.handle.Children();
	}
	
	public void SetParent(IQObject parent)
	{
		this.handle.SetParent(parent);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		this.handle.InstallEventFilter(filterObj);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		this.handle.RemoveEventFilter(obj);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		QStylePtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QStylePtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QStylePtr.DisconnectWithQMetaObjectConnection(param1);
	}
	
	public void DumpObjectTree()
	{
		this.handle.DumpObjectTree();
	}
	
	public void DumpObjectInfo()
	{
		this.handle.DumpObjectInfo();
	}
	
	public bool SetProperty(char8* name, IQVariant value)
	{
		return this.handle.SetProperty(name, value);
	}
	
	public void Property(char8* name)
	{
		this.handle.Property(name);
	}
	
	public libqt_string[] DynamicPropertyNames()
	{
		return this.handle.DynamicPropertyNames();
	}
	
	public void* BindingStorage()
	{
		return this.handle.BindingStorage();
	}
	
	public void* BindingStorage2()
	{
		return this.handle.BindingStorage2();
	}
	
	public void* Parent()
	{
		return this.handle.Parent();
	}
	
	public bool Inherits(char8* classname)
	{
		return this.handle.Inherits(classname);
	}
	
	public void DeleteLater()
	{
		this.handle.DeleteLater();
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return this.handle.StartTimer2(interval, timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		QStylePtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QStyle_new")]
	public static extern void* QStyle_new();
	[LinkName("QStyle_MetaObject")]
	public static extern void* QStyle_MetaObject(void* c_this);
	[LinkName("QStyle_Metacast")]
	public static extern void* QStyle_Metacast(void* c_this, char8* param1);
	[LinkName("QStyle_Metacall")]
	public static extern int32 QStyle_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QStyle_Tr")]
	public static extern libqt_string QStyle_Tr(char8* s);
	[LinkName("QStyle_Name")]
	public static extern libqt_string QStyle_Name(void* c_this);
	[LinkName("QStyle_Polish")]
	public static extern void QStyle_Polish(void* c_this, void* widget);
	[LinkName("QStyle_Unpolish")]
	public static extern void QStyle_Unpolish(void* c_this, void* widget);
	[LinkName("QStyle_PolishWithApplication")]
	public static extern void QStyle_PolishWithApplication(void* c_this, void* application);
	[LinkName("QStyle_UnpolishWithApplication")]
	public static extern void QStyle_UnpolishWithApplication(void* c_this, void* application);
	[LinkName("QStyle_PolishWithPalette")]
	public static extern void QStyle_PolishWithPalette(void* c_this, void* palette);
	[LinkName("QStyle_ItemTextRect")]
	public static extern void QStyle_ItemTextRect(void* c_this, void* fm, void* r, int32 flags, bool enabled, libqt_string text);
	[LinkName("QStyle_ItemPixmapRect")]
	public static extern void QStyle_ItemPixmapRect(void* c_this, void* r, int32 flags, void* pixmap);
	[LinkName("QStyle_DrawItemText")]
	public static extern void QStyle_DrawItemText(void* c_this, void* painter, void* rect, int32 flags, void* pal, bool enabled, libqt_string text, int64 textRole);
	[LinkName("QStyle_DrawItemPixmap")]
	public static extern void QStyle_DrawItemPixmap(void* c_this, void* painter, void* rect, int32 alignment, void* pixmap);
	[LinkName("QStyle_StandardPalette")]
	public static extern void QStyle_StandardPalette(void* c_this);
	[LinkName("QStyle_DrawPrimitive")]
	public static extern void QStyle_DrawPrimitive(void* c_this, int64 pe, void* opt, void* p, void* w);
	[LinkName("QStyle_DrawControl")]
	public static extern void QStyle_DrawControl(void* c_this, int64 element, void* opt, void* p, void* w);
	[LinkName("QStyle_SubElementRect")]
	public static extern void QStyle_SubElementRect(void* c_this, int64 subElement, void* option, void* widget);
	[LinkName("QStyle_DrawComplexControl")]
	public static extern void QStyle_DrawComplexControl(void* c_this, int64 cc, void* opt, void* p, void* widget);
	[LinkName("QStyle_HitTestComplexControl")]
	public static extern int64 QStyle_HitTestComplexControl(void* c_this, int64 cc, void* opt, void* pt, void* widget);
	[LinkName("QStyle_SubControlRect")]
	public static extern void QStyle_SubControlRect(void* c_this, int64 cc, void* opt, int64 sc, void* widget);
	[LinkName("QStyle_PixelMetric")]
	public static extern int32 QStyle_PixelMetric(void* c_this, int64 metric, void* option, void* widget);
	[LinkName("QStyle_SizeFromContents")]
	public static extern void QStyle_SizeFromContents(void* c_this, int64 ct, void* opt, void* contentsSize, void* w);
	[LinkName("QStyle_StyleHint")]
	public static extern int32 QStyle_StyleHint(void* c_this, int64 stylehint, void* opt, void* widget, void* returnData);
	[LinkName("QStyle_StandardPixmap")]
	public static extern void QStyle_StandardPixmap(void* c_this, int64 standardPixmap, void* opt, void* widget);
	[LinkName("QStyle_StandardIcon")]
	public static extern void QStyle_StandardIcon(void* c_this, int64 standardIcon, void* option, void* widget);
	[LinkName("QStyle_GeneratedIconPixmap")]
	public static extern void QStyle_GeneratedIconPixmap(void* c_this, int64 iconMode, void* pixmap, void* opt);
	[LinkName("QStyle_VisualRect")]
	public static extern void QStyle_VisualRect(int64 direction, void* boundingRect, void* logicalRect);
	[LinkName("QStyle_VisualPos")]
	public static extern void QStyle_VisualPos(int64 direction, void* boundingRect, void* logicalPos);
	[LinkName("QStyle_SliderPositionFromValue")]
	public static extern int32 QStyle_SliderPositionFromValue(int32 min, int32 max, int32 val, int32 space);
	[LinkName("QStyle_SliderValueFromPosition")]
	public static extern int32 QStyle_SliderValueFromPosition(int32 min, int32 max, int32 pos, int32 space);
	[LinkName("QStyle_VisualAlignment")]
	public static extern int64 QStyle_VisualAlignment(int64 direction, int64 alignment);
	[LinkName("QStyle_AlignedRect")]
	public static extern void QStyle_AlignedRect(int64 direction, int64 alignment, void* size, void* rectangle);
	[LinkName("QStyle_LayoutSpacing")]
	public static extern int32 QStyle_LayoutSpacing(void* c_this, int64 control1, int64 control2, int64 orientation, void* option, void* widget);
	[LinkName("QStyle_CombinedLayoutSpacing")]
	public static extern int32 QStyle_CombinedLayoutSpacing(void* c_this, int64 controls1, int64 controls2, int64 orientation);
	[LinkName("QStyle_Proxy")]
	public static extern void* QStyle_Proxy(void* c_this);
	[LinkName("QStyle_Tr2")]
	public static extern libqt_string QStyle_Tr2(char8* s, char8* c);
	[LinkName("QStyle_Tr3")]
	public static extern libqt_string QStyle_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QStyle_SliderPositionFromValue5")]
	public static extern int32 QStyle_SliderPositionFromValue5(int32 min, int32 max, int32 val, int32 space, bool upsideDown);
	[LinkName("QStyle_SliderValueFromPosition5")]
	public static extern int32 QStyle_SliderValueFromPosition5(int32 min, int32 max, int32 pos, int32 space, bool upsideDown);
	[LinkName("QStyle_CombinedLayoutSpacing4")]
	public static extern int32 QStyle_CombinedLayoutSpacing4(void* c_this, int64 controls1, int64 controls2, int64 orientation, void* option);
	[LinkName("QStyle_CombinedLayoutSpacing5")]
	public static extern int32 QStyle_CombinedLayoutSpacing5(void* c_this, int64 controls1, int64 controls2, int64 orientation, void* option, void* widget);
	/// Delete this object from C++ memory
	[LinkName("QStyle_Delete")]
	public static extern void QStyle_Delete(void* self);
}