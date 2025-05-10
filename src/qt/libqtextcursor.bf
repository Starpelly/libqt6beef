using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QTextCursor__MoveMode
{
	MoveAnchor = 0,
	KeepAnchor = 1,
}
[AllowDuplicates]
public enum QTextCursor__MoveOperation
{
	NoMove = 0,
	Start = 1,
	Up = 2,
	StartOfLine = 3,
	StartOfBlock = 4,
	StartOfWord = 5,
	PreviousBlock = 6,
	PreviousCharacter = 7,
	PreviousWord = 8,
	Left = 9,
	WordLeft = 10,
	End = 11,
	Down = 12,
	EndOfLine = 13,
	EndOfWord = 14,
	EndOfBlock = 15,
	NextBlock = 16,
	NextCharacter = 17,
	NextWord = 18,
	Right = 19,
	WordRight = 20,
	NextCell = 21,
	PreviousCell = 22,
	NextRow = 23,
	PreviousRow = 24,
}
[AllowDuplicates]
public enum QTextCursor__SelectionType
{
	WordUnderCursor = 0,
	LineUnderCursor = 1,
	BlockUnderCursor = 2,
	Document = 3,
}
public interface IQTextCursor
{
	void* NativePtr { get; }
}
public class QTextCursor : IQTextCursor
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QTextCursor_new();
	}
	
	public ~this()
	{
		CQt.QTextCursor_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQTextCursor other)
	{
		CQt.QTextCursor_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public void Swap(IQTextCursor other)
	{
		CQt.QTextCursor_Swap(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public bool IsNull()
	{
		return CQt.QTextCursor_IsNull(this.nativePtr);
	}
	
	public void SetPosition(int32 pos)
	{
		CQt.QTextCursor_SetPosition(this.nativePtr, pos);
	}
	
	public int32 Position()
	{
		return CQt.QTextCursor_Position(this.nativePtr);
	}
	
	public int32 PositionInBlock()
	{
		return CQt.QTextCursor_PositionInBlock(this.nativePtr);
	}
	
	public int32 Anchor()
	{
		return CQt.QTextCursor_Anchor(this.nativePtr);
	}
	
	public void InsertText(String text)
	{
		CQt.QTextCursor_InsertText(this.nativePtr, libqt_string(text));
	}
	
	public void InsertText2(String text, IQTextCharFormat format)
	{
		CQt.QTextCursor_InsertText2(this.nativePtr, libqt_string(text), (format == default) ? default : (void*)format.NativePtr);
	}
	
	public bool MovePosition(int64 op)
	{
		return CQt.QTextCursor_MovePosition(this.nativePtr, op);
	}
	
	public bool VisualNavigation()
	{
		return CQt.QTextCursor_VisualNavigation(this.nativePtr);
	}
	
	public void SetVisualNavigation(bool b)
	{
		CQt.QTextCursor_SetVisualNavigation(this.nativePtr, b);
	}
	
	public void SetVerticalMovementX(int32 x)
	{
		CQt.QTextCursor_SetVerticalMovementX(this.nativePtr, x);
	}
	
	public int32 VerticalMovementX()
	{
		return CQt.QTextCursor_VerticalMovementX(this.nativePtr);
	}
	
	public void SetKeepPositionOnInsert(bool b)
	{
		CQt.QTextCursor_SetKeepPositionOnInsert(this.nativePtr, b);
	}
	
	public bool KeepPositionOnInsert()
	{
		return CQt.QTextCursor_KeepPositionOnInsert(this.nativePtr);
	}
	
	public void DeleteChar()
	{
		CQt.QTextCursor_DeleteChar(this.nativePtr);
	}
	
	public void DeletePreviousChar()
	{
		CQt.QTextCursor_DeletePreviousChar(this.nativePtr);
	}
	
	public void Select(int64 selection)
	{
		CQt.QTextCursor_Select(this.nativePtr, selection);
	}
	
	public bool HasSelection()
	{
		return CQt.QTextCursor_HasSelection(this.nativePtr);
	}
	
	public bool HasComplexSelection()
	{
		return CQt.QTextCursor_HasComplexSelection(this.nativePtr);
	}
	
	public void RemoveSelectedText()
	{
		CQt.QTextCursor_RemoveSelectedText(this.nativePtr);
	}
	
	public void ClearSelection()
	{
		CQt.QTextCursor_ClearSelection(this.nativePtr);
	}
	
	public int32 SelectionStart()
	{
		return CQt.QTextCursor_SelectionStart(this.nativePtr);
	}
	
	public int32 SelectionEnd()
	{
		return CQt.QTextCursor_SelectionEnd(this.nativePtr);
	}
	
	public libqt_string SelectedText()
	{
		return CQt.QTextCursor_SelectedText(this.nativePtr);
	}
	
	public void Selection()
	{
		CQt.QTextCursor_Selection(this.nativePtr);
	}
	
	public void SelectedTableCells(int32* firstRow, int32* numRows, int32* firstColumn, int32* numColumns)
	{
		CQt.QTextCursor_SelectedTableCells(this.nativePtr, firstRow, numRows, firstColumn, numColumns);
	}
	
	public void Block()
	{
		CQt.QTextCursor_Block(this.nativePtr);
	}
	
	public void CharFormat()
	{
		CQt.QTextCursor_CharFormat(this.nativePtr);
	}
	
	public void SetCharFormat(IQTextCharFormat format)
	{
		CQt.QTextCursor_SetCharFormat(this.nativePtr, (format == default) ? default : (void*)format.NativePtr);
	}
	
	public void MergeCharFormat(IQTextCharFormat modifier)
	{
		CQt.QTextCursor_MergeCharFormat(this.nativePtr, (modifier == default) ? default : (void*)modifier.NativePtr);
	}
	
	public void BlockFormat()
	{
		CQt.QTextCursor_BlockFormat(this.nativePtr);
	}
	
	public void SetBlockFormat(IQTextBlockFormat format)
	{
		CQt.QTextCursor_SetBlockFormat(this.nativePtr, (format == default) ? default : (void*)format.NativePtr);
	}
	
	public void MergeBlockFormat(IQTextBlockFormat modifier)
	{
		CQt.QTextCursor_MergeBlockFormat(this.nativePtr, (modifier == default) ? default : (void*)modifier.NativePtr);
	}
	
	public void BlockCharFormat()
	{
		CQt.QTextCursor_BlockCharFormat(this.nativePtr);
	}
	
	public void SetBlockCharFormat(IQTextCharFormat format)
	{
		CQt.QTextCursor_SetBlockCharFormat(this.nativePtr, (format == default) ? default : (void*)format.NativePtr);
	}
	
	public void MergeBlockCharFormat(IQTextCharFormat modifier)
	{
		CQt.QTextCursor_MergeBlockCharFormat(this.nativePtr, (modifier == default) ? default : (void*)modifier.NativePtr);
	}
	
	public bool AtBlockStart()
	{
		return CQt.QTextCursor_AtBlockStart(this.nativePtr);
	}
	
	public bool AtBlockEnd()
	{
		return CQt.QTextCursor_AtBlockEnd(this.nativePtr);
	}
	
	public bool AtStart()
	{
		return CQt.QTextCursor_AtStart(this.nativePtr);
	}
	
	public bool AtEnd()
	{
		return CQt.QTextCursor_AtEnd(this.nativePtr);
	}
	
	public void InsertBlock()
	{
		CQt.QTextCursor_InsertBlock(this.nativePtr);
	}
	
	public void InsertBlockWithFormat(IQTextBlockFormat format)
	{
		CQt.QTextCursor_InsertBlockWithFormat(this.nativePtr, (format == default) ? default : (void*)format.NativePtr);
	}
	
	public void InsertBlock2(IQTextBlockFormat format, IQTextCharFormat charFormat)
	{
		CQt.QTextCursor_InsertBlock2(this.nativePtr, (format == default) ? default : (void*)format.NativePtr, (charFormat == default) ? default : (void*)charFormat.NativePtr);
	}
	
	public void* InsertList(IQTextListFormat format)
	{
		return CQt.QTextCursor_InsertList(this.nativePtr, (format == default) ? default : (void*)format.NativePtr);
	}
	
	public void* InsertListWithStyle(int64 style)
	{
		return CQt.QTextCursor_InsertListWithStyle(this.nativePtr, style);
	}
	
	public void* CreateList(IQTextListFormat format)
	{
		return CQt.QTextCursor_CreateList(this.nativePtr, (format == default) ? default : (void*)format.NativePtr);
	}
	
	public void* CreateListWithStyle(int64 style)
	{
		return CQt.QTextCursor_CreateListWithStyle(this.nativePtr, style);
	}
	
	public void* CurrentList()
	{
		return CQt.QTextCursor_CurrentList(this.nativePtr);
	}
	
	public void* InsertTable(int32 rows, int32 cols, IQTextTableFormat format)
	{
		return CQt.QTextCursor_InsertTable(this.nativePtr, rows, cols, (format == default) ? default : (void*)format.NativePtr);
	}
	
	public void* InsertTable2(int32 rows, int32 cols)
	{
		return CQt.QTextCursor_InsertTable2(this.nativePtr, rows, cols);
	}
	
	public void* CurrentTable()
	{
		return CQt.QTextCursor_CurrentTable(this.nativePtr);
	}
	
	public void* InsertFrame(IQTextFrameFormat format)
	{
		return CQt.QTextCursor_InsertFrame(this.nativePtr, (format == default) ? default : (void*)format.NativePtr);
	}
	
	public void* CurrentFrame()
	{
		return CQt.QTextCursor_CurrentFrame(this.nativePtr);
	}
	
	public void InsertFragment(IQTextDocumentFragment fragment)
	{
		CQt.QTextCursor_InsertFragment(this.nativePtr, (fragment == default) ? default : (void*)fragment.NativePtr);
	}
	
	public void InsertHtml(String html)
	{
		CQt.QTextCursor_InsertHtml(this.nativePtr, libqt_string(html));
	}
	
	public void InsertMarkdown(String markdown)
	{
		CQt.QTextCursor_InsertMarkdown(this.nativePtr, libqt_string(markdown));
	}
	
	public void InsertImage(IQTextImageFormat format, int64 alignment)
	{
		CQt.QTextCursor_InsertImage(this.nativePtr, (format == default) ? default : (void*)format.NativePtr, alignment);
	}
	
	public void InsertImageWithFormat(IQTextImageFormat format)
	{
		CQt.QTextCursor_InsertImageWithFormat(this.nativePtr, (format == default) ? default : (void*)format.NativePtr);
	}
	
	public void InsertImageWithName(String name)
	{
		CQt.QTextCursor_InsertImageWithName(this.nativePtr, libqt_string(name));
	}
	
	public void InsertImageWithImage(IQImage image)
	{
		CQt.QTextCursor_InsertImageWithImage(this.nativePtr, (image == default) ? default : (void*)image.NativePtr);
	}
	
	public void BeginEditBlock()
	{
		CQt.QTextCursor_BeginEditBlock(this.nativePtr);
	}
	
	public void JoinPreviousEditBlock()
	{
		CQt.QTextCursor_JoinPreviousEditBlock(this.nativePtr);
	}
	
	public void EndEditBlock()
	{
		CQt.QTextCursor_EndEditBlock(this.nativePtr);
	}
	
	public bool OperatorNotEqual(IQTextCursor rhs)
	{
		return CQt.QTextCursor_OperatorNotEqual(this.nativePtr, (rhs == default) ? default : (void*)rhs.NativePtr);
	}
	
	public bool OperatorLesser(IQTextCursor rhs)
	{
		return CQt.QTextCursor_OperatorLesser(this.nativePtr, (rhs == default) ? default : (void*)rhs.NativePtr);
	}
	
	public bool OperatorLesserOrEqual(IQTextCursor rhs)
	{
		return CQt.QTextCursor_OperatorLesserOrEqual(this.nativePtr, (rhs == default) ? default : (void*)rhs.NativePtr);
	}
	
	public bool OperatorEqual(IQTextCursor rhs)
	{
		return CQt.QTextCursor_OperatorEqual(this.nativePtr, (rhs == default) ? default : (void*)rhs.NativePtr);
	}
	
	public bool OperatorGreaterOrEqual(IQTextCursor rhs)
	{
		return CQt.QTextCursor_OperatorGreaterOrEqual(this.nativePtr, (rhs == default) ? default : (void*)rhs.NativePtr);
	}
	
	public bool OperatorGreater(IQTextCursor rhs)
	{
		return CQt.QTextCursor_OperatorGreater(this.nativePtr, (rhs == default) ? default : (void*)rhs.NativePtr);
	}
	
	public bool IsCopyOf(IQTextCursor other)
	{
		return CQt.QTextCursor_IsCopyOf(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public int32 BlockNumber()
	{
		return CQt.QTextCursor_BlockNumber(this.nativePtr);
	}
	
	public int32 ColumnNumber()
	{
		return CQt.QTextCursor_ColumnNumber(this.nativePtr);
	}
	
	public void* Document()
	{
		return CQt.QTextCursor_Document(this.nativePtr);
	}
	
	public void SetPosition2(int32 pos, int64 mode)
	{
		CQt.QTextCursor_SetPosition2(this.nativePtr, pos, mode);
	}
	
	public bool MovePosition2(int64 op, int64 param2)
	{
		return CQt.QTextCursor_MovePosition2(this.nativePtr, op, param2);
	}
	
	public bool MovePosition3(int64 op, int64 param2, int32 n)
	{
		return CQt.QTextCursor_MovePosition3(this.nativePtr, op, param2, n);
	}
	
	public void InsertMarkdown2(String markdown, int64 features)
	{
		CQt.QTextCursor_InsertMarkdown2(this.nativePtr, libqt_string(markdown), features);
	}
	
	public void InsertImage2(IQImage image, String name)
	{
		CQt.QTextCursor_InsertImage2(this.nativePtr, (image == default) ? default : (void*)image.NativePtr, libqt_string(name));
	}
	
}
extension CQt
{
	[LinkName("QTextCursor_new")]
	public static extern void* QTextCursor_new();
	[LinkName("QTextCursor_new2")]
	public static extern void* QTextCursor_new2(void* document);
	[LinkName("QTextCursor_new3")]
	public static extern void* QTextCursor_new3(void* frame);
	[LinkName("QTextCursor_new4")]
	public static extern void* QTextCursor_new4(void* block);
	[LinkName("QTextCursor_new5")]
	public static extern void* QTextCursor_new5(void* cursor);
	[LinkName("QTextCursor_OperatorAssign")]
	public static extern void QTextCursor_OperatorAssign(void* c_this, void* other);
	[LinkName("QTextCursor_Swap")]
	public static extern void QTextCursor_Swap(void* c_this, void* other);
	[LinkName("QTextCursor_IsNull")]
	public static extern bool QTextCursor_IsNull(void* c_this);
	[LinkName("QTextCursor_SetPosition")]
	public static extern void QTextCursor_SetPosition(void* c_this, int32 pos);
	[LinkName("QTextCursor_Position")]
	public static extern int32 QTextCursor_Position(void* c_this);
	[LinkName("QTextCursor_PositionInBlock")]
	public static extern int32 QTextCursor_PositionInBlock(void* c_this);
	[LinkName("QTextCursor_Anchor")]
	public static extern int32 QTextCursor_Anchor(void* c_this);
	[LinkName("QTextCursor_InsertText")]
	public static extern void QTextCursor_InsertText(void* c_this, libqt_string text);
	[LinkName("QTextCursor_InsertText2")]
	public static extern void QTextCursor_InsertText2(void* c_this, libqt_string text, void* format);
	[LinkName("QTextCursor_MovePosition")]
	public static extern bool QTextCursor_MovePosition(void* c_this, int64 op);
	[LinkName("QTextCursor_VisualNavigation")]
	public static extern bool QTextCursor_VisualNavigation(void* c_this);
	[LinkName("QTextCursor_SetVisualNavigation")]
	public static extern void QTextCursor_SetVisualNavigation(void* c_this, bool b);
	[LinkName("QTextCursor_SetVerticalMovementX")]
	public static extern void QTextCursor_SetVerticalMovementX(void* c_this, int32 x);
	[LinkName("QTextCursor_VerticalMovementX")]
	public static extern int32 QTextCursor_VerticalMovementX(void* c_this);
	[LinkName("QTextCursor_SetKeepPositionOnInsert")]
	public static extern void QTextCursor_SetKeepPositionOnInsert(void* c_this, bool b);
	[LinkName("QTextCursor_KeepPositionOnInsert")]
	public static extern bool QTextCursor_KeepPositionOnInsert(void* c_this);
	[LinkName("QTextCursor_DeleteChar")]
	public static extern void QTextCursor_DeleteChar(void* c_this);
	[LinkName("QTextCursor_DeletePreviousChar")]
	public static extern void QTextCursor_DeletePreviousChar(void* c_this);
	[LinkName("QTextCursor_Select")]
	public static extern void QTextCursor_Select(void* c_this, int64 selection);
	[LinkName("QTextCursor_HasSelection")]
	public static extern bool QTextCursor_HasSelection(void* c_this);
	[LinkName("QTextCursor_HasComplexSelection")]
	public static extern bool QTextCursor_HasComplexSelection(void* c_this);
	[LinkName("QTextCursor_RemoveSelectedText")]
	public static extern void QTextCursor_RemoveSelectedText(void* c_this);
	[LinkName("QTextCursor_ClearSelection")]
	public static extern void QTextCursor_ClearSelection(void* c_this);
	[LinkName("QTextCursor_SelectionStart")]
	public static extern int32 QTextCursor_SelectionStart(void* c_this);
	[LinkName("QTextCursor_SelectionEnd")]
	public static extern int32 QTextCursor_SelectionEnd(void* c_this);
	[LinkName("QTextCursor_SelectedText")]
	public static extern libqt_string QTextCursor_SelectedText(void* c_this);
	[LinkName("QTextCursor_Selection")]
	public static extern void QTextCursor_Selection(void* c_this);
	[LinkName("QTextCursor_SelectedTableCells")]
	public static extern void QTextCursor_SelectedTableCells(void* c_this, int32* firstRow, int32* numRows, int32* firstColumn, int32* numColumns);
	[LinkName("QTextCursor_Block")]
	public static extern void QTextCursor_Block(void* c_this);
	[LinkName("QTextCursor_CharFormat")]
	public static extern void QTextCursor_CharFormat(void* c_this);
	[LinkName("QTextCursor_SetCharFormat")]
	public static extern void QTextCursor_SetCharFormat(void* c_this, void* format);
	[LinkName("QTextCursor_MergeCharFormat")]
	public static extern void QTextCursor_MergeCharFormat(void* c_this, void* modifier);
	[LinkName("QTextCursor_BlockFormat")]
	public static extern void QTextCursor_BlockFormat(void* c_this);
	[LinkName("QTextCursor_SetBlockFormat")]
	public static extern void QTextCursor_SetBlockFormat(void* c_this, void* format);
	[LinkName("QTextCursor_MergeBlockFormat")]
	public static extern void QTextCursor_MergeBlockFormat(void* c_this, void* modifier);
	[LinkName("QTextCursor_BlockCharFormat")]
	public static extern void QTextCursor_BlockCharFormat(void* c_this);
	[LinkName("QTextCursor_SetBlockCharFormat")]
	public static extern void QTextCursor_SetBlockCharFormat(void* c_this, void* format);
	[LinkName("QTextCursor_MergeBlockCharFormat")]
	public static extern void QTextCursor_MergeBlockCharFormat(void* c_this, void* modifier);
	[LinkName("QTextCursor_AtBlockStart")]
	public static extern bool QTextCursor_AtBlockStart(void* c_this);
	[LinkName("QTextCursor_AtBlockEnd")]
	public static extern bool QTextCursor_AtBlockEnd(void* c_this);
	[LinkName("QTextCursor_AtStart")]
	public static extern bool QTextCursor_AtStart(void* c_this);
	[LinkName("QTextCursor_AtEnd")]
	public static extern bool QTextCursor_AtEnd(void* c_this);
	[LinkName("QTextCursor_InsertBlock")]
	public static extern void QTextCursor_InsertBlock(void* c_this);
	[LinkName("QTextCursor_InsertBlockWithFormat")]
	public static extern void QTextCursor_InsertBlockWithFormat(void* c_this, void* format);
	[LinkName("QTextCursor_InsertBlock2")]
	public static extern void QTextCursor_InsertBlock2(void* c_this, void* format, void* charFormat);
	[LinkName("QTextCursor_InsertList")]
	public static extern void* QTextCursor_InsertList(void* c_this, void* format);
	[LinkName("QTextCursor_InsertListWithStyle")]
	public static extern void* QTextCursor_InsertListWithStyle(void* c_this, int64 style);
	[LinkName("QTextCursor_CreateList")]
	public static extern void* QTextCursor_CreateList(void* c_this, void* format);
	[LinkName("QTextCursor_CreateListWithStyle")]
	public static extern void* QTextCursor_CreateListWithStyle(void* c_this, int64 style);
	[LinkName("QTextCursor_CurrentList")]
	public static extern void* QTextCursor_CurrentList(void* c_this);
	[LinkName("QTextCursor_InsertTable")]
	public static extern void* QTextCursor_InsertTable(void* c_this, int32 rows, int32 cols, void* format);
	[LinkName("QTextCursor_InsertTable2")]
	public static extern void* QTextCursor_InsertTable2(void* c_this, int32 rows, int32 cols);
	[LinkName("QTextCursor_CurrentTable")]
	public static extern void* QTextCursor_CurrentTable(void* c_this);
	[LinkName("QTextCursor_InsertFrame")]
	public static extern void* QTextCursor_InsertFrame(void* c_this, void* format);
	[LinkName("QTextCursor_CurrentFrame")]
	public static extern void* QTextCursor_CurrentFrame(void* c_this);
	[LinkName("QTextCursor_InsertFragment")]
	public static extern void QTextCursor_InsertFragment(void* c_this, void* fragment);
	[LinkName("QTextCursor_InsertHtml")]
	public static extern void QTextCursor_InsertHtml(void* c_this, libqt_string html);
	[LinkName("QTextCursor_InsertMarkdown")]
	public static extern void QTextCursor_InsertMarkdown(void* c_this, libqt_string markdown);
	[LinkName("QTextCursor_InsertImage")]
	public static extern void QTextCursor_InsertImage(void* c_this, void* format, int64 alignment);
	[LinkName("QTextCursor_InsertImageWithFormat")]
	public static extern void QTextCursor_InsertImageWithFormat(void* c_this, void* format);
	[LinkName("QTextCursor_InsertImageWithName")]
	public static extern void QTextCursor_InsertImageWithName(void* c_this, libqt_string name);
	[LinkName("QTextCursor_InsertImageWithImage")]
	public static extern void QTextCursor_InsertImageWithImage(void* c_this, void* image);
	[LinkName("QTextCursor_BeginEditBlock")]
	public static extern void QTextCursor_BeginEditBlock(void* c_this);
	[LinkName("QTextCursor_JoinPreviousEditBlock")]
	public static extern void QTextCursor_JoinPreviousEditBlock(void* c_this);
	[LinkName("QTextCursor_EndEditBlock")]
	public static extern void QTextCursor_EndEditBlock(void* c_this);
	[LinkName("QTextCursor_OperatorNotEqual")]
	public static extern bool QTextCursor_OperatorNotEqual(void* c_this, void* rhs);
	[LinkName("QTextCursor_OperatorLesser")]
	public static extern bool QTextCursor_OperatorLesser(void* c_this, void* rhs);
	[LinkName("QTextCursor_OperatorLesserOrEqual")]
	public static extern bool QTextCursor_OperatorLesserOrEqual(void* c_this, void* rhs);
	[LinkName("QTextCursor_OperatorEqual")]
	public static extern bool QTextCursor_OperatorEqual(void* c_this, void* rhs);
	[LinkName("QTextCursor_OperatorGreaterOrEqual")]
	public static extern bool QTextCursor_OperatorGreaterOrEqual(void* c_this, void* rhs);
	[LinkName("QTextCursor_OperatorGreater")]
	public static extern bool QTextCursor_OperatorGreater(void* c_this, void* rhs);
	[LinkName("QTextCursor_IsCopyOf")]
	public static extern bool QTextCursor_IsCopyOf(void* c_this, void* other);
	[LinkName("QTextCursor_BlockNumber")]
	public static extern int32 QTextCursor_BlockNumber(void* c_this);
	[LinkName("QTextCursor_ColumnNumber")]
	public static extern int32 QTextCursor_ColumnNumber(void* c_this);
	[LinkName("QTextCursor_Document")]
	public static extern void* QTextCursor_Document(void* c_this);
	[LinkName("QTextCursor_SetPosition2")]
	public static extern void QTextCursor_SetPosition2(void* c_this, int32 pos, int64 mode);
	[LinkName("QTextCursor_MovePosition2")]
	public static extern bool QTextCursor_MovePosition2(void* c_this, int64 op, int64 param2);
	[LinkName("QTextCursor_MovePosition3")]
	public static extern bool QTextCursor_MovePosition3(void* c_this, int64 op, int64 param2, int32 n);
	[LinkName("QTextCursor_InsertMarkdown2")]
	public static extern void QTextCursor_InsertMarkdown2(void* c_this, libqt_string markdown, int64 features);
	[LinkName("QTextCursor_InsertImage2")]
	public static extern void QTextCursor_InsertImage2(void* c_this, void* image, libqt_string name);
	/// Delete this object from C++ memory
	[LinkName("QTextCursor_Delete")]
	public static extern void QTextCursor_Delete(void* self);
}