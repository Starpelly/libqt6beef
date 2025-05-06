#pragma once
#ifndef SRC_QTC_LIBQABSTRACTPROXYMODEL_H
#define SRC_QTC_LIBQABSTRACTPROXYMODEL_H

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
typedef struct QAbstractItemModel QAbstractItemModel;
typedef struct QAbstractProxyModel QAbstractProxyModel;
typedef struct QAnyStringView QAnyStringView;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChildEvent QChildEvent;
typedef struct QDataStream QDataStream;
typedef struct QEvent QEvent;
typedef struct QItemSelection QItemSelection;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QMimeData QMimeData;
typedef struct QModelIndex QModelIndex;
typedef struct QModelRoleDataSpan QModelRoleDataSpan;
typedef struct QObject QObject;
typedef struct QPersistentModelIndex QPersistentModelIndex;
typedef struct QSize QSize;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QAbstractProxyModel* QAbstractProxyModel_new();
QTLIBC_API QAbstractProxyModel* QAbstractProxyModel_new2(QObject* parent);
QTLIBC_API QMetaObject* QAbstractProxyModel_MetaObject(const QAbstractProxyModel* self);
QTLIBC_API void* QAbstractProxyModel_Metacast(QAbstractProxyModel* self, const char* param1);
QTLIBC_API int QAbstractProxyModel_Metacall(QAbstractProxyModel* self, int param1, int param2, void** param3);
QTLIBC_API void QAbstractProxyModel_OnMetacall(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API int QAbstractProxyModel_QBaseMetacall(QAbstractProxyModel* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QAbstractProxyModel_Tr(const char* s);
QTLIBC_API void QAbstractProxyModel_SetSourceModel(QAbstractProxyModel* self, QAbstractItemModel* sourceModel);
QTLIBC_API void QAbstractProxyModel_OnSetSourceModel(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API void QAbstractProxyModel_QBaseSetSourceModel(QAbstractProxyModel* self, QAbstractItemModel* sourceModel);
QTLIBC_API QAbstractItemModel* QAbstractProxyModel_SourceModel(const QAbstractProxyModel* self);
QTLIBC_API QModelIndex* QAbstractProxyModel_MapToSource(const QAbstractProxyModel* self, QModelIndex* proxyIndex);
QTLIBC_API void QAbstractProxyModel_OnMapToSource(const QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API QModelIndex* QAbstractProxyModel_QBaseMapToSource(const QAbstractProxyModel* self, QModelIndex* proxyIndex);
QTLIBC_API QModelIndex* QAbstractProxyModel_MapFromSource(const QAbstractProxyModel* self, QModelIndex* sourceIndex);
QTLIBC_API void QAbstractProxyModel_OnMapFromSource(const QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API QModelIndex* QAbstractProxyModel_QBaseMapFromSource(const QAbstractProxyModel* self, QModelIndex* sourceIndex);
QTLIBC_API QItemSelection* QAbstractProxyModel_MapSelectionToSource(const QAbstractProxyModel* self, QItemSelection* selection);
QTLIBC_API void QAbstractProxyModel_OnMapSelectionToSource(const QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API QItemSelection* QAbstractProxyModel_QBaseMapSelectionToSource(const QAbstractProxyModel* self, QItemSelection* selection);
QTLIBC_API QItemSelection* QAbstractProxyModel_MapSelectionFromSource(const QAbstractProxyModel* self, QItemSelection* selection);
QTLIBC_API void QAbstractProxyModel_OnMapSelectionFromSource(const QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API QItemSelection* QAbstractProxyModel_QBaseMapSelectionFromSource(const QAbstractProxyModel* self, QItemSelection* selection);
QTLIBC_API bool QAbstractProxyModel_Submit(QAbstractProxyModel* self);
QTLIBC_API void QAbstractProxyModel_OnSubmit(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API bool QAbstractProxyModel_QBaseSubmit(QAbstractProxyModel* self);
QTLIBC_API void QAbstractProxyModel_Revert(QAbstractProxyModel* self);
QTLIBC_API void QAbstractProxyModel_OnRevert(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API void QAbstractProxyModel_QBaseRevert(QAbstractProxyModel* self);
QTLIBC_API QVariant* QAbstractProxyModel_Data(const QAbstractProxyModel* self, QModelIndex* proxyIndex, int role);
QTLIBC_API void QAbstractProxyModel_OnData(const QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API QVariant* QAbstractProxyModel_QBaseData(const QAbstractProxyModel* self, QModelIndex* proxyIndex, int role);
QTLIBC_API QVariant* QAbstractProxyModel_HeaderData(const QAbstractProxyModel* self, int section, int orientation, int role);
QTLIBC_API void QAbstractProxyModel_OnHeaderData(const QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API QVariant* QAbstractProxyModel_QBaseHeaderData(const QAbstractProxyModel* self, int section, int orientation, int role);
QTLIBC_API libqt_map /* of int to QVariant* */ QAbstractProxyModel_ItemData(const QAbstractProxyModel* self, QModelIndex* index);
QTLIBC_API void QAbstractProxyModel_OnItemData(const QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API libqt_map /* of int to QVariant* */ QAbstractProxyModel_QBaseItemData(const QAbstractProxyModel* self, QModelIndex* index);
QTLIBC_API int QAbstractProxyModel_Flags(const QAbstractProxyModel* self, QModelIndex* index);
QTLIBC_API void QAbstractProxyModel_OnFlags(const QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API int QAbstractProxyModel_QBaseFlags(const QAbstractProxyModel* self, QModelIndex* index);
QTLIBC_API bool QAbstractProxyModel_SetData(QAbstractProxyModel* self, QModelIndex* index, QVariant* value, int role);
QTLIBC_API void QAbstractProxyModel_OnSetData(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API bool QAbstractProxyModel_QBaseSetData(QAbstractProxyModel* self, QModelIndex* index, QVariant* value, int role);
QTLIBC_API bool QAbstractProxyModel_SetItemData(QAbstractProxyModel* self, QModelIndex* index, libqt_map /* of int to QVariant* */ roles);
QTLIBC_API void QAbstractProxyModel_OnSetItemData(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API bool QAbstractProxyModel_QBaseSetItemData(QAbstractProxyModel* self, QModelIndex* index, libqt_map /* of int to QVariant* */ roles);
QTLIBC_API bool QAbstractProxyModel_SetHeaderData(QAbstractProxyModel* self, int section, int orientation, QVariant* value, int role);
QTLIBC_API void QAbstractProxyModel_OnSetHeaderData(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API bool QAbstractProxyModel_QBaseSetHeaderData(QAbstractProxyModel* self, int section, int orientation, QVariant* value, int role);
QTLIBC_API bool QAbstractProxyModel_ClearItemData(QAbstractProxyModel* self, QModelIndex* index);
QTLIBC_API void QAbstractProxyModel_OnClearItemData(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API bool QAbstractProxyModel_QBaseClearItemData(QAbstractProxyModel* self, QModelIndex* index);
QTLIBC_API QModelIndex* QAbstractProxyModel_Buddy(const QAbstractProxyModel* self, QModelIndex* index);
QTLIBC_API void QAbstractProxyModel_OnBuddy(const QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API QModelIndex* QAbstractProxyModel_QBaseBuddy(const QAbstractProxyModel* self, QModelIndex* index);
QTLIBC_API bool QAbstractProxyModel_CanFetchMore(const QAbstractProxyModel* self, QModelIndex* parent);
QTLIBC_API void QAbstractProxyModel_OnCanFetchMore(const QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API bool QAbstractProxyModel_QBaseCanFetchMore(const QAbstractProxyModel* self, QModelIndex* parent);
QTLIBC_API void QAbstractProxyModel_FetchMore(QAbstractProxyModel* self, QModelIndex* parent);
QTLIBC_API void QAbstractProxyModel_OnFetchMore(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API void QAbstractProxyModel_QBaseFetchMore(QAbstractProxyModel* self, QModelIndex* parent);
QTLIBC_API void QAbstractProxyModel_Sort(QAbstractProxyModel* self, int column, int order);
QTLIBC_API void QAbstractProxyModel_OnSort(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API void QAbstractProxyModel_QBaseSort(QAbstractProxyModel* self, int column, int order);
QTLIBC_API QSize* QAbstractProxyModel_Span(const QAbstractProxyModel* self, QModelIndex* index);
QTLIBC_API void QAbstractProxyModel_OnSpan(const QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API QSize* QAbstractProxyModel_QBaseSpan(const QAbstractProxyModel* self, QModelIndex* index);
QTLIBC_API bool QAbstractProxyModel_HasChildren(const QAbstractProxyModel* self, QModelIndex* parent);
QTLIBC_API void QAbstractProxyModel_OnHasChildren(const QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API bool QAbstractProxyModel_QBaseHasChildren(const QAbstractProxyModel* self, QModelIndex* parent);
QTLIBC_API QModelIndex* QAbstractProxyModel_Sibling(const QAbstractProxyModel* self, int row, int column, QModelIndex* idx);
QTLIBC_API void QAbstractProxyModel_OnSibling(const QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API QModelIndex* QAbstractProxyModel_QBaseSibling(const QAbstractProxyModel* self, int row, int column, QModelIndex* idx);
QTLIBC_API QMimeData* QAbstractProxyModel_MimeData(const QAbstractProxyModel* self, libqt_list /* of QModelIndex* */ indexes);
QTLIBC_API void QAbstractProxyModel_OnMimeData(const QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API QMimeData* QAbstractProxyModel_QBaseMimeData(const QAbstractProxyModel* self, libqt_list /* of QModelIndex* */ indexes);
QTLIBC_API bool QAbstractProxyModel_CanDropMimeData(const QAbstractProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
QTLIBC_API void QAbstractProxyModel_OnCanDropMimeData(const QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API bool QAbstractProxyModel_QBaseCanDropMimeData(const QAbstractProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
QTLIBC_API bool QAbstractProxyModel_DropMimeData(QAbstractProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
QTLIBC_API void QAbstractProxyModel_OnDropMimeData(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API bool QAbstractProxyModel_QBaseDropMimeData(QAbstractProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
QTLIBC_API libqt_list /* of libqt_string */ QAbstractProxyModel_MimeTypes(const QAbstractProxyModel* self);
QTLIBC_API void QAbstractProxyModel_OnMimeTypes(const QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API libqt_list /* of libqt_string */ QAbstractProxyModel_QBaseMimeTypes(const QAbstractProxyModel* self);
QTLIBC_API int QAbstractProxyModel_SupportedDragActions(const QAbstractProxyModel* self);
QTLIBC_API void QAbstractProxyModel_OnSupportedDragActions(const QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API int QAbstractProxyModel_QBaseSupportedDragActions(const QAbstractProxyModel* self);
QTLIBC_API int QAbstractProxyModel_SupportedDropActions(const QAbstractProxyModel* self);
QTLIBC_API void QAbstractProxyModel_OnSupportedDropActions(const QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API int QAbstractProxyModel_QBaseSupportedDropActions(const QAbstractProxyModel* self);
QTLIBC_API libqt_map /* of int to libqt_string */ QAbstractProxyModel_RoleNames(const QAbstractProxyModel* self);
QTLIBC_API void QAbstractProxyModel_OnRoleNames(const QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API libqt_map /* of int to libqt_string */ QAbstractProxyModel_QBaseRoleNames(const QAbstractProxyModel* self);
QTLIBC_API libqt_string QAbstractProxyModel_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QAbstractProxyModel_Tr3(const char* s, const char* c, int n);
QTLIBC_API QModelIndex* QAbstractProxyModel_Index(const QAbstractProxyModel* self, int row, int column, QModelIndex* parent);
QTLIBC_API void QAbstractProxyModel_OnIndex(const QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API QModelIndex* QAbstractProxyModel_QBaseIndex(const QAbstractProxyModel* self, int row, int column, QModelIndex* parent);
QTLIBC_API QModelIndex* QAbstractProxyModel_Parent(const QAbstractProxyModel* self, QModelIndex* child);
QTLIBC_API void QAbstractProxyModel_OnParent(const QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API QModelIndex* QAbstractProxyModel_QBaseParent(const QAbstractProxyModel* self, QModelIndex* child);
QTLIBC_API int QAbstractProxyModel_RowCount(const QAbstractProxyModel* self, QModelIndex* parent);
QTLIBC_API void QAbstractProxyModel_OnRowCount(const QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API int QAbstractProxyModel_QBaseRowCount(const QAbstractProxyModel* self, QModelIndex* parent);
QTLIBC_API int QAbstractProxyModel_ColumnCount(const QAbstractProxyModel* self, QModelIndex* parent);
QTLIBC_API void QAbstractProxyModel_OnColumnCount(const QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API int QAbstractProxyModel_QBaseColumnCount(const QAbstractProxyModel* self, QModelIndex* parent);
QTLIBC_API bool QAbstractProxyModel_InsertRows(QAbstractProxyModel* self, int row, int count, QModelIndex* parent);
QTLIBC_API void QAbstractProxyModel_OnInsertRows(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API bool QAbstractProxyModel_QBaseInsertRows(QAbstractProxyModel* self, int row, int count, QModelIndex* parent);
QTLIBC_API bool QAbstractProxyModel_InsertColumns(QAbstractProxyModel* self, int column, int count, QModelIndex* parent);
QTLIBC_API void QAbstractProxyModel_OnInsertColumns(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API bool QAbstractProxyModel_QBaseInsertColumns(QAbstractProxyModel* self, int column, int count, QModelIndex* parent);
QTLIBC_API bool QAbstractProxyModel_RemoveRows(QAbstractProxyModel* self, int row, int count, QModelIndex* parent);
QTLIBC_API void QAbstractProxyModel_OnRemoveRows(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API bool QAbstractProxyModel_QBaseRemoveRows(QAbstractProxyModel* self, int row, int count, QModelIndex* parent);
QTLIBC_API bool QAbstractProxyModel_RemoveColumns(QAbstractProxyModel* self, int column, int count, QModelIndex* parent);
QTLIBC_API void QAbstractProxyModel_OnRemoveColumns(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API bool QAbstractProxyModel_QBaseRemoveColumns(QAbstractProxyModel* self, int column, int count, QModelIndex* parent);
QTLIBC_API bool QAbstractProxyModel_MoveRows(QAbstractProxyModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
QTLIBC_API void QAbstractProxyModel_OnMoveRows(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API bool QAbstractProxyModel_QBaseMoveRows(QAbstractProxyModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
QTLIBC_API bool QAbstractProxyModel_MoveColumns(QAbstractProxyModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
QTLIBC_API void QAbstractProxyModel_OnMoveColumns(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API bool QAbstractProxyModel_QBaseMoveColumns(QAbstractProxyModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
QTLIBC_API libqt_list /* of QModelIndex* */ QAbstractProxyModel_Match(const QAbstractProxyModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
QTLIBC_API void QAbstractProxyModel_OnMatch(const QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API libqt_list /* of QModelIndex* */ QAbstractProxyModel_QBaseMatch(const QAbstractProxyModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
QTLIBC_API void QAbstractProxyModel_MultiData(const QAbstractProxyModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan);
QTLIBC_API void QAbstractProxyModel_OnMultiData(const QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API void QAbstractProxyModel_QBaseMultiData(const QAbstractProxyModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan);
QTLIBC_API void QAbstractProxyModel_ResetInternalData(QAbstractProxyModel* self);
QTLIBC_API void QAbstractProxyModel_OnResetInternalData(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API void QAbstractProxyModel_QBaseResetInternalData(QAbstractProxyModel* self);
QTLIBC_API bool QAbstractProxyModel_Event(QAbstractProxyModel* self, QEvent* event);
QTLIBC_API void QAbstractProxyModel_OnEvent(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API bool QAbstractProxyModel_QBaseEvent(QAbstractProxyModel* self, QEvent* event);
QTLIBC_API bool QAbstractProxyModel_EventFilter(QAbstractProxyModel* self, QObject* watched, QEvent* event);
QTLIBC_API void QAbstractProxyModel_OnEventFilter(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API bool QAbstractProxyModel_QBaseEventFilter(QAbstractProxyModel* self, QObject* watched, QEvent* event);
QTLIBC_API void QAbstractProxyModel_TimerEvent(QAbstractProxyModel* self, QTimerEvent* event);
QTLIBC_API void QAbstractProxyModel_OnTimerEvent(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API void QAbstractProxyModel_QBaseTimerEvent(QAbstractProxyModel* self, QTimerEvent* event);
QTLIBC_API void QAbstractProxyModel_ChildEvent(QAbstractProxyModel* self, QChildEvent* event);
QTLIBC_API void QAbstractProxyModel_OnChildEvent(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API void QAbstractProxyModel_QBaseChildEvent(QAbstractProxyModel* self, QChildEvent* event);
QTLIBC_API void QAbstractProxyModel_CustomEvent(QAbstractProxyModel* self, QEvent* event);
QTLIBC_API void QAbstractProxyModel_OnCustomEvent(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API void QAbstractProxyModel_QBaseCustomEvent(QAbstractProxyModel* self, QEvent* event);
QTLIBC_API void QAbstractProxyModel_ConnectNotify(QAbstractProxyModel* self, QMetaMethod* signal);
QTLIBC_API void QAbstractProxyModel_OnConnectNotify(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API void QAbstractProxyModel_QBaseConnectNotify(QAbstractProxyModel* self, QMetaMethod* signal);
QTLIBC_API void QAbstractProxyModel_DisconnectNotify(QAbstractProxyModel* self, QMetaMethod* signal);
QTLIBC_API void QAbstractProxyModel_OnDisconnectNotify(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API void QAbstractProxyModel_QBaseDisconnectNotify(QAbstractProxyModel* self, QMetaMethod* signal);
QTLIBC_API QModelIndex* QAbstractProxyModel_CreateSourceIndex(const QAbstractProxyModel* self, int row, int col, void* internalPtr);
QTLIBC_API void QAbstractProxyModel_OnCreateSourceIndex(const QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API QModelIndex* QAbstractProxyModel_QBaseCreateSourceIndex(const QAbstractProxyModel* self, int row, int col, void* internalPtr);
QTLIBC_API QModelIndex* QAbstractProxyModel_CreateIndex(const QAbstractProxyModel* self, int row, int column);
QTLIBC_API void QAbstractProxyModel_OnCreateIndex(const QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API QModelIndex* QAbstractProxyModel_QBaseCreateIndex(const QAbstractProxyModel* self, int row, int column);
QTLIBC_API void QAbstractProxyModel_EncodeData(const QAbstractProxyModel* self, libqt_list /* of QModelIndex* */ indexes, QDataStream* stream);
QTLIBC_API void QAbstractProxyModel_OnEncodeData(const QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API void QAbstractProxyModel_QBaseEncodeData(const QAbstractProxyModel* self, libqt_list /* of QModelIndex* */ indexes, QDataStream* stream);
QTLIBC_API bool QAbstractProxyModel_DecodeData(QAbstractProxyModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
QTLIBC_API void QAbstractProxyModel_OnDecodeData(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API bool QAbstractProxyModel_QBaseDecodeData(QAbstractProxyModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
QTLIBC_API void QAbstractProxyModel_BeginInsertRows(QAbstractProxyModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QAbstractProxyModel_OnBeginInsertRows(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API void QAbstractProxyModel_QBaseBeginInsertRows(QAbstractProxyModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QAbstractProxyModel_EndInsertRows(QAbstractProxyModel* self);
QTLIBC_API void QAbstractProxyModel_OnEndInsertRows(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API void QAbstractProxyModel_QBaseEndInsertRows(QAbstractProxyModel* self);
QTLIBC_API void QAbstractProxyModel_BeginRemoveRows(QAbstractProxyModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QAbstractProxyModel_OnBeginRemoveRows(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API void QAbstractProxyModel_QBaseBeginRemoveRows(QAbstractProxyModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QAbstractProxyModel_EndRemoveRows(QAbstractProxyModel* self);
QTLIBC_API void QAbstractProxyModel_OnEndRemoveRows(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API void QAbstractProxyModel_QBaseEndRemoveRows(QAbstractProxyModel* self);
QTLIBC_API bool QAbstractProxyModel_BeginMoveRows(QAbstractProxyModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
QTLIBC_API void QAbstractProxyModel_OnBeginMoveRows(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API bool QAbstractProxyModel_QBaseBeginMoveRows(QAbstractProxyModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
QTLIBC_API void QAbstractProxyModel_EndMoveRows(QAbstractProxyModel* self);
QTLIBC_API void QAbstractProxyModel_OnEndMoveRows(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API void QAbstractProxyModel_QBaseEndMoveRows(QAbstractProxyModel* self);
QTLIBC_API void QAbstractProxyModel_BeginInsertColumns(QAbstractProxyModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QAbstractProxyModel_OnBeginInsertColumns(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API void QAbstractProxyModel_QBaseBeginInsertColumns(QAbstractProxyModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QAbstractProxyModel_EndInsertColumns(QAbstractProxyModel* self);
QTLIBC_API void QAbstractProxyModel_OnEndInsertColumns(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API void QAbstractProxyModel_QBaseEndInsertColumns(QAbstractProxyModel* self);
QTLIBC_API void QAbstractProxyModel_BeginRemoveColumns(QAbstractProxyModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QAbstractProxyModel_OnBeginRemoveColumns(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API void QAbstractProxyModel_QBaseBeginRemoveColumns(QAbstractProxyModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QAbstractProxyModel_EndRemoveColumns(QAbstractProxyModel* self);
QTLIBC_API void QAbstractProxyModel_OnEndRemoveColumns(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API void QAbstractProxyModel_QBaseEndRemoveColumns(QAbstractProxyModel* self);
QTLIBC_API bool QAbstractProxyModel_BeginMoveColumns(QAbstractProxyModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
QTLIBC_API void QAbstractProxyModel_OnBeginMoveColumns(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API bool QAbstractProxyModel_QBaseBeginMoveColumns(QAbstractProxyModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
QTLIBC_API void QAbstractProxyModel_EndMoveColumns(QAbstractProxyModel* self);
QTLIBC_API void QAbstractProxyModel_OnEndMoveColumns(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API void QAbstractProxyModel_QBaseEndMoveColumns(QAbstractProxyModel* self);
QTLIBC_API void QAbstractProxyModel_BeginResetModel(QAbstractProxyModel* self);
QTLIBC_API void QAbstractProxyModel_OnBeginResetModel(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API void QAbstractProxyModel_QBaseBeginResetModel(QAbstractProxyModel* self);
QTLIBC_API void QAbstractProxyModel_EndResetModel(QAbstractProxyModel* self);
QTLIBC_API void QAbstractProxyModel_OnEndResetModel(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API void QAbstractProxyModel_QBaseEndResetModel(QAbstractProxyModel* self);
QTLIBC_API void QAbstractProxyModel_ChangePersistentIndex(QAbstractProxyModel* self, QModelIndex* from, QModelIndex* to);
QTLIBC_API void QAbstractProxyModel_OnChangePersistentIndex(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API void QAbstractProxyModel_QBaseChangePersistentIndex(QAbstractProxyModel* self, QModelIndex* from, QModelIndex* to);
QTLIBC_API void QAbstractProxyModel_ChangePersistentIndexList(QAbstractProxyModel* self, libqt_list /* of QModelIndex* */ from, libqt_list /* of QModelIndex* */ to);
QTLIBC_API void QAbstractProxyModel_OnChangePersistentIndexList(QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API void QAbstractProxyModel_QBaseChangePersistentIndexList(QAbstractProxyModel* self, libqt_list /* of QModelIndex* */ from, libqt_list /* of QModelIndex* */ to);
QTLIBC_API libqt_list /* of QModelIndex* */ QAbstractProxyModel_PersistentIndexList(const QAbstractProxyModel* self);
QTLIBC_API void QAbstractProxyModel_OnPersistentIndexList(const QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API libqt_list /* of QModelIndex* */ QAbstractProxyModel_QBasePersistentIndexList(const QAbstractProxyModel* self);
QTLIBC_API QObject* QAbstractProxyModel_Sender(const QAbstractProxyModel* self);
QTLIBC_API void QAbstractProxyModel_OnSender(const QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API QObject* QAbstractProxyModel_QBaseSender(const QAbstractProxyModel* self);
QTLIBC_API int QAbstractProxyModel_SenderSignalIndex(const QAbstractProxyModel* self);
QTLIBC_API void QAbstractProxyModel_OnSenderSignalIndex(const QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API int QAbstractProxyModel_QBaseSenderSignalIndex(const QAbstractProxyModel* self);
QTLIBC_API int QAbstractProxyModel_Receivers(const QAbstractProxyModel* self, const char* signal);
QTLIBC_API void QAbstractProxyModel_OnReceivers(const QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API int QAbstractProxyModel_QBaseReceivers(const QAbstractProxyModel* self, const char* signal);
QTLIBC_API bool QAbstractProxyModel_IsSignalConnected(const QAbstractProxyModel* self, QMetaMethod* signal);
QTLIBC_API void QAbstractProxyModel_OnIsSignalConnected(const QAbstractProxyModel* self, intptr_t slot);
QTLIBC_API bool QAbstractProxyModel_QBaseIsSignalConnected(const QAbstractProxyModel* self, QMetaMethod* signal);
QTLIBC_API void QAbstractProxyModel_Delete(QAbstractProxyModel* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
