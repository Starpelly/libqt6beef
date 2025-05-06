#pragma once
#ifndef SRC_QTC_LIBQTRANSPOSEPROXYMODEL_H
#define SRC_QTC_LIBQTRANSPOSEPROXYMODEL_H

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
typedef struct QTransposeProxyModel QTransposeProxyModel;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QTransposeProxyModel* QTransposeProxyModel_new();
QTLIBC_API QTransposeProxyModel* QTransposeProxyModel_new2(QObject* parent);
QTLIBC_API QMetaObject* QTransposeProxyModel_MetaObject(const QTransposeProxyModel* self);
QTLIBC_API void* QTransposeProxyModel_Metacast(QTransposeProxyModel* self, const char* param1);
QTLIBC_API int QTransposeProxyModel_Metacall(QTransposeProxyModel* self, int param1, int param2, void** param3);
QTLIBC_API void QTransposeProxyModel_OnMetacall(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API int QTransposeProxyModel_QBaseMetacall(QTransposeProxyModel* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QTransposeProxyModel_Tr(const char* s);
QTLIBC_API void QTransposeProxyModel_SetSourceModel(QTransposeProxyModel* self, QAbstractItemModel* newSourceModel);
QTLIBC_API void QTransposeProxyModel_OnSetSourceModel(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API void QTransposeProxyModel_QBaseSetSourceModel(QTransposeProxyModel* self, QAbstractItemModel* newSourceModel);
QTLIBC_API int QTransposeProxyModel_RowCount(const QTransposeProxyModel* self, QModelIndex* parent);
QTLIBC_API void QTransposeProxyModel_OnRowCount(const QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API int QTransposeProxyModel_QBaseRowCount(const QTransposeProxyModel* self, QModelIndex* parent);
QTLIBC_API int QTransposeProxyModel_ColumnCount(const QTransposeProxyModel* self, QModelIndex* parent);
QTLIBC_API void QTransposeProxyModel_OnColumnCount(const QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API int QTransposeProxyModel_QBaseColumnCount(const QTransposeProxyModel* self, QModelIndex* parent);
QTLIBC_API QVariant* QTransposeProxyModel_HeaderData(const QTransposeProxyModel* self, int section, int orientation, int role);
QTLIBC_API void QTransposeProxyModel_OnHeaderData(const QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API QVariant* QTransposeProxyModel_QBaseHeaderData(const QTransposeProxyModel* self, int section, int orientation, int role);
QTLIBC_API bool QTransposeProxyModel_SetHeaderData(QTransposeProxyModel* self, int section, int orientation, QVariant* value, int role);
QTLIBC_API void QTransposeProxyModel_OnSetHeaderData(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API bool QTransposeProxyModel_QBaseSetHeaderData(QTransposeProxyModel* self, int section, int orientation, QVariant* value, int role);
QTLIBC_API bool QTransposeProxyModel_SetItemData(QTransposeProxyModel* self, QModelIndex* index, libqt_map /* of int to QVariant* */ roles);
QTLIBC_API void QTransposeProxyModel_OnSetItemData(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API bool QTransposeProxyModel_QBaseSetItemData(QTransposeProxyModel* self, QModelIndex* index, libqt_map /* of int to QVariant* */ roles);
QTLIBC_API QSize* QTransposeProxyModel_Span(const QTransposeProxyModel* self, QModelIndex* index);
QTLIBC_API void QTransposeProxyModel_OnSpan(const QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API QSize* QTransposeProxyModel_QBaseSpan(const QTransposeProxyModel* self, QModelIndex* index);
QTLIBC_API libqt_map /* of int to QVariant* */ QTransposeProxyModel_ItemData(const QTransposeProxyModel* self, QModelIndex* index);
QTLIBC_API void QTransposeProxyModel_OnItemData(const QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API libqt_map /* of int to QVariant* */ QTransposeProxyModel_QBaseItemData(const QTransposeProxyModel* self, QModelIndex* index);
QTLIBC_API QModelIndex* QTransposeProxyModel_MapFromSource(const QTransposeProxyModel* self, QModelIndex* sourceIndex);
QTLIBC_API void QTransposeProxyModel_OnMapFromSource(const QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API QModelIndex* QTransposeProxyModel_QBaseMapFromSource(const QTransposeProxyModel* self, QModelIndex* sourceIndex);
QTLIBC_API QModelIndex* QTransposeProxyModel_MapToSource(const QTransposeProxyModel* self, QModelIndex* proxyIndex);
QTLIBC_API void QTransposeProxyModel_OnMapToSource(const QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API QModelIndex* QTransposeProxyModel_QBaseMapToSource(const QTransposeProxyModel* self, QModelIndex* proxyIndex);
QTLIBC_API QModelIndex* QTransposeProxyModel_Parent(const QTransposeProxyModel* self, QModelIndex* index);
QTLIBC_API void QTransposeProxyModel_OnParent(const QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API QModelIndex* QTransposeProxyModel_QBaseParent(const QTransposeProxyModel* self, QModelIndex* index);
QTLIBC_API QModelIndex* QTransposeProxyModel_Index(const QTransposeProxyModel* self, int row, int column, QModelIndex* parent);
QTLIBC_API void QTransposeProxyModel_OnIndex(const QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API QModelIndex* QTransposeProxyModel_QBaseIndex(const QTransposeProxyModel* self, int row, int column, QModelIndex* parent);
QTLIBC_API bool QTransposeProxyModel_InsertRows(QTransposeProxyModel* self, int row, int count, QModelIndex* parent);
QTLIBC_API void QTransposeProxyModel_OnInsertRows(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API bool QTransposeProxyModel_QBaseInsertRows(QTransposeProxyModel* self, int row, int count, QModelIndex* parent);
QTLIBC_API bool QTransposeProxyModel_RemoveRows(QTransposeProxyModel* self, int row, int count, QModelIndex* parent);
QTLIBC_API void QTransposeProxyModel_OnRemoveRows(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API bool QTransposeProxyModel_QBaseRemoveRows(QTransposeProxyModel* self, int row, int count, QModelIndex* parent);
QTLIBC_API bool QTransposeProxyModel_MoveRows(QTransposeProxyModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
QTLIBC_API void QTransposeProxyModel_OnMoveRows(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API bool QTransposeProxyModel_QBaseMoveRows(QTransposeProxyModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
QTLIBC_API bool QTransposeProxyModel_InsertColumns(QTransposeProxyModel* self, int column, int count, QModelIndex* parent);
QTLIBC_API void QTransposeProxyModel_OnInsertColumns(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API bool QTransposeProxyModel_QBaseInsertColumns(QTransposeProxyModel* self, int column, int count, QModelIndex* parent);
QTLIBC_API bool QTransposeProxyModel_RemoveColumns(QTransposeProxyModel* self, int column, int count, QModelIndex* parent);
QTLIBC_API void QTransposeProxyModel_OnRemoveColumns(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API bool QTransposeProxyModel_QBaseRemoveColumns(QTransposeProxyModel* self, int column, int count, QModelIndex* parent);
QTLIBC_API bool QTransposeProxyModel_MoveColumns(QTransposeProxyModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
QTLIBC_API void QTransposeProxyModel_OnMoveColumns(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API bool QTransposeProxyModel_QBaseMoveColumns(QTransposeProxyModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
QTLIBC_API void QTransposeProxyModel_Sort(QTransposeProxyModel* self, int column, int order);
QTLIBC_API void QTransposeProxyModel_OnSort(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API void QTransposeProxyModel_QBaseSort(QTransposeProxyModel* self, int column, int order);
QTLIBC_API libqt_string QTransposeProxyModel_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QTransposeProxyModel_Tr3(const char* s, const char* c, int n);
QTLIBC_API QItemSelection* QTransposeProxyModel_MapSelectionToSource(const QTransposeProxyModel* self, QItemSelection* selection);
QTLIBC_API void QTransposeProxyModel_OnMapSelectionToSource(const QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API QItemSelection* QTransposeProxyModel_QBaseMapSelectionToSource(const QTransposeProxyModel* self, QItemSelection* selection);
QTLIBC_API QItemSelection* QTransposeProxyModel_MapSelectionFromSource(const QTransposeProxyModel* self, QItemSelection* selection);
QTLIBC_API void QTransposeProxyModel_OnMapSelectionFromSource(const QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API QItemSelection* QTransposeProxyModel_QBaseMapSelectionFromSource(const QTransposeProxyModel* self, QItemSelection* selection);
QTLIBC_API bool QTransposeProxyModel_Submit(QTransposeProxyModel* self);
QTLIBC_API void QTransposeProxyModel_OnSubmit(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API bool QTransposeProxyModel_QBaseSubmit(QTransposeProxyModel* self);
QTLIBC_API void QTransposeProxyModel_Revert(QTransposeProxyModel* self);
QTLIBC_API void QTransposeProxyModel_OnRevert(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API void QTransposeProxyModel_QBaseRevert(QTransposeProxyModel* self);
QTLIBC_API QVariant* QTransposeProxyModel_Data(const QTransposeProxyModel* self, QModelIndex* proxyIndex, int role);
QTLIBC_API void QTransposeProxyModel_OnData(const QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API QVariant* QTransposeProxyModel_QBaseData(const QTransposeProxyModel* self, QModelIndex* proxyIndex, int role);
QTLIBC_API int QTransposeProxyModel_Flags(const QTransposeProxyModel* self, QModelIndex* index);
QTLIBC_API void QTransposeProxyModel_OnFlags(const QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API int QTransposeProxyModel_QBaseFlags(const QTransposeProxyModel* self, QModelIndex* index);
QTLIBC_API bool QTransposeProxyModel_SetData(QTransposeProxyModel* self, QModelIndex* index, QVariant* value, int role);
QTLIBC_API void QTransposeProxyModel_OnSetData(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API bool QTransposeProxyModel_QBaseSetData(QTransposeProxyModel* self, QModelIndex* index, QVariant* value, int role);
QTLIBC_API bool QTransposeProxyModel_ClearItemData(QTransposeProxyModel* self, QModelIndex* index);
QTLIBC_API void QTransposeProxyModel_OnClearItemData(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API bool QTransposeProxyModel_QBaseClearItemData(QTransposeProxyModel* self, QModelIndex* index);
QTLIBC_API QModelIndex* QTransposeProxyModel_Buddy(const QTransposeProxyModel* self, QModelIndex* index);
QTLIBC_API void QTransposeProxyModel_OnBuddy(const QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API QModelIndex* QTransposeProxyModel_QBaseBuddy(const QTransposeProxyModel* self, QModelIndex* index);
QTLIBC_API bool QTransposeProxyModel_CanFetchMore(const QTransposeProxyModel* self, QModelIndex* parent);
QTLIBC_API void QTransposeProxyModel_OnCanFetchMore(const QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API bool QTransposeProxyModel_QBaseCanFetchMore(const QTransposeProxyModel* self, QModelIndex* parent);
QTLIBC_API void QTransposeProxyModel_FetchMore(QTransposeProxyModel* self, QModelIndex* parent);
QTLIBC_API void QTransposeProxyModel_OnFetchMore(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API void QTransposeProxyModel_QBaseFetchMore(QTransposeProxyModel* self, QModelIndex* parent);
QTLIBC_API bool QTransposeProxyModel_HasChildren(const QTransposeProxyModel* self, QModelIndex* parent);
QTLIBC_API void QTransposeProxyModel_OnHasChildren(const QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API bool QTransposeProxyModel_QBaseHasChildren(const QTransposeProxyModel* self, QModelIndex* parent);
QTLIBC_API QModelIndex* QTransposeProxyModel_Sibling(const QTransposeProxyModel* self, int row, int column, QModelIndex* idx);
QTLIBC_API void QTransposeProxyModel_OnSibling(const QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API QModelIndex* QTransposeProxyModel_QBaseSibling(const QTransposeProxyModel* self, int row, int column, QModelIndex* idx);
QTLIBC_API QMimeData* QTransposeProxyModel_MimeData(const QTransposeProxyModel* self, libqt_list /* of QModelIndex* */ indexes);
QTLIBC_API void QTransposeProxyModel_OnMimeData(const QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API QMimeData* QTransposeProxyModel_QBaseMimeData(const QTransposeProxyModel* self, libqt_list /* of QModelIndex* */ indexes);
QTLIBC_API bool QTransposeProxyModel_CanDropMimeData(const QTransposeProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
QTLIBC_API void QTransposeProxyModel_OnCanDropMimeData(const QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API bool QTransposeProxyModel_QBaseCanDropMimeData(const QTransposeProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
QTLIBC_API bool QTransposeProxyModel_DropMimeData(QTransposeProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
QTLIBC_API void QTransposeProxyModel_OnDropMimeData(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API bool QTransposeProxyModel_QBaseDropMimeData(QTransposeProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
QTLIBC_API libqt_list /* of libqt_string */ QTransposeProxyModel_MimeTypes(const QTransposeProxyModel* self);
QTLIBC_API void QTransposeProxyModel_OnMimeTypes(const QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API libqt_list /* of libqt_string */ QTransposeProxyModel_QBaseMimeTypes(const QTransposeProxyModel* self);
QTLIBC_API int QTransposeProxyModel_SupportedDragActions(const QTransposeProxyModel* self);
QTLIBC_API void QTransposeProxyModel_OnSupportedDragActions(const QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API int QTransposeProxyModel_QBaseSupportedDragActions(const QTransposeProxyModel* self);
QTLIBC_API int QTransposeProxyModel_SupportedDropActions(const QTransposeProxyModel* self);
QTLIBC_API void QTransposeProxyModel_OnSupportedDropActions(const QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API int QTransposeProxyModel_QBaseSupportedDropActions(const QTransposeProxyModel* self);
QTLIBC_API libqt_map /* of int to libqt_string */ QTransposeProxyModel_RoleNames(const QTransposeProxyModel* self);
QTLIBC_API void QTransposeProxyModel_OnRoleNames(const QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API libqt_map /* of int to libqt_string */ QTransposeProxyModel_QBaseRoleNames(const QTransposeProxyModel* self);
QTLIBC_API libqt_list /* of QModelIndex* */ QTransposeProxyModel_Match(const QTransposeProxyModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
QTLIBC_API void QTransposeProxyModel_OnMatch(const QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API libqt_list /* of QModelIndex* */ QTransposeProxyModel_QBaseMatch(const QTransposeProxyModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
QTLIBC_API void QTransposeProxyModel_MultiData(const QTransposeProxyModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan);
QTLIBC_API void QTransposeProxyModel_OnMultiData(const QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API void QTransposeProxyModel_QBaseMultiData(const QTransposeProxyModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan);
QTLIBC_API void QTransposeProxyModel_ResetInternalData(QTransposeProxyModel* self);
QTLIBC_API void QTransposeProxyModel_OnResetInternalData(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API void QTransposeProxyModel_QBaseResetInternalData(QTransposeProxyModel* self);
QTLIBC_API bool QTransposeProxyModel_Event(QTransposeProxyModel* self, QEvent* event);
QTLIBC_API void QTransposeProxyModel_OnEvent(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API bool QTransposeProxyModel_QBaseEvent(QTransposeProxyModel* self, QEvent* event);
QTLIBC_API bool QTransposeProxyModel_EventFilter(QTransposeProxyModel* self, QObject* watched, QEvent* event);
QTLIBC_API void QTransposeProxyModel_OnEventFilter(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API bool QTransposeProxyModel_QBaseEventFilter(QTransposeProxyModel* self, QObject* watched, QEvent* event);
QTLIBC_API void QTransposeProxyModel_TimerEvent(QTransposeProxyModel* self, QTimerEvent* event);
QTLIBC_API void QTransposeProxyModel_OnTimerEvent(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API void QTransposeProxyModel_QBaseTimerEvent(QTransposeProxyModel* self, QTimerEvent* event);
QTLIBC_API void QTransposeProxyModel_ChildEvent(QTransposeProxyModel* self, QChildEvent* event);
QTLIBC_API void QTransposeProxyModel_OnChildEvent(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API void QTransposeProxyModel_QBaseChildEvent(QTransposeProxyModel* self, QChildEvent* event);
QTLIBC_API void QTransposeProxyModel_CustomEvent(QTransposeProxyModel* self, QEvent* event);
QTLIBC_API void QTransposeProxyModel_OnCustomEvent(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API void QTransposeProxyModel_QBaseCustomEvent(QTransposeProxyModel* self, QEvent* event);
QTLIBC_API void QTransposeProxyModel_ConnectNotify(QTransposeProxyModel* self, QMetaMethod* signal);
QTLIBC_API void QTransposeProxyModel_OnConnectNotify(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API void QTransposeProxyModel_QBaseConnectNotify(QTransposeProxyModel* self, QMetaMethod* signal);
QTLIBC_API void QTransposeProxyModel_DisconnectNotify(QTransposeProxyModel* self, QMetaMethod* signal);
QTLIBC_API void QTransposeProxyModel_OnDisconnectNotify(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API void QTransposeProxyModel_QBaseDisconnectNotify(QTransposeProxyModel* self, QMetaMethod* signal);
QTLIBC_API QModelIndex* QTransposeProxyModel_CreateSourceIndex(const QTransposeProxyModel* self, int row, int col, void* internalPtr);
QTLIBC_API void QTransposeProxyModel_OnCreateSourceIndex(const QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API QModelIndex* QTransposeProxyModel_QBaseCreateSourceIndex(const QTransposeProxyModel* self, int row, int col, void* internalPtr);
QTLIBC_API QModelIndex* QTransposeProxyModel_CreateIndex(const QTransposeProxyModel* self, int row, int column);
QTLIBC_API void QTransposeProxyModel_OnCreateIndex(const QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API QModelIndex* QTransposeProxyModel_QBaseCreateIndex(const QTransposeProxyModel* self, int row, int column);
QTLIBC_API void QTransposeProxyModel_EncodeData(const QTransposeProxyModel* self, libqt_list /* of QModelIndex* */ indexes, QDataStream* stream);
QTLIBC_API void QTransposeProxyModel_OnEncodeData(const QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API void QTransposeProxyModel_QBaseEncodeData(const QTransposeProxyModel* self, libqt_list /* of QModelIndex* */ indexes, QDataStream* stream);
QTLIBC_API bool QTransposeProxyModel_DecodeData(QTransposeProxyModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
QTLIBC_API void QTransposeProxyModel_OnDecodeData(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API bool QTransposeProxyModel_QBaseDecodeData(QTransposeProxyModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
QTLIBC_API void QTransposeProxyModel_BeginInsertRows(QTransposeProxyModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QTransposeProxyModel_OnBeginInsertRows(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API void QTransposeProxyModel_QBaseBeginInsertRows(QTransposeProxyModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QTransposeProxyModel_EndInsertRows(QTransposeProxyModel* self);
QTLIBC_API void QTransposeProxyModel_OnEndInsertRows(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API void QTransposeProxyModel_QBaseEndInsertRows(QTransposeProxyModel* self);
QTLIBC_API void QTransposeProxyModel_BeginRemoveRows(QTransposeProxyModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QTransposeProxyModel_OnBeginRemoveRows(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API void QTransposeProxyModel_QBaseBeginRemoveRows(QTransposeProxyModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QTransposeProxyModel_EndRemoveRows(QTransposeProxyModel* self);
QTLIBC_API void QTransposeProxyModel_OnEndRemoveRows(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API void QTransposeProxyModel_QBaseEndRemoveRows(QTransposeProxyModel* self);
QTLIBC_API bool QTransposeProxyModel_BeginMoveRows(QTransposeProxyModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
QTLIBC_API void QTransposeProxyModel_OnBeginMoveRows(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API bool QTransposeProxyModel_QBaseBeginMoveRows(QTransposeProxyModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
QTLIBC_API void QTransposeProxyModel_EndMoveRows(QTransposeProxyModel* self);
QTLIBC_API void QTransposeProxyModel_OnEndMoveRows(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API void QTransposeProxyModel_QBaseEndMoveRows(QTransposeProxyModel* self);
QTLIBC_API void QTransposeProxyModel_BeginInsertColumns(QTransposeProxyModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QTransposeProxyModel_OnBeginInsertColumns(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API void QTransposeProxyModel_QBaseBeginInsertColumns(QTransposeProxyModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QTransposeProxyModel_EndInsertColumns(QTransposeProxyModel* self);
QTLIBC_API void QTransposeProxyModel_OnEndInsertColumns(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API void QTransposeProxyModel_QBaseEndInsertColumns(QTransposeProxyModel* self);
QTLIBC_API void QTransposeProxyModel_BeginRemoveColumns(QTransposeProxyModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QTransposeProxyModel_OnBeginRemoveColumns(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API void QTransposeProxyModel_QBaseBeginRemoveColumns(QTransposeProxyModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QTransposeProxyModel_EndRemoveColumns(QTransposeProxyModel* self);
QTLIBC_API void QTransposeProxyModel_OnEndRemoveColumns(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API void QTransposeProxyModel_QBaseEndRemoveColumns(QTransposeProxyModel* self);
QTLIBC_API bool QTransposeProxyModel_BeginMoveColumns(QTransposeProxyModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
QTLIBC_API void QTransposeProxyModel_OnBeginMoveColumns(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API bool QTransposeProxyModel_QBaseBeginMoveColumns(QTransposeProxyModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
QTLIBC_API void QTransposeProxyModel_EndMoveColumns(QTransposeProxyModel* self);
QTLIBC_API void QTransposeProxyModel_OnEndMoveColumns(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API void QTransposeProxyModel_QBaseEndMoveColumns(QTransposeProxyModel* self);
QTLIBC_API void QTransposeProxyModel_BeginResetModel(QTransposeProxyModel* self);
QTLIBC_API void QTransposeProxyModel_OnBeginResetModel(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API void QTransposeProxyModel_QBaseBeginResetModel(QTransposeProxyModel* self);
QTLIBC_API void QTransposeProxyModel_EndResetModel(QTransposeProxyModel* self);
QTLIBC_API void QTransposeProxyModel_OnEndResetModel(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API void QTransposeProxyModel_QBaseEndResetModel(QTransposeProxyModel* self);
QTLIBC_API void QTransposeProxyModel_ChangePersistentIndex(QTransposeProxyModel* self, QModelIndex* from, QModelIndex* to);
QTLIBC_API void QTransposeProxyModel_OnChangePersistentIndex(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API void QTransposeProxyModel_QBaseChangePersistentIndex(QTransposeProxyModel* self, QModelIndex* from, QModelIndex* to);
QTLIBC_API void QTransposeProxyModel_ChangePersistentIndexList(QTransposeProxyModel* self, libqt_list /* of QModelIndex* */ from, libqt_list /* of QModelIndex* */ to);
QTLIBC_API void QTransposeProxyModel_OnChangePersistentIndexList(QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API void QTransposeProxyModel_QBaseChangePersistentIndexList(QTransposeProxyModel* self, libqt_list /* of QModelIndex* */ from, libqt_list /* of QModelIndex* */ to);
QTLIBC_API libqt_list /* of QModelIndex* */ QTransposeProxyModel_PersistentIndexList(const QTransposeProxyModel* self);
QTLIBC_API void QTransposeProxyModel_OnPersistentIndexList(const QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API libqt_list /* of QModelIndex* */ QTransposeProxyModel_QBasePersistentIndexList(const QTransposeProxyModel* self);
QTLIBC_API QObject* QTransposeProxyModel_Sender(const QTransposeProxyModel* self);
QTLIBC_API void QTransposeProxyModel_OnSender(const QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API QObject* QTransposeProxyModel_QBaseSender(const QTransposeProxyModel* self);
QTLIBC_API int QTransposeProxyModel_SenderSignalIndex(const QTransposeProxyModel* self);
QTLIBC_API void QTransposeProxyModel_OnSenderSignalIndex(const QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API int QTransposeProxyModel_QBaseSenderSignalIndex(const QTransposeProxyModel* self);
QTLIBC_API int QTransposeProxyModel_Receivers(const QTransposeProxyModel* self, const char* signal);
QTLIBC_API void QTransposeProxyModel_OnReceivers(const QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API int QTransposeProxyModel_QBaseReceivers(const QTransposeProxyModel* self, const char* signal);
QTLIBC_API bool QTransposeProxyModel_IsSignalConnected(const QTransposeProxyModel* self, QMetaMethod* signal);
QTLIBC_API void QTransposeProxyModel_OnIsSignalConnected(const QTransposeProxyModel* self, intptr_t slot);
QTLIBC_API bool QTransposeProxyModel_QBaseIsSignalConnected(const QTransposeProxyModel* self, QMetaMethod* signal);
QTLIBC_API void QTransposeProxyModel_Delete(QTransposeProxyModel* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
