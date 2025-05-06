using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QTextDocument__MetaInformation
{
	DocumentTitle = 0,
	DocumentUrl = 1,
	CssMedia = 2,
}
[AllowDuplicates]
public enum QTextDocument__MarkdownFeature
{
	MarkdownNoHTML = 96,
	MarkdownDialectCommonMark = 0,
	MarkdownDialectGitHub = 20236,
}
[AllowDuplicates]
public enum QTextDocument__FindFlag
{
	FindBackward = 1,
	FindCaseSensitively = 2,
	FindWholeWords = 4,
}
[AllowDuplicates]
public enum QTextDocument__ResourceType
{
	UnknownResource = 0,
	HtmlResource = 1,
	ImageResource = 2,
	StyleSheetResource = 3,
	MarkdownResource = 4,
	UserResource = 100,
}
[AllowDuplicates]
public enum QTextDocument__Stacks
{
	UndoStack = 1,
	RedoStack = 2,
	UndoAndRedoStacks = 3,
}
public struct QAbstractUndoItem
{
	[LinkName("QAbstractUndoItem_Undo")]
	public static extern void QAbstractUndoItem_Undo(Self* c_this);
	[LinkName("QAbstractUndoItem_Redo")]
	public static extern void QAbstractUndoItem_Redo(Self* c_this);
	[LinkName("QAbstractUndoItem_OperatorAssign")]
	public static extern void QAbstractUndoItem_OperatorAssign(Self* c_this, QAbstractUndoItem* param1);
}
public struct QTextDocument : QObject
{
	[LinkName("QTextDocument_new")]
	public static extern QTextDocument* QTextDocument_new();
	[LinkName("QTextDocument_new2")]
	public static extern QTextDocument* QTextDocument_new2(libqt_string text);
	[LinkName("QTextDocument_new3")]
	public static extern QTextDocument* QTextDocument_new3(QObject* parent);
	[LinkName("QTextDocument_new4")]
	public static extern QTextDocument* QTextDocument_new4(libqt_string text, QObject* parent);
	[LinkName("QTextDocument_MetaObject")]
	public static extern QMetaObject* QTextDocument_MetaObject(Self* c_this);
	[LinkName("QTextDocument_Metacast")]
	public static extern void* QTextDocument_Metacast(Self* c_this, char8[] param1);
	[LinkName("QTextDocument_Metacall")]
	public static extern int32 QTextDocument_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QTextDocument_Tr")]
	public static extern libqt_string QTextDocument_Tr(char8[] s);
	[LinkName("QTextDocument_Clone")]
	public static extern QTextDocument* QTextDocument_Clone(Self* c_this);
	[LinkName("QTextDocument_IsEmpty")]
	public static extern bool QTextDocument_IsEmpty(Self* c_this);
	[LinkName("QTextDocument_Clear")]
	public static extern void QTextDocument_Clear(Self* c_this);
	[LinkName("QTextDocument_SetUndoRedoEnabled")]
	public static extern void QTextDocument_SetUndoRedoEnabled(Self* c_this, bool enable);
	[LinkName("QTextDocument_IsUndoRedoEnabled")]
	public static extern bool QTextDocument_IsUndoRedoEnabled(Self* c_this);
	[LinkName("QTextDocument_IsUndoAvailable")]
	public static extern bool QTextDocument_IsUndoAvailable(Self* c_this);
	[LinkName("QTextDocument_IsRedoAvailable")]
	public static extern bool QTextDocument_IsRedoAvailable(Self* c_this);
	[LinkName("QTextDocument_AvailableUndoSteps")]
	public static extern int32 QTextDocument_AvailableUndoSteps(Self* c_this);
	[LinkName("QTextDocument_AvailableRedoSteps")]
	public static extern int32 QTextDocument_AvailableRedoSteps(Self* c_this);
	[LinkName("QTextDocument_Revision")]
	public static extern int32 QTextDocument_Revision(Self* c_this);
	[LinkName("QTextDocument_SetDocumentLayout")]
	public static extern void QTextDocument_SetDocumentLayout(Self* c_this, QAbstractTextDocumentLayout* layout);
	[LinkName("QTextDocument_DocumentLayout")]
	public static extern QAbstractTextDocumentLayout* QTextDocument_DocumentLayout(Self* c_this);
	[LinkName("QTextDocument_SetMetaInformation")]
	public static extern void QTextDocument_SetMetaInformation(Self* c_this, int64 info, libqt_string param2);
	[LinkName("QTextDocument_MetaInformation")]
	public static extern libqt_string QTextDocument_MetaInformation(Self* c_this, int64 info);
	[LinkName("QTextDocument_ToHtml")]
	public static extern libqt_string QTextDocument_ToHtml(Self* c_this);
	[LinkName("QTextDocument_SetHtml")]
	public static extern void QTextDocument_SetHtml(Self* c_this, libqt_string html);
	[LinkName("QTextDocument_ToMarkdown")]
	public static extern libqt_string QTextDocument_ToMarkdown(Self* c_this);
	[LinkName("QTextDocument_SetMarkdown")]
	public static extern void QTextDocument_SetMarkdown(Self* c_this, libqt_string markdown);
	[LinkName("QTextDocument_ToRawText")]
	public static extern libqt_string QTextDocument_ToRawText(Self* c_this);
	[LinkName("QTextDocument_ToPlainText")]
	public static extern libqt_string QTextDocument_ToPlainText(Self* c_this);
	[LinkName("QTextDocument_SetPlainText")]
	public static extern void QTextDocument_SetPlainText(Self* c_this, libqt_string text);
	[LinkName("QTextDocument_CharacterAt")]
	public static extern QChar QTextDocument_CharacterAt(Self* c_this, int32 pos);
	[LinkName("QTextDocument_Find")]
	public static extern QTextCursor QTextDocument_Find(Self* c_this, libqt_string subString);
	[LinkName("QTextDocument_Find2")]
	public static extern QTextCursor QTextDocument_Find2(Self* c_this, libqt_string subString, QTextCursor* cursor);
	[LinkName("QTextDocument_FindWithExpr")]
	public static extern QTextCursor QTextDocument_FindWithExpr(Self* c_this, QRegularExpression* expr);
	[LinkName("QTextDocument_Find3")]
	public static extern QTextCursor QTextDocument_Find3(Self* c_this, QRegularExpression* expr, QTextCursor* cursor);
	[LinkName("QTextDocument_FrameAt")]
	public static extern QTextFrame* QTextDocument_FrameAt(Self* c_this, int32 pos);
	[LinkName("QTextDocument_RootFrame")]
	public static extern QTextFrame* QTextDocument_RootFrame(Self* c_this);
	[LinkName("QTextDocument_Object")]
	public static extern QTextObject* QTextDocument_Object(Self* c_this, int32 objectIndex);
	[LinkName("QTextDocument_ObjectForFormat")]
	public static extern QTextObject* QTextDocument_ObjectForFormat(Self* c_this, QTextFormat* param1);
	[LinkName("QTextDocument_FindBlock")]
	public static extern QTextBlock QTextDocument_FindBlock(Self* c_this, int32 pos);
	[LinkName("QTextDocument_FindBlockByNumber")]
	public static extern QTextBlock QTextDocument_FindBlockByNumber(Self* c_this, int32 blockNumber);
	[LinkName("QTextDocument_FindBlockByLineNumber")]
	public static extern QTextBlock QTextDocument_FindBlockByLineNumber(Self* c_this, int32 blockNumber);
	[LinkName("QTextDocument_Begin")]
	public static extern QTextBlock QTextDocument_Begin(Self* c_this);
	[LinkName("QTextDocument_End")]
	public static extern QTextBlock QTextDocument_End(Self* c_this);
	[LinkName("QTextDocument_FirstBlock")]
	public static extern QTextBlock QTextDocument_FirstBlock(Self* c_this);
	[LinkName("QTextDocument_LastBlock")]
	public static extern QTextBlock QTextDocument_LastBlock(Self* c_this);
	[LinkName("QTextDocument_SetPageSize")]
	public static extern void QTextDocument_SetPageSize(Self* c_this, QSizeF* size);
	[LinkName("QTextDocument_PageSize")]
	public static extern QSizeF QTextDocument_PageSize(Self* c_this);
	[LinkName("QTextDocument_SetDefaultFont")]
	public static extern void QTextDocument_SetDefaultFont(Self* c_this, QFont* font);
	[LinkName("QTextDocument_DefaultFont")]
	public static extern QFont QTextDocument_DefaultFont(Self* c_this);
	[LinkName("QTextDocument_SetSuperScriptBaseline")]
	public static extern void QTextDocument_SetSuperScriptBaseline(Self* c_this, double baseline);
	[LinkName("QTextDocument_SuperScriptBaseline")]
	public static extern double QTextDocument_SuperScriptBaseline(Self* c_this);
	[LinkName("QTextDocument_SetSubScriptBaseline")]
	public static extern void QTextDocument_SetSubScriptBaseline(Self* c_this, double baseline);
	[LinkName("QTextDocument_SubScriptBaseline")]
	public static extern double QTextDocument_SubScriptBaseline(Self* c_this);
	[LinkName("QTextDocument_SetBaselineOffset")]
	public static extern void QTextDocument_SetBaselineOffset(Self* c_this, double baseline);
	[LinkName("QTextDocument_BaselineOffset")]
	public static extern double QTextDocument_BaselineOffset(Self* c_this);
	[LinkName("QTextDocument_PageCount")]
	public static extern int32 QTextDocument_PageCount(Self* c_this);
	[LinkName("QTextDocument_IsModified")]
	public static extern bool QTextDocument_IsModified(Self* c_this);
	[LinkName("QTextDocument_Print")]
	public static extern void QTextDocument_Print(Self* c_this, QPagedPaintDevice* printer);
	[LinkName("QTextDocument_Resource")]
	public static extern QVariant QTextDocument_Resource(Self* c_this, int32 typeVal, QUrl* name);
	[LinkName("QTextDocument_AddResource")]
	public static extern void QTextDocument_AddResource(Self* c_this, int32 typeVal, QUrl* name, QVariant* resource);
	[LinkName("QTextDocument_AllFormats")]
	public static extern QTextFormat[] QTextDocument_AllFormats(Self* c_this);
	[LinkName("QTextDocument_MarkContentsDirty")]
	public static extern void QTextDocument_MarkContentsDirty(Self* c_this, int32 from, int32 length);
	[LinkName("QTextDocument_SetUseDesignMetrics")]
	public static extern void QTextDocument_SetUseDesignMetrics(Self* c_this, bool b);
	[LinkName("QTextDocument_UseDesignMetrics")]
	public static extern bool QTextDocument_UseDesignMetrics(Self* c_this);
	[LinkName("QTextDocument_SetLayoutEnabled")]
	public static extern void QTextDocument_SetLayoutEnabled(Self* c_this, bool b);
	[LinkName("QTextDocument_IsLayoutEnabled")]
	public static extern bool QTextDocument_IsLayoutEnabled(Self* c_this);
	[LinkName("QTextDocument_DrawContents")]
	public static extern void QTextDocument_DrawContents(Self* c_this, QPainter* painter);
	[LinkName("QTextDocument_SetTextWidth")]
	public static extern void QTextDocument_SetTextWidth(Self* c_this, double width);
	[LinkName("QTextDocument_TextWidth")]
	public static extern double QTextDocument_TextWidth(Self* c_this);
	[LinkName("QTextDocument_IdealWidth")]
	public static extern double QTextDocument_IdealWidth(Self* c_this);
	[LinkName("QTextDocument_IndentWidth")]
	public static extern double QTextDocument_IndentWidth(Self* c_this);
	[LinkName("QTextDocument_SetIndentWidth")]
	public static extern void QTextDocument_SetIndentWidth(Self* c_this, double width);
	[LinkName("QTextDocument_DocumentMargin")]
	public static extern double QTextDocument_DocumentMargin(Self* c_this);
	[LinkName("QTextDocument_SetDocumentMargin")]
	public static extern void QTextDocument_SetDocumentMargin(Self* c_this, double margin);
	[LinkName("QTextDocument_AdjustSize")]
	public static extern void QTextDocument_AdjustSize(Self* c_this);
	[LinkName("QTextDocument_Size")]
	public static extern QSizeF QTextDocument_Size(Self* c_this);
	[LinkName("QTextDocument_BlockCount")]
	public static extern int32 QTextDocument_BlockCount(Self* c_this);
	[LinkName("QTextDocument_LineCount")]
	public static extern int32 QTextDocument_LineCount(Self* c_this);
	[LinkName("QTextDocument_CharacterCount")]
	public static extern int32 QTextDocument_CharacterCount(Self* c_this);
	[LinkName("QTextDocument_SetDefaultStyleSheet")]
	public static extern void QTextDocument_SetDefaultStyleSheet(Self* c_this, libqt_string sheet);
	[LinkName("QTextDocument_DefaultStyleSheet")]
	public static extern libqt_string QTextDocument_DefaultStyleSheet(Self* c_this);
	[LinkName("QTextDocument_Undo")]
	public static extern void QTextDocument_Undo(Self* c_this, QTextCursor* cursor);
	[LinkName("QTextDocument_Redo")]
	public static extern void QTextDocument_Redo(Self* c_this, QTextCursor* cursor);
	[LinkName("QTextDocument_ClearUndoRedoStacks")]
	public static extern void QTextDocument_ClearUndoRedoStacks(Self* c_this);
	[LinkName("QTextDocument_MaximumBlockCount")]
	public static extern int32 QTextDocument_MaximumBlockCount(Self* c_this);
	[LinkName("QTextDocument_SetMaximumBlockCount")]
	public static extern void QTextDocument_SetMaximumBlockCount(Self* c_this, int32 maximum);
	[LinkName("QTextDocument_DefaultTextOption")]
	public static extern QTextOption QTextDocument_DefaultTextOption(Self* c_this);
	[LinkName("QTextDocument_SetDefaultTextOption")]
	public static extern void QTextDocument_SetDefaultTextOption(Self* c_this, QTextOption* option);
	[LinkName("QTextDocument_BaseUrl")]
	public static extern QUrl QTextDocument_BaseUrl(Self* c_this);
	[LinkName("QTextDocument_SetBaseUrl")]
	public static extern void QTextDocument_SetBaseUrl(Self* c_this, QUrl* url);
	[LinkName("QTextDocument_DefaultCursorMoveStyle")]
	public static extern int64 QTextDocument_DefaultCursorMoveStyle(Self* c_this);
	[LinkName("QTextDocument_SetDefaultCursorMoveStyle")]
	public static extern void QTextDocument_SetDefaultCursorMoveStyle(Self* c_this, int64 style);
	[LinkName("QTextDocument_ContentsChange")]
	public static extern void QTextDocument_ContentsChange(Self* c_this, int32 from, int32 charsRemoved, int32 charsAdded);
	[LinkName("QTextDocument_ContentsChanged")]
	public static extern void QTextDocument_ContentsChanged(Self* c_this);
	[LinkName("QTextDocument_UndoAvailable")]
	public static extern void QTextDocument_UndoAvailable(Self* c_this, bool param1);
	[LinkName("QTextDocument_RedoAvailable")]
	public static extern void QTextDocument_RedoAvailable(Self* c_this, bool param1);
	[LinkName("QTextDocument_UndoCommandAdded")]
	public static extern void QTextDocument_UndoCommandAdded(Self* c_this);
	[LinkName("QTextDocument_ModificationChanged")]
	public static extern void QTextDocument_ModificationChanged(Self* c_this, bool m);
	[LinkName("QTextDocument_CursorPositionChanged")]
	public static extern void QTextDocument_CursorPositionChanged(Self* c_this, QTextCursor* cursor);
	[LinkName("QTextDocument_BlockCountChanged")]
	public static extern void QTextDocument_BlockCountChanged(Self* c_this, int32 newBlockCount);
	[LinkName("QTextDocument_BaseUrlChanged")]
	public static extern void QTextDocument_BaseUrlChanged(Self* c_this, QUrl* url);
	[LinkName("QTextDocument_DocumentLayoutChanged")]
	public static extern void QTextDocument_DocumentLayoutChanged(Self* c_this);
	[LinkName("QTextDocument_Undo2")]
	public static extern void QTextDocument_Undo2(Self* c_this);
	[LinkName("QTextDocument_Redo2")]
	public static extern void QTextDocument_Redo2(Self* c_this);
	[LinkName("QTextDocument_AppendUndoItem")]
	public static extern void QTextDocument_AppendUndoItem(Self* c_this, QAbstractUndoItem* param1);
	[LinkName("QTextDocument_SetModified")]
	public static extern void QTextDocument_SetModified(Self* c_this);
	[LinkName("QTextDocument_CreateObject")]
	public static extern QTextObject* QTextDocument_CreateObject(Self* c_this, QTextFormat* f);
	[LinkName("QTextDocument_LoadResource")]
	public static extern QVariant QTextDocument_LoadResource(Self* c_this, int32 typeVal, QUrl* name);
	[LinkName("QTextDocument_Tr2")]
	public static extern libqt_string QTextDocument_Tr2(char8[] s, char8[] c);
	[LinkName("QTextDocument_Tr3")]
	public static extern libqt_string QTextDocument_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QTextDocument_Clone1")]
	public static extern QTextDocument* QTextDocument_Clone1(Self* c_this, QObject* parent);
	[LinkName("QTextDocument_ToMarkdown1")]
	public static extern libqt_string QTextDocument_ToMarkdown1(Self* c_this, int64 features);
	[LinkName("QTextDocument_SetMarkdown2")]
	public static extern void QTextDocument_SetMarkdown2(Self* c_this, libqt_string markdown, int64 features);
	[LinkName("QTextDocument_Find22")]
	public static extern QTextCursor QTextDocument_Find22(Self* c_this, libqt_string subString, int32 from);
	[LinkName("QTextDocument_Find32")]
	public static extern QTextCursor QTextDocument_Find32(Self* c_this, libqt_string subString, int32 from, int64 options);
	[LinkName("QTextDocument_Find33")]
	public static extern QTextCursor QTextDocument_Find33(Self* c_this, libqt_string subString, QTextCursor* cursor, int64 options);
	[LinkName("QTextDocument_Find23")]
	public static extern QTextCursor QTextDocument_Find23(Self* c_this, QRegularExpression* expr, int32 from);
	[LinkName("QTextDocument_Find34")]
	public static extern QTextCursor QTextDocument_Find34(Self* c_this, QRegularExpression* expr, int32 from, int64 options);
	[LinkName("QTextDocument_Find35")]
	public static extern QTextCursor QTextDocument_Find35(Self* c_this, QRegularExpression* expr, QTextCursor* cursor, int64 options);
	[LinkName("QTextDocument_DrawContents2")]
	public static extern void QTextDocument_DrawContents2(Self* c_this, QPainter* painter, QRectF* rect);
	[LinkName("QTextDocument_ClearUndoRedoStacks1")]
	public static extern void QTextDocument_ClearUndoRedoStacks1(Self* c_this, int64 historyToClear);
	[LinkName("QTextDocument_SetModified1")]
	public static extern void QTextDocument_SetModified1(Self* c_this, bool m);
}