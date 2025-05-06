using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QPlainTextEdit__LineWrapMode
{
	NoWrap = 0,
	WidgetWidth = 1,
}
public struct QPlainTextEdit : QAbstractScrollArea
{
	[LinkName("QPlainTextEdit_new")]
	public static extern QPlainTextEdit* QPlainTextEdit_new(QWidget* parent);
	[LinkName("QPlainTextEdit_new2")]
	public static extern QPlainTextEdit* QPlainTextEdit_new2();
	[LinkName("QPlainTextEdit_new3")]
	public static extern QPlainTextEdit* QPlainTextEdit_new3(libqt_string text);
	[LinkName("QPlainTextEdit_new4")]
	public static extern QPlainTextEdit* QPlainTextEdit_new4(libqt_string text, QWidget* parent);
	[LinkName("QPlainTextEdit_MetaObject")]
	public static extern QMetaObject* QPlainTextEdit_MetaObject(Self* c_this);
	[LinkName("QPlainTextEdit_Metacast")]
	public static extern void* QPlainTextEdit_Metacast(Self* c_this, char8[] param1);
	[LinkName("QPlainTextEdit_Metacall")]
	public static extern int32 QPlainTextEdit_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QPlainTextEdit_Tr")]
	public static extern libqt_string QPlainTextEdit_Tr(char8[] s);
	[LinkName("QPlainTextEdit_SetDocument")]
	public static extern void QPlainTextEdit_SetDocument(Self* c_this, QTextDocument* document);
	[LinkName("QPlainTextEdit_Document")]
	public static extern QTextDocument* QPlainTextEdit_Document(Self* c_this);
	[LinkName("QPlainTextEdit_SetPlaceholderText")]
	public static extern void QPlainTextEdit_SetPlaceholderText(Self* c_this, libqt_string placeholderText);
	[LinkName("QPlainTextEdit_PlaceholderText")]
	public static extern libqt_string QPlainTextEdit_PlaceholderText(Self* c_this);
	[LinkName("QPlainTextEdit_SetTextCursor")]
	public static extern void QPlainTextEdit_SetTextCursor(Self* c_this, QTextCursor* cursor);
	[LinkName("QPlainTextEdit_TextCursor")]
	public static extern QTextCursor QPlainTextEdit_TextCursor(Self* c_this);
	[LinkName("QPlainTextEdit_IsReadOnly")]
	public static extern bool QPlainTextEdit_IsReadOnly(Self* c_this);
	[LinkName("QPlainTextEdit_SetReadOnly")]
	public static extern void QPlainTextEdit_SetReadOnly(Self* c_this, bool ro);
	[LinkName("QPlainTextEdit_SetTextInteractionFlags")]
	public static extern void QPlainTextEdit_SetTextInteractionFlags(Self* c_this, int64 flags);
	[LinkName("QPlainTextEdit_TextInteractionFlags")]
	public static extern int64 QPlainTextEdit_TextInteractionFlags(Self* c_this);
	[LinkName("QPlainTextEdit_MergeCurrentCharFormat")]
	public static extern void QPlainTextEdit_MergeCurrentCharFormat(Self* c_this, QTextCharFormat* modifier);
	[LinkName("QPlainTextEdit_SetCurrentCharFormat")]
	public static extern void QPlainTextEdit_SetCurrentCharFormat(Self* c_this, QTextCharFormat* format);
	[LinkName("QPlainTextEdit_CurrentCharFormat")]
	public static extern QTextCharFormat QPlainTextEdit_CurrentCharFormat(Self* c_this);
	[LinkName("QPlainTextEdit_TabChangesFocus")]
	public static extern bool QPlainTextEdit_TabChangesFocus(Self* c_this);
	[LinkName("QPlainTextEdit_SetTabChangesFocus")]
	public static extern void QPlainTextEdit_SetTabChangesFocus(Self* c_this, bool b);
	[LinkName("QPlainTextEdit_SetDocumentTitle")]
	public static extern void QPlainTextEdit_SetDocumentTitle(Self* c_this, libqt_string title);
	[LinkName("QPlainTextEdit_DocumentTitle")]
	public static extern libqt_string QPlainTextEdit_DocumentTitle(Self* c_this);
	[LinkName("QPlainTextEdit_IsUndoRedoEnabled")]
	public static extern bool QPlainTextEdit_IsUndoRedoEnabled(Self* c_this);
	[LinkName("QPlainTextEdit_SetUndoRedoEnabled")]
	public static extern void QPlainTextEdit_SetUndoRedoEnabled(Self* c_this, bool enable);
	[LinkName("QPlainTextEdit_SetMaximumBlockCount")]
	public static extern void QPlainTextEdit_SetMaximumBlockCount(Self* c_this, int32 maximum);
	[LinkName("QPlainTextEdit_MaximumBlockCount")]
	public static extern int32 QPlainTextEdit_MaximumBlockCount(Self* c_this);
	[LinkName("QPlainTextEdit_LineWrapMode")]
	public static extern int64 QPlainTextEdit_LineWrapMode(Self* c_this);
	[LinkName("QPlainTextEdit_SetLineWrapMode")]
	public static extern void QPlainTextEdit_SetLineWrapMode(Self* c_this, int64 mode);
	[LinkName("QPlainTextEdit_WordWrapMode")]
	public static extern int64 QPlainTextEdit_WordWrapMode(Self* c_this);
	[LinkName("QPlainTextEdit_SetWordWrapMode")]
	public static extern void QPlainTextEdit_SetWordWrapMode(Self* c_this, int64 policy);
	[LinkName("QPlainTextEdit_SetBackgroundVisible")]
	public static extern void QPlainTextEdit_SetBackgroundVisible(Self* c_this, bool visible);
	[LinkName("QPlainTextEdit_BackgroundVisible")]
	public static extern bool QPlainTextEdit_BackgroundVisible(Self* c_this);
	[LinkName("QPlainTextEdit_SetCenterOnScroll")]
	public static extern void QPlainTextEdit_SetCenterOnScroll(Self* c_this, bool enabled);
	[LinkName("QPlainTextEdit_CenterOnScroll")]
	public static extern bool QPlainTextEdit_CenterOnScroll(Self* c_this);
	[LinkName("QPlainTextEdit_Find")]
	public static extern bool QPlainTextEdit_Find(Self* c_this, libqt_string exp);
	[LinkName("QPlainTextEdit_FindWithExp")]
	public static extern bool QPlainTextEdit_FindWithExp(Self* c_this, QRegularExpression* exp);
	[LinkName("QPlainTextEdit_ToPlainText")]
	public static extern libqt_string QPlainTextEdit_ToPlainText(Self* c_this);
	[LinkName("QPlainTextEdit_EnsureCursorVisible")]
	public static extern void QPlainTextEdit_EnsureCursorVisible(Self* c_this);
	[LinkName("QPlainTextEdit_LoadResource")]
	public static extern QVariant QPlainTextEdit_LoadResource(Self* c_this, int32 typeVal, QUrl* name);
	[LinkName("QPlainTextEdit_CreateStandardContextMenu")]
	public static extern QMenu* QPlainTextEdit_CreateStandardContextMenu(Self* c_this);
	[LinkName("QPlainTextEdit_CreateStandardContextMenuWithPosition")]
	public static extern QMenu* QPlainTextEdit_CreateStandardContextMenuWithPosition(Self* c_this, QPoint* position);
	[LinkName("QPlainTextEdit_CursorForPosition")]
	public static extern QTextCursor QPlainTextEdit_CursorForPosition(Self* c_this, QPoint* pos);
	[LinkName("QPlainTextEdit_CursorRect")]
	public static extern QRect QPlainTextEdit_CursorRect(Self* c_this, QTextCursor* cursor);
	[LinkName("QPlainTextEdit_CursorRect2")]
	public static extern QRect QPlainTextEdit_CursorRect2(Self* c_this);
	[LinkName("QPlainTextEdit_AnchorAt")]
	public static extern libqt_string QPlainTextEdit_AnchorAt(Self* c_this, QPoint* pos);
	[LinkName("QPlainTextEdit_OverwriteMode")]
	public static extern bool QPlainTextEdit_OverwriteMode(Self* c_this);
	[LinkName("QPlainTextEdit_SetOverwriteMode")]
	public static extern void QPlainTextEdit_SetOverwriteMode(Self* c_this, bool overwrite);
	[LinkName("QPlainTextEdit_TabStopDistance")]
	public static extern double QPlainTextEdit_TabStopDistance(Self* c_this);
	[LinkName("QPlainTextEdit_SetTabStopDistance")]
	public static extern void QPlainTextEdit_SetTabStopDistance(Self* c_this, double distance);
	[LinkName("QPlainTextEdit_CursorWidth")]
	public static extern int32 QPlainTextEdit_CursorWidth(Self* c_this);
	[LinkName("QPlainTextEdit_SetCursorWidth")]
	public static extern void QPlainTextEdit_SetCursorWidth(Self* c_this, int32 width);
	[LinkName("QPlainTextEdit_SetExtraSelections")]
	public static extern void QPlainTextEdit_SetExtraSelections(Self* c_this, QTextEdit__ExtraSelection[] selections);
	[LinkName("QPlainTextEdit_ExtraSelections")]
	public static extern QTextEdit__ExtraSelection[] QPlainTextEdit_ExtraSelections(Self* c_this);
	[LinkName("QPlainTextEdit_MoveCursor")]
	public static extern void QPlainTextEdit_MoveCursor(Self* c_this, int64 operation);
	[LinkName("QPlainTextEdit_CanPaste")]
	public static extern bool QPlainTextEdit_CanPaste(Self* c_this);
	[LinkName("QPlainTextEdit_Print")]
	public static extern void QPlainTextEdit_Print(Self* c_this, QPagedPaintDevice* printer);
	[LinkName("QPlainTextEdit_BlockCount")]
	public static extern int32 QPlainTextEdit_BlockCount(Self* c_this);
	[LinkName("QPlainTextEdit_InputMethodQuery")]
	public static extern QVariant QPlainTextEdit_InputMethodQuery(Self* c_this, int64 property);
	[LinkName("QPlainTextEdit_InputMethodQuery2")]
	public static extern QVariant QPlainTextEdit_InputMethodQuery2(Self* c_this, int64 query, QVariant argument);
	[LinkName("QPlainTextEdit_SetPlainText")]
	public static extern void QPlainTextEdit_SetPlainText(Self* c_this, libqt_string text);
	[LinkName("QPlainTextEdit_Cut")]
	public static extern void QPlainTextEdit_Cut(Self* c_this);
	[LinkName("QPlainTextEdit_Copy")]
	public static extern void QPlainTextEdit_Copy(Self* c_this);
	[LinkName("QPlainTextEdit_Paste")]
	public static extern void QPlainTextEdit_Paste(Self* c_this);
	[LinkName("QPlainTextEdit_Undo")]
	public static extern void QPlainTextEdit_Undo(Self* c_this);
	[LinkName("QPlainTextEdit_Redo")]
	public static extern void QPlainTextEdit_Redo(Self* c_this);
	[LinkName("QPlainTextEdit_Clear")]
	public static extern void QPlainTextEdit_Clear(Self* c_this);
	[LinkName("QPlainTextEdit_SelectAll")]
	public static extern void QPlainTextEdit_SelectAll(Self* c_this);
	[LinkName("QPlainTextEdit_InsertPlainText")]
	public static extern void QPlainTextEdit_InsertPlainText(Self* c_this, libqt_string text);
	[LinkName("QPlainTextEdit_AppendPlainText")]
	public static extern void QPlainTextEdit_AppendPlainText(Self* c_this, libqt_string text);
	[LinkName("QPlainTextEdit_AppendHtml")]
	public static extern void QPlainTextEdit_AppendHtml(Self* c_this, libqt_string html);
	[LinkName("QPlainTextEdit_CenterCursor")]
	public static extern void QPlainTextEdit_CenterCursor(Self* c_this);
	[LinkName("QPlainTextEdit_ZoomIn")]
	public static extern void QPlainTextEdit_ZoomIn(Self* c_this);
	[LinkName("QPlainTextEdit_ZoomOut")]
	public static extern void QPlainTextEdit_ZoomOut(Self* c_this);
	[LinkName("QPlainTextEdit_Connect_TextChanged")]
	public static extern void QPlainTextEdit_Connect_TextChanged(Self* c_this, c_intptr slot);
	[LinkName("QPlainTextEdit_Connect_UndoAvailable")]
	public static extern void QPlainTextEdit_Connect_UndoAvailable(Self* c_this, c_intptr slot);
	[LinkName("QPlainTextEdit_Connect_RedoAvailable")]
	public static extern void QPlainTextEdit_Connect_RedoAvailable(Self* c_this, c_intptr slot);
	[LinkName("QPlainTextEdit_Connect_CopyAvailable")]
	public static extern void QPlainTextEdit_Connect_CopyAvailable(Self* c_this, c_intptr slot);
	[LinkName("QPlainTextEdit_Connect_SelectionChanged")]
	public static extern void QPlainTextEdit_Connect_SelectionChanged(Self* c_this, c_intptr slot);
	[LinkName("QPlainTextEdit_Connect_CursorPositionChanged")]
	public static extern void QPlainTextEdit_Connect_CursorPositionChanged(Self* c_this, c_intptr slot);
	[LinkName("QPlainTextEdit_Connect_UpdateRequest")]
	public static extern void QPlainTextEdit_Connect_UpdateRequest(Self* c_this, c_intptr slot);
	[LinkName("QPlainTextEdit_Connect_BlockCountChanged")]
	public static extern void QPlainTextEdit_Connect_BlockCountChanged(Self* c_this, c_intptr slot);
	[LinkName("QPlainTextEdit_Connect_ModificationChanged")]
	public static extern void QPlainTextEdit_Connect_ModificationChanged(Self* c_this, c_intptr slot);
	[LinkName("QPlainTextEdit_Event")]
	public static extern bool QPlainTextEdit_Event(Self* c_this, QEvent* e);
	[LinkName("QPlainTextEdit_TimerEvent")]
	public static extern void QPlainTextEdit_TimerEvent(Self* c_this, QTimerEvent* e);
	[LinkName("QPlainTextEdit_KeyPressEvent")]
	public static extern void QPlainTextEdit_KeyPressEvent(Self* c_this, QKeyEvent* e);
	[LinkName("QPlainTextEdit_KeyReleaseEvent")]
	public static extern void QPlainTextEdit_KeyReleaseEvent(Self* c_this, QKeyEvent* e);
	[LinkName("QPlainTextEdit_ResizeEvent")]
	public static extern void QPlainTextEdit_ResizeEvent(Self* c_this, QResizeEvent* e);
	[LinkName("QPlainTextEdit_PaintEvent")]
	public static extern void QPlainTextEdit_PaintEvent(Self* c_this, QPaintEvent* e);
	[LinkName("QPlainTextEdit_MousePressEvent")]
	public static extern void QPlainTextEdit_MousePressEvent(Self* c_this, QMouseEvent* e);
	[LinkName("QPlainTextEdit_MouseMoveEvent")]
	public static extern void QPlainTextEdit_MouseMoveEvent(Self* c_this, QMouseEvent* e);
	[LinkName("QPlainTextEdit_MouseReleaseEvent")]
	public static extern void QPlainTextEdit_MouseReleaseEvent(Self* c_this, QMouseEvent* e);
	[LinkName("QPlainTextEdit_MouseDoubleClickEvent")]
	public static extern void QPlainTextEdit_MouseDoubleClickEvent(Self* c_this, QMouseEvent* e);
	[LinkName("QPlainTextEdit_FocusNextPrevChild")]
	public static extern bool QPlainTextEdit_FocusNextPrevChild(Self* c_this, bool next);
	[LinkName("QPlainTextEdit_ContextMenuEvent")]
	public static extern void QPlainTextEdit_ContextMenuEvent(Self* c_this, QContextMenuEvent* e);
	[LinkName("QPlainTextEdit_DragEnterEvent")]
	public static extern void QPlainTextEdit_DragEnterEvent(Self* c_this, QDragEnterEvent* e);
	[LinkName("QPlainTextEdit_DragLeaveEvent")]
	public static extern void QPlainTextEdit_DragLeaveEvent(Self* c_this, QDragLeaveEvent* e);
	[LinkName("QPlainTextEdit_DragMoveEvent")]
	public static extern void QPlainTextEdit_DragMoveEvent(Self* c_this, QDragMoveEvent* e);
	[LinkName("QPlainTextEdit_DropEvent")]
	public static extern void QPlainTextEdit_DropEvent(Self* c_this, QDropEvent* e);
	[LinkName("QPlainTextEdit_FocusInEvent")]
	public static extern void QPlainTextEdit_FocusInEvent(Self* c_this, QFocusEvent* e);
	[LinkName("QPlainTextEdit_FocusOutEvent")]
	public static extern void QPlainTextEdit_FocusOutEvent(Self* c_this, QFocusEvent* e);
	[LinkName("QPlainTextEdit_ShowEvent")]
	public static extern void QPlainTextEdit_ShowEvent(Self* c_this, QShowEvent* param1);
	[LinkName("QPlainTextEdit_ChangeEvent")]
	public static extern void QPlainTextEdit_ChangeEvent(Self* c_this, QEvent* e);
	[LinkName("QPlainTextEdit_WheelEvent")]
	public static extern void QPlainTextEdit_WheelEvent(Self* c_this, QWheelEvent* e);
	[LinkName("QPlainTextEdit_CreateMimeDataFromSelection")]
	public static extern QMimeData* QPlainTextEdit_CreateMimeDataFromSelection(Self* c_this);
	[LinkName("QPlainTextEdit_CanInsertFromMimeData")]
	public static extern bool QPlainTextEdit_CanInsertFromMimeData(Self* c_this, QMimeData* source);
	[LinkName("QPlainTextEdit_InsertFromMimeData")]
	public static extern void QPlainTextEdit_InsertFromMimeData(Self* c_this, QMimeData* source);
	[LinkName("QPlainTextEdit_InputMethodEvent")]
	public static extern void QPlainTextEdit_InputMethodEvent(Self* c_this, QInputMethodEvent* param1);
	[LinkName("QPlainTextEdit_ScrollContentsBy")]
	public static extern void QPlainTextEdit_ScrollContentsBy(Self* c_this, int32 dx, int32 dy);
	[LinkName("QPlainTextEdit_DoSetTextCursor")]
	public static extern void QPlainTextEdit_DoSetTextCursor(Self* c_this, QTextCursor* cursor);
	[LinkName("QPlainTextEdit_FirstVisibleBlock")]
	public static extern QTextBlock QPlainTextEdit_FirstVisibleBlock(Self* c_this);
	[LinkName("QPlainTextEdit_ContentOffset")]
	public static extern QPointF QPlainTextEdit_ContentOffset(Self* c_this);
	[LinkName("QPlainTextEdit_BlockBoundingRect")]
	public static extern QRectF QPlainTextEdit_BlockBoundingRect(Self* c_this, QTextBlock* block);
	[LinkName("QPlainTextEdit_BlockBoundingGeometry")]
	public static extern QRectF QPlainTextEdit_BlockBoundingGeometry(Self* c_this, QTextBlock* block);
	[LinkName("QPlainTextEdit_GetPaintContext")]
	public static extern QAbstractTextDocumentLayout__PaintContext QPlainTextEdit_GetPaintContext(Self* c_this);
	[LinkName("QPlainTextEdit_ZoomInF")]
	public static extern void QPlainTextEdit_ZoomInF(Self* c_this, float range);
	[LinkName("QPlainTextEdit_Tr2")]
	public static extern libqt_string QPlainTextEdit_Tr2(char8[] s, char8[] c);
	[LinkName("QPlainTextEdit_Tr3")]
	public static extern libqt_string QPlainTextEdit_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QPlainTextEdit_Find2")]
	public static extern bool QPlainTextEdit_Find2(Self* c_this, libqt_string exp, int64 options);
	[LinkName("QPlainTextEdit_Find22")]
	public static extern bool QPlainTextEdit_Find22(Self* c_this, QRegularExpression* exp, int64 options);
	[LinkName("QPlainTextEdit_MoveCursor2")]
	public static extern void QPlainTextEdit_MoveCursor2(Self* c_this, int64 operation, int64 mode);
	[LinkName("QPlainTextEdit_ZoomIn1")]
	public static extern void QPlainTextEdit_ZoomIn1(Self* c_this, int32 range);
	[LinkName("QPlainTextEdit_ZoomOut1")]
	public static extern void QPlainTextEdit_ZoomOut1(Self* c_this, int32 range);
}
public struct QPlainTextDocumentLayout : QAbstractTextDocumentLayout
{
	[LinkName("QPlainTextDocumentLayout_new")]
	public static extern QPlainTextDocumentLayout* QPlainTextDocumentLayout_new(QTextDocument* document);
	[LinkName("QPlainTextDocumentLayout_MetaObject")]
	public static extern QMetaObject* QPlainTextDocumentLayout_MetaObject(Self* c_this);
	[LinkName("QPlainTextDocumentLayout_Metacast")]
	public static extern void* QPlainTextDocumentLayout_Metacast(Self* c_this, char8[] param1);
	[LinkName("QPlainTextDocumentLayout_Metacall")]
	public static extern int32 QPlainTextDocumentLayout_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QPlainTextDocumentLayout_Tr")]
	public static extern libqt_string QPlainTextDocumentLayout_Tr(char8[] s);
	[LinkName("QPlainTextDocumentLayout_Draw")]
	public static extern void QPlainTextDocumentLayout_Draw(Self* c_this, QPainter* param1, QAbstractTextDocumentLayout__PaintContext* param2);
	[LinkName("QPlainTextDocumentLayout_HitTest")]
	public static extern int32 QPlainTextDocumentLayout_HitTest(Self* c_this, QPointF* param1, int64 param2);
	[LinkName("QPlainTextDocumentLayout_PageCount")]
	public static extern int32 QPlainTextDocumentLayout_PageCount(Self* c_this);
	[LinkName("QPlainTextDocumentLayout_DocumentSize")]
	public static extern QSizeF QPlainTextDocumentLayout_DocumentSize(Self* c_this);
	[LinkName("QPlainTextDocumentLayout_FrameBoundingRect")]
	public static extern QRectF QPlainTextDocumentLayout_FrameBoundingRect(Self* c_this, QTextFrame* param1);
	[LinkName("QPlainTextDocumentLayout_BlockBoundingRect")]
	public static extern QRectF QPlainTextDocumentLayout_BlockBoundingRect(Self* c_this, QTextBlock* block);
	[LinkName("QPlainTextDocumentLayout_EnsureBlockLayout")]
	public static extern void QPlainTextDocumentLayout_EnsureBlockLayout(Self* c_this, QTextBlock* block);
	[LinkName("QPlainTextDocumentLayout_SetCursorWidth")]
	public static extern void QPlainTextDocumentLayout_SetCursorWidth(Self* c_this, int32 width);
	[LinkName("QPlainTextDocumentLayout_CursorWidth")]
	public static extern int32 QPlainTextDocumentLayout_CursorWidth(Self* c_this);
	[LinkName("QPlainTextDocumentLayout_RequestUpdate")]
	public static extern void QPlainTextDocumentLayout_RequestUpdate(Self* c_this);
	[LinkName("QPlainTextDocumentLayout_DocumentChanged")]
	public static extern void QPlainTextDocumentLayout_DocumentChanged(Self* c_this, int32 from, int32 param2, int32 charsAdded);
	[LinkName("QPlainTextDocumentLayout_Tr2")]
	public static extern libqt_string QPlainTextDocumentLayout_Tr2(char8[] s, char8[] c);
	[LinkName("QPlainTextDocumentLayout_Tr3")]
	public static extern libqt_string QPlainTextDocumentLayout_Tr3(char8[] s, char8[] c, int32 n);
}