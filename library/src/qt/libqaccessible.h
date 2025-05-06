#pragma once
#ifndef SRC_QTC_LIBQACCESSIBLE_H
#define SRC_QTC_LIBQACCESSIBLE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QAccessible__State)
typedef QAccessible::State QAccessible__State;
#endif
#else
typedef struct QAccessibleActionInterface QAccessibleActionInterface;
typedef struct QAccessibleEditableTextInterface QAccessibleEditableTextInterface;
typedef struct QAccessibleEvent QAccessibleEvent;
typedef struct QAccessibleHyperlinkInterface QAccessibleHyperlinkInterface;
typedef struct QAccessibleImageInterface QAccessibleImageInterface;
typedef struct QAccessibleInterface QAccessibleInterface;
typedef struct QAccessibleStateChangeEvent QAccessibleStateChangeEvent;
typedef struct QAccessibleTableCellInterface QAccessibleTableCellInterface;
typedef struct QAccessibleTableInterface QAccessibleTableInterface;
typedef struct QAccessibleTableModelChangeEvent QAccessibleTableModelChangeEvent;
typedef struct QAccessibleTextCursorEvent QAccessibleTextCursorEvent;
typedef struct QAccessibleTextInsertEvent QAccessibleTextInsertEvent;
typedef struct QAccessibleTextInterface QAccessibleTextInterface;
typedef struct QAccessibleTextRemoveEvent QAccessibleTextRemoveEvent;
typedef struct QAccessibleTextSelectionEvent QAccessibleTextSelectionEvent;
typedef struct QAccessibleTextUpdateEvent QAccessibleTextUpdateEvent;
typedef struct QAccessibleValueChangeEvent QAccessibleValueChangeEvent;
typedef struct QAccessibleValueInterface QAccessibleValueInterface;
typedef struct QAccessible__State QAccessible__State;
typedef struct QColor QColor;
typedef struct QObject QObject;
typedef struct QPoint QPoint;
typedef struct QRect QRect;
typedef struct QSize QSize;
typedef struct QVariant QVariant;
typedef struct QWindow QWindow;
#endif

#ifdef __cplusplus
typedef QAccessibleTableModelChangeEvent::ModelChangeType ModelChangeType; // C++ enum
#else
typedef int ModelChangeType; // C ABI enum
#endif

QTLIBC_API bool QAccessibleInterface_IsValid(const QAccessibleInterface* self);
QTLIBC_API QObject* QAccessibleInterface_Object(const QAccessibleInterface* self);
QTLIBC_API QWindow* QAccessibleInterface_Window(const QAccessibleInterface* self);
QTLIBC_API libqt_list /* of libqt_pair  tuple of QAccessibleInterface* and int  */ QAccessibleInterface_Relations(const QAccessibleInterface* self, int match);
QTLIBC_API QAccessibleInterface* QAccessibleInterface_FocusChild(const QAccessibleInterface* self);
QTLIBC_API QAccessibleInterface* QAccessibleInterface_ChildAt(const QAccessibleInterface* self, int x, int y);
QTLIBC_API QAccessibleInterface* QAccessibleInterface_Parent(const QAccessibleInterface* self);
QTLIBC_API QAccessibleInterface* QAccessibleInterface_Child(const QAccessibleInterface* self, int index);
QTLIBC_API int QAccessibleInterface_ChildCount(const QAccessibleInterface* self);
QTLIBC_API int QAccessibleInterface_IndexOfChild(const QAccessibleInterface* self, QAccessibleInterface* param1);
QTLIBC_API libqt_string QAccessibleInterface_Text(const QAccessibleInterface* self, int t);
QTLIBC_API void QAccessibleInterface_SetText(QAccessibleInterface* self, int t, libqt_string text);
QTLIBC_API QRect* QAccessibleInterface_Rect(const QAccessibleInterface* self);
QTLIBC_API int QAccessibleInterface_Role(const QAccessibleInterface* self);
QTLIBC_API QAccessible__State* QAccessibleInterface_State(const QAccessibleInterface* self);
QTLIBC_API QColor* QAccessibleInterface_ForegroundColor(const QAccessibleInterface* self);
QTLIBC_API QColor* QAccessibleInterface_BackgroundColor(const QAccessibleInterface* self);
QTLIBC_API QAccessibleTextInterface* QAccessibleInterface_TextInterface(QAccessibleInterface* self);
QTLIBC_API QAccessibleEditableTextInterface* QAccessibleInterface_EditableTextInterface(QAccessibleInterface* self);
QTLIBC_API QAccessibleValueInterface* QAccessibleInterface_ValueInterface(QAccessibleInterface* self);
QTLIBC_API QAccessibleActionInterface* QAccessibleInterface_ActionInterface(QAccessibleInterface* self);
QTLIBC_API QAccessibleImageInterface* QAccessibleInterface_ImageInterface(QAccessibleInterface* self);
QTLIBC_API QAccessibleTableInterface* QAccessibleInterface_TableInterface(QAccessibleInterface* self);
QTLIBC_API QAccessibleTableCellInterface* QAccessibleInterface_TableCellInterface(QAccessibleInterface* self);
QTLIBC_API QAccessibleHyperlinkInterface* QAccessibleInterface_HyperlinkInterface(QAccessibleInterface* self);
QTLIBC_API void QAccessibleInterface_VirtualHook(QAccessibleInterface* self, int id, void* data);
QTLIBC_API void* QAccessibleInterface_InterfaceCast(QAccessibleInterface* self, int param1);

QTLIBC_API void QAccessibleTextInterface_Selection(const QAccessibleTextInterface* self, int selectionIndex, int* startOffset, int* endOffset);
QTLIBC_API int QAccessibleTextInterface_SelectionCount(const QAccessibleTextInterface* self);
QTLIBC_API void QAccessibleTextInterface_AddSelection(QAccessibleTextInterface* self, int startOffset, int endOffset);
QTLIBC_API void QAccessibleTextInterface_RemoveSelection(QAccessibleTextInterface* self, int selectionIndex);
QTLIBC_API void QAccessibleTextInterface_SetSelection(QAccessibleTextInterface* self, int selectionIndex, int startOffset, int endOffset);
QTLIBC_API int QAccessibleTextInterface_CursorPosition(const QAccessibleTextInterface* self);
QTLIBC_API void QAccessibleTextInterface_SetCursorPosition(QAccessibleTextInterface* self, int position);
QTLIBC_API libqt_string QAccessibleTextInterface_Text(const QAccessibleTextInterface* self, int startOffset, int endOffset);
QTLIBC_API libqt_string QAccessibleTextInterface_TextBeforeOffset(const QAccessibleTextInterface* self, int offset, int boundaryType, int* startOffset, int* endOffset);
QTLIBC_API libqt_string QAccessibleTextInterface_TextAfterOffset(const QAccessibleTextInterface* self, int offset, int boundaryType, int* startOffset, int* endOffset);
QTLIBC_API libqt_string QAccessibleTextInterface_TextAtOffset(const QAccessibleTextInterface* self, int offset, int boundaryType, int* startOffset, int* endOffset);
QTLIBC_API int QAccessibleTextInterface_CharacterCount(const QAccessibleTextInterface* self);
QTLIBC_API QRect* QAccessibleTextInterface_CharacterRect(const QAccessibleTextInterface* self, int offset);
QTLIBC_API int QAccessibleTextInterface_OffsetAtPoint(const QAccessibleTextInterface* self, QPoint* point);
QTLIBC_API void QAccessibleTextInterface_ScrollToSubstring(QAccessibleTextInterface* self, int startIndex, int endIndex);
QTLIBC_API libqt_string QAccessibleTextInterface_Attributes(const QAccessibleTextInterface* self, int offset, int* startOffset, int* endOffset);
QTLIBC_API void QAccessibleTextInterface_OperatorAssign(QAccessibleTextInterface* self, QAccessibleTextInterface* param1);
QTLIBC_API void QAccessibleTextInterface_Delete(QAccessibleTextInterface* self);

QTLIBC_API void QAccessibleEditableTextInterface_DeleteText(QAccessibleEditableTextInterface* self, int startOffset, int endOffset);
QTLIBC_API void QAccessibleEditableTextInterface_InsertText(QAccessibleEditableTextInterface* self, int offset, libqt_string text);
QTLIBC_API void QAccessibleEditableTextInterface_ReplaceText(QAccessibleEditableTextInterface* self, int startOffset, int endOffset, libqt_string text);
QTLIBC_API void QAccessibleEditableTextInterface_OperatorAssign(QAccessibleEditableTextInterface* self, QAccessibleEditableTextInterface* param1);
QTLIBC_API void QAccessibleEditableTextInterface_Delete(QAccessibleEditableTextInterface* self);

QTLIBC_API QVariant* QAccessibleValueInterface_CurrentValue(const QAccessibleValueInterface* self);
QTLIBC_API void QAccessibleValueInterface_SetCurrentValue(QAccessibleValueInterface* self, QVariant* value);
QTLIBC_API QVariant* QAccessibleValueInterface_MaximumValue(const QAccessibleValueInterface* self);
QTLIBC_API QVariant* QAccessibleValueInterface_MinimumValue(const QAccessibleValueInterface* self);
QTLIBC_API QVariant* QAccessibleValueInterface_MinimumStepSize(const QAccessibleValueInterface* self);
QTLIBC_API void QAccessibleValueInterface_OperatorAssign(QAccessibleValueInterface* self, QAccessibleValueInterface* param1);
QTLIBC_API void QAccessibleValueInterface_Delete(QAccessibleValueInterface* self);

QTLIBC_API bool QAccessibleTableCellInterface_IsSelected(const QAccessibleTableCellInterface* self);
QTLIBC_API libqt_list /* of QAccessibleInterface* */ QAccessibleTableCellInterface_ColumnHeaderCells(const QAccessibleTableCellInterface* self);
QTLIBC_API libqt_list /* of QAccessibleInterface* */ QAccessibleTableCellInterface_RowHeaderCells(const QAccessibleTableCellInterface* self);
QTLIBC_API int QAccessibleTableCellInterface_ColumnIndex(const QAccessibleTableCellInterface* self);
QTLIBC_API int QAccessibleTableCellInterface_RowIndex(const QAccessibleTableCellInterface* self);
QTLIBC_API int QAccessibleTableCellInterface_ColumnExtent(const QAccessibleTableCellInterface* self);
QTLIBC_API int QAccessibleTableCellInterface_RowExtent(const QAccessibleTableCellInterface* self);
QTLIBC_API QAccessibleInterface* QAccessibleTableCellInterface_Table(const QAccessibleTableCellInterface* self);
QTLIBC_API void QAccessibleTableCellInterface_OperatorAssign(QAccessibleTableCellInterface* self, QAccessibleTableCellInterface* param1);
QTLIBC_API void QAccessibleTableCellInterface_Delete(QAccessibleTableCellInterface* self);

QTLIBC_API QAccessibleInterface* QAccessibleTableInterface_Caption(const QAccessibleTableInterface* self);
QTLIBC_API QAccessibleInterface* QAccessibleTableInterface_Summary(const QAccessibleTableInterface* self);
QTLIBC_API QAccessibleInterface* QAccessibleTableInterface_CellAt(const QAccessibleTableInterface* self, int row, int column);
QTLIBC_API int QAccessibleTableInterface_SelectedCellCount(const QAccessibleTableInterface* self);
QTLIBC_API libqt_list /* of QAccessibleInterface* */ QAccessibleTableInterface_SelectedCells(const QAccessibleTableInterface* self);
QTLIBC_API libqt_string QAccessibleTableInterface_ColumnDescription(const QAccessibleTableInterface* self, int column);
QTLIBC_API libqt_string QAccessibleTableInterface_RowDescription(const QAccessibleTableInterface* self, int row);
QTLIBC_API int QAccessibleTableInterface_SelectedColumnCount(const QAccessibleTableInterface* self);
QTLIBC_API int QAccessibleTableInterface_SelectedRowCount(const QAccessibleTableInterface* self);
QTLIBC_API int QAccessibleTableInterface_ColumnCount(const QAccessibleTableInterface* self);
QTLIBC_API int QAccessibleTableInterface_RowCount(const QAccessibleTableInterface* self);
QTLIBC_API libqt_list /* of int */ QAccessibleTableInterface_SelectedColumns(const QAccessibleTableInterface* self);
QTLIBC_API libqt_list /* of int */ QAccessibleTableInterface_SelectedRows(const QAccessibleTableInterface* self);
QTLIBC_API bool QAccessibleTableInterface_IsColumnSelected(const QAccessibleTableInterface* self, int column);
QTLIBC_API bool QAccessibleTableInterface_IsRowSelected(const QAccessibleTableInterface* self, int row);
QTLIBC_API bool QAccessibleTableInterface_SelectRow(QAccessibleTableInterface* self, int row);
QTLIBC_API bool QAccessibleTableInterface_SelectColumn(QAccessibleTableInterface* self, int column);
QTLIBC_API bool QAccessibleTableInterface_UnselectRow(QAccessibleTableInterface* self, int row);
QTLIBC_API bool QAccessibleTableInterface_UnselectColumn(QAccessibleTableInterface* self, int column);
QTLIBC_API void QAccessibleTableInterface_ModelChange(QAccessibleTableInterface* self, QAccessibleTableModelChangeEvent* event);
QTLIBC_API void QAccessibleTableInterface_Delete(QAccessibleTableInterface* self);

QTLIBC_API libqt_string QAccessibleActionInterface_Tr(const char* sourceText);
QTLIBC_API libqt_list /* of libqt_string */ QAccessibleActionInterface_ActionNames(const QAccessibleActionInterface* self);
QTLIBC_API libqt_string QAccessibleActionInterface_LocalizedActionName(const QAccessibleActionInterface* self, libqt_string name);
QTLIBC_API libqt_string QAccessibleActionInterface_LocalizedActionDescription(const QAccessibleActionInterface* self, libqt_string name);
QTLIBC_API void QAccessibleActionInterface_DoAction(QAccessibleActionInterface* self, libqt_string actionName);
QTLIBC_API libqt_list /* of libqt_string */ QAccessibleActionInterface_KeyBindingsForAction(const QAccessibleActionInterface* self, libqt_string actionName);
QTLIBC_API libqt_string QAccessibleActionInterface_PressAction();
QTLIBC_API libqt_string QAccessibleActionInterface_IncreaseAction();
QTLIBC_API libqt_string QAccessibleActionInterface_DecreaseAction();
QTLIBC_API libqt_string QAccessibleActionInterface_ShowMenuAction();
QTLIBC_API libqt_string QAccessibleActionInterface_SetFocusAction();
QTLIBC_API libqt_string QAccessibleActionInterface_ToggleAction();
QTLIBC_API libqt_string QAccessibleActionInterface_ScrollLeftAction();
QTLIBC_API libqt_string QAccessibleActionInterface_ScrollRightAction();
QTLIBC_API libqt_string QAccessibleActionInterface_ScrollUpAction();
QTLIBC_API libqt_string QAccessibleActionInterface_ScrollDownAction();
QTLIBC_API libqt_string QAccessibleActionInterface_NextPageAction();
QTLIBC_API libqt_string QAccessibleActionInterface_PreviousPageAction();
QTLIBC_API void QAccessibleActionInterface_OperatorAssign(QAccessibleActionInterface* self, QAccessibleActionInterface* param1);
QTLIBC_API libqt_string QAccessibleActionInterface_Tr2(const char* sourceText, const char* disambiguation);
QTLIBC_API libqt_string QAccessibleActionInterface_Tr3(const char* sourceText, const char* disambiguation, int n);
QTLIBC_API void QAccessibleActionInterface_Delete(QAccessibleActionInterface* self);

QTLIBC_API libqt_string QAccessibleImageInterface_ImageDescription(const QAccessibleImageInterface* self);
QTLIBC_API QSize* QAccessibleImageInterface_ImageSize(const QAccessibleImageInterface* self);
QTLIBC_API QPoint* QAccessibleImageInterface_ImagePosition(const QAccessibleImageInterface* self);
QTLIBC_API void QAccessibleImageInterface_OperatorAssign(QAccessibleImageInterface* self, QAccessibleImageInterface* param1);
QTLIBC_API void QAccessibleImageInterface_Delete(QAccessibleImageInterface* self);

QTLIBC_API libqt_string QAccessibleHyperlinkInterface_Anchor(const QAccessibleHyperlinkInterface* self);
QTLIBC_API libqt_string QAccessibleHyperlinkInterface_AnchorTarget(const QAccessibleHyperlinkInterface* self);
QTLIBC_API int QAccessibleHyperlinkInterface_StartIndex(const QAccessibleHyperlinkInterface* self);
QTLIBC_API int QAccessibleHyperlinkInterface_EndIndex(const QAccessibleHyperlinkInterface* self);
QTLIBC_API bool QAccessibleHyperlinkInterface_IsValid(const QAccessibleHyperlinkInterface* self);
QTLIBC_API void QAccessibleHyperlinkInterface_OperatorAssign(QAccessibleHyperlinkInterface* self, QAccessibleHyperlinkInterface* param1);
QTLIBC_API void QAccessibleHyperlinkInterface_Delete(QAccessibleHyperlinkInterface* self);

QTLIBC_API QAccessibleEvent* QAccessibleEvent_new(QObject* obj, int typ);
QTLIBC_API QAccessibleEvent* QAccessibleEvent_new2(QAccessibleInterface* iface, int typ);
QTLIBC_API int QAccessibleEvent_Type(const QAccessibleEvent* self);
QTLIBC_API QObject* QAccessibleEvent_Object(const QAccessibleEvent* self);
QTLIBC_API unsigned int QAccessibleEvent_UniqueId(const QAccessibleEvent* self);
QTLIBC_API void QAccessibleEvent_SetChild(QAccessibleEvent* self, int chld);
QTLIBC_API int QAccessibleEvent_Child(const QAccessibleEvent* self);
QTLIBC_API QAccessibleInterface* QAccessibleEvent_AccessibleInterface(const QAccessibleEvent* self);
QTLIBC_API void QAccessibleEvent_OnAccessibleInterface(const QAccessibleEvent* self, intptr_t slot);
QTLIBC_API QAccessibleInterface* QAccessibleEvent_QBaseAccessibleInterface(const QAccessibleEvent* self);
QTLIBC_API void QAccessibleEvent_Delete(QAccessibleEvent* self);

QTLIBC_API QAccessibleStateChangeEvent* QAccessibleStateChangeEvent_new(QObject* obj, QAccessible__State* state);
QTLIBC_API QAccessibleStateChangeEvent* QAccessibleStateChangeEvent_new2(QAccessibleInterface* iface, QAccessible__State* state);
QTLIBC_API QAccessible__State* QAccessibleStateChangeEvent_ChangedStates(const QAccessibleStateChangeEvent* self);
QTLIBC_API QAccessibleInterface* QAccessibleStateChangeEvent_AccessibleInterface(const QAccessibleStateChangeEvent* self);
QTLIBC_API void QAccessibleStateChangeEvent_OnAccessibleInterface(const QAccessibleStateChangeEvent* self, intptr_t slot);
QTLIBC_API QAccessibleInterface* QAccessibleStateChangeEvent_QBaseAccessibleInterface(const QAccessibleStateChangeEvent* self);
QTLIBC_API void QAccessibleStateChangeEvent_Delete(QAccessibleStateChangeEvent* self);

QTLIBC_API QAccessibleTextCursorEvent* QAccessibleTextCursorEvent_new(QObject* obj, int cursorPos);
QTLIBC_API QAccessibleTextCursorEvent* QAccessibleTextCursorEvent_new2(QAccessibleInterface* iface, int cursorPos);
QTLIBC_API void QAccessibleTextCursorEvent_SetCursorPosition(QAccessibleTextCursorEvent* self, int position);
QTLIBC_API int QAccessibleTextCursorEvent_CursorPosition(const QAccessibleTextCursorEvent* self);
QTLIBC_API QAccessibleInterface* QAccessibleTextCursorEvent_AccessibleInterface(const QAccessibleTextCursorEvent* self);
QTLIBC_API void QAccessibleTextCursorEvent_OnAccessibleInterface(const QAccessibleTextCursorEvent* self, intptr_t slot);
QTLIBC_API QAccessibleInterface* QAccessibleTextCursorEvent_QBaseAccessibleInterface(const QAccessibleTextCursorEvent* self);
QTLIBC_API void QAccessibleTextCursorEvent_Delete(QAccessibleTextCursorEvent* self);

QTLIBC_API QAccessibleTextSelectionEvent* QAccessibleTextSelectionEvent_new(QObject* obj, int start, int end);
QTLIBC_API QAccessibleTextSelectionEvent* QAccessibleTextSelectionEvent_new2(QAccessibleInterface* iface, int start, int end);
QTLIBC_API void QAccessibleTextSelectionEvent_SetSelection(QAccessibleTextSelectionEvent* self, int start, int end);
QTLIBC_API int QAccessibleTextSelectionEvent_SelectionStart(const QAccessibleTextSelectionEvent* self);
QTLIBC_API int QAccessibleTextSelectionEvent_SelectionEnd(const QAccessibleTextSelectionEvent* self);
QTLIBC_API QAccessibleInterface* QAccessibleTextSelectionEvent_AccessibleInterface(const QAccessibleTextSelectionEvent* self);
QTLIBC_API void QAccessibleTextSelectionEvent_OnAccessibleInterface(const QAccessibleTextSelectionEvent* self, intptr_t slot);
QTLIBC_API QAccessibleInterface* QAccessibleTextSelectionEvent_QBaseAccessibleInterface(const QAccessibleTextSelectionEvent* self);
QTLIBC_API void QAccessibleTextSelectionEvent_Delete(QAccessibleTextSelectionEvent* self);

QTLIBC_API QAccessibleTextInsertEvent* QAccessibleTextInsertEvent_new(QObject* obj, int position, libqt_string text);
QTLIBC_API QAccessibleTextInsertEvent* QAccessibleTextInsertEvent_new2(QAccessibleInterface* iface, int position, libqt_string text);
QTLIBC_API libqt_string QAccessibleTextInsertEvent_TextInserted(const QAccessibleTextInsertEvent* self);
QTLIBC_API int QAccessibleTextInsertEvent_ChangePosition(const QAccessibleTextInsertEvent* self);
QTLIBC_API QAccessibleInterface* QAccessibleTextInsertEvent_AccessibleInterface(const QAccessibleTextInsertEvent* self);
QTLIBC_API void QAccessibleTextInsertEvent_OnAccessibleInterface(const QAccessibleTextInsertEvent* self, intptr_t slot);
QTLIBC_API QAccessibleInterface* QAccessibleTextInsertEvent_QBaseAccessibleInterface(const QAccessibleTextInsertEvent* self);
QTLIBC_API void QAccessibleTextInsertEvent_Delete(QAccessibleTextInsertEvent* self);

QTLIBC_API QAccessibleTextRemoveEvent* QAccessibleTextRemoveEvent_new(QObject* obj, int position, libqt_string text);
QTLIBC_API QAccessibleTextRemoveEvent* QAccessibleTextRemoveEvent_new2(QAccessibleInterface* iface, int position, libqt_string text);
QTLIBC_API libqt_string QAccessibleTextRemoveEvent_TextRemoved(const QAccessibleTextRemoveEvent* self);
QTLIBC_API int QAccessibleTextRemoveEvent_ChangePosition(const QAccessibleTextRemoveEvent* self);
QTLIBC_API QAccessibleInterface* QAccessibleTextRemoveEvent_AccessibleInterface(const QAccessibleTextRemoveEvent* self);
QTLIBC_API void QAccessibleTextRemoveEvent_OnAccessibleInterface(const QAccessibleTextRemoveEvent* self, intptr_t slot);
QTLIBC_API QAccessibleInterface* QAccessibleTextRemoveEvent_QBaseAccessibleInterface(const QAccessibleTextRemoveEvent* self);
QTLIBC_API void QAccessibleTextRemoveEvent_Delete(QAccessibleTextRemoveEvent* self);

QTLIBC_API QAccessibleTextUpdateEvent* QAccessibleTextUpdateEvent_new(QObject* obj, int position, libqt_string oldText, libqt_string text);
QTLIBC_API QAccessibleTextUpdateEvent* QAccessibleTextUpdateEvent_new2(QAccessibleInterface* iface, int position, libqt_string oldText, libqt_string text);
QTLIBC_API libqt_string QAccessibleTextUpdateEvent_TextRemoved(const QAccessibleTextUpdateEvent* self);
QTLIBC_API libqt_string QAccessibleTextUpdateEvent_TextInserted(const QAccessibleTextUpdateEvent* self);
QTLIBC_API int QAccessibleTextUpdateEvent_ChangePosition(const QAccessibleTextUpdateEvent* self);
QTLIBC_API QAccessibleInterface* QAccessibleTextUpdateEvent_AccessibleInterface(const QAccessibleTextUpdateEvent* self);
QTLIBC_API void QAccessibleTextUpdateEvent_OnAccessibleInterface(const QAccessibleTextUpdateEvent* self, intptr_t slot);
QTLIBC_API QAccessibleInterface* QAccessibleTextUpdateEvent_QBaseAccessibleInterface(const QAccessibleTextUpdateEvent* self);
QTLIBC_API void QAccessibleTextUpdateEvent_Delete(QAccessibleTextUpdateEvent* self);

QTLIBC_API QAccessibleValueChangeEvent* QAccessibleValueChangeEvent_new(QObject* obj, QVariant* val);
QTLIBC_API QAccessibleValueChangeEvent* QAccessibleValueChangeEvent_new2(QAccessibleInterface* iface, QVariant* val);
QTLIBC_API void QAccessibleValueChangeEvent_SetValue(QAccessibleValueChangeEvent* self, QVariant* val);
QTLIBC_API QVariant* QAccessibleValueChangeEvent_Value(const QAccessibleValueChangeEvent* self);
QTLIBC_API QAccessibleInterface* QAccessibleValueChangeEvent_AccessibleInterface(const QAccessibleValueChangeEvent* self);
QTLIBC_API void QAccessibleValueChangeEvent_OnAccessibleInterface(const QAccessibleValueChangeEvent* self, intptr_t slot);
QTLIBC_API QAccessibleInterface* QAccessibleValueChangeEvent_QBaseAccessibleInterface(const QAccessibleValueChangeEvent* self);
QTLIBC_API void QAccessibleValueChangeEvent_Delete(QAccessibleValueChangeEvent* self);

QTLIBC_API QAccessibleTableModelChangeEvent* QAccessibleTableModelChangeEvent_new(QObject* obj, int changeType);
QTLIBC_API QAccessibleTableModelChangeEvent* QAccessibleTableModelChangeEvent_new2(QAccessibleInterface* iface, int changeType);
QTLIBC_API void QAccessibleTableModelChangeEvent_SetModelChangeType(QAccessibleTableModelChangeEvent* self, int changeType);
QTLIBC_API int QAccessibleTableModelChangeEvent_ModelChangeType(const QAccessibleTableModelChangeEvent* self);
QTLIBC_API void QAccessibleTableModelChangeEvent_SetFirstRow(QAccessibleTableModelChangeEvent* self, int row);
QTLIBC_API void QAccessibleTableModelChangeEvent_SetFirstColumn(QAccessibleTableModelChangeEvent* self, int col);
QTLIBC_API void QAccessibleTableModelChangeEvent_SetLastRow(QAccessibleTableModelChangeEvent* self, int row);
QTLIBC_API void QAccessibleTableModelChangeEvent_SetLastColumn(QAccessibleTableModelChangeEvent* self, int col);
QTLIBC_API int QAccessibleTableModelChangeEvent_FirstRow(const QAccessibleTableModelChangeEvent* self);
QTLIBC_API int QAccessibleTableModelChangeEvent_FirstColumn(const QAccessibleTableModelChangeEvent* self);
QTLIBC_API int QAccessibleTableModelChangeEvent_LastRow(const QAccessibleTableModelChangeEvent* self);
QTLIBC_API int QAccessibleTableModelChangeEvent_LastColumn(const QAccessibleTableModelChangeEvent* self);
QTLIBC_API QAccessibleInterface* QAccessibleTableModelChangeEvent_AccessibleInterface(const QAccessibleTableModelChangeEvent* self);
QTLIBC_API void QAccessibleTableModelChangeEvent_OnAccessibleInterface(const QAccessibleTableModelChangeEvent* self, intptr_t slot);
QTLIBC_API QAccessibleInterface* QAccessibleTableModelChangeEvent_QBaseAccessibleInterface(const QAccessibleTableModelChangeEvent* self);
QTLIBC_API void QAccessibleTableModelChangeEvent_Delete(QAccessibleTableModelChangeEvent* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
