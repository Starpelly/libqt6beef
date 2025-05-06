#pragma once
#ifndef SRC_QTC_LIBQFILESYSTEMMODEL_H
#define SRC_QTC_LIBQFILESYSTEMMODEL_H

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
typedef struct QAbstractFileIconProvider QAbstractFileIconProvider;
typedef struct QAbstractItemModel QAbstractItemModel;
typedef struct QAnyStringView QAnyStringView;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChildEvent QChildEvent;
typedef struct QDataStream QDataStream;
typedef struct QDateTime QDateTime;
typedef struct QDir QDir;
typedef struct QEvent QEvent;
typedef struct QFileInfo QFileInfo;
typedef struct QFileSystemModel QFileSystemModel;
typedef struct QIcon QIcon;
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

#ifdef __cplusplus
typedef QFileSystemModel::Option Option;   // C++ enum
typedef QFileSystemModel::Options Options; // C++ QFlags
typedef QFileSystemModel::Roles Roles;     // C++ enum
#else
typedef int Option;  // C ABI enum
typedef int Options; // C ABI QFlags
typedef int Roles;   // C ABI enum
#endif

QTLIBC_API QFileSystemModel* QFileSystemModel_new();
QTLIBC_API QFileSystemModel* QFileSystemModel_new2(QObject* parent);
QTLIBC_API QMetaObject* QFileSystemModel_MetaObject(const QFileSystemModel* self);
QTLIBC_API void* QFileSystemModel_Metacast(QFileSystemModel* self, const char* param1);
QTLIBC_API int QFileSystemModel_Metacall(QFileSystemModel* self, int param1, int param2, void** param3);
QTLIBC_API void QFileSystemModel_OnMetacall(QFileSystemModel* self, intptr_t slot);
QTLIBC_API int QFileSystemModel_QBaseMetacall(QFileSystemModel* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QFileSystemModel_Tr(const char* s);
QTLIBC_API void QFileSystemModel_RootPathChanged(QFileSystemModel* self, libqt_string newPath);
void QFileSystemModel_Connect_RootPathChanged(QFileSystemModel* self, intptr_t slot);
QTLIBC_API void QFileSystemModel_FileRenamed(QFileSystemModel* self, libqt_string path, libqt_string oldName, libqt_string newName);
void QFileSystemModel_Connect_FileRenamed(QFileSystemModel* self, intptr_t slot);
QTLIBC_API void QFileSystemModel_DirectoryLoaded(QFileSystemModel* self, libqt_string path);
void QFileSystemModel_Connect_DirectoryLoaded(QFileSystemModel* self, intptr_t slot);
QTLIBC_API QModelIndex* QFileSystemModel_Index(const QFileSystemModel* self, int row, int column, QModelIndex* parent);
QTLIBC_API void QFileSystemModel_OnIndex(const QFileSystemModel* self, intptr_t slot);
QTLIBC_API QModelIndex* QFileSystemModel_QBaseIndex(const QFileSystemModel* self, int row, int column, QModelIndex* parent);
QTLIBC_API QModelIndex* QFileSystemModel_IndexWithPath(const QFileSystemModel* self, libqt_string path);
QTLIBC_API QModelIndex* QFileSystemModel_Parent(const QFileSystemModel* self, QModelIndex* child);
QTLIBC_API void QFileSystemModel_OnParent(const QFileSystemModel* self, intptr_t slot);
QTLIBC_API QModelIndex* QFileSystemModel_QBaseParent(const QFileSystemModel* self, QModelIndex* child);
QTLIBC_API QModelIndex* QFileSystemModel_Sibling(const QFileSystemModel* self, int row, int column, QModelIndex* idx);
QTLIBC_API void QFileSystemModel_OnSibling(const QFileSystemModel* self, intptr_t slot);
QTLIBC_API QModelIndex* QFileSystemModel_QBaseSibling(const QFileSystemModel* self, int row, int column, QModelIndex* idx);
QTLIBC_API bool QFileSystemModel_HasChildren(const QFileSystemModel* self, QModelIndex* parent);
QTLIBC_API void QFileSystemModel_OnHasChildren(const QFileSystemModel* self, intptr_t slot);
QTLIBC_API bool QFileSystemModel_QBaseHasChildren(const QFileSystemModel* self, QModelIndex* parent);
QTLIBC_API bool QFileSystemModel_CanFetchMore(const QFileSystemModel* self, QModelIndex* parent);
QTLIBC_API void QFileSystemModel_OnCanFetchMore(const QFileSystemModel* self, intptr_t slot);
QTLIBC_API bool QFileSystemModel_QBaseCanFetchMore(const QFileSystemModel* self, QModelIndex* parent);
QTLIBC_API void QFileSystemModel_FetchMore(QFileSystemModel* self, QModelIndex* parent);
QTLIBC_API void QFileSystemModel_OnFetchMore(QFileSystemModel* self, intptr_t slot);
QTLIBC_API void QFileSystemModel_QBaseFetchMore(QFileSystemModel* self, QModelIndex* parent);
QTLIBC_API int QFileSystemModel_RowCount(const QFileSystemModel* self, QModelIndex* parent);
QTLIBC_API void QFileSystemModel_OnRowCount(const QFileSystemModel* self, intptr_t slot);
QTLIBC_API int QFileSystemModel_QBaseRowCount(const QFileSystemModel* self, QModelIndex* parent);
QTLIBC_API int QFileSystemModel_ColumnCount(const QFileSystemModel* self, QModelIndex* parent);
QTLIBC_API void QFileSystemModel_OnColumnCount(const QFileSystemModel* self, intptr_t slot);
QTLIBC_API int QFileSystemModel_QBaseColumnCount(const QFileSystemModel* self, QModelIndex* parent);
QTLIBC_API QVariant* QFileSystemModel_MyComputer(const QFileSystemModel* self);
QTLIBC_API QVariant* QFileSystemModel_Data(const QFileSystemModel* self, QModelIndex* index, int role);
QTLIBC_API void QFileSystemModel_OnData(const QFileSystemModel* self, intptr_t slot);
QTLIBC_API QVariant* QFileSystemModel_QBaseData(const QFileSystemModel* self, QModelIndex* index, int role);
QTLIBC_API bool QFileSystemModel_SetData(QFileSystemModel* self, QModelIndex* index, QVariant* value, int role);
QTLIBC_API void QFileSystemModel_OnSetData(QFileSystemModel* self, intptr_t slot);
QTLIBC_API bool QFileSystemModel_QBaseSetData(QFileSystemModel* self, QModelIndex* index, QVariant* value, int role);
QTLIBC_API QVariant* QFileSystemModel_HeaderData(const QFileSystemModel* self, int section, int orientation, int role);
QTLIBC_API void QFileSystemModel_OnHeaderData(const QFileSystemModel* self, intptr_t slot);
QTLIBC_API QVariant* QFileSystemModel_QBaseHeaderData(const QFileSystemModel* self, int section, int orientation, int role);
QTLIBC_API int QFileSystemModel_Flags(const QFileSystemModel* self, QModelIndex* index);
QTLIBC_API void QFileSystemModel_OnFlags(const QFileSystemModel* self, intptr_t slot);
QTLIBC_API int QFileSystemModel_QBaseFlags(const QFileSystemModel* self, QModelIndex* index);
QTLIBC_API void QFileSystemModel_Sort(QFileSystemModel* self, int column, int order);
QTLIBC_API void QFileSystemModel_OnSort(QFileSystemModel* self, intptr_t slot);
QTLIBC_API void QFileSystemModel_QBaseSort(QFileSystemModel* self, int column, int order);
QTLIBC_API libqt_list /* of libqt_string */ QFileSystemModel_MimeTypes(const QFileSystemModel* self);
QTLIBC_API void QFileSystemModel_OnMimeTypes(const QFileSystemModel* self, intptr_t slot);
QTLIBC_API libqt_list /* of libqt_string */ QFileSystemModel_QBaseMimeTypes(const QFileSystemModel* self);
QTLIBC_API QMimeData* QFileSystemModel_MimeData(const QFileSystemModel* self, libqt_list /* of QModelIndex* */ indexes);
QTLIBC_API void QFileSystemModel_OnMimeData(const QFileSystemModel* self, intptr_t slot);
QTLIBC_API QMimeData* QFileSystemModel_QBaseMimeData(const QFileSystemModel* self, libqt_list /* of QModelIndex* */ indexes);
QTLIBC_API bool QFileSystemModel_DropMimeData(QFileSystemModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
QTLIBC_API void QFileSystemModel_OnDropMimeData(QFileSystemModel* self, intptr_t slot);
QTLIBC_API bool QFileSystemModel_QBaseDropMimeData(QFileSystemModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
QTLIBC_API int QFileSystemModel_SupportedDropActions(const QFileSystemModel* self);
QTLIBC_API void QFileSystemModel_OnSupportedDropActions(const QFileSystemModel* self, intptr_t slot);
QTLIBC_API int QFileSystemModel_QBaseSupportedDropActions(const QFileSystemModel* self);
QTLIBC_API libqt_map /* of int to libqt_string */ QFileSystemModel_RoleNames(const QFileSystemModel* self);
QTLIBC_API void QFileSystemModel_OnRoleNames(const QFileSystemModel* self, intptr_t slot);
QTLIBC_API libqt_map /* of int to libqt_string */ QFileSystemModel_QBaseRoleNames(const QFileSystemModel* self);
QTLIBC_API QModelIndex* QFileSystemModel_SetRootPath(QFileSystemModel* self, libqt_string path);
QTLIBC_API libqt_string QFileSystemModel_RootPath(const QFileSystemModel* self);
QTLIBC_API QDir* QFileSystemModel_RootDirectory(const QFileSystemModel* self);
QTLIBC_API void QFileSystemModel_SetIconProvider(QFileSystemModel* self, QAbstractFileIconProvider* provider);
QTLIBC_API QAbstractFileIconProvider* QFileSystemModel_IconProvider(const QFileSystemModel* self);
QTLIBC_API void QFileSystemModel_SetFilter(QFileSystemModel* self, int filters);
QTLIBC_API int QFileSystemModel_Filter(const QFileSystemModel* self);
QTLIBC_API void QFileSystemModel_SetResolveSymlinks(QFileSystemModel* self, bool enable);
QTLIBC_API bool QFileSystemModel_ResolveSymlinks(const QFileSystemModel* self);
QTLIBC_API void QFileSystemModel_SetReadOnly(QFileSystemModel* self, bool enable);
QTLIBC_API bool QFileSystemModel_IsReadOnly(const QFileSystemModel* self);
QTLIBC_API void QFileSystemModel_SetNameFilterDisables(QFileSystemModel* self, bool enable);
QTLIBC_API bool QFileSystemModel_NameFilterDisables(const QFileSystemModel* self);
QTLIBC_API void QFileSystemModel_SetNameFilters(QFileSystemModel* self, libqt_list /* of libqt_string */ filters);
QTLIBC_API libqt_list /* of libqt_string */ QFileSystemModel_NameFilters(const QFileSystemModel* self);
QTLIBC_API void QFileSystemModel_SetOption(QFileSystemModel* self, int option);
QTLIBC_API bool QFileSystemModel_TestOption(const QFileSystemModel* self, int option);
QTLIBC_API void QFileSystemModel_SetOptions(QFileSystemModel* self, int options);
QTLIBC_API int QFileSystemModel_Options(const QFileSystemModel* self);
QTLIBC_API libqt_string QFileSystemModel_FilePath(const QFileSystemModel* self, QModelIndex* index);
QTLIBC_API bool QFileSystemModel_IsDir(const QFileSystemModel* self, QModelIndex* index);
QTLIBC_API long long QFileSystemModel_Size(const QFileSystemModel* self, QModelIndex* index);
QTLIBC_API libqt_string QFileSystemModel_Type(const QFileSystemModel* self, QModelIndex* index);
QTLIBC_API QDateTime* QFileSystemModel_LastModified(const QFileSystemModel* self, QModelIndex* index);
QTLIBC_API QModelIndex* QFileSystemModel_Mkdir(QFileSystemModel* self, QModelIndex* parent, libqt_string name);
QTLIBC_API bool QFileSystemModel_Rmdir(QFileSystemModel* self, QModelIndex* index);
QTLIBC_API libqt_string QFileSystemModel_FileName(const QFileSystemModel* self, QModelIndex* index);
QTLIBC_API QIcon* QFileSystemModel_FileIcon(const QFileSystemModel* self, QModelIndex* index);
QTLIBC_API int QFileSystemModel_Permissions(const QFileSystemModel* self, QModelIndex* index);
QTLIBC_API QFileInfo* QFileSystemModel_FileInfo(const QFileSystemModel* self, QModelIndex* index);
QTLIBC_API bool QFileSystemModel_Remove(QFileSystemModel* self, QModelIndex* index);
QTLIBC_API void QFileSystemModel_TimerEvent(QFileSystemModel* self, QTimerEvent* event);
QTLIBC_API void QFileSystemModel_OnTimerEvent(QFileSystemModel* self, intptr_t slot);
QTLIBC_API void QFileSystemModel_QBaseTimerEvent(QFileSystemModel* self, QTimerEvent* event);
QTLIBC_API bool QFileSystemModel_Event(QFileSystemModel* self, QEvent* event);
QTLIBC_API void QFileSystemModel_OnEvent(QFileSystemModel* self, intptr_t slot);
QTLIBC_API bool QFileSystemModel_QBaseEvent(QFileSystemModel* self, QEvent* event);
QTLIBC_API libqt_string QFileSystemModel_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QFileSystemModel_Tr3(const char* s, const char* c, int n);
QTLIBC_API QModelIndex* QFileSystemModel_Index2(const QFileSystemModel* self, libqt_string path, int column);
QTLIBC_API QVariant* QFileSystemModel_MyComputer1(const QFileSystemModel* self, int role);
QTLIBC_API void QFileSystemModel_SetOption2(QFileSystemModel* self, int option, bool on);
QTLIBC_API bool QFileSystemModel_SetHeaderData(QFileSystemModel* self, int section, int orientation, QVariant* value, int role);
QTLIBC_API void QFileSystemModel_OnSetHeaderData(QFileSystemModel* self, intptr_t slot);
QTLIBC_API bool QFileSystemModel_QBaseSetHeaderData(QFileSystemModel* self, int section, int orientation, QVariant* value, int role);
QTLIBC_API libqt_map /* of int to QVariant* */ QFileSystemModel_ItemData(const QFileSystemModel* self, QModelIndex* index);
QTLIBC_API void QFileSystemModel_OnItemData(const QFileSystemModel* self, intptr_t slot);
QTLIBC_API libqt_map /* of int to QVariant* */ QFileSystemModel_QBaseItemData(const QFileSystemModel* self, QModelIndex* index);
QTLIBC_API bool QFileSystemModel_SetItemData(QFileSystemModel* self, QModelIndex* index, libqt_map /* of int to QVariant* */ roles);
QTLIBC_API void QFileSystemModel_OnSetItemData(QFileSystemModel* self, intptr_t slot);
QTLIBC_API bool QFileSystemModel_QBaseSetItemData(QFileSystemModel* self, QModelIndex* index, libqt_map /* of int to QVariant* */ roles);
QTLIBC_API bool QFileSystemModel_ClearItemData(QFileSystemModel* self, QModelIndex* index);
QTLIBC_API void QFileSystemModel_OnClearItemData(QFileSystemModel* self, intptr_t slot);
QTLIBC_API bool QFileSystemModel_QBaseClearItemData(QFileSystemModel* self, QModelIndex* index);
QTLIBC_API bool QFileSystemModel_CanDropMimeData(const QFileSystemModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
QTLIBC_API void QFileSystemModel_OnCanDropMimeData(const QFileSystemModel* self, intptr_t slot);
QTLIBC_API bool QFileSystemModel_QBaseCanDropMimeData(const QFileSystemModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
QTLIBC_API int QFileSystemModel_SupportedDragActions(const QFileSystemModel* self);
QTLIBC_API void QFileSystemModel_OnSupportedDragActions(const QFileSystemModel* self, intptr_t slot);
QTLIBC_API int QFileSystemModel_QBaseSupportedDragActions(const QFileSystemModel* self);
QTLIBC_API bool QFileSystemModel_InsertRows(QFileSystemModel* self, int row, int count, QModelIndex* parent);
QTLIBC_API void QFileSystemModel_OnInsertRows(QFileSystemModel* self, intptr_t slot);
QTLIBC_API bool QFileSystemModel_QBaseInsertRows(QFileSystemModel* self, int row, int count, QModelIndex* parent);
QTLIBC_API bool QFileSystemModel_InsertColumns(QFileSystemModel* self, int column, int count, QModelIndex* parent);
QTLIBC_API void QFileSystemModel_OnInsertColumns(QFileSystemModel* self, intptr_t slot);
QTLIBC_API bool QFileSystemModel_QBaseInsertColumns(QFileSystemModel* self, int column, int count, QModelIndex* parent);
QTLIBC_API bool QFileSystemModel_RemoveRows(QFileSystemModel* self, int row, int count, QModelIndex* parent);
QTLIBC_API void QFileSystemModel_OnRemoveRows(QFileSystemModel* self, intptr_t slot);
QTLIBC_API bool QFileSystemModel_QBaseRemoveRows(QFileSystemModel* self, int row, int count, QModelIndex* parent);
QTLIBC_API bool QFileSystemModel_RemoveColumns(QFileSystemModel* self, int column, int count, QModelIndex* parent);
QTLIBC_API void QFileSystemModel_OnRemoveColumns(QFileSystemModel* self, intptr_t slot);
QTLIBC_API bool QFileSystemModel_QBaseRemoveColumns(QFileSystemModel* self, int column, int count, QModelIndex* parent);
QTLIBC_API bool QFileSystemModel_MoveRows(QFileSystemModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
QTLIBC_API void QFileSystemModel_OnMoveRows(QFileSystemModel* self, intptr_t slot);
QTLIBC_API bool QFileSystemModel_QBaseMoveRows(QFileSystemModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
QTLIBC_API bool QFileSystemModel_MoveColumns(QFileSystemModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
QTLIBC_API void QFileSystemModel_OnMoveColumns(QFileSystemModel* self, intptr_t slot);
QTLIBC_API bool QFileSystemModel_QBaseMoveColumns(QFileSystemModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
QTLIBC_API QModelIndex* QFileSystemModel_Buddy(const QFileSystemModel* self, QModelIndex* index);
QTLIBC_API void QFileSystemModel_OnBuddy(const QFileSystemModel* self, intptr_t slot);
QTLIBC_API QModelIndex* QFileSystemModel_QBaseBuddy(const QFileSystemModel* self, QModelIndex* index);
QTLIBC_API libqt_list /* of QModelIndex* */ QFileSystemModel_Match(const QFileSystemModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
QTLIBC_API void QFileSystemModel_OnMatch(const QFileSystemModel* self, intptr_t slot);
QTLIBC_API libqt_list /* of QModelIndex* */ QFileSystemModel_QBaseMatch(const QFileSystemModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
QTLIBC_API QSize* QFileSystemModel_Span(const QFileSystemModel* self, QModelIndex* index);
QTLIBC_API void QFileSystemModel_OnSpan(const QFileSystemModel* self, intptr_t slot);
QTLIBC_API QSize* QFileSystemModel_QBaseSpan(const QFileSystemModel* self, QModelIndex* index);
QTLIBC_API void QFileSystemModel_MultiData(const QFileSystemModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan);
QTLIBC_API void QFileSystemModel_OnMultiData(const QFileSystemModel* self, intptr_t slot);
QTLIBC_API void QFileSystemModel_QBaseMultiData(const QFileSystemModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan);
QTLIBC_API bool QFileSystemModel_Submit(QFileSystemModel* self);
QTLIBC_API void QFileSystemModel_OnSubmit(QFileSystemModel* self, intptr_t slot);
QTLIBC_API bool QFileSystemModel_QBaseSubmit(QFileSystemModel* self);
QTLIBC_API void QFileSystemModel_Revert(QFileSystemModel* self);
QTLIBC_API void QFileSystemModel_OnRevert(QFileSystemModel* self, intptr_t slot);
QTLIBC_API void QFileSystemModel_QBaseRevert(QFileSystemModel* self);
QTLIBC_API void QFileSystemModel_ResetInternalData(QFileSystemModel* self);
QTLIBC_API void QFileSystemModel_OnResetInternalData(QFileSystemModel* self, intptr_t slot);
QTLIBC_API void QFileSystemModel_QBaseResetInternalData(QFileSystemModel* self);
QTLIBC_API bool QFileSystemModel_EventFilter(QFileSystemModel* self, QObject* watched, QEvent* event);
QTLIBC_API void QFileSystemModel_OnEventFilter(QFileSystemModel* self, intptr_t slot);
QTLIBC_API bool QFileSystemModel_QBaseEventFilter(QFileSystemModel* self, QObject* watched, QEvent* event);
QTLIBC_API void QFileSystemModel_ChildEvent(QFileSystemModel* self, QChildEvent* event);
QTLIBC_API void QFileSystemModel_OnChildEvent(QFileSystemModel* self, intptr_t slot);
QTLIBC_API void QFileSystemModel_QBaseChildEvent(QFileSystemModel* self, QChildEvent* event);
QTLIBC_API void QFileSystemModel_CustomEvent(QFileSystemModel* self, QEvent* event);
QTLIBC_API void QFileSystemModel_OnCustomEvent(QFileSystemModel* self, intptr_t slot);
QTLIBC_API void QFileSystemModel_QBaseCustomEvent(QFileSystemModel* self, QEvent* event);
QTLIBC_API void QFileSystemModel_ConnectNotify(QFileSystemModel* self, QMetaMethod* signal);
QTLIBC_API void QFileSystemModel_OnConnectNotify(QFileSystemModel* self, intptr_t slot);
QTLIBC_API void QFileSystemModel_QBaseConnectNotify(QFileSystemModel* self, QMetaMethod* signal);
QTLIBC_API void QFileSystemModel_DisconnectNotify(QFileSystemModel* self, QMetaMethod* signal);
QTLIBC_API void QFileSystemModel_OnDisconnectNotify(QFileSystemModel* self, intptr_t slot);
QTLIBC_API void QFileSystemModel_QBaseDisconnectNotify(QFileSystemModel* self, QMetaMethod* signal);
QTLIBC_API QModelIndex* QFileSystemModel_CreateIndex(const QFileSystemModel* self, int row, int column);
QTLIBC_API void QFileSystemModel_OnCreateIndex(const QFileSystemModel* self, intptr_t slot);
QTLIBC_API QModelIndex* QFileSystemModel_QBaseCreateIndex(const QFileSystemModel* self, int row, int column);
QTLIBC_API void QFileSystemModel_EncodeData(const QFileSystemModel* self, libqt_list /* of QModelIndex* */ indexes, QDataStream* stream);
QTLIBC_API void QFileSystemModel_OnEncodeData(const QFileSystemModel* self, intptr_t slot);
QTLIBC_API void QFileSystemModel_QBaseEncodeData(const QFileSystemModel* self, libqt_list /* of QModelIndex* */ indexes, QDataStream* stream);
QTLIBC_API bool QFileSystemModel_DecodeData(QFileSystemModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
QTLIBC_API void QFileSystemModel_OnDecodeData(QFileSystemModel* self, intptr_t slot);
QTLIBC_API bool QFileSystemModel_QBaseDecodeData(QFileSystemModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
QTLIBC_API void QFileSystemModel_BeginInsertRows(QFileSystemModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QFileSystemModel_OnBeginInsertRows(QFileSystemModel* self, intptr_t slot);
QTLIBC_API void QFileSystemModel_QBaseBeginInsertRows(QFileSystemModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QFileSystemModel_EndInsertRows(QFileSystemModel* self);
QTLIBC_API void QFileSystemModel_OnEndInsertRows(QFileSystemModel* self, intptr_t slot);
QTLIBC_API void QFileSystemModel_QBaseEndInsertRows(QFileSystemModel* self);
QTLIBC_API void QFileSystemModel_BeginRemoveRows(QFileSystemModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QFileSystemModel_OnBeginRemoveRows(QFileSystemModel* self, intptr_t slot);
QTLIBC_API void QFileSystemModel_QBaseBeginRemoveRows(QFileSystemModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QFileSystemModel_EndRemoveRows(QFileSystemModel* self);
QTLIBC_API void QFileSystemModel_OnEndRemoveRows(QFileSystemModel* self, intptr_t slot);
QTLIBC_API void QFileSystemModel_QBaseEndRemoveRows(QFileSystemModel* self);
QTLIBC_API bool QFileSystemModel_BeginMoveRows(QFileSystemModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
QTLIBC_API void QFileSystemModel_OnBeginMoveRows(QFileSystemModel* self, intptr_t slot);
QTLIBC_API bool QFileSystemModel_QBaseBeginMoveRows(QFileSystemModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
QTLIBC_API void QFileSystemModel_EndMoveRows(QFileSystemModel* self);
QTLIBC_API void QFileSystemModel_OnEndMoveRows(QFileSystemModel* self, intptr_t slot);
QTLIBC_API void QFileSystemModel_QBaseEndMoveRows(QFileSystemModel* self);
QTLIBC_API void QFileSystemModel_BeginInsertColumns(QFileSystemModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QFileSystemModel_OnBeginInsertColumns(QFileSystemModel* self, intptr_t slot);
QTLIBC_API void QFileSystemModel_QBaseBeginInsertColumns(QFileSystemModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QFileSystemModel_EndInsertColumns(QFileSystemModel* self);
QTLIBC_API void QFileSystemModel_OnEndInsertColumns(QFileSystemModel* self, intptr_t slot);
QTLIBC_API void QFileSystemModel_QBaseEndInsertColumns(QFileSystemModel* self);
QTLIBC_API void QFileSystemModel_BeginRemoveColumns(QFileSystemModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QFileSystemModel_OnBeginRemoveColumns(QFileSystemModel* self, intptr_t slot);
QTLIBC_API void QFileSystemModel_QBaseBeginRemoveColumns(QFileSystemModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QFileSystemModel_EndRemoveColumns(QFileSystemModel* self);
QTLIBC_API void QFileSystemModel_OnEndRemoveColumns(QFileSystemModel* self, intptr_t slot);
QTLIBC_API void QFileSystemModel_QBaseEndRemoveColumns(QFileSystemModel* self);
QTLIBC_API bool QFileSystemModel_BeginMoveColumns(QFileSystemModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
QTLIBC_API void QFileSystemModel_OnBeginMoveColumns(QFileSystemModel* self, intptr_t slot);
QTLIBC_API bool QFileSystemModel_QBaseBeginMoveColumns(QFileSystemModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
QTLIBC_API void QFileSystemModel_EndMoveColumns(QFileSystemModel* self);
QTLIBC_API void QFileSystemModel_OnEndMoveColumns(QFileSystemModel* self, intptr_t slot);
QTLIBC_API void QFileSystemModel_QBaseEndMoveColumns(QFileSystemModel* self);
QTLIBC_API void QFileSystemModel_BeginResetModel(QFileSystemModel* self);
QTLIBC_API void QFileSystemModel_OnBeginResetModel(QFileSystemModel* self, intptr_t slot);
QTLIBC_API void QFileSystemModel_QBaseBeginResetModel(QFileSystemModel* self);
QTLIBC_API void QFileSystemModel_EndResetModel(QFileSystemModel* self);
QTLIBC_API void QFileSystemModel_OnEndResetModel(QFileSystemModel* self, intptr_t slot);
QTLIBC_API void QFileSystemModel_QBaseEndResetModel(QFileSystemModel* self);
QTLIBC_API void QFileSystemModel_ChangePersistentIndex(QFileSystemModel* self, QModelIndex* from, QModelIndex* to);
QTLIBC_API void QFileSystemModel_OnChangePersistentIndex(QFileSystemModel* self, intptr_t slot);
QTLIBC_API void QFileSystemModel_QBaseChangePersistentIndex(QFileSystemModel* self, QModelIndex* from, QModelIndex* to);
QTLIBC_API void QFileSystemModel_ChangePersistentIndexList(QFileSystemModel* self, libqt_list /* of QModelIndex* */ from, libqt_list /* of QModelIndex* */ to);
QTLIBC_API void QFileSystemModel_OnChangePersistentIndexList(QFileSystemModel* self, intptr_t slot);
QTLIBC_API void QFileSystemModel_QBaseChangePersistentIndexList(QFileSystemModel* self, libqt_list /* of QModelIndex* */ from, libqt_list /* of QModelIndex* */ to);
QTLIBC_API libqt_list /* of QModelIndex* */ QFileSystemModel_PersistentIndexList(const QFileSystemModel* self);
QTLIBC_API void QFileSystemModel_OnPersistentIndexList(const QFileSystemModel* self, intptr_t slot);
QTLIBC_API libqt_list /* of QModelIndex* */ QFileSystemModel_QBasePersistentIndexList(const QFileSystemModel* self);
QTLIBC_API QObject* QFileSystemModel_Sender(const QFileSystemModel* self);
QTLIBC_API void QFileSystemModel_OnSender(const QFileSystemModel* self, intptr_t slot);
QTLIBC_API QObject* QFileSystemModel_QBaseSender(const QFileSystemModel* self);
QTLIBC_API int QFileSystemModel_SenderSignalIndex(const QFileSystemModel* self);
QTLIBC_API void QFileSystemModel_OnSenderSignalIndex(const QFileSystemModel* self, intptr_t slot);
QTLIBC_API int QFileSystemModel_QBaseSenderSignalIndex(const QFileSystemModel* self);
QTLIBC_API int QFileSystemModel_Receivers(const QFileSystemModel* self, const char* signal);
QTLIBC_API void QFileSystemModel_OnReceivers(const QFileSystemModel* self, intptr_t slot);
QTLIBC_API int QFileSystemModel_QBaseReceivers(const QFileSystemModel* self, const char* signal);
QTLIBC_API bool QFileSystemModel_IsSignalConnected(const QFileSystemModel* self, QMetaMethod* signal);
QTLIBC_API void QFileSystemModel_OnIsSignalConnected(const QFileSystemModel* self, intptr_t slot);
QTLIBC_API bool QFileSystemModel_QBaseIsSignalConnected(const QFileSystemModel* self, QMetaMethod* signal);
QTLIBC_API void QFileSystemModel_Delete(QFileSystemModel* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
