using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QKeySequence__StandardKey
{
	UnknownKey = 0,
	HelpContents = 1,
	WhatsThis = 2,
	Open = 3,
	Close = 4,
	Save = 5,
	New = 6,
	Delete = 7,
	Cut = 8,
	Copy = 9,
	Paste = 10,
	Undo = 11,
	Redo = 12,
	Back = 13,
	Forward = 14,
	Refresh = 15,
	ZoomIn = 16,
	ZoomOut = 17,
	Print = 18,
	AddTab = 19,
	NextChild = 20,
	PreviousChild = 21,
	Find = 22,
	FindNext = 23,
	FindPrevious = 24,
	Replace = 25,
	SelectAll = 26,
	Bold = 27,
	Italic = 28,
	Underline = 29,
	MoveToNextChar = 30,
	MoveToPreviousChar = 31,
	MoveToNextWord = 32,
	MoveToPreviousWord = 33,
	MoveToNextLine = 34,
	MoveToPreviousLine = 35,
	MoveToNextPage = 36,
	MoveToPreviousPage = 37,
	MoveToStartOfLine = 38,
	MoveToEndOfLine = 39,
	MoveToStartOfBlock = 40,
	MoveToEndOfBlock = 41,
	MoveToStartOfDocument = 42,
	MoveToEndOfDocument = 43,
	SelectNextChar = 44,
	SelectPreviousChar = 45,
	SelectNextWord = 46,
	SelectPreviousWord = 47,
	SelectNextLine = 48,
	SelectPreviousLine = 49,
	SelectNextPage = 50,
	SelectPreviousPage = 51,
	SelectStartOfLine = 52,
	SelectEndOfLine = 53,
	SelectStartOfBlock = 54,
	SelectEndOfBlock = 55,
	SelectStartOfDocument = 56,
	SelectEndOfDocument = 57,
	DeleteStartOfWord = 58,
	DeleteEndOfWord = 59,
	DeleteEndOfLine = 60,
	InsertParagraphSeparator = 61,
	InsertLineSeparator = 62,
	SaveAs = 63,
	Preferences = 64,
	Quit = 65,
	FullScreen = 66,
	Deselect = 67,
	DeleteCompleteLine = 68,
	Backspace = 69,
	Cancel = 70,
}
[AllowDuplicates]
public enum QKeySequence__SequenceFormat
{
	NativeText = 0,
	PortableText = 1,
}
[AllowDuplicates]
public enum QKeySequence__SequenceMatch
{
	NoMatch = 0,
	PartialMatch = 1,
	ExactMatch = 2,
}
public struct QKeySequence
{
	[LinkName("QKeySequence_new")]
	public static extern QKeySequence* QKeySequence_new();
	[LinkName("QKeySequence_new2")]
	public static extern QKeySequence* QKeySequence_new2(libqt_string key);
	[LinkName("QKeySequence_new3")]
	public static extern QKeySequence* QKeySequence_new3(int32 k1);
	[LinkName("QKeySequence_new4")]
	public static extern QKeySequence* QKeySequence_new4(QKeyCombination k1);
	[LinkName("QKeySequence_new5")]
	public static extern QKeySequence* QKeySequence_new5(QKeySequence* ks);
	[LinkName("QKeySequence_new6")]
	public static extern QKeySequence* QKeySequence_new6(int64 key);
	[LinkName("QKeySequence_new7")]
	public static extern QKeySequence* QKeySequence_new7(libqt_string key, int64 format);
	[LinkName("QKeySequence_new8")]
	public static extern QKeySequence* QKeySequence_new8(int32 k1, int32 k2);
	[LinkName("QKeySequence_new9")]
	public static extern QKeySequence* QKeySequence_new9(int32 k1, int32 k2, int32 k3);
	[LinkName("QKeySequence_new10")]
	public static extern QKeySequence* QKeySequence_new10(int32 k1, int32 k2, int32 k3, int32 k4);
	[LinkName("QKeySequence_new11")]
	public static extern QKeySequence* QKeySequence_new11(QKeyCombination k1, QKeyCombination k2);
	[LinkName("QKeySequence_new12")]
	public static extern QKeySequence* QKeySequence_new12(QKeyCombination k1, QKeyCombination k2, QKeyCombination k3);
	[LinkName("QKeySequence_new13")]
	public static extern QKeySequence* QKeySequence_new13(QKeyCombination k1, QKeyCombination k2, QKeyCombination k3, QKeyCombination k4);
	[LinkName("QKeySequence_Count")]
	public static extern int32 QKeySequence_Count(Self* c_this);
	[LinkName("QKeySequence_IsEmpty")]
	public static extern bool QKeySequence_IsEmpty(Self* c_this);
	[LinkName("QKeySequence_ToString")]
	public static extern libqt_string QKeySequence_ToString(Self* c_this);
	[LinkName("QKeySequence_FromString")]
	public static extern QKeySequence QKeySequence_FromString(libqt_string str);
	[LinkName("QKeySequence_ListFromString")]
	public static extern QKeySequence[] QKeySequence_ListFromString(libqt_string str);
	[LinkName("QKeySequence_ListToString")]
	public static extern libqt_string QKeySequence_ListToString(QKeySequence[] list);
	[LinkName("QKeySequence_Matches")]
	public static extern int64 QKeySequence_Matches(Self* c_this, QKeySequence* seq);
	[LinkName("QKeySequence_Mnemonic")]
	public static extern QKeySequence QKeySequence_Mnemonic(libqt_string text);
	[LinkName("QKeySequence_KeyBindings")]
	public static extern QKeySequence[] QKeySequence_KeyBindings(int64 key);
	[LinkName("QKeySequence_ToQVariant")]
	public static extern QVariant QKeySequence_ToQVariant(Self* c_this);
	[LinkName("QKeySequence_OperatorSubscript")]
	public static extern QKeyCombination QKeySequence_OperatorSubscript(Self* c_this, uint32 i);
	[LinkName("QKeySequence_OperatorAssign")]
	public static extern void QKeySequence_OperatorAssign(Self* c_this, QKeySequence* other);
	[LinkName("QKeySequence_Swap")]
	public static extern void QKeySequence_Swap(Self* c_this, QKeySequence* other);
	[LinkName("QKeySequence_OperatorEqual")]
	public static extern bool QKeySequence_OperatorEqual(Self* c_this, QKeySequence* other);
	[LinkName("QKeySequence_OperatorNotEqual")]
	public static extern bool QKeySequence_OperatorNotEqual(Self* c_this, QKeySequence* other);
	[LinkName("QKeySequence_OperatorLesser")]
	public static extern bool QKeySequence_OperatorLesser(Self* c_this, QKeySequence* ks);
	[LinkName("QKeySequence_OperatorGreater")]
	public static extern bool QKeySequence_OperatorGreater(Self* c_this, QKeySequence* other);
	[LinkName("QKeySequence_OperatorLesserOrEqual")]
	public static extern bool QKeySequence_OperatorLesserOrEqual(Self* c_this, QKeySequence* other);
	[LinkName("QKeySequence_OperatorGreaterOrEqual")]
	public static extern bool QKeySequence_OperatorGreaterOrEqual(Self* c_this, QKeySequence* other);
	[LinkName("QKeySequence_IsDetached")]
	public static extern bool QKeySequence_IsDetached(Self* c_this);
	[LinkName("QKeySequence_ToString1")]
	public static extern libqt_string QKeySequence_ToString1(Self* c_this, int64 format);
	[LinkName("QKeySequence_FromString2")]
	public static extern QKeySequence QKeySequence_FromString2(libqt_string str, int64 format);
	[LinkName("QKeySequence_ListFromString2")]
	public static extern QKeySequence[] QKeySequence_ListFromString2(libqt_string str, int64 format);
	[LinkName("QKeySequence_ListToString2")]
	public static extern libqt_string QKeySequence_ListToString2(QKeySequence[] list, int64 format);
}