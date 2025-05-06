using System;
using System.Interop;
namespace Qt;

public struct QTextTableCell
{
	[LinkName("QTextTableCell_new")]
	public static extern void* QTextTableCell_new();
	[LinkName("QTextTableCell_new2")]
	public static extern void* QTextTableCell_new2(QTextTableCell o);
	[LinkName("QTextTableCell_OperatorAssign")]
	public static extern void QTextTableCell_OperatorAssign(void* c_this, QTextTableCell o);
	[LinkName("QTextTableCell_SetFormat")]
	public static extern void QTextTableCell_SetFormat(void* c_this, QTextCharFormat format);
	[LinkName("QTextTableCell_Format")]
	public static extern QTextCharFormat QTextTableCell_Format(void* c_this);
	[LinkName("QTextTableCell_Row")]
	public static extern int32 QTextTableCell_Row(void* c_this);
	[LinkName("QTextTableCell_Column")]
	public static extern int32 QTextTableCell_Column(void* c_this);
	[LinkName("QTextTableCell_RowSpan")]
	public static extern int32 QTextTableCell_RowSpan(void* c_this);
	[LinkName("QTextTableCell_ColumnSpan")]
	public static extern int32 QTextTableCell_ColumnSpan(void* c_this);
	[LinkName("QTextTableCell_IsValid")]
	public static extern bool QTextTableCell_IsValid(void* c_this);
	[LinkName("QTextTableCell_FirstCursorPosition")]
	public static extern QTextCursor QTextTableCell_FirstCursorPosition(void* c_this);
	[LinkName("QTextTableCell_LastCursorPosition")]
	public static extern QTextCursor QTextTableCell_LastCursorPosition(void* c_this);
	[LinkName("QTextTableCell_FirstPosition")]
	public static extern int32 QTextTableCell_FirstPosition(void* c_this);
	[LinkName("QTextTableCell_LastPosition")]
	public static extern int32 QTextTableCell_LastPosition(void* c_this);
	[LinkName("QTextTableCell_OperatorEqual")]
	public static extern bool QTextTableCell_OperatorEqual(void* c_this, QTextTableCell other);
	[LinkName("QTextTableCell_OperatorNotEqual")]
	public static extern bool QTextTableCell_OperatorNotEqual(void* c_this, QTextTableCell other);
	[LinkName("QTextTableCell_Begin")]
	public static extern QTextFrame__iterator QTextTableCell_Begin(void* c_this);
	[LinkName("QTextTableCell_End")]
	public static extern QTextFrame__iterator QTextTableCell_End(void* c_this);
	[LinkName("QTextTableCell_TableCellFormatIndex")]
	public static extern int32 QTextTableCell_TableCellFormatIndex(void* c_this);
}
public struct QTextTable
{
	[LinkName("QTextTable_new")]
	public static extern void* QTextTable_new(QTextDocument doc);
	[LinkName("QTextTable_MetaObject")]
	public static extern QMetaObject QTextTable_MetaObject(void* c_this);
	[LinkName("QTextTable_Metacast")]
	public static extern void QTextTable_Metacast(void* c_this, char8[] param1);
	[LinkName("QTextTable_Metacall")]
	public static extern int32 QTextTable_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QTextTable_Tr")]
	public static extern char8[] QTextTable_Tr(char8[] s);
	[LinkName("QTextTable_Resize")]
	public static extern void QTextTable_Resize(void* c_this, int32 rows, int32 cols);
	[LinkName("QTextTable_InsertRows")]
	public static extern void QTextTable_InsertRows(void* c_this, int32 pos, int32 num);
	[LinkName("QTextTable_InsertColumns")]
	public static extern void QTextTable_InsertColumns(void* c_this, int32 pos, int32 num);
	[LinkName("QTextTable_AppendRows")]
	public static extern void QTextTable_AppendRows(void* c_this, int32 count);
	[LinkName("QTextTable_AppendColumns")]
	public static extern void QTextTable_AppendColumns(void* c_this, int32 count);
	[LinkName("QTextTable_RemoveRows")]
	public static extern void QTextTable_RemoveRows(void* c_this, int32 pos, int32 num);
	[LinkName("QTextTable_RemoveColumns")]
	public static extern void QTextTable_RemoveColumns(void* c_this, int32 pos, int32 num);
	[LinkName("QTextTable_MergeCells")]
	public static extern void QTextTable_MergeCells(void* c_this, int32 row, int32 col, int32 numRows, int32 numCols);
	[LinkName("QTextTable_MergeCellsWithCursor")]
	public static extern void QTextTable_MergeCellsWithCursor(void* c_this, QTextCursor cursor);
	[LinkName("QTextTable_SplitCell")]
	public static extern void QTextTable_SplitCell(void* c_this, int32 row, int32 col, int32 numRows, int32 numCols);
	[LinkName("QTextTable_Rows")]
	public static extern int32 QTextTable_Rows(void* c_this);
	[LinkName("QTextTable_Columns")]
	public static extern int32 QTextTable_Columns(void* c_this);
	[LinkName("QTextTable_CellAt")]
	public static extern QTextTableCell QTextTable_CellAt(void* c_this, int32 row, int32 col);
	[LinkName("QTextTable_CellAtWithPosition")]
	public static extern QTextTableCell QTextTable_CellAtWithPosition(void* c_this, int32 position);
	[LinkName("QTextTable_CellAtWithQTextCursor")]
	public static extern QTextTableCell QTextTable_CellAtWithQTextCursor(void* c_this, QTextCursor c);
	[LinkName("QTextTable_RowStart")]
	public static extern QTextCursor QTextTable_RowStart(void* c_this, QTextCursor c);
	[LinkName("QTextTable_RowEnd")]
	public static extern QTextCursor QTextTable_RowEnd(void* c_this, QTextCursor c);
	[LinkName("QTextTable_SetFormat")]
	public static extern void QTextTable_SetFormat(void* c_this, QTextTableFormat format);
	[LinkName("QTextTable_Format")]
	public static extern QTextTableFormat QTextTable_Format(void* c_this);
	[LinkName("QTextTable_Tr2")]
	public static extern char8[] QTextTable_Tr2(char8[] s, char8[] c);
	[LinkName("QTextTable_Tr3")]
	public static extern char8[] QTextTable_Tr3(char8[] s, char8[] c, int32 n);
}