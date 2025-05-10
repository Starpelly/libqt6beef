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
public class QKeySequence
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QKeySequence_new();
	}
	
	public ~this()
	{
		CQt.QKeySequence_Delete(this.nativePtr);
	}
	
	public int32 Count()
	{
		return CQt.QKeySequence_Count(this.nativePtr);
	}
	
	public bool IsEmpty()
	{
		return CQt.QKeySequence_IsEmpty(this.nativePtr);
	}
	
	public libqt_string ToString()
	{
		return CQt.QKeySequence_ToString(this.nativePtr);
	}
	
	public static void FromString(libqt_string str)
	{
		CQt.QKeySequence_FromString(str);
	}
	
	public static void[] ListFromString(libqt_string str)
	{
		return CQt.QKeySequence_ListFromString(str);
	}
	
	public static libqt_string ListToString(void[] list)
	{
		return CQt.QKeySequence_ListToString(list);
	}
	
	public int64 Matches(void* seq)
	{
		return CQt.QKeySequence_Matches(this.nativePtr, seq);
	}
	
	public static void Mnemonic(libqt_string text)
	{
		CQt.QKeySequence_Mnemonic(text);
	}
	
	public static void[] KeyBindings(int64 key)
	{
		return CQt.QKeySequence_KeyBindings(key);
	}
	
	public void ToQVariant()
	{
		CQt.QKeySequence_ToQVariant(this.nativePtr);
	}
	
	public void OperatorSubscript(uint32 i)
	{
		CQt.QKeySequence_OperatorSubscript(this.nativePtr, i);
	}
	
	public void OperatorAssign(void* other)
	{
		CQt.QKeySequence_OperatorAssign(this.nativePtr, other);
	}
	
	public void Swap(void* other)
	{
		CQt.QKeySequence_Swap(this.nativePtr, other);
	}
	
	public bool OperatorEqual(void* other)
	{
		return CQt.QKeySequence_OperatorEqual(this.nativePtr, other);
	}
	
	public bool OperatorNotEqual(void* other)
	{
		return CQt.QKeySequence_OperatorNotEqual(this.nativePtr, other);
	}
	
	public bool OperatorLesser(void* ks)
	{
		return CQt.QKeySequence_OperatorLesser(this.nativePtr, ks);
	}
	
	public bool OperatorGreater(void* other)
	{
		return CQt.QKeySequence_OperatorGreater(this.nativePtr, other);
	}
	
	public bool OperatorLesserOrEqual(void* other)
	{
		return CQt.QKeySequence_OperatorLesserOrEqual(this.nativePtr, other);
	}
	
	public bool OperatorGreaterOrEqual(void* other)
	{
		return CQt.QKeySequence_OperatorGreaterOrEqual(this.nativePtr, other);
	}
	
	public bool IsDetached()
	{
		return CQt.QKeySequence_IsDetached(this.nativePtr);
	}
	
	public libqt_string ToString1(int64 format)
	{
		return CQt.QKeySequence_ToString1(this.nativePtr, format);
	}
	
	public static void FromString2(libqt_string str, int64 format)
	{
		CQt.QKeySequence_FromString2(str, format);
	}
	
	public static void[] ListFromString2(libqt_string str, int64 format)
	{
		return CQt.QKeySequence_ListFromString2(str, format);
	}
	
	public static libqt_string ListToString2(void[] list, int64 format)
	{
		return CQt.QKeySequence_ListToString2(list, format);
	}
	
}
extension CQt
{
	[LinkName("QKeySequence_new")]
	public static extern void* QKeySequence_new();
	[LinkName("QKeySequence_new2")]
	public static extern void* QKeySequence_new2(libqt_string key);
	[LinkName("QKeySequence_new3")]
	public static extern void* QKeySequence_new3(int32 k1);
	[LinkName("QKeySequence_new4")]
	public static extern void* QKeySequence_new4(void k1);
	[LinkName("QKeySequence_new5")]
	public static extern void* QKeySequence_new5(void* ks);
	[LinkName("QKeySequence_new6")]
	public static extern void* QKeySequence_new6(int64 key);
	[LinkName("QKeySequence_new7")]
	public static extern void* QKeySequence_new7(libqt_string key, int64 format);
	[LinkName("QKeySequence_new8")]
	public static extern void* QKeySequence_new8(int32 k1, int32 k2);
	[LinkName("QKeySequence_new9")]
	public static extern void* QKeySequence_new9(int32 k1, int32 k2, int32 k3);
	[LinkName("QKeySequence_new10")]
	public static extern void* QKeySequence_new10(int32 k1, int32 k2, int32 k3, int32 k4);
	[LinkName("QKeySequence_new11")]
	public static extern void* QKeySequence_new11(void k1, void k2);
	[LinkName("QKeySequence_new12")]
	public static extern void* QKeySequence_new12(void k1, void k2, void k3);
	[LinkName("QKeySequence_new13")]
	public static extern void* QKeySequence_new13(void k1, void k2, void k3, void k4);
	[LinkName("QKeySequence_Count")]
	public static extern int32 QKeySequence_Count(void* c_this);
	[LinkName("QKeySequence_IsEmpty")]
	public static extern bool QKeySequence_IsEmpty(void* c_this);
	[LinkName("QKeySequence_ToString")]
	public static extern libqt_string QKeySequence_ToString(void* c_this);
	[LinkName("QKeySequence_FromString")]
	public static extern void QKeySequence_FromString(libqt_string str);
	[LinkName("QKeySequence_ListFromString")]
	public static extern void[] QKeySequence_ListFromString(libqt_string str);
	[LinkName("QKeySequence_ListToString")]
	public static extern libqt_string QKeySequence_ListToString(void[] list);
	[LinkName("QKeySequence_Matches")]
	public static extern int64 QKeySequence_Matches(void* c_this, void* seq);
	[LinkName("QKeySequence_Mnemonic")]
	public static extern void QKeySequence_Mnemonic(libqt_string text);
	[LinkName("QKeySequence_KeyBindings")]
	public static extern void[] QKeySequence_KeyBindings(int64 key);
	[LinkName("QKeySequence_ToQVariant")]
	public static extern void QKeySequence_ToQVariant(void* c_this);
	[LinkName("QKeySequence_OperatorSubscript")]
	public static extern void QKeySequence_OperatorSubscript(void* c_this, uint32 i);
	[LinkName("QKeySequence_OperatorAssign")]
	public static extern void QKeySequence_OperatorAssign(void* c_this, void* other);
	[LinkName("QKeySequence_Swap")]
	public static extern void QKeySequence_Swap(void* c_this, void* other);
	[LinkName("QKeySequence_OperatorEqual")]
	public static extern bool QKeySequence_OperatorEqual(void* c_this, void* other);
	[LinkName("QKeySequence_OperatorNotEqual")]
	public static extern bool QKeySequence_OperatorNotEqual(void* c_this, void* other);
	[LinkName("QKeySequence_OperatorLesser")]
	public static extern bool QKeySequence_OperatorLesser(void* c_this, void* ks);
	[LinkName("QKeySequence_OperatorGreater")]
	public static extern bool QKeySequence_OperatorGreater(void* c_this, void* other);
	[LinkName("QKeySequence_OperatorLesserOrEqual")]
	public static extern bool QKeySequence_OperatorLesserOrEqual(void* c_this, void* other);
	[LinkName("QKeySequence_OperatorGreaterOrEqual")]
	public static extern bool QKeySequence_OperatorGreaterOrEqual(void* c_this, void* other);
	[LinkName("QKeySequence_IsDetached")]
	public static extern bool QKeySequence_IsDetached(void* c_this);
	[LinkName("QKeySequence_ToString1")]
	public static extern libqt_string QKeySequence_ToString1(void* c_this, int64 format);
	[LinkName("QKeySequence_FromString2")]
	public static extern void QKeySequence_FromString2(libqt_string str, int64 format);
	[LinkName("QKeySequence_ListFromString2")]
	public static extern void[] QKeySequence_ListFromString2(libqt_string str, int64 format);
	[LinkName("QKeySequence_ListToString2")]
	public static extern libqt_string QKeySequence_ListToString2(void[] list, int64 format);
	/// Delete this object from C++ memory
	[LinkName("QKeySequence_Delete")]
	public static extern void QKeySequence_Delete(void* self);
}