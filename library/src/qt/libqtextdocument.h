#pragma once
#ifndef SRC_QTC_LIBQTEXTDOCUMENT_H
#define SRC_QTC_LIBQTEXTDOCUMENT_H

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
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection)
typedef QMetaObject::Connection QMetaObject__Connection;
#endif
#else
typedef struct QAbstractTextDocumentLayout QAbstractTextDocumentLayout;
typedef struct QAbstractUndoItem QAbstractUndoItem;
typedef struct QAnyStringView QAnyStringView;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChar QChar;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QFont QFont;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QPagedPaintDevice QPagedPaintDevice;
typedef struct QPainter QPainter;
typedef struct QRectF QRectF;
typedef struct QRegularExpression QRegularExpression;
typedef struct QSizeF QSizeF;
typedef struct QTextBlock QTextBlock;
typedef struct QTextCursor QTextCursor;
typedef struct QTextDocument QTextDocument;
typedef struct QTextFormat QTextFormat;
typedef struct QTextFrame QTextFrame;
typedef struct QTextObject QTextObject;
typedef struct QTextOption QTextOption;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QTextDocument::FindFlag FindFlag;                 // C++ enum
typedef QTextDocument::FindFlags FindFlags;               // C++ QFlags
typedef QTextDocument::MarkdownFeature MarkdownFeature;   // C++ enum
typedef QTextDocument::MarkdownFeatures MarkdownFeatures; // C++ QFlags
typedef QTextDocument::MetaInformation MetaInformation;   // C++ enum
typedef QTextDocument::ResourceProvider ResourceProvider; // C++ QFlags
typedef QTextDocument::ResourceType ResourceType;         // C++ enum
typedef QTextDocument::Stacks Stacks;                     // C++ enum
#else
typedef int FindFlag;         // C ABI enum
typedef int FindFlags;        // C ABI QFlags
typedef int MarkdownFeature;  // C ABI enum
typedef int MarkdownFeatures; // C ABI QFlags
typedef int MetaInformation;  // C ABI enum
typedef int ResourceType;     // C ABI enum
typedef int Stacks;           // C ABI enum
#endif

QTLIBC_API void QAbstractUndoItem_Undo(QAbstractUndoItem* self);
QTLIBC_API void QAbstractUndoItem_Redo(QAbstractUndoItem* self);
QTLIBC_API void QAbstractUndoItem_OperatorAssign(QAbstractUndoItem* self, QAbstractUndoItem* param1);
QTLIBC_API void QAbstractUndoItem_Delete(QAbstractUndoItem* self);

QTLIBC_API QTextDocument* QTextDocument_new();
QTLIBC_API QTextDocument* QTextDocument_new2(libqt_string text);
QTLIBC_API QTextDocument* QTextDocument_new3(QObject* parent);
QTLIBC_API QTextDocument* QTextDocument_new4(libqt_string text, QObject* parent);
QTLIBC_API QMetaObject* QTextDocument_MetaObject(const QTextDocument* self);
QTLIBC_API void* QTextDocument_Metacast(QTextDocument* self, const char* param1);
QTLIBC_API int QTextDocument_Metacall(QTextDocument* self, int param1, int param2, void** param3);
QTLIBC_API void QTextDocument_OnMetacall(QTextDocument* self, intptr_t slot);
QTLIBC_API int QTextDocument_QBaseMetacall(QTextDocument* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QTextDocument_Tr(const char* s);
QTLIBC_API QTextDocument* QTextDocument_Clone(const QTextDocument* self);
QTLIBC_API bool QTextDocument_IsEmpty(const QTextDocument* self);
QTLIBC_API void QTextDocument_Clear(QTextDocument* self);
QTLIBC_API void QTextDocument_OnClear(QTextDocument* self, intptr_t slot);
QTLIBC_API void QTextDocument_QBaseClear(QTextDocument* self);
QTLIBC_API void QTextDocument_SetUndoRedoEnabled(QTextDocument* self, bool enable);
QTLIBC_API bool QTextDocument_IsUndoRedoEnabled(const QTextDocument* self);
QTLIBC_API bool QTextDocument_IsUndoAvailable(const QTextDocument* self);
QTLIBC_API bool QTextDocument_IsRedoAvailable(const QTextDocument* self);
QTLIBC_API int QTextDocument_AvailableUndoSteps(const QTextDocument* self);
QTLIBC_API int QTextDocument_AvailableRedoSteps(const QTextDocument* self);
QTLIBC_API int QTextDocument_Revision(const QTextDocument* self);
QTLIBC_API void QTextDocument_SetDocumentLayout(QTextDocument* self, QAbstractTextDocumentLayout* layout);
QTLIBC_API QAbstractTextDocumentLayout* QTextDocument_DocumentLayout(const QTextDocument* self);
QTLIBC_API void QTextDocument_SetMetaInformation(QTextDocument* self, int info, libqt_string param2);
QTLIBC_API libqt_string QTextDocument_MetaInformation(const QTextDocument* self, int info);
QTLIBC_API libqt_string QTextDocument_ToHtml(const QTextDocument* self);
QTLIBC_API void QTextDocument_SetHtml(QTextDocument* self, libqt_string html);
QTLIBC_API libqt_string QTextDocument_ToMarkdown(const QTextDocument* self);
QTLIBC_API void QTextDocument_SetMarkdown(QTextDocument* self, libqt_string markdown);
QTLIBC_API libqt_string QTextDocument_ToRawText(const QTextDocument* self);
QTLIBC_API libqt_string QTextDocument_ToPlainText(const QTextDocument* self);
QTLIBC_API void QTextDocument_SetPlainText(QTextDocument* self, libqt_string text);
QTLIBC_API QChar* QTextDocument_CharacterAt(const QTextDocument* self, int pos);
QTLIBC_API QTextCursor* QTextDocument_Find(const QTextDocument* self, libqt_string subString);
QTLIBC_API QTextCursor* QTextDocument_Find2(const QTextDocument* self, libqt_string subString, QTextCursor* cursor);
QTLIBC_API QTextCursor* QTextDocument_FindWithExpr(const QTextDocument* self, QRegularExpression* expr);
QTLIBC_API QTextCursor* QTextDocument_Find3(const QTextDocument* self, QRegularExpression* expr, QTextCursor* cursor);
QTLIBC_API QTextFrame* QTextDocument_FrameAt(const QTextDocument* self, int pos);
QTLIBC_API QTextFrame* QTextDocument_RootFrame(const QTextDocument* self);
QTLIBC_API QTextObject* QTextDocument_Object(const QTextDocument* self, int objectIndex);
QTLIBC_API QTextObject* QTextDocument_ObjectForFormat(const QTextDocument* self, QTextFormat* param1);
QTLIBC_API QTextBlock* QTextDocument_FindBlock(const QTextDocument* self, int pos);
QTLIBC_API QTextBlock* QTextDocument_FindBlockByNumber(const QTextDocument* self, int blockNumber);
QTLIBC_API QTextBlock* QTextDocument_FindBlockByLineNumber(const QTextDocument* self, int blockNumber);
QTLIBC_API QTextBlock* QTextDocument_Begin(const QTextDocument* self);
QTLIBC_API QTextBlock* QTextDocument_End(const QTextDocument* self);
QTLIBC_API QTextBlock* QTextDocument_FirstBlock(const QTextDocument* self);
QTLIBC_API QTextBlock* QTextDocument_LastBlock(const QTextDocument* self);
QTLIBC_API void QTextDocument_SetPageSize(QTextDocument* self, QSizeF* size);
QTLIBC_API QSizeF* QTextDocument_PageSize(const QTextDocument* self);
QTLIBC_API void QTextDocument_SetDefaultFont(QTextDocument* self, QFont* font);
QTLIBC_API QFont* QTextDocument_DefaultFont(const QTextDocument* self);
QTLIBC_API void QTextDocument_SetSuperScriptBaseline(QTextDocument* self, double baseline);
QTLIBC_API double QTextDocument_SuperScriptBaseline(const QTextDocument* self);
QTLIBC_API void QTextDocument_SetSubScriptBaseline(QTextDocument* self, double baseline);
QTLIBC_API double QTextDocument_SubScriptBaseline(const QTextDocument* self);
QTLIBC_API void QTextDocument_SetBaselineOffset(QTextDocument* self, double baseline);
QTLIBC_API double QTextDocument_BaselineOffset(const QTextDocument* self);
QTLIBC_API int QTextDocument_PageCount(const QTextDocument* self);
QTLIBC_API bool QTextDocument_IsModified(const QTextDocument* self);
QTLIBC_API void QTextDocument_Print(const QTextDocument* self, QPagedPaintDevice* printer);
QTLIBC_API QVariant* QTextDocument_Resource(const QTextDocument* self, int typeVal, QUrl* name);
QTLIBC_API void QTextDocument_AddResource(QTextDocument* self, int typeVal, QUrl* name, QVariant* resource);
QTLIBC_API libqt_list /* of QTextFormat* */ QTextDocument_AllFormats(const QTextDocument* self);
QTLIBC_API void QTextDocument_MarkContentsDirty(QTextDocument* self, int from, int length);
QTLIBC_API void QTextDocument_SetUseDesignMetrics(QTextDocument* self, bool b);
QTLIBC_API bool QTextDocument_UseDesignMetrics(const QTextDocument* self);
QTLIBC_API void QTextDocument_SetLayoutEnabled(QTextDocument* self, bool b);
QTLIBC_API bool QTextDocument_IsLayoutEnabled(const QTextDocument* self);
QTLIBC_API void QTextDocument_DrawContents(QTextDocument* self, QPainter* painter);
QTLIBC_API void QTextDocument_SetTextWidth(QTextDocument* self, double width);
QTLIBC_API double QTextDocument_TextWidth(const QTextDocument* self);
QTLIBC_API double QTextDocument_IdealWidth(const QTextDocument* self);
QTLIBC_API double QTextDocument_IndentWidth(const QTextDocument* self);
QTLIBC_API void QTextDocument_SetIndentWidth(QTextDocument* self, double width);
QTLIBC_API double QTextDocument_DocumentMargin(const QTextDocument* self);
QTLIBC_API void QTextDocument_SetDocumentMargin(QTextDocument* self, double margin);
QTLIBC_API void QTextDocument_AdjustSize(QTextDocument* self);
QTLIBC_API QSizeF* QTextDocument_Size(const QTextDocument* self);
QTLIBC_API int QTextDocument_BlockCount(const QTextDocument* self);
QTLIBC_API int QTextDocument_LineCount(const QTextDocument* self);
QTLIBC_API int QTextDocument_CharacterCount(const QTextDocument* self);
QTLIBC_API void QTextDocument_SetDefaultStyleSheet(QTextDocument* self, libqt_string sheet);
QTLIBC_API libqt_string QTextDocument_DefaultStyleSheet(const QTextDocument* self);
QTLIBC_API void QTextDocument_Undo(QTextDocument* self, QTextCursor* cursor);
QTLIBC_API void QTextDocument_Redo(QTextDocument* self, QTextCursor* cursor);
QTLIBC_API void QTextDocument_ClearUndoRedoStacks(QTextDocument* self);
QTLIBC_API int QTextDocument_MaximumBlockCount(const QTextDocument* self);
QTLIBC_API void QTextDocument_SetMaximumBlockCount(QTextDocument* self, int maximum);
QTLIBC_API QTextOption* QTextDocument_DefaultTextOption(const QTextDocument* self);
QTLIBC_API void QTextDocument_SetDefaultTextOption(QTextDocument* self, QTextOption* option);
QTLIBC_API QUrl* QTextDocument_BaseUrl(const QTextDocument* self);
QTLIBC_API void QTextDocument_SetBaseUrl(QTextDocument* self, QUrl* url);
QTLIBC_API int QTextDocument_DefaultCursorMoveStyle(const QTextDocument* self);
QTLIBC_API void QTextDocument_SetDefaultCursorMoveStyle(QTextDocument* self, int style);
QTLIBC_API void QTextDocument_ContentsChange(QTextDocument* self, int from, int charsRemoved, int charsAdded);
QTLIBC_API void QTextDocument_Connect_ContentsChange(QTextDocument* self, intptr_t slot);
QTLIBC_API void QTextDocument_ContentsChanged(QTextDocument* self);
QTLIBC_API void QTextDocument_Connect_ContentsChanged(QTextDocument* self, intptr_t slot);
QTLIBC_API void QTextDocument_UndoAvailable(QTextDocument* self, bool param1);
QTLIBC_API void QTextDocument_Connect_UndoAvailable(QTextDocument* self, intptr_t slot);
QTLIBC_API void QTextDocument_RedoAvailable(QTextDocument* self, bool param1);
QTLIBC_API void QTextDocument_Connect_RedoAvailable(QTextDocument* self, intptr_t slot);
QTLIBC_API void QTextDocument_UndoCommandAdded(QTextDocument* self);
QTLIBC_API void QTextDocument_Connect_UndoCommandAdded(QTextDocument* self, intptr_t slot);
QTLIBC_API void QTextDocument_ModificationChanged(QTextDocument* self, bool m);
QTLIBC_API void QTextDocument_Connect_ModificationChanged(QTextDocument* self, intptr_t slot);
QTLIBC_API void QTextDocument_CursorPositionChanged(QTextDocument* self, QTextCursor* cursor);
QTLIBC_API void QTextDocument_Connect_CursorPositionChanged(QTextDocument* self, intptr_t slot);
QTLIBC_API void QTextDocument_BlockCountChanged(QTextDocument* self, int newBlockCount);
QTLIBC_API void QTextDocument_Connect_BlockCountChanged(QTextDocument* self, intptr_t slot);
QTLIBC_API void QTextDocument_BaseUrlChanged(QTextDocument* self, QUrl* url);
QTLIBC_API void QTextDocument_Connect_BaseUrlChanged(QTextDocument* self, intptr_t slot);
QTLIBC_API void QTextDocument_DocumentLayoutChanged(QTextDocument* self);
QTLIBC_API void QTextDocument_Connect_DocumentLayoutChanged(QTextDocument* self, intptr_t slot);
QTLIBC_API void QTextDocument_Undo2(QTextDocument* self);
QTLIBC_API void QTextDocument_Redo2(QTextDocument* self);
QTLIBC_API void QTextDocument_AppendUndoItem(QTextDocument* self, QAbstractUndoItem* param1);
QTLIBC_API void QTextDocument_SetModified(QTextDocument* self);
QTLIBC_API QTextObject* QTextDocument_CreateObject(QTextDocument* self, QTextFormat* f);
QTLIBC_API void QTextDocument_OnCreateObject(QTextDocument* self, intptr_t slot);
QTLIBC_API QTextObject* QTextDocument_QBaseCreateObject(QTextDocument* self, QTextFormat* f);
QTLIBC_API QVariant* QTextDocument_LoadResource(QTextDocument* self, int typeVal, QUrl* name);
QTLIBC_API void QTextDocument_OnLoadResource(QTextDocument* self, intptr_t slot);
QTLIBC_API QVariant* QTextDocument_QBaseLoadResource(QTextDocument* self, int typeVal, QUrl* name);
QTLIBC_API libqt_string QTextDocument_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QTextDocument_Tr3(const char* s, const char* c, int n);
QTLIBC_API QTextDocument* QTextDocument_Clone1(const QTextDocument* self, QObject* parent);
QTLIBC_API libqt_string QTextDocument_ToMarkdown1(const QTextDocument* self, int features);
QTLIBC_API void QTextDocument_SetMarkdown2(QTextDocument* self, libqt_string markdown, int features);
QTLIBC_API QTextCursor* QTextDocument_Find22(const QTextDocument* self, libqt_string subString, int from);
QTLIBC_API QTextCursor* QTextDocument_Find32(const QTextDocument* self, libqt_string subString, int from, int options);
QTLIBC_API QTextCursor* QTextDocument_Find33(const QTextDocument* self, libqt_string subString, QTextCursor* cursor, int options);
QTLIBC_API QTextCursor* QTextDocument_Find23(const QTextDocument* self, QRegularExpression* expr, int from);
QTLIBC_API QTextCursor* QTextDocument_Find34(const QTextDocument* self, QRegularExpression* expr, int from, int options);
QTLIBC_API QTextCursor* QTextDocument_Find35(const QTextDocument* self, QRegularExpression* expr, QTextCursor* cursor, int options);
QTLIBC_API void QTextDocument_DrawContents2(QTextDocument* self, QPainter* painter, QRectF* rect);
QTLIBC_API void QTextDocument_ClearUndoRedoStacks1(QTextDocument* self, int historyToClear);
QTLIBC_API void QTextDocument_SetModified1(QTextDocument* self, bool m);
QTLIBC_API bool QTextDocument_Event(QTextDocument* self, QEvent* event);
QTLIBC_API void QTextDocument_OnEvent(QTextDocument* self, intptr_t slot);
QTLIBC_API bool QTextDocument_QBaseEvent(QTextDocument* self, QEvent* event);
QTLIBC_API bool QTextDocument_EventFilter(QTextDocument* self, QObject* watched, QEvent* event);
QTLIBC_API void QTextDocument_OnEventFilter(QTextDocument* self, intptr_t slot);
QTLIBC_API bool QTextDocument_QBaseEventFilter(QTextDocument* self, QObject* watched, QEvent* event);
QTLIBC_API void QTextDocument_TimerEvent(QTextDocument* self, QTimerEvent* event);
QTLIBC_API void QTextDocument_OnTimerEvent(QTextDocument* self, intptr_t slot);
QTLIBC_API void QTextDocument_QBaseTimerEvent(QTextDocument* self, QTimerEvent* event);
QTLIBC_API void QTextDocument_ChildEvent(QTextDocument* self, QChildEvent* event);
QTLIBC_API void QTextDocument_OnChildEvent(QTextDocument* self, intptr_t slot);
QTLIBC_API void QTextDocument_QBaseChildEvent(QTextDocument* self, QChildEvent* event);
QTLIBC_API void QTextDocument_CustomEvent(QTextDocument* self, QEvent* event);
QTLIBC_API void QTextDocument_OnCustomEvent(QTextDocument* self, intptr_t slot);
QTLIBC_API void QTextDocument_QBaseCustomEvent(QTextDocument* self, QEvent* event);
QTLIBC_API void QTextDocument_ConnectNotify(QTextDocument* self, QMetaMethod* signal);
QTLIBC_API void QTextDocument_OnConnectNotify(QTextDocument* self, intptr_t slot);
QTLIBC_API void QTextDocument_QBaseConnectNotify(QTextDocument* self, QMetaMethod* signal);
QTLIBC_API void QTextDocument_DisconnectNotify(QTextDocument* self, QMetaMethod* signal);
QTLIBC_API void QTextDocument_OnDisconnectNotify(QTextDocument* self, intptr_t slot);
QTLIBC_API void QTextDocument_QBaseDisconnectNotify(QTextDocument* self, QMetaMethod* signal);
QTLIBC_API QObject* QTextDocument_Sender(const QTextDocument* self);
QTLIBC_API void QTextDocument_OnSender(const QTextDocument* self, intptr_t slot);
QTLIBC_API QObject* QTextDocument_QBaseSender(const QTextDocument* self);
QTLIBC_API int QTextDocument_SenderSignalIndex(const QTextDocument* self);
QTLIBC_API void QTextDocument_OnSenderSignalIndex(const QTextDocument* self, intptr_t slot);
QTLIBC_API int QTextDocument_QBaseSenderSignalIndex(const QTextDocument* self);
QTLIBC_API int QTextDocument_Receivers(const QTextDocument* self, const char* signal);
QTLIBC_API void QTextDocument_OnReceivers(const QTextDocument* self, intptr_t slot);
QTLIBC_API int QTextDocument_QBaseReceivers(const QTextDocument* self, const char* signal);
QTLIBC_API bool QTextDocument_IsSignalConnected(const QTextDocument* self, QMetaMethod* signal);
QTLIBC_API void QTextDocument_OnIsSignalConnected(const QTextDocument* self, intptr_t slot);
QTLIBC_API bool QTextDocument_QBaseIsSignalConnected(const QTextDocument* self, QMetaMethod* signal);
QTLIBC_API void QTextDocument_Delete(QTextDocument* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
