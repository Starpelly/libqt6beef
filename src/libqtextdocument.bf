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
	public static extern void QAbstractUndoItem_Undo(void* c_this);
	[LinkName("QAbstractUndoItem_Redo")]
	public static extern void QAbstractUndoItem_Redo(void* c_this);
	[LinkName("QAbstractUndoItem_OperatorAssign")]
	public static extern void QAbstractUndoItem_OperatorAssign(void* c_this, QAbstractUndoItem param1);
}
public struct QTextDocument
{
	[LinkName("QTextDocument_new")]
	public static extern void* QTextDocument_new();
	[LinkName("QTextDocument_new2")]
	public static extern void* QTextDocument_new2(char8[] text);
	[LinkName("QTextDocument_new3")]
	public static extern void* QTextDocument_new3(QObject parent);
	[LinkName("QTextDocument_new4")]
	public static extern void* QTextDocument_new4(char8[] text, QObject parent);
	[LinkName("QTextDocument_MetaObject")]
	public static extern QMetaObject QTextDocument_MetaObject(void* c_this);
	[LinkName("QTextDocument_Metacast")]
	public static extern void QTextDocument_Metacast(void* c_this, char8[] param1);
	[LinkName("QTextDocument_Metacall")]
	public static extern int32 QTextDocument_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QTextDocument_Tr")]
	public static extern char8[] QTextDocument_Tr(char8[] s);
	[LinkName("QTextDocument_Clone")]
	public static extern QTextDocument QTextDocument_Clone(void* c_this);
	[LinkName("QTextDocument_IsEmpty")]
	public static extern bool QTextDocument_IsEmpty(void* c_this);
	[LinkName("QTextDocument_Clear")]
	public static extern void QTextDocument_Clear(void* c_this);
	[LinkName("QTextDocument_SetUndoRedoEnabled")]
	public static extern void QTextDocument_SetUndoRedoEnabled(void* c_this, bool enable);
	[LinkName("QTextDocument_IsUndoRedoEnabled")]
	public static extern bool QTextDocument_IsUndoRedoEnabled(void* c_this);
	[LinkName("QTextDocument_IsUndoAvailable")]
	public static extern bool QTextDocument_IsUndoAvailable(void* c_this);
	[LinkName("QTextDocument_IsRedoAvailable")]
	public static extern bool QTextDocument_IsRedoAvailable(void* c_this);
	[LinkName("QTextDocument_AvailableUndoSteps")]
	public static extern int32 QTextDocument_AvailableUndoSteps(void* c_this);
	[LinkName("QTextDocument_AvailableRedoSteps")]
	public static extern int32 QTextDocument_AvailableRedoSteps(void* c_this);
	[LinkName("QTextDocument_Revision")]
	public static extern int32 QTextDocument_Revision(void* c_this);
	[LinkName("QTextDocument_SetDocumentLayout")]
	public static extern void QTextDocument_SetDocumentLayout(void* c_this, QAbstractTextDocumentLayout layout);
	[LinkName("QTextDocument_DocumentLayout")]
	public static extern QAbstractTextDocumentLayout QTextDocument_DocumentLayout(void* c_this);
	[LinkName("QTextDocument_SetMetaInformation")]
	public static extern void QTextDocument_SetMetaInformation(void* c_this, int64 info, char8[] param2);
	[LinkName("QTextDocument_MetaInformation")]
	public static extern char8[] QTextDocument_MetaInformation(void* c_this, int64 info);
	[LinkName("QTextDocument_ToHtml")]
	public static extern char8[] QTextDocument_ToHtml(void* c_this);
	[LinkName("QTextDocument_SetHtml")]
	public static extern void QTextDocument_SetHtml(void* c_this, char8[] html);
	[LinkName("QTextDocument_ToMarkdown")]
	public static extern char8[] QTextDocument_ToMarkdown(void* c_this);
	[LinkName("QTextDocument_SetMarkdown")]
	public static extern void QTextDocument_SetMarkdown(void* c_this, char8[] markdown);
	[LinkName("QTextDocument_ToRawText")]
	public static extern char8[] QTextDocument_ToRawText(void* c_this);
	[LinkName("QTextDocument_ToPlainText")]
	public static extern char8[] QTextDocument_ToPlainText(void* c_this);
	[LinkName("QTextDocument_SetPlainText")]
	public static extern void QTextDocument_SetPlainText(void* c_this, char8[] text);
	[LinkName("QTextDocument_CharacterAt")]
	public static extern QChar QTextDocument_CharacterAt(void* c_this, int32 pos);
	[LinkName("QTextDocument_Find")]
	public static extern QTextCursor QTextDocument_Find(void* c_this, char8[] subString);
	[LinkName("QTextDocument_Find2")]
	public static extern QTextCursor QTextDocument_Find2(void* c_this, char8[] subString, QTextCursor cursor);
	[LinkName("QTextDocument_FindWithExpr")]
	public static extern QTextCursor QTextDocument_FindWithExpr(void* c_this, QRegularExpression expr);
	[LinkName("QTextDocument_Find3")]
	public static extern QTextCursor QTextDocument_Find3(void* c_this, QRegularExpression expr, QTextCursor cursor);
	[LinkName("QTextDocument_FrameAt")]
	public static extern QTextFrame QTextDocument_FrameAt(void* c_this, int32 pos);
	[LinkName("QTextDocument_RootFrame")]
	public static extern QTextFrame QTextDocument_RootFrame(void* c_this);
	[LinkName("QTextDocument_Object")]
	public static extern QTextObject QTextDocument_Object(void* c_this, int32 objectIndex);
	[LinkName("QTextDocument_ObjectForFormat")]
	public static extern QTextObject QTextDocument_ObjectForFormat(void* c_this, QTextFormat param1);
	[LinkName("QTextDocument_FindBlock")]
	public static extern QTextBlock QTextDocument_FindBlock(void* c_this, int32 pos);
	[LinkName("QTextDocument_FindBlockByNumber")]
	public static extern QTextBlock QTextDocument_FindBlockByNumber(void* c_this, int32 blockNumber);
	[LinkName("QTextDocument_FindBlockByLineNumber")]
	public static extern QTextBlock QTextDocument_FindBlockByLineNumber(void* c_this, int32 blockNumber);
	[LinkName("QTextDocument_Begin")]
	public static extern QTextBlock QTextDocument_Begin(void* c_this);
	[LinkName("QTextDocument_End")]
	public static extern QTextBlock QTextDocument_End(void* c_this);
	[LinkName("QTextDocument_FirstBlock")]
	public static extern QTextBlock QTextDocument_FirstBlock(void* c_this);
	[LinkName("QTextDocument_LastBlock")]
	public static extern QTextBlock QTextDocument_LastBlock(void* c_this);
	[LinkName("QTextDocument_SetPageSize")]
	public static extern void QTextDocument_SetPageSize(void* c_this, QSizeF size);
	[LinkName("QTextDocument_PageSize")]
	public static extern QSizeF QTextDocument_PageSize(void* c_this);
	[LinkName("QTextDocument_SetDefaultFont")]
	public static extern void QTextDocument_SetDefaultFont(void* c_this, QFont font);
	[LinkName("QTextDocument_DefaultFont")]
	public static extern QFont QTextDocument_DefaultFont(void* c_this);
	[LinkName("QTextDocument_SetSuperScriptBaseline")]
	public static extern void QTextDocument_SetSuperScriptBaseline(void* c_this, double baseline);
	[LinkName("QTextDocument_SuperScriptBaseline")]
	public static extern double QTextDocument_SuperScriptBaseline(void* c_this);
	[LinkName("QTextDocument_SetSubScriptBaseline")]
	public static extern void QTextDocument_SetSubScriptBaseline(void* c_this, double baseline);
	[LinkName("QTextDocument_SubScriptBaseline")]
	public static extern double QTextDocument_SubScriptBaseline(void* c_this);
	[LinkName("QTextDocument_SetBaselineOffset")]
	public static extern void QTextDocument_SetBaselineOffset(void* c_this, double baseline);
	[LinkName("QTextDocument_BaselineOffset")]
	public static extern double QTextDocument_BaselineOffset(void* c_this);
	[LinkName("QTextDocument_PageCount")]
	public static extern int32 QTextDocument_PageCount(void* c_this);
	[LinkName("QTextDocument_IsModified")]
	public static extern bool QTextDocument_IsModified(void* c_this);
	[LinkName("QTextDocument_Print")]
	public static extern void QTextDocument_Print(void* c_this, QPagedPaintDevice printer);
	[LinkName("QTextDocument_Resource")]
	public static extern QVariant QTextDocument_Resource(void* c_this, int32 typeVal, QUrl name);
	[LinkName("QTextDocument_AddResource")]
	public static extern void QTextDocument_AddResource(void* c_this, int32 typeVal, QUrl name, QVariant resource);
	[LinkName("QTextDocument_AllFormats")]
	public static extern QTextFormat[] QTextDocument_AllFormats(void* c_this);
	[LinkName("QTextDocument_MarkContentsDirty")]
	public static extern void QTextDocument_MarkContentsDirty(void* c_this, int32 from, int32 length);
	[LinkName("QTextDocument_SetUseDesignMetrics")]
	public static extern void QTextDocument_SetUseDesignMetrics(void* c_this, bool b);
	[LinkName("QTextDocument_UseDesignMetrics")]
	public static extern bool QTextDocument_UseDesignMetrics(void* c_this);
	[LinkName("QTextDocument_SetLayoutEnabled")]
	public static extern void QTextDocument_SetLayoutEnabled(void* c_this, bool b);
	[LinkName("QTextDocument_IsLayoutEnabled")]
	public static extern bool QTextDocument_IsLayoutEnabled(void* c_this);
	[LinkName("QTextDocument_DrawContents")]
	public static extern void QTextDocument_DrawContents(void* c_this, QPainter painter);
	[LinkName("QTextDocument_SetTextWidth")]
	public static extern void QTextDocument_SetTextWidth(void* c_this, double width);
	[LinkName("QTextDocument_TextWidth")]
	public static extern double QTextDocument_TextWidth(void* c_this);
	[LinkName("QTextDocument_IdealWidth")]
	public static extern double QTextDocument_IdealWidth(void* c_this);
	[LinkName("QTextDocument_IndentWidth")]
	public static extern double QTextDocument_IndentWidth(void* c_this);
	[LinkName("QTextDocument_SetIndentWidth")]
	public static extern void QTextDocument_SetIndentWidth(void* c_this, double width);
	[LinkName("QTextDocument_DocumentMargin")]
	public static extern double QTextDocument_DocumentMargin(void* c_this);
	[LinkName("QTextDocument_SetDocumentMargin")]
	public static extern void QTextDocument_SetDocumentMargin(void* c_this, double margin);
	[LinkName("QTextDocument_AdjustSize")]
	public static extern void QTextDocument_AdjustSize(void* c_this);
	[LinkName("QTextDocument_Size")]
	public static extern QSizeF QTextDocument_Size(void* c_this);
	[LinkName("QTextDocument_BlockCount")]
	public static extern int32 QTextDocument_BlockCount(void* c_this);
	[LinkName("QTextDocument_LineCount")]
	public static extern int32 QTextDocument_LineCount(void* c_this);
	[LinkName("QTextDocument_CharacterCount")]
	public static extern int32 QTextDocument_CharacterCount(void* c_this);
	[LinkName("QTextDocument_SetDefaultStyleSheet")]
	public static extern void QTextDocument_SetDefaultStyleSheet(void* c_this, char8[] sheet);
	[LinkName("QTextDocument_DefaultStyleSheet")]
	public static extern char8[] QTextDocument_DefaultStyleSheet(void* c_this);
	[LinkName("QTextDocument_Undo")]
	public static extern void QTextDocument_Undo(void* c_this, QTextCursor cursor);
	[LinkName("QTextDocument_Redo")]
	public static extern void QTextDocument_Redo(void* c_this, QTextCursor cursor);
	[LinkName("QTextDocument_ClearUndoRedoStacks")]
	public static extern void QTextDocument_ClearUndoRedoStacks(void* c_this);
	[LinkName("QTextDocument_MaximumBlockCount")]
	public static extern int32 QTextDocument_MaximumBlockCount(void* c_this);
	[LinkName("QTextDocument_SetMaximumBlockCount")]
	public static extern void QTextDocument_SetMaximumBlockCount(void* c_this, int32 maximum);
	[LinkName("QTextDocument_DefaultTextOption")]
	public static extern QTextOption QTextDocument_DefaultTextOption(void* c_this);
	[LinkName("QTextDocument_SetDefaultTextOption")]
	public static extern void QTextDocument_SetDefaultTextOption(void* c_this, QTextOption option);
	[LinkName("QTextDocument_BaseUrl")]
	public static extern QUrl QTextDocument_BaseUrl(void* c_this);
	[LinkName("QTextDocument_SetBaseUrl")]
	public static extern void QTextDocument_SetBaseUrl(void* c_this, QUrl url);
	[LinkName("QTextDocument_DefaultCursorMoveStyle")]
	public static extern int64 QTextDocument_DefaultCursorMoveStyle(void* c_this);
	[LinkName("QTextDocument_SetDefaultCursorMoveStyle")]
	public static extern void QTextDocument_SetDefaultCursorMoveStyle(void* c_this, int64 style);
	[LinkName("QTextDocument_ContentsChange")]
	public static extern void QTextDocument_ContentsChange(void* c_this, int32 from, int32 charsRemoved, int32 charsAdded);
	[LinkName("QTextDocument_ContentsChanged")]
	public static extern void QTextDocument_ContentsChanged(void* c_this);
	[LinkName("QTextDocument_UndoAvailable")]
	public static extern void QTextDocument_UndoAvailable(void* c_this, bool param1);
	[LinkName("QTextDocument_RedoAvailable")]
	public static extern void QTextDocument_RedoAvailable(void* c_this, bool param1);
	[LinkName("QTextDocument_UndoCommandAdded")]
	public static extern void QTextDocument_UndoCommandAdded(void* c_this);
	[LinkName("QTextDocument_ModificationChanged")]
	public static extern void QTextDocument_ModificationChanged(void* c_this, bool m);
	[LinkName("QTextDocument_CursorPositionChanged")]
	public static extern void QTextDocument_CursorPositionChanged(void* c_this, QTextCursor cursor);
	[LinkName("QTextDocument_BlockCountChanged")]
	public static extern void QTextDocument_BlockCountChanged(void* c_this, int32 newBlockCount);
	[LinkName("QTextDocument_BaseUrlChanged")]
	public static extern void QTextDocument_BaseUrlChanged(void* c_this, QUrl url);
	[LinkName("QTextDocument_DocumentLayoutChanged")]
	public static extern void QTextDocument_DocumentLayoutChanged(void* c_this);
	[LinkName("QTextDocument_Undo2")]
	public static extern void QTextDocument_Undo2(void* c_this);
	[LinkName("QTextDocument_Redo2")]
	public static extern void QTextDocument_Redo2(void* c_this);
	[LinkName("QTextDocument_AppendUndoItem")]
	public static extern void QTextDocument_AppendUndoItem(void* c_this, QAbstractUndoItem param1);
	[LinkName("QTextDocument_SetModified")]
	public static extern void QTextDocument_SetModified(void* c_this);
	[LinkName("QTextDocument_CreateObject")]
	public static extern QTextObject QTextDocument_CreateObject(void* c_this, QTextFormat f);
	[LinkName("QTextDocument_LoadResource")]
	public static extern QVariant QTextDocument_LoadResource(void* c_this, int32 typeVal, QUrl name);
	[LinkName("QTextDocument_Tr2")]
	public static extern char8[] QTextDocument_Tr2(char8[] s, char8[] c);
	[LinkName("QTextDocument_Tr3")]
	public static extern char8[] QTextDocument_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QTextDocument_Clone1")]
	public static extern QTextDocument QTextDocument_Clone1(void* c_this, QObject parent);
	[LinkName("QTextDocument_ToMarkdown1")]
	public static extern char8[] QTextDocument_ToMarkdown1(void* c_this, int64 features);
	[LinkName("QTextDocument_SetMarkdown2")]
	public static extern void QTextDocument_SetMarkdown2(void* c_this, char8[] markdown, int64 features);
	[LinkName("QTextDocument_Find22")]
	public static extern QTextCursor QTextDocument_Find22(void* c_this, char8[] subString, int32 from);
	[LinkName("QTextDocument_Find32")]
	public static extern QTextCursor QTextDocument_Find32(void* c_this, char8[] subString, int32 from, int64 options);
	[LinkName("QTextDocument_Find33")]
	public static extern QTextCursor QTextDocument_Find33(void* c_this, char8[] subString, QTextCursor cursor, int64 options);
	[LinkName("QTextDocument_Find23")]
	public static extern QTextCursor QTextDocument_Find23(void* c_this, QRegularExpression expr, int32 from);
	[LinkName("QTextDocument_Find34")]
	public static extern QTextCursor QTextDocument_Find34(void* c_this, QRegularExpression expr, int32 from, int64 options);
	[LinkName("QTextDocument_Find35")]
	public static extern QTextCursor QTextDocument_Find35(void* c_this, QRegularExpression expr, QTextCursor cursor, int64 options);
	[LinkName("QTextDocument_DrawContents2")]
	public static extern void QTextDocument_DrawContents2(void* c_this, QPainter painter, QRectF rect);
	[LinkName("QTextDocument_ClearUndoRedoStacks1")]
	public static extern void QTextDocument_ClearUndoRedoStacks1(void* c_this, int64 historyToClear);
	[LinkName("QTextDocument_SetModified1")]
	public static extern void QTextDocument_SetModified1(void* c_this, bool m);
}