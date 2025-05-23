using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum GlobalColor
{
	color0 = 0,
	color1 = 1,
	black = 2,
	white = 3,
	darkGray = 4,
	gray = 5,
	lightGray = 6,
	red = 7,
	green = 8,
	blue = 9,
	cyan = 10,
	magenta = 11,
	yellow = 12,
	darkRed = 13,
	darkGreen = 14,
	darkBlue = 15,
	darkCyan = 16,
	darkMagenta = 17,
	darkYellow = 18,
	transparent = 19,
}
[AllowDuplicates]
public enum MouseButton
{
	NoButton = 0,
	LeftButton = 1,
	RightButton = 2,
	MiddleButton = 4,
	BackButton = 8,
	XButton1 = 8,
	ExtraButton1 = 8,
	ForwardButton = 16,
	XButton2 = 16,
	ExtraButton2 = 16,
	TaskButton = 32,
	ExtraButton3 = 32,
	ExtraButton4 = 64,
	ExtraButton5 = 128,
	ExtraButton6 = 256,
	ExtraButton7 = 512,
	ExtraButton8 = 1024,
	ExtraButton9 = 2048,
	ExtraButton10 = 4096,
	ExtraButton11 = 8192,
	ExtraButton12 = 16384,
	ExtraButton13 = 32768,
	ExtraButton14 = 65536,
	ExtraButton15 = 131072,
	ExtraButton16 = 262144,
	ExtraButton17 = 524288,
	ExtraButton18 = 1048576,
	ExtraButton19 = 2097152,
	ExtraButton20 = 4194304,
	ExtraButton21 = 8388608,
	ExtraButton22 = 16777216,
	ExtraButton23 = 33554432,
	ExtraButton24 = 67108864,
	AllButtons = 134217727,
	MaxMouseButton = 67108864,
	MouseButtonMask = 4294967295,
}
[AllowDuplicates]
public enum Orientation
{
	Horizontal = 1,
	Vertical = 2,
}
[AllowDuplicates]
public enum FocusPolicy
{
	NoFocus = 0,
	TabFocus = 1,
	ClickFocus = 2,
	StrongFocus = 11,
	WheelFocus = 15,
}
[AllowDuplicates]
public enum TabFocusBehavior
{
	NoTabFocus = 0,
	TabFocusTextControls = 1,
	TabFocusListControls = 2,
	TabFocusAllControls = 255,
}
[AllowDuplicates]
public enum SortOrder
{
	AscendingOrder = 0,
	DescendingOrder = 1,
}
[AllowDuplicates]
public enum SplitBehaviorFlags
{
	KeepEmptyParts = 0,
	SkipEmptyParts = 1,
}
[AllowDuplicates]
public enum TileRule
{
	StretchTile = 0,
	RepeatTile = 1,
	RoundTile = 2,
}
[AllowDuplicates]
public enum AlignmentFlag
{
	AlignLeft = 1,
	AlignLeading = 1,
	AlignRight = 2,
	AlignTrailing = 2,
	AlignHCenter = 4,
	AlignJustify = 8,
	AlignAbsolute = 16,
	AlignHorizontal_Mask = 31,
	AlignTop = 32,
	AlignBottom = 64,
	AlignVCenter = 128,
	AlignBaseline = 256,
	AlignVertical_Mask = 480,
	AlignCenter = 132,
}
[AllowDuplicates]
public enum TextFlag
{
	TextSingleLine = 256,
	TextDontClip = 512,
	TextExpandTabs = 1024,
	TextShowMnemonic = 2048,
	TextWordWrap = 4096,
	TextWrapAnywhere = 8192,
	TextDontPrint = 16384,
	TextIncludeTrailingSpaces = 134217728,
	TextHideMnemonic = 32768,
	TextJustificationForced = 65536,
	TextForceLeftToRight = 131072,
	TextForceRightToLeft = 262144,
	TextLongestVariant = 524288,
}
[AllowDuplicates]
public enum TextElideMode
{
	ElideLeft = 0,
	ElideRight = 1,
	ElideMiddle = 2,
	ElideNone = 3,
}
[AllowDuplicates]
public enum WhiteSpaceMode
{
	WhiteSpaceNormal = 0,
	WhiteSpacePre = 1,
	WhiteSpaceNoWrap = 2,
	WhiteSpaceModeUndefined = -1,
}
[AllowDuplicates]
public enum HitTestAccuracy
{
	ExactHit = 0,
	FuzzyHit = 1,
}
[AllowDuplicates]
public enum WindowType
{
	Widget = 0,
	Window = 1,
	Dialog = 3,
	Sheet = 5,
	Drawer = 7,
	Popup = 9,
	Tool = 11,
	ToolTip = 13,
	SplashScreen = 15,
	Desktop = 17,
	SubWindow = 18,
	ForeignWindow = 33,
	CoverWindow = 65,
	WindowType_Mask = 255,
	MSWindowsFixedSizeDialogHint = 256,
	MSWindowsOwnDC = 512,
	BypassWindowManagerHint = 1024,
	X11BypassWindowManagerHint = 1024,
	FramelessWindowHint = 2048,
	WindowTitleHint = 4096,
	WindowSystemMenuHint = 8192,
	WindowMinimizeButtonHint = 16384,
	WindowMaximizeButtonHint = 32768,
	WindowMinMaxButtonsHint = 49152,
	WindowContextHelpButtonHint = 65536,
	WindowShadeButtonHint = 131072,
	WindowStaysOnTopHint = 262144,
	WindowTransparentForInput = 524288,
	WindowOverridesSystemGestures = 1048576,
	WindowDoesNotAcceptFocus = 2097152,
	MaximizeUsingFullscreenGeometryHint = 4194304,
	CustomizeWindowHint = 33554432,
	WindowStaysOnBottomHint = 67108864,
	WindowCloseButtonHint = 134217728,
	MacWindowToolBarButtonHint = 268435456,
	BypassGraphicsProxyWidget = 536870912,
	NoDropShadowWindowHint = 1073741824,
	WindowFullscreenButtonHint = 2147483648,
}
[AllowDuplicates]
public enum WindowState
{
	WindowNoState = 0,
	WindowMinimized = 1,
	WindowMaximized = 2,
	WindowFullScreen = 4,
	WindowActive = 8,
}
[AllowDuplicates]
public enum ApplicationState
{
	ApplicationSuspended = 0,
	ApplicationHidden = 1,
	ApplicationInactive = 2,
	ApplicationActive = 4,
}
[AllowDuplicates]
public enum ScreenOrientation
{
	PrimaryOrientation = 0,
	PortraitOrientation = 1,
	LandscapeOrientation = 2,
	InvertedPortraitOrientation = 4,
	InvertedLandscapeOrientation = 8,
}
[AllowDuplicates]
public enum WidgetAttribute
{
	WA_Disabled = 0,
	WA_UnderMouse = 1,
	WA_MouseTracking = 2,
	WA_OpaquePaintEvent = 4,
	WA_StaticContents = 5,
	WA_LaidOut = 7,
	WA_PaintOnScreen = 8,
	WA_NoSystemBackground = 9,
	WA_UpdatesDisabled = 10,
	WA_Mapped = 11,
	WA_InputMethodEnabled = 14,
	WA_WState_Visible = 15,
	WA_WState_Hidden = 16,
	WA_ForceDisabled = 32,
	WA_KeyCompression = 33,
	WA_PendingMoveEvent = 34,
	WA_PendingResizeEvent = 35,
	WA_SetPalette = 36,
	WA_SetFont = 37,
	WA_SetCursor = 38,
	WA_NoChildEventsFromChildren = 39,
	WA_WindowModified = 41,
	WA_Resized = 42,
	WA_Moved = 43,
	WA_PendingUpdate = 44,
	WA_InvalidSize = 45,
	WA_CustomWhatsThis = 47,
	WA_LayoutOnEntireRect = 48,
	WA_OutsideWSRange = 49,
	WA_GrabbedShortcut = 50,
	WA_TransparentForMouseEvents = 51,
	WA_PaintUnclipped = 52,
	WA_SetWindowIcon = 53,
	WA_NoMouseReplay = 54,
	WA_DeleteOnClose = 55,
	WA_RightToLeft = 56,
	WA_SetLayoutDirection = 57,
	WA_NoChildEventsForParent = 58,
	WA_ForceUpdatesDisabled = 59,
	WA_WState_Created = 60,
	WA_WState_CompressKeys = 61,
	WA_WState_InPaintEvent = 62,
	WA_WState_Reparented = 63,
	WA_WState_ConfigPending = 64,
	WA_WState_Polished = 66,
	WA_WState_OwnSizePolicy = 68,
	WA_WState_ExplicitShowHide = 69,
	WA_ShowModal = 70,
	WA_MouseNoMask = 71,
	WA_NoMousePropagation = 73,
	WA_Hover = 74,
	WA_InputMethodTransparent = 75,
	WA_QuitOnClose = 76,
	WA_KeyboardFocusChange = 77,
	WA_AcceptDrops = 78,
	WA_DropSiteRegistered = 79,
	WA_WindowPropagation = 80,
	WA_NoX11EventCompression = 81,
	WA_TintedBackground = 82,
	WA_X11OpenGLOverlay = 83,
	WA_AlwaysShowToolTips = 84,
	WA_MacOpaqueSizeGrip = 85,
	WA_SetStyle = 86,
	WA_SetLocale = 87,
	WA_MacShowFocusRect = 88,
	WA_MacNormalSize = 89,
	WA_MacSmallSize = 90,
	WA_MacMiniSize = 91,
	WA_LayoutUsesWidgetRect = 92,
	WA_StyledBackground = 93,
	WA_CanHostQMdiSubWindowTitleBar = 95,
	WA_MacAlwaysShowToolWindow = 96,
	WA_StyleSheet = 97,
	WA_ShowWithoutActivating = 98,
	WA_X11BypassTransientForHint = 99,
	WA_NativeWindow = 100,
	WA_DontCreateNativeAncestors = 101,
	WA_DontShowOnScreen = 103,
	WA_X11NetWmWindowTypeDesktop = 104,
	WA_X11NetWmWindowTypeDock = 105,
	WA_X11NetWmWindowTypeToolBar = 106,
	WA_X11NetWmWindowTypeMenu = 107,
	WA_X11NetWmWindowTypeUtility = 108,
	WA_X11NetWmWindowTypeSplash = 109,
	WA_X11NetWmWindowTypeDialog = 110,
	WA_X11NetWmWindowTypeDropDownMenu = 111,
	WA_X11NetWmWindowTypePopupMenu = 112,
	WA_X11NetWmWindowTypeToolTip = 113,
	WA_X11NetWmWindowTypeNotification = 114,
	WA_X11NetWmWindowTypeCombo = 115,
	WA_X11NetWmWindowTypeDND = 116,
	WA_SetWindowModality = 118,
	WA_WState_WindowOpacitySet = 119,
	WA_TranslucentBackground = 120,
	WA_AcceptTouchEvents = 121,
	WA_WState_AcceptedTouchBeginEvent = 122,
	WA_TouchPadAcceptSingleTouchEvents = 123,
	WA_X11DoNotAcceptFocus = 126,
	WA_AlwaysStackOnTop = 128,
	WA_TabletTracking = 129,
	WA_ContentsMarginsRespectsSafeArea = 130,
	WA_StyleSheetTarget = 131,
	WA_AttributeCount = 132,
}
[AllowDuplicates]
public enum ApplicationAttribute
{
	AA_DontShowIconsInMenus = 2,
	AA_NativeWindows = 3,
	AA_DontCreateNativeWidgetSiblings = 4,
	AA_PluginApplication = 5,
	AA_DontUseNativeMenuBar = 6,
	AA_MacDontSwapCtrlAndMeta = 7,
	AA_Use96Dpi = 8,
	AA_DisableNativeVirtualKeyboard = 9,
	AA_SynthesizeTouchForUnhandledMouseEvents = 11,
	AA_SynthesizeMouseForUnhandledTouchEvents = 12,
	AA_UseHighDpiPixmaps = 13,
	AA_ForceRasterWidgets = 14,
	AA_UseDesktopOpenGL = 15,
	AA_UseOpenGLES = 16,
	AA_UseSoftwareOpenGL = 17,
	AA_ShareOpenGLContexts = 18,
	AA_SetPalette = 19,
	AA_EnableHighDpiScaling = 20,
	AA_DisableHighDpiScaling = 21,
	AA_UseStyleSheetPropagationInWidgetStyles = 22,
	AA_DontUseNativeDialogs = 23,
	AA_SynthesizeMouseForUnhandledTabletEvents = 24,
	AA_CompressHighFrequencyEvents = 25,
	AA_DontCheckOpenGLContextThreadAffinity = 26,
	AA_DisableShaderDiskCache = 27,
	AA_DontShowShortcutsInContextMenus = 28,
	AA_CompressTabletEvents = 29,
	AA_DisableSessionManager = 31,
	AA_AttributeCount = 32,
}
[AllowDuplicates]
public enum ImageConversionFlag
{
	ColorMode_Mask = 3,
	AutoColor = 0,
	ColorOnly = 3,
	MonoOnly = 2,
	AlphaDither_Mask = 12,
	ThresholdAlphaDither = 0,
	OrderedAlphaDither = 4,
	DiffuseAlphaDither = 8,
	NoAlpha = 12,
	Dither_Mask = 48,
	DiffuseDither = 0,
	OrderedDither = 16,
	ThresholdDither = 32,
	DitherMode_Mask = 192,
	AutoDither = 0,
	PreferDither = 64,
	AvoidDither = 128,
	NoOpaqueDetection = 256,
	NoFormatConversion = 512,
}
[AllowDuplicates]
public enum BGMode
{
	TransparentMode = 0,
	OpaqueMode = 1,
}
[AllowDuplicates]
public enum Key
{
	Key_Space = 32,
	Key_Any = 32,
	Key_Exclam = 33,
	Key_QuoteDbl = 34,
	Key_NumberSign = 35,
	Key_Dollar = 36,
	Key_Percent = 37,
	Key_Ampersand = 38,
	Key_Apostrophe = 39,
	Key_ParenLeft = 40,
	Key_ParenRight = 41,
	Key_Asterisk = 42,
	Key_Plus = 43,
	Key_Comma = 44,
	Key_Minus = 45,
	Key_Period = 46,
	Key_Slash = 47,
	Key_0 = 48,
	Key_1 = 49,
	Key_2 = 50,
	Key_3 = 51,
	Key_4 = 52,
	Key_5 = 53,
	Key_6 = 54,
	Key_7 = 55,
	Key_8 = 56,
	Key_9 = 57,
	Key_Colon = 58,
	Key_Semicolon = 59,
	Key_Less = 60,
	Key_Equal = 61,
	Key_Greater = 62,
	Key_Question = 63,
	Key_At = 64,
	Key_A = 65,
	Key_B = 66,
	Key_C = 67,
	Key_D = 68,
	Key_E = 69,
	Key_F = 70,
	Key_G = 71,
	Key_H = 72,
	Key_I = 73,
	Key_J = 74,
	Key_K = 75,
	Key_L = 76,
	Key_M = 77,
	Key_N = 78,
	Key_O = 79,
	Key_P = 80,
	Key_Q = 81,
	Key_R = 82,
	Key_S = 83,
	Key_T = 84,
	Key_U = 85,
	Key_V = 86,
	Key_W = 87,
	Key_X = 88,
	Key_Y = 89,
	Key_Z = 90,
	Key_BracketLeft = 91,
	Key_Backslash = 92,
	Key_BracketRight = 93,
	Key_AsciiCircum = 94,
	Key_Underscore = 95,
	Key_QuoteLeft = 96,
	Key_BraceLeft = 123,
	Key_Bar = 124,
	Key_BraceRight = 125,
	Key_AsciiTilde = 126,
	Key_nobreakspace = 160,
	Key_exclamdown = 161,
	Key_cent = 162,
	Key_sterling = 163,
	Key_currency = 164,
	Key_yen = 165,
	Key_brokenbar = 166,
	Key_section = 167,
	Key_diaeresis = 168,
	Key_copyright = 169,
	Key_ordfeminine = 170,
	Key_guillemotleft = 171,
	Key_notsign = 172,
	Key_hyphen = 173,
	Key_registered = 174,
	Key_macron = 175,
	Key_degree = 176,
	Key_plusminus = 177,
	Key_twosuperior = 178,
	Key_threesuperior = 179,
	Key_acute = 180,
	Key_mu = 181,
	Key_paragraph = 182,
	Key_periodcentered = 183,
	Key_cedilla = 184,
	Key_onesuperior = 185,
	Key_masculine = 186,
	Key_guillemotright = 187,
	Key_onequarter = 188,
	Key_onehalf = 189,
	Key_threequarters = 190,
	Key_questiondown = 191,
	Key_Agrave = 192,
	Key_Aacute = 193,
	Key_Acircumflex = 194,
	Key_Atilde = 195,
	Key_Adiaeresis = 196,
	Key_Aring = 197,
	Key_AE = 198,
	Key_Ccedilla = 199,
	Key_Egrave = 200,
	Key_Eacute = 201,
	Key_Ecircumflex = 202,
	Key_Ediaeresis = 203,
	Key_Igrave = 204,
	Key_Iacute = 205,
	Key_Icircumflex = 206,
	Key_Idiaeresis = 207,
	Key_ETH = 208,
	Key_Ntilde = 209,
	Key_Ograve = 210,
	Key_Oacute = 211,
	Key_Ocircumflex = 212,
	Key_Otilde = 213,
	Key_Odiaeresis = 214,
	Key_multiply = 215,
	Key_Ooblique = 216,
	Key_Ugrave = 217,
	Key_Uacute = 218,
	Key_Ucircumflex = 219,
	Key_Udiaeresis = 220,
	Key_Yacute = 221,
	Key_THORN = 222,
	Key_ssharp = 223,
	Key_division = 247,
	Key_ydiaeresis = 255,
	Key_Escape = 16777216,
	Key_Tab = 16777217,
	Key_Backtab = 16777218,
	Key_Backspace = 16777219,
	Key_Return = 16777220,
	Key_Enter = 16777221,
	Key_Insert = 16777222,
	Key_Delete = 16777223,
	Key_Pause = 16777224,
	Key_Print = 16777225,
	Key_SysReq = 16777226,
	Key_Clear = 16777227,
	Key_Home = 16777232,
	Key_End = 16777233,
	Key_Left = 16777234,
	Key_Up = 16777235,
	Key_Right = 16777236,
	Key_Down = 16777237,
	Key_PageUp = 16777238,
	Key_PageDown = 16777239,
	Key_Shift = 16777248,
	Key_Control = 16777249,
	Key_Meta = 16777250,
	Key_Alt = 16777251,
	Key_CapsLock = 16777252,
	Key_NumLock = 16777253,
	Key_ScrollLock = 16777254,
	Key_F1 = 16777264,
	Key_F2 = 16777265,
	Key_F3 = 16777266,
	Key_F4 = 16777267,
	Key_F5 = 16777268,
	Key_F6 = 16777269,
	Key_F7 = 16777270,
	Key_F8 = 16777271,
	Key_F9 = 16777272,
	Key_F10 = 16777273,
	Key_F11 = 16777274,
	Key_F12 = 16777275,
	Key_F13 = 16777276,
	Key_F14 = 16777277,
	Key_F15 = 16777278,
	Key_F16 = 16777279,
	Key_F17 = 16777280,
	Key_F18 = 16777281,
	Key_F19 = 16777282,
	Key_F20 = 16777283,
	Key_F21 = 16777284,
	Key_F22 = 16777285,
	Key_F23 = 16777286,
	Key_F24 = 16777287,
	Key_F25 = 16777288,
	Key_F26 = 16777289,
	Key_F27 = 16777290,
	Key_F28 = 16777291,
	Key_F29 = 16777292,
	Key_F30 = 16777293,
	Key_F31 = 16777294,
	Key_F32 = 16777295,
	Key_F33 = 16777296,
	Key_F34 = 16777297,
	Key_F35 = 16777298,
	Key_Super_L = 16777299,
	Key_Super_R = 16777300,
	Key_Menu = 16777301,
	Key_Hyper_L = 16777302,
	Key_Hyper_R = 16777303,
	Key_Help = 16777304,
	Key_Direction_L = 16777305,
	Key_Direction_R = 16777312,
	Key_AltGr = 16781571,
	Key_Multi_key = 16781600,
	Key_Codeinput = 16781623,
	Key_SingleCandidate = 16781628,
	Key_MultipleCandidate = 16781629,
	Key_PreviousCandidate = 16781630,
	Key_Mode_switch = 16781694,
	Key_Kanji = 16781601,
	Key_Muhenkan = 16781602,
	Key_Henkan = 16781603,
	Key_Romaji = 16781604,
	Key_Hiragana = 16781605,
	Key_Katakana = 16781606,
	Key_Hiragana_Katakana = 16781607,
	Key_Zenkaku = 16781608,
	Key_Hankaku = 16781609,
	Key_Zenkaku_Hankaku = 16781610,
	Key_Touroku = 16781611,
	Key_Massyo = 16781612,
	Key_Kana_Lock = 16781613,
	Key_Kana_Shift = 16781614,
	Key_Eisu_Shift = 16781615,
	Key_Eisu_toggle = 16781616,
	Key_Hangul = 16781617,
	Key_Hangul_Start = 16781618,
	Key_Hangul_End = 16781619,
	Key_Hangul_Hanja = 16781620,
	Key_Hangul_Jamo = 16781621,
	Key_Hangul_Romaja = 16781622,
	Key_Hangul_Jeonja = 16781624,
	Key_Hangul_Banja = 16781625,
	Key_Hangul_PreHanja = 16781626,
	Key_Hangul_PostHanja = 16781627,
	Key_Hangul_Special = 16781631,
	Key_Dead_Grave = 16781904,
	Key_Dead_Acute = 16781905,
	Key_Dead_Circumflex = 16781906,
	Key_Dead_Tilde = 16781907,
	Key_Dead_Macron = 16781908,
	Key_Dead_Breve = 16781909,
	Key_Dead_Abovedot = 16781910,
	Key_Dead_Diaeresis = 16781911,
	Key_Dead_Abovering = 16781912,
	Key_Dead_Doubleacute = 16781913,
	Key_Dead_Caron = 16781914,
	Key_Dead_Cedilla = 16781915,
	Key_Dead_Ogonek = 16781916,
	Key_Dead_Iota = 16781917,
	Key_Dead_Voiced_Sound = 16781918,
	Key_Dead_Semivoiced_Sound = 16781919,
	Key_Dead_Belowdot = 16781920,
	Key_Dead_Hook = 16781921,
	Key_Dead_Horn = 16781922,
	Key_Dead_Stroke = 16781923,
	Key_Dead_Abovecomma = 16781924,
	Key_Dead_Abovereversedcomma = 16781925,
	Key_Dead_Doublegrave = 16781926,
	Key_Dead_Belowring = 16781927,
	Key_Dead_Belowmacron = 16781928,
	Key_Dead_Belowcircumflex = 16781929,
	Key_Dead_Belowtilde = 16781930,
	Key_Dead_Belowbreve = 16781931,
	Key_Dead_Belowdiaeresis = 16781932,
	Key_Dead_Invertedbreve = 16781933,
	Key_Dead_Belowcomma = 16781934,
	Key_Dead_Currency = 16781935,
	Key_Dead_a = 16781952,
	Key_Dead_A = 16781953,
	Key_Dead_e = 16781954,
	Key_Dead_E = 16781955,
	Key_Dead_i = 16781956,
	Key_Dead_I = 16781957,
	Key_Dead_o = 16781958,
	Key_Dead_O = 16781959,
	Key_Dead_u = 16781960,
	Key_Dead_U = 16781961,
	Key_Dead_Small_Schwa = 16781962,
	Key_Dead_Capital_Schwa = 16781963,
	Key_Dead_Greek = 16781964,
	Key_Dead_Lowline = 16781968,
	Key_Dead_Aboveverticalline = 16781969,
	Key_Dead_Belowverticalline = 16781970,
	Key_Dead_Longsolidusoverlay = 16781971,
	Key_Back = 16777313,
	Key_Forward = 16777314,
	Key_Stop = 16777315,
	Key_Refresh = 16777316,
	Key_VolumeDown = 16777328,
	Key_VolumeMute = 16777329,
	Key_VolumeUp = 16777330,
	Key_BassBoost = 16777331,
	Key_BassUp = 16777332,
	Key_BassDown = 16777333,
	Key_TrebleUp = 16777334,
	Key_TrebleDown = 16777335,
	Key_MediaPlay = 16777344,
	Key_MediaStop = 16777345,
	Key_MediaPrevious = 16777346,
	Key_MediaNext = 16777347,
	Key_MediaRecord = 16777348,
	Key_MediaPause = 16777349,
	Key_MediaTogglePlayPause = 16777350,
	Key_HomePage = 16777360,
	Key_Favorites = 16777361,
	Key_Search = 16777362,
	Key_Standby = 16777363,
	Key_OpenUrl = 16777364,
	Key_LaunchMail = 16777376,
	Key_LaunchMedia = 16777377,
	Key_Launch0 = 16777378,
	Key_Launch1 = 16777379,
	Key_Launch2 = 16777380,
	Key_Launch3 = 16777381,
	Key_Launch4 = 16777382,
	Key_Launch5 = 16777383,
	Key_Launch6 = 16777384,
	Key_Launch7 = 16777385,
	Key_Launch8 = 16777386,
	Key_Launch9 = 16777387,
	Key_LaunchA = 16777388,
	Key_LaunchB = 16777389,
	Key_LaunchC = 16777390,
	Key_LaunchD = 16777391,
	Key_LaunchE = 16777392,
	Key_LaunchF = 16777393,
	Key_MonBrightnessUp = 16777394,
	Key_MonBrightnessDown = 16777395,
	Key_KeyboardLightOnOff = 16777396,
	Key_KeyboardBrightnessUp = 16777397,
	Key_KeyboardBrightnessDown = 16777398,
	Key_PowerOff = 16777399,
	Key_WakeUp = 16777400,
	Key_Eject = 16777401,
	Key_ScreenSaver = 16777402,
	Key_WWW = 16777403,
	Key_Memo = 16777404,
	Key_LightBulb = 16777405,
	Key_Shop = 16777406,
	Key_History = 16777407,
	Key_AddFavorite = 16777408,
	Key_HotLinks = 16777409,
	Key_BrightnessAdjust = 16777410,
	Key_Finance = 16777411,
	Key_Community = 16777412,
	Key_AudioRewind = 16777413,
	Key_BackForward = 16777414,
	Key_ApplicationLeft = 16777415,
	Key_ApplicationRight = 16777416,
	Key_Book = 16777417,
	Key_CD = 16777418,
	Key_Calculator = 16777419,
	Key_ToDoList = 16777420,
	Key_ClearGrab = 16777421,
	Key_Close = 16777422,
	Key_Copy = 16777423,
	Key_Cut = 16777424,
	Key_Display = 16777425,
	Key_DOS = 16777426,
	Key_Documents = 16777427,
	Key_Excel = 16777428,
	Key_Explorer = 16777429,
	Key_Game = 16777430,
	Key_Go = 16777431,
	Key_iTouch = 16777432,
	Key_LogOff = 16777433,
	Key_Market = 16777434,
	Key_Meeting = 16777435,
	Key_MenuKB = 16777436,
	Key_MenuPB = 16777437,
	Key_MySites = 16777438,
	Key_News = 16777439,
	Key_OfficeHome = 16777440,
	Key_Option = 16777441,
	Key_Paste = 16777442,
	Key_Phone = 16777443,
	Key_Calendar = 16777444,
	Key_Reply = 16777445,
	Key_Reload = 16777446,
	Key_RotateWindows = 16777447,
	Key_RotationPB = 16777448,
	Key_RotationKB = 16777449,
	Key_Save = 16777450,
	Key_Send = 16777451,
	Key_Spell = 16777452,
	Key_SplitScreen = 16777453,
	Key_Support = 16777454,
	Key_TaskPane = 16777455,
	Key_Terminal = 16777456,
	Key_Tools = 16777457,
	Key_Travel = 16777458,
	Key_Video = 16777459,
	Key_Word = 16777460,
	Key_Xfer = 16777461,
	Key_ZoomIn = 16777462,
	Key_ZoomOut = 16777463,
	Key_Away = 16777464,
	Key_Messenger = 16777465,
	Key_WebCam = 16777466,
	Key_MailForward = 16777467,
	Key_Pictures = 16777468,
	Key_Music = 16777469,
	Key_Battery = 16777470,
	Key_Bluetooth = 16777471,
	Key_WLAN = 16777472,
	Key_UWB = 16777473,
	Key_AudioForward = 16777474,
	Key_AudioRepeat = 16777475,
	Key_AudioRandomPlay = 16777476,
	Key_Subtitle = 16777477,
	Key_AudioCycleTrack = 16777478,
	Key_Time = 16777479,
	Key_Hibernate = 16777480,
	Key_View = 16777481,
	Key_TopMenu = 16777482,
	Key_PowerDown = 16777483,
	Key_Suspend = 16777484,
	Key_ContrastAdjust = 16777485,
	Key_LaunchG = 16777486,
	Key_LaunchH = 16777487,
	Key_TouchpadToggle = 16777488,
	Key_TouchpadOn = 16777489,
	Key_TouchpadOff = 16777490,
	Key_MicMute = 16777491,
	Key_Red = 16777492,
	Key_Green = 16777493,
	Key_Yellow = 16777494,
	Key_Blue = 16777495,
	Key_ChannelUp = 16777496,
	Key_ChannelDown = 16777497,
	Key_Guide = 16777498,
	Key_Info = 16777499,
	Key_Settings = 16777500,
	Key_MicVolumeUp = 16777501,
	Key_MicVolumeDown = 16777502,
	Key_New = 16777504,
	Key_Open = 16777505,
	Key_Find = 16777506,
	Key_Undo = 16777507,
	Key_Redo = 16777508,
	Key_MediaLast = 16842751,
	Key_Select = 16842752,
	Key_Yes = 16842753,
	Key_No = 16842754,
	Key_Cancel = 16908289,
	Key_Printer = 16908290,
	Key_Execute = 16908291,
	Key_Sleep = 16908292,
	Key_Play = 16908293,
	Key_Zoom = 16908294,
	Key_Exit = 16908298,
	Key_Context1 = 17825792,
	Key_Context2 = 17825793,
	Key_Context3 = 17825794,
	Key_Context4 = 17825795,
	Key_Call = 17825796,
	Key_Hangup = 17825797,
	Key_Flip = 17825798,
	Key_ToggleCallHangup = 17825799,
	Key_VoiceDial = 17825800,
	Key_LastNumberRedial = 17825801,
	Key_Camera = 17825824,
	Key_CameraFocus = 17825825,
	Key_unknown = 33554431,
}
[AllowDuplicates]
public enum KeyboardModifier
{
	NoModifier = 0,
	ShiftModifier = 33554432,
	ControlModifier = 67108864,
	AltModifier = 134217728,
	MetaModifier = 268435456,
	KeypadModifier = 536870912,
	GroupSwitchModifier = 1073741824,
	KeyboardModifierMask = 4261412864,
}
[AllowDuplicates]
public enum Modifier
{
	META = 268435456,
	SHIFT = 33554432,
	CTRL = 67108864,
	ALT = 134217728,
	MODIFIER_MASK = 4261412864,
}
[AllowDuplicates]
public enum ArrowType
{
	NoArrow = 0,
	UpArrow = 1,
	DownArrow = 2,
	LeftArrow = 3,
	RightArrow = 4,
}
[AllowDuplicates]
public enum PenStyle
{
	NoPen = 0,
	SolidLine = 1,
	DashLine = 2,
	DotLine = 3,
	DashDotLine = 4,
	DashDotDotLine = 5,
	CustomDashLine = 6,
	MPenStyle = 15,
}
[AllowDuplicates]
public enum PenCapStyle
{
	FlatCap = 0,
	SquareCap = 16,
	RoundCap = 32,
	MPenCapStyle = 48,
}
[AllowDuplicates]
public enum PenJoinStyle
{
	MiterJoin = 0,
	BevelJoin = 64,
	RoundJoin = 128,
	SvgMiterJoin = 256,
	MPenJoinStyle = 448,
}
[AllowDuplicates]
public enum BrushStyle
{
	NoBrush = 0,
	SolidPattern = 1,
	Dense1Pattern = 2,
	Dense2Pattern = 3,
	Dense3Pattern = 4,
	Dense4Pattern = 5,
	Dense5Pattern = 6,
	Dense6Pattern = 7,
	Dense7Pattern = 8,
	HorPattern = 9,
	VerPattern = 10,
	CrossPattern = 11,
	BDiagPattern = 12,
	FDiagPattern = 13,
	DiagCrossPattern = 14,
	LinearGradientPattern = 15,
	RadialGradientPattern = 16,
	ConicalGradientPattern = 17,
	TexturePattern = 24,
}
[AllowDuplicates]
public enum SizeMode
{
	AbsoluteSize = 0,
	RelativeSize = 1,
}
[AllowDuplicates]
public enum UIEffect
{
	UI_General = 0,
	UI_AnimateMenu = 1,
	UI_FadeMenu = 2,
	UI_AnimateCombo = 3,
	UI_AnimateTooltip = 4,
	UI_FadeTooltip = 5,
	UI_AnimateToolBox = 6,
}
[AllowDuplicates]
public enum CursorShape
{
	ArrowCursor = 0,
	UpArrowCursor = 1,
	CrossCursor = 2,
	WaitCursor = 3,
	IBeamCursor = 4,
	SizeVerCursor = 5,
	SizeHorCursor = 6,
	SizeBDiagCursor = 7,
	SizeFDiagCursor = 8,
	SizeAllCursor = 9,
	BlankCursor = 10,
	SplitVCursor = 11,
	SplitHCursor = 12,
	PointingHandCursor = 13,
	ForbiddenCursor = 14,
	WhatsThisCursor = 15,
	BusyCursor = 16,
	OpenHandCursor = 17,
	ClosedHandCursor = 18,
	DragCopyCursor = 19,
	DragMoveCursor = 20,
	DragLinkCursor = 21,
	LastCursor = 21,
	BitmapCursor = 24,
	CustomCursor = 25,
}
[AllowDuplicates]
public enum TextFormat
{
	PlainText = 0,
	RichText = 1,
	AutoText = 2,
	MarkdownText = 3,
}
[AllowDuplicates]
public enum AspectRatioMode
{
	IgnoreAspectRatio = 0,
	KeepAspectRatio = 1,
	KeepAspectRatioByExpanding = 2,
}
[AllowDuplicates]
public enum DockWidgetArea
{
	LeftDockWidgetArea = 1,
	RightDockWidgetArea = 2,
	TopDockWidgetArea = 4,
	BottomDockWidgetArea = 8,
	DockWidgetArea_Mask = 15,
	AllDockWidgetAreas = 15,
	NoDockWidgetArea = 0,
}
[AllowDuplicates]
public enum DockWidgetAreaSizes
{
	NDockWidgetAreas = 4,
}
[AllowDuplicates]
public enum ToolBarArea
{
	LeftToolBarArea = 1,
	RightToolBarArea = 2,
	TopToolBarArea = 4,
	BottomToolBarArea = 8,
	ToolBarArea_Mask = 15,
	AllToolBarAreas = 15,
	NoToolBarArea = 0,
}
[AllowDuplicates]
public enum ToolBarAreaSizes
{
	NToolBarAreas = 4,
}
[AllowDuplicates]
public enum DateFormat
{
	TextDate = 0,
	ISODate = 1,
	RFC2822Date = 8,
	ISODateWithMs = 9,
}
[AllowDuplicates]
public enum TimeSpec
{
	LocalTime = 0,
	UTC = 1,
	OffsetFromUTC = 2,
	TimeZone = 3,
}
[AllowDuplicates]
public enum DayOfWeek
{
	Monday = 1,
	Tuesday = 2,
	Wednesday = 3,
	Thursday = 4,
	Friday = 5,
	Saturday = 6,
	Sunday = 7,
}
[AllowDuplicates]
public enum ScrollBarPolicy
{
	ScrollBarAsNeeded = 0,
	ScrollBarAlwaysOff = 1,
	ScrollBarAlwaysOn = 2,
}
[AllowDuplicates]
public enum CaseSensitivity
{
	CaseInsensitive = 0,
	CaseSensitive = 1,
}
[AllowDuplicates]
public enum Corner
{
	TopLeftCorner = 0,
	TopRightCorner = 1,
	BottomLeftCorner = 2,
	BottomRightCorner = 3,
}
[AllowDuplicates]
public enum Edge
{
	TopEdge = 1,
	LeftEdge = 2,
	RightEdge = 4,
	BottomEdge = 8,
}
[AllowDuplicates]
public enum ConnectionType
{
	AutoConnection = 0,
	DirectConnection = 1,
	QueuedConnection = 2,
	BlockingQueuedConnection = 3,
	UniqueConnection = 128,
	SingleShotConnection = 256,
}
[AllowDuplicates]
public enum ShortcutContext
{
	WidgetShortcut = 0,
	WindowShortcut = 1,
	ApplicationShortcut = 2,
	WidgetWithChildrenShortcut = 3,
}
[AllowDuplicates]
public enum FillRule
{
	OddEvenFill = 0,
	WindingFill = 1,
}
[AllowDuplicates]
public enum MaskMode
{
	MaskInColor = 0,
	MaskOutColor = 1,
}
[AllowDuplicates]
public enum ClipOperation
{
	NoClip = 0,
	ReplaceClip = 1,
	IntersectClip = 2,
}
[AllowDuplicates]
public enum ItemSelectionMode
{
	ContainsItemShape = 0,
	IntersectsItemShape = 1,
	ContainsItemBoundingRect = 2,
	IntersectsItemBoundingRect = 3,
}
[AllowDuplicates]
public enum ItemSelectionOperation
{
	ReplaceSelection = 0,
	AddToSelection = 1,
}
[AllowDuplicates]
public enum TransformationMode
{
	FastTransformation = 0,
	SmoothTransformation = 1,
}
[AllowDuplicates]
public enum Axis
{
	XAxis = 0,
	YAxis = 1,
	ZAxis = 2,
}
[AllowDuplicates]
public enum FocusReason
{
	MouseFocusReason = 0,
	TabFocusReason = 1,
	BacktabFocusReason = 2,
	ActiveWindowFocusReason = 3,
	PopupFocusReason = 4,
	ShortcutFocusReason = 5,
	MenuBarFocusReason = 6,
	OtherFocusReason = 7,
	NoFocusReason = 8,
}
[AllowDuplicates]
public enum ContextMenuPolicy
{
	NoContextMenu = 0,
	DefaultContextMenu = 1,
	ActionsContextMenu = 2,
	CustomContextMenu = 3,
	PreventContextMenu = 4,
}
[AllowDuplicates]
public enum InputMethodQuery
{
	ImEnabled = 1,
	ImCursorRectangle = 2,
	ImFont = 4,
	ImCursorPosition = 8,
	ImSurroundingText = 16,
	ImCurrentSelection = 32,
	ImMaximumTextLength = 64,
	ImAnchorPosition = 128,
	ImHints = 256,
	ImPreferredLanguage = 512,
	ImAbsolutePosition = 1024,
	ImTextBeforeCursor = 2048,
	ImTextAfterCursor = 4096,
	ImEnterKeyType = 8192,
	ImAnchorRectangle = 16384,
	ImInputItemClipRectangle = 32768,
	ImReadOnly = 65536,
	ImPlatformData = 2147483648,
	ImQueryInput = 16570,
	ImQueryAll = 4294967295,
}
[AllowDuplicates]
public enum InputMethodHint
{
	ImhNone = 0,
	ImhHiddenText = 1,
	ImhSensitiveData = 2,
	ImhNoAutoUppercase = 4,
	ImhPreferNumbers = 8,
	ImhPreferUppercase = 16,
	ImhPreferLowercase = 32,
	ImhNoPredictiveText = 64,
	ImhDate = 128,
	ImhTime = 256,
	ImhPreferLatin = 512,
	ImhMultiLine = 1024,
	ImhNoEditMenu = 2048,
	ImhNoTextHandles = 4096,
	ImhDigitsOnly = 65536,
	ImhFormattedNumbersOnly = 131072,
	ImhUppercaseOnly = 262144,
	ImhLowercaseOnly = 524288,
	ImhDialableCharactersOnly = 1048576,
	ImhEmailCharactersOnly = 2097152,
	ImhUrlCharactersOnly = 4194304,
	ImhLatinOnly = 8388608,
	ImhExclusiveInputMask = 4294901760,
}
[AllowDuplicates]
public enum EnterKeyType
{
	EnterKeyDefault = 0,
	EnterKeyReturn = 1,
	EnterKeyDone = 2,
	EnterKeyGo = 3,
	EnterKeySend = 4,
	EnterKeySearch = 5,
	EnterKeyNext = 6,
	EnterKeyPrevious = 7,
}
[AllowDuplicates]
public enum ToolButtonStyle
{
	ToolButtonIconOnly = 0,
	ToolButtonTextOnly = 1,
	ToolButtonTextBesideIcon = 2,
	ToolButtonTextUnderIcon = 3,
	ToolButtonFollowStyle = 4,
}
[AllowDuplicates]
public enum LayoutDirection
{
	LeftToRight = 0,
	RightToLeft = 1,
	LayoutDirectionAuto = 2,
}
[AllowDuplicates]
public enum AnchorPoint
{
	AnchorLeft = 0,
	AnchorHorizontalCenter = 1,
	AnchorRight = 2,
	AnchorTop = 3,
	AnchorVerticalCenter = 4,
	AnchorBottom = 5,
}
[AllowDuplicates]
public enum FindChildOption
{
	FindDirectChildrenOnly = 0,
	FindChildrenRecursively = 1,
}
[AllowDuplicates]
public enum DropAction
{
	CopyAction = 1,
	MoveAction = 2,
	LinkAction = 4,
	ActionMask = 255,
	TargetMoveAction = 32770,
	IgnoreAction = 0,
}
[AllowDuplicates]
public enum CheckState
{
	Unchecked = 0,
	PartiallyChecked = 1,
	Checked = 2,
}
[AllowDuplicates]
public enum ItemDataRole
{
	DisplayRole = 0,
	DecorationRole = 1,
	EditRole = 2,
	ToolTipRole = 3,
	StatusTipRole = 4,
	WhatsThisRole = 5,
	FontRole = 6,
	TextAlignmentRole = 7,
	BackgroundRole = 8,
	ForegroundRole = 9,
	CheckStateRole = 10,
	AccessibleTextRole = 11,
	AccessibleDescriptionRole = 12,
	SizeHintRole = 13,
	InitialSortOrderRole = 14,
	DisplayPropertyRole = 27,
	DecorationPropertyRole = 28,
	ToolTipPropertyRole = 29,
	StatusTipPropertyRole = 30,
	WhatsThisPropertyRole = 31,
	UserRole = 256,
}
[AllowDuplicates]
public enum ItemFlag
{
	NoItemFlags = 0,
	ItemIsSelectable = 1,
	ItemIsEditable = 2,
	ItemIsDragEnabled = 4,
	ItemIsDropEnabled = 8,
	ItemIsUserCheckable = 16,
	ItemIsEnabled = 32,
	ItemIsAutoTristate = 64,
	ItemNeverHasChildren = 128,
	ItemIsUserTristate = 256,
}
[AllowDuplicates]
public enum MatchFlag
{
	MatchExactly = 0,
	MatchContains = 1,
	MatchStartsWith = 2,
	MatchEndsWith = 3,
	MatchRegularExpression = 4,
	MatchWildcard = 5,
	MatchFixedString = 8,
	MatchTypeMask = 15,
	MatchCaseSensitive = 16,
	MatchWrap = 32,
	MatchRecursive = 64,
}
[AllowDuplicates]
public enum WindowModality
{
	NonModal = 0,
	WindowModal = 1,
	ApplicationModal = 2,
}
[AllowDuplicates]
public enum TextInteractionFlag
{
	NoTextInteraction = 0,
	TextSelectableByMouse = 1,
	TextSelectableByKeyboard = 2,
	LinksAccessibleByMouse = 4,
	LinksAccessibleByKeyboard = 8,
	TextEditable = 16,
	TextEditorInteraction = 19,
	TextBrowserInteraction = 13,
}
[AllowDuplicates]
public enum EventPriority
{
	HighEventPriority = 1,
	NormalEventPriority = 0,
	LowEventPriority = -1,
}
[AllowDuplicates]
public enum SizeHint
{
	MinimumSize = 0,
	PreferredSize = 1,
	MaximumSize = 2,
	MinimumDescent = 3,
	NSizeHints = 4,
}
[AllowDuplicates]
public enum WindowFrameSection
{
	NoSection = 0,
	LeftSection = 1,
	TopLeftSection = 2,
	TopSection = 3,
	TopRightSection = 4,
	RightSection = 5,
	BottomRightSection = 6,
	BottomSection = 7,
	BottomLeftSection = 8,
	TitleBarArea = 9,
}
[AllowDuplicates]
public enum Initialization
{
	Uninitialized = 0,
}
[AllowDuplicates]
public enum CoordinateSystem
{
	DeviceCoordinates = 0,
	LogicalCoordinates = 1,
}
[AllowDuplicates]
public enum TouchPointState
{
	TouchPointUnknownState = 0,
	TouchPointPressed = 1,
	TouchPointMoved = 2,
	TouchPointStationary = 4,
	TouchPointReleased = 8,
}
[AllowDuplicates]
public enum GestureState
{
	NoGesture = 0,
	GestureStarted = 1,
	GestureUpdated = 2,
	GestureFinished = 3,
	GestureCanceled = 4,
}
[AllowDuplicates]
public enum GestureType
{
	TapGesture = 1,
	TapAndHoldGesture = 2,
	PanGesture = 3,
	PinchGesture = 4,
	SwipeGesture = 5,
	CustomGesture = 256,
	LastGestureType = 4294967295,
}
[AllowDuplicates]
public enum GestureFlag
{
	DontStartGestureOnChildren = 1,
	ReceivePartialGestures = 2,
	IgnoredGesturesPropagateToParent = 4,
}
[AllowDuplicates]
public enum NativeGestureType
{
	BeginNativeGesture = 0,
	EndNativeGesture = 1,
	PanNativeGesture = 2,
	ZoomNativeGesture = 3,
	SmartZoomNativeGesture = 4,
	RotateNativeGesture = 5,
	SwipeNativeGesture = 6,
}
[AllowDuplicates]
public enum NavigationMode
{
	NavigationModeNone = 0,
	NavigationModeKeypadTabOrder = 1,
	NavigationModeKeypadDirectional = 2,
	NavigationModeCursorAuto = 3,
	NavigationModeCursorForceVisible = 4,
}
[AllowDuplicates]
public enum CursorMoveStyle
{
	LogicalMoveStyle = 0,
	VisualMoveStyle = 1,
}
[AllowDuplicates]
public enum TimerType
{
	PreciseTimer = 0,
	CoarseTimer = 1,
	VeryCoarseTimer = 2,
}
[AllowDuplicates]
public enum ScrollPhase
{
	NoScrollPhase = 0,
	ScrollBegin = 1,
	ScrollUpdate = 2,
	ScrollEnd = 3,
	ScrollMomentum = 4,
}
[AllowDuplicates]
public enum MouseEventSource
{
	MouseEventNotSynthesized = 0,
	MouseEventSynthesizedBySystem = 1,
	MouseEventSynthesizedByQt = 2,
	MouseEventSynthesizedByApplication = 3,
}
[AllowDuplicates]
public enum MouseEventFlag
{
	NoMouseEventFlag = 0,
	MouseEventCreatedDoubleClick = 1,
	MouseEventFlagMask = 255,
}
[AllowDuplicates]
public enum ChecksumType
{
	ChecksumIso3309 = 0,
	ChecksumItuV41 = 1,
}
[AllowDuplicates]
public enum HighDpiScaleFactorRoundingPolicy
{
	Unset = 0,
	Round = 1,
	Ceil = 2,
	Floor = 3,
	RoundPreferFloor = 4,
	PassThrough = 5,
}
[AllowDuplicates]
public enum ReturnByValueConstant
{
	ReturnByValue = 0,
}
[AllowDuplicates]
public enum QInternal__PaintDeviceFlags
{
	UnknownDevice = 0,
	Widget = 1,
	Pixmap = 2,
	Image = 3,
	Printer = 4,
	Picture = 5,
	Pbuffer = 6,
	FramebufferObject = 7,
	CustomRaster = 8,
	PaintBuffer = 10,
	OpenGL = 11,
}
[AllowDuplicates]
public enum QInternal__RelayoutType
{
	RelayoutNormal = 0,
	RelayoutDragging = 1,
	RelayoutDropped = 2,
}
[AllowDuplicates]
public enum QInternal__DockPosition
{
	LeftDock = 0,
	RightDock = 1,
	TopDock = 2,
	BottomDock = 3,
	DockCount = 4,
}
[AllowDuplicates]
public enum QInternal__Callback
{
	EventNotifyCallback = 0,
	LastCallback = 1,
}
public interface IDisambiguated_t
{
	void* NativePtr { get; }
}
public struct Disambiguated_tPtr : IDisambiguated_t, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(Disambiguated_tPtr other)
	{
		return .(CQt.Disambiguated_t_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	public void Dispose()
	{
		CQt.Disambiguated_t_Delete(this.nativePtr);
	}
}
public class Disambiguated_t
{
	public Disambiguated_tPtr handle;
	
	public static implicit operator Disambiguated_tPtr(Self self)
	{
		return self.handle;
	}
	
	public this(Disambiguated_tPtr other)
	{
		this.handle = Disambiguated_tPtr.New(other);
	}
	public ~this()
	{
		this.handle.Dispose();
	}
}
extension CQt
{
	[LinkName("Disambiguated_t_new")]
	public static extern void* Disambiguated_t_new(void* other);
	[LinkName("Disambiguated_t_new2")]
	public static extern void* Disambiguated_t_new2(void* other);
	[LinkName("Disambiguated_t_new3")]
	public static extern void* Disambiguated_t_new3();
	[LinkName("Disambiguated_t_new4")]
	public static extern void* Disambiguated_t_new4(void* param1);
	/// Delete this object from C++ memory
	[LinkName("Disambiguated_t_Delete")]
	public static extern void Disambiguated_t_Delete(void* self);
}
public interface IQInternal
{
	void* NativePtr { get; }
}
public struct QInternalPtr : IQInternal, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQInternal other)
	{
		return .(CQt.QInternal_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QInternal_Delete(this.nativePtr);
	}
	
	public static bool ActivateCallbacks(int64 param1, void* param2)
	{
		return CQt.QInternal_ActivateCallbacks((int64)param1, param2);
	}
	
}
public class QInternal
{
	public QInternalPtr handle;
	
	public static implicit operator QInternalPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQInternal other)
	{
		this.handle = QInternalPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public static bool ActivateCallbacks(int64 param1, void* param2)
	{
		return QInternalPtr.ActivateCallbacks(param1, param2);
	}
	
}
extension CQt
{
	[LinkName("QInternal_new")]
	public static extern void* QInternal_new(void* other);
	[LinkName("QInternal_new2")]
	public static extern void* QInternal_new2(void* other);
	[LinkName("QInternal_ActivateCallbacks")]
	public static extern bool QInternal_ActivateCallbacks(int64 param1, void* param2);
	/// Delete this object from C++ memory
	[LinkName("QInternal_Delete")]
	public static extern void QInternal_Delete(void* self);
}
public interface IQKeyCombination
{
	void* NativePtr { get; }
}
public struct QKeyCombinationPtr : IQKeyCombination, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQKeyCombination other)
	{
		return .(CQt.QKeyCombination_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QKeyCombination_Delete(this.nativePtr);
	}
	
	public int64 KeyboardModifiers()
	{
		return CQt.QKeyCombination_KeyboardModifiers(this.nativePtr);
	}
	
	public int64 Key()
	{
		return CQt.QKeyCombination_Key(this.nativePtr);
	}
	
	public static void FromCombined(int32 combined)
	{
		CQt.QKeyCombination_FromCombined(combined);
	}
	
	public int32 ToCombined()
	{
		return CQt.QKeyCombination_ToCombined(this.nativePtr);
	}
	
	public int32 ToInt()
	{
		return CQt.QKeyCombination_ToInt(this.nativePtr);
	}
	
}
public class QKeyCombination
{
	public QKeyCombinationPtr handle;
	
	public static implicit operator QKeyCombinationPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQKeyCombination other)
	{
		this.handle = QKeyCombinationPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public int64 KeyboardModifiers()
	{
		return this.handle.KeyboardModifiers();
	}
	
	public int64 Key()
	{
		return this.handle.Key();
	}
	
	public static void FromCombined(int32 combined)
	{
		QKeyCombinationPtr.FromCombined(combined);
	}
	
	public int32 ToCombined()
	{
		return this.handle.ToCombined();
	}
	
	public int32 ToInt()
	{
		return this.handle.ToInt();
	}
	
}
extension CQt
{
	[LinkName("QKeyCombination_new")]
	public static extern void* QKeyCombination_new(void* other);
	[LinkName("QKeyCombination_new2")]
	public static extern void* QKeyCombination_new2(void* other);
	[LinkName("QKeyCombination_new3")]
	public static extern void* QKeyCombination_new3();
	[LinkName("QKeyCombination_new4")]
	public static extern void* QKeyCombination_new4(int64 modifiers);
	[LinkName("QKeyCombination_new5")]
	public static extern void* QKeyCombination_new5(int64 modifiers);
	[LinkName("QKeyCombination_new6")]
	public static extern void* QKeyCombination_new6(void* param1);
	[LinkName("QKeyCombination_new7")]
	public static extern void* QKeyCombination_new7(int64 key);
	[LinkName("QKeyCombination_new8")]
	public static extern void* QKeyCombination_new8(int64 modifiers, int64 key);
	[LinkName("QKeyCombination_new9")]
	public static extern void* QKeyCombination_new9(int64 modifiers, int64 key);
	[LinkName("QKeyCombination_KeyboardModifiers")]
	public static extern int64 QKeyCombination_KeyboardModifiers(void* c_this);
	[LinkName("QKeyCombination_Key")]
	public static extern int64 QKeyCombination_Key(void* c_this);
	[LinkName("QKeyCombination_FromCombined")]
	public static extern void QKeyCombination_FromCombined(int32 combined);
	[LinkName("QKeyCombination_ToCombined")]
	public static extern int32 QKeyCombination_ToCombined(void* c_this);
	[LinkName("QKeyCombination_ToInt")]
	public static extern int32 QKeyCombination_ToInt(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QKeyCombination_Delete")]
	public static extern void QKeyCombination_Delete(void* self);
}