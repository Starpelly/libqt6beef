using System;
using System.Interop;
namespace Qt;

public interface IQTextTableCell
{
	void* NativePtr { get; }
}
public class QTextTableCell : IQTextTableCell
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QTextTableCell_new();
	}
	
	public ~this()
	{
		CQt.QTextTableCell_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQTextTableCell o)
	{
		CQt.QTextTableCell_OperatorAssign(this.nativePtr, (o == default) ? default : (void*)o.NativePtr);
	}
	
	public void SetFormat(IQTextCharFormat format)
	{
		CQt.QTextTableCell_SetFormat(this.nativePtr, (format == default) ? default : (void*)format.NativePtr);
	}
	
	public void Format()
	{
		CQt.QTextTableCell_Format(this.nativePtr);
	}
	
	public int32 Row()
	{
		return CQt.QTextTableCell_Row(this.nativePtr);
	}
	
	public int32 Column()
	{
		return CQt.QTextTableCell_Column(this.nativePtr);
	}
	
	public int32 RowSpan()
	{
		return CQt.QTextTableCell_RowSpan(this.nativePtr);
	}
	
	public int32 ColumnSpan()
	{
		return CQt.QTextTableCell_ColumnSpan(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QTextTableCell_IsValid(this.nativePtr);
	}
	
	public void FirstCursorPosition()
	{
		CQt.QTextTableCell_FirstCursorPosition(this.nativePtr);
	}
	
	public void LastCursorPosition()
	{
		CQt.QTextTableCell_LastCursorPosition(this.nativePtr);
	}
	
	public int32 FirstPosition()
	{
		return CQt.QTextTableCell_FirstPosition(this.nativePtr);
	}
	
	public int32 LastPosition()
	{
		return CQt.QTextTableCell_LastPosition(this.nativePtr);
	}
	
	public bool OperatorEqual(IQTextTableCell other)
	{
		return CQt.QTextTableCell_OperatorEqual(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public bool OperatorNotEqual(IQTextTableCell other)
	{
		return CQt.QTextTableCell_OperatorNotEqual(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public void Begin()
	{
		CQt.QTextTableCell_Begin(this.nativePtr);
	}
	
	public void End()
	{
		CQt.QTextTableCell_End(this.nativePtr);
	}
	
	public int32 TableCellFormatIndex()
	{
		return CQt.QTextTableCell_TableCellFormatIndex(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QTextTableCell_new")]
	public static extern void* QTextTableCell_new();
	[LinkName("QTextTableCell_new2")]
	public static extern void* QTextTableCell_new2(void* o);
	[LinkName("QTextTableCell_OperatorAssign")]
	public static extern void QTextTableCell_OperatorAssign(void* c_this, void* o);
	[LinkName("QTextTableCell_SetFormat")]
	public static extern void QTextTableCell_SetFormat(void* c_this, void* format);
	[LinkName("QTextTableCell_Format")]
	public static extern void QTextTableCell_Format(void* c_this);
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
	public static extern void QTextTableCell_FirstCursorPosition(void* c_this);
	[LinkName("QTextTableCell_LastCursorPosition")]
	public static extern void QTextTableCell_LastCursorPosition(void* c_this);
	[LinkName("QTextTableCell_FirstPosition")]
	public static extern int32 QTextTableCell_FirstPosition(void* c_this);
	[LinkName("QTextTableCell_LastPosition")]
	public static extern int32 QTextTableCell_LastPosition(void* c_this);
	[LinkName("QTextTableCell_OperatorEqual")]
	public static extern bool QTextTableCell_OperatorEqual(void* c_this, void* other);
	[LinkName("QTextTableCell_OperatorNotEqual")]
	public static extern bool QTextTableCell_OperatorNotEqual(void* c_this, void* other);
	[LinkName("QTextTableCell_Begin")]
	public static extern void QTextTableCell_Begin(void* c_this);
	[LinkName("QTextTableCell_End")]
	public static extern void QTextTableCell_End(void* c_this);
	[LinkName("QTextTableCell_TableCellFormatIndex")]
	public static extern int32 QTextTableCell_TableCellFormatIndex(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QTextTableCell_Delete")]
	public static extern void QTextTableCell_Delete(void* self);
}
public interface IQTextTable
{
	void* NativePtr { get; }
}
public class QTextTable : IQTextTable, IQTextFrame
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQTextDocument doc)
	{
		this.nativePtr = CQt.QTextTable_new((doc == null) ? null : (void*)doc.NativePtr);
	}
	
	public ~this()
	{
		CQt.QTextTable_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QTextTable_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QTextTable_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QTextTable_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QTextTable_Tr(s);
	}
	
	public void Resize(int32 rows, int32 cols)
	{
		CQt.QTextTable_Resize(this.nativePtr, rows, cols);
	}
	
	public void InsertRows(int32 pos, int32 num)
	{
		CQt.QTextTable_InsertRows(this.nativePtr, pos, num);
	}
	
	public void InsertColumns(int32 pos, int32 num)
	{
		CQt.QTextTable_InsertColumns(this.nativePtr, pos, num);
	}
	
	public void AppendRows(int32 count)
	{
		CQt.QTextTable_AppendRows(this.nativePtr, count);
	}
	
	public void AppendColumns(int32 count)
	{
		CQt.QTextTable_AppendColumns(this.nativePtr, count);
	}
	
	public void RemoveRows(int32 pos, int32 num)
	{
		CQt.QTextTable_RemoveRows(this.nativePtr, pos, num);
	}
	
	public void RemoveColumns(int32 pos, int32 num)
	{
		CQt.QTextTable_RemoveColumns(this.nativePtr, pos, num);
	}
	
	public void MergeCells(int32 row, int32 col, int32 numRows, int32 numCols)
	{
		CQt.QTextTable_MergeCells(this.nativePtr, row, col, numRows, numCols);
	}
	
	public void MergeCellsWithCursor(IQTextCursor cursor)
	{
		CQt.QTextTable_MergeCellsWithCursor(this.nativePtr, (cursor == default) ? default : (void*)cursor.NativePtr);
	}
	
	public void SplitCell(int32 row, int32 col, int32 numRows, int32 numCols)
	{
		CQt.QTextTable_SplitCell(this.nativePtr, row, col, numRows, numCols);
	}
	
	public int32 Rows()
	{
		return CQt.QTextTable_Rows(this.nativePtr);
	}
	
	public int32 Columns()
	{
		return CQt.QTextTable_Columns(this.nativePtr);
	}
	
	public void CellAt(int32 row, int32 col)
	{
		CQt.QTextTable_CellAt(this.nativePtr, row, col);
	}
	
	public void CellAtWithPosition(int32 position)
	{
		CQt.QTextTable_CellAtWithPosition(this.nativePtr, position);
	}
	
	public void CellAtWithQTextCursor(IQTextCursor c)
	{
		CQt.QTextTable_CellAtWithQTextCursor(this.nativePtr, (c == default) ? default : (void*)c.NativePtr);
	}
	
	public void RowStart(IQTextCursor c)
	{
		CQt.QTextTable_RowStart(this.nativePtr, (c == default) ? default : (void*)c.NativePtr);
	}
	
	public void RowEnd(IQTextCursor c)
	{
		CQt.QTextTable_RowEnd(this.nativePtr, (c == default) ? default : (void*)c.NativePtr);
	}
	
	public void SetFormat(IQTextTableFormat format)
	{
		CQt.QTextTable_SetFormat(this.nativePtr, (format == default) ? default : (void*)format.NativePtr);
	}
	
	public void Format()
	{
		CQt.QTextTable_Format(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QTextTable_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QTextTable_Tr3(s, c, n);
	}
	
	public void SetFrameFormat(IQTextFrameFormat format)
	{
		CQt.QTextFrame_SetFrameFormat(this.nativePtr, (format == default) ? default : (void*)format.NativePtr);
	}
	
	public void FrameFormat()
	{
		CQt.QTextFrame_FrameFormat(this.nativePtr);
	}
	
	public void FirstCursorPosition()
	{
		CQt.QTextFrame_FirstCursorPosition(this.nativePtr);
	}
	
	public void LastCursorPosition()
	{
		CQt.QTextFrame_LastCursorPosition(this.nativePtr);
	}
	
	public int32 FirstPosition()
	{
		return CQt.QTextFrame_FirstPosition(this.nativePtr);
	}
	
	public int32 LastPosition()
	{
		return CQt.QTextFrame_LastPosition(this.nativePtr);
	}
	
	public void* LayoutData()
	{
		return CQt.QTextFrame_LayoutData(this.nativePtr);
	}
	
	public void SetLayoutData(IQTextFrameLayoutData data)
	{
		CQt.QTextFrame_SetLayoutData(this.nativePtr, (data == null) ? null : (void*)data.NativePtr);
	}
	
	public void*[] ChildFrames()
	{
		return CQt.QTextFrame_ChildFrames(this.nativePtr);
	}
	
	public void* ParentFrame()
	{
		return CQt.QTextFrame_ParentFrame(this.nativePtr);
	}
	
	public void Begin()
	{
		CQt.QTextFrame_Begin(this.nativePtr);
	}
	
	public void End()
	{
		CQt.QTextFrame_End(this.nativePtr);
	}
	
	public int32 FormatIndex()
	{
		return CQt.QTextObject_FormatIndex(this.nativePtr);
	}
	
	public void* Document()
	{
		return CQt.QTextObject_Document(this.nativePtr);
	}
	
	public int32 ObjectIndex()
	{
		return CQt.QTextObject_ObjectIndex(this.nativePtr);
	}
	
	public virtual bool Event(IQEvent event)
	{
		return CQt.QObject_Event(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual bool EventFilter(IQObject watched, IQEvent event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, (watched == null) ? null : (void*)watched.NativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(IQAnyStringView name)
	{
		CQt.QObject_SetObjectName(this.nativePtr, (name == default) ? default : (char8*)name.NativePtr);
	}
	
	public bool IsWidgetType()
	{
		return CQt.QObject_IsWidgetType(this.nativePtr);
	}
	
	public bool IsWindowType()
	{
		return CQt.QObject_IsWindowType(this.nativePtr);
	}
	
	public bool IsQuickItemType()
	{
		return CQt.QObject_IsQuickItemType(this.nativePtr);
	}
	
	public bool SignalsBlocked()
	{
		return CQt.QObject_SignalsBlocked(this.nativePtr);
	}
	
	public bool BlockSignals(bool b)
	{
		return CQt.QObject_BlockSignals(this.nativePtr, b);
	}
	
	public void* Thread()
	{
		return CQt.QObject_Thread(this.nativePtr);
	}
	
	public void MoveToThread(IQThread thread)
	{
		CQt.QObject_MoveToThread(this.nativePtr, (thread == null) ? null : (void*)thread.NativePtr);
	}
	
	public int32 StartTimer(int32 interval)
	{
		return CQt.QObject_StartTimer(this.nativePtr, interval);
	}
	
	public void KillTimer(int32 id)
	{
		CQt.QObject_KillTimer(this.nativePtr, id);
	}
	
	public void*[] Children()
	{
		return CQt.QObject_Children(this.nativePtr);
	}
	
	public void SetParent(IQObject parent)
	{
		CQt.QObject_SetParent(this.nativePtr, (parent == null) ? null : (void*)parent.NativePtr);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, (filterObj == null) ? null : (void*)filterObj.NativePtr);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, (obj == null) ? null : (void*)obj.NativePtr);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		CQt.QObject_Connect((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (method == default) ? default : (void*)method.NativePtr);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		CQt.QObject_Connect2(this.nativePtr, (sender == null) ? null : (void*)sender.NativePtr, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return CQt.QObject_Disconnect((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (member == default) ? default : (void*)member.NativePtr);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__Connection param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection((param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void DumpObjectTree()
	{
		CQt.QObject_DumpObjectTree(this.nativePtr);
	}
	
	public void DumpObjectInfo()
	{
		CQt.QObject_DumpObjectInfo(this.nativePtr);
	}
	
	public bool SetProperty(char8* name, IQVariant value)
	{
		return CQt.QObject_SetProperty(this.nativePtr, name, (value == default) ? default : (void*)value.NativePtr);
	}
	
	public void Property(char8* name)
	{
		CQt.QObject_Property(this.nativePtr, name);
	}
	
	public libqt_string[] DynamicPropertyNames()
	{
		return CQt.QObject_DynamicPropertyNames(this.nativePtr);
	}
	
	public void* BindingStorage()
	{
		return CQt.QObject_BindingStorage(this.nativePtr);
	}
	
	public void* BindingStorage2()
	{
		return CQt.QObject_BindingStorage2(this.nativePtr);
	}
	
	public void* Parent()
	{
		return CQt.QObject_Parent(this.nativePtr);
	}
	
	public bool Inherits(char8* classname)
	{
		return CQt.QObject_Inherits(this.nativePtr, classname);
	}
	
	public void DeleteLater()
	{
		CQt.QObject_DeleteLater(this.nativePtr);
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return CQt.QObject_StartTimer2(this.nativePtr, interval, timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		CQt.QObject_Connect5((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (method == default) ? default : (void*)method.NativePtr, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		CQt.QObject_Connect4(this.nativePtr, (sender == null) ? null : (void*)sender.NativePtr, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QTextTable_new")]
	public static extern void* QTextTable_new(void* doc);
	[LinkName("QTextTable_MetaObject")]
	public static extern void* QTextTable_MetaObject(void* c_this);
	[LinkName("QTextTable_Metacast")]
	public static extern void* QTextTable_Metacast(void* c_this, char8* param1);
	[LinkName("QTextTable_Metacall")]
	public static extern int32 QTextTable_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QTextTable_Tr")]
	public static extern libqt_string QTextTable_Tr(char8* s);
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
	public static extern void QTextTable_MergeCellsWithCursor(void* c_this, void* cursor);
	[LinkName("QTextTable_SplitCell")]
	public static extern void QTextTable_SplitCell(void* c_this, int32 row, int32 col, int32 numRows, int32 numCols);
	[LinkName("QTextTable_Rows")]
	public static extern int32 QTextTable_Rows(void* c_this);
	[LinkName("QTextTable_Columns")]
	public static extern int32 QTextTable_Columns(void* c_this);
	[LinkName("QTextTable_CellAt")]
	public static extern void QTextTable_CellAt(void* c_this, int32 row, int32 col);
	[LinkName("QTextTable_CellAtWithPosition")]
	public static extern void QTextTable_CellAtWithPosition(void* c_this, int32 position);
	[LinkName("QTextTable_CellAtWithQTextCursor")]
	public static extern void QTextTable_CellAtWithQTextCursor(void* c_this, void* c);
	[LinkName("QTextTable_RowStart")]
	public static extern void QTextTable_RowStart(void* c_this, void* c);
	[LinkName("QTextTable_RowEnd")]
	public static extern void QTextTable_RowEnd(void* c_this, void* c);
	[LinkName("QTextTable_SetFormat")]
	public static extern void QTextTable_SetFormat(void* c_this, void* format);
	[LinkName("QTextTable_Format")]
	public static extern void QTextTable_Format(void* c_this);
	[LinkName("QTextTable_Tr2")]
	public static extern libqt_string QTextTable_Tr2(char8* s, char8* c);
	[LinkName("QTextTable_Tr3")]
	public static extern libqt_string QTextTable_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QTextTable_Delete")]
	public static extern void QTextTable_Delete(void* self);
}