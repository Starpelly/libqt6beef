using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QAccessible__Event
{
	SoundPlayed = 1,
	Alert = 2,
	ForegroundChanged = 3,
	MenuStart = 4,
	MenuEnd = 5,
	PopupMenuStart = 6,
	PopupMenuEnd = 7,
	ContextHelpStart = 12,
	ContextHelpEnd = 13,
	DragDropStart = 14,
	DragDropEnd = 15,
	DialogStart = 16,
	DialogEnd = 17,
	ScrollingStart = 18,
	ScrollingEnd = 19,
	MenuCommand = 24,
	ActionChanged = 257,
	ActiveDescendantChanged = 258,
	AttributeChanged = 259,
	DocumentContentChanged = 260,
	DocumentLoadComplete = 261,
	DocumentLoadStopped = 262,
	DocumentReload = 263,
	HyperlinkEndIndexChanged = 264,
	HyperlinkNumberOfAnchorsChanged = 265,
	HyperlinkSelectedLinkChanged = 266,
	HypertextLinkActivated = 267,
	HypertextLinkSelected = 268,
	HyperlinkStartIndexChanged = 269,
	HypertextChanged = 270,
	HypertextNLinksChanged = 271,
	ObjectAttributeChanged = 272,
	PageChanged = 273,
	SectionChanged = 274,
	TableCaptionChanged = 275,
	TableColumnDescriptionChanged = 276,
	TableColumnHeaderChanged = 277,
	TableModelChanged = 278,
	TableRowDescriptionChanged = 279,
	TableRowHeaderChanged = 280,
	TableSummaryChanged = 281,
	TextAttributeChanged = 282,
	TextCaretMoved = 283,
	TextColumnChanged = 285,
	TextInserted = 286,
	TextRemoved = 287,
	TextUpdated = 288,
	TextSelectionChanged = 289,
	VisibleDataChanged = 290,
	ObjectCreated = 32768,
	ObjectDestroyed = 32769,
	ObjectShow = 32770,
	ObjectHide = 32771,
	ObjectReorder = 32772,
	Focus = 32773,
	Selection = 32774,
	SelectionAdd = 32775,
	SelectionRemove = 32776,
	SelectionWithin = 32777,
	StateChanged = 32778,
	LocationChanged = 32779,
	NameChanged = 32780,
	DescriptionChanged = 32781,
	ValueChanged = 32782,
	ParentChanged = 32783,
	HelpChanged = 32928,
	DefaultActionChanged = 32944,
	AcceleratorChanged = 32960,
	InvalidEvent = 32961,
}
[AllowDuplicates]
public enum QAccessible__Role
{
	NoRole = 0,
	TitleBar = 1,
	MenuBar = 2,
	ScrollBar = 3,
	Grip = 4,
	Sound = 5,
	Cursor = 6,
	Caret = 7,
	AlertMessage = 8,
	Window = 9,
	Client = 10,
	PopupMenu = 11,
	MenuItem = 12,
	ToolTip = 13,
	Application = 14,
	Document = 15,
	Pane = 16,
	Chart = 17,
	Dialog = 18,
	Border = 19,
	Grouping = 20,
	Separator = 21,
	ToolBar = 22,
	StatusBar = 23,
	Table = 24,
	ColumnHeader = 25,
	RowHeader = 26,
	Column = 27,
	Row = 28,
	Cell = 29,
	Link = 30,
	HelpBalloon = 31,
	Assistant = 32,
	List = 33,
	ListItem = 34,
	Tree = 35,
	TreeItem = 36,
	PageTab = 37,
	PropertyPage = 38,
	Indicator = 39,
	Graphic = 40,
	StaticText = 41,
	EditableText = 42,
	Button = 43,
	PushButton = 43,
	CheckBox = 44,
	RadioButton = 45,
	ComboBox = 46,
	ProgressBar = 48,
	Dial = 49,
	HotkeyField = 50,
	Slider = 51,
	SpinBox = 52,
	Canvas = 53,
	Animation = 54,
	Equation = 55,
	ButtonDropDown = 56,
	ButtonMenu = 57,
	ButtonDropGrid = 58,
	Whitespace = 59,
	PageTabList = 60,
	Clock = 61,
	Splitter = 62,
	LayeredPane = 128,
	Terminal = 129,
	Desktop = 130,
	Paragraph = 131,
	WebDocument = 132,
	Section = 133,
	Notification = 134,
	ColorChooser = 1028,
	Footer = 1038,
	Form = 1040,
	Heading = 1044,
	Note = 1051,
	ComplementaryContent = 1068,
	UserRole = 65535,
}
[AllowDuplicates]
public enum QAccessible__Text
{
	Name = 0,
	Description = 1,
	Value = 2,
	Help = 3,
	Accelerator = 4,
	DebugDescription = 5,
	UserText = 65535,
}
[AllowDuplicates]
public enum QAccessible__RelationFlag
{
	Label = 1,
	Labelled = 2,
	Controller = 4,
	Controlled = 8,
	AllRelations = 4294967295,
}
[AllowDuplicates]
public enum QAccessible__InterfaceType
{
	TextInterface = 0,
	EditableTextInterface = 1,
	ValueInterface = 2,
	ActionInterface = 3,
	ImageInterface = 4,
	TableInterface = 5,
	TableCellInterface = 6,
	HyperlinkInterface = 7,
}
[AllowDuplicates]
public enum QAccessible__TextBoundaryType
{
	CharBoundary = 0,
	WordBoundary = 1,
	SentenceBoundary = 2,
	ParagraphBoundary = 3,
	LineBoundary = 4,
	NoBoundary = 5,
}
public struct QAccessible
{
	[LinkName("QAccessible_new")]
	public static extern void* QAccessible_new(QAccessible other);
	[LinkName("QAccessible_new2")]
	public static extern void* QAccessible_new2(QAccessible other);
	[LinkName("QAccessible_InstallActivationObserver")]
	public static extern void QAccessible_InstallActivationObserver(QAccessible__ActivationObserver param1);
	[LinkName("QAccessible_RemoveActivationObserver")]
	public static extern void QAccessible_RemoveActivationObserver(QAccessible__ActivationObserver param1);
	[LinkName("QAccessible_QueryAccessibleInterface")]
	public static extern QAccessibleInterface QAccessible_QueryAccessibleInterface(QObject param1);
	[LinkName("QAccessible_UniqueId")]
	public static extern uint32 QAccessible_UniqueId(QAccessibleInterface iface);
	[LinkName("QAccessible_AccessibleInterface")]
	public static extern QAccessibleInterface QAccessible_AccessibleInterface(uint32 uniqueId);
	[LinkName("QAccessible_RegisterAccessibleInterface")]
	public static extern uint32 QAccessible_RegisterAccessibleInterface(QAccessibleInterface iface);
	[LinkName("QAccessible_DeleteAccessibleInterface")]
	public static extern void QAccessible_DeleteAccessibleInterface(uint32 uniqueId);
	[LinkName("QAccessible_UpdateAccessibility")]
	public static extern void QAccessible_UpdateAccessibility(QAccessibleEvent event);
	[LinkName("QAccessible_IsActive")]
	public static extern bool QAccessible_IsActive();
	[LinkName("QAccessible_SetActive")]
	public static extern void QAccessible_SetActive(bool active);
	[LinkName("QAccessible_SetRootObject")]
	public static extern void QAccessible_SetRootObject(QObject object);
	[LinkName("QAccessible_Cleanup")]
	public static extern void QAccessible_Cleanup();
	[LinkName("QAccessible_QAccessibleTextBoundaryHelper")]
	public static extern void* QAccessible_QAccessibleTextBoundaryHelper(QTextCursor cursor, int64 boundaryType);
}
public struct QAccessible__State
{
	[LinkName("QAccessible__State_new")]
	public static extern void* QAccessible__State_new(QAccessible__State other);
	[LinkName("QAccessible__State_new2")]
	public static extern void* QAccessible__State_new2(QAccessible__State other);
	[LinkName("QAccessible__State_new3")]
	public static extern void* QAccessible__State_new3();
}
public struct QAccessible__ActivationObserver
{
	[LinkName("QAccessible__ActivationObserver_AccessibilityActiveChanged")]
	public static extern void QAccessible__ActivationObserver_AccessibilityActiveChanged(void* c_this, bool active);
	[LinkName("QAccessible__ActivationObserver_OperatorAssign")]
	public static extern void QAccessible__ActivationObserver_OperatorAssign(void* c_this, QAccessible__ActivationObserver param1);
}