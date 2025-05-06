using System;
using System.Interop;
namespace Qt;

public struct QTextTableCell
{
	[LinkName("QTextTableCell_new")]
	public static extern QTextTableCell* QTextTableCell_new();
	[LinkName("QTextTableCell_new2")]
	public static extern QTextTableCell* QTextTableCell_new2(QTextTableCell* o);
	[LinkName("QTextTableCell_OperatorAssign")]
	public static extern void QTextTableCell_OperatorAssign(Self* c_this, QTextTableCell* o);
	[LinkName("QTextTableCell_SetFormat")]
	public static extern void QTextTableCell_SetFormat(Self* c_this, QTextCharFormat* format);
	[LinkName("QTextTableCell_Format")]
	public static extern QTextCharFormat QTextTableCell_Format(Self* c_this);
	[LinkName("QTextTableCell_Row")]
	public static extern int32 QTextTableCell_Row(Self* c_this);
	[LinkName("QTextTableCell_Column")]
	public static extern int32 QTextTableCell_Column(Self* c_this);
	[LinkName("QTextTableCell_RowSpan")]
	public static extern int32 QTextTableCell_RowSpan(Self* c_this);
	[LinkName("QTextTableCell_ColumnSpan")]
	public static extern int32 QTextTableCell_ColumnSpan(Self* c_this);
	[LinkName("QTextTableCell_IsValid")]
	public static extern bool QTextTableCell_IsValid(Self* c_this);
	[LinkName("QTextTableCell_FirstCursorPosition")]
	public static extern QTextCursor QTextTableCell_FirstCursorPosition(Self* c_this);
	[LinkName("QTextTableCell_LastCursorPosition")]
	public static extern QTextCursor QTextTableCell_LastCursorPosition(Self* c_this);
	[LinkName("QTextTableCell_FirstPosition")]
	public static extern int32 QTextTableCell_FirstPosition(Self* c_this);
	[LinkName("QTextTableCell_LastPosition")]
	public static extern int32 QTextTableCell_LastPosition(Self* c_this);
	[LinkName("QTextTableCell_OperatorEqual")]
	public static extern bool QTextTableCell_OperatorEqual(Self* c_this, QTextTableCell* other);
	[LinkName("QTextTableCell_OperatorNotEqual")]
	public static extern bool QTextTableCell_OperatorNotEqual(Self* c_this, QTextTableCell* other);
	[LinkName("QTextTableCell_Begin")]
	public static extern QTextFrame__iterator QTextTableCell_Begin(Self* c_this);
	[LinkName("QTextTableCell_End")]
	public static extern QTextFrame__iterator QTextTableCell_End(Self* c_this);
	[LinkName("QTextTableCell_TableCellFormatIndex")]
	public static extern int32 QTextTableCell_TableCellFormatIndex(Self* c_this);
}
public struct QTextTable : QTextFrame
{
	[LinkName("QTextTable_new")]
	public static extern QTextTable* QTextTable_new(QTextDocument* doc);
	[LinkName("QTextTable_MetaObject")]
	public static extern QMetaObject* QTextTable_MetaObject(Self* c_this);
	[LinkName("QTextTable_Metacast")]
	public static extern void* QTextTable_Metacast(Self* c_this, char8[] param1);
	[LinkName("QTextTable_Metacall")]
	public static extern int32 QTextTable_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QTextTable_Tr")]
	public static extern libqt_string QTextTable_Tr(char8[] s);
	[LinkName("QTextTable_Resize")]
	public static extern void QTextTable_Resize(Self* c_this, int32 rows, int32 cols);
	[LinkName("QTextTable_InsertRows")]
	public static extern void QTextTable_InsertRows(Self* c_this, int32 pos, int32 num);
	[LinkName("QTextTable_InsertColumns")]
	public static extern void QTextTable_InsertColumns(Self* c_this, int32 pos, int32 num);
	[LinkName("QTextTable_AppendRows")]
	public static extern void QTextTable_AppendRows(Self* c_this, int32 count);
	[LinkName("QTextTable_AppendColumns")]
	public static extern void QTextTable_AppendColumns(Self* c_this, int32 count);
	[LinkName("QTextTable_RemoveRows")]
	public static extern void QTextTable_RemoveRows(Self* c_this, int32 pos, int32 num);
	[LinkName("QTextTable_RemoveColumns")]
	public static extern void QTextTable_RemoveColumns(Self* c_this, int32 pos, int32 num);
	[LinkName("QTextTable_MergeCells")]
	public static extern void QTextTable_MergeCells(Self* c_this, int32 row, int32 col, int32 numRows, int32 numCols);
	[LinkName("QTextTable_MergeCellsWithCursor")]
	public static extern void QTextTable_MergeCellsWithCursor(Self* c_this, QTextCursor* cursor);
	[LinkName("QTextTable_SplitCell")]
	public static extern void QTextTable_SplitCell(Self* c_this, int32 row, int32 col, int32 numRows, int32 numCols);
	[LinkName("QTextTable_Rows")]
	public static extern int32 QTextTable_Rows(Self* c_this);
	[LinkName("QTextTable_Columns")]
	public static extern int32 QTextTable_Columns(Self* c_this);
	[LinkName("QTextTable_CellAt")]
	public static extern QTextTableCell QTextTable_CellAt(Self* c_this, int32 row, int32 col);
	[LinkName("QTextTable_CellAtWithPosition")]
	public static extern QTextTableCell QTextTable_CellAtWithPosition(Self* c_this, int32 position);
	[LinkName("QTextTable_CellAtWithQTextCursor")]
	public static extern QTextTableCell QTextTable_CellAtWithQTextCursor(Self* c_this, QTextCursor* c);
	[LinkName("QTextTable_RowStart")]
	public static extern QTextCursor QTextTable_RowStart(Self* c_this, QTextCursor* c);
	[LinkName("QTextTable_RowEnd")]
	public static extern QTextCursor QTextTable_RowEnd(Self* c_this, QTextCursor* c);
	[LinkName("QTextTable_SetFormat")]
	public static extern void QTextTable_SetFormat(Self* c_this, QTextTableFormat* format);
	[LinkName("QTextTable_Format")]
	public static extern QTextTableFormat QTextTable_Format(Self* c_this);
	[LinkName("QTextTable_Tr2")]
	public static extern libqt_string QTextTable_Tr2(char8[] s, char8[] c);
	[LinkName("QTextTable_Tr3")]
	public static extern libqt_string QTextTable_Tr3(char8[] s, char8[] c, int32 n);
}