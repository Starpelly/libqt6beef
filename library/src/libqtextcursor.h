#pragma once
#ifndef SRCC_LIBQTEXTCURSOR_H
#define SRCC_LIBQTEXTCURSOR_H

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
#else
typedef struct QImage QImage;
typedef struct QTextBlock QTextBlock;
typedef struct QTextBlockFormat QTextBlockFormat;
typedef struct QTextCharFormat QTextCharFormat;
typedef struct QTextCursor QTextCursor;
typedef struct QTextDocument QTextDocument;
typedef struct QTextDocumentFragment QTextDocumentFragment;
typedef struct QTextFrame QTextFrame;
typedef struct QTextFrameFormat QTextFrameFormat;
typedef struct QTextImageFormat QTextImageFormat;
typedef struct QTextList QTextList;
typedef struct QTextListFormat QTextListFormat;
typedef struct QTextTable QTextTable;
typedef struct QTextTableFormat QTextTableFormat;
#endif

#ifdef __cplusplus
typedef QTextCursor::MoveMode MoveMode;           // C++ enum
typedef QTextCursor::MoveOperation MoveOperation; // C++ enum
typedef QTextCursor::SelectionType SelectionType; // C++ enum
#else
typedef int MoveMode;      // C ABI enum
typedef int MoveOperation; // C ABI enum
typedef int SelectionType; // C ABI enum
#endif

QTLIBC_API QTextCursor* QTextCursor_new();
QTLIBC_API QTextCursor* QTextCursor_new2(QTextDocument* document);
QTLIBC_API QTextCursor* QTextCursor_new3(QTextFrame* frame);
QTLIBC_API QTextCursor* QTextCursor_new4(QTextBlock* block);
QTLIBC_API QTextCursor* QTextCursor_new5(QTextCursor* cursor);
QTLIBC_API void QTextCursor_OperatorAssign(QTextCursor* self, QTextCursor* other);
QTLIBC_API void QTextCursor_Swap(QTextCursor* self, QTextCursor* other);
QTLIBC_API bool QTextCursor_IsNull(const QTextCursor* self);
QTLIBC_API void QTextCursor_SetPosition(QTextCursor* self, int pos);
QTLIBC_API int QTextCursor_Position(const QTextCursor* self);
QTLIBC_API int QTextCursor_PositionInBlock(const QTextCursor* self);
QTLIBC_API int QTextCursor_Anchor(const QTextCursor* self);
QTLIBC_API void QTextCursor_InsertText(QTextCursor* self, libqt_string text);
QTLIBC_API void QTextCursor_InsertText2(QTextCursor* self, libqt_string text, QTextCharFormat* format);
QTLIBC_API bool QTextCursor_MovePosition(QTextCursor* self, int op);
QTLIBC_API bool QTextCursor_VisualNavigation(const QTextCursor* self);
QTLIBC_API void QTextCursor_SetVisualNavigation(QTextCursor* self, bool b);
QTLIBC_API void QTextCursor_SetVerticalMovementX(QTextCursor* self, int x);
QTLIBC_API int QTextCursor_VerticalMovementX(const QTextCursor* self);
QTLIBC_API void QTextCursor_SetKeepPositionOnInsert(QTextCursor* self, bool b);
QTLIBC_API bool QTextCursor_KeepPositionOnInsert(const QTextCursor* self);
QTLIBC_API void QTextCursor_DeleteChar(QTextCursor* self);
QTLIBC_API void QTextCursor_DeletePreviousChar(QTextCursor* self);
QTLIBC_API void QTextCursor_Select(QTextCursor* self, int selection);
QTLIBC_API bool QTextCursor_HasSelection(const QTextCursor* self);
QTLIBC_API bool QTextCursor_HasComplexSelection(const QTextCursor* self);
QTLIBC_API void QTextCursor_RemoveSelectedText(QTextCursor* self);
QTLIBC_API void QTextCursor_ClearSelection(QTextCursor* self);
QTLIBC_API int QTextCursor_SelectionStart(const QTextCursor* self);
QTLIBC_API int QTextCursor_SelectionEnd(const QTextCursor* self);
QTLIBC_API libqt_string QTextCursor_SelectedText(const QTextCursor* self);
QTLIBC_API QTextDocumentFragment* QTextCursor_Selection(const QTextCursor* self);
QTLIBC_API void QTextCursor_SelectedTableCells(const QTextCursor* self, int* firstRow, int* numRows, int* firstColumn, int* numColumns);
QTLIBC_API QTextBlock* QTextCursor_Block(const QTextCursor* self);
QTLIBC_API QTextCharFormat* QTextCursor_CharFormat(const QTextCursor* self);
QTLIBC_API void QTextCursor_SetCharFormat(QTextCursor* self, QTextCharFormat* format);
QTLIBC_API void QTextCursor_MergeCharFormat(QTextCursor* self, QTextCharFormat* modifier);
QTLIBC_API QTextBlockFormat* QTextCursor_BlockFormat(const QTextCursor* self);
QTLIBC_API void QTextCursor_SetBlockFormat(QTextCursor* self, QTextBlockFormat* format);
QTLIBC_API void QTextCursor_MergeBlockFormat(QTextCursor* self, QTextBlockFormat* modifier);
QTLIBC_API QTextCharFormat* QTextCursor_BlockCharFormat(const QTextCursor* self);
QTLIBC_API void QTextCursor_SetBlockCharFormat(QTextCursor* self, QTextCharFormat* format);
QTLIBC_API void QTextCursor_MergeBlockCharFormat(QTextCursor* self, QTextCharFormat* modifier);
QTLIBC_API bool QTextCursor_AtBlockStart(const QTextCursor* self);
QTLIBC_API bool QTextCursor_AtBlockEnd(const QTextCursor* self);
QTLIBC_API bool QTextCursor_AtStart(const QTextCursor* self);
QTLIBC_API bool QTextCursor_AtEnd(const QTextCursor* self);
QTLIBC_API void QTextCursor_InsertBlock(QTextCursor* self);
QTLIBC_API void QTextCursor_InsertBlockWithFormat(QTextCursor* self, QTextBlockFormat* format);
QTLIBC_API void QTextCursor_InsertBlock2(QTextCursor* self, QTextBlockFormat* format, QTextCharFormat* charFormat);
QTLIBC_API QTextList* QTextCursor_InsertList(QTextCursor* self, QTextListFormat* format);
QTLIBC_API QTextList* QTextCursor_InsertListWithStyle(QTextCursor* self, int style);
QTLIBC_API QTextList* QTextCursor_CreateList(QTextCursor* self, QTextListFormat* format);
QTLIBC_API QTextList* QTextCursor_CreateListWithStyle(QTextCursor* self, int style);
QTLIBC_API QTextList* QTextCursor_CurrentList(const QTextCursor* self);
QTLIBC_API QTextTable* QTextCursor_InsertTable(QTextCursor* self, int rows, int cols, QTextTableFormat* format);
QTLIBC_API QTextTable* QTextCursor_InsertTable2(QTextCursor* self, int rows, int cols);
QTLIBC_API QTextTable* QTextCursor_CurrentTable(const QTextCursor* self);
QTLIBC_API QTextFrame* QTextCursor_InsertFrame(QTextCursor* self, QTextFrameFormat* format);
QTLIBC_API QTextFrame* QTextCursor_CurrentFrame(const QTextCursor* self);
QTLIBC_API void QTextCursor_InsertFragment(QTextCursor* self, QTextDocumentFragment* fragment);
QTLIBC_API void QTextCursor_InsertHtml(QTextCursor* self, libqt_string html);
QTLIBC_API void QTextCursor_InsertMarkdown(QTextCursor* self, libqt_string markdown);
QTLIBC_API void QTextCursor_InsertImage(QTextCursor* self, QTextImageFormat* format, int alignment);
QTLIBC_API void QTextCursor_InsertImageWithFormat(QTextCursor* self, QTextImageFormat* format);
QTLIBC_API void QTextCursor_InsertImageWithName(QTextCursor* self, libqt_string name);
QTLIBC_API void QTextCursor_InsertImageWithImage(QTextCursor* self, QImage* image);
QTLIBC_API void QTextCursor_BeginEditBlock(QTextCursor* self);
QTLIBC_API void QTextCursor_JoinPreviousEditBlock(QTextCursor* self);
QTLIBC_API void QTextCursor_EndEditBlock(QTextCursor* self);
QTLIBC_API bool QTextCursor_OperatorNotEqual(const QTextCursor* self, QTextCursor* rhs);
QTLIBC_API bool QTextCursor_OperatorLesser(const QTextCursor* self, QTextCursor* rhs);
QTLIBC_API bool QTextCursor_OperatorLesserOrEqual(const QTextCursor* self, QTextCursor* rhs);
QTLIBC_API bool QTextCursor_OperatorEqual(const QTextCursor* self, QTextCursor* rhs);
QTLIBC_API bool QTextCursor_OperatorGreaterOrEqual(const QTextCursor* self, QTextCursor* rhs);
QTLIBC_API bool QTextCursor_OperatorGreater(const QTextCursor* self, QTextCursor* rhs);
QTLIBC_API bool QTextCursor_IsCopyOf(const QTextCursor* self, QTextCursor* other);
QTLIBC_API int QTextCursor_BlockNumber(const QTextCursor* self);
QTLIBC_API int QTextCursor_ColumnNumber(const QTextCursor* self);
QTLIBC_API QTextDocument* QTextCursor_Document(const QTextCursor* self);
QTLIBC_API void QTextCursor_SetPosition2(QTextCursor* self, int pos, int mode);
QTLIBC_API bool QTextCursor_MovePosition2(QTextCursor* self, int op, int param2);
QTLIBC_API bool QTextCursor_MovePosition3(QTextCursor* self, int op, int param2, int n);
QTLIBC_API void QTextCursor_InsertMarkdown2(QTextCursor* self, libqt_string markdown, int features);
QTLIBC_API void QTextCursor_InsertImage2(QTextCursor* self, QImage* image, libqt_string name);
QTLIBC_API void QTextCursor_Delete(QTextCursor* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
