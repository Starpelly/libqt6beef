#pragma once
#ifndef SRCC_LIBQSTRINGLISTMODEL_H
#define SRCC_LIBQSTRINGLISTMODEL_H

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
typedef struct QAbstractListModel QAbstractListModel;
typedef struct QAnyStringView QAnyStringView;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChildEvent QChildEvent;
typedef struct QDataStream QDataStream;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QMimeData QMimeData;
typedef struct QModelIndex QModelIndex;
typedef struct QModelRoleDataSpan QModelRoleDataSpan;
typedef struct QObject QObject;
typedef struct QPersistentModelIndex QPersistentModelIndex;
typedef struct QSize QSize;
typedef struct QStringListModel QStringListModel;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QStringListModel* QStringListModel_new();
QTLIBC_API QStringListModel* QStringListModel_new2(libqt_list /* of libqt_string */ strings);
QTLIBC_API QStringListModel* QStringListModel_new3(QObject* parent);
QTLIBC_API QStringListModel* QStringListModel_new4(libqt_list /* of libqt_string */ strings, QObject* parent);
QTLIBC_API QMetaObject* QStringListModel_MetaObject(const QStringListModel* self);
QTLIBC_API void* QStringListModel_Metacast(QStringListModel* self, const char* param1);
QTLIBC_API int QStringListModel_Metacall(QStringListModel* self, int param1, int param2, void** param3);
QTLIBC_API void QStringListModel_OnMetacall(QStringListModel* self, intptr_t slot);
QTLIBC_API int QStringListModel_QBaseMetacall(QStringListModel* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QStringListModel_Tr(const char* s);
QTLIBC_API int QStringListModel_RowCount(const QStringListModel* self, QModelIndex* parent);
QTLIBC_API void QStringListModel_OnRowCount(const QStringListModel* self, intptr_t slot);
QTLIBC_API int QStringListModel_QBaseRowCount(const QStringListModel* self, QModelIndex* parent);
QTLIBC_API QModelIndex* QStringListModel_Sibling(const QStringListModel* self, int row, int column, QModelIndex* idx);
QTLIBC_API void QStringListModel_OnSibling(const QStringListModel* self, intptr_t slot);
QTLIBC_API QModelIndex* QStringListModel_QBaseSibling(const QStringListModel* self, int row, int column, QModelIndex* idx);
QTLIBC_API QVariant* QStringListModel_Data(const QStringListModel* self, QModelIndex* index, int role);
QTLIBC_API void QStringListModel_OnData(const QStringListModel* self, intptr_t slot);
QTLIBC_API QVariant* QStringListModel_QBaseData(const QStringListModel* self, QModelIndex* index, int role);
QTLIBC_API bool QStringListModel_SetData(QStringListModel* self, QModelIndex* index, QVariant* value, int role);
QTLIBC_API void QStringListModel_OnSetData(QStringListModel* self, intptr_t slot);
QTLIBC_API bool QStringListModel_QBaseSetData(QStringListModel* self, QModelIndex* index, QVariant* value, int role);
QTLIBC_API bool QStringListModel_ClearItemData(QStringListModel* self, QModelIndex* index);
QTLIBC_API void QStringListModel_OnClearItemData(QStringListModel* self, intptr_t slot);
QTLIBC_API bool QStringListModel_QBaseClearItemData(QStringListModel* self, QModelIndex* index);
QTLIBC_API int QStringListModel_Flags(const QStringListModel* self, QModelIndex* index);
QTLIBC_API void QStringListModel_OnFlags(const QStringListModel* self, intptr_t slot);
QTLIBC_API int QStringListModel_QBaseFlags(const QStringListModel* self, QModelIndex* index);
QTLIBC_API bool QStringListModel_InsertRows(QStringListModel* self, int row, int count, QModelIndex* parent);
QTLIBC_API void QStringListModel_OnInsertRows(QStringListModel* self, intptr_t slot);
QTLIBC_API bool QStringListModel_QBaseInsertRows(QStringListModel* self, int row, int count, QModelIndex* parent);
QTLIBC_API bool QStringListModel_RemoveRows(QStringListModel* self, int row, int count, QModelIndex* parent);
QTLIBC_API void QStringListModel_OnRemoveRows(QStringListModel* self, intptr_t slot);
QTLIBC_API bool QStringListModel_QBaseRemoveRows(QStringListModel* self, int row, int count, QModelIndex* parent);
QTLIBC_API bool QStringListModel_MoveRows(QStringListModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
QTLIBC_API void QStringListModel_OnMoveRows(QStringListModel* self, intptr_t slot);
QTLIBC_API bool QStringListModel_QBaseMoveRows(QStringListModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
QTLIBC_API libqt_map /* of int to QVariant* */ QStringListModel_ItemData(const QStringListModel* self, QModelIndex* index);
QTLIBC_API void QStringListModel_OnItemData(const QStringListModel* self, intptr_t slot);
QTLIBC_API libqt_map /* of int to QVariant* */ QStringListModel_QBaseItemData(const QStringListModel* self, QModelIndex* index);
QTLIBC_API bool QStringListModel_SetItemData(QStringListModel* self, QModelIndex* index, libqt_map /* of int to QVariant* */ roles);
QTLIBC_API void QStringListModel_OnSetItemData(QStringListModel* self, intptr_t slot);
QTLIBC_API bool QStringListModel_QBaseSetItemData(QStringListModel* self, QModelIndex* index, libqt_map /* of int to QVariant* */ roles);
QTLIBC_API void QStringListModel_Sort(QStringListModel* self, int column, int order);
QTLIBC_API void QStringListModel_OnSort(QStringListModel* self, intptr_t slot);
QTLIBC_API void QStringListModel_QBaseSort(QStringListModel* self, int column, int order);
QTLIBC_API libqt_list /* of libqt_string */ QStringListModel_StringList(const QStringListModel* self);
QTLIBC_API void QStringListModel_SetStringList(QStringListModel* self, libqt_list /* of libqt_string */ strings);
QTLIBC_API int QStringListModel_SupportedDropActions(const QStringListModel* self);
QTLIBC_API void QStringListModel_OnSupportedDropActions(const QStringListModel* self, intptr_t slot);
QTLIBC_API int QStringListModel_QBaseSupportedDropActions(const QStringListModel* self);
QTLIBC_API libqt_string QStringListModel_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QStringListModel_Tr3(const char* s, const char* c, int n);
QTLIBC_API QModelIndex* QStringListModel_Index(const QStringListModel* self, int row, int column, QModelIndex* parent);
QTLIBC_API void QStringListModel_OnIndex(const QStringListModel* self, intptr_t slot);
QTLIBC_API QModelIndex* QStringListModel_QBaseIndex(const QStringListModel* self, int row, int column, QModelIndex* parent);
QTLIBC_API bool QStringListModel_DropMimeData(QStringListModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
QTLIBC_API void QStringListModel_OnDropMimeData(QStringListModel* self, intptr_t slot);
QTLIBC_API bool QStringListModel_QBaseDropMimeData(QStringListModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
QTLIBC_API QVariant* QStringListModel_HeaderData(const QStringListModel* self, int section, int orientation, int role);
QTLIBC_API void QStringListModel_OnHeaderData(const QStringListModel* self, intptr_t slot);
QTLIBC_API QVariant* QStringListModel_QBaseHeaderData(const QStringListModel* self, int section, int orientation, int role);
QTLIBC_API bool QStringListModel_SetHeaderData(QStringListModel* self, int section, int orientation, QVariant* value, int role);
QTLIBC_API void QStringListModel_OnSetHeaderData(QStringListModel* self, intptr_t slot);
QTLIBC_API bool QStringListModel_QBaseSetHeaderData(QStringListModel* self, int section, int orientation, QVariant* value, int role);
QTLIBC_API libqt_list /* of libqt_string */ QStringListModel_MimeTypes(const QStringListModel* self);
QTLIBC_API void QStringListModel_OnMimeTypes(const QStringListModel* self, intptr_t slot);
QTLIBC_API libqt_list /* of libqt_string */ QStringListModel_QBaseMimeTypes(const QStringListModel* self);
QTLIBC_API QMimeData* QStringListModel_MimeData(const QStringListModel* self, libqt_list /* of QModelIndex* */ indexes);
QTLIBC_API void QStringListModel_OnMimeData(const QStringListModel* self, intptr_t slot);
QTLIBC_API QMimeData* QStringListModel_QBaseMimeData(const QStringListModel* self, libqt_list /* of QModelIndex* */ indexes);
QTLIBC_API bool QStringListModel_CanDropMimeData(const QStringListModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
QTLIBC_API void QStringListModel_OnCanDropMimeData(const QStringListModel* self, intptr_t slot);
QTLIBC_API bool QStringListModel_QBaseCanDropMimeData(const QStringListModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
QTLIBC_API int QStringListModel_SupportedDragActions(const QStringListModel* self);
QTLIBC_API void QStringListModel_OnSupportedDragActions(const QStringListModel* self, intptr_t slot);
QTLIBC_API int QStringListModel_QBaseSupportedDragActions(const QStringListModel* self);
QTLIBC_API bool QStringListModel_InsertColumns(QStringListModel* self, int column, int count, QModelIndex* parent);
QTLIBC_API void QStringListModel_OnInsertColumns(QStringListModel* self, intptr_t slot);
QTLIBC_API bool QStringListModel_QBaseInsertColumns(QStringListModel* self, int column, int count, QModelIndex* parent);
QTLIBC_API bool QStringListModel_RemoveColumns(QStringListModel* self, int column, int count, QModelIndex* parent);
QTLIBC_API void QStringListModel_OnRemoveColumns(QStringListModel* self, intptr_t slot);
QTLIBC_API bool QStringListModel_QBaseRemoveColumns(QStringListModel* self, int column, int count, QModelIndex* parent);
QTLIBC_API bool QStringListModel_MoveColumns(QStringListModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
QTLIBC_API void QStringListModel_OnMoveColumns(QStringListModel* self, intptr_t slot);
QTLIBC_API bool QStringListModel_QBaseMoveColumns(QStringListModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
QTLIBC_API void QStringListModel_FetchMore(QStringListModel* self, QModelIndex* parent);
QTLIBC_API void QStringListModel_OnFetchMore(QStringListModel* self, intptr_t slot);
QTLIBC_API void QStringListModel_QBaseFetchMore(QStringListModel* self, QModelIndex* parent);
QTLIBC_API bool QStringListModel_CanFetchMore(const QStringListModel* self, QModelIndex* parent);
QTLIBC_API void QStringListModel_OnCanFetchMore(const QStringListModel* self, intptr_t slot);
QTLIBC_API bool QStringListModel_QBaseCanFetchMore(const QStringListModel* self, QModelIndex* parent);
QTLIBC_API QModelIndex* QStringListModel_Buddy(const QStringListModel* self, QModelIndex* index);
QTLIBC_API void QStringListModel_OnBuddy(const QStringListModel* self, intptr_t slot);
QTLIBC_API QModelIndex* QStringListModel_QBaseBuddy(const QStringListModel* self, QModelIndex* index);
QTLIBC_API libqt_list /* of QModelIndex* */ QStringListModel_Match(const QStringListModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
QTLIBC_API void QStringListModel_OnMatch(const QStringListModel* self, intptr_t slot);
QTLIBC_API libqt_list /* of QModelIndex* */ QStringListModel_QBaseMatch(const QStringListModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
QTLIBC_API QSize* QStringListModel_Span(const QStringListModel* self, QModelIndex* index);
QTLIBC_API void QStringListModel_OnSpan(const QStringListModel* self, intptr_t slot);
QTLIBC_API QSize* QStringListModel_QBaseSpan(const QStringListModel* self, QModelIndex* index);
QTLIBC_API libqt_map /* of int to libqt_string */ QStringListModel_RoleNames(const QStringListModel* self);
QTLIBC_API void QStringListModel_OnRoleNames(const QStringListModel* self, intptr_t slot);
QTLIBC_API libqt_map /* of int to libqt_string */ QStringListModel_QBaseRoleNames(const QStringListModel* self);
QTLIBC_API void QStringListModel_MultiData(const QStringListModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan);
QTLIBC_API void QStringListModel_OnMultiData(const QStringListModel* self, intptr_t slot);
QTLIBC_API void QStringListModel_QBaseMultiData(const QStringListModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan);
QTLIBC_API bool QStringListModel_Submit(QStringListModel* self);
QTLIBC_API void QStringListModel_OnSubmit(QStringListModel* self, intptr_t slot);
QTLIBC_API bool QStringListModel_QBaseSubmit(QStringListModel* self);
QTLIBC_API void QStringListModel_Revert(QStringListModel* self);
QTLIBC_API void QStringListModel_OnRevert(QStringListModel* self, intptr_t slot);
QTLIBC_API void QStringListModel_QBaseRevert(QStringListModel* self);
QTLIBC_API void QStringListModel_ResetInternalData(QStringListModel* self);
QTLIBC_API void QStringListModel_OnResetInternalData(QStringListModel* self, intptr_t slot);
QTLIBC_API void QStringListModel_QBaseResetInternalData(QStringListModel* self);
QTLIBC_API bool QStringListModel_Event(QStringListModel* self, QEvent* event);
QTLIBC_API void QStringListModel_OnEvent(QStringListModel* self, intptr_t slot);
QTLIBC_API bool QStringListModel_QBaseEvent(QStringListModel* self, QEvent* event);
QTLIBC_API bool QStringListModel_EventFilter(QStringListModel* self, QObject* watched, QEvent* event);
QTLIBC_API void QStringListModel_OnEventFilter(QStringListModel* self, intptr_t slot);
QTLIBC_API bool QStringListModel_QBaseEventFilter(QStringListModel* self, QObject* watched, QEvent* event);
QTLIBC_API void QStringListModel_TimerEvent(QStringListModel* self, QTimerEvent* event);
QTLIBC_API void QStringListModel_OnTimerEvent(QStringListModel* self, intptr_t slot);
QTLIBC_API void QStringListModel_QBaseTimerEvent(QStringListModel* self, QTimerEvent* event);
QTLIBC_API void QStringListModel_ChildEvent(QStringListModel* self, QChildEvent* event);
QTLIBC_API void QStringListModel_OnChildEvent(QStringListModel* self, intptr_t slot);
QTLIBC_API void QStringListModel_QBaseChildEvent(QStringListModel* self, QChildEvent* event);
QTLIBC_API void QStringListModel_CustomEvent(QStringListModel* self, QEvent* event);
QTLIBC_API void QStringListModel_OnCustomEvent(QStringListModel* self, intptr_t slot);
QTLIBC_API void QStringListModel_QBaseCustomEvent(QStringListModel* self, QEvent* event);
QTLIBC_API void QStringListModel_ConnectNotify(QStringListModel* self, QMetaMethod* signal);
QTLIBC_API void QStringListModel_OnConnectNotify(QStringListModel* self, intptr_t slot);
QTLIBC_API void QStringListModel_QBaseConnectNotify(QStringListModel* self, QMetaMethod* signal);
QTLIBC_API void QStringListModel_DisconnectNotify(QStringListModel* self, QMetaMethod* signal);
QTLIBC_API void QStringListModel_OnDisconnectNotify(QStringListModel* self, intptr_t slot);
QTLIBC_API void QStringListModel_QBaseDisconnectNotify(QStringListModel* self, QMetaMethod* signal);
QTLIBC_API QModelIndex* QStringListModel_CreateIndex(const QStringListModel* self, int row, int column);
QTLIBC_API void QStringListModel_OnCreateIndex(const QStringListModel* self, intptr_t slot);
QTLIBC_API QModelIndex* QStringListModel_QBaseCreateIndex(const QStringListModel* self, int row, int column);
QTLIBC_API void QStringListModel_EncodeData(const QStringListModel* self, libqt_list /* of QModelIndex* */ indexes, QDataStream* stream);
QTLIBC_API void QStringListModel_OnEncodeData(const QStringListModel* self, intptr_t slot);
QTLIBC_API void QStringListModel_QBaseEncodeData(const QStringListModel* self, libqt_list /* of QModelIndex* */ indexes, QDataStream* stream);
QTLIBC_API bool QStringListModel_DecodeData(QStringListModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
QTLIBC_API void QStringListModel_OnDecodeData(QStringListModel* self, intptr_t slot);
QTLIBC_API bool QStringListModel_QBaseDecodeData(QStringListModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
QTLIBC_API void QStringListModel_BeginInsertRows(QStringListModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QStringListModel_OnBeginInsertRows(QStringListModel* self, intptr_t slot);
QTLIBC_API void QStringListModel_QBaseBeginInsertRows(QStringListModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QStringListModel_EndInsertRows(QStringListModel* self);
QTLIBC_API void QStringListModel_OnEndInsertRows(QStringListModel* self, intptr_t slot);
QTLIBC_API void QStringListModel_QBaseEndInsertRows(QStringListModel* self);
QTLIBC_API void QStringListModel_BeginRemoveRows(QStringListModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QStringListModel_OnBeginRemoveRows(QStringListModel* self, intptr_t slot);
QTLIBC_API void QStringListModel_QBaseBeginRemoveRows(QStringListModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QStringListModel_EndRemoveRows(QStringListModel* self);
QTLIBC_API void QStringListModel_OnEndRemoveRows(QStringListModel* self, intptr_t slot);
QTLIBC_API void QStringListModel_QBaseEndRemoveRows(QStringListModel* self);
QTLIBC_API bool QStringListModel_BeginMoveRows(QStringListModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
QTLIBC_API void QStringListModel_OnBeginMoveRows(QStringListModel* self, intptr_t slot);
QTLIBC_API bool QStringListModel_QBaseBeginMoveRows(QStringListModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
QTLIBC_API void QStringListModel_EndMoveRows(QStringListModel* self);
QTLIBC_API void QStringListModel_OnEndMoveRows(QStringListModel* self, intptr_t slot);
QTLIBC_API void QStringListModel_QBaseEndMoveRows(QStringListModel* self);
QTLIBC_API void QStringListModel_BeginInsertColumns(QStringListModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QStringListModel_OnBeginInsertColumns(QStringListModel* self, intptr_t slot);
QTLIBC_API void QStringListModel_QBaseBeginInsertColumns(QStringListModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QStringListModel_EndInsertColumns(QStringListModel* self);
QTLIBC_API void QStringListModel_OnEndInsertColumns(QStringListModel* self, intptr_t slot);
QTLIBC_API void QStringListModel_QBaseEndInsertColumns(QStringListModel* self);
QTLIBC_API void QStringListModel_BeginRemoveColumns(QStringListModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QStringListModel_OnBeginRemoveColumns(QStringListModel* self, intptr_t slot);
QTLIBC_API void QStringListModel_QBaseBeginRemoveColumns(QStringListModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QStringListModel_EndRemoveColumns(QStringListModel* self);
QTLIBC_API void QStringListModel_OnEndRemoveColumns(QStringListModel* self, intptr_t slot);
QTLIBC_API void QStringListModel_QBaseEndRemoveColumns(QStringListModel* self);
QTLIBC_API bool QStringListModel_BeginMoveColumns(QStringListModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
QTLIBC_API void QStringListModel_OnBeginMoveColumns(QStringListModel* self, intptr_t slot);
QTLIBC_API bool QStringListModel_QBaseBeginMoveColumns(QStringListModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
QTLIBC_API void QStringListModel_EndMoveColumns(QStringListModel* self);
QTLIBC_API void QStringListModel_OnEndMoveColumns(QStringListModel* self, intptr_t slot);
QTLIBC_API void QStringListModel_QBaseEndMoveColumns(QStringListModel* self);
QTLIBC_API void QStringListModel_BeginResetModel(QStringListModel* self);
QTLIBC_API void QStringListModel_OnBeginResetModel(QStringListModel* self, intptr_t slot);
QTLIBC_API void QStringListModel_QBaseBeginResetModel(QStringListModel* self);
QTLIBC_API void QStringListModel_EndResetModel(QStringListModel* self);
QTLIBC_API void QStringListModel_OnEndResetModel(QStringListModel* self, intptr_t slot);
QTLIBC_API void QStringListModel_QBaseEndResetModel(QStringListModel* self);
QTLIBC_API void QStringListModel_ChangePersistentIndex(QStringListModel* self, QModelIndex* from, QModelIndex* to);
QTLIBC_API void QStringListModel_OnChangePersistentIndex(QStringListModel* self, intptr_t slot);
QTLIBC_API void QStringListModel_QBaseChangePersistentIndex(QStringListModel* self, QModelIndex* from, QModelIndex* to);
QTLIBC_API void QStringListModel_ChangePersistentIndexList(QStringListModel* self, libqt_list /* of QModelIndex* */ from, libqt_list /* of QModelIndex* */ to);
QTLIBC_API void QStringListModel_OnChangePersistentIndexList(QStringListModel* self, intptr_t slot);
QTLIBC_API void QStringListModel_QBaseChangePersistentIndexList(QStringListModel* self, libqt_list /* of QModelIndex* */ from, libqt_list /* of QModelIndex* */ to);
QTLIBC_API libqt_list /* of QModelIndex* */ QStringListModel_PersistentIndexList(const QStringListModel* self);
QTLIBC_API void QStringListModel_OnPersistentIndexList(const QStringListModel* self, intptr_t slot);
QTLIBC_API libqt_list /* of QModelIndex* */ QStringListModel_QBasePersistentIndexList(const QStringListModel* self);
QTLIBC_API QObject* QStringListModel_Sender(const QStringListModel* self);
QTLIBC_API void QStringListModel_OnSender(const QStringListModel* self, intptr_t slot);
QTLIBC_API QObject* QStringListModel_QBaseSender(const QStringListModel* self);
QTLIBC_API int QStringListModel_SenderSignalIndex(const QStringListModel* self);
QTLIBC_API void QStringListModel_OnSenderSignalIndex(const QStringListModel* self, intptr_t slot);
QTLIBC_API int QStringListModel_QBaseSenderSignalIndex(const QStringListModel* self);
QTLIBC_API int QStringListModel_Receivers(const QStringListModel* self, const char* signal);
QTLIBC_API void QStringListModel_OnReceivers(const QStringListModel* self, intptr_t slot);
QTLIBC_API int QStringListModel_QBaseReceivers(const QStringListModel* self, const char* signal);
QTLIBC_API bool QStringListModel_IsSignalConnected(const QStringListModel* self, QMetaMethod* signal);
QTLIBC_API void QStringListModel_OnIsSignalConnected(const QStringListModel* self, intptr_t slot);
QTLIBC_API bool QStringListModel_QBaseIsSignalConnected(const QStringListModel* self, QMetaMethod* signal);
QTLIBC_API void QStringListModel_Delete(QStringListModel* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
