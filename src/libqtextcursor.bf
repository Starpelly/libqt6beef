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
public struct QTextCursor
{
	[LinkName("QTextCursor_new")]
	public static extern void* QTextCursor_new();
	[LinkName("QTextCursor_new2")]
	public static extern void* QTextCursor_new2(QTextDocument document);
	[LinkName("QTextCursor_new3")]
	public static extern void* QTextCursor_new3(QTextFrame frame);
	[LinkName("QTextCursor_new4")]
	public static extern void* QTextCursor_new4(QTextBlock block);
	[LinkName("QTextCursor_new5")]
	public static extern void* QTextCursor_new5(QTextCursor cursor);
	[LinkName("QTextCursor_OperatorAssign")]
	public static extern void QTextCursor_OperatorAssign(void* c_this, QTextCursor other);
	[LinkName("QTextCursor_Swap")]
	public static extern void QTextCursor_Swap(void* c_this, QTextCursor other);
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
	public static extern void QTextCursor_InsertText(void* c_this, char8[] text);
	[LinkName("QTextCursor_InsertText2")]
	public static extern void QTextCursor_InsertText2(void* c_this, char8[] text, QTextCharFormat format);
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
	public static extern char8[] QTextCursor_SelectedText(void* c_this);
	[LinkName("QTextCursor_Selection")]
	public static extern QTextDocumentFragment QTextCursor_Selection(void* c_this);
	[LinkName("QTextCursor_SelectedTableCells")]
	public static extern void QTextCursor_SelectedTableCells(void* c_this, int32 firstRow, int32 numRows, int32 firstColumn, int32 numColumns);
	[LinkName("QTextCursor_Block")]
	public static extern QTextBlock QTextCursor_Block(void* c_this);
	[LinkName("QTextCursor_CharFormat")]
	public static extern QTextCharFormat QTextCursor_CharFormat(void* c_this);
	[LinkName("QTextCursor_SetCharFormat")]
	public static extern void QTextCursor_SetCharFormat(void* c_this, QTextCharFormat format);
	[LinkName("QTextCursor_MergeCharFormat")]
	public static extern void QTextCursor_MergeCharFormat(void* c_this, QTextCharFormat modifier);
	[LinkName("QTextCursor_BlockFormat")]
	public static extern QTextBlockFormat QTextCursor_BlockFormat(void* c_this);
	[LinkName("QTextCursor_SetBlockFormat")]
	public static extern void QTextCursor_SetBlockFormat(void* c_this, QTextBlockFormat format);
	[LinkName("QTextCursor_MergeBlockFormat")]
	public static extern void QTextCursor_MergeBlockFormat(void* c_this, QTextBlockFormat modifier);
	[LinkName("QTextCursor_BlockCharFormat")]
	public static extern QTextCharFormat QTextCursor_BlockCharFormat(void* c_this);
	[LinkName("QTextCursor_SetBlockCharFormat")]
	public static extern void QTextCursor_SetBlockCharFormat(void* c_this, QTextCharFormat format);
	[LinkName("QTextCursor_MergeBlockCharFormat")]
	public static extern void QTextCursor_MergeBlockCharFormat(void* c_this, QTextCharFormat modifier);
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
	public static extern void QTextCursor_InsertBlockWithFormat(void* c_this, QTextBlockFormat format);
	[LinkName("QTextCursor_InsertBlock2")]
	public static extern void QTextCursor_InsertBlock2(void* c_this, QTextBlockFormat format, QTextCharFormat charFormat);
	[LinkName("QTextCursor_InsertList")]
	public static extern QTextList QTextCursor_InsertList(void* c_this, QTextListFormat format);
	[LinkName("QTextCursor_InsertListWithStyle")]
	public static extern QTextList QTextCursor_InsertListWithStyle(void* c_this, int64 style);
	[LinkName("QTextCursor_CreateList")]
	public static extern QTextList QTextCursor_CreateList(void* c_this, QTextListFormat format);
	[LinkName("QTextCursor_CreateListWithStyle")]
	public static extern QTextList QTextCursor_CreateListWithStyle(void* c_this, int64 style);
	[LinkName("QTextCursor_CurrentList")]
	public static extern QTextList QTextCursor_CurrentList(void* c_this);
	[LinkName("QTextCursor_InsertTable")]
	public static extern QTextTable QTextCursor_InsertTable(void* c_this, int32 rows, int32 cols, QTextTableFormat format);
	[LinkName("QTextCursor_InsertTable2")]
	public static extern QTextTable QTextCursor_InsertTable2(void* c_this, int32 rows, int32 cols);
	[LinkName("QTextCursor_CurrentTable")]
	public static extern QTextTable QTextCursor_CurrentTable(void* c_this);
	[LinkName("QTextCursor_InsertFrame")]
	public static extern QTextFrame QTextCursor_InsertFrame(void* c_this, QTextFrameFormat format);
	[LinkName("QTextCursor_CurrentFrame")]
	public static extern QTextFrame QTextCursor_CurrentFrame(void* c_this);
	[LinkName("QTextCursor_InsertFragment")]
	public static extern void QTextCursor_InsertFragment(void* c_this, QTextDocumentFragment fragment);
	[LinkName("QTextCursor_InsertHtml")]
	public static extern void QTextCursor_InsertHtml(void* c_this, char8[] html);
	[LinkName("QTextCursor_InsertMarkdown")]
	public static extern void QTextCursor_InsertMarkdown(void* c_this, char8[] markdown);
	[LinkName("QTextCursor_InsertImage")]
	public static extern void QTextCursor_InsertImage(void* c_this, QTextImageFormat format, int64 alignment);
	[LinkName("QTextCursor_InsertImageWithFormat")]
	public static extern void QTextCursor_InsertImageWithFormat(void* c_this, QTextImageFormat format);
	[LinkName("QTextCursor_InsertImageWithName")]
	public static extern void QTextCursor_InsertImageWithName(void* c_this, char8[] name);
	[LinkName("QTextCursor_InsertImageWithImage")]
	public static extern void QTextCursor_InsertImageWithImage(void* c_this, QImage image);
	[LinkName("QTextCursor_BeginEditBlock")]
	public static extern void QTextCursor_BeginEditBlock(void* c_this);
	[LinkName("QTextCursor_JoinPreviousEditBlock")]
	public static extern void QTextCursor_JoinPreviousEditBlock(void* c_this);
	[LinkName("QTextCursor_EndEditBlock")]
	public static extern void QTextCursor_EndEditBlock(void* c_this);
	[LinkName("QTextCursor_OperatorNotEqual")]
	public static extern bool QTextCursor_OperatorNotEqual(void* c_this, QTextCursor rhs);
	[LinkName("QTextCursor_OperatorLesser")]
	public static extern bool QTextCursor_OperatorLesser(void* c_this, QTextCursor rhs);
	[LinkName("QTextCursor_OperatorLesserOrEqual")]
	public static extern bool QTextCursor_OperatorLesserOrEqual(void* c_this, QTextCursor rhs);
	[LinkName("QTextCursor_OperatorEqual")]
	public static extern bool QTextCursor_OperatorEqual(void* c_this, QTextCursor rhs);
	[LinkName("QTextCursor_OperatorGreaterOrEqual")]
	public static extern bool QTextCursor_OperatorGreaterOrEqual(void* c_this, QTextCursor rhs);
	[LinkName("QTextCursor_OperatorGreater")]
	public static extern bool QTextCursor_OperatorGreater(void* c_this, QTextCursor rhs);
	[LinkName("QTextCursor_IsCopyOf")]
	public static extern bool QTextCursor_IsCopyOf(void* c_this, QTextCursor other);
	[LinkName("QTextCursor_BlockNumber")]
	public static extern int32 QTextCursor_BlockNumber(void* c_this);
	[LinkName("QTextCursor_ColumnNumber")]
	public static extern int32 QTextCursor_ColumnNumber(void* c_this);
	[LinkName("QTextCursor_Document")]
	public static extern QTextDocument QTextCursor_Document(void* c_this);
	[LinkName("QTextCursor_SetPosition2")]
	public static extern void QTextCursor_SetPosition2(void* c_this, int32 pos, int64 mode);
	[LinkName("QTextCursor_MovePosition2")]
	public static extern bool QTextCursor_MovePosition2(void* c_this, int64 op, int64 param2);
	[LinkName("QTextCursor_MovePosition3")]
	public static extern bool QTextCursor_MovePosition3(void* c_this, int64 op, int64 param2, int32 n);
	[LinkName("QTextCursor_InsertMarkdown2")]
	public static extern void QTextCursor_InsertMarkdown2(void* c_this, char8[] markdown, int64 features);
	[LinkName("QTextCursor_InsertImage2")]
	public static extern void QTextCursor_InsertImage2(void* c_this, QImage image, char8[] name);
}