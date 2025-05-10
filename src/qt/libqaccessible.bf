using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QAccessibleTableModelChangeEvent__ModelChangeType
{
	ModelReset = 0,
	DataChanged = 1,
	RowsInserted = 2,
	ColumnsInserted = 3,
	RowsRemoved = 4,
	ColumnsRemoved = 5,
}
public class QAccessibleInterface
{
	protected void* nativePtr;
	
	public virtual bool IsValid()
	{
		return CQt.QAccessibleInterface_IsValid(this.nativePtr);
	}
	
	public virtual void* Object()
	{
		return CQt.QAccessibleInterface_Object(this.nativePtr);
	}
	
	public virtual void* Window()
	{
		return CQt.QAccessibleInterface_Window(this.nativePtr);
	}
	
	public virtual void*[] Relations(int64 match)
	{
		return CQt.QAccessibleInterface_Relations(this.nativePtr, match);
	}
	
	public virtual void* FocusChild()
	{
		return CQt.QAccessibleInterface_FocusChild(this.nativePtr);
	}
	
	public virtual void* ChildAt(int32 x, int32 y)
	{
		return CQt.QAccessibleInterface_ChildAt(this.nativePtr, x, y);
	}
	
	public virtual void* Parent()
	{
		return CQt.QAccessibleInterface_Parent(this.nativePtr);
	}
	
	public virtual void* Child(int32 index)
	{
		return CQt.QAccessibleInterface_Child(this.nativePtr, index);
	}
	
	public virtual int32 ChildCount()
	{
		return CQt.QAccessibleInterface_ChildCount(this.nativePtr);
	}
	
	public virtual int32 IndexOfChild(void* param1)
	{
		return CQt.QAccessibleInterface_IndexOfChild(this.nativePtr, param1);
	}
	
	public virtual libqt_string Text(int64 t)
	{
		return CQt.QAccessibleInterface_Text(this.nativePtr, t);
	}
	
	public virtual void SetText(int64 t, libqt_string text)
	{
		CQt.QAccessibleInterface_SetText(this.nativePtr, t, text);
	}
	
	public virtual void Rect()
	{
		CQt.QAccessibleInterface_Rect(this.nativePtr);
	}
	
	public virtual int64 Role()
	{
		return CQt.QAccessibleInterface_Role(this.nativePtr);
	}
	
	public virtual QAccessible__State State()
	{
		return CQt.QAccessibleInterface_State(this.nativePtr);
	}
	
	public virtual void ForegroundColor()
	{
		CQt.QAccessibleInterface_ForegroundColor(this.nativePtr);
	}
	
	public virtual void BackgroundColor()
	{
		CQt.QAccessibleInterface_BackgroundColor(this.nativePtr);
	}
	
	public void* TextInterface()
	{
		return CQt.QAccessibleInterface_TextInterface(this.nativePtr);
	}
	
	public void* EditableTextInterface()
	{
		return CQt.QAccessibleInterface_EditableTextInterface(this.nativePtr);
	}
	
	public void* ValueInterface()
	{
		return CQt.QAccessibleInterface_ValueInterface(this.nativePtr);
	}
	
	public void* ActionInterface()
	{
		return CQt.QAccessibleInterface_ActionInterface(this.nativePtr);
	}
	
	public void* ImageInterface()
	{
		return CQt.QAccessibleInterface_ImageInterface(this.nativePtr);
	}
	
	public void* TableInterface()
	{
		return CQt.QAccessibleInterface_TableInterface(this.nativePtr);
	}
	
	public void* TableCellInterface()
	{
		return CQt.QAccessibleInterface_TableCellInterface(this.nativePtr);
	}
	
	public void* HyperlinkInterface()
	{
		return CQt.QAccessibleInterface_HyperlinkInterface(this.nativePtr);
	}
	
	public virtual void VirtualHook(int32 id, void* data)
	{
		CQt.QAccessibleInterface_VirtualHook(this.nativePtr, id, data);
	}
	
	public virtual void* InterfaceCast(int64 param1)
	{
		return CQt.QAccessibleInterface_InterfaceCast(this.nativePtr, param1);
	}
	
}
extension CQt
{
	[LinkName("QAccessibleInterface_IsValid")]
	public static extern bool QAccessibleInterface_IsValid(void* c_this);
	[LinkName("QAccessibleInterface_Object")]
	public static extern void* QAccessibleInterface_Object(void* c_this);
	[LinkName("QAccessibleInterface_Window")]
	public static extern void* QAccessibleInterface_Window(void* c_this);
	[LinkName("QAccessibleInterface_Relations")]
	public static extern void*[] QAccessibleInterface_Relations(void* c_this, int64 match);
	[LinkName("QAccessibleInterface_FocusChild")]
	public static extern void* QAccessibleInterface_FocusChild(void* c_this);
	[LinkName("QAccessibleInterface_ChildAt")]
	public static extern void* QAccessibleInterface_ChildAt(void* c_this, int32 x, int32 y);
	[LinkName("QAccessibleInterface_Parent")]
	public static extern void* QAccessibleInterface_Parent(void* c_this);
	[LinkName("QAccessibleInterface_Child")]
	public static extern void* QAccessibleInterface_Child(void* c_this, int32 index);
	[LinkName("QAccessibleInterface_ChildCount")]
	public static extern int32 QAccessibleInterface_ChildCount(void* c_this);
	[LinkName("QAccessibleInterface_IndexOfChild")]
	public static extern int32 QAccessibleInterface_IndexOfChild(void* c_this, void* param1);
	[LinkName("QAccessibleInterface_Text")]
	public static extern libqt_string QAccessibleInterface_Text(void* c_this, int64 t);
	[LinkName("QAccessibleInterface_SetText")]
	public static extern void QAccessibleInterface_SetText(void* c_this, int64 t, libqt_string text);
	[LinkName("QAccessibleInterface_Rect")]
	public static extern void QAccessibleInterface_Rect(void* c_this);
	[LinkName("QAccessibleInterface_Role")]
	public static extern int64 QAccessibleInterface_Role(void* c_this);
	[LinkName("QAccessibleInterface_State")]
	public static extern QAccessible__State QAccessibleInterface_State(void* c_this);
	[LinkName("QAccessibleInterface_ForegroundColor")]
	public static extern void QAccessibleInterface_ForegroundColor(void* c_this);
	[LinkName("QAccessibleInterface_BackgroundColor")]
	public static extern void QAccessibleInterface_BackgroundColor(void* c_this);
	[LinkName("QAccessibleInterface_TextInterface")]
	public static extern void* QAccessibleInterface_TextInterface(void* c_this);
	[LinkName("QAccessibleInterface_EditableTextInterface")]
	public static extern void* QAccessibleInterface_EditableTextInterface(void* c_this);
	[LinkName("QAccessibleInterface_ValueInterface")]
	public static extern void* QAccessibleInterface_ValueInterface(void* c_this);
	[LinkName("QAccessibleInterface_ActionInterface")]
	public static extern void* QAccessibleInterface_ActionInterface(void* c_this);
	[LinkName("QAccessibleInterface_ImageInterface")]
	public static extern void* QAccessibleInterface_ImageInterface(void* c_this);
	[LinkName("QAccessibleInterface_TableInterface")]
	public static extern void* QAccessibleInterface_TableInterface(void* c_this);
	[LinkName("QAccessibleInterface_TableCellInterface")]
	public static extern void* QAccessibleInterface_TableCellInterface(void* c_this);
	[LinkName("QAccessibleInterface_HyperlinkInterface")]
	public static extern void* QAccessibleInterface_HyperlinkInterface(void* c_this);
	[LinkName("QAccessibleInterface_VirtualHook")]
	public static extern void QAccessibleInterface_VirtualHook(void* c_this, int32 id, void* data);
	[LinkName("QAccessibleInterface_InterfaceCast")]
	public static extern void* QAccessibleInterface_InterfaceCast(void* c_this, int64 param1);
	[LinkName("QAccessibleInterface_OperatorAssign")]
	public static extern void QAccessibleInterface_OperatorAssign(void* c_this, void* param1);
}
public class QAccessibleTextInterface
{
	protected void* nativePtr;
	
	public ~this()
	{
		CQt.QAccessibleTextInterface_Delete(this.nativePtr);
	}
	
	public virtual void Selection(int32 selectionIndex, int32* startOffset, int32* endOffset)
	{
		CQt.QAccessibleTextInterface_Selection(this.nativePtr, selectionIndex, startOffset, endOffset);
	}
	
	public virtual int32 SelectionCount()
	{
		return CQt.QAccessibleTextInterface_SelectionCount(this.nativePtr);
	}
	
	public virtual void AddSelection(int32 startOffset, int32 endOffset)
	{
		CQt.QAccessibleTextInterface_AddSelection(this.nativePtr, startOffset, endOffset);
	}
	
	public virtual void RemoveSelection(int32 selectionIndex)
	{
		CQt.QAccessibleTextInterface_RemoveSelection(this.nativePtr, selectionIndex);
	}
	
	public virtual void SetSelection(int32 selectionIndex, int32 startOffset, int32 endOffset)
	{
		CQt.QAccessibleTextInterface_SetSelection(this.nativePtr, selectionIndex, startOffset, endOffset);
	}
	
	public virtual int32 CursorPosition()
	{
		return CQt.QAccessibleTextInterface_CursorPosition(this.nativePtr);
	}
	
	public virtual void SetCursorPosition(int32 position)
	{
		CQt.QAccessibleTextInterface_SetCursorPosition(this.nativePtr, position);
	}
	
	public virtual libqt_string Text(int32 startOffset, int32 endOffset)
	{
		return CQt.QAccessibleTextInterface_Text(this.nativePtr, startOffset, endOffset);
	}
	
	public virtual libqt_string TextBeforeOffset(int32 offset, int64 boundaryType, int32* startOffset, int32* endOffset)
	{
		return CQt.QAccessibleTextInterface_TextBeforeOffset(this.nativePtr, offset, boundaryType, startOffset, endOffset);
	}
	
	public virtual libqt_string TextAfterOffset(int32 offset, int64 boundaryType, int32* startOffset, int32* endOffset)
	{
		return CQt.QAccessibleTextInterface_TextAfterOffset(this.nativePtr, offset, boundaryType, startOffset, endOffset);
	}
	
	public virtual libqt_string TextAtOffset(int32 offset, int64 boundaryType, int32* startOffset, int32* endOffset)
	{
		return CQt.QAccessibleTextInterface_TextAtOffset(this.nativePtr, offset, boundaryType, startOffset, endOffset);
	}
	
	public virtual int32 CharacterCount()
	{
		return CQt.QAccessibleTextInterface_CharacterCount(this.nativePtr);
	}
	
	public virtual void CharacterRect(int32 offset)
	{
		CQt.QAccessibleTextInterface_CharacterRect(this.nativePtr, offset);
	}
	
	public virtual int32 OffsetAtPoint(void* point)
	{
		return CQt.QAccessibleTextInterface_OffsetAtPoint(this.nativePtr, point);
	}
	
	public virtual void ScrollToSubstring(int32 startIndex, int32 endIndex)
	{
		CQt.QAccessibleTextInterface_ScrollToSubstring(this.nativePtr, startIndex, endIndex);
	}
	
	public virtual libqt_string Attributes(int32 offset, int32* startOffset, int32* endOffset)
	{
		return CQt.QAccessibleTextInterface_Attributes(this.nativePtr, offset, startOffset, endOffset);
	}
	
	public void OperatorAssign(void* param1)
	{
		CQt.QAccessibleTextInterface_OperatorAssign(this.nativePtr, param1);
	}
	
}
extension CQt
{
	[LinkName("QAccessibleTextInterface_Selection")]
	public static extern void QAccessibleTextInterface_Selection(void* c_this, int32 selectionIndex, int32* startOffset, int32* endOffset);
	[LinkName("QAccessibleTextInterface_SelectionCount")]
	public static extern int32 QAccessibleTextInterface_SelectionCount(void* c_this);
	[LinkName("QAccessibleTextInterface_AddSelection")]
	public static extern void QAccessibleTextInterface_AddSelection(void* c_this, int32 startOffset, int32 endOffset);
	[LinkName("QAccessibleTextInterface_RemoveSelection")]
	public static extern void QAccessibleTextInterface_RemoveSelection(void* c_this, int32 selectionIndex);
	[LinkName("QAccessibleTextInterface_SetSelection")]
	public static extern void QAccessibleTextInterface_SetSelection(void* c_this, int32 selectionIndex, int32 startOffset, int32 endOffset);
	[LinkName("QAccessibleTextInterface_CursorPosition")]
	public static extern int32 QAccessibleTextInterface_CursorPosition(void* c_this);
	[LinkName("QAccessibleTextInterface_SetCursorPosition")]
	public static extern void QAccessibleTextInterface_SetCursorPosition(void* c_this, int32 position);
	[LinkName("QAccessibleTextInterface_Text")]
	public static extern libqt_string QAccessibleTextInterface_Text(void* c_this, int32 startOffset, int32 endOffset);
	[LinkName("QAccessibleTextInterface_TextBeforeOffset")]
	public static extern libqt_string QAccessibleTextInterface_TextBeforeOffset(void* c_this, int32 offset, int64 boundaryType, int32* startOffset, int32* endOffset);
	[LinkName("QAccessibleTextInterface_TextAfterOffset")]
	public static extern libqt_string QAccessibleTextInterface_TextAfterOffset(void* c_this, int32 offset, int64 boundaryType, int32* startOffset, int32* endOffset);
	[LinkName("QAccessibleTextInterface_TextAtOffset")]
	public static extern libqt_string QAccessibleTextInterface_TextAtOffset(void* c_this, int32 offset, int64 boundaryType, int32* startOffset, int32* endOffset);
	[LinkName("QAccessibleTextInterface_CharacterCount")]
	public static extern int32 QAccessibleTextInterface_CharacterCount(void* c_this);
	[LinkName("QAccessibleTextInterface_CharacterRect")]
	public static extern void QAccessibleTextInterface_CharacterRect(void* c_this, int32 offset);
	[LinkName("QAccessibleTextInterface_OffsetAtPoint")]
	public static extern int32 QAccessibleTextInterface_OffsetAtPoint(void* c_this, void* point);
	[LinkName("QAccessibleTextInterface_ScrollToSubstring")]
	public static extern void QAccessibleTextInterface_ScrollToSubstring(void* c_this, int32 startIndex, int32 endIndex);
	[LinkName("QAccessibleTextInterface_Attributes")]
	public static extern libqt_string QAccessibleTextInterface_Attributes(void* c_this, int32 offset, int32* startOffset, int32* endOffset);
	[LinkName("QAccessibleTextInterface_OperatorAssign")]
	public static extern void QAccessibleTextInterface_OperatorAssign(void* c_this, void* param1);
	/// Delete this object from C++ memory
	[LinkName("QAccessibleTextInterface_Delete")]
	public static extern void QAccessibleTextInterface_Delete(void* self);
}
public class QAccessibleEditableTextInterface
{
	protected void* nativePtr;
	
	public ~this()
	{
		CQt.QAccessibleEditableTextInterface_Delete(this.nativePtr);
	}
	
	public virtual void DeleteText(int32 startOffset, int32 endOffset)
	{
		CQt.QAccessibleEditableTextInterface_DeleteText(this.nativePtr, startOffset, endOffset);
	}
	
	public virtual void InsertText(int32 offset, libqt_string text)
	{
		CQt.QAccessibleEditableTextInterface_InsertText(this.nativePtr, offset, text);
	}
	
	public virtual void ReplaceText(int32 startOffset, int32 endOffset, libqt_string text)
	{
		CQt.QAccessibleEditableTextInterface_ReplaceText(this.nativePtr, startOffset, endOffset, text);
	}
	
	public void OperatorAssign(void* param1)
	{
		CQt.QAccessibleEditableTextInterface_OperatorAssign(this.nativePtr, param1);
	}
	
}
extension CQt
{
	[LinkName("QAccessibleEditableTextInterface_DeleteText")]
	public static extern void QAccessibleEditableTextInterface_DeleteText(void* c_this, int32 startOffset, int32 endOffset);
	[LinkName("QAccessibleEditableTextInterface_InsertText")]
	public static extern void QAccessibleEditableTextInterface_InsertText(void* c_this, int32 offset, libqt_string text);
	[LinkName("QAccessibleEditableTextInterface_ReplaceText")]
	public static extern void QAccessibleEditableTextInterface_ReplaceText(void* c_this, int32 startOffset, int32 endOffset, libqt_string text);
	[LinkName("QAccessibleEditableTextInterface_OperatorAssign")]
	public static extern void QAccessibleEditableTextInterface_OperatorAssign(void* c_this, void* param1);
	/// Delete this object from C++ memory
	[LinkName("QAccessibleEditableTextInterface_Delete")]
	public static extern void QAccessibleEditableTextInterface_Delete(void* self);
}
public class QAccessibleValueInterface
{
	protected void* nativePtr;
	
	public ~this()
	{
		CQt.QAccessibleValueInterface_Delete(this.nativePtr);
	}
	
	public virtual void CurrentValue()
	{
		CQt.QAccessibleValueInterface_CurrentValue(this.nativePtr);
	}
	
	public virtual void SetCurrentValue(void* value)
	{
		CQt.QAccessibleValueInterface_SetCurrentValue(this.nativePtr, value);
	}
	
	public virtual void MaximumValue()
	{
		CQt.QAccessibleValueInterface_MaximumValue(this.nativePtr);
	}
	
	public virtual void MinimumValue()
	{
		CQt.QAccessibleValueInterface_MinimumValue(this.nativePtr);
	}
	
	public virtual void MinimumStepSize()
	{
		CQt.QAccessibleValueInterface_MinimumStepSize(this.nativePtr);
	}
	
	public void OperatorAssign(void* param1)
	{
		CQt.QAccessibleValueInterface_OperatorAssign(this.nativePtr, param1);
	}
	
}
extension CQt
{
	[LinkName("QAccessibleValueInterface_CurrentValue")]
	public static extern void QAccessibleValueInterface_CurrentValue(void* c_this);
	[LinkName("QAccessibleValueInterface_SetCurrentValue")]
	public static extern void QAccessibleValueInterface_SetCurrentValue(void* c_this, void* value);
	[LinkName("QAccessibleValueInterface_MaximumValue")]
	public static extern void QAccessibleValueInterface_MaximumValue(void* c_this);
	[LinkName("QAccessibleValueInterface_MinimumValue")]
	public static extern void QAccessibleValueInterface_MinimumValue(void* c_this);
	[LinkName("QAccessibleValueInterface_MinimumStepSize")]
	public static extern void QAccessibleValueInterface_MinimumStepSize(void* c_this);
	[LinkName("QAccessibleValueInterface_OperatorAssign")]
	public static extern void QAccessibleValueInterface_OperatorAssign(void* c_this, void* param1);
	/// Delete this object from C++ memory
	[LinkName("QAccessibleValueInterface_Delete")]
	public static extern void QAccessibleValueInterface_Delete(void* self);
}
public class QAccessibleTableCellInterface
{
	protected void* nativePtr;
	
	public ~this()
	{
		CQt.QAccessibleTableCellInterface_Delete(this.nativePtr);
	}
	
	public virtual bool IsSelected()
	{
		return CQt.QAccessibleTableCellInterface_IsSelected(this.nativePtr);
	}
	
	public virtual void*[] ColumnHeaderCells()
	{
		return CQt.QAccessibleTableCellInterface_ColumnHeaderCells(this.nativePtr);
	}
	
	public virtual void*[] RowHeaderCells()
	{
		return CQt.QAccessibleTableCellInterface_RowHeaderCells(this.nativePtr);
	}
	
	public virtual int32 ColumnIndex()
	{
		return CQt.QAccessibleTableCellInterface_ColumnIndex(this.nativePtr);
	}
	
	public virtual int32 RowIndex()
	{
		return CQt.QAccessibleTableCellInterface_RowIndex(this.nativePtr);
	}
	
	public virtual int32 ColumnExtent()
	{
		return CQt.QAccessibleTableCellInterface_ColumnExtent(this.nativePtr);
	}
	
	public virtual int32 RowExtent()
	{
		return CQt.QAccessibleTableCellInterface_RowExtent(this.nativePtr);
	}
	
	public virtual void* Table()
	{
		return CQt.QAccessibleTableCellInterface_Table(this.nativePtr);
	}
	
	public void OperatorAssign(void* param1)
	{
		CQt.QAccessibleTableCellInterface_OperatorAssign(this.nativePtr, param1);
	}
	
}
extension CQt
{
	[LinkName("QAccessibleTableCellInterface_IsSelected")]
	public static extern bool QAccessibleTableCellInterface_IsSelected(void* c_this);
	[LinkName("QAccessibleTableCellInterface_ColumnHeaderCells")]
	public static extern void*[] QAccessibleTableCellInterface_ColumnHeaderCells(void* c_this);
	[LinkName("QAccessibleTableCellInterface_RowHeaderCells")]
	public static extern void*[] QAccessibleTableCellInterface_RowHeaderCells(void* c_this);
	[LinkName("QAccessibleTableCellInterface_ColumnIndex")]
	public static extern int32 QAccessibleTableCellInterface_ColumnIndex(void* c_this);
	[LinkName("QAccessibleTableCellInterface_RowIndex")]
	public static extern int32 QAccessibleTableCellInterface_RowIndex(void* c_this);
	[LinkName("QAccessibleTableCellInterface_ColumnExtent")]
	public static extern int32 QAccessibleTableCellInterface_ColumnExtent(void* c_this);
	[LinkName("QAccessibleTableCellInterface_RowExtent")]
	public static extern int32 QAccessibleTableCellInterface_RowExtent(void* c_this);
	[LinkName("QAccessibleTableCellInterface_Table")]
	public static extern void* QAccessibleTableCellInterface_Table(void* c_this);
	[LinkName("QAccessibleTableCellInterface_OperatorAssign")]
	public static extern void QAccessibleTableCellInterface_OperatorAssign(void* c_this, void* param1);
	/// Delete this object from C++ memory
	[LinkName("QAccessibleTableCellInterface_Delete")]
	public static extern void QAccessibleTableCellInterface_Delete(void* self);
}
public class QAccessibleTableInterface
{
	protected void* nativePtr;
	
	public ~this()
	{
		CQt.QAccessibleTableInterface_Delete(this.nativePtr);
	}
	
	public virtual void* Caption()
	{
		return CQt.QAccessibleTableInterface_Caption(this.nativePtr);
	}
	
	public virtual void* Summary()
	{
		return CQt.QAccessibleTableInterface_Summary(this.nativePtr);
	}
	
	public virtual void* CellAt(int32 row, int32 column)
	{
		return CQt.QAccessibleTableInterface_CellAt(this.nativePtr, row, column);
	}
	
	public virtual int32 SelectedCellCount()
	{
		return CQt.QAccessibleTableInterface_SelectedCellCount(this.nativePtr);
	}
	
	public virtual void*[] SelectedCells()
	{
		return CQt.QAccessibleTableInterface_SelectedCells(this.nativePtr);
	}
	
	public virtual libqt_string ColumnDescription(int32 column)
	{
		return CQt.QAccessibleTableInterface_ColumnDescription(this.nativePtr, column);
	}
	
	public virtual libqt_string RowDescription(int32 row)
	{
		return CQt.QAccessibleTableInterface_RowDescription(this.nativePtr, row);
	}
	
	public virtual int32 SelectedColumnCount()
	{
		return CQt.QAccessibleTableInterface_SelectedColumnCount(this.nativePtr);
	}
	
	public virtual int32 SelectedRowCount()
	{
		return CQt.QAccessibleTableInterface_SelectedRowCount(this.nativePtr);
	}
	
	public virtual int32 ColumnCount()
	{
		return CQt.QAccessibleTableInterface_ColumnCount(this.nativePtr);
	}
	
	public virtual int32 RowCount()
	{
		return CQt.QAccessibleTableInterface_RowCount(this.nativePtr);
	}
	
	public virtual int32[] SelectedColumns()
	{
		return CQt.QAccessibleTableInterface_SelectedColumns(this.nativePtr);
	}
	
	public virtual int32[] SelectedRows()
	{
		return CQt.QAccessibleTableInterface_SelectedRows(this.nativePtr);
	}
	
	public virtual bool IsColumnSelected(int32 column)
	{
		return CQt.QAccessibleTableInterface_IsColumnSelected(this.nativePtr, column);
	}
	
	public virtual bool IsRowSelected(int32 row)
	{
		return CQt.QAccessibleTableInterface_IsRowSelected(this.nativePtr, row);
	}
	
	public virtual bool SelectRow(int32 row)
	{
		return CQt.QAccessibleTableInterface_SelectRow(this.nativePtr, row);
	}
	
	public virtual bool SelectColumn(int32 column)
	{
		return CQt.QAccessibleTableInterface_SelectColumn(this.nativePtr, column);
	}
	
	public virtual bool UnselectRow(int32 row)
	{
		return CQt.QAccessibleTableInterface_UnselectRow(this.nativePtr, row);
	}
	
	public virtual bool UnselectColumn(int32 column)
	{
		return CQt.QAccessibleTableInterface_UnselectColumn(this.nativePtr, column);
	}
	
	public virtual void ModelChange(void* event)
	{
		CQt.QAccessibleTableInterface_ModelChange(this.nativePtr, event);
	}
	
}
extension CQt
{
	[LinkName("QAccessibleTableInterface_Caption")]
	public static extern void* QAccessibleTableInterface_Caption(void* c_this);
	[LinkName("QAccessibleTableInterface_Summary")]
	public static extern void* QAccessibleTableInterface_Summary(void* c_this);
	[LinkName("QAccessibleTableInterface_CellAt")]
	public static extern void* QAccessibleTableInterface_CellAt(void* c_this, int32 row, int32 column);
	[LinkName("QAccessibleTableInterface_SelectedCellCount")]
	public static extern int32 QAccessibleTableInterface_SelectedCellCount(void* c_this);
	[LinkName("QAccessibleTableInterface_SelectedCells")]
	public static extern void*[] QAccessibleTableInterface_SelectedCells(void* c_this);
	[LinkName("QAccessibleTableInterface_ColumnDescription")]
	public static extern libqt_string QAccessibleTableInterface_ColumnDescription(void* c_this, int32 column);
	[LinkName("QAccessibleTableInterface_RowDescription")]
	public static extern libqt_string QAccessibleTableInterface_RowDescription(void* c_this, int32 row);
	[LinkName("QAccessibleTableInterface_SelectedColumnCount")]
	public static extern int32 QAccessibleTableInterface_SelectedColumnCount(void* c_this);
	[LinkName("QAccessibleTableInterface_SelectedRowCount")]
	public static extern int32 QAccessibleTableInterface_SelectedRowCount(void* c_this);
	[LinkName("QAccessibleTableInterface_ColumnCount")]
	public static extern int32 QAccessibleTableInterface_ColumnCount(void* c_this);
	[LinkName("QAccessibleTableInterface_RowCount")]
	public static extern int32 QAccessibleTableInterface_RowCount(void* c_this);
	[LinkName("QAccessibleTableInterface_SelectedColumns")]
	public static extern int32[] QAccessibleTableInterface_SelectedColumns(void* c_this);
	[LinkName("QAccessibleTableInterface_SelectedRows")]
	public static extern int32[] QAccessibleTableInterface_SelectedRows(void* c_this);
	[LinkName("QAccessibleTableInterface_IsColumnSelected")]
	public static extern bool QAccessibleTableInterface_IsColumnSelected(void* c_this, int32 column);
	[LinkName("QAccessibleTableInterface_IsRowSelected")]
	public static extern bool QAccessibleTableInterface_IsRowSelected(void* c_this, int32 row);
	[LinkName("QAccessibleTableInterface_SelectRow")]
	public static extern bool QAccessibleTableInterface_SelectRow(void* c_this, int32 row);
	[LinkName("QAccessibleTableInterface_SelectColumn")]
	public static extern bool QAccessibleTableInterface_SelectColumn(void* c_this, int32 column);
	[LinkName("QAccessibleTableInterface_UnselectRow")]
	public static extern bool QAccessibleTableInterface_UnselectRow(void* c_this, int32 row);
	[LinkName("QAccessibleTableInterface_UnselectColumn")]
	public static extern bool QAccessibleTableInterface_UnselectColumn(void* c_this, int32 column);
	[LinkName("QAccessibleTableInterface_ModelChange")]
	public static extern void QAccessibleTableInterface_ModelChange(void* c_this, void* event);
	[LinkName("QAccessibleTableInterface_OperatorAssign")]
	public static extern void QAccessibleTableInterface_OperatorAssign(void* c_this, void* param1);
	/// Delete this object from C++ memory
	[LinkName("QAccessibleTableInterface_Delete")]
	public static extern void QAccessibleTableInterface_Delete(void* self);
}
public class QAccessibleActionInterface
{
	protected void* nativePtr;
	
	public ~this()
	{
		CQt.QAccessibleActionInterface_Delete(this.nativePtr);
	}
	
	public static libqt_string Tr(char8[] sourceText)
	{
		return CQt.QAccessibleActionInterface_Tr(sourceText);
	}
	
	public virtual libqt_string[] ActionNames()
	{
		return CQt.QAccessibleActionInterface_ActionNames(this.nativePtr);
	}
	
	public virtual libqt_string LocalizedActionName(libqt_string name)
	{
		return CQt.QAccessibleActionInterface_LocalizedActionName(this.nativePtr, name);
	}
	
	public virtual libqt_string LocalizedActionDescription(libqt_string name)
	{
		return CQt.QAccessibleActionInterface_LocalizedActionDescription(this.nativePtr, name);
	}
	
	public virtual void DoAction(libqt_string actionName)
	{
		CQt.QAccessibleActionInterface_DoAction(this.nativePtr, actionName);
	}
	
	public virtual libqt_string[] KeyBindingsForAction(libqt_string actionName)
	{
		return CQt.QAccessibleActionInterface_KeyBindingsForAction(this.nativePtr, actionName);
	}
	
	public static libqt_string PressAction()
	{
		return CQt.QAccessibleActionInterface_PressAction();
	}
	
	public static libqt_string IncreaseAction()
	{
		return CQt.QAccessibleActionInterface_IncreaseAction();
	}
	
	public static libqt_string DecreaseAction()
	{
		return CQt.QAccessibleActionInterface_DecreaseAction();
	}
	
	public static libqt_string ShowMenuAction()
	{
		return CQt.QAccessibleActionInterface_ShowMenuAction();
	}
	
	public static libqt_string SetFocusAction()
	{
		return CQt.QAccessibleActionInterface_SetFocusAction();
	}
	
	public static libqt_string ToggleAction()
	{
		return CQt.QAccessibleActionInterface_ToggleAction();
	}
	
	public static libqt_string ScrollLeftAction()
	{
		return CQt.QAccessibleActionInterface_ScrollLeftAction();
	}
	
	public static libqt_string ScrollRightAction()
	{
		return CQt.QAccessibleActionInterface_ScrollRightAction();
	}
	
	public static libqt_string ScrollUpAction()
	{
		return CQt.QAccessibleActionInterface_ScrollUpAction();
	}
	
	public static libqt_string ScrollDownAction()
	{
		return CQt.QAccessibleActionInterface_ScrollDownAction();
	}
	
	public static libqt_string NextPageAction()
	{
		return CQt.QAccessibleActionInterface_NextPageAction();
	}
	
	public static libqt_string PreviousPageAction()
	{
		return CQt.QAccessibleActionInterface_PreviousPageAction();
	}
	
	public void OperatorAssign(void* param1)
	{
		CQt.QAccessibleActionInterface_OperatorAssign(this.nativePtr, param1);
	}
	
	public static libqt_string Tr2(char8[] sourceText, char8[] disambiguation)
	{
		return CQt.QAccessibleActionInterface_Tr2(sourceText, disambiguation);
	}
	
	public static libqt_string Tr3(char8[] sourceText, char8[] disambiguation, int32 n)
	{
		return CQt.QAccessibleActionInterface_Tr3(sourceText, disambiguation, n);
	}
	
}
extension CQt
{
	[LinkName("QAccessibleActionInterface_Tr")]
	public static extern libqt_string QAccessibleActionInterface_Tr(char8[] sourceText);
	[LinkName("QAccessibleActionInterface_ActionNames")]
	public static extern libqt_string[] QAccessibleActionInterface_ActionNames(void* c_this);
	[LinkName("QAccessibleActionInterface_LocalizedActionName")]
	public static extern libqt_string QAccessibleActionInterface_LocalizedActionName(void* c_this, libqt_string name);
	[LinkName("QAccessibleActionInterface_LocalizedActionDescription")]
	public static extern libqt_string QAccessibleActionInterface_LocalizedActionDescription(void* c_this, libqt_string name);
	[LinkName("QAccessibleActionInterface_DoAction")]
	public static extern void QAccessibleActionInterface_DoAction(void* c_this, libqt_string actionName);
	[LinkName("QAccessibleActionInterface_KeyBindingsForAction")]
	public static extern libqt_string[] QAccessibleActionInterface_KeyBindingsForAction(void* c_this, libqt_string actionName);
	[LinkName("QAccessibleActionInterface_PressAction")]
	public static extern libqt_string QAccessibleActionInterface_PressAction();
	[LinkName("QAccessibleActionInterface_IncreaseAction")]
	public static extern libqt_string QAccessibleActionInterface_IncreaseAction();
	[LinkName("QAccessibleActionInterface_DecreaseAction")]
	public static extern libqt_string QAccessibleActionInterface_DecreaseAction();
	[LinkName("QAccessibleActionInterface_ShowMenuAction")]
	public static extern libqt_string QAccessibleActionInterface_ShowMenuAction();
	[LinkName("QAccessibleActionInterface_SetFocusAction")]
	public static extern libqt_string QAccessibleActionInterface_SetFocusAction();
	[LinkName("QAccessibleActionInterface_ToggleAction")]
	public static extern libqt_string QAccessibleActionInterface_ToggleAction();
	[LinkName("QAccessibleActionInterface_ScrollLeftAction")]
	public static extern libqt_string QAccessibleActionInterface_ScrollLeftAction();
	[LinkName("QAccessibleActionInterface_ScrollRightAction")]
	public static extern libqt_string QAccessibleActionInterface_ScrollRightAction();
	[LinkName("QAccessibleActionInterface_ScrollUpAction")]
	public static extern libqt_string QAccessibleActionInterface_ScrollUpAction();
	[LinkName("QAccessibleActionInterface_ScrollDownAction")]
	public static extern libqt_string QAccessibleActionInterface_ScrollDownAction();
	[LinkName("QAccessibleActionInterface_NextPageAction")]
	public static extern libqt_string QAccessibleActionInterface_NextPageAction();
	[LinkName("QAccessibleActionInterface_PreviousPageAction")]
	public static extern libqt_string QAccessibleActionInterface_PreviousPageAction();
	[LinkName("QAccessibleActionInterface_OperatorAssign")]
	public static extern void QAccessibleActionInterface_OperatorAssign(void* c_this, void* param1);
	[LinkName("QAccessibleActionInterface_Tr2")]
	public static extern libqt_string QAccessibleActionInterface_Tr2(char8[] sourceText, char8[] disambiguation);
	[LinkName("QAccessibleActionInterface_Tr3")]
	public static extern libqt_string QAccessibleActionInterface_Tr3(char8[] sourceText, char8[] disambiguation, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QAccessibleActionInterface_Delete")]
	public static extern void QAccessibleActionInterface_Delete(void* self);
}
public class QAccessibleImageInterface
{
	protected void* nativePtr;
	
	public ~this()
	{
		CQt.QAccessibleImageInterface_Delete(this.nativePtr);
	}
	
	public virtual libqt_string ImageDescription()
	{
		return CQt.QAccessibleImageInterface_ImageDescription(this.nativePtr);
	}
	
	public virtual void ImageSize()
	{
		CQt.QAccessibleImageInterface_ImageSize(this.nativePtr);
	}
	
	public virtual void ImagePosition()
	{
		CQt.QAccessibleImageInterface_ImagePosition(this.nativePtr);
	}
	
	public void OperatorAssign(void* param1)
	{
		CQt.QAccessibleImageInterface_OperatorAssign(this.nativePtr, param1);
	}
	
}
extension CQt
{
	[LinkName("QAccessibleImageInterface_ImageDescription")]
	public static extern libqt_string QAccessibleImageInterface_ImageDescription(void* c_this);
	[LinkName("QAccessibleImageInterface_ImageSize")]
	public static extern void QAccessibleImageInterface_ImageSize(void* c_this);
	[LinkName("QAccessibleImageInterface_ImagePosition")]
	public static extern void QAccessibleImageInterface_ImagePosition(void* c_this);
	[LinkName("QAccessibleImageInterface_OperatorAssign")]
	public static extern void QAccessibleImageInterface_OperatorAssign(void* c_this, void* param1);
	/// Delete this object from C++ memory
	[LinkName("QAccessibleImageInterface_Delete")]
	public static extern void QAccessibleImageInterface_Delete(void* self);
}
public class QAccessibleHyperlinkInterface
{
	protected void* nativePtr;
	
	public ~this()
	{
		CQt.QAccessibleHyperlinkInterface_Delete(this.nativePtr);
	}
	
	public virtual libqt_string Anchor()
	{
		return CQt.QAccessibleHyperlinkInterface_Anchor(this.nativePtr);
	}
	
	public virtual libqt_string AnchorTarget()
	{
		return CQt.QAccessibleHyperlinkInterface_AnchorTarget(this.nativePtr);
	}
	
	public virtual int32 StartIndex()
	{
		return CQt.QAccessibleHyperlinkInterface_StartIndex(this.nativePtr);
	}
	
	public virtual int32 EndIndex()
	{
		return CQt.QAccessibleHyperlinkInterface_EndIndex(this.nativePtr);
	}
	
	public virtual bool IsValid()
	{
		return CQt.QAccessibleHyperlinkInterface_IsValid(this.nativePtr);
	}
	
	public void OperatorAssign(void* param1)
	{
		CQt.QAccessibleHyperlinkInterface_OperatorAssign(this.nativePtr, param1);
	}
	
}
extension CQt
{
	[LinkName("QAccessibleHyperlinkInterface_Anchor")]
	public static extern libqt_string QAccessibleHyperlinkInterface_Anchor(void* c_this);
	[LinkName("QAccessibleHyperlinkInterface_AnchorTarget")]
	public static extern libqt_string QAccessibleHyperlinkInterface_AnchorTarget(void* c_this);
	[LinkName("QAccessibleHyperlinkInterface_StartIndex")]
	public static extern int32 QAccessibleHyperlinkInterface_StartIndex(void* c_this);
	[LinkName("QAccessibleHyperlinkInterface_EndIndex")]
	public static extern int32 QAccessibleHyperlinkInterface_EndIndex(void* c_this);
	[LinkName("QAccessibleHyperlinkInterface_IsValid")]
	public static extern bool QAccessibleHyperlinkInterface_IsValid(void* c_this);
	[LinkName("QAccessibleHyperlinkInterface_OperatorAssign")]
	public static extern void QAccessibleHyperlinkInterface_OperatorAssign(void* c_this, void* param1);
	/// Delete this object from C++ memory
	[LinkName("QAccessibleHyperlinkInterface_Delete")]
	public static extern void QAccessibleHyperlinkInterface_Delete(void* self);
}
public class QAccessibleEvent
{
	protected void* nativePtr;
	
	public this(void* obj, int64 typ)
	{
		this.nativePtr = CQt.QAccessibleEvent_new(obj, typ);
	}
	
	public ~this()
	{
		CQt.QAccessibleEvent_Delete(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QAccessibleEvent_Type(this.nativePtr);
	}
	
	public void* Object()
	{
		return CQt.QAccessibleEvent_Object(this.nativePtr);
	}
	
	public uint32 UniqueId()
	{
		return CQt.QAccessibleEvent_UniqueId(this.nativePtr);
	}
	
	public void SetChild(int32 chld)
	{
		CQt.QAccessibleEvent_SetChild(this.nativePtr, chld);
	}
	
	public int32 Child()
	{
		return CQt.QAccessibleEvent_Child(this.nativePtr);
	}
	
	public virtual void* AccessibleInterface()
	{
		return CQt.QAccessibleEvent_AccessibleInterface(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QAccessibleEvent_new")]
	public static extern void* QAccessibleEvent_new(void* obj, int64 typ);
	[LinkName("QAccessibleEvent_new2")]
	public static extern void* QAccessibleEvent_new2(void* iface, int64 typ);
	[LinkName("QAccessibleEvent_Type")]
	public static extern int64 QAccessibleEvent_Type(void* c_this);
	[LinkName("QAccessibleEvent_Object")]
	public static extern void* QAccessibleEvent_Object(void* c_this);
	[LinkName("QAccessibleEvent_UniqueId")]
	public static extern uint32 QAccessibleEvent_UniqueId(void* c_this);
	[LinkName("QAccessibleEvent_SetChild")]
	public static extern void QAccessibleEvent_SetChild(void* c_this, int32 chld);
	[LinkName("QAccessibleEvent_Child")]
	public static extern int32 QAccessibleEvent_Child(void* c_this);
	[LinkName("QAccessibleEvent_AccessibleInterface")]
	public static extern void* QAccessibleEvent_AccessibleInterface(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QAccessibleEvent_Delete")]
	public static extern void QAccessibleEvent_Delete(void* self);
}
public class QAccessibleStateChangeEvent
{
	protected void* nativePtr;
	
	public this(void* obj, QAccessible__State state)
	{
		this.nativePtr = CQt.QAccessibleStateChangeEvent_new(obj, state);
	}
	
	public ~this()
	{
		CQt.QAccessibleStateChangeEvent_Delete(this.nativePtr);
	}
	
	public QAccessible__State ChangedStates()
	{
		return CQt.QAccessibleStateChangeEvent_ChangedStates(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QAccessibleEvent_Type(this.nativePtr);
	}
	
	public void* Object()
	{
		return CQt.QAccessibleEvent_Object(this.nativePtr);
	}
	
	public uint32 UniqueId()
	{
		return CQt.QAccessibleEvent_UniqueId(this.nativePtr);
	}
	
	public void SetChild(int32 chld)
	{
		CQt.QAccessibleEvent_SetChild(this.nativePtr, chld);
	}
	
	public int32 Child()
	{
		return CQt.QAccessibleEvent_Child(this.nativePtr);
	}
	
	public virtual void* AccessibleInterface()
	{
		return CQt.QAccessibleEvent_AccessibleInterface(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QAccessibleStateChangeEvent_new")]
	public static extern void* QAccessibleStateChangeEvent_new(void* obj, QAccessible__State state);
	[LinkName("QAccessibleStateChangeEvent_new2")]
	public static extern void* QAccessibleStateChangeEvent_new2(void* iface, QAccessible__State state);
	[LinkName("QAccessibleStateChangeEvent_ChangedStates")]
	public static extern QAccessible__State QAccessibleStateChangeEvent_ChangedStates(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QAccessibleStateChangeEvent_Delete")]
	public static extern void QAccessibleStateChangeEvent_Delete(void* self);
}
public class QAccessibleTextCursorEvent
{
	protected void* nativePtr;
	
	public this(void* obj, int32 cursorPos)
	{
		this.nativePtr = CQt.QAccessibleTextCursorEvent_new(obj, cursorPos);
	}
	
	public ~this()
	{
		CQt.QAccessibleTextCursorEvent_Delete(this.nativePtr);
	}
	
	public void SetCursorPosition(int32 position)
	{
		CQt.QAccessibleTextCursorEvent_SetCursorPosition(this.nativePtr, position);
	}
	
	public int32 CursorPosition()
	{
		return CQt.QAccessibleTextCursorEvent_CursorPosition(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QAccessibleEvent_Type(this.nativePtr);
	}
	
	public void* Object()
	{
		return CQt.QAccessibleEvent_Object(this.nativePtr);
	}
	
	public uint32 UniqueId()
	{
		return CQt.QAccessibleEvent_UniqueId(this.nativePtr);
	}
	
	public void SetChild(int32 chld)
	{
		CQt.QAccessibleEvent_SetChild(this.nativePtr, chld);
	}
	
	public int32 Child()
	{
		return CQt.QAccessibleEvent_Child(this.nativePtr);
	}
	
	public virtual void* AccessibleInterface()
	{
		return CQt.QAccessibleEvent_AccessibleInterface(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QAccessibleTextCursorEvent_new")]
	public static extern void* QAccessibleTextCursorEvent_new(void* obj, int32 cursorPos);
	[LinkName("QAccessibleTextCursorEvent_new2")]
	public static extern void* QAccessibleTextCursorEvent_new2(void* iface, int32 cursorPos);
	[LinkName("QAccessibleTextCursorEvent_SetCursorPosition")]
	public static extern void QAccessibleTextCursorEvent_SetCursorPosition(void* c_this, int32 position);
	[LinkName("QAccessibleTextCursorEvent_CursorPosition")]
	public static extern int32 QAccessibleTextCursorEvent_CursorPosition(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QAccessibleTextCursorEvent_Delete")]
	public static extern void QAccessibleTextCursorEvent_Delete(void* self);
}
public class QAccessibleTextSelectionEvent
{
	protected void* nativePtr;
	
	public this(void* obj, int32 start, int32 end)
	{
		this.nativePtr = CQt.QAccessibleTextSelectionEvent_new(obj, start, end);
	}
	
	public ~this()
	{
		CQt.QAccessibleTextSelectionEvent_Delete(this.nativePtr);
	}
	
	public void SetSelection(int32 start, int32 end)
	{
		CQt.QAccessibleTextSelectionEvent_SetSelection(this.nativePtr, start, end);
	}
	
	public int32 SelectionStart()
	{
		return CQt.QAccessibleTextSelectionEvent_SelectionStart(this.nativePtr);
	}
	
	public int32 SelectionEnd()
	{
		return CQt.QAccessibleTextSelectionEvent_SelectionEnd(this.nativePtr);
	}
	
	public void SetCursorPosition(int32 position)
	{
		CQt.QAccessibleTextCursorEvent_SetCursorPosition(this.nativePtr, position);
	}
	
	public int32 CursorPosition()
	{
		return CQt.QAccessibleTextCursorEvent_CursorPosition(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QAccessibleEvent_Type(this.nativePtr);
	}
	
	public void* Object()
	{
		return CQt.QAccessibleEvent_Object(this.nativePtr);
	}
	
	public uint32 UniqueId()
	{
		return CQt.QAccessibleEvent_UniqueId(this.nativePtr);
	}
	
	public void SetChild(int32 chld)
	{
		CQt.QAccessibleEvent_SetChild(this.nativePtr, chld);
	}
	
	public int32 Child()
	{
		return CQt.QAccessibleEvent_Child(this.nativePtr);
	}
	
	public virtual void* AccessibleInterface()
	{
		return CQt.QAccessibleEvent_AccessibleInterface(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QAccessibleTextSelectionEvent_new")]
	public static extern void* QAccessibleTextSelectionEvent_new(void* obj, int32 start, int32 end);
	[LinkName("QAccessibleTextSelectionEvent_new2")]
	public static extern void* QAccessibleTextSelectionEvent_new2(void* iface, int32 start, int32 end);
	[LinkName("QAccessibleTextSelectionEvent_SetSelection")]
	public static extern void QAccessibleTextSelectionEvent_SetSelection(void* c_this, int32 start, int32 end);
	[LinkName("QAccessibleTextSelectionEvent_SelectionStart")]
	public static extern int32 QAccessibleTextSelectionEvent_SelectionStart(void* c_this);
	[LinkName("QAccessibleTextSelectionEvent_SelectionEnd")]
	public static extern int32 QAccessibleTextSelectionEvent_SelectionEnd(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QAccessibleTextSelectionEvent_Delete")]
	public static extern void QAccessibleTextSelectionEvent_Delete(void* self);
}
public class QAccessibleTextInsertEvent
{
	protected void* nativePtr;
	
	public this(void* obj, int32 position, libqt_string text)
	{
		this.nativePtr = CQt.QAccessibleTextInsertEvent_new(obj, position, text);
	}
	
	public ~this()
	{
		CQt.QAccessibleTextInsertEvent_Delete(this.nativePtr);
	}
	
	public libqt_string TextInserted()
	{
		return CQt.QAccessibleTextInsertEvent_TextInserted(this.nativePtr);
	}
	
	public int32 ChangePosition()
	{
		return CQt.QAccessibleTextInsertEvent_ChangePosition(this.nativePtr);
	}
	
	public void SetCursorPosition(int32 position)
	{
		CQt.QAccessibleTextCursorEvent_SetCursorPosition(this.nativePtr, position);
	}
	
	public int32 CursorPosition()
	{
		return CQt.QAccessibleTextCursorEvent_CursorPosition(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QAccessibleEvent_Type(this.nativePtr);
	}
	
	public void* Object()
	{
		return CQt.QAccessibleEvent_Object(this.nativePtr);
	}
	
	public uint32 UniqueId()
	{
		return CQt.QAccessibleEvent_UniqueId(this.nativePtr);
	}
	
	public void SetChild(int32 chld)
	{
		CQt.QAccessibleEvent_SetChild(this.nativePtr, chld);
	}
	
	public int32 Child()
	{
		return CQt.QAccessibleEvent_Child(this.nativePtr);
	}
	
	public virtual void* AccessibleInterface()
	{
		return CQt.QAccessibleEvent_AccessibleInterface(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QAccessibleTextInsertEvent_new")]
	public static extern void* QAccessibleTextInsertEvent_new(void* obj, int32 position, libqt_string text);
	[LinkName("QAccessibleTextInsertEvent_new2")]
	public static extern void* QAccessibleTextInsertEvent_new2(void* iface, int32 position, libqt_string text);
	[LinkName("QAccessibleTextInsertEvent_TextInserted")]
	public static extern libqt_string QAccessibleTextInsertEvent_TextInserted(void* c_this);
	[LinkName("QAccessibleTextInsertEvent_ChangePosition")]
	public static extern int32 QAccessibleTextInsertEvent_ChangePosition(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QAccessibleTextInsertEvent_Delete")]
	public static extern void QAccessibleTextInsertEvent_Delete(void* self);
}
public class QAccessibleTextRemoveEvent
{
	protected void* nativePtr;
	
	public this(void* obj, int32 position, libqt_string text)
	{
		this.nativePtr = CQt.QAccessibleTextRemoveEvent_new(obj, position, text);
	}
	
	public ~this()
	{
		CQt.QAccessibleTextRemoveEvent_Delete(this.nativePtr);
	}
	
	public libqt_string TextRemoved()
	{
		return CQt.QAccessibleTextRemoveEvent_TextRemoved(this.nativePtr);
	}
	
	public int32 ChangePosition()
	{
		return CQt.QAccessibleTextRemoveEvent_ChangePosition(this.nativePtr);
	}
	
	public void SetCursorPosition(int32 position)
	{
		CQt.QAccessibleTextCursorEvent_SetCursorPosition(this.nativePtr, position);
	}
	
	public int32 CursorPosition()
	{
		return CQt.QAccessibleTextCursorEvent_CursorPosition(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QAccessibleEvent_Type(this.nativePtr);
	}
	
	public void* Object()
	{
		return CQt.QAccessibleEvent_Object(this.nativePtr);
	}
	
	public uint32 UniqueId()
	{
		return CQt.QAccessibleEvent_UniqueId(this.nativePtr);
	}
	
	public void SetChild(int32 chld)
	{
		CQt.QAccessibleEvent_SetChild(this.nativePtr, chld);
	}
	
	public int32 Child()
	{
		return CQt.QAccessibleEvent_Child(this.nativePtr);
	}
	
	public virtual void* AccessibleInterface()
	{
		return CQt.QAccessibleEvent_AccessibleInterface(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QAccessibleTextRemoveEvent_new")]
	public static extern void* QAccessibleTextRemoveEvent_new(void* obj, int32 position, libqt_string text);
	[LinkName("QAccessibleTextRemoveEvent_new2")]
	public static extern void* QAccessibleTextRemoveEvent_new2(void* iface, int32 position, libqt_string text);
	[LinkName("QAccessibleTextRemoveEvent_TextRemoved")]
	public static extern libqt_string QAccessibleTextRemoveEvent_TextRemoved(void* c_this);
	[LinkName("QAccessibleTextRemoveEvent_ChangePosition")]
	public static extern int32 QAccessibleTextRemoveEvent_ChangePosition(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QAccessibleTextRemoveEvent_Delete")]
	public static extern void QAccessibleTextRemoveEvent_Delete(void* self);
}
public class QAccessibleTextUpdateEvent
{
	protected void* nativePtr;
	
	public this(void* obj, int32 position, libqt_string oldText, libqt_string text)
	{
		this.nativePtr = CQt.QAccessibleTextUpdateEvent_new(obj, position, oldText, text);
	}
	
	public ~this()
	{
		CQt.QAccessibleTextUpdateEvent_Delete(this.nativePtr);
	}
	
	public libqt_string TextRemoved()
	{
		return CQt.QAccessibleTextUpdateEvent_TextRemoved(this.nativePtr);
	}
	
	public libqt_string TextInserted()
	{
		return CQt.QAccessibleTextUpdateEvent_TextInserted(this.nativePtr);
	}
	
	public int32 ChangePosition()
	{
		return CQt.QAccessibleTextUpdateEvent_ChangePosition(this.nativePtr);
	}
	
	public void SetCursorPosition(int32 position)
	{
		CQt.QAccessibleTextCursorEvent_SetCursorPosition(this.nativePtr, position);
	}
	
	public int32 CursorPosition()
	{
		return CQt.QAccessibleTextCursorEvent_CursorPosition(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QAccessibleEvent_Type(this.nativePtr);
	}
	
	public void* Object()
	{
		return CQt.QAccessibleEvent_Object(this.nativePtr);
	}
	
	public uint32 UniqueId()
	{
		return CQt.QAccessibleEvent_UniqueId(this.nativePtr);
	}
	
	public void SetChild(int32 chld)
	{
		CQt.QAccessibleEvent_SetChild(this.nativePtr, chld);
	}
	
	public int32 Child()
	{
		return CQt.QAccessibleEvent_Child(this.nativePtr);
	}
	
	public virtual void* AccessibleInterface()
	{
		return CQt.QAccessibleEvent_AccessibleInterface(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QAccessibleTextUpdateEvent_new")]
	public static extern void* QAccessibleTextUpdateEvent_new(void* obj, int32 position, libqt_string oldText, libqt_string text);
	[LinkName("QAccessibleTextUpdateEvent_new2")]
	public static extern void* QAccessibleTextUpdateEvent_new2(void* iface, int32 position, libqt_string oldText, libqt_string text);
	[LinkName("QAccessibleTextUpdateEvent_TextRemoved")]
	public static extern libqt_string QAccessibleTextUpdateEvent_TextRemoved(void* c_this);
	[LinkName("QAccessibleTextUpdateEvent_TextInserted")]
	public static extern libqt_string QAccessibleTextUpdateEvent_TextInserted(void* c_this);
	[LinkName("QAccessibleTextUpdateEvent_ChangePosition")]
	public static extern int32 QAccessibleTextUpdateEvent_ChangePosition(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QAccessibleTextUpdateEvent_Delete")]
	public static extern void QAccessibleTextUpdateEvent_Delete(void* self);
}
public class QAccessibleValueChangeEvent
{
	protected void* nativePtr;
	
	public this(void* obj, void* val)
	{
		this.nativePtr = CQt.QAccessibleValueChangeEvent_new(obj, val);
	}
	
	public ~this()
	{
		CQt.QAccessibleValueChangeEvent_Delete(this.nativePtr);
	}
	
	public void SetValue(void* val)
	{
		CQt.QAccessibleValueChangeEvent_SetValue(this.nativePtr, val);
	}
	
	public void Value()
	{
		CQt.QAccessibleValueChangeEvent_Value(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QAccessibleEvent_Type(this.nativePtr);
	}
	
	public void* Object()
	{
		return CQt.QAccessibleEvent_Object(this.nativePtr);
	}
	
	public uint32 UniqueId()
	{
		return CQt.QAccessibleEvent_UniqueId(this.nativePtr);
	}
	
	public void SetChild(int32 chld)
	{
		CQt.QAccessibleEvent_SetChild(this.nativePtr, chld);
	}
	
	public int32 Child()
	{
		return CQt.QAccessibleEvent_Child(this.nativePtr);
	}
	
	public virtual void* AccessibleInterface()
	{
		return CQt.QAccessibleEvent_AccessibleInterface(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QAccessibleValueChangeEvent_new")]
	public static extern void* QAccessibleValueChangeEvent_new(void* obj, void* val);
	[LinkName("QAccessibleValueChangeEvent_new2")]
	public static extern void* QAccessibleValueChangeEvent_new2(void* iface, void* val);
	[LinkName("QAccessibleValueChangeEvent_SetValue")]
	public static extern void QAccessibleValueChangeEvent_SetValue(void* c_this, void* val);
	[LinkName("QAccessibleValueChangeEvent_Value")]
	public static extern void QAccessibleValueChangeEvent_Value(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QAccessibleValueChangeEvent_Delete")]
	public static extern void QAccessibleValueChangeEvent_Delete(void* self);
}
public class QAccessibleTableModelChangeEvent
{
	protected void* nativePtr;
	
	public this(void* obj, int64 changeType)
	{
		this.nativePtr = CQt.QAccessibleTableModelChangeEvent_new(obj, changeType);
	}
	
	public ~this()
	{
		CQt.QAccessibleTableModelChangeEvent_Delete(this.nativePtr);
	}
	
	public void SetModelChangeType(int64 changeType)
	{
		CQt.QAccessibleTableModelChangeEvent_SetModelChangeType(this.nativePtr, changeType);
	}
	
	public int64 ModelChangeType()
	{
		return CQt.QAccessibleTableModelChangeEvent_ModelChangeType(this.nativePtr);
	}
	
	public void SetFirstRow(int32 row)
	{
		CQt.QAccessibleTableModelChangeEvent_SetFirstRow(this.nativePtr, row);
	}
	
	public void SetFirstColumn(int32 col)
	{
		CQt.QAccessibleTableModelChangeEvent_SetFirstColumn(this.nativePtr, col);
	}
	
	public void SetLastRow(int32 row)
	{
		CQt.QAccessibleTableModelChangeEvent_SetLastRow(this.nativePtr, row);
	}
	
	public void SetLastColumn(int32 col)
	{
		CQt.QAccessibleTableModelChangeEvent_SetLastColumn(this.nativePtr, col);
	}
	
	public int32 FirstRow()
	{
		return CQt.QAccessibleTableModelChangeEvent_FirstRow(this.nativePtr);
	}
	
	public int32 FirstColumn()
	{
		return CQt.QAccessibleTableModelChangeEvent_FirstColumn(this.nativePtr);
	}
	
	public int32 LastRow()
	{
		return CQt.QAccessibleTableModelChangeEvent_LastRow(this.nativePtr);
	}
	
	public int32 LastColumn()
	{
		return CQt.QAccessibleTableModelChangeEvent_LastColumn(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QAccessibleEvent_Type(this.nativePtr);
	}
	
	public void* Object()
	{
		return CQt.QAccessibleEvent_Object(this.nativePtr);
	}
	
	public uint32 UniqueId()
	{
		return CQt.QAccessibleEvent_UniqueId(this.nativePtr);
	}
	
	public void SetChild(int32 chld)
	{
		CQt.QAccessibleEvent_SetChild(this.nativePtr, chld);
	}
	
	public int32 Child()
	{
		return CQt.QAccessibleEvent_Child(this.nativePtr);
	}
	
	public virtual void* AccessibleInterface()
	{
		return CQt.QAccessibleEvent_AccessibleInterface(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QAccessibleTableModelChangeEvent_new")]
	public static extern void* QAccessibleTableModelChangeEvent_new(void* obj, int64 changeType);
	[LinkName("QAccessibleTableModelChangeEvent_new2")]
	public static extern void* QAccessibleTableModelChangeEvent_new2(void* iface, int64 changeType);
	[LinkName("QAccessibleTableModelChangeEvent_SetModelChangeType")]
	public static extern void QAccessibleTableModelChangeEvent_SetModelChangeType(void* c_this, int64 changeType);
	[LinkName("QAccessibleTableModelChangeEvent_ModelChangeType")]
	public static extern int64 QAccessibleTableModelChangeEvent_ModelChangeType(void* c_this);
	[LinkName("QAccessibleTableModelChangeEvent_SetFirstRow")]
	public static extern void QAccessibleTableModelChangeEvent_SetFirstRow(void* c_this, int32 row);
	[LinkName("QAccessibleTableModelChangeEvent_SetFirstColumn")]
	public static extern void QAccessibleTableModelChangeEvent_SetFirstColumn(void* c_this, int32 col);
	[LinkName("QAccessibleTableModelChangeEvent_SetLastRow")]
	public static extern void QAccessibleTableModelChangeEvent_SetLastRow(void* c_this, int32 row);
	[LinkName("QAccessibleTableModelChangeEvent_SetLastColumn")]
	public static extern void QAccessibleTableModelChangeEvent_SetLastColumn(void* c_this, int32 col);
	[LinkName("QAccessibleTableModelChangeEvent_FirstRow")]
	public static extern int32 QAccessibleTableModelChangeEvent_FirstRow(void* c_this);
	[LinkName("QAccessibleTableModelChangeEvent_FirstColumn")]
	public static extern int32 QAccessibleTableModelChangeEvent_FirstColumn(void* c_this);
	[LinkName("QAccessibleTableModelChangeEvent_LastRow")]
	public static extern int32 QAccessibleTableModelChangeEvent_LastRow(void* c_this);
	[LinkName("QAccessibleTableModelChangeEvent_LastColumn")]
	public static extern int32 QAccessibleTableModelChangeEvent_LastColumn(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QAccessibleTableModelChangeEvent_Delete")]
	public static extern void QAccessibleTableModelChangeEvent_Delete(void* self);
}