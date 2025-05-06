using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QEvent__Type
{
	None = 0,
	Timer = 1,
	MouseButtonPress = 2,
	MouseButtonRelease = 3,
	MouseButtonDblClick = 4,
	MouseMove = 5,
	KeyPress = 6,
	KeyRelease = 7,
	FocusIn = 8,
	FocusOut = 9,
	FocusAboutToChange = 23,
	Enter = 10,
	Leave = 11,
	Paint = 12,
	Move = 13,
	Resize = 14,
	Create = 15,
	Destroy = 16,
	Show = 17,
	Hide = 18,
	Close = 19,
	Quit = 20,
	ParentChange = 21,
	ParentAboutToChange = 131,
	ThreadChange = 22,
	WindowActivate = 24,
	WindowDeactivate = 25,
	ShowToParent = 26,
	HideToParent = 27,
	Wheel = 31,
	WindowTitleChange = 33,
	WindowIconChange = 34,
	ApplicationWindowIconChange = 35,
	ApplicationFontChange = 36,
	ApplicationLayoutDirectionChange = 37,
	ApplicationPaletteChange = 38,
	PaletteChange = 39,
	Clipboard = 40,
	Speech = 42,
	MetaCall = 43,
	SockAct = 50,
	WinEventAct = 132,
	DeferredDelete = 52,
	DragEnter = 60,
	DragMove = 61,
	DragLeave = 62,
	Drop = 63,
	DragResponse = 64,
	ChildAdded = 68,
	ChildPolished = 69,
	ChildRemoved = 71,
	ShowWindowRequest = 73,
	PolishRequest = 74,
	Polish = 75,
	LayoutRequest = 76,
	UpdateRequest = 77,
	UpdateLater = 78,
	EmbeddingControl = 79,
	ActivateControl = 80,
	DeactivateControl = 81,
	ContextMenu = 82,
	InputMethod = 83,
	TabletMove = 87,
	LocaleChange = 88,
	LanguageChange = 89,
	LayoutDirectionChange = 90,
	Style = 91,
	TabletPress = 92,
	TabletRelease = 93,
	OkRequest = 94,
	HelpRequest = 95,
	IconDrag = 96,
	FontChange = 97,
	EnabledChange = 98,
	ActivationChange = 99,
	StyleChange = 100,
	IconTextChange = 101,
	ModifiedChange = 102,
	MouseTrackingChange = 109,
	WindowBlocked = 103,
	WindowUnblocked = 104,
	WindowStateChange = 105,
	ReadOnlyChange = 106,
	ToolTip = 110,
	WhatsThis = 111,
	StatusTip = 112,
	ActionChanged = 113,
	ActionAdded = 114,
	ActionRemoved = 115,
	FileOpen = 116,
	Shortcut = 117,
	ShortcutOverride = 51,
	WhatsThisClicked = 118,
	ToolBarChange = 120,
	ApplicationActivate = 121,
	ApplicationActivated = 121,
	ApplicationDeactivate = 122,
	ApplicationDeactivated = 122,
	QueryWhatsThis = 123,
	EnterWhatsThisMode = 124,
	LeaveWhatsThisMode = 125,
	ZOrderChange = 126,
	HoverEnter = 127,
	HoverLeave = 128,
	HoverMove = 129,
	AcceptDropsChange = 152,
	ZeroTimerEvent = 154,
	GraphicsSceneMouseMove = 155,
	GraphicsSceneMousePress = 156,
	GraphicsSceneMouseRelease = 157,
	GraphicsSceneMouseDoubleClick = 158,
	GraphicsSceneContextMenu = 159,
	GraphicsSceneHoverEnter = 160,
	GraphicsSceneHoverMove = 161,
	GraphicsSceneHoverLeave = 162,
	GraphicsSceneHelp = 163,
	GraphicsSceneDragEnter = 164,
	GraphicsSceneDragMove = 165,
	GraphicsSceneDragLeave = 166,
	GraphicsSceneDrop = 167,
	GraphicsSceneWheel = 168,
	GraphicsSceneLeave = 220,
	KeyboardLayoutChange = 169,
	DynamicPropertyChange = 170,
	TabletEnterProximity = 171,
	TabletLeaveProximity = 172,
	NonClientAreaMouseMove = 173,
	NonClientAreaMouseButtonPress = 174,
	NonClientAreaMouseButtonRelease = 175,
	NonClientAreaMouseButtonDblClick = 176,
	MacSizeChange = 177,
	ContentsRectChange = 178,
	MacGLWindowChange = 179,
	FutureCallOut = 180,
	GraphicsSceneResize = 181,
	GraphicsSceneMove = 182,
	CursorChange = 183,
	ToolTipChange = 184,
	NetworkReplyUpdated = 185,
	GrabMouse = 186,
	UngrabMouse = 187,
	GrabKeyboard = 188,
	UngrabKeyboard = 189,
	StateMachineSignal = 192,
	StateMachineWrapped = 193,
	TouchBegin = 194,
	TouchUpdate = 195,
	TouchEnd = 196,
	NativeGesture = 197,
	RequestSoftwareInputPanel = 199,
	CloseSoftwareInputPanel = 200,
	WinIdChange = 203,
	Gesture = 198,
	GestureOverride = 202,
	ScrollPrepare = 204,
	Scroll = 205,
	Expose = 206,
	InputMethodQuery = 207,
	OrientationChange = 208,
	TouchCancel = 209,
	ThemeChange = 210,
	SockClose = 211,
	PlatformPanel = 212,
	StyleAnimationUpdate = 213,
	ApplicationStateChange = 214,
	WindowChangeInternal = 215,
	ScreenChangeInternal = 216,
	PlatformSurface = 217,
	Pointer = 218,
	TabletTrackingChange = 219,
	WindowAboutToChangeInternal = 221,
	User = 1000,
	MaxUser = 65535,
}
public struct QEvent
{
	[LinkName("QEvent_new")]
	public static extern void* QEvent_new(int64 typeVal);
	[LinkName("QEvent_Type")]
	public static extern int64 QEvent_Type(void* c_this);
	[LinkName("QEvent_Spontaneous")]
	public static extern bool QEvent_Spontaneous(void* c_this);
	[LinkName("QEvent_SetAccepted")]
	public static extern void QEvent_SetAccepted(void* c_this, bool accepted);
	[LinkName("QEvent_IsAccepted")]
	public static extern bool QEvent_IsAccepted(void* c_this);
	[LinkName("QEvent_Accept")]
	public static extern void QEvent_Accept(void* c_this);
	[LinkName("QEvent_Ignore")]
	public static extern void QEvent_Ignore(void* c_this);
	[LinkName("QEvent_IsInputEvent")]
	public static extern bool QEvent_IsInputEvent(void* c_this);
	[LinkName("QEvent_IsPointerEvent")]
	public static extern bool QEvent_IsPointerEvent(void* c_this);
	[LinkName("QEvent_IsSinglePointEvent")]
	public static extern bool QEvent_IsSinglePointEvent(void* c_this);
	[LinkName("QEvent_RegisterEventType")]
	public static extern int32 QEvent_RegisterEventType();
	[LinkName("QEvent_Clone")]
	public static extern QEvent QEvent_Clone(void* c_this);
	[LinkName("QEvent_RegisterEventType1")]
	public static extern int32 QEvent_RegisterEventType1(int32 hint);
}
public struct QTimerEvent
{
	[LinkName("QTimerEvent_new")]
	public static extern void* QTimerEvent_new(int32 timerId);
	[LinkName("QTimerEvent_Clone")]
	public static extern QTimerEvent QTimerEvent_Clone(void* c_this);
	[LinkName("QTimerEvent_TimerId")]
	public static extern int32 QTimerEvent_TimerId(void* c_this);
}
public struct QChildEvent
{
	[LinkName("QChildEvent_new")]
	public static extern void* QChildEvent_new(int64 typeVal, QObject child);
	[LinkName("QChildEvent_Clone")]
	public static extern QChildEvent QChildEvent_Clone(void* c_this);
	[LinkName("QChildEvent_Child")]
	public static extern QObject QChildEvent_Child(void* c_this);
	[LinkName("QChildEvent_Added")]
	public static extern bool QChildEvent_Added(void* c_this);
	[LinkName("QChildEvent_Polished")]
	public static extern bool QChildEvent_Polished(void* c_this);
	[LinkName("QChildEvent_Removed")]
	public static extern bool QChildEvent_Removed(void* c_this);
}
public struct QDynamicPropertyChangeEvent
{
	[LinkName("QDynamicPropertyChangeEvent_new")]
	public static extern void* QDynamicPropertyChangeEvent_new(uint8[] name);
	[LinkName("QDynamicPropertyChangeEvent_Clone")]
	public static extern QDynamicPropertyChangeEvent QDynamicPropertyChangeEvent_Clone(void* c_this);
	[LinkName("QDynamicPropertyChangeEvent_PropertyName")]
	public static extern uint8[] QDynamicPropertyChangeEvent_PropertyName(void* c_this);
}