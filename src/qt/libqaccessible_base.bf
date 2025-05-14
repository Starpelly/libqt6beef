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
public interface IQAccessible
{
	void* NativePtr { get; }
}
public struct QAccessiblePtr : IQAccessible, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQAccessible other)
	{
		return .(CQt.QAccessible_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QAccessible_Delete(this.nativePtr);
	}
	
	public static void InstallActivationObserver(QAccessible__ActivationObserverPtr param1)
	{
		CQt.QAccessible_InstallActivationObserver((param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public static void RemoveActivationObserver(QAccessible__ActivationObserverPtr param1)
	{
		CQt.QAccessible_RemoveActivationObserver((param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public static void* QueryAccessibleInterface(IQObject param1)
	{
		return CQt.QAccessible_QueryAccessibleInterface((param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public static uint32 UniqueId(IQAccessibleInterface iface)
	{
		return CQt.QAccessible_UniqueId((iface == default || iface.NativePtr == default) ? default : iface.NativePtr);
	}
	
	public static void* AccessibleInterface(uint32 uniqueId)
	{
		return CQt.QAccessible_AccessibleInterface(uniqueId);
	}
	
	public static uint32 RegisterAccessibleInterface(IQAccessibleInterface iface)
	{
		return CQt.QAccessible_RegisterAccessibleInterface((iface == default || iface.NativePtr == default) ? default : iface.NativePtr);
	}
	
	public static void DeleteAccessibleInterface(uint32 uniqueId)
	{
		CQt.QAccessible_DeleteAccessibleInterface(uniqueId);
	}
	
	public static void UpdateAccessibility(IQAccessibleEvent event)
	{
		CQt.QAccessible_UpdateAccessibility((event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public static bool IsActive()
	{
		return CQt.QAccessible_IsActive();
	}
	
	public static void SetActive(bool active)
	{
		CQt.QAccessible_SetActive(active);
	}
	
	public static void SetRootObject(IQObject object)
	{
		CQt.QAccessible_SetRootObject((object == default || object.NativePtr == default) ? default : object.NativePtr);
	}
	
	public static void Cleanup()
	{
		CQt.QAccessible_Cleanup();
	}
	
	public static void* QAccessibleTextBoundaryHelper(IQTextCursor cursor, int64 boundaryType)
	{
		return CQt.QAccessible_QAccessibleTextBoundaryHelper((cursor == default || cursor.NativePtr == default) ? default : cursor.NativePtr, (int64)boundaryType);
	}
	
}
public class QAccessible
{
	public QAccessiblePtr handle;
	
	public static implicit operator QAccessiblePtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQAccessible other)
	{
		this.handle = QAccessiblePtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public static void InstallActivationObserver(QAccessible__ActivationObserverPtr param1)
	{
		QAccessiblePtr.InstallActivationObserver(param1);
	}
	
	public static void RemoveActivationObserver(QAccessible__ActivationObserverPtr param1)
	{
		QAccessiblePtr.RemoveActivationObserver(param1);
	}
	
	public static void* QueryAccessibleInterface(IQObject param1)
	{
		return QAccessiblePtr.QueryAccessibleInterface(param1);
	}
	
	public static uint32 UniqueId(IQAccessibleInterface iface)
	{
		return QAccessiblePtr.UniqueId(iface);
	}
	
	public static void* AccessibleInterface(uint32 uniqueId)
	{
		return QAccessiblePtr.AccessibleInterface(uniqueId);
	}
	
	public static uint32 RegisterAccessibleInterface(IQAccessibleInterface iface)
	{
		return QAccessiblePtr.RegisterAccessibleInterface(iface);
	}
	
	public static void DeleteAccessibleInterface(uint32 uniqueId)
	{
		QAccessiblePtr.DeleteAccessibleInterface(uniqueId);
	}
	
	public static void UpdateAccessibility(IQAccessibleEvent event)
	{
		QAccessiblePtr.UpdateAccessibility(event);
	}
	
	public static bool IsActive()
	{
		return QAccessiblePtr.IsActive();
	}
	
	public static void SetActive(bool active)
	{
		QAccessiblePtr.SetActive(active);
	}
	
	public static void SetRootObject(IQObject object)
	{
		QAccessiblePtr.SetRootObject(object);
	}
	
	public static void Cleanup()
	{
		QAccessiblePtr.Cleanup();
	}
	
	public static void* QAccessibleTextBoundaryHelper(IQTextCursor cursor, int64 boundaryType)
	{
		return QAccessiblePtr.QAccessibleTextBoundaryHelper(cursor, boundaryType);
	}
	
}
extension CQt
{
	[LinkName("QAccessible_new")]
	public static extern void* QAccessible_new(void* other);
	[LinkName("QAccessible_new2")]
	public static extern void* QAccessible_new2(void* other);
	[LinkName("QAccessible_InstallActivationObserver")]
	public static extern void QAccessible_InstallActivationObserver(void* param1);
	[LinkName("QAccessible_RemoveActivationObserver")]
	public static extern void QAccessible_RemoveActivationObserver(void* param1);
	[LinkName("QAccessible_QueryAccessibleInterface")]
	public static extern void* QAccessible_QueryAccessibleInterface(void* param1);
	[LinkName("QAccessible_UniqueId")]
	public static extern uint32 QAccessible_UniqueId(void* iface);
	[LinkName("QAccessible_AccessibleInterface")]
	public static extern void* QAccessible_AccessibleInterface(uint32 uniqueId);
	[LinkName("QAccessible_RegisterAccessibleInterface")]
	public static extern uint32 QAccessible_RegisterAccessibleInterface(void* iface);
	[LinkName("QAccessible_DeleteAccessibleInterface")]
	public static extern void QAccessible_DeleteAccessibleInterface(uint32 uniqueId);
	[LinkName("QAccessible_UpdateAccessibility")]
	public static extern void QAccessible_UpdateAccessibility(void* event);
	[LinkName("QAccessible_IsActive")]
	public static extern bool QAccessible_IsActive();
	[LinkName("QAccessible_SetActive")]
	public static extern void QAccessible_SetActive(bool active);
	[LinkName("QAccessible_SetRootObject")]
	public static extern void QAccessible_SetRootObject(void* object);
	[LinkName("QAccessible_Cleanup")]
	public static extern void QAccessible_Cleanup();
	[LinkName("QAccessible_QAccessibleTextBoundaryHelper")]
	public static extern void* QAccessible_QAccessibleTextBoundaryHelper(void* cursor, int64 boundaryType);
	/// Delete this object from C++ memory
	[LinkName("QAccessible_Delete")]
	public static extern void QAccessible_Delete(void* self);
}
public interface IQAccessible__State
{
	void* NativePtr { get; }
}
public struct QAccessible__StatePtr : IQAccessible__State, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(QAccessible__StatePtr other)
	{
		return .(CQt.QAccessible__State_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	public void Dispose()
	{
		CQt.QAccessible__State_Delete(this.nativePtr);
	}
}
public class QAccessible__State
{
	public QAccessible__StatePtr handle;
	
	public static implicit operator QAccessible__StatePtr(Self self)
	{
		return self.handle;
	}
	
	public this(QAccessible__StatePtr other)
	{
		this.handle = QAccessible__StatePtr.New(other);
	}
	public ~this()
	{
		this.handle.Dispose();
	}
}
extension CQt
{
	[LinkName("QAccessible__State_new")]
	public static extern void* QAccessible__State_new(void* other);
	[LinkName("QAccessible__State_new2")]
	public static extern void* QAccessible__State_new2(void* other);
	[LinkName("QAccessible__State_new3")]
	public static extern void* QAccessible__State_new3();
	/// Delete this object from C++ memory
	[LinkName("QAccessible__State_Delete")]
	public static extern void QAccessible__State_Delete(void* self);
}
public interface IQAccessible__ActivationObserver
{
	void* NativePtr { get; }
}
public struct QAccessible__ActivationObserverPtr : IQAccessible__ActivationObserver, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public void Dispose()
	{
		CQt.QAccessible__ActivationObserver_Delete(this.nativePtr);
	}
	
	public void AccessibilityActiveChanged(bool active)
	{
		CQt.QAccessible__ActivationObserver_AccessibilityActiveChanged(this.nativePtr, active);
	}
	
	public void OperatorAssign(QAccessible__ActivationObserverPtr param1)
	{
		CQt.QAccessible__ActivationObserver_OperatorAssign(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
}
public class QAccessible__ActivationObserver
{
	public QAccessible__ActivationObserverPtr handle;
	
	public static implicit operator QAccessible__ActivationObserverPtr(Self self)
	{
		return self.handle;
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void AccessibilityActiveChanged(bool active)
	{
		this.handle.AccessibilityActiveChanged(active);
	}
	
	public void OperatorAssign(QAccessible__ActivationObserverPtr param1)
	{
		this.handle.OperatorAssign(param1);
	}
	
}
extension CQt
{
	[LinkName("QAccessible__ActivationObserver_AccessibilityActiveChanged")]
	public static extern void QAccessible__ActivationObserver_AccessibilityActiveChanged(void* c_this, bool active);
	[LinkName("QAccessible__ActivationObserver_OperatorAssign")]
	public static extern void QAccessible__ActivationObserver_OperatorAssign(void* c_this, void* param1);
	/// Delete this object from C++ memory
	[LinkName("QAccessible__ActivationObserver_Delete")]
	public static extern void QAccessible__ActivationObserver_Delete(void* self);
}