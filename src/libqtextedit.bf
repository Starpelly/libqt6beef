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
public struct QTextEdit
{
	[LinkName("QTextEdit_new")]
	public static extern void* QTextEdit_new(QWidget parent);
	[LinkName("QTextEdit_new2")]
	public static extern void* QTextEdit_new2();
	[LinkName("QTextEdit_new3")]
	public static extern void* QTextEdit_new3(char8[] text);
	[LinkName("QTextEdit_new4")]
	public static extern void* QTextEdit_new4(char8[] text, QWidget parent);
	[LinkName("QTextEdit_MetaObject")]
	public static extern QMetaObject QTextEdit_MetaObject(void* c_this);
	[LinkName("QTextEdit_Metacast")]
	public static extern void QTextEdit_Metacast(void* c_this, char8[] param1);
	[LinkName("QTextEdit_Metacall")]
	public static extern int32 QTextEdit_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QTextEdit_Tr")]
	public static extern char8[] QTextEdit_Tr(char8[] s);
	[LinkName("QTextEdit_SetDocument")]
	public static extern void QTextEdit_SetDocument(void* c_this, QTextDocument document);
	[LinkName("QTextEdit_Document")]
	public static extern QTextDocument QTextEdit_Document(void* c_this);
	[LinkName("QTextEdit_SetPlaceholderText")]
	public static extern void QTextEdit_SetPlaceholderText(void* c_this, char8[] placeholderText);
	[LinkName("QTextEdit_PlaceholderText")]
	public static extern char8[] QTextEdit_PlaceholderText(void* c_this);
	[LinkName("QTextEdit_SetTextCursor")]
	public static extern void QTextEdit_SetTextCursor(void* c_this, QTextCursor cursor);
	[LinkName("QTextEdit_TextCursor")]
	public static extern QTextCursor QTextEdit_TextCursor(void* c_this);
	[LinkName("QTextEdit_IsReadOnly")]
	public static extern bool QTextEdit_IsReadOnly(void* c_this);
	[LinkName("QTextEdit_SetReadOnly")]
	public static extern void QTextEdit_SetReadOnly(void* c_this, bool ro);
	[LinkName("QTextEdit_SetTextInteractionFlags")]
	public static extern void QTextEdit_SetTextInteractionFlags(void* c_this, int64 flags);
	[LinkName("QTextEdit_TextInteractionFlags")]
	public static extern int64 QTextEdit_TextInteractionFlags(void* c_this);
	[LinkName("QTextEdit_FontPointSize")]
	public static extern double QTextEdit_FontPointSize(void* c_this);
	[LinkName("QTextEdit_FontFamily")]
	public static extern char8[] QTextEdit_FontFamily(void* c_this);
	[LinkName("QTextEdit_FontWeight")]
	public static extern int32 QTextEdit_FontWeight(void* c_this);
	[LinkName("QTextEdit_FontUnderline")]
	public static extern bool QTextEdit_FontUnderline(void* c_this);
	[LinkName("QTextEdit_FontItalic")]
	public static extern bool QTextEdit_FontItalic(void* c_this);
	[LinkName("QTextEdit_TextColor")]
	public static extern QColor QTextEdit_TextColor(void* c_this);
	[LinkName("QTextEdit_TextBackgroundColor")]
	public static extern QColor QTextEdit_TextBackgroundColor(void* c_this);
	[LinkName("QTextEdit_CurrentFont")]
	public static extern QFont QTextEdit_CurrentFont(void* c_this);
	[LinkName("QTextEdit_Alignment")]
	public static extern int64 QTextEdit_Alignment(void* c_this);
	[LinkName("QTextEdit_MergeCurrentCharFormat")]
	public static extern void QTextEdit_MergeCurrentCharFormat(void* c_this, QTextCharFormat modifier);
	[LinkName("QTextEdit_SetCurrentCharFormat")]
	public static extern void QTextEdit_SetCurrentCharFormat(void* c_this, QTextCharFormat format);
	[LinkName("QTextEdit_CurrentCharFormat")]
	public static extern QTextCharFormat QTextEdit_CurrentCharFormat(void* c_this);
	[LinkName("QTextEdit_AutoFormatting")]
	public static extern int64 QTextEdit_AutoFormatting(void* c_this);
	[LinkName("QTextEdit_SetAutoFormatting")]
	public static extern void QTextEdit_SetAutoFormatting(void* c_this, int64 features);
	[LinkName("QTextEdit_TabChangesFocus")]
	public static extern bool QTextEdit_TabChangesFocus(void* c_this);
	[LinkName("QTextEdit_SetTabChangesFocus")]
	public static extern void QTextEdit_SetTabChangesFocus(void* c_this, bool b);
	[LinkName("QTextEdit_SetDocumentTitle")]
	public static extern void QTextEdit_SetDocumentTitle(void* c_this, char8[] title);
	[LinkName("QTextEdit_DocumentTitle")]
	public static extern char8[] QTextEdit_DocumentTitle(void* c_this);
	[LinkName("QTextEdit_IsUndoRedoEnabled")]
	public static extern bool QTextEdit_IsUndoRedoEnabled(void* c_this);
	[LinkName("QTextEdit_SetUndoRedoEnabled")]
	public static extern void QTextEdit_SetUndoRedoEnabled(void* c_this, bool enable);
	[LinkName("QTextEdit_LineWrapMode")]
	public static extern int64 QTextEdit_LineWrapMode(void* c_this);
	[LinkName("QTextEdit_SetLineWrapMode")]
	public static extern void QTextEdit_SetLineWrapMode(void* c_this, int64 mode);
	[LinkName("QTextEdit_LineWrapColumnOrWidth")]
	public static extern int32 QTextEdit_LineWrapColumnOrWidth(void* c_this);
	[LinkName("QTextEdit_SetLineWrapColumnOrWidth")]
	public static extern void QTextEdit_SetLineWrapColumnOrWidth(void* c_this, int32 w);
	[LinkName("QTextEdit_WordWrapMode")]
	public static extern int64 QTextEdit_WordWrapMode(void* c_this);
	[LinkName("QTextEdit_SetWordWrapMode")]
	public static extern void QTextEdit_SetWordWrapMode(void* c_this, int64 policy);
	[LinkName("QTextEdit_Find")]
	public static extern bool QTextEdit_Find(void* c_this, char8[] exp);
	[LinkName("QTextEdit_FindWithExp")]
	public static extern bool QTextEdit_FindWithExp(void* c_this, QRegularExpression exp);
	[LinkName("QTextEdit_ToPlainText")]
	public static extern char8[] QTextEdit_ToPlainText(void* c_this);
	[LinkName("QTextEdit_ToHtml")]
	public static extern char8[] QTextEdit_ToHtml(void* c_this);
	[LinkName("QTextEdit_ToMarkdown")]
	public static extern char8[] QTextEdit_ToMarkdown(void* c_this);
	[LinkName("QTextEdit_EnsureCursorVisible")]
	public static extern void QTextEdit_EnsureCursorVisible(void* c_this);
	[LinkName("QTextEdit_LoadResource")]
	public static extern QVariant QTextEdit_LoadResource(void* c_this, int32 typeVal, QUrl name);
	[LinkName("QTextEdit_CreateStandardContextMenu")]
	public static extern QMenu QTextEdit_CreateStandardContextMenu(void* c_this);
	[LinkName("QTextEdit_CreateStandardContextMenuWithPosition")]
	public static extern QMenu QTextEdit_CreateStandardContextMenuWithPosition(void* c_this, QPoint position);
	[LinkName("QTextEdit_CursorForPosition")]
	public static extern QTextCursor QTextEdit_CursorForPosition(void* c_this, QPoint pos);
	[LinkName("QTextEdit_CursorRect")]
	public static extern QRect QTextEdit_CursorRect(void* c_this, QTextCursor cursor);
	[LinkName("QTextEdit_CursorRect2")]
	public static extern QRect QTextEdit_CursorRect2(void* c_this);
	[LinkName("QTextEdit_AnchorAt")]
	public static extern char8[] QTextEdit_AnchorAt(void* c_this, QPoint pos);
	[LinkName("QTextEdit_OverwriteMode")]
	public static extern bool QTextEdit_OverwriteMode(void* c_this);
	[LinkName("QTextEdit_SetOverwriteMode")]
	public static extern void QTextEdit_SetOverwriteMode(void* c_this, bool overwrite);
	[LinkName("QTextEdit_TabStopDistance")]
	public static extern double QTextEdit_TabStopDistance(void* c_this);
	[LinkName("QTextEdit_SetTabStopDistance")]
	public static extern void QTextEdit_SetTabStopDistance(void* c_this, double distance);
	[LinkName("QTextEdit_CursorWidth")]
	public static extern int32 QTextEdit_CursorWidth(void* c_this);
	[LinkName("QTextEdit_SetCursorWidth")]
	public static extern void QTextEdit_SetCursorWidth(void* c_this, int32 width);
	[LinkName("QTextEdit_AcceptRichText")]
	public static extern bool QTextEdit_AcceptRichText(void* c_this);
	[LinkName("QTextEdit_SetAcceptRichText")]
	public static extern void QTextEdit_SetAcceptRichText(void* c_this, bool accept);
	[LinkName("QTextEdit_SetExtraSelections")]
	public static extern void QTextEdit_SetExtraSelections(void* c_this, QTextEdit__ExtraSelection[] selections);
	[LinkName("QTextEdit_ExtraSelections")]
	public static extern QTextEdit__ExtraSelection[] QTextEdit_ExtraSelections(void* c_this);
	[LinkName("QTextEdit_MoveCursor")]
	public static extern void QTextEdit_MoveCursor(void* c_this, int64 operation);
	[LinkName("QTextEdit_CanPaste")]
	public static extern bool QTextEdit_CanPaste(void* c_this);
	[LinkName("QTextEdit_Print")]
	public static extern void QTextEdit_Print(void* c_this, QPagedPaintDevice printer);
	[LinkName("QTextEdit_InputMethodQuery")]
	public static extern QVariant QTextEdit_InputMethodQuery(void* c_this, int64 property);
	[LinkName("QTextEdit_InputMethodQuery2")]
	public static extern QVariant QTextEdit_InputMethodQuery2(void* c_this, int64 query, QVariant argument);
	[LinkName("QTextEdit_SetFontPointSize")]
	public static extern void QTextEdit_SetFontPointSize(void* c_this, double s);
	[LinkName("QTextEdit_SetFontFamily")]
	public static extern void QTextEdit_SetFontFamily(void* c_this, char8[] fontFamily);
	[LinkName("QTextEdit_SetFontWeight")]
	public static extern void QTextEdit_SetFontWeight(void* c_this, int32 w);
	[LinkName("QTextEdit_SetFontUnderline")]
	public static extern void QTextEdit_SetFontUnderline(void* c_this, bool b);
	[LinkName("QTextEdit_SetFontItalic")]
	public static extern void QTextEdit_SetFontItalic(void* c_this, bool b);
	[LinkName("QTextEdit_SetTextColor")]
	public static extern void QTextEdit_SetTextColor(void* c_this, QColor c);
	[LinkName("QTextEdit_SetTextBackgroundColor")]
	public static extern void QTextEdit_SetTextBackgroundColor(void* c_this, QColor c);
	[LinkName("QTextEdit_SetCurrentFont")]
	public static extern void QTextEdit_SetCurrentFont(void* c_this, QFont f);
	[LinkName("QTextEdit_SetAlignment")]
	public static extern void QTextEdit_SetAlignment(void* c_this, int64 a);
	[LinkName("QTextEdit_SetPlainText")]
	public static extern void QTextEdit_SetPlainText(void* c_this, char8[] text);
	[LinkName("QTextEdit_SetHtml")]
	public static extern void QTextEdit_SetHtml(void* c_this, char8[] text);
	[LinkName("QTextEdit_SetMarkdown")]
	public static extern void QTextEdit_SetMarkdown(void* c_this, char8[] markdown);
	[LinkName("QTextEdit_SetText")]
	public static extern void QTextEdit_SetText(void* c_this, char8[] text);
	[LinkName("QTextEdit_Cut")]
	public static extern void QTextEdit_Cut(void* c_this);
	[LinkName("QTextEdit_Copy")]
	public static extern void QTextEdit_Copy(void* c_this);
	[LinkName("QTextEdit_Paste")]
	public static extern void QTextEdit_Paste(void* c_this);
	[LinkName("QTextEdit_Undo")]
	public static extern void QTextEdit_Undo(void* c_this);
	[LinkName("QTextEdit_Redo")]
	public static extern void QTextEdit_Redo(void* c_this);
	[LinkName("QTextEdit_Clear")]
	public static extern void QTextEdit_Clear(void* c_this);
	[LinkName("QTextEdit_SelectAll")]
	public static extern void QTextEdit_SelectAll(void* c_this);
	[LinkName("QTextEdit_InsertPlainText")]
	public static extern void QTextEdit_InsertPlainText(void* c_this, char8[] text);
	[LinkName("QTextEdit_InsertHtml")]
	public static extern void QTextEdit_InsertHtml(void* c_this, char8[] text);
	[LinkName("QTextEdit_Append")]
	public static extern void QTextEdit_Append(void* c_this, char8[] text);
	[LinkName("QTextEdit_ScrollToAnchor")]
	public static extern void QTextEdit_ScrollToAnchor(void* c_this, char8[] name);
	[LinkName("QTextEdit_ZoomIn")]
	public static extern void QTextEdit_ZoomIn(void* c_this);
	[LinkName("QTextEdit_ZoomOut")]
	public static extern void QTextEdit_ZoomOut(void* c_this);
	[LinkName("QTextEdit_TextChanged")]
	public static extern void QTextEdit_TextChanged(void* c_this);
	[LinkName("QTextEdit_UndoAvailable")]
	public static extern void QTextEdit_UndoAvailable(void* c_this, bool b);
	[LinkName("QTextEdit_RedoAvailable")]
	public static extern void QTextEdit_RedoAvailable(void* c_this, bool b);
	[LinkName("QTextEdit_CurrentCharFormatChanged")]
	public static extern void QTextEdit_CurrentCharFormatChanged(void* c_this, QTextCharFormat format);
	[LinkName("QTextEdit_CopyAvailable")]
	public static extern void QTextEdit_CopyAvailable(void* c_this, bool b);
	[LinkName("QTextEdit_SelectionChanged")]
	public static extern void QTextEdit_SelectionChanged(void* c_this);
	[LinkName("QTextEdit_CursorPositionChanged")]
	public static extern void QTextEdit_CursorPositionChanged(void* c_this);
	[LinkName("QTextEdit_Event")]
	public static extern bool QTextEdit_Event(void* c_this, QEvent e);
	[LinkName("QTextEdit_TimerEvent")]
	public static extern void QTextEdit_TimerEvent(void* c_this, QTimerEvent e);
	[LinkName("QTextEdit_KeyPressEvent")]
	public static extern void QTextEdit_KeyPressEvent(void* c_this, QKeyEvent e);
	[LinkName("QTextEdit_KeyReleaseEvent")]
	public static extern void QTextEdit_KeyReleaseEvent(void* c_this, QKeyEvent e);
	[LinkName("QTextEdit_ResizeEvent")]
	public static extern void QTextEdit_ResizeEvent(void* c_this, QResizeEvent e);
	[LinkName("QTextEdit_PaintEvent")]
	public static extern void QTextEdit_PaintEvent(void* c_this, QPaintEvent e);
	[LinkName("QTextEdit_MousePressEvent")]
	public static extern void QTextEdit_MousePressEvent(void* c_this, QMouseEvent e);
	[LinkName("QTextEdit_MouseMoveEvent")]
	public static extern void QTextEdit_MouseMoveEvent(void* c_this, QMouseEvent e);
	[LinkName("QTextEdit_MouseReleaseEvent")]
	public static extern void QTextEdit_MouseReleaseEvent(void* c_this, QMouseEvent e);
	[LinkName("QTextEdit_MouseDoubleClickEvent")]
	public static extern void QTextEdit_MouseDoubleClickEvent(void* c_this, QMouseEvent e);
	[LinkName("QTextEdit_FocusNextPrevChild")]
	public static extern bool QTextEdit_FocusNextPrevChild(void* c_this, bool next);
	[LinkName("QTextEdit_ContextMenuEvent")]
	public static extern void QTextEdit_ContextMenuEvent(void* c_this, QContextMenuEvent e);
	[LinkName("QTextEdit_DragEnterEvent")]
	public static extern void QTextEdit_DragEnterEvent(void* c_this, QDragEnterEvent e);
	[LinkName("QTextEdit_DragLeaveEvent")]
	public static extern void QTextEdit_DragLeaveEvent(void* c_this, QDragLeaveEvent e);
	[LinkName("QTextEdit_DragMoveEvent")]
	public static extern void QTextEdit_DragMoveEvent(void* c_this, QDragMoveEvent e);
	[LinkName("QTextEdit_DropEvent")]
	public static extern void QTextEdit_DropEvent(void* c_this, QDropEvent e);
	[LinkName("QTextEdit_FocusInEvent")]
	public static extern void QTextEdit_FocusInEvent(void* c_this, QFocusEvent e);
	[LinkName("QTextEdit_FocusOutEvent")]
	public static extern void QTextEdit_FocusOutEvent(void* c_this, QFocusEvent e);
	[LinkName("QTextEdit_ShowEvent")]
	public static extern void QTextEdit_ShowEvent(void* c_this, QShowEvent param1);
	[LinkName("QTextEdit_ChangeEvent")]
	public static extern void QTextEdit_ChangeEvent(void* c_this, QEvent e);
	[LinkName("QTextEdit_WheelEvent")]
	public static extern void QTextEdit_WheelEvent(void* c_this, QWheelEvent e);
	[LinkName("QTextEdit_CreateMimeDataFromSelection")]
	public static extern QMimeData QTextEdit_CreateMimeDataFromSelection(void* c_this);
	[LinkName("QTextEdit_CanInsertFromMimeData")]
	public static extern bool QTextEdit_CanInsertFromMimeData(void* c_this, QMimeData source);
	[LinkName("QTextEdit_InsertFromMimeData")]
	public static extern void QTextEdit_InsertFromMimeData(void* c_this, QMimeData source);
	[LinkName("QTextEdit_InputMethodEvent")]
	public static extern void QTextEdit_InputMethodEvent(void* c_this, QInputMethodEvent param1);
	[LinkName("QTextEdit_ScrollContentsBy")]
	public static extern void QTextEdit_ScrollContentsBy(void* c_this, int32 dx, int32 dy);
	[LinkName("QTextEdit_DoSetTextCursor")]
	public static extern void QTextEdit_DoSetTextCursor(void* c_this, QTextCursor cursor);
	[LinkName("QTextEdit_ZoomInF")]
	public static extern void QTextEdit_ZoomInF(void* c_this, float range);
	[LinkName("QTextEdit_Tr2")]
	public static extern char8[] QTextEdit_Tr2(char8[] s, char8[] c);
	[LinkName("QTextEdit_Tr3")]
	public static extern char8[] QTextEdit_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QTextEdit_Find2")]
	public static extern bool QTextEdit_Find2(void* c_this, char8[] exp, int64 options);
	[LinkName("QTextEdit_Find22")]
	public static extern bool QTextEdit_Find22(void* c_this, QRegularExpression exp, int64 options);
	[LinkName("QTextEdit_ToMarkdown1")]
	public static extern char8[] QTextEdit_ToMarkdown1(void* c_this, int64 features);
	[LinkName("QTextEdit_MoveCursor2")]
	public static extern void QTextEdit_MoveCursor2(void* c_this, int64 operation, int64 mode);
	[LinkName("QTextEdit_ZoomIn1")]
	public static extern void QTextEdit_ZoomIn1(void* c_this, int32 range);
	[LinkName("QTextEdit_ZoomOut1")]
	public static extern void QTextEdit_ZoomOut1(void* c_this, int32 range);
}
public struct QTextEdit__ExtraSelection
{
	[LinkName("QTextEdit__ExtraSelection_new")]
	public static extern void* QTextEdit__ExtraSelection_new(QTextEdit__ExtraSelection param1);
	[LinkName("QTextEdit__ExtraSelection_OperatorAssign")]
	public static extern void QTextEdit__ExtraSelection_OperatorAssign(void* c_this, QTextEdit__ExtraSelection param1);
}