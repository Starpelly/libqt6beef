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
public struct QAccessibleInterface
{
	[LinkName("QAccessibleInterface_IsValid")]
	public static extern bool QAccessibleInterface_IsValid(void* c_this);
	[LinkName("QAccessibleInterface_Object")]
	public static extern QObject QAccessibleInterface_Object(void* c_this);
	[LinkName("QAccessibleInterface_Window")]
	public static extern QWindow QAccessibleInterface_Window(void* c_this);
	[LinkName("QAccessibleInterface_Relations")]
	public static extern void*[] QAccessibleInterface_Relations(void* c_this, int64 match);
	[LinkName("QAccessibleInterface_FocusChild")]
	public static extern QAccessibleInterface QAccessibleInterface_FocusChild(void* c_this);
	[LinkName("QAccessibleInterface_ChildAt")]
	public static extern QAccessibleInterface QAccessibleInterface_ChildAt(void* c_this, int32 x, int32 y);
	[LinkName("QAccessibleInterface_Parent")]
	public static extern QAccessibleInterface QAccessibleInterface_Parent(void* c_this);
	[LinkName("QAccessibleInterface_Child")]
	public static extern QAccessibleInterface QAccessibleInterface_Child(void* c_this, int32 index);
	[LinkName("QAccessibleInterface_ChildCount")]
	public static extern int32 QAccessibleInterface_ChildCount(void* c_this);
	[LinkName("QAccessibleInterface_IndexOfChild")]
	public static extern int32 QAccessibleInterface_IndexOfChild(void* c_this, QAccessibleInterface param1);
	[LinkName("QAccessibleInterface_Text")]
	public static extern char8[] QAccessibleInterface_Text(void* c_this, int64 t);
	[LinkName("QAccessibleInterface_SetText")]
	public static extern void QAccessibleInterface_SetText(void* c_this, int64 t, char8[] text);
	[LinkName("QAccessibleInterface_Rect")]
	public static extern QRect QAccessibleInterface_Rect(void* c_this);
	[LinkName("QAccessibleInterface_Role")]
	public static extern int64 QAccessibleInterface_Role(void* c_this);
	[LinkName("QAccessibleInterface_State")]
	public static extern QAccessible__State QAccessibleInterface_State(void* c_this);
	[LinkName("QAccessibleInterface_ForegroundColor")]
	public static extern QColor QAccessibleInterface_ForegroundColor(void* c_this);
	[LinkName("QAccessibleInterface_BackgroundColor")]
	public static extern QColor QAccessibleInterface_BackgroundColor(void* c_this);
	[LinkName("QAccessibleInterface_TextInterface")]
	public static extern QAccessibleTextInterface QAccessibleInterface_TextInterface(void* c_this);
	[LinkName("QAccessibleInterface_EditableTextInterface")]
	public static extern QAccessibleEditableTextInterface QAccessibleInterface_EditableTextInterface(void* c_this);
	[LinkName("QAccessibleInterface_ValueInterface")]
	public static extern QAccessibleValueInterface QAccessibleInterface_ValueInterface(void* c_this);
	[LinkName("QAccessibleInterface_ActionInterface")]
	public static extern QAccessibleActionInterface QAccessibleInterface_ActionInterface(void* c_this);
	[LinkName("QAccessibleInterface_ImageInterface")]
	public static extern QAccessibleImageInterface QAccessibleInterface_ImageInterface(void* c_this);
	[LinkName("QAccessibleInterface_TableInterface")]
	public static extern QAccessibleTableInterface QAccessibleInterface_TableInterface(void* c_this);
	[LinkName("QAccessibleInterface_TableCellInterface")]
	public static extern QAccessibleTableCellInterface QAccessibleInterface_TableCellInterface(void* c_this);
	[LinkName("QAccessibleInterface_HyperlinkInterface")]
	public static extern QAccessibleHyperlinkInterface QAccessibleInterface_HyperlinkInterface(void* c_this);
	[LinkName("QAccessibleInterface_VirtualHook")]
	public static extern void QAccessibleInterface_VirtualHook(void* c_this, int32 id, void data);
	[LinkName("QAccessibleInterface_InterfaceCast")]
	public static extern void QAccessibleInterface_InterfaceCast(void* c_this, int64 param1);
	[LinkName("QAccessibleInterface_OperatorAssign")]
	public static extern void QAccessibleInterface_OperatorAssign(void* c_this, QAccessibleInterface param1);
}
public struct QAccessibleTextInterface
{
	[LinkName("QAccessibleTextInterface_Selection")]
	public static extern void QAccessibleTextInterface_Selection(void* c_this, int32 selectionIndex, int32 startOffset, int32 endOffset);
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
	public static extern char8[] QAccessibleTextInterface_Text(void* c_this, int32 startOffset, int32 endOffset);
	[LinkName("QAccessibleTextInterface_TextBeforeOffset")]
	public static extern char8[] QAccessibleTextInterface_TextBeforeOffset(void* c_this, int32 offset, int64 boundaryType, int32 startOffset, int32 endOffset);
	[LinkName("QAccessibleTextInterface_TextAfterOffset")]
	public static extern char8[] QAccessibleTextInterface_TextAfterOffset(void* c_this, int32 offset, int64 boundaryType, int32 startOffset, int32 endOffset);
	[LinkName("QAccessibleTextInterface_TextAtOffset")]
	public static extern char8[] QAccessibleTextInterface_TextAtOffset(void* c_this, int32 offset, int64 boundaryType, int32 startOffset, int32 endOffset);
	[LinkName("QAccessibleTextInterface_CharacterCount")]
	public static extern int32 QAccessibleTextInterface_CharacterCount(void* c_this);
	[LinkName("QAccessibleTextInterface_CharacterRect")]
	public static extern QRect QAccessibleTextInterface_CharacterRect(void* c_this, int32 offset);
	[LinkName("QAccessibleTextInterface_OffsetAtPoint")]
	public static extern int32 QAccessibleTextInterface_OffsetAtPoint(void* c_this, QPoint point);
	[LinkName("QAccessibleTextInterface_ScrollToSubstring")]
	public static extern void QAccessibleTextInterface_ScrollToSubstring(void* c_this, int32 startIndex, int32 endIndex);
	[LinkName("QAccessibleTextInterface_Attributes")]
	public static extern char8[] QAccessibleTextInterface_Attributes(void* c_this, int32 offset, int32 startOffset, int32 endOffset);
	[LinkName("QAccessibleTextInterface_OperatorAssign")]
	public static extern void QAccessibleTextInterface_OperatorAssign(void* c_this, QAccessibleTextInterface param1);
}
public struct QAccessibleEditableTextInterface
{
	[LinkName("QAccessibleEditableTextInterface_DeleteText")]
	public static extern void QAccessibleEditableTextInterface_DeleteText(void* c_this, int32 startOffset, int32 endOffset);
	[LinkName("QAccessibleEditableTextInterface_InsertText")]
	public static extern void QAccessibleEditableTextInterface_InsertText(void* c_this, int32 offset, char8[] text);
	[LinkName("QAccessibleEditableTextInterface_ReplaceText")]
	public static extern void QAccessibleEditableTextInterface_ReplaceText(void* c_this, int32 startOffset, int32 endOffset, char8[] text);
	[LinkName("QAccessibleEditableTextInterface_OperatorAssign")]
	public static extern void QAccessibleEditableTextInterface_OperatorAssign(void* c_this, QAccessibleEditableTextInterface param1);
}
public struct QAccessibleValueInterface
{
	[LinkName("QAccessibleValueInterface_CurrentValue")]
	public static extern QVariant QAccessibleValueInterface_CurrentValue(void* c_this);
	[LinkName("QAccessibleValueInterface_SetCurrentValue")]
	public static extern void QAccessibleValueInterface_SetCurrentValue(void* c_this, QVariant value);
	[LinkName("QAccessibleValueInterface_MaximumValue")]
	public static extern QVariant QAccessibleValueInterface_MaximumValue(void* c_this);
	[LinkName("QAccessibleValueInterface_MinimumValue")]
	public static extern QVariant QAccessibleValueInterface_MinimumValue(void* c_this);
	[LinkName("QAccessibleValueInterface_MinimumStepSize")]
	public static extern QVariant QAccessibleValueInterface_MinimumStepSize(void* c_this);
	[LinkName("QAccessibleValueInterface_OperatorAssign")]
	public static extern void QAccessibleValueInterface_OperatorAssign(void* c_this, QAccessibleValueInterface param1);
}
public struct QAccessibleTableCellInterface
{
	[LinkName("QAccessibleTableCellInterface_IsSelected")]
	public static extern bool QAccessibleTableCellInterface_IsSelected(void* c_this);
	[LinkName("QAccessibleTableCellInterface_ColumnHeaderCells")]
	public static extern QAccessibleInterface[] QAccessibleTableCellInterface_ColumnHeaderCells(void* c_this);
	[LinkName("QAccessibleTableCellInterface_RowHeaderCells")]
	public static extern QAccessibleInterface[] QAccessibleTableCellInterface_RowHeaderCells(void* c_this);
	[LinkName("QAccessibleTableCellInterface_ColumnIndex")]
	public static extern int32 QAccessibleTableCellInterface_ColumnIndex(void* c_this);
	[LinkName("QAccessibleTableCellInterface_RowIndex")]
	public static extern int32 QAccessibleTableCellInterface_RowIndex(void* c_this);
	[LinkName("QAccessibleTableCellInterface_ColumnExtent")]
	public static extern int32 QAccessibleTableCellInterface_ColumnExtent(void* c_this);
	[LinkName("QAccessibleTableCellInterface_RowExtent")]
	public static extern int32 QAccessibleTableCellInterface_RowExtent(void* c_this);
	[LinkName("QAccessibleTableCellInterface_Table")]
	public static extern QAccessibleInterface QAccessibleTableCellInterface_Table(void* c_this);
	[LinkName("QAccessibleTableCellInterface_OperatorAssign")]
	public static extern void QAccessibleTableCellInterface_OperatorAssign(void* c_this, QAccessibleTableCellInterface param1);
}
public struct QAccessibleTableInterface
{
	[LinkName("QAccessibleTableInterface_Caption")]
	public static extern QAccessibleInterface QAccessibleTableInterface_Caption(void* c_this);
	[LinkName("QAccessibleTableInterface_Summary")]
	public static extern QAccessibleInterface QAccessibleTableInterface_Summary(void* c_this);
	[LinkName("QAccessibleTableInterface_CellAt")]
	public static extern QAccessibleInterface QAccessibleTableInterface_CellAt(void* c_this, int32 row, int32 column);
	[LinkName("QAccessibleTableInterface_SelectedCellCount")]
	public static extern int32 QAccessibleTableInterface_SelectedCellCount(void* c_this);
	[LinkName("QAccessibleTableInterface_SelectedCells")]
	public static extern QAccessibleInterface[] QAccessibleTableInterface_SelectedCells(void* c_this);
	[LinkName("QAccessibleTableInterface_ColumnDescription")]
	public static extern char8[] QAccessibleTableInterface_ColumnDescription(void* c_this, int32 column);
	[LinkName("QAccessibleTableInterface_RowDescription")]
	public static extern char8[] QAccessibleTableInterface_RowDescription(void* c_this, int32 row);
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
	public static extern void QAccessibleTableInterface_ModelChange(void* c_this, QAccessibleTableModelChangeEvent event);
	[LinkName("QAccessibleTableInterface_OperatorAssign")]
	public static extern void QAccessibleTableInterface_OperatorAssign(void* c_this, QAccessibleTableInterface param1);
}
public struct QAccessibleActionInterface
{
	[LinkName("QAccessibleActionInterface_Tr")]
	public static extern char8[] QAccessibleActionInterface_Tr(char8[] sourceText);
	[LinkName("QAccessibleActionInterface_ActionNames")]
	public static extern char8[][] QAccessibleActionInterface_ActionNames(void* c_this);
	[LinkName("QAccessibleActionInterface_LocalizedActionName")]
	public static extern char8[] QAccessibleActionInterface_LocalizedActionName(void* c_this, char8[] name);
	[LinkName("QAccessibleActionInterface_LocalizedActionDescription")]
	public static extern char8[] QAccessibleActionInterface_LocalizedActionDescription(void* c_this, char8[] name);
	[LinkName("QAccessibleActionInterface_DoAction")]
	public static extern void QAccessibleActionInterface_DoAction(void* c_this, char8[] actionName);
	[LinkName("QAccessibleActionInterface_KeyBindingsForAction")]
	public static extern char8[][] QAccessibleActionInterface_KeyBindingsForAction(void* c_this, char8[] actionName);
	[LinkName("QAccessibleActionInterface_PressAction")]
	public static extern char8[] QAccessibleActionInterface_PressAction();
	[LinkName("QAccessibleActionInterface_IncreaseAction")]
	public static extern char8[] QAccessibleActionInterface_IncreaseAction();
	[LinkName("QAccessibleActionInterface_DecreaseAction")]
	public static extern char8[] QAccessibleActionInterface_DecreaseAction();
	[LinkName("QAccessibleActionInterface_ShowMenuAction")]
	public static extern char8[] QAccessibleActionInterface_ShowMenuAction();
	[LinkName("QAccessibleActionInterface_SetFocusAction")]
	public static extern char8[] QAccessibleActionInterface_SetFocusAction();
	[LinkName("QAccessibleActionInterface_ToggleAction")]
	public static extern char8[] QAccessibleActionInterface_ToggleAction();
	[LinkName("QAccessibleActionInterface_ScrollLeftAction")]
	public static extern char8[] QAccessibleActionInterface_ScrollLeftAction();
	[LinkName("QAccessibleActionInterface_ScrollRightAction")]
	public static extern char8[] QAccessibleActionInterface_ScrollRightAction();
	[LinkName("QAccessibleActionInterface_ScrollUpAction")]
	public static extern char8[] QAccessibleActionInterface_ScrollUpAction();
	[LinkName("QAccessibleActionInterface_ScrollDownAction")]
	public static extern char8[] QAccessibleActionInterface_ScrollDownAction();
	[LinkName("QAccessibleActionInterface_NextPageAction")]
	public static extern char8[] QAccessibleActionInterface_NextPageAction();
	[LinkName("QAccessibleActionInterface_PreviousPageAction")]
	public static extern char8[] QAccessibleActionInterface_PreviousPageAction();
	[LinkName("QAccessibleActionInterface_OperatorAssign")]
	public static extern void QAccessibleActionInterface_OperatorAssign(void* c_this, QAccessibleActionInterface param1);
	[LinkName("QAccessibleActionInterface_Tr2")]
	public static extern char8[] QAccessibleActionInterface_Tr2(char8[] sourceText, char8[] disambiguation);
	[LinkName("QAccessibleActionInterface_Tr3")]
	public static extern char8[] QAccessibleActionInterface_Tr3(char8[] sourceText, char8[] disambiguation, int32 n);
}
public struct QAccessibleImageInterface
{
	[LinkName("QAccessibleImageInterface_ImageDescription")]
	public static extern char8[] QAccessibleImageInterface_ImageDescription(void* c_this);
	[LinkName("QAccessibleImageInterface_ImageSize")]
	public static extern QSize QAccessibleImageInterface_ImageSize(void* c_this);
	[LinkName("QAccessibleImageInterface_ImagePosition")]
	public static extern QPoint QAccessibleImageInterface_ImagePosition(void* c_this);
	[LinkName("QAccessibleImageInterface_OperatorAssign")]
	public static extern void QAccessibleImageInterface_OperatorAssign(void* c_this, QAccessibleImageInterface param1);
}
public struct QAccessibleHyperlinkInterface
{
	[LinkName("QAccessibleHyperlinkInterface_Anchor")]
	public static extern char8[] QAccessibleHyperlinkInterface_Anchor(void* c_this);
	[LinkName("QAccessibleHyperlinkInterface_AnchorTarget")]
	public static extern char8[] QAccessibleHyperlinkInterface_AnchorTarget(void* c_this);
	[LinkName("QAccessibleHyperlinkInterface_StartIndex")]
	public static extern int32 QAccessibleHyperlinkInterface_StartIndex(void* c_this);
	[LinkName("QAccessibleHyperlinkInterface_EndIndex")]
	public static extern int32 QAccessibleHyperlinkInterface_EndIndex(void* c_this);
	[LinkName("QAccessibleHyperlinkInterface_IsValid")]
	public static extern bool QAccessibleHyperlinkInterface_IsValid(void* c_this);
	[LinkName("QAccessibleHyperlinkInterface_OperatorAssign")]
	public static extern void QAccessibleHyperlinkInterface_OperatorAssign(void* c_this, QAccessibleHyperlinkInterface param1);
}
public struct QAccessibleEvent
{
	[LinkName("QAccessibleEvent_new")]
	public static extern void* QAccessibleEvent_new(QObject obj, int64 typ);
	[LinkName("QAccessibleEvent_new2")]
	public static extern void* QAccessibleEvent_new2(QAccessibleInterface iface, int64 typ);
	[LinkName("QAccessibleEvent_Type")]
	public static extern int64 QAccessibleEvent_Type(void* c_this);
	[LinkName("QAccessibleEvent_Object")]
	public static extern QObject QAccessibleEvent_Object(void* c_this);
	[LinkName("QAccessibleEvent_UniqueId")]
	public static extern uint32 QAccessibleEvent_UniqueId(void* c_this);
	[LinkName("QAccessibleEvent_SetChild")]
	public static extern void QAccessibleEvent_SetChild(void* c_this, int32 chld);
	[LinkName("QAccessibleEvent_Child")]
	public static extern int32 QAccessibleEvent_Child(void* c_this);
	[LinkName("QAccessibleEvent_AccessibleInterface")]
	public static extern QAccessibleInterface QAccessibleEvent_AccessibleInterface(void* c_this);
}
public struct QAccessibleStateChangeEvent
{
	[LinkName("QAccessibleStateChangeEvent_new")]
	public static extern void* QAccessibleStateChangeEvent_new(QObject obj, QAccessible__State state);
	[LinkName("QAccessibleStateChangeEvent_new2")]
	public static extern void* QAccessibleStateChangeEvent_new2(QAccessibleInterface iface, QAccessible__State state);
	[LinkName("QAccessibleStateChangeEvent_ChangedStates")]
	public static extern QAccessible__State QAccessibleStateChangeEvent_ChangedStates(void* c_this);
}
public struct QAccessibleTextCursorEvent
{
	[LinkName("QAccessibleTextCursorEvent_new")]
	public static extern void* QAccessibleTextCursorEvent_new(QObject obj, int32 cursorPos);
	[LinkName("QAccessibleTextCursorEvent_new2")]
	public static extern void* QAccessibleTextCursorEvent_new2(QAccessibleInterface iface, int32 cursorPos);
	[LinkName("QAccessibleTextCursorEvent_SetCursorPosition")]
	public static extern void QAccessibleTextCursorEvent_SetCursorPosition(void* c_this, int32 position);
	[LinkName("QAccessibleTextCursorEvent_CursorPosition")]
	public static extern int32 QAccessibleTextCursorEvent_CursorPosition(void* c_this);
}
public struct QAccessibleTextSelectionEvent
{
	[LinkName("QAccessibleTextSelectionEvent_new")]
	public static extern void* QAccessibleTextSelectionEvent_new(QObject obj, int32 start, int32 end);
	[LinkName("QAccessibleTextSelectionEvent_new2")]
	public static extern void* QAccessibleTextSelectionEvent_new2(QAccessibleInterface iface, int32 start, int32 end);
	[LinkName("QAccessibleTextSelectionEvent_SetSelection")]
	public static extern void QAccessibleTextSelectionEvent_SetSelection(void* c_this, int32 start, int32 end);
	[LinkName("QAccessibleTextSelectionEvent_SelectionStart")]
	public static extern int32 QAccessibleTextSelectionEvent_SelectionStart(void* c_this);
	[LinkName("QAccessibleTextSelectionEvent_SelectionEnd")]
	public static extern int32 QAccessibleTextSelectionEvent_SelectionEnd(void* c_this);
}
public struct QAccessibleTextInsertEvent
{
	[LinkName("QAccessibleTextInsertEvent_new")]
	public static extern void* QAccessibleTextInsertEvent_new(QObject obj, int32 position, char8[] text);
	[LinkName("QAccessibleTextInsertEvent_new2")]
	public static extern void* QAccessibleTextInsertEvent_new2(QAccessibleInterface iface, int32 position, char8[] text);
	[LinkName("QAccessibleTextInsertEvent_TextInserted")]
	public static extern char8[] QAccessibleTextInsertEvent_TextInserted(void* c_this);
	[LinkName("QAccessibleTextInsertEvent_ChangePosition")]
	public static extern int32 QAccessibleTextInsertEvent_ChangePosition(void* c_this);
}
public struct QAccessibleTextRemoveEvent
{
	[LinkName("QAccessibleTextRemoveEvent_new")]
	public static extern void* QAccessibleTextRemoveEvent_new(QObject obj, int32 position, char8[] text);
	[LinkName("QAccessibleTextRemoveEvent_new2")]
	public static extern void* QAccessibleTextRemoveEvent_new2(QAccessibleInterface iface, int32 position, char8[] text);
	[LinkName("QAccessibleTextRemoveEvent_TextRemoved")]
	public static extern char8[] QAccessibleTextRemoveEvent_TextRemoved(void* c_this);
	[LinkName("QAccessibleTextRemoveEvent_ChangePosition")]
	public static extern int32 QAccessibleTextRemoveEvent_ChangePosition(void* c_this);
}
public struct QAccessibleTextUpdateEvent
{
	[LinkName("QAccessibleTextUpdateEvent_new")]
	public static extern void* QAccessibleTextUpdateEvent_new(QObject obj, int32 position, char8[] oldText, char8[] text);
	[LinkName("QAccessibleTextUpdateEvent_new2")]
	public static extern void* QAccessibleTextUpdateEvent_new2(QAccessibleInterface iface, int32 position, char8[] oldText, char8[] text);
	[LinkName("QAccessibleTextUpdateEvent_TextRemoved")]
	public static extern char8[] QAccessibleTextUpdateEvent_TextRemoved(void* c_this);
	[LinkName("QAccessibleTextUpdateEvent_TextInserted")]
	public static extern char8[] QAccessibleTextUpdateEvent_TextInserted(void* c_this);
	[LinkName("QAccessibleTextUpdateEvent_ChangePosition")]
	public static extern int32 QAccessibleTextUpdateEvent_ChangePosition(void* c_this);
}
public struct QAccessibleValueChangeEvent
{
	[LinkName("QAccessibleValueChangeEvent_new")]
	public static extern void* QAccessibleValueChangeEvent_new(QObject obj, QVariant val);
	[LinkName("QAccessibleValueChangeEvent_new2")]
	public static extern void* QAccessibleValueChangeEvent_new2(QAccessibleInterface iface, QVariant val);
	[LinkName("QAccessibleValueChangeEvent_SetValue")]
	public static extern void QAccessibleValueChangeEvent_SetValue(void* c_this, QVariant val);
	[LinkName("QAccessibleValueChangeEvent_Value")]
	public static extern QVariant QAccessibleValueChangeEvent_Value(void* c_this);
}
public struct QAccessibleTableModelChangeEvent
{
	[LinkName("QAccessibleTableModelChangeEvent_new")]
	public static extern void* QAccessibleTableModelChangeEvent_new(QObject obj, int64 changeType);
	[LinkName("QAccessibleTableModelChangeEvent_new2")]
	public static extern void* QAccessibleTableModelChangeEvent_new2(QAccessibleInterface iface, int64 changeType);
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
}