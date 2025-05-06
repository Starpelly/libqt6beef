using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QLineEdit__ActionPosition
{
	LeadingPosition = 0,
	TrailingPosition = 1,
}
[AllowDuplicates]
public enum QLineEdit__EchoMode
{
	Normal = 0,
	NoEcho = 1,
	Password = 2,
	PasswordEchoOnEdit = 3,
}
public struct QLineEdit
{
	[LinkName("QLineEdit_new")]
	public static extern void* QLineEdit_new(QWidget parent);
	[LinkName("QLineEdit_new2")]
	public static extern void* QLineEdit_new2();
	[LinkName("QLineEdit_new3")]
	public static extern void* QLineEdit_new3(char8[] param1);
	[LinkName("QLineEdit_new4")]
	public static extern void* QLineEdit_new4(char8[] param1, QWidget parent);
	[LinkName("QLineEdit_MetaObject")]
	public static extern QMetaObject QLineEdit_MetaObject(void* c_this);
	[LinkName("QLineEdit_Metacast")]
	public static extern void QLineEdit_Metacast(void* c_this, char8[] param1);
	[LinkName("QLineEdit_Metacall")]
	public static extern int32 QLineEdit_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QLineEdit_Tr")]
	public static extern char8[] QLineEdit_Tr(char8[] s);
	[LinkName("QLineEdit_Text")]
	public static extern char8[] QLineEdit_Text(void* c_this);
	[LinkName("QLineEdit_DisplayText")]
	public static extern char8[] QLineEdit_DisplayText(void* c_this);
	[LinkName("QLineEdit_PlaceholderText")]
	public static extern char8[] QLineEdit_PlaceholderText(void* c_this);
	[LinkName("QLineEdit_SetPlaceholderText")]
	public static extern void QLineEdit_SetPlaceholderText(void* c_this, char8[] placeholderText);
	[LinkName("QLineEdit_MaxLength")]
	public static extern int32 QLineEdit_MaxLength(void* c_this);
	[LinkName("QLineEdit_SetMaxLength")]
	public static extern void QLineEdit_SetMaxLength(void* c_this, int32 maxLength);
	[LinkName("QLineEdit_SetFrame")]
	public static extern void QLineEdit_SetFrame(void* c_this, bool frame);
	[LinkName("QLineEdit_HasFrame")]
	public static extern bool QLineEdit_HasFrame(void* c_this);
	[LinkName("QLineEdit_SetClearButtonEnabled")]
	public static extern void QLineEdit_SetClearButtonEnabled(void* c_this, bool enable);
	[LinkName("QLineEdit_IsClearButtonEnabled")]
	public static extern bool QLineEdit_IsClearButtonEnabled(void* c_this);
	[LinkName("QLineEdit_EchoMode")]
	public static extern int64 QLineEdit_EchoMode(void* c_this);
	[LinkName("QLineEdit_SetEchoMode")]
	public static extern void QLineEdit_SetEchoMode(void* c_this, int64 echoMode);
	[LinkName("QLineEdit_IsReadOnly")]
	public static extern bool QLineEdit_IsReadOnly(void* c_this);
	[LinkName("QLineEdit_SetReadOnly")]
	public static extern void QLineEdit_SetReadOnly(void* c_this, bool readOnly);
	[LinkName("QLineEdit_SetValidator")]
	public static extern void QLineEdit_SetValidator(void* c_this, QValidator validator);
	[LinkName("QLineEdit_Validator")]
	public static extern QValidator QLineEdit_Validator(void* c_this);
	[LinkName("QLineEdit_SetCompleter")]
	public static extern void QLineEdit_SetCompleter(void* c_this, QCompleter completer);
	[LinkName("QLineEdit_Completer")]
	public static extern QCompleter QLineEdit_Completer(void* c_this);
	[LinkName("QLineEdit_SizeHint")]
	public static extern QSize QLineEdit_SizeHint(void* c_this);
	[LinkName("QLineEdit_MinimumSizeHint")]
	public static extern QSize QLineEdit_MinimumSizeHint(void* c_this);
	[LinkName("QLineEdit_CursorPosition")]
	public static extern int32 QLineEdit_CursorPosition(void* c_this);
	[LinkName("QLineEdit_SetCursorPosition")]
	public static extern void QLineEdit_SetCursorPosition(void* c_this, int32 cursorPosition);
	[LinkName("QLineEdit_CursorPositionAt")]
	public static extern int32 QLineEdit_CursorPositionAt(void* c_this, QPoint pos);
	[LinkName("QLineEdit_SetAlignment")]
	public static extern void QLineEdit_SetAlignment(void* c_this, int64 flag);
	[LinkName("QLineEdit_Alignment")]
	public static extern int64 QLineEdit_Alignment(void* c_this);
	[LinkName("QLineEdit_CursorForward")]
	public static extern void QLineEdit_CursorForward(void* c_this, bool mark);
	[LinkName("QLineEdit_CursorBackward")]
	public static extern void QLineEdit_CursorBackward(void* c_this, bool mark);
	[LinkName("QLineEdit_CursorWordForward")]
	public static extern void QLineEdit_CursorWordForward(void* c_this, bool mark);
	[LinkName("QLineEdit_CursorWordBackward")]
	public static extern void QLineEdit_CursorWordBackward(void* c_this, bool mark);
	[LinkName("QLineEdit_Backspace")]
	public static extern void QLineEdit_Backspace(void* c_this);
	[LinkName("QLineEdit_Del")]
	public static extern void QLineEdit_Del(void* c_this);
	[LinkName("QLineEdit_Home")]
	public static extern void QLineEdit_Home(void* c_this, bool mark);
	[LinkName("QLineEdit_End")]
	public static extern void QLineEdit_End(void* c_this, bool mark);
	[LinkName("QLineEdit_IsModified")]
	public static extern bool QLineEdit_IsModified(void* c_this);
	[LinkName("QLineEdit_SetModified")]
	public static extern void QLineEdit_SetModified(void* c_this, bool modified);
	[LinkName("QLineEdit_SetSelection")]
	public static extern void QLineEdit_SetSelection(void* c_this, int32 param1, int32 param2);
	[LinkName("QLineEdit_HasSelectedText")]
	public static extern bool QLineEdit_HasSelectedText(void* c_this);
	[LinkName("QLineEdit_SelectedText")]
	public static extern char8[] QLineEdit_SelectedText(void* c_this);
	[LinkName("QLineEdit_SelectionStart")]
	public static extern int32 QLineEdit_SelectionStart(void* c_this);
	[LinkName("QLineEdit_SelectionEnd")]
	public static extern int32 QLineEdit_SelectionEnd(void* c_this);
	[LinkName("QLineEdit_SelectionLength")]
	public static extern int32 QLineEdit_SelectionLength(void* c_this);
	[LinkName("QLineEdit_IsUndoAvailable")]
	public static extern bool QLineEdit_IsUndoAvailable(void* c_this);
	[LinkName("QLineEdit_IsRedoAvailable")]
	public static extern bool QLineEdit_IsRedoAvailable(void* c_this);
	[LinkName("QLineEdit_SetDragEnabled")]
	public static extern void QLineEdit_SetDragEnabled(void* c_this, bool b);
	[LinkName("QLineEdit_DragEnabled")]
	public static extern bool QLineEdit_DragEnabled(void* c_this);
	[LinkName("QLineEdit_SetCursorMoveStyle")]
	public static extern void QLineEdit_SetCursorMoveStyle(void* c_this, int64 style);
	[LinkName("QLineEdit_CursorMoveStyle")]
	public static extern int64 QLineEdit_CursorMoveStyle(void* c_this);
	[LinkName("QLineEdit_InputMask")]
	public static extern char8[] QLineEdit_InputMask(void* c_this);
	[LinkName("QLineEdit_SetInputMask")]
	public static extern void QLineEdit_SetInputMask(void* c_this, char8[] inputMask);
	[LinkName("QLineEdit_HasAcceptableInput")]
	public static extern bool QLineEdit_HasAcceptableInput(void* c_this);
	[LinkName("QLineEdit_SetTextMargins")]
	public static extern void QLineEdit_SetTextMargins(void* c_this, int32 left, int32 top, int32 right, int32 bottom);
	[LinkName("QLineEdit_SetTextMarginsWithMargins")]
	public static extern void QLineEdit_SetTextMarginsWithMargins(void* c_this, QMargins margins);
	[LinkName("QLineEdit_TextMargins")]
	public static extern QMargins QLineEdit_TextMargins(void* c_this);
	[LinkName("QLineEdit_AddAction")]
	public static extern void QLineEdit_AddAction(void* c_this, QAction action, int64 position);
	[LinkName("QLineEdit_AddAction2")]
	public static extern QAction QLineEdit_AddAction2(void* c_this, QIcon icon, int64 position);
	[LinkName("QLineEdit_SetText")]
	public static extern void QLineEdit_SetText(void* c_this, char8[] text);
	[LinkName("QLineEdit_Clear")]
	public static extern void QLineEdit_Clear(void* c_this);
	[LinkName("QLineEdit_SelectAll")]
	public static extern void QLineEdit_SelectAll(void* c_this);
	[LinkName("QLineEdit_Undo")]
	public static extern void QLineEdit_Undo(void* c_this);
	[LinkName("QLineEdit_Redo")]
	public static extern void QLineEdit_Redo(void* c_this);
	[LinkName("QLineEdit_Cut")]
	public static extern void QLineEdit_Cut(void* c_this);
	[LinkName("QLineEdit_Copy")]
	public static extern void QLineEdit_Copy(void* c_this);
	[LinkName("QLineEdit_Paste")]
	public static extern void QLineEdit_Paste(void* c_this);
	[LinkName("QLineEdit_Deselect")]
	public static extern void QLineEdit_Deselect(void* c_this);
	[LinkName("QLineEdit_Insert")]
	public static extern void QLineEdit_Insert(void* c_this, char8[] param1);
	[LinkName("QLineEdit_CreateStandardContextMenu")]
	public static extern QMenu QLineEdit_CreateStandardContextMenu(void* c_this);
	[LinkName("QLineEdit_TextChanged")]
	public static extern void QLineEdit_TextChanged(void* c_this, char8[] param1);
	[LinkName("QLineEdit_TextEdited")]
	public static extern void QLineEdit_TextEdited(void* c_this, char8[] param1);
	[LinkName("QLineEdit_CursorPositionChanged")]
	public static extern void QLineEdit_CursorPositionChanged(void* c_this, int32 param1, int32 param2);
	[LinkName("QLineEdit_ReturnPressed")]
	public static extern void QLineEdit_ReturnPressed(void* c_this);
	[LinkName("QLineEdit_EditingFinished")]
	public static extern void QLineEdit_EditingFinished(void* c_this);
	[LinkName("QLineEdit_SelectionChanged")]
	public static extern void QLineEdit_SelectionChanged(void* c_this);
	[LinkName("QLineEdit_InputRejected")]
	public static extern void QLineEdit_InputRejected(void* c_this);
	[LinkName("QLineEdit_MousePressEvent")]
	public static extern void QLineEdit_MousePressEvent(void* c_this, QMouseEvent param1);
	[LinkName("QLineEdit_MouseMoveEvent")]
	public static extern void QLineEdit_MouseMoveEvent(void* c_this, QMouseEvent param1);
	[LinkName("QLineEdit_MouseReleaseEvent")]
	public static extern void QLineEdit_MouseReleaseEvent(void* c_this, QMouseEvent param1);
	[LinkName("QLineEdit_MouseDoubleClickEvent")]
	public static extern void QLineEdit_MouseDoubleClickEvent(void* c_this, QMouseEvent param1);
	[LinkName("QLineEdit_KeyPressEvent")]
	public static extern void QLineEdit_KeyPressEvent(void* c_this, QKeyEvent param1);
	[LinkName("QLineEdit_KeyReleaseEvent")]
	public static extern void QLineEdit_KeyReleaseEvent(void* c_this, QKeyEvent param1);
	[LinkName("QLineEdit_FocusInEvent")]
	public static extern void QLineEdit_FocusInEvent(void* c_this, QFocusEvent param1);
	[LinkName("QLineEdit_FocusOutEvent")]
	public static extern void QLineEdit_FocusOutEvent(void* c_this, QFocusEvent param1);
	[LinkName("QLineEdit_PaintEvent")]
	public static extern void QLineEdit_PaintEvent(void* c_this, QPaintEvent param1);
	[LinkName("QLineEdit_DragEnterEvent")]
	public static extern void QLineEdit_DragEnterEvent(void* c_this, QDragEnterEvent param1);
	[LinkName("QLineEdit_DragMoveEvent")]
	public static extern void QLineEdit_DragMoveEvent(void* c_this, QDragMoveEvent e);
	[LinkName("QLineEdit_DragLeaveEvent")]
	public static extern void QLineEdit_DragLeaveEvent(void* c_this, QDragLeaveEvent e);
	[LinkName("QLineEdit_DropEvent")]
	public static extern void QLineEdit_DropEvent(void* c_this, QDropEvent param1);
	[LinkName("QLineEdit_ChangeEvent")]
	public static extern void QLineEdit_ChangeEvent(void* c_this, QEvent param1);
	[LinkName("QLineEdit_ContextMenuEvent")]
	public static extern void QLineEdit_ContextMenuEvent(void* c_this, QContextMenuEvent param1);
	[LinkName("QLineEdit_InputMethodEvent")]
	public static extern void QLineEdit_InputMethodEvent(void* c_this, QInputMethodEvent param1);
	[LinkName("QLineEdit_InitStyleOption")]
	public static extern void QLineEdit_InitStyleOption(void* c_this, QStyleOptionFrame option);
	[LinkName("QLineEdit_InputMethodQuery")]
	public static extern QVariant QLineEdit_InputMethodQuery(void* c_this, int64 param1);
	[LinkName("QLineEdit_InputMethodQuery2")]
	public static extern QVariant QLineEdit_InputMethodQuery2(void* c_this, int64 property, QVariant argument);
	[LinkName("QLineEdit_TimerEvent")]
	public static extern void QLineEdit_TimerEvent(void* c_this, QTimerEvent param1);
	[LinkName("QLineEdit_Event")]
	public static extern bool QLineEdit_Event(void* c_this, QEvent param1);
	[LinkName("QLineEdit_CursorRect")]
	public static extern QRect QLineEdit_CursorRect(void* c_this);
	[LinkName("QLineEdit_Tr2")]
	public static extern char8[] QLineEdit_Tr2(char8[] s, char8[] c);
	[LinkName("QLineEdit_Tr3")]
	public static extern char8[] QLineEdit_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QLineEdit_CursorForward2")]
	public static extern void QLineEdit_CursorForward2(void* c_this, bool mark, int32 steps);
	[LinkName("QLineEdit_CursorBackward2")]
	public static extern void QLineEdit_CursorBackward2(void* c_this, bool mark, int32 steps);
}