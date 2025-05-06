#pragma once
#ifndef SRCC_LIBQDIRMODEL_H
#define SRCC_LIBQDIRMODEL_H

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
typedef struct QChildEvent QChildEvent;
typedef struct QDataStream QDataStream;
typedef struct QDirModel QDirModel;
typedef struct QEvent QEvent;
typedef struct QFileIconProvider QFileIconProvider;
typedef struct QFileInfo QFileInfo;
typedef struct QIcon QIcon;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QMimeData QMimeData;
typedef struct QModelIndex QModelIndex;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QPersistentModelIndex QPersistentModelIndex;
typedef struct QSize QSize;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QDirModel::Roles Roles; // C++ enum
#else
typedef int Roles; // C ABI enum
#endif

QDirModel* QDirModel_new(libqt_list /* of libqt_string */ nameFilters, int filters, int sort);
QDirModel* QDirModel_new2();
QDirModel* QDirModel_new3(libqt_list /* of libqt_string */ nameFilters, int filters, int sort, QObject* parent);
QDirModel* QDirModel_new4(QObject* parent);
QMetaObject* QDirModel_MetaObject(const QDirModel* self);
void* QDirModel_Metacast(QDirModel* self, const char* param1);
int QDirModel_Metacall(QDirModel* self, int param1, int param2, void** param3);
void QDirModel_OnMetacall(QDirModel* self, intptr_t slot);
int QDirModel_QBaseMetacall(QDirModel* self, int param1, int param2, void** param3);
libqt_string QDirModel_Tr(const char* s);
libqt_string QDirModel_TrUtf8(const char* s);
QModelIndex* QDirModel_Index(const QDirModel* self, int row, int column, QModelIndex* parent);
void QDirModel_OnIndex(const QDirModel* self, intptr_t slot);
QModelIndex* QDirModel_QBaseIndex(const QDirModel* self, int row, int column, QModelIndex* parent);
QModelIndex* QDirModel_Parent(const QDirModel* self, QModelIndex* child);
void QDirModel_OnParent(const QDirModel* self, intptr_t slot);
QModelIndex* QDirModel_QBaseParent(const QDirModel* self, QModelIndex* child);
int QDirModel_RowCount(const QDirModel* self, QModelIndex* parent);
void QDirModel_OnRowCount(const QDirModel* self, intptr_t slot);
int QDirModel_QBaseRowCount(const QDirModel* self, QModelIndex* parent);
int QDirModel_ColumnCount(const QDirModel* self, QModelIndex* parent);
void QDirModel_OnColumnCount(const QDirModel* self, intptr_t slot);
int QDirModel_QBaseColumnCount(const QDirModel* self, QModelIndex* parent);
QVariant* QDirModel_Data(const QDirModel* self, QModelIndex* index, int role);
void QDirModel_OnData(const QDirModel* self, intptr_t slot);
QVariant* QDirModel_QBaseData(const QDirModel* self, QModelIndex* index, int role);
bool QDirModel_SetData(QDirModel* self, QModelIndex* index, QVariant* value, int role);
void QDirModel_OnSetData(QDirModel* self, intptr_t slot);
bool QDirModel_QBaseSetData(QDirModel* self, QModelIndex* index, QVariant* value, int role);
QVariant* QDirModel_HeaderData(const QDirModel* self, int section, int orientation, int role);
void QDirModel_OnHeaderData(const QDirModel* self, intptr_t slot);
QVariant* QDirModel_QBaseHeaderData(const QDirModel* self, int section, int orientation, int role);
bool QDirModel_HasChildren(const QDirModel* self, QModelIndex* index);
void QDirModel_OnHasChildren(const QDirModel* self, intptr_t slot);
bool QDirModel_QBaseHasChildren(const QDirModel* self, QModelIndex* index);
int QDirModel_Flags(const QDirModel* self, QModelIndex* index);
void QDirModel_OnFlags(const QDirModel* self, intptr_t slot);
int QDirModel_QBaseFlags(const QDirModel* self, QModelIndex* index);
void QDirModel_Sort(QDirModel* self, int column, int order);
void QDirModel_OnSort(QDirModel* self, intptr_t slot);
void QDirModel_QBaseSort(QDirModel* self, int column, int order);
libqt_list /* of libqt_string */ QDirModel_MimeTypes(const QDirModel* self);
void QDirModel_OnMimeTypes(const QDirModel* self, intptr_t slot);
libqt_list /* of libqt_string */ QDirModel_QBaseMimeTypes(const QDirModel* self);
QMimeData* QDirModel_MimeData(const QDirModel* self, libqt_list /* of QModelIndex* */ indexes);
void QDirModel_OnMimeData(const QDirModel* self, intptr_t slot);
QMimeData* QDirModel_QBaseMimeData(const QDirModel* self, libqt_list /* of QModelIndex* */ indexes);
bool QDirModel_DropMimeData(QDirModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
void QDirModel_OnDropMimeData(QDirModel* self, intptr_t slot);
bool QDirModel_QBaseDropMimeData(QDirModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
int QDirModel_SupportedDropActions(const QDirModel* self);
void QDirModel_OnSupportedDropActions(const QDirModel* self, intptr_t slot);
int QDirModel_QBaseSupportedDropActions(const QDirModel* self);
void QDirModel_SetIconProvider(QDirModel* self, QFileIconProvider* provider);
QFileIconProvider* QDirModel_IconProvider(const QDirModel* self);
void QDirModel_SetNameFilters(QDirModel* self, libqt_list /* of libqt_string */ filters);
libqt_list /* of libqt_string */ QDirModel_NameFilters(const QDirModel* self);
void QDirModel_SetFilter(QDirModel* self, int filters);
int QDirModel_Filter(const QDirModel* self);
void QDirModel_SetSorting(QDirModel* self, int sort);
int QDirModel_Sorting(const QDirModel* self);
void QDirModel_SetResolveSymlinks(QDirModel* self, bool enable);
bool QDirModel_ResolveSymlinks(const QDirModel* self);
void QDirModel_SetReadOnly(QDirModel* self, bool enable);
bool QDirModel_IsReadOnly(const QDirModel* self);
void QDirModel_SetLazyChildCount(QDirModel* self, bool enable);
bool QDirModel_LazyChildCount(const QDirModel* self);
QModelIndex* QDirModel_IndexWithPath(const QDirModel* self, libqt_string path);
bool QDirModel_IsDir(const QDirModel* self, QModelIndex* index);
QModelIndex* QDirModel_Mkdir(QDirModel* self, QModelIndex* parent, libqt_string name);
bool QDirModel_Rmdir(QDirModel* self, QModelIndex* index);
bool QDirModel_Remove(QDirModel* self, QModelIndex* index);
libqt_string QDirModel_FilePath(const QDirModel* self, QModelIndex* index);
libqt_string QDirModel_FileName(const QDirModel* self, QModelIndex* index);
QIcon* QDirModel_FileIcon(const QDirModel* self, QModelIndex* index);
QFileInfo* QDirModel_FileInfo(const QDirModel* self, QModelIndex* index);
void QDirModel_Refresh(QDirModel* self);
libqt_string QDirModel_Tr2(const char* s, const char* c);
libqt_string QDirModel_Tr3(const char* s, const char* c, int n);
libqt_string QDirModel_TrUtf82(const char* s, const char* c);
libqt_string QDirModel_TrUtf83(const char* s, const char* c, int n);
QModelIndex* QDirModel_Index2(const QDirModel* self, libqt_string path, int column);
void QDirModel_Refresh1(QDirModel* self, QModelIndex* parent);
QModelIndex* QDirModel_Sibling(const QDirModel* self, int row, int column, QModelIndex* idx);
void QDirModel_OnSibling(const QDirModel* self, intptr_t slot);
QModelIndex* QDirModel_QBaseSibling(const QDirModel* self, int row, int column, QModelIndex* idx);
bool QDirModel_SetHeaderData(QDirModel* self, int section, int orientation, QVariant* value, int role);
void QDirModel_OnSetHeaderData(QDirModel* self, intptr_t slot);
bool QDirModel_QBaseSetHeaderData(QDirModel* self, int section, int orientation, QVariant* value, int role);
libqt_map /* of int to QVariant* */ QDirModel_ItemData(const QDirModel* self, QModelIndex* index);
void QDirModel_OnItemData(const QDirModel* self, intptr_t slot);
libqt_map /* of int to QVariant* */ QDirModel_QBaseItemData(const QDirModel* self, QModelIndex* index);
bool QDirModel_SetItemData(QDirModel* self, QModelIndex* index, libqt_map /* of int to QVariant* */ roles);
void QDirModel_OnSetItemData(QDirModel* self, intptr_t slot);
bool QDirModel_QBaseSetItemData(QDirModel* self, QModelIndex* index, libqt_map /* of int to QVariant* */ roles);
bool QDirModel_CanDropMimeData(const QDirModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
void QDirModel_OnCanDropMimeData(const QDirModel* self, intptr_t slot);
bool QDirModel_QBaseCanDropMimeData(const QDirModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
int QDirModel_SupportedDragActions(const QDirModel* self);
void QDirModel_OnSupportedDragActions(const QDirModel* self, intptr_t slot);
int QDirModel_QBaseSupportedDragActions(const QDirModel* self);
bool QDirModel_InsertRows(QDirModel* self, int row, int count, QModelIndex* parent);
void QDirModel_OnInsertRows(QDirModel* self, intptr_t slot);
bool QDirModel_QBaseInsertRows(QDirModel* self, int row, int count, QModelIndex* parent);
bool QDirModel_InsertColumns(QDirModel* self, int column, int count, QModelIndex* parent);
void QDirModel_OnInsertColumns(QDirModel* self, intptr_t slot);
bool QDirModel_QBaseInsertColumns(QDirModel* self, int column, int count, QModelIndex* parent);
bool QDirModel_RemoveRows(QDirModel* self, int row, int count, QModelIndex* parent);
void QDirModel_OnRemoveRows(QDirModel* self, intptr_t slot);
bool QDirModel_QBaseRemoveRows(QDirModel* self, int row, int count, QModelIndex* parent);
bool QDirModel_RemoveColumns(QDirModel* self, int column, int count, QModelIndex* parent);
void QDirModel_OnRemoveColumns(QDirModel* self, intptr_t slot);
bool QDirModel_QBaseRemoveColumns(QDirModel* self, int column, int count, QModelIndex* parent);
bool QDirModel_MoveRows(QDirModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
void QDirModel_OnMoveRows(QDirModel* self, intptr_t slot);
bool QDirModel_QBaseMoveRows(QDirModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
bool QDirModel_MoveColumns(QDirModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
void QDirModel_OnMoveColumns(QDirModel* self, intptr_t slot);
bool QDirModel_QBaseMoveColumns(QDirModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
void QDirModel_FetchMore(QDirModel* self, QModelIndex* parent);
void QDirModel_OnFetchMore(QDirModel* self, intptr_t slot);
void QDirModel_QBaseFetchMore(QDirModel* self, QModelIndex* parent);
bool QDirModel_CanFetchMore(const QDirModel* self, QModelIndex* parent);
void QDirModel_OnCanFetchMore(const QDirModel* self, intptr_t slot);
bool QDirModel_QBaseCanFetchMore(const QDirModel* self, QModelIndex* parent);
QModelIndex* QDirModel_Buddy(const QDirModel* self, QModelIndex* index);
void QDirModel_OnBuddy(const QDirModel* self, intptr_t slot);
QModelIndex* QDirModel_QBaseBuddy(const QDirModel* self, QModelIndex* index);
libqt_list /* of QModelIndex* */ QDirModel_Match(const QDirModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
void QDirModel_OnMatch(const QDirModel* self, intptr_t slot);
libqt_list /* of QModelIndex* */ QDirModel_QBaseMatch(const QDirModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
QSize* QDirModel_Span(const QDirModel* self, QModelIndex* index);
void QDirModel_OnSpan(const QDirModel* self, intptr_t slot);
QSize* QDirModel_QBaseSpan(const QDirModel* self, QModelIndex* index);
libqt_map /* of int to libqt_string */ QDirModel_RoleNames(const QDirModel* self);
void QDirModel_OnRoleNames(const QDirModel* self, intptr_t slot);
libqt_map /* of int to libqt_string */ QDirModel_QBaseRoleNames(const QDirModel* self);
bool QDirModel_Submit(QDirModel* self);
void QDirModel_OnSubmit(QDirModel* self, intptr_t slot);
bool QDirModel_QBaseSubmit(QDirModel* self);
void QDirModel_Revert(QDirModel* self);
void QDirModel_OnRevert(QDirModel* self, intptr_t slot);
void QDirModel_QBaseRevert(QDirModel* self);
bool QDirModel_Event(QDirModel* self, QEvent* event);
void QDirModel_OnEvent(QDirModel* self, intptr_t slot);
bool QDirModel_QBaseEvent(QDirModel* self, QEvent* event);
bool QDirModel_EventFilter(QDirModel* self, QObject* watched, QEvent* event);
void QDirModel_OnEventFilter(QDirModel* self, intptr_t slot);
bool QDirModel_QBaseEventFilter(QDirModel* self, QObject* watched, QEvent* event);
void QDirModel_TimerEvent(QDirModel* self, QTimerEvent* event);
void QDirModel_OnTimerEvent(QDirModel* self, intptr_t slot);
void QDirModel_QBaseTimerEvent(QDirModel* self, QTimerEvent* event);
void QDirModel_ChildEvent(QDirModel* self, QChildEvent* event);
void QDirModel_OnChildEvent(QDirModel* self, intptr_t slot);
void QDirModel_QBaseChildEvent(QDirModel* self, QChildEvent* event);
void QDirModel_CustomEvent(QDirModel* self, QEvent* event);
void QDirModel_OnCustomEvent(QDirModel* self, intptr_t slot);
void QDirModel_QBaseCustomEvent(QDirModel* self, QEvent* event);
void QDirModel_ConnectNotify(QDirModel* self, QMetaMethod* signal);
void QDirModel_OnConnectNotify(QDirModel* self, intptr_t slot);
void QDirModel_QBaseConnectNotify(QDirModel* self, QMetaMethod* signal);
void QDirModel_DisconnectNotify(QDirModel* self, QMetaMethod* signal);
void QDirModel_OnDisconnectNotify(QDirModel* self, intptr_t slot);
void QDirModel_QBaseDisconnectNotify(QDirModel* self, QMetaMethod* signal);
void QDirModel_ResetInternalData(QDirModel* self);
void QDirModel_OnResetInternalData(QDirModel* self, intptr_t slot);
void QDirModel_QBaseResetInternalData(QDirModel* self);
QModelIndex* QDirModel_CreateIndex(const QDirModel* self, int row, int column);
void QDirModel_OnCreateIndex(const QDirModel* self, intptr_t slot);
QModelIndex* QDirModel_QBaseCreateIndex(const QDirModel* self, int row, int column);
void QDirModel_EncodeData(const QDirModel* self, libqt_list /* of QModelIndex* */ indexes, QDataStream* stream);
void QDirModel_OnEncodeData(const QDirModel* self, intptr_t slot);
void QDirModel_QBaseEncodeData(const QDirModel* self, libqt_list /* of QModelIndex* */ indexes, QDataStream* stream);
bool QDirModel_DecodeData(QDirModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
void QDirModel_OnDecodeData(QDirModel* self, intptr_t slot);
bool QDirModel_QBaseDecodeData(QDirModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
void QDirModel_BeginInsertRows(QDirModel* self, QModelIndex* parent, int first, int last);
void QDirModel_OnBeginInsertRows(QDirModel* self, intptr_t slot);
void QDirModel_QBaseBeginInsertRows(QDirModel* self, QModelIndex* parent, int first, int last);
void QDirModel_EndInsertRows(QDirModel* self);
void QDirModel_OnEndInsertRows(QDirModel* self, intptr_t slot);
void QDirModel_QBaseEndInsertRows(QDirModel* self);
void QDirModel_BeginRemoveRows(QDirModel* self, QModelIndex* parent, int first, int last);
void QDirModel_OnBeginRemoveRows(QDirModel* self, intptr_t slot);
void QDirModel_QBaseBeginRemoveRows(QDirModel* self, QModelIndex* parent, int first, int last);
void QDirModel_EndRemoveRows(QDirModel* self);
void QDirModel_OnEndRemoveRows(QDirModel* self, intptr_t slot);
void QDirModel_QBaseEndRemoveRows(QDirModel* self);
bool QDirModel_BeginMoveRows(QDirModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
void QDirModel_OnBeginMoveRows(QDirModel* self, intptr_t slot);
bool QDirModel_QBaseBeginMoveRows(QDirModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
void QDirModel_EndMoveRows(QDirModel* self);
void QDirModel_OnEndMoveRows(QDirModel* self, intptr_t slot);
void QDirModel_QBaseEndMoveRows(QDirModel* self);
void QDirModel_BeginInsertColumns(QDirModel* self, QModelIndex* parent, int first, int last);
void QDirModel_OnBeginInsertColumns(QDirModel* self, intptr_t slot);
void QDirModel_QBaseBeginInsertColumns(QDirModel* self, QModelIndex* parent, int first, int last);
void QDirModel_EndInsertColumns(QDirModel* self);
void QDirModel_OnEndInsertColumns(QDirModel* self, intptr_t slot);
void QDirModel_QBaseEndInsertColumns(QDirModel* self);
void QDirModel_BeginRemoveColumns(QDirModel* self, QModelIndex* parent, int first, int last);
void QDirModel_OnBeginRemoveColumns(QDirModel* self, intptr_t slot);
void QDirModel_QBaseBeginRemoveColumns(QDirModel* self, QModelIndex* parent, int first, int last);
void QDirModel_EndRemoveColumns(QDirModel* self);
void QDirModel_OnEndRemoveColumns(QDirModel* self, intptr_t slot);
void QDirModel_QBaseEndRemoveColumns(QDirModel* self);
bool QDirModel_BeginMoveColumns(QDirModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
void QDirModel_OnBeginMoveColumns(QDirModel* self, intptr_t slot);
bool QDirModel_QBaseBeginMoveColumns(QDirModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
void QDirModel_EndMoveColumns(QDirModel* self);
void QDirModel_OnEndMoveColumns(QDirModel* self, intptr_t slot);
void QDirModel_QBaseEndMoveColumns(QDirModel* self);
void QDirModel_BeginResetModel(QDirModel* self);
void QDirModel_OnBeginResetModel(QDirModel* self, intptr_t slot);
void QDirModel_QBaseBeginResetModel(QDirModel* self);
void QDirModel_EndResetModel(QDirModel* self);
void QDirModel_OnEndResetModel(QDirModel* self, intptr_t slot);
void QDirModel_QBaseEndResetModel(QDirModel* self);
void QDirModel_ChangePersistentIndex(QDirModel* self, QModelIndex* from, QModelIndex* to);
void QDirModel_OnChangePersistentIndex(QDirModel* self, intptr_t slot);
void QDirModel_QBaseChangePersistentIndex(QDirModel* self, QModelIndex* from, QModelIndex* to);
void QDirModel_ChangePersistentIndexList(QDirModel* self, libqt_list /* of QModelIndex* */ from, libqt_list /* of QModelIndex* */ to);
void QDirModel_OnChangePersistentIndexList(QDirModel* self, intptr_t slot);
void QDirModel_QBaseChangePersistentIndexList(QDirModel* self, libqt_list /* of QModelIndex* */ from, libqt_list /* of QModelIndex* */ to);
libqt_list /* of QModelIndex* */ QDirModel_PersistentIndexList(const QDirModel* self);
void QDirModel_OnPersistentIndexList(const QDirModel* self, intptr_t slot);
libqt_list /* of QModelIndex* */ QDirModel_QBasePersistentIndexList(const QDirModel* self);
QObject* QDirModel_Sender(const QDirModel* self);
void QDirModel_OnSender(const QDirModel* self, intptr_t slot);
QObject* QDirModel_QBaseSender(const QDirModel* self);
int QDirModel_SenderSignalIndex(const QDirModel* self);
void QDirModel_OnSenderSignalIndex(const QDirModel* self, intptr_t slot);
int QDirModel_QBaseSenderSignalIndex(const QDirModel* self);
int QDirModel_Receivers(const QDirModel* self, const char* signal);
void QDirModel_OnReceivers(const QDirModel* self, intptr_t slot);
int QDirModel_QBaseReceivers(const QDirModel* self, const char* signal);
bool QDirModel_IsSignalConnected(const QDirModel* self, QMetaMethod* signal);
void QDirModel_OnIsSignalConnected(const QDirModel* self, intptr_t slot);
bool QDirModel_QBaseIsSignalConnected(const QDirModel* self, QMetaMethod* signal);
void QDirModel_Delete(QDirModel* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
