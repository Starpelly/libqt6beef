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
public struct QLineEdit : QWidget
{
	[LinkName("QLineEdit_new")]
	public static extern QLineEdit* QLineEdit_new(QWidget* parent);
	[LinkName("QLineEdit_new2")]
	public static extern QLineEdit* QLineEdit_new2();
	[LinkName("QLineEdit_new3")]
	public static extern QLineEdit* QLineEdit_new3(libqt_string param1);
	[LinkName("QLineEdit_new4")]
	public static extern QLineEdit* QLineEdit_new4(libqt_string param1, QWidget* parent);
	[LinkName("QLineEdit_MetaObject")]
	public static extern QMetaObject* QLineEdit_MetaObject(Self* c_this);
	[LinkName("QLineEdit_Metacast")]
	public static extern void* QLineEdit_Metacast(Self* c_this, char8[] param1);
	[LinkName("QLineEdit_Metacall")]
	public static extern int32 QLineEdit_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QLineEdit_Tr")]
	public static extern libqt_string QLineEdit_Tr(char8[] s);
	[LinkName("QLineEdit_Text")]
	public static extern libqt_string QLineEdit_Text(Self* c_this);
	[LinkName("QLineEdit_DisplayText")]
	public static extern libqt_string QLineEdit_DisplayText(Self* c_this);
	[LinkName("QLineEdit_PlaceholderText")]
	public static extern libqt_string QLineEdit_PlaceholderText(Self* c_this);
	[LinkName("QLineEdit_SetPlaceholderText")]
	public static extern void QLineEdit_SetPlaceholderText(Self* c_this, libqt_string placeholderText);
	[LinkName("QLineEdit_MaxLength")]
	public static extern int32 QLineEdit_MaxLength(Self* c_this);
	[LinkName("QLineEdit_SetMaxLength")]
	public static extern void QLineEdit_SetMaxLength(Self* c_this, int32 maxLength);
	[LinkName("QLineEdit_SetFrame")]
	public static extern void QLineEdit_SetFrame(Self* c_this, bool frame);
	[LinkName("QLineEdit_HasFrame")]
	public static extern bool QLineEdit_HasFrame(Self* c_this);
	[LinkName("QLineEdit_SetClearButtonEnabled")]
	public static extern void QLineEdit_SetClearButtonEnabled(Self* c_this, bool enable);
	[LinkName("QLineEdit_IsClearButtonEnabled")]
	public static extern bool QLineEdit_IsClearButtonEnabled(Self* c_this);
	[LinkName("QLineEdit_EchoMode")]
	public static extern int64 QLineEdit_EchoMode(Self* c_this);
	[LinkName("QLineEdit_SetEchoMode")]
	public static extern void QLineEdit_SetEchoMode(Self* c_this, int64 echoMode);
	[LinkName("QLineEdit_IsReadOnly")]
	public static extern bool QLineEdit_IsReadOnly(Self* c_this);
	[LinkName("QLineEdit_SetReadOnly")]
	public static extern void QLineEdit_SetReadOnly(Self* c_this, bool readOnly);
	[LinkName("QLineEdit_SetValidator")]
	public static extern void QLineEdit_SetValidator(Self* c_this, QValidator* validator);
	[LinkName("QLineEdit_Validator")]
	public static extern QValidator* QLineEdit_Validator(Self* c_this);
	[LinkName("QLineEdit_SetCompleter")]
	public static extern void QLineEdit_SetCompleter(Self* c_this, QCompleter* completer);
	[LinkName("QLineEdit_Completer")]
	public static extern QCompleter* QLineEdit_Completer(Self* c_this);
	[LinkName("QLineEdit_SizeHint")]
	public static extern QSize QLineEdit_SizeHint(Self* c_this);
	[LinkName("QLineEdit_MinimumSizeHint")]
	public static extern QSize QLineEdit_MinimumSizeHint(Self* c_this);
	[LinkName("QLineEdit_CursorPosition")]
	public static extern int32 QLineEdit_CursorPosition(Self* c_this);
	[LinkName("QLineEdit_SetCursorPosition")]
	public static extern void QLineEdit_SetCursorPosition(Self* c_this, int32 cursorPosition);
	[LinkName("QLineEdit_CursorPositionAt")]
	public static extern int32 QLineEdit_CursorPositionAt(Self* c_this, QPoint* pos);
	[LinkName("QLineEdit_SetAlignment")]
	public static extern void QLineEdit_SetAlignment(Self* c_this, int64 flag);
	[LinkName("QLineEdit_Alignment")]
	public static extern int64 QLineEdit_Alignment(Self* c_this);
	[LinkName("QLineEdit_CursorForward")]
	public static extern void QLineEdit_CursorForward(Self* c_this, bool mark);
	[LinkName("QLineEdit_CursorBackward")]
	public static extern void QLineEdit_CursorBackward(Self* c_this, bool mark);
	[LinkName("QLineEdit_CursorWordForward")]
	public static extern void QLineEdit_CursorWordForward(Self* c_this, bool mark);
	[LinkName("QLineEdit_CursorWordBackward")]
	public static extern void QLineEdit_CursorWordBackward(Self* c_this, bool mark);
	[LinkName("QLineEdit_Backspace")]
	public static extern void QLineEdit_Backspace(Self* c_this);
	[LinkName("QLineEdit_Del")]
	public static extern void QLineEdit_Del(Self* c_this);
	[LinkName("QLineEdit_Home")]
	public static extern void QLineEdit_Home(Self* c_this, bool mark);
	[LinkName("QLineEdit_End")]
	public static extern void QLineEdit_End(Self* c_this, bool mark);
	[LinkName("QLineEdit_IsModified")]
	public static extern bool QLineEdit_IsModified(Self* c_this);
	[LinkName("QLineEdit_SetModified")]
	public static extern void QLineEdit_SetModified(Self* c_this, bool modified);
	[LinkName("QLineEdit_SetSelection")]
	public static extern void QLineEdit_SetSelection(Self* c_this, int32 param1, int32 param2);
	[LinkName("QLineEdit_HasSelectedText")]
	public static extern bool QLineEdit_HasSelectedText(Self* c_this);
	[LinkName("QLineEdit_SelectedText")]
	public static extern libqt_string QLineEdit_SelectedText(Self* c_this);
	[LinkName("QLineEdit_SelectionStart")]
	public static extern int32 QLineEdit_SelectionStart(Self* c_this);
	[LinkName("QLineEdit_SelectionEnd")]
	public static extern int32 QLineEdit_SelectionEnd(Self* c_this);
	[LinkName("QLineEdit_SelectionLength")]
	public static extern int32 QLineEdit_SelectionLength(Self* c_this);
	[LinkName("QLineEdit_IsUndoAvailable")]
	public static extern bool QLineEdit_IsUndoAvailable(Self* c_this);
	[LinkName("QLineEdit_IsRedoAvailable")]
	public static extern bool QLineEdit_IsRedoAvailable(Self* c_this);
	[LinkName("QLineEdit_SetDragEnabled")]
	public static extern void QLineEdit_SetDragEnabled(Self* c_this, bool b);
	[LinkName("QLineEdit_DragEnabled")]
	public static extern bool QLineEdit_DragEnabled(Self* c_this);
	[LinkName("QLineEdit_SetCursorMoveStyle")]
	public static extern void QLineEdit_SetCursorMoveStyle(Self* c_this, int64 style);
	[LinkName("QLineEdit_CursorMoveStyle")]
	public static extern int64 QLineEdit_CursorMoveStyle(Self* c_this);
	[LinkName("QLineEdit_InputMask")]
	public static extern libqt_string QLineEdit_InputMask(Self* c_this);
	[LinkName("QLineEdit_SetInputMask")]
	public static extern void QLineEdit_SetInputMask(Self* c_this, libqt_string inputMask);
	[LinkName("QLineEdit_HasAcceptableInput")]
	public static extern bool QLineEdit_HasAcceptableInput(Self* c_this);
	[LinkName("QLineEdit_SetTextMargins")]
	public static extern void QLineEdit_SetTextMargins(Self* c_this, int32 left, int32 top, int32 right, int32 bottom);
	[LinkName("QLineEdit_SetTextMarginsWithMargins")]
	public static extern void QLineEdit_SetTextMarginsWithMargins(Self* c_this, QMargins* margins);
	[LinkName("QLineEdit_TextMargins")]
	public static extern QMargins QLineEdit_TextMargins(Self* c_this);
	[LinkName("QLineEdit_AddAction")]
	public static extern void QLineEdit_AddAction(Self* c_this, QAction* action, int64 position);
	[LinkName("QLineEdit_AddAction2")]
	public static extern QAction* QLineEdit_AddAction2(Self* c_this, QIcon* icon, int64 position);
	[LinkName("QLineEdit_SetText")]
	public static extern void QLineEdit_SetText(Self* c_this, libqt_string text);
	[LinkName("QLineEdit_Clear")]
	public static extern void QLineEdit_Clear(Self* c_this);
	[LinkName("QLineEdit_SelectAll")]
	public static extern void QLineEdit_SelectAll(Self* c_this);
	[LinkName("QLineEdit_Undo")]
	public static extern void QLineEdit_Undo(Self* c_this);
	[LinkName("QLineEdit_Redo")]
	public static extern void QLineEdit_Redo(Self* c_this);
	[LinkName("QLineEdit_Cut")]
	public static extern void QLineEdit_Cut(Self* c_this);
	[LinkName("QLineEdit_Copy")]
	public static extern void QLineEdit_Copy(Self* c_this);
	[LinkName("QLineEdit_Paste")]
	public static extern void QLineEdit_Paste(Self* c_this);
	[LinkName("QLineEdit_Deselect")]
	public static extern void QLineEdit_Deselect(Self* c_this);
	[LinkName("QLineEdit_Insert")]
	public static extern void QLineEdit_Insert(Self* c_this, libqt_string param1);
	[LinkName("QLineEdit_CreateStandardContextMenu")]
	public static extern QMenu* QLineEdit_CreateStandardContextMenu(Self* c_this);
	[LinkName("QLineEdit_Connect_TextChanged")]
	public static extern void QLineEdit_Connect_TextChanged(Self* c_this, c_intptr slot);
	[LinkName("QLineEdit_Connect_TextEdited")]
	public static extern void QLineEdit_Connect_TextEdited(Self* c_this, c_intptr slot);
	[LinkName("QLineEdit_Connect_CursorPositionChanged")]
	public static extern void QLineEdit_Connect_CursorPositionChanged(Self* c_this, c_intptr slot);
	[LinkName("QLineEdit_Connect_ReturnPressed")]
	public static extern void QLineEdit_Connect_ReturnPressed(Self* c_this, c_intptr slot);
	[LinkName("QLineEdit_Connect_EditingFinished")]
	public static extern void QLineEdit_Connect_EditingFinished(Self* c_this, c_intptr slot);
	[LinkName("QLineEdit_Connect_SelectionChanged")]
	public static extern void QLineEdit_Connect_SelectionChanged(Self* c_this, c_intptr slot);
	[LinkName("QLineEdit_Connect_InputRejected")]
	public static extern void QLineEdit_Connect_InputRejected(Self* c_this, c_intptr slot);
	[LinkName("QLineEdit_MousePressEvent")]
	public static extern void QLineEdit_MousePressEvent(Self* c_this, QMouseEvent* param1);
	[LinkName("QLineEdit_MouseMoveEvent")]
	public static extern void QLineEdit_MouseMoveEvent(Self* c_this, QMouseEvent* param1);
	[LinkName("QLineEdit_MouseReleaseEvent")]
	public static extern void QLineEdit_MouseReleaseEvent(Self* c_this, QMouseEvent* param1);
	[LinkName("QLineEdit_MouseDoubleClickEvent")]
	public static extern void QLineEdit_MouseDoubleClickEvent(Self* c_this, QMouseEvent* param1);
	[LinkName("QLineEdit_KeyPressEvent")]
	public static extern void QLineEdit_KeyPressEvent(Self* c_this, QKeyEvent* param1);
	[LinkName("QLineEdit_KeyReleaseEvent")]
	public static extern void QLineEdit_KeyReleaseEvent(Self* c_this, QKeyEvent* param1);
	[LinkName("QLineEdit_FocusInEvent")]
	public static extern void QLineEdit_FocusInEvent(Self* c_this, QFocusEvent* param1);
	[LinkName("QLineEdit_FocusOutEvent")]
	public static extern void QLineEdit_FocusOutEvent(Self* c_this, QFocusEvent* param1);
	[LinkName("QLineEdit_PaintEvent")]
	public static extern void QLineEdit_PaintEvent(Self* c_this, QPaintEvent* param1);
	[LinkName("QLineEdit_DragEnterEvent")]
	public static extern void QLineEdit_DragEnterEvent(Self* c_this, QDragEnterEvent* param1);
	[LinkName("QLineEdit_DragMoveEvent")]
	public static extern void QLineEdit_DragMoveEvent(Self* c_this, QDragMoveEvent* e);
	[LinkName("QLineEdit_DragLeaveEvent")]
	public static extern void QLineEdit_DragLeaveEvent(Self* c_this, QDragLeaveEvent* e);
	[LinkName("QLineEdit_DropEvent")]
	public static extern void QLineEdit_DropEvent(Self* c_this, QDropEvent* param1);
	[LinkName("QLineEdit_ChangeEvent")]
	public static extern void QLineEdit_ChangeEvent(Self* c_this, QEvent* param1);
	[LinkName("QLineEdit_ContextMenuEvent")]
	public static extern void QLineEdit_ContextMenuEvent(Self* c_this, QContextMenuEvent* param1);
	[LinkName("QLineEdit_InputMethodEvent")]
	public static extern void QLineEdit_InputMethodEvent(Self* c_this, QInputMethodEvent* param1);
	[LinkName("QLineEdit_InitStyleOption")]
	public static extern void QLineEdit_InitStyleOption(Self* c_this, QStyleOptionFrame* option);
	[LinkName("QLineEdit_InputMethodQuery")]
	public static extern QVariant QLineEdit_InputMethodQuery(Self* c_this, int64 param1);
	[LinkName("QLineEdit_InputMethodQuery2")]
	public static extern QVariant QLineEdit_InputMethodQuery2(Self* c_this, int64 property, QVariant argument);
	[LinkName("QLineEdit_TimerEvent")]
	public static extern void QLineEdit_TimerEvent(Self* c_this, QTimerEvent* param1);
	[LinkName("QLineEdit_Event")]
	public static extern bool QLineEdit_Event(Self* c_this, QEvent* param1);
	[LinkName("QLineEdit_CursorRect")]
	public static extern QRect QLineEdit_CursorRect(Self* c_this);
	[LinkName("QLineEdit_Tr2")]
	public static extern libqt_string QLineEdit_Tr2(char8[] s, char8[] c);
	[LinkName("QLineEdit_Tr3")]
	public static extern libqt_string QLineEdit_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QLineEdit_CursorForward2")]
	public static extern void QLineEdit_CursorForward2(Self* c_this, bool mark, int32 steps);
	[LinkName("QLineEdit_CursorBackward2")]
	public static extern void QLineEdit_CursorBackward2(Self* c_this, bool mark, int32 steps);
}