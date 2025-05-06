using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QPlainTextEdit__LineWrapMode
{
	NoWrap = 0,
	WidgetWidth = 1,
}
public struct QPlainTextEdit
{
	[LinkName("QPlainTextEdit_new")]
	public static extern void* QPlainTextEdit_new(QWidget parent);
	[LinkName("QPlainTextEdit_new2")]
	public static extern void* QPlainTextEdit_new2();
	[LinkName("QPlainTextEdit_new3")]
	public static extern void* QPlainTextEdit_new3(char8[] text);
	[LinkName("QPlainTextEdit_new4")]
	public static extern void* QPlainTextEdit_new4(char8[] text, QWidget parent);
	[LinkName("QPlainTextEdit_MetaObject")]
	public static extern QMetaObject QPlainTextEdit_MetaObject(void* c_this);
	[LinkName("QPlainTextEdit_Metacast")]
	public static extern void QPlainTextEdit_Metacast(void* c_this, char8[] param1);
	[LinkName("QPlainTextEdit_Metacall")]
	public static extern int32 QPlainTextEdit_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QPlainTextEdit_Tr")]
	public static extern char8[] QPlainTextEdit_Tr(char8[] s);
	[LinkName("QPlainTextEdit_SetDocument")]
	public static extern void QPlainTextEdit_SetDocument(void* c_this, QTextDocument document);
	[LinkName("QPlainTextEdit_Document")]
	public static extern QTextDocument QPlainTextEdit_Document(void* c_this);
	[LinkName("QPlainTextEdit_SetPlaceholderText")]
	public static extern void QPlainTextEdit_SetPlaceholderText(void* c_this, char8[] placeholderText);
	[LinkName("QPlainTextEdit_PlaceholderText")]
	public static extern char8[] QPlainTextEdit_PlaceholderText(void* c_this);
	[LinkName("QPlainTextEdit_SetTextCursor")]
	public static extern void QPlainTextEdit_SetTextCursor(void* c_this, QTextCursor cursor);
	[LinkName("QPlainTextEdit_TextCursor")]
	public static extern QTextCursor QPlainTextEdit_TextCursor(void* c_this);
	[LinkName("QPlainTextEdit_IsReadOnly")]
	public static extern bool QPlainTextEdit_IsReadOnly(void* c_this);
	[LinkName("QPlainTextEdit_SetReadOnly")]
	public static extern void QPlainTextEdit_SetReadOnly(void* c_this, bool ro);
	[LinkName("QPlainTextEdit_SetTextInteractionFlags")]
	public static extern void QPlainTextEdit_SetTextInteractionFlags(void* c_this, int64 flags);
	[LinkName("QPlainTextEdit_TextInteractionFlags")]
	public static extern int64 QPlainTextEdit_TextInteractionFlags(void* c_this);
	[LinkName("QPlainTextEdit_MergeCurrentCharFormat")]
	public static extern void QPlainTextEdit_MergeCurrentCharFormat(void* c_this, QTextCharFormat modifier);
	[LinkName("QPlainTextEdit_SetCurrentCharFormat")]
	public static extern void QPlainTextEdit_SetCurrentCharFormat(void* c_this, QTextCharFormat format);
	[LinkName("QPlainTextEdit_CurrentCharFormat")]
	public static extern QTextCharFormat QPlainTextEdit_CurrentCharFormat(void* c_this);
	[LinkName("QPlainTextEdit_TabChangesFocus")]
	public static extern bool QPlainTextEdit_TabChangesFocus(void* c_this);
	[LinkName("QPlainTextEdit_SetTabChangesFocus")]
	public static extern void QPlainTextEdit_SetTabChangesFocus(void* c_this, bool b);
	[LinkName("QPlainTextEdit_SetDocumentTitle")]
	public static extern void QPlainTextEdit_SetDocumentTitle(void* c_this, char8[] title);
	[LinkName("QPlainTextEdit_DocumentTitle")]
	public static extern char8[] QPlainTextEdit_DocumentTitle(void* c_this);
	[LinkName("QPlainTextEdit_IsUndoRedoEnabled")]
	public static extern bool QPlainTextEdit_IsUndoRedoEnabled(void* c_this);
	[LinkName("QPlainTextEdit_SetUndoRedoEnabled")]
	public static extern void QPlainTextEdit_SetUndoRedoEnabled(void* c_this, bool enable);
	[LinkName("QPlainTextEdit_SetMaximumBlockCount")]
	public static extern void QPlainTextEdit_SetMaximumBlockCount(void* c_this, int32 maximum);
	[LinkName("QPlainTextEdit_MaximumBlockCount")]
	public static extern int32 QPlainTextEdit_MaximumBlockCount(void* c_this);
	[LinkName("QPlainTextEdit_LineWrapMode")]
	public static extern int64 QPlainTextEdit_LineWrapMode(void* c_this);
	[LinkName("QPlainTextEdit_SetLineWrapMode")]
	public static extern void QPlainTextEdit_SetLineWrapMode(void* c_this, int64 mode);
	[LinkName("QPlainTextEdit_WordWrapMode")]
	public static extern int64 QPlainTextEdit_WordWrapMode(void* c_this);
	[LinkName("QPlainTextEdit_SetWordWrapMode")]
	public static extern void QPlainTextEdit_SetWordWrapMode(void* c_this, int64 policy);
	[LinkName("QPlainTextEdit_SetBackgroundVisible")]
	public static extern void QPlainTextEdit_SetBackgroundVisible(void* c_this, bool visible);
	[LinkName("QPlainTextEdit_BackgroundVisible")]
	public static extern bool QPlainTextEdit_BackgroundVisible(void* c_this);
	[LinkName("QPlainTextEdit_SetCenterOnScroll")]
	public static extern void QPlainTextEdit_SetCenterOnScroll(void* c_this, bool enabled);
	[LinkName("QPlainTextEdit_CenterOnScroll")]
	public static extern bool QPlainTextEdit_CenterOnScroll(void* c_this);
	[LinkName("QPlainTextEdit_Find")]
	public static extern bool QPlainTextEdit_Find(void* c_this, char8[] exp);
	[LinkName("QPlainTextEdit_FindWithExp")]
	public static extern bool QPlainTextEdit_FindWithExp(void* c_this, QRegularExpression exp);
	[LinkName("QPlainTextEdit_ToPlainText")]
	public static extern char8[] QPlainTextEdit_ToPlainText(void* c_this);
	[LinkName("QPlainTextEdit_EnsureCursorVisible")]
	public static extern void QPlainTextEdit_EnsureCursorVisible(void* c_this);
	[LinkName("QPlainTextEdit_LoadResource")]
	public static extern QVariant QPlainTextEdit_LoadResource(void* c_this, int32 typeVal, QUrl name);
	[LinkName("QPlainTextEdit_CreateStandardContextMenu")]
	public static extern QMenu QPlainTextEdit_CreateStandardContextMenu(void* c_this);
	[LinkName("QPlainTextEdit_CreateStandardContextMenuWithPosition")]
	public static extern QMenu QPlainTextEdit_CreateStandardContextMenuWithPosition(void* c_this, QPoint position);
	[LinkName("QPlainTextEdit_CursorForPosition")]
	public static extern QTextCursor QPlainTextEdit_CursorForPosition(void* c_this, QPoint pos);
	[LinkName("QPlainTextEdit_CursorRect")]
	public static extern QRect QPlainTextEdit_CursorRect(void* c_this, QTextCursor cursor);
	[LinkName("QPlainTextEdit_CursorRect2")]
	public static extern QRect QPlainTextEdit_CursorRect2(void* c_this);
	[LinkName("QPlainTextEdit_AnchorAt")]
	public static extern char8[] QPlainTextEdit_AnchorAt(void* c_this, QPoint pos);
	[LinkName("QPlainTextEdit_OverwriteMode")]
	public static extern bool QPlainTextEdit_OverwriteMode(void* c_this);
	[LinkName("QPlainTextEdit_SetOverwriteMode")]
	public static extern void QPlainTextEdit_SetOverwriteMode(void* c_this, bool overwrite);
	[LinkName("QPlainTextEdit_TabStopDistance")]
	public static extern double QPlainTextEdit_TabStopDistance(void* c_this);
	[LinkName("QPlainTextEdit_SetTabStopDistance")]
	public static extern void QPlainTextEdit_SetTabStopDistance(void* c_this, double distance);
	[LinkName("QPlainTextEdit_CursorWidth")]
	public static extern int32 QPlainTextEdit_CursorWidth(void* c_this);
	[LinkName("QPlainTextEdit_SetCursorWidth")]
	public static extern void QPlainTextEdit_SetCursorWidth(void* c_this, int32 width);
	[LinkName("QPlainTextEdit_SetExtraSelections")]
	public static extern void QPlainTextEdit_SetExtraSelections(void* c_this, QTextEdit__ExtraSelection[] selections);
	[LinkName("QPlainTextEdit_ExtraSelections")]
	public static extern QTextEdit__ExtraSelection[] QPlainTextEdit_ExtraSelections(void* c_this);
	[LinkName("QPlainTextEdit_MoveCursor")]
	public static extern void QPlainTextEdit_MoveCursor(void* c_this, int64 operation);
	[LinkName("QPlainTextEdit_CanPaste")]
	public static extern bool QPlainTextEdit_CanPaste(void* c_this);
	[LinkName("QPlainTextEdit_Print")]
	public static extern void QPlainTextEdit_Print(void* c_this, QPagedPaintDevice printer);
	[LinkName("QPlainTextEdit_BlockCount")]
	public static extern int32 QPlainTextEdit_BlockCount(void* c_this);
	[LinkName("QPlainTextEdit_InputMethodQuery")]
	public static extern QVariant QPlainTextEdit_InputMethodQuery(void* c_this, int64 property);
	[LinkName("QPlainTextEdit_InputMethodQuery2")]
	public static extern QVariant QPlainTextEdit_InputMethodQuery2(void* c_this, int64 query, QVariant argument);
	[LinkName("QPlainTextEdit_SetPlainText")]
	public static extern void QPlainTextEdit_SetPlainText(void* c_this, char8[] text);
	[LinkName("QPlainTextEdit_Cut")]
	public static extern void QPlainTextEdit_Cut(void* c_this);
	[LinkName("QPlainTextEdit_Copy")]
	public static extern void QPlainTextEdit_Copy(void* c_this);
	[LinkName("QPlainTextEdit_Paste")]
	public static extern void QPlainTextEdit_Paste(void* c_this);
	[LinkName("QPlainTextEdit_Undo")]
	public static extern void QPlainTextEdit_Undo(void* c_this);
	[LinkName("QPlainTextEdit_Redo")]
	public static extern void QPlainTextEdit_Redo(void* c_this);
	[LinkName("QPlainTextEdit_Clear")]
	public static extern void QPlainTextEdit_Clear(void* c_this);
	[LinkName("QPlainTextEdit_SelectAll")]
	public static extern void QPlainTextEdit_SelectAll(void* c_this);
	[LinkName("QPlainTextEdit_InsertPlainText")]
	public static extern void QPlainTextEdit_InsertPlainText(void* c_this, char8[] text);
	[LinkName("QPlainTextEdit_AppendPlainText")]
	public static extern void QPlainTextEdit_AppendPlainText(void* c_this, char8[] text);
	[LinkName("QPlainTextEdit_AppendHtml")]
	public static extern void QPlainTextEdit_AppendHtml(void* c_this, char8[] html);
	[LinkName("QPlainTextEdit_CenterCursor")]
	public static extern void QPlainTextEdit_CenterCursor(void* c_this);
	[LinkName("QPlainTextEdit_ZoomIn")]
	public static extern void QPlainTextEdit_ZoomIn(void* c_this);
	[LinkName("QPlainTextEdit_ZoomOut")]
	public static extern void QPlainTextEdit_ZoomOut(void* c_this);
	[LinkName("QPlainTextEdit_TextChanged")]
	public static extern void QPlainTextEdit_TextChanged(void* c_this);
	[LinkName("QPlainTextEdit_UndoAvailable")]
	public static extern void QPlainTextEdit_UndoAvailable(void* c_this, bool b);
	[LinkName("QPlainTextEdit_RedoAvailable")]
	public static extern void QPlainTextEdit_RedoAvailable(void* c_this, bool b);
	[LinkName("QPlainTextEdit_CopyAvailable")]
	public static extern void QPlainTextEdit_CopyAvailable(void* c_this, bool b);
	[LinkName("QPlainTextEdit_SelectionChanged")]
	public static extern void QPlainTextEdit_SelectionChanged(void* c_this);
	[LinkName("QPlainTextEdit_CursorPositionChanged")]
	public static extern void QPlainTextEdit_CursorPositionChanged(void* c_this);
	[LinkName("QPlainTextEdit_UpdateRequest")]
	public static extern void QPlainTextEdit_UpdateRequest(void* c_this, QRect rect, int32 dy);
	[LinkName("QPlainTextEdit_BlockCountChanged")]
	public static extern void QPlainTextEdit_BlockCountChanged(void* c_this, int32 newBlockCount);
	[LinkName("QPlainTextEdit_ModificationChanged")]
	public static extern void QPlainTextEdit_ModificationChanged(void* c_this, bool param1);
	[LinkName("QPlainTextEdit_Event")]
	public static extern bool QPlainTextEdit_Event(void* c_this, QEvent e);
	[LinkName("QPlainTextEdit_TimerEvent")]
	public static extern void QPlainTextEdit_TimerEvent(void* c_this, QTimerEvent e);
	[LinkName("QPlainTextEdit_KeyPressEvent")]
	public static extern void QPlainTextEdit_KeyPressEvent(void* c_this, QKeyEvent e);
	[LinkName("QPlainTextEdit_KeyReleaseEvent")]
	public static extern void QPlainTextEdit_KeyReleaseEvent(void* c_this, QKeyEvent e);
	[LinkName("QPlainTextEdit_ResizeEvent")]
	public static extern void QPlainTextEdit_ResizeEvent(void* c_this, QResizeEvent e);
	[LinkName("QPlainTextEdit_PaintEvent")]
	public static extern void QPlainTextEdit_PaintEvent(void* c_this, QPaintEvent e);
	[LinkName("QPlainTextEdit_MousePressEvent")]
	public static extern void QPlainTextEdit_MousePressEvent(void* c_this, QMouseEvent e);
	[LinkName("QPlainTextEdit_MouseMoveEvent")]
	public static extern void QPlainTextEdit_MouseMoveEvent(void* c_this, QMouseEvent e);
	[LinkName("QPlainTextEdit_MouseReleaseEvent")]
	public static extern void QPlainTextEdit_MouseReleaseEvent(void* c_this, QMouseEvent e);
	[LinkName("QPlainTextEdit_MouseDoubleClickEvent")]
	public static extern void QPlainTextEdit_MouseDoubleClickEvent(void* c_this, QMouseEvent e);
	[LinkName("QPlainTextEdit_FocusNextPrevChild")]
	public static extern bool QPlainTextEdit_FocusNextPrevChild(void* c_this, bool next);
	[LinkName("QPlainTextEdit_ContextMenuEvent")]
	public static extern void QPlainTextEdit_ContextMenuEvent(void* c_this, QContextMenuEvent e);
	[LinkName("QPlainTextEdit_DragEnterEvent")]
	public static extern void QPlainTextEdit_DragEnterEvent(void* c_this, QDragEnterEvent e);
	[LinkName("QPlainTextEdit_DragLeaveEvent")]
	public static extern void QPlainTextEdit_DragLeaveEvent(void* c_this, QDragLeaveEvent e);
	[LinkName("QPlainTextEdit_DragMoveEvent")]
	public static extern void QPlainTextEdit_DragMoveEvent(void* c_this, QDragMoveEvent e);
	[LinkName("QPlainTextEdit_DropEvent")]
	public static extern void QPlainTextEdit_DropEvent(void* c_this, QDropEvent e);
	[LinkName("QPlainTextEdit_FocusInEvent")]
	public static extern void QPlainTextEdit_FocusInEvent(void* c_this, QFocusEvent e);
	[LinkName("QPlainTextEdit_FocusOutEvent")]
	public static extern void QPlainTextEdit_FocusOutEvent(void* c_this, QFocusEvent e);
	[LinkName("QPlainTextEdit_ShowEvent")]
	public static extern void QPlainTextEdit_ShowEvent(void* c_this, QShowEvent param1);
	[LinkName("QPlainTextEdit_ChangeEvent")]
	public static extern void QPlainTextEdit_ChangeEvent(void* c_this, QEvent e);
	[LinkName("QPlainTextEdit_WheelEvent")]
	public static extern void QPlainTextEdit_WheelEvent(void* c_this, QWheelEvent e);
	[LinkName("QPlainTextEdit_CreateMimeDataFromSelection")]
	public static extern QMimeData QPlainTextEdit_CreateMimeDataFromSelection(void* c_this);
	[LinkName("QPlainTextEdit_CanInsertFromMimeData")]
	public static extern bool QPlainTextEdit_CanInsertFromMimeData(void* c_this, QMimeData source);
	[LinkName("QPlainTextEdit_InsertFromMimeData")]
	public static extern void QPlainTextEdit_InsertFromMimeData(void* c_this, QMimeData source);
	[LinkName("QPlainTextEdit_InputMethodEvent")]
	public static extern void QPlainTextEdit_InputMethodEvent(void* c_this, QInputMethodEvent param1);
	[LinkName("QPlainTextEdit_ScrollContentsBy")]
	public static extern void QPlainTextEdit_ScrollContentsBy(void* c_this, int32 dx, int32 dy);
	[LinkName("QPlainTextEdit_DoSetTextCursor")]
	public static extern void QPlainTextEdit_DoSetTextCursor(void* c_this, QTextCursor cursor);
	[LinkName("QPlainTextEdit_FirstVisibleBlock")]
	public static extern QTextBlock QPlainTextEdit_FirstVisibleBlock(void* c_this);
	[LinkName("QPlainTextEdit_ContentOffset")]
	public static extern QPointF QPlainTextEdit_ContentOffset(void* c_this);
	[LinkName("QPlainTextEdit_BlockBoundingRect")]
	public static extern QRectF QPlainTextEdit_BlockBoundingRect(void* c_this, QTextBlock block);
	[LinkName("QPlainTextEdit_BlockBoundingGeometry")]
	public static extern QRectF QPlainTextEdit_BlockBoundingGeometry(void* c_this, QTextBlock block);
	[LinkName("QPlainTextEdit_GetPaintContext")]
	public static extern QAbstractTextDocumentLayout__PaintContext QPlainTextEdit_GetPaintContext(void* c_this);
	[LinkName("QPlainTextEdit_ZoomInF")]
	public static extern void QPlainTextEdit_ZoomInF(void* c_this, float range);
	[LinkName("QPlainTextEdit_Tr2")]
	public static extern char8[] QPlainTextEdit_Tr2(char8[] s, char8[] c);
	[LinkName("QPlainTextEdit_Tr3")]
	public static extern char8[] QPlainTextEdit_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QPlainTextEdit_Find2")]
	public static extern bool QPlainTextEdit_Find2(void* c_this, char8[] exp, int64 options);
	[LinkName("QPlainTextEdit_Find22")]
	public static extern bool QPlainTextEdit_Find22(void* c_this, QRegularExpression exp, int64 options);
	[LinkName("QPlainTextEdit_MoveCursor2")]
	public static extern void QPlainTextEdit_MoveCursor2(void* c_this, int64 operation, int64 mode);
	[LinkName("QPlainTextEdit_ZoomIn1")]
	public static extern void QPlainTextEdit_ZoomIn1(void* c_this, int32 range);
	[LinkName("QPlainTextEdit_ZoomOut1")]
	public static extern void QPlainTextEdit_ZoomOut1(void* c_this, int32 range);
}
public struct QPlainTextDocumentLayout
{
	[LinkName("QPlainTextDocumentLayout_new")]
	public static extern void* QPlainTextDocumentLayout_new(QTextDocument document);
	[LinkName("QPlainTextDocumentLayout_MetaObject")]
	public static extern QMetaObject QPlainTextDocumentLayout_MetaObject(void* c_this);
	[LinkName("QPlainTextDocumentLayout_Metacast")]
	public static extern void QPlainTextDocumentLayout_Metacast(void* c_this, char8[] param1);
	[LinkName("QPlainTextDocumentLayout_Metacall")]
	public static extern int32 QPlainTextDocumentLayout_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QPlainTextDocumentLayout_Tr")]
	public static extern char8[] QPlainTextDocumentLayout_Tr(char8[] s);
	[LinkName("QPlainTextDocumentLayout_Draw")]
	public static extern void QPlainTextDocumentLayout_Draw(void* c_this, QPainter param1, QAbstractTextDocumentLayout__PaintContext param2);
	[LinkName("QPlainTextDocumentLayout_HitTest")]
	public static extern int32 QPlainTextDocumentLayout_HitTest(void* c_this, QPointF param1, int64 param2);
	[LinkName("QPlainTextDocumentLayout_PageCount")]
	public static extern int32 QPlainTextDocumentLayout_PageCount(void* c_this);
	[LinkName("QPlainTextDocumentLayout_DocumentSize")]
	public static extern QSizeF QPlainTextDocumentLayout_DocumentSize(void* c_this);
	[LinkName("QPlainTextDocumentLayout_FrameBoundingRect")]
	public static extern QRectF QPlainTextDocumentLayout_FrameBoundingRect(void* c_this, QTextFrame param1);
	[LinkName("QPlainTextDocumentLayout_BlockBoundingRect")]
	public static extern QRectF QPlainTextDocumentLayout_BlockBoundingRect(void* c_this, QTextBlock block);
	[LinkName("QPlainTextDocumentLayout_EnsureBlockLayout")]
	public static extern void QPlainTextDocumentLayout_EnsureBlockLayout(void* c_this, QTextBlock block);
	[LinkName("QPlainTextDocumentLayout_SetCursorWidth")]
	public static extern void QPlainTextDocumentLayout_SetCursorWidth(void* c_this, int32 width);
	[LinkName("QPlainTextDocumentLayout_CursorWidth")]
	public static extern int32 QPlainTextDocumentLayout_CursorWidth(void* c_this);
	[LinkName("QPlainTextDocumentLayout_RequestUpdate")]
	public static extern void QPlainTextDocumentLayout_RequestUpdate(void* c_this);
	[LinkName("QPlainTextDocumentLayout_DocumentChanged")]
	public static extern void QPlainTextDocumentLayout_DocumentChanged(void* c_this, int32 from, int32 param2, int32 charsAdded);
	[LinkName("QPlainTextDocumentLayout_Tr2")]
	public static extern char8[] QPlainTextDocumentLayout_Tr2(char8[] s, char8[] c);
	[LinkName("QPlainTextDocumentLayout_Tr3")]
	public static extern char8[] QPlainTextDocumentLayout_Tr3(char8[] s, char8[] c, int32 n);
}