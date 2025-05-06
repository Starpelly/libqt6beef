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
	public static extern bool QAccessibleInterface_IsValid(Self* c_this);
	[LinkName("QAccessibleInterface_Object")]
	public static extern QObject* QAccessibleInterface_Object(Self* c_this);
	[LinkName("QAccessibleInterface_Window")]
	public static extern QWindow* QAccessibleInterface_Window(Self* c_this);
	[LinkName("QAccessibleInterface_Relations")]
	public static extern void*[] QAccessibleInterface_Relations(Self* c_this, int64 match);
	[LinkName("QAccessibleInterface_FocusChild")]
	public static extern QAccessibleInterface* QAccessibleInterface_FocusChild(Self* c_this);
	[LinkName("QAccessibleInterface_ChildAt")]
	public static extern QAccessibleInterface* QAccessibleInterface_ChildAt(Self* c_this, int32 x, int32 y);
	[LinkName("QAccessibleInterface_Parent")]
	public static extern QAccessibleInterface* QAccessibleInterface_Parent(Self* c_this);
	[LinkName("QAccessibleInterface_Child")]
	public static extern QAccessibleInterface* QAccessibleInterface_Child(Self* c_this, int32 index);
	[LinkName("QAccessibleInterface_ChildCount")]
	public static extern int32 QAccessibleInterface_ChildCount(Self* c_this);
	[LinkName("QAccessibleInterface_IndexOfChild")]
	public static extern int32 QAccessibleInterface_IndexOfChild(Self* c_this, QAccessibleInterface* param1);
	[LinkName("QAccessibleInterface_Text")]
	public static extern libqt_string QAccessibleInterface_Text(Self* c_this, int64 t);
	[LinkName("QAccessibleInterface_SetText")]
	public static extern void QAccessibleInterface_SetText(Self* c_this, int64 t, libqt_string text);
	[LinkName("QAccessibleInterface_Rect")]
	public static extern QRect QAccessibleInterface_Rect(Self* c_this);
	[LinkName("QAccessibleInterface_Role")]
	public static extern int64 QAccessibleInterface_Role(Self* c_this);
	[LinkName("QAccessibleInterface_State")]
	public static extern QAccessible__State QAccessibleInterface_State(Self* c_this);
	[LinkName("QAccessibleInterface_ForegroundColor")]
	public static extern QColor QAccessibleInterface_ForegroundColor(Self* c_this);
	[LinkName("QAccessibleInterface_BackgroundColor")]
	public static extern QColor QAccessibleInterface_BackgroundColor(Self* c_this);
	[LinkName("QAccessibleInterface_TextInterface")]
	public static extern QAccessibleTextInterface* QAccessibleInterface_TextInterface(Self* c_this);
	[LinkName("QAccessibleInterface_EditableTextInterface")]
	public static extern QAccessibleEditableTextInterface* QAccessibleInterface_EditableTextInterface(Self* c_this);
	[LinkName("QAccessibleInterface_ValueInterface")]
	public static extern QAccessibleValueInterface* QAccessibleInterface_ValueInterface(Self* c_this);
	[LinkName("QAccessibleInterface_ActionInterface")]
	public static extern QAccessibleActionInterface* QAccessibleInterface_ActionInterface(Self* c_this);
	[LinkName("QAccessibleInterface_ImageInterface")]
	public static extern QAccessibleImageInterface* QAccessibleInterface_ImageInterface(Self* c_this);
	[LinkName("QAccessibleInterface_TableInterface")]
	public static extern QAccessibleTableInterface* QAccessibleInterface_TableInterface(Self* c_this);
	[LinkName("QAccessibleInterface_TableCellInterface")]
	public static extern QAccessibleTableCellInterface* QAccessibleInterface_TableCellInterface(Self* c_this);
	[LinkName("QAccessibleInterface_HyperlinkInterface")]
	public static extern QAccessibleHyperlinkInterface* QAccessibleInterface_HyperlinkInterface(Self* c_this);
	[LinkName("QAccessibleInterface_VirtualHook")]
	public static extern void QAccessibleInterface_VirtualHook(Self* c_this, int32 id, void* data);
	[LinkName("QAccessibleInterface_InterfaceCast")]
	public static extern void* QAccessibleInterface_InterfaceCast(Self* c_this, int64 param1);
	[LinkName("QAccessibleInterface_OperatorAssign")]
	public static extern void QAccessibleInterface_OperatorAssign(Self* c_this, QAccessibleInterface* param1);
}
public struct QAccessibleTextInterface
{
	[LinkName("QAccessibleTextInterface_Selection")]
	public static extern void QAccessibleTextInterface_Selection(Self* c_this, int32 selectionIndex, int32* startOffset, int32* endOffset);
	[LinkName("QAccessibleTextInterface_SelectionCount")]
	public static extern int32 QAccessibleTextInterface_SelectionCount(Self* c_this);
	[LinkName("QAccessibleTextInterface_AddSelection")]
	public static extern void QAccessibleTextInterface_AddSelection(Self* c_this, int32 startOffset, int32 endOffset);
	[LinkName("QAccessibleTextInterface_RemoveSelection")]
	public static extern void QAccessibleTextInterface_RemoveSelection(Self* c_this, int32 selectionIndex);
	[LinkName("QAccessibleTextInterface_SetSelection")]
	public static extern void QAccessibleTextInterface_SetSelection(Self* c_this, int32 selectionIndex, int32 startOffset, int32 endOffset);
	[LinkName("QAccessibleTextInterface_CursorPosition")]
	public static extern int32 QAccessibleTextInterface_CursorPosition(Self* c_this);
	[LinkName("QAccessibleTextInterface_SetCursorPosition")]
	public static extern void QAccessibleTextInterface_SetCursorPosition(Self* c_this, int32 position);
	[LinkName("QAccessibleTextInterface_Text")]
	public static extern libqt_string QAccessibleTextInterface_Text(Self* c_this, int32 startOffset, int32 endOffset);
	[LinkName("QAccessibleTextInterface_TextBeforeOffset")]
	public static extern libqt_string QAccessibleTextInterface_TextBeforeOffset(Self* c_this, int32 offset, int64 boundaryType, int32* startOffset, int32* endOffset);
	[LinkName("QAccessibleTextInterface_TextAfterOffset")]
	public static extern libqt_string QAccessibleTextInterface_TextAfterOffset(Self* c_this, int32 offset, int64 boundaryType, int32* startOffset, int32* endOffset);
	[LinkName("QAccessibleTextInterface_TextAtOffset")]
	public static extern libqt_string QAccessibleTextInterface_TextAtOffset(Self* c_this, int32 offset, int64 boundaryType, int32* startOffset, int32* endOffset);
	[LinkName("QAccessibleTextInterface_CharacterCount")]
	public static extern int32 QAccessibleTextInterface_CharacterCount(Self* c_this);
	[LinkName("QAccessibleTextInterface_CharacterRect")]
	public static extern QRect QAccessibleTextInterface_CharacterRect(Self* c_this, int32 offset);
	[LinkName("QAccessibleTextInterface_OffsetAtPoint")]
	public static extern int32 QAccessibleTextInterface_OffsetAtPoint(Self* c_this, QPoint* point);
	[LinkName("QAccessibleTextInterface_ScrollToSubstring")]
	public static extern void QAccessibleTextInterface_ScrollToSubstring(Self* c_this, int32 startIndex, int32 endIndex);
	[LinkName("QAccessibleTextInterface_Attributes")]
	public static extern libqt_string QAccessibleTextInterface_Attributes(Self* c_this, int32 offset, int32* startOffset, int32* endOffset);
	[LinkName("QAccessibleTextInterface_OperatorAssign")]
	public static extern void QAccessibleTextInterface_OperatorAssign(Self* c_this, QAccessibleTextInterface* param1);
}
public struct QAccessibleEditableTextInterface
{
	[LinkName("QAccessibleEditableTextInterface_DeleteText")]
	public static extern void QAccessibleEditableTextInterface_DeleteText(Self* c_this, int32 startOffset, int32 endOffset);
	[LinkName("QAccessibleEditableTextInterface_InsertText")]
	public static extern void QAccessibleEditableTextInterface_InsertText(Self* c_this, int32 offset, libqt_string text);
	[LinkName("QAccessibleEditableTextInterface_ReplaceText")]
	public static extern void QAccessibleEditableTextInterface_ReplaceText(Self* c_this, int32 startOffset, int32 endOffset, libqt_string text);
	[LinkName("QAccessibleEditableTextInterface_OperatorAssign")]
	public static extern void QAccessibleEditableTextInterface_OperatorAssign(Self* c_this, QAccessibleEditableTextInterface* param1);
}
public struct QAccessibleValueInterface
{
	[LinkName("QAccessibleValueInterface_CurrentValue")]
	public static extern QVariant QAccessibleValueInterface_CurrentValue(Self* c_this);
	[LinkName("QAccessibleValueInterface_SetCurrentValue")]
	public static extern void QAccessibleValueInterface_SetCurrentValue(Self* c_this, QVariant* value);
	[LinkName("QAccessibleValueInterface_MaximumValue")]
	public static extern QVariant QAccessibleValueInterface_MaximumValue(Self* c_this);
	[LinkName("QAccessibleValueInterface_MinimumValue")]
	public static extern QVariant QAccessibleValueInterface_MinimumValue(Self* c_this);
	[LinkName("QAccessibleValueInterface_MinimumStepSize")]
	public static extern QVariant QAccessibleValueInterface_MinimumStepSize(Self* c_this);
	[LinkName("QAccessibleValueInterface_OperatorAssign")]
	public static extern void QAccessibleValueInterface_OperatorAssign(Self* c_this, QAccessibleValueInterface* param1);
}
public struct QAccessibleTableCellInterface
{
	[LinkName("QAccessibleTableCellInterface_IsSelected")]
	public static extern bool QAccessibleTableCellInterface_IsSelected(Self* c_this);
	[LinkName("QAccessibleTableCellInterface_ColumnHeaderCells")]
	public static extern QAccessibleInterface*[] QAccessibleTableCellInterface_ColumnHeaderCells(Self* c_this);
	[LinkName("QAccessibleTableCellInterface_RowHeaderCells")]
	public static extern QAccessibleInterface*[] QAccessibleTableCellInterface_RowHeaderCells(Self* c_this);
	[LinkName("QAccessibleTableCellInterface_ColumnIndex")]
	public static extern int32 QAccessibleTableCellInterface_ColumnIndex(Self* c_this);
	[LinkName("QAccessibleTableCellInterface_RowIndex")]
	public static extern int32 QAccessibleTableCellInterface_RowIndex(Self* c_this);
	[LinkName("QAccessibleTableCellInterface_ColumnExtent")]
	public static extern int32 QAccessibleTableCellInterface_ColumnExtent(Self* c_this);
	[LinkName("QAccessibleTableCellInterface_RowExtent")]
	public static extern int32 QAccessibleTableCellInterface_RowExtent(Self* c_this);
	[LinkName("QAccessibleTableCellInterface_Table")]
	public static extern QAccessibleInterface* QAccessibleTableCellInterface_Table(Self* c_this);
	[LinkName("QAccessibleTableCellInterface_OperatorAssign")]
	public static extern void QAccessibleTableCellInterface_OperatorAssign(Self* c_this, QAccessibleTableCellInterface* param1);
}
public struct QAccessibleTableInterface
{
	[LinkName("QAccessibleTableInterface_Caption")]
	public static extern QAccessibleInterface* QAccessibleTableInterface_Caption(Self* c_this);
	[LinkName("QAccessibleTableInterface_Summary")]
	public static extern QAccessibleInterface* QAccessibleTableInterface_Summary(Self* c_this);
	[LinkName("QAccessibleTableInterface_CellAt")]
	public static extern QAccessibleInterface* QAccessibleTableInterface_CellAt(Self* c_this, int32 row, int32 column);
	[LinkName("QAccessibleTableInterface_SelectedCellCount")]
	public static extern int32 QAccessibleTableInterface_SelectedCellCount(Self* c_this);
	[LinkName("QAccessibleTableInterface_SelectedCells")]
	public static extern QAccessibleInterface*[] QAccessibleTableInterface_SelectedCells(Self* c_this);
	[LinkName("QAccessibleTableInterface_ColumnDescription")]
	public static extern libqt_string QAccessibleTableInterface_ColumnDescription(Self* c_this, int32 column);
	[LinkName("QAccessibleTableInterface_RowDescription")]
	public static extern libqt_string QAccessibleTableInterface_RowDescription(Self* c_this, int32 row);
	[LinkName("QAccessibleTableInterface_SelectedColumnCount")]
	public static extern int32 QAccessibleTableInterface_SelectedColumnCount(Self* c_this);
	[LinkName("QAccessibleTableInterface_SelectedRowCount")]
	public static extern int32 QAccessibleTableInterface_SelectedRowCount(Self* c_this);
	[LinkName("QAccessibleTableInterface_ColumnCount")]
	public static extern int32 QAccessibleTableInterface_ColumnCount(Self* c_this);
	[LinkName("QAccessibleTableInterface_RowCount")]
	public static extern int32 QAccessibleTableInterface_RowCount(Self* c_this);
	[LinkName("QAccessibleTableInterface_SelectedColumns")]
	public static extern int32[] QAccessibleTableInterface_SelectedColumns(Self* c_this);
	[LinkName("QAccessibleTableInterface_SelectedRows")]
	public static extern int32[] QAccessibleTableInterface_SelectedRows(Self* c_this);
	[LinkName("QAccessibleTableInterface_IsColumnSelected")]
	public static extern bool QAccessibleTableInterface_IsColumnSelected(Self* c_this, int32 column);
	[LinkName("QAccessibleTableInterface_IsRowSelected")]
	public static extern bool QAccessibleTableInterface_IsRowSelected(Self* c_this, int32 row);
	[LinkName("QAccessibleTableInterface_SelectRow")]
	public static extern bool QAccessibleTableInterface_SelectRow(Self* c_this, int32 row);
	[LinkName("QAccessibleTableInterface_SelectColumn")]
	public static extern bool QAccessibleTableInterface_SelectColumn(Self* c_this, int32 column);
	[LinkName("QAccessibleTableInterface_UnselectRow")]
	public static extern bool QAccessibleTableInterface_UnselectRow(Self* c_this, int32 row);
	[LinkName("QAccessibleTableInterface_UnselectColumn")]
	public static extern bool QAccessibleTableInterface_UnselectColumn(Self* c_this, int32 column);
	[LinkName("QAccessibleTableInterface_ModelChange")]
	public static extern void QAccessibleTableInterface_ModelChange(Self* c_this, QAccessibleTableModelChangeEvent* event);
	[LinkName("QAccessibleTableInterface_OperatorAssign")]
	public static extern void QAccessibleTableInterface_OperatorAssign(Self* c_this, QAccessibleTableInterface* param1);
}
public struct QAccessibleActionInterface
{
	[LinkName("QAccessibleActionInterface_Tr")]
	public static extern libqt_string QAccessibleActionInterface_Tr(char8[] sourceText);
	[LinkName("QAccessibleActionInterface_ActionNames")]
	public static extern libqt_string[] QAccessibleActionInterface_ActionNames(Self* c_this);
	[LinkName("QAccessibleActionInterface_LocalizedActionName")]
	public static extern libqt_string QAccessibleActionInterface_LocalizedActionName(Self* c_this, libqt_string name);
	[LinkName("QAccessibleActionInterface_LocalizedActionDescription")]
	public static extern libqt_string QAccessibleActionInterface_LocalizedActionDescription(Self* c_this, libqt_string name);
	[LinkName("QAccessibleActionInterface_DoAction")]
	public static extern void QAccessibleActionInterface_DoAction(Self* c_this, libqt_string actionName);
	[LinkName("QAccessibleActionInterface_KeyBindingsForAction")]
	public static extern libqt_string[] QAccessibleActionInterface_KeyBindingsForAction(Self* c_this, libqt_string actionName);
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
	public static extern void QAccessibleActionInterface_OperatorAssign(Self* c_this, QAccessibleActionInterface* param1);
	[LinkName("QAccessibleActionInterface_Tr2")]
	public static extern libqt_string QAccessibleActionInterface_Tr2(char8[] sourceText, char8[] disambiguation);
	[LinkName("QAccessibleActionInterface_Tr3")]
	public static extern libqt_string QAccessibleActionInterface_Tr3(char8[] sourceText, char8[] disambiguation, int32 n);
}
public struct QAccessibleImageInterface
{
	[LinkName("QAccessibleImageInterface_ImageDescription")]
	public static extern libqt_string QAccessibleImageInterface_ImageDescription(Self* c_this);
	[LinkName("QAccessibleImageInterface_ImageSize")]
	public static extern QSize QAccessibleImageInterface_ImageSize(Self* c_this);
	[LinkName("QAccessibleImageInterface_ImagePosition")]
	public static extern QPoint QAccessibleImageInterface_ImagePosition(Self* c_this);
	[LinkName("QAccessibleImageInterface_OperatorAssign")]
	public static extern void QAccessibleImageInterface_OperatorAssign(Self* c_this, QAccessibleImageInterface* param1);
}
public struct QAccessibleHyperlinkInterface
{
	[LinkName("QAccessibleHyperlinkInterface_Anchor")]
	public static extern libqt_string QAccessibleHyperlinkInterface_Anchor(Self* c_this);
	[LinkName("QAccessibleHyperlinkInterface_AnchorTarget")]
	public static extern libqt_string QAccessibleHyperlinkInterface_AnchorTarget(Self* c_this);
	[LinkName("QAccessibleHyperlinkInterface_StartIndex")]
	public static extern int32 QAccessibleHyperlinkInterface_StartIndex(Self* c_this);
	[LinkName("QAccessibleHyperlinkInterface_EndIndex")]
	public static extern int32 QAccessibleHyperlinkInterface_EndIndex(Self* c_this);
	[LinkName("QAccessibleHyperlinkInterface_IsValid")]
	public static extern bool QAccessibleHyperlinkInterface_IsValid(Self* c_this);
	[LinkName("QAccessibleHyperlinkInterface_OperatorAssign")]
	public static extern void QAccessibleHyperlinkInterface_OperatorAssign(Self* c_this, QAccessibleHyperlinkInterface* param1);
}
public struct QAccessibleEvent
{
	[LinkName("QAccessibleEvent_new")]
	public static extern QAccessibleEvent* QAccessibleEvent_new(QObject* obj, int64 typ);
	[LinkName("QAccessibleEvent_new2")]
	public static extern QAccessibleEvent* QAccessibleEvent_new2(QAccessibleInterface* iface, int64 typ);
	[LinkName("QAccessibleEvent_Type")]
	public static extern int64 QAccessibleEvent_Type(Self* c_this);
	[LinkName("QAccessibleEvent_Object")]
	public static extern QObject* QAccessibleEvent_Object(Self* c_this);
	[LinkName("QAccessibleEvent_UniqueId")]
	public static extern uint32 QAccessibleEvent_UniqueId(Self* c_this);
	[LinkName("QAccessibleEvent_SetChild")]
	public static extern void QAccessibleEvent_SetChild(Self* c_this, int32 chld);
	[LinkName("QAccessibleEvent_Child")]
	public static extern int32 QAccessibleEvent_Child(Self* c_this);
	[LinkName("QAccessibleEvent_AccessibleInterface")]
	public static extern QAccessibleInterface* QAccessibleEvent_AccessibleInterface(Self* c_this);
}
public struct QAccessibleStateChangeEvent : QAccessibleEvent
{
	[LinkName("QAccessibleStateChangeEvent_new")]
	public static extern QAccessibleStateChangeEvent* QAccessibleStateChangeEvent_new(QObject* obj, QAccessible__State state);
	[LinkName("QAccessibleStateChangeEvent_new2")]
	public static extern QAccessibleStateChangeEvent* QAccessibleStateChangeEvent_new2(QAccessibleInterface* iface, QAccessible__State state);
	[LinkName("QAccessibleStateChangeEvent_ChangedStates")]
	public static extern QAccessible__State QAccessibleStateChangeEvent_ChangedStates(Self* c_this);
}
public struct QAccessibleTextCursorEvent : QAccessibleEvent
{
	[LinkName("QAccessibleTextCursorEvent_new")]
	public static extern QAccessibleTextCursorEvent* QAccessibleTextCursorEvent_new(QObject* obj, int32 cursorPos);
	[LinkName("QAccessibleTextCursorEvent_new2")]
	public static extern QAccessibleTextCursorEvent* QAccessibleTextCursorEvent_new2(QAccessibleInterface* iface, int32 cursorPos);
	[LinkName("QAccessibleTextCursorEvent_SetCursorPosition")]
	public static extern void QAccessibleTextCursorEvent_SetCursorPosition(Self* c_this, int32 position);
	[LinkName("QAccessibleTextCursorEvent_CursorPosition")]
	public static extern int32 QAccessibleTextCursorEvent_CursorPosition(Self* c_this);
}
public struct QAccessibleTextSelectionEvent : QAccessibleTextCursorEvent
{
	[LinkName("QAccessibleTextSelectionEvent_new")]
	public static extern QAccessibleTextSelectionEvent* QAccessibleTextSelectionEvent_new(QObject* obj, int32 start, int32 end);
	[LinkName("QAccessibleTextSelectionEvent_new2")]
	public static extern QAccessibleTextSelectionEvent* QAccessibleTextSelectionEvent_new2(QAccessibleInterface* iface, int32 start, int32 end);
	[LinkName("QAccessibleTextSelectionEvent_SetSelection")]
	public static extern void QAccessibleTextSelectionEvent_SetSelection(Self* c_this, int32 start, int32 end);
	[LinkName("QAccessibleTextSelectionEvent_SelectionStart")]
	public static extern int32 QAccessibleTextSelectionEvent_SelectionStart(Self* c_this);
	[LinkName("QAccessibleTextSelectionEvent_SelectionEnd")]
	public static extern int32 QAccessibleTextSelectionEvent_SelectionEnd(Self* c_this);
}
public struct QAccessibleTextInsertEvent : QAccessibleTextCursorEvent
{
	[LinkName("QAccessibleTextInsertEvent_new")]
	public static extern QAccessibleTextInsertEvent* QAccessibleTextInsertEvent_new(QObject* obj, int32 position, libqt_string text);
	[LinkName("QAccessibleTextInsertEvent_new2")]
	public static extern QAccessibleTextInsertEvent* QAccessibleTextInsertEvent_new2(QAccessibleInterface* iface, int32 position, libqt_string text);
	[LinkName("QAccessibleTextInsertEvent_TextInserted")]
	public static extern libqt_string QAccessibleTextInsertEvent_TextInserted(Self* c_this);
	[LinkName("QAccessibleTextInsertEvent_ChangePosition")]
	public static extern int32 QAccessibleTextInsertEvent_ChangePosition(Self* c_this);
}
public struct QAccessibleTextRemoveEvent : QAccessibleTextCursorEvent
{
	[LinkName("QAccessibleTextRemoveEvent_new")]
	public static extern QAccessibleTextRemoveEvent* QAccessibleTextRemoveEvent_new(QObject* obj, int32 position, libqt_string text);
	[LinkName("QAccessibleTextRemoveEvent_new2")]
	public static extern QAccessibleTextRemoveEvent* QAccessibleTextRemoveEvent_new2(QAccessibleInterface* iface, int32 position, libqt_string text);
	[LinkName("QAccessibleTextRemoveEvent_TextRemoved")]
	public static extern libqt_string QAccessibleTextRemoveEvent_TextRemoved(Self* c_this);
	[LinkName("QAccessibleTextRemoveEvent_ChangePosition")]
	public static extern int32 QAccessibleTextRemoveEvent_ChangePosition(Self* c_this);
}
public struct QAccessibleTextUpdateEvent : QAccessibleTextCursorEvent
{
	[LinkName("QAccessibleTextUpdateEvent_new")]
	public static extern QAccessibleTextUpdateEvent* QAccessibleTextUpdateEvent_new(QObject* obj, int32 position, libqt_string oldText, libqt_string text);
	[LinkName("QAccessibleTextUpdateEvent_new2")]
	public static extern QAccessibleTextUpdateEvent* QAccessibleTextUpdateEvent_new2(QAccessibleInterface* iface, int32 position, libqt_string oldText, libqt_string text);
	[LinkName("QAccessibleTextUpdateEvent_TextRemoved")]
	public static extern libqt_string QAccessibleTextUpdateEvent_TextRemoved(Self* c_this);
	[LinkName("QAccessibleTextUpdateEvent_TextInserted")]
	public static extern libqt_string QAccessibleTextUpdateEvent_TextInserted(Self* c_this);
	[LinkName("QAccessibleTextUpdateEvent_ChangePosition")]
	public static extern int32 QAccessibleTextUpdateEvent_ChangePosition(Self* c_this);
}
public struct QAccessibleValueChangeEvent : QAccessibleEvent
{
	[LinkName("QAccessibleValueChangeEvent_new")]
	public static extern QAccessibleValueChangeEvent* QAccessibleValueChangeEvent_new(QObject* obj, QVariant* val);
	[LinkName("QAccessibleValueChangeEvent_new2")]
	public static extern QAccessibleValueChangeEvent* QAccessibleValueChangeEvent_new2(QAccessibleInterface* iface, QVariant* val);
	[LinkName("QAccessibleValueChangeEvent_SetValue")]
	public static extern void QAccessibleValueChangeEvent_SetValue(Self* c_this, QVariant* val);
	[LinkName("QAccessibleValueChangeEvent_Value")]
	public static extern QVariant QAccessibleValueChangeEvent_Value(Self* c_this);
}
public struct QAccessibleTableModelChangeEvent : QAccessibleEvent
{
	[LinkName("QAccessibleTableModelChangeEvent_new")]
	public static extern QAccessibleTableModelChangeEvent* QAccessibleTableModelChangeEvent_new(QObject* obj, int64 changeType);
	[LinkName("QAccessibleTableModelChangeEvent_new2")]
	public static extern QAccessibleTableModelChangeEvent* QAccessibleTableModelChangeEvent_new2(QAccessibleInterface* iface, int64 changeType);
	[LinkName("QAccessibleTableModelChangeEvent_SetModelChangeType")]
	public static extern void QAccessibleTableModelChangeEvent_SetModelChangeType(Self* c_this, int64 changeType);
	[LinkName("QAccessibleTableModelChangeEvent_ModelChangeType")]
	public static extern int64 QAccessibleTableModelChangeEvent_ModelChangeType(Self* c_this);
	[LinkName("QAccessibleTableModelChangeEvent_SetFirstRow")]
	public static extern void QAccessibleTableModelChangeEvent_SetFirstRow(Self* c_this, int32 row);
	[LinkName("QAccessibleTableModelChangeEvent_SetFirstColumn")]
	public static extern void QAccessibleTableModelChangeEvent_SetFirstColumn(Self* c_this, int32 col);
	[LinkName("QAccessibleTableModelChangeEvent_SetLastRow")]
	public static extern void QAccessibleTableModelChangeEvent_SetLastRow(Self* c_this, int32 row);
	[LinkName("QAccessibleTableModelChangeEvent_SetLastColumn")]
	public static extern void QAccessibleTableModelChangeEvent_SetLastColumn(Self* c_this, int32 col);
	[LinkName("QAccessibleTableModelChangeEvent_FirstRow")]
	public static extern int32 QAccessibleTableModelChangeEvent_FirstRow(Self* c_this);
	[LinkName("QAccessibleTableModelChangeEvent_FirstColumn")]
	public static extern int32 QAccessibleTableModelChangeEvent_FirstColumn(Self* c_this);
	[LinkName("QAccessibleTableModelChangeEvent_LastRow")]
	public static extern int32 QAccessibleTableModelChangeEvent_LastRow(Self* c_this);
	[LinkName("QAccessibleTableModelChangeEvent_LastColumn")]
	public static extern int32 QAccessibleTableModelChangeEvent_LastColumn(Self* c_this);
}