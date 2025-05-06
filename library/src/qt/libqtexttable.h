#pragma once
#ifndef SRC_QTC_LIBQTEXTTABLE_H
#define SRC_QTC_LIBQTEXTTABLE_H

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
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QTextFrame__iterator)
typedef QTextFrame::iterator QTextFrame__iterator;
#endif
#else
typedef struct QAnyStringView QAnyStringView;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QTextCharFormat QTextCharFormat;
typedef struct QTextCursor QTextCursor;
typedef struct QTextDocument QTextDocument;
typedef struct QTextFormat QTextFormat;
typedef struct QTextFrame QTextFrame;
typedef struct QTextFrameFormat QTextFrameFormat;
typedef struct QTextFrameLayoutData QTextFrameLayoutData;
typedef struct QTextFrame__iterator QTextFrame__iterator;
typedef struct QTextObject QTextObject;
typedef struct QTextTable QTextTable;
typedef struct QTextTableCell QTextTableCell;
typedef struct QTextTableFormat QTextTableFormat;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QTextTableCell* QTextTableCell_new();
QTLIBC_API QTextTableCell* QTextTableCell_new2(QTextTableCell* o);
QTLIBC_API void QTextTableCell_OperatorAssign(QTextTableCell* self, QTextTableCell* o);
QTLIBC_API void QTextTableCell_SetFormat(QTextTableCell* self, QTextCharFormat* format);
QTLIBC_API QTextCharFormat* QTextTableCell_Format(const QTextTableCell* self);
QTLIBC_API int QTextTableCell_Row(const QTextTableCell* self);
QTLIBC_API int QTextTableCell_Column(const QTextTableCell* self);
QTLIBC_API int QTextTableCell_RowSpan(const QTextTableCell* self);
QTLIBC_API int QTextTableCell_ColumnSpan(const QTextTableCell* self);
QTLIBC_API bool QTextTableCell_IsValid(const QTextTableCell* self);
QTLIBC_API QTextCursor* QTextTableCell_FirstCursorPosition(const QTextTableCell* self);
QTLIBC_API QTextCursor* QTextTableCell_LastCursorPosition(const QTextTableCell* self);
QTLIBC_API int QTextTableCell_FirstPosition(const QTextTableCell* self);
QTLIBC_API int QTextTableCell_LastPosition(const QTextTableCell* self);
QTLIBC_API bool QTextTableCell_OperatorEqual(const QTextTableCell* self, QTextTableCell* other);
QTLIBC_API bool QTextTableCell_OperatorNotEqual(const QTextTableCell* self, QTextTableCell* other);
QTLIBC_API QTextFrame__iterator* QTextTableCell_Begin(const QTextTableCell* self);
QTLIBC_API QTextFrame__iterator* QTextTableCell_End(const QTextTableCell* self);
QTLIBC_API int QTextTableCell_TableCellFormatIndex(const QTextTableCell* self);
QTLIBC_API void QTextTableCell_Delete(QTextTableCell* self);

QTLIBC_API QTextTable* QTextTable_new(QTextDocument* doc);
QTLIBC_API QMetaObject* QTextTable_MetaObject(const QTextTable* self);
QTLIBC_API void* QTextTable_Metacast(QTextTable* self, const char* param1);
QTLIBC_API int QTextTable_Metacall(QTextTable* self, int param1, int param2, void** param3);
QTLIBC_API void QTextTable_OnMetacall(QTextTable* self, intptr_t slot);
QTLIBC_API int QTextTable_QBaseMetacall(QTextTable* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QTextTable_Tr(const char* s);
QTLIBC_API void QTextTable_Resize(QTextTable* self, int rows, int cols);
QTLIBC_API void QTextTable_InsertRows(QTextTable* self, int pos, int num);
QTLIBC_API void QTextTable_InsertColumns(QTextTable* self, int pos, int num);
QTLIBC_API void QTextTable_AppendRows(QTextTable* self, int count);
QTLIBC_API void QTextTable_AppendColumns(QTextTable* self, int count);
QTLIBC_API void QTextTable_RemoveRows(QTextTable* self, int pos, int num);
QTLIBC_API void QTextTable_RemoveColumns(QTextTable* self, int pos, int num);
QTLIBC_API void QTextTable_MergeCells(QTextTable* self, int row, int col, int numRows, int numCols);
QTLIBC_API void QTextTable_MergeCellsWithCursor(QTextTable* self, QTextCursor* cursor);
QTLIBC_API void QTextTable_SplitCell(QTextTable* self, int row, int col, int numRows, int numCols);
QTLIBC_API int QTextTable_Rows(const QTextTable* self);
QTLIBC_API int QTextTable_Columns(const QTextTable* self);
QTLIBC_API QTextTableCell* QTextTable_CellAt(const QTextTable* self, int row, int col);
QTLIBC_API QTextTableCell* QTextTable_CellAtWithPosition(const QTextTable* self, int position);
QTLIBC_API QTextTableCell* QTextTable_CellAtWithQTextCursor(const QTextTable* self, QTextCursor* c);
QTLIBC_API QTextCursor* QTextTable_RowStart(const QTextTable* self, QTextCursor* c);
QTLIBC_API QTextCursor* QTextTable_RowEnd(const QTextTable* self, QTextCursor* c);
QTLIBC_API void QTextTable_SetFormat(QTextTable* self, QTextTableFormat* format);
QTLIBC_API QTextTableFormat* QTextTable_Format(const QTextTable* self);
QTLIBC_API libqt_string QTextTable_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QTextTable_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QTextTable_Event(QTextTable* self, QEvent* event);
QTLIBC_API void QTextTable_OnEvent(QTextTable* self, intptr_t slot);
QTLIBC_API bool QTextTable_QBaseEvent(QTextTable* self, QEvent* event);
QTLIBC_API bool QTextTable_EventFilter(QTextTable* self, QObject* watched, QEvent* event);
QTLIBC_API void QTextTable_OnEventFilter(QTextTable* self, intptr_t slot);
QTLIBC_API bool QTextTable_QBaseEventFilter(QTextTable* self, QObject* watched, QEvent* event);
QTLIBC_API void QTextTable_TimerEvent(QTextTable* self, QTimerEvent* event);
QTLIBC_API void QTextTable_OnTimerEvent(QTextTable* self, intptr_t slot);
QTLIBC_API void QTextTable_QBaseTimerEvent(QTextTable* self, QTimerEvent* event);
QTLIBC_API void QTextTable_ChildEvent(QTextTable* self, QChildEvent* event);
QTLIBC_API void QTextTable_OnChildEvent(QTextTable* self, intptr_t slot);
QTLIBC_API void QTextTable_QBaseChildEvent(QTextTable* self, QChildEvent* event);
QTLIBC_API void QTextTable_CustomEvent(QTextTable* self, QEvent* event);
QTLIBC_API void QTextTable_OnCustomEvent(QTextTable* self, intptr_t slot);
QTLIBC_API void QTextTable_QBaseCustomEvent(QTextTable* self, QEvent* event);
QTLIBC_API void QTextTable_ConnectNotify(QTextTable* self, QMetaMethod* signal);
QTLIBC_API void QTextTable_OnConnectNotify(QTextTable* self, intptr_t slot);
QTLIBC_API void QTextTable_QBaseConnectNotify(QTextTable* self, QMetaMethod* signal);
QTLIBC_API void QTextTable_DisconnectNotify(QTextTable* self, QMetaMethod* signal);
QTLIBC_API void QTextTable_OnDisconnectNotify(QTextTable* self, intptr_t slot);
QTLIBC_API void QTextTable_QBaseDisconnectNotify(QTextTable* self, QMetaMethod* signal);
QTLIBC_API QObject* QTextTable_Sender(const QTextTable* self);
QTLIBC_API void QTextTable_OnSender(const QTextTable* self, intptr_t slot);
QTLIBC_API QObject* QTextTable_QBaseSender(const QTextTable* self);
QTLIBC_API int QTextTable_SenderSignalIndex(const QTextTable* self);
QTLIBC_API void QTextTable_OnSenderSignalIndex(const QTextTable* self, intptr_t slot);
QTLIBC_API int QTextTable_QBaseSenderSignalIndex(const QTextTable* self);
QTLIBC_API int QTextTable_Receivers(const QTextTable* self, const char* signal);
QTLIBC_API void QTextTable_OnReceivers(const QTextTable* self, intptr_t slot);
QTLIBC_API int QTextTable_QBaseReceivers(const QTextTable* self, const char* signal);
QTLIBC_API bool QTextTable_IsSignalConnected(const QTextTable* self, QMetaMethod* signal);
QTLIBC_API void QTextTable_OnIsSignalConnected(const QTextTable* self, intptr_t slot);
QTLIBC_API bool QTextTable_QBaseIsSignalConnected(const QTextTable* self, QMetaMethod* signal);
QTLIBC_API void QTextTable_Delete(QTextTable* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
