using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QTextEdit__LineWrapMode
{
	NoWrap = 0,
	WidgetWidth = 1,
	FixedPixelWidth = 2,
	FixedColumnWidth = 3,
}
[AllowDuplicates]
public enum QTextEdit__AutoFormattingFlag
{
	AutoNone = 0,
	AutoBulletList = 1,
	AutoAll = 4294967295,
}
public struct QTextEdit : QAbstractScrollArea
{
	[LinkName("QTextEdit_new")]
	public static extern QTextEdit* QTextEdit_new(QWidget* parent);
	[LinkName("QTextEdit_new2")]
	public static extern QTextEdit* QTextEdit_new2();
	[LinkName("QTextEdit_new3")]
	public static extern QTextEdit* QTextEdit_new3(libqt_string text);
	[LinkName("QTextEdit_new4")]
	public static extern QTextEdit* QTextEdit_new4(libqt_string text, QWidget* parent);
	[LinkName("QTextEdit_MetaObject")]
	public static extern QMetaObject* QTextEdit_MetaObject(Self* c_this);
	[LinkName("QTextEdit_Metacast")]
	public static extern void* QTextEdit_Metacast(Self* c_this, char8[] param1);
	[LinkName("QTextEdit_Metacall")]
	public static extern int32 QTextEdit_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QTextEdit_Tr")]
	public static extern libqt_string QTextEdit_Tr(char8[] s);
	[LinkName("QTextEdit_SetDocument")]
	public static extern void QTextEdit_SetDocument(Self* c_this, QTextDocument* document);
	[LinkName("QTextEdit_Document")]
	public static extern QTextDocument* QTextEdit_Document(Self* c_this);
	[LinkName("QTextEdit_SetPlaceholderText")]
	public static extern void QTextEdit_SetPlaceholderText(Self* c_this, libqt_string placeholderText);
	[LinkName("QTextEdit_PlaceholderText")]
	public static extern libqt_string QTextEdit_PlaceholderText(Self* c_this);
	[LinkName("QTextEdit_SetTextCursor")]
	public static extern void QTextEdit_SetTextCursor(Self* c_this, QTextCursor* cursor);
	[LinkName("QTextEdit_TextCursor")]
	public static extern QTextCursor QTextEdit_TextCursor(Self* c_this);
	[LinkName("QTextEdit_IsReadOnly")]
	public static extern bool QTextEdit_IsReadOnly(Self* c_this);
	[LinkName("QTextEdit_SetReadOnly")]
	public static extern void QTextEdit_SetReadOnly(Self* c_this, bool ro);
	[LinkName("QTextEdit_SetTextInteractionFlags")]
	public static extern void QTextEdit_SetTextInteractionFlags(Self* c_this, int64 flags);
	[LinkName("QTextEdit_TextInteractionFlags")]
	public static extern int64 QTextEdit_TextInteractionFlags(Self* c_this);
	[LinkName("QTextEdit_FontPointSize")]
	public static extern double QTextEdit_FontPointSize(Self* c_this);
	[LinkName("QTextEdit_FontFamily")]
	public static extern libqt_string QTextEdit_FontFamily(Self* c_this);
	[LinkName("QTextEdit_FontWeight")]
	public static extern int32 QTextEdit_FontWeight(Self* c_this);
	[LinkName("QTextEdit_FontUnderline")]
	public static extern bool QTextEdit_FontUnderline(Self* c_this);
	[LinkName("QTextEdit_FontItalic")]
	public static extern bool QTextEdit_FontItalic(Self* c_this);
	[LinkName("QTextEdit_TextColor")]
	public static extern QColor QTextEdit_TextColor(Self* c_this);
	[LinkName("QTextEdit_TextBackgroundColor")]
	public static extern QColor QTextEdit_TextBackgroundColor(Self* c_this);
	[LinkName("QTextEdit_CurrentFont")]
	public static extern QFont QTextEdit_CurrentFont(Self* c_this);
	[LinkName("QTextEdit_Alignment")]
	public static extern int64 QTextEdit_Alignment(Self* c_this);
	[LinkName("QTextEdit_MergeCurrentCharFormat")]
	public static extern void QTextEdit_MergeCurrentCharFormat(Self* c_this, QTextCharFormat* modifier);
	[LinkName("QTextEdit_SetCurrentCharFormat")]
	public static extern void QTextEdit_SetCurrentCharFormat(Self* c_this, QTextCharFormat* format);
	[LinkName("QTextEdit_CurrentCharFormat")]
	public static extern QTextCharFormat QTextEdit_CurrentCharFormat(Self* c_this);
	[LinkName("QTextEdit_AutoFormatting")]
	public static extern int64 QTextEdit_AutoFormatting(Self* c_this);
	[LinkName("QTextEdit_SetAutoFormatting")]
	public static extern void QTextEdit_SetAutoFormatting(Self* c_this, int64 features);
	[LinkName("QTextEdit_TabChangesFocus")]
	public static extern bool QTextEdit_TabChangesFocus(Self* c_this);
	[LinkName("QTextEdit_SetTabChangesFocus")]
	public static extern void QTextEdit_SetTabChangesFocus(Self* c_this, bool b);
	[LinkName("QTextEdit_SetDocumentTitle")]
	public static extern void QTextEdit_SetDocumentTitle(Self* c_this, libqt_string title);
	[LinkName("QTextEdit_DocumentTitle")]
	public static extern libqt_string QTextEdit_DocumentTitle(Self* c_this);
	[LinkName("QTextEdit_IsUndoRedoEnabled")]
	public static extern bool QTextEdit_IsUndoRedoEnabled(Self* c_this);
	[LinkName("QTextEdit_SetUndoRedoEnabled")]
	public static extern void QTextEdit_SetUndoRedoEnabled(Self* c_this, bool enable);
	[LinkName("QTextEdit_LineWrapMode")]
	public static extern int64 QTextEdit_LineWrapMode(Self* c_this);
	[LinkName("QTextEdit_SetLineWrapMode")]
	public static extern void QTextEdit_SetLineWrapMode(Self* c_this, int64 mode);
	[LinkName("QTextEdit_LineWrapColumnOrWidth")]
	public static extern int32 QTextEdit_LineWrapColumnOrWidth(Self* c_this);
	[LinkName("QTextEdit_SetLineWrapColumnOrWidth")]
	public static extern void QTextEdit_SetLineWrapColumnOrWidth(Self* c_this, int32 w);
	[LinkName("QTextEdit_WordWrapMode")]
	public static extern int64 QTextEdit_WordWrapMode(Self* c_this);
	[LinkName("QTextEdit_SetWordWrapMode")]
	public static extern void QTextEdit_SetWordWrapMode(Self* c_this, int64 policy);
	[LinkName("QTextEdit_Find")]
	public static extern bool QTextEdit_Find(Self* c_this, libqt_string exp);
	[LinkName("QTextEdit_FindWithExp")]
	public static extern bool QTextEdit_FindWithExp(Self* c_this, QRegularExpression* exp);
	[LinkName("QTextEdit_ToPlainText")]
	public static extern libqt_string QTextEdit_ToPlainText(Self* c_this);
	[LinkName("QTextEdit_ToHtml")]
	public static extern libqt_string QTextEdit_ToHtml(Self* c_this);
	[LinkName("QTextEdit_ToMarkdown")]
	public static extern libqt_string QTextEdit_ToMarkdown(Self* c_this);
	[LinkName("QTextEdit_EnsureCursorVisible")]
	public static extern void QTextEdit_EnsureCursorVisible(Self* c_this);
	[LinkName("QTextEdit_LoadResource")]
	public static extern QVariant QTextEdit_LoadResource(Self* c_this, int32 typeVal, QUrl* name);
	[LinkName("QTextEdit_CreateStandardContextMenu")]
	public static extern QMenu* QTextEdit_CreateStandardContextMenu(Self* c_this);
	[LinkName("QTextEdit_CreateStandardContextMenuWithPosition")]
	public static extern QMenu* QTextEdit_CreateStandardContextMenuWithPosition(Self* c_this, QPoint* position);
	[LinkName("QTextEdit_CursorForPosition")]
	public static extern QTextCursor QTextEdit_CursorForPosition(Self* c_this, QPoint* pos);
	[LinkName("QTextEdit_CursorRect")]
	public static extern QRect QTextEdit_CursorRect(Self* c_this, QTextCursor* cursor);
	[LinkName("QTextEdit_CursorRect2")]
	public static extern QRect QTextEdit_CursorRect2(Self* c_this);
	[LinkName("QTextEdit_AnchorAt")]
	public static extern libqt_string QTextEdit_AnchorAt(Self* c_this, QPoint* pos);
	[LinkName("QTextEdit_OverwriteMode")]
	public static extern bool QTextEdit_OverwriteMode(Self* c_this);
	[LinkName("QTextEdit_SetOverwriteMode")]
	public static extern void QTextEdit_SetOverwriteMode(Self* c_this, bool overwrite);
	[LinkName("QTextEdit_TabStopDistance")]
	public static extern double QTextEdit_TabStopDistance(Self* c_this);
	[LinkName("QTextEdit_SetTabStopDistance")]
	public static extern void QTextEdit_SetTabStopDistance(Self* c_this, double distance);
	[LinkName("QTextEdit_CursorWidth")]
	public static extern int32 QTextEdit_CursorWidth(Self* c_this);
	[LinkName("QTextEdit_SetCursorWidth")]
	public static extern void QTextEdit_SetCursorWidth(Self* c_this, int32 width);
	[LinkName("QTextEdit_AcceptRichText")]
	public static extern bool QTextEdit_AcceptRichText(Self* c_this);
	[LinkName("QTextEdit_SetAcceptRichText")]
	public static extern void QTextEdit_SetAcceptRichText(Self* c_this, bool accept);
	[LinkName("QTextEdit_SetExtraSelections")]
	public static extern void QTextEdit_SetExtraSelections(Self* c_this, QTextEdit__ExtraSelection[] selections);
	[LinkName("QTextEdit_ExtraSelections")]
	public static extern QTextEdit__ExtraSelection[] QTextEdit_ExtraSelections(Self* c_this);
	[LinkName("QTextEdit_MoveCursor")]
	public static extern void QTextEdit_MoveCursor(Self* c_this, int64 operation);
	[LinkName("QTextEdit_CanPaste")]
	public static extern bool QTextEdit_CanPaste(Self* c_this);
	[LinkName("QTextEdit_Print")]
	public static extern void QTextEdit_Print(Self* c_this, QPagedPaintDevice* printer);
	[LinkName("QTextEdit_InputMethodQuery")]
	public static extern QVariant QTextEdit_InputMethodQuery(Self* c_this, int64 property);
	[LinkName("QTextEdit_InputMethodQuery2")]
	public static extern QVariant QTextEdit_InputMethodQuery2(Self* c_this, int64 query, QVariant argument);
	[LinkName("QTextEdit_SetFontPointSize")]
	public static extern void QTextEdit_SetFontPointSize(Self* c_this, double s);
	[LinkName("QTextEdit_SetFontFamily")]
	public static extern void QTextEdit_SetFontFamily(Self* c_this, libqt_string fontFamily);
	[LinkName("QTextEdit_SetFontWeight")]
	public static extern void QTextEdit_SetFontWeight(Self* c_this, int32 w);
	[LinkName("QTextEdit_SetFontUnderline")]
	public static extern void QTextEdit_SetFontUnderline(Self* c_this, bool b);
	[LinkName("QTextEdit_SetFontItalic")]
	public static extern void QTextEdit_SetFontItalic(Self* c_this, bool b);
	[LinkName("QTextEdit_SetTextColor")]
	public static extern void QTextEdit_SetTextColor(Self* c_this, QColor* c);
	[LinkName("QTextEdit_SetTextBackgroundColor")]
	public static extern void QTextEdit_SetTextBackgroundColor(Self* c_this, QColor* c);
	[LinkName("QTextEdit_SetCurrentFont")]
	public static extern void QTextEdit_SetCurrentFont(Self* c_this, QFont* f);
	[LinkName("QTextEdit_SetAlignment")]
	public static extern void QTextEdit_SetAlignment(Self* c_this, int64 a);
	[LinkName("QTextEdit_SetPlainText")]
	public static extern void QTextEdit_SetPlainText(Self* c_this, libqt_string text);
	[LinkName("QTextEdit_SetHtml")]
	public static extern void QTextEdit_SetHtml(Self* c_this, libqt_string text);
	[LinkName("QTextEdit_SetMarkdown")]
	public static extern void QTextEdit_SetMarkdown(Self* c_this, libqt_string markdown);
	[LinkName("QTextEdit_SetText")]
	public static extern void QTextEdit_SetText(Self* c_this, libqt_string text);
	[LinkName("QTextEdit_Cut")]
	public static extern void QTextEdit_Cut(Self* c_this);
	[LinkName("QTextEdit_Copy")]
	public static extern void QTextEdit_Copy(Self* c_this);
	[LinkName("QTextEdit_Paste")]
	public static extern void QTextEdit_Paste(Self* c_this);
	[LinkName("QTextEdit_Undo")]
	public static extern void QTextEdit_Undo(Self* c_this);
	[LinkName("QTextEdit_Redo")]
	public static extern void QTextEdit_Redo(Self* c_this);
	[LinkName("QTextEdit_Clear")]
	public static extern void QTextEdit_Clear(Self* c_this);
	[LinkName("QTextEdit_SelectAll")]
	public static extern void QTextEdit_SelectAll(Self* c_this);
	[LinkName("QTextEdit_InsertPlainText")]
	public static extern void QTextEdit_InsertPlainText(Self* c_this, libqt_string text);
	[LinkName("QTextEdit_InsertHtml")]
	public static extern void QTextEdit_InsertHtml(Self* c_this, libqt_string text);
	[LinkName("QTextEdit_Append")]
	public static extern void QTextEdit_Append(Self* c_this, libqt_string text);
	[LinkName("QTextEdit_ScrollToAnchor")]
	public static extern void QTextEdit_ScrollToAnchor(Self* c_this, libqt_string name);
	[LinkName("QTextEdit_ZoomIn")]
	public static extern void QTextEdit_ZoomIn(Self* c_this);
	[LinkName("QTextEdit_ZoomOut")]
	public static extern void QTextEdit_ZoomOut(Self* c_this);
	[LinkName("QTextEdit_TextChanged")]
	public static extern void QTextEdit_TextChanged(Self* c_this);
	[LinkName("QTextEdit_UndoAvailable")]
	public static extern void QTextEdit_UndoAvailable(Self* c_this, bool b);
	[LinkName("QTextEdit_RedoAvailable")]
	public static extern void QTextEdit_RedoAvailable(Self* c_this, bool b);
	[LinkName("QTextEdit_CurrentCharFormatChanged")]
	public static extern void QTextEdit_CurrentCharFormatChanged(Self* c_this, QTextCharFormat* format);
	[LinkName("QTextEdit_CopyAvailable")]
	public static extern void QTextEdit_CopyAvailable(Self* c_this, bool b);
	[LinkName("QTextEdit_SelectionChanged")]
	public static extern void QTextEdit_SelectionChanged(Self* c_this);
	[LinkName("QTextEdit_CursorPositionChanged")]
	public static extern void QTextEdit_CursorPositionChanged(Self* c_this);
	[LinkName("QTextEdit_Event")]
	public static extern bool QTextEdit_Event(Self* c_this, QEvent* e);
	[LinkName("QTextEdit_TimerEvent")]
	public static extern void QTextEdit_TimerEvent(Self* c_this, QTimerEvent* e);
	[LinkName("QTextEdit_KeyPressEvent")]
	public static extern void QTextEdit_KeyPressEvent(Self* c_this, QKeyEvent* e);
	[LinkName("QTextEdit_KeyReleaseEvent")]
	public static extern void QTextEdit_KeyReleaseEvent(Self* c_this, QKeyEvent* e);
	[LinkName("QTextEdit_ResizeEvent")]
	public static extern void QTextEdit_ResizeEvent(Self* c_this, QResizeEvent* e);
	[LinkName("QTextEdit_PaintEvent")]
	public static extern void QTextEdit_PaintEvent(Self* c_this, QPaintEvent* e);
	[LinkName("QTextEdit_MousePressEvent")]
	public static extern void QTextEdit_MousePressEvent(Self* c_this, QMouseEvent* e);
	[LinkName("QTextEdit_MouseMoveEvent")]
	public static extern void QTextEdit_MouseMoveEvent(Self* c_this, QMouseEvent* e);
	[LinkName("QTextEdit_MouseReleaseEvent")]
	public static extern void QTextEdit_MouseReleaseEvent(Self* c_this, QMouseEvent* e);
	[LinkName("QTextEdit_MouseDoubleClickEvent")]
	public static extern void QTextEdit_MouseDoubleClickEvent(Self* c_this, QMouseEvent* e);
	[LinkName("QTextEdit_FocusNextPrevChild")]
	public static extern bool QTextEdit_FocusNextPrevChild(Self* c_this, bool next);
	[LinkName("QTextEdit_ContextMenuEvent")]
	public static extern void QTextEdit_ContextMenuEvent(Self* c_this, QContextMenuEvent* e);
	[LinkName("QTextEdit_DragEnterEvent")]
	public static extern void QTextEdit_DragEnterEvent(Self* c_this, QDragEnterEvent* e);
	[LinkName("QTextEdit_DragLeaveEvent")]
	public static extern void QTextEdit_DragLeaveEvent(Self* c_this, QDragLeaveEvent* e);
	[LinkName("QTextEdit_DragMoveEvent")]
	public static extern void QTextEdit_DragMoveEvent(Self* c_this, QDragMoveEvent* e);
	[LinkName("QTextEdit_DropEvent")]
	public static extern void QTextEdit_DropEvent(Self* c_this, QDropEvent* e);
	[LinkName("QTextEdit_FocusInEvent")]
	public static extern void QTextEdit_FocusInEvent(Self* c_this, QFocusEvent* e);
	[LinkName("QTextEdit_FocusOutEvent")]
	public static extern void QTextEdit_FocusOutEvent(Self* c_this, QFocusEvent* e);
	[LinkName("QTextEdit_ShowEvent")]
	public static extern void QTextEdit_ShowEvent(Self* c_this, QShowEvent* param1);
	[LinkName("QTextEdit_ChangeEvent")]
	public static extern void QTextEdit_ChangeEvent(Self* c_this, QEvent* e);
	[LinkName("QTextEdit_WheelEvent")]
	public static extern void QTextEdit_WheelEvent(Self* c_this, QWheelEvent* e);
	[LinkName("QTextEdit_CreateMimeDataFromSelection")]
	public static extern QMimeData* QTextEdit_CreateMimeDataFromSelection(Self* c_this);
	[LinkName("QTextEdit_CanInsertFromMimeData")]
	public static extern bool QTextEdit_CanInsertFromMimeData(Self* c_this, QMimeData* source);
	[LinkName("QTextEdit_InsertFromMimeData")]
	public static extern void QTextEdit_InsertFromMimeData(Self* c_this, QMimeData* source);
	[LinkName("QTextEdit_InputMethodEvent")]
	public static extern void QTextEdit_InputMethodEvent(Self* c_this, QInputMethodEvent* param1);
	[LinkName("QTextEdit_ScrollContentsBy")]
	public static extern void QTextEdit_ScrollContentsBy(Self* c_this, int32 dx, int32 dy);
	[LinkName("QTextEdit_DoSetTextCursor")]
	public static extern void QTextEdit_DoSetTextCursor(Self* c_this, QTextCursor* cursor);
	[LinkName("QTextEdit_ZoomInF")]
	public static extern void QTextEdit_ZoomInF(Self* c_this, float range);
	[LinkName("QTextEdit_Tr2")]
	public static extern libqt_string QTextEdit_Tr2(char8[] s, char8[] c);
	[LinkName("QTextEdit_Tr3")]
	public static extern libqt_string QTextEdit_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QTextEdit_Find2")]
	public static extern bool QTextEdit_Find2(Self* c_this, libqt_string exp, int64 options);
	[LinkName("QTextEdit_Find22")]
	public static extern bool QTextEdit_Find22(Self* c_this, QRegularExpression* exp, int64 options);
	[LinkName("QTextEdit_ToMarkdown1")]
	public static extern libqt_string QTextEdit_ToMarkdown1(Self* c_this, int64 features);
	[LinkName("QTextEdit_MoveCursor2")]
	public static extern void QTextEdit_MoveCursor2(Self* c_this, int64 operation, int64 mode);
	[LinkName("QTextEdit_ZoomIn1")]
	public static extern void QTextEdit_ZoomIn1(Self* c_this, int32 range);
	[LinkName("QTextEdit_ZoomOut1")]
	public static extern void QTextEdit_ZoomOut1(Self* c_this, int32 range);
}
public struct QTextEdit__ExtraSelection
{
	[LinkName("QTextEdit__ExtraSelection_new")]
	public static extern QTextEdit__ExtraSelection* QTextEdit__ExtraSelection_new(QTextEdit__ExtraSelection* param1);
	[LinkName("QTextEdit__ExtraSelection_OperatorAssign")]
	public static extern void QTextEdit__ExtraSelection_OperatorAssign(Self* c_this, QTextEdit__ExtraSelection* param1);
}