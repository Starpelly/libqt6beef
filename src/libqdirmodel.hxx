#pragma once
#ifndef SRCC_LIBVIRTUALQDIRMODEL_H
#define SRCC_LIBVIRTUALQDIRMODEL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "qtlibc.h"

// This class is a subclass of QDirModel so that we can call protected methods
class VirtualQDirModel : public QDirModel {

  public:
    // Virtual class public types (including callbacks)
    using QDirModel_Metacall_Callback = int (*)(QDirModel*, QMetaObject::Call, int, void**);
    using QDirModel_Index_Callback = QModelIndex (*)(const QDirModel*, int, int, const QModelIndex&);
    using QDirModel_Parent_Callback = QModelIndex (*)(const QDirModel*, const QModelIndex&);
    using QDirModel_RowCount_Callback = int (*)(const QDirModel*, const QModelIndex&);
    using QDirModel_ColumnCount_Callback = int (*)(const QDirModel*, const QModelIndex&);
    using QDirModel_Data_Callback = QVariant (*)(const QDirModel*, const QModelIndex&, int);
    using QDirModel_SetData_Callback = bool (*)(QDirModel*, const QModelIndex&, const QVariant&, int);
    using QDirModel_HeaderData_Callback = QVariant (*)(const QDirModel*, int, Qt::Orientation, int);
    using QDirModel_HasChildren_Callback = bool (*)(const QDirModel*, const QModelIndex&);
    using QDirModel_Flags_Callback = Qt::ItemFlags (*)(const QDirModel*, const QModelIndex&);
    using QDirModel_Sort_Callback = void (*)(QDirModel*, int, Qt::SortOrder);
    using QDirModel_MimeTypes_Callback = QStringList (*)();
    using QDirModel_MimeData_Callback = QMimeData* (*)(const QDirModel*, const QModelIndexList&);
    using QDirModel_DropMimeData_Callback = bool (*)(QDirModel*, const QMimeData*, Qt::DropAction, int, int, const QModelIndex&);
    using QDirModel_SupportedDropActions_Callback = Qt::DropActions (*)();
    using QDirModel_Sibling_Callback = QModelIndex (*)(const QDirModel*, int, int, const QModelIndex&);
    using QDirModel_SetHeaderData_Callback = bool (*)(QDirModel*, int, Qt::Orientation, const QVariant&, int);
    using QDirModel_ItemData_Callback = QMap<int, QVariant> (*)(const QDirModel*, const QModelIndex&);
    using QDirModel_SetItemData_Callback = bool (*)(QDirModel*, const QModelIndex&, const QMap<int, QVariant>&);
    using QDirModel_CanDropMimeData_Callback = bool (*)(const QDirModel*, const QMimeData*, Qt::DropAction, int, int, const QModelIndex&);
    using QDirModel_SupportedDragActions_Callback = Qt::DropActions (*)();
    using QDirModel_InsertRows_Callback = bool (*)(QDirModel*, int, int, const QModelIndex&);
    using QDirModel_InsertColumns_Callback = bool (*)(QDirModel*, int, int, const QModelIndex&);
    using QDirModel_RemoveRows_Callback = bool (*)(QDirModel*, int, int, const QModelIndex&);
    using QDirModel_RemoveColumns_Callback = bool (*)(QDirModel*, int, int, const QModelIndex&);
    using QDirModel_MoveRows_Callback = bool (*)(QDirModel*, const QModelIndex&, int, int, const QModelIndex&, int);
    using QDirModel_MoveColumns_Callback = bool (*)(QDirModel*, const QModelIndex&, int, int, const QModelIndex&, int);
    using QDirModel_FetchMore_Callback = void (*)(QDirModel*, const QModelIndex&);
    using QDirModel_CanFetchMore_Callback = bool (*)(const QDirModel*, const QModelIndex&);
    using QDirModel_Buddy_Callback = QModelIndex (*)(const QDirModel*, const QModelIndex&);
    using QDirModel_Match_Callback = QModelIndexList (*)(const QDirModel*, const QModelIndex&, int, const QVariant&, int, Qt::MatchFlags);
    using QDirModel_Span_Callback = QSize (*)(const QDirModel*, const QModelIndex&);
    using QDirModel_RoleNames_Callback = QHash<int, QByteArray> (*)();
    using QDirModel_Submit_Callback = bool (*)();
    using QDirModel_Revert_Callback = void (*)();
    using QDirModel_Event_Callback = bool (*)(QDirModel*, QEvent*);
    using QDirModel_EventFilter_Callback = bool (*)(QDirModel*, QObject*, QEvent*);
    using QDirModel_TimerEvent_Callback = void (*)(QDirModel*, QTimerEvent*);
    using QDirModel_ChildEvent_Callback = void (*)(QDirModel*, QChildEvent*);
    using QDirModel_CustomEvent_Callback = void (*)(QDirModel*, QEvent*);
    using QDirModel_ConnectNotify_Callback = void (*)(QDirModel*, const QMetaMethod&);
    using QDirModel_DisconnectNotify_Callback = void (*)(QDirModel*, const QMetaMethod&);
    using QDirModel_ResetInternalData_Callback = void (*)();
    using QDirModel_CreateIndex_Callback = QModelIndex (*)(const QDirModel*, int, int);
    using QDirModel_EncodeData_Callback = void (*)(const QDirModel*, const QModelIndexList&, QDataStream&);
    using QDirModel_DecodeData_Callback = bool (*)(QDirModel*, int, int, const QModelIndex&, QDataStream&);
    using QDirModel_BeginInsertRows_Callback = void (*)(QDirModel*, const QModelIndex&, int, int);
    using QDirModel_EndInsertRows_Callback = void (*)();
    using QDirModel_BeginRemoveRows_Callback = void (*)(QDirModel*, const QModelIndex&, int, int);
    using QDirModel_EndRemoveRows_Callback = void (*)();
    using QDirModel_BeginMoveRows_Callback = bool (*)(QDirModel*, const QModelIndex&, int, int, const QModelIndex&, int);
    using QDirModel_EndMoveRows_Callback = void (*)();
    using QDirModel_BeginInsertColumns_Callback = void (*)(QDirModel*, const QModelIndex&, int, int);
    using QDirModel_EndInsertColumns_Callback = void (*)();
    using QDirModel_BeginRemoveColumns_Callback = void (*)(QDirModel*, const QModelIndex&, int, int);
    using QDirModel_EndRemoveColumns_Callback = void (*)();
    using QDirModel_BeginMoveColumns_Callback = bool (*)(QDirModel*, const QModelIndex&, int, int, const QModelIndex&, int);
    using QDirModel_EndMoveColumns_Callback = void (*)();
    using QDirModel_BeginResetModel_Callback = void (*)();
    using QDirModel_EndResetModel_Callback = void (*)();
    using QDirModel_ChangePersistentIndex_Callback = void (*)(QDirModel*, const QModelIndex&, const QModelIndex&);
    using QDirModel_ChangePersistentIndexList_Callback = void (*)(QDirModel*, const QModelIndexList&, const QModelIndexList&);
    using QDirModel_PersistentIndexList_Callback = QModelIndexList (*)();
    using QDirModel_Sender_Callback = QObject* (*)();
    using QDirModel_SenderSignalIndex_Callback = int (*)();
    using QDirModel_Receivers_Callback = int (*)(const QDirModel*, const char*);
    using QDirModel_IsSignalConnected_Callback = bool (*)(const QDirModel*, const QMetaMethod&);

  protected:
    // Instance callback storage
    QDirModel_Metacall_Callback qdirmodel_metacall_callback = nullptr;
    QDirModel_Index_Callback qdirmodel_index_callback = nullptr;
    QDirModel_Parent_Callback qdirmodel_parent_callback = nullptr;
    QDirModel_RowCount_Callback qdirmodel_rowcount_callback = nullptr;
    QDirModel_ColumnCount_Callback qdirmodel_columncount_callback = nullptr;
    QDirModel_Data_Callback qdirmodel_data_callback = nullptr;
    QDirModel_SetData_Callback qdirmodel_setdata_callback = nullptr;
    QDirModel_HeaderData_Callback qdirmodel_headerdata_callback = nullptr;
    QDirModel_HasChildren_Callback qdirmodel_haschildren_callback = nullptr;
    QDirModel_Flags_Callback qdirmodel_flags_callback = nullptr;
    QDirModel_Sort_Callback qdirmodel_sort_callback = nullptr;
    QDirModel_MimeTypes_Callback qdirmodel_mimetypes_callback = nullptr;
    QDirModel_MimeData_Callback qdirmodel_mimedata_callback = nullptr;
    QDirModel_DropMimeData_Callback qdirmodel_dropmimedata_callback = nullptr;
    QDirModel_SupportedDropActions_Callback qdirmodel_supporteddropactions_callback = nullptr;
    QDirModel_Sibling_Callback qdirmodel_sibling_callback = nullptr;
    QDirModel_SetHeaderData_Callback qdirmodel_setheaderdata_callback = nullptr;
    QDirModel_ItemData_Callback qdirmodel_itemdata_callback = nullptr;
    QDirModel_SetItemData_Callback qdirmodel_setitemdata_callback = nullptr;
    QDirModel_CanDropMimeData_Callback qdirmodel_candropmimedata_callback = nullptr;
    QDirModel_SupportedDragActions_Callback qdirmodel_supporteddragactions_callback = nullptr;
    QDirModel_InsertRows_Callback qdirmodel_insertrows_callback = nullptr;
    QDirModel_InsertColumns_Callback qdirmodel_insertcolumns_callback = nullptr;
    QDirModel_RemoveRows_Callback qdirmodel_removerows_callback = nullptr;
    QDirModel_RemoveColumns_Callback qdirmodel_removecolumns_callback = nullptr;
    QDirModel_MoveRows_Callback qdirmodel_moverows_callback = nullptr;
    QDirModel_MoveColumns_Callback qdirmodel_movecolumns_callback = nullptr;
    QDirModel_FetchMore_Callback qdirmodel_fetchmore_callback = nullptr;
    QDirModel_CanFetchMore_Callback qdirmodel_canfetchmore_callback = nullptr;
    QDirModel_Buddy_Callback qdirmodel_buddy_callback = nullptr;
    QDirModel_Match_Callback qdirmodel_match_callback = nullptr;
    QDirModel_Span_Callback qdirmodel_span_callback = nullptr;
    QDirModel_RoleNames_Callback qdirmodel_rolenames_callback = nullptr;
    QDirModel_Submit_Callback qdirmodel_submit_callback = nullptr;
    QDirModel_Revert_Callback qdirmodel_revert_callback = nullptr;
    QDirModel_Event_Callback qdirmodel_event_callback = nullptr;
    QDirModel_EventFilter_Callback qdirmodel_eventfilter_callback = nullptr;
    QDirModel_TimerEvent_Callback qdirmodel_timerevent_callback = nullptr;
    QDirModel_ChildEvent_Callback qdirmodel_childevent_callback = nullptr;
    QDirModel_CustomEvent_Callback qdirmodel_customevent_callback = nullptr;
    QDirModel_ConnectNotify_Callback qdirmodel_connectnotify_callback = nullptr;
    QDirModel_DisconnectNotify_Callback qdirmodel_disconnectnotify_callback = nullptr;
    QDirModel_ResetInternalData_Callback qdirmodel_resetinternaldata_callback = nullptr;
    QDirModel_CreateIndex_Callback qdirmodel_createindex_callback = nullptr;
    QDirModel_EncodeData_Callback qdirmodel_encodedata_callback = nullptr;
    QDirModel_DecodeData_Callback qdirmodel_decodedata_callback = nullptr;
    QDirModel_BeginInsertRows_Callback qdirmodel_begininsertrows_callback = nullptr;
    QDirModel_EndInsertRows_Callback qdirmodel_endinsertrows_callback = nullptr;
    QDirModel_BeginRemoveRows_Callback qdirmodel_beginremoverows_callback = nullptr;
    QDirModel_EndRemoveRows_Callback qdirmodel_endremoverows_callback = nullptr;
    QDirModel_BeginMoveRows_Callback qdirmodel_beginmoverows_callback = nullptr;
    QDirModel_EndMoveRows_Callback qdirmodel_endmoverows_callback = nullptr;
    QDirModel_BeginInsertColumns_Callback qdirmodel_begininsertcolumns_callback = nullptr;
    QDirModel_EndInsertColumns_Callback qdirmodel_endinsertcolumns_callback = nullptr;
    QDirModel_BeginRemoveColumns_Callback qdirmodel_beginremovecolumns_callback = nullptr;
    QDirModel_EndRemoveColumns_Callback qdirmodel_endremovecolumns_callback = nullptr;
    QDirModel_BeginMoveColumns_Callback qdirmodel_beginmovecolumns_callback = nullptr;
    QDirModel_EndMoveColumns_Callback qdirmodel_endmovecolumns_callback = nullptr;
    QDirModel_BeginResetModel_Callback qdirmodel_beginresetmodel_callback = nullptr;
    QDirModel_EndResetModel_Callback qdirmodel_endresetmodel_callback = nullptr;
    QDirModel_ChangePersistentIndex_Callback qdirmodel_changepersistentindex_callback = nullptr;
    QDirModel_ChangePersistentIndexList_Callback qdirmodel_changepersistentindexlist_callback = nullptr;
    QDirModel_PersistentIndexList_Callback qdirmodel_persistentindexlist_callback = nullptr;
    QDirModel_Sender_Callback qdirmodel_sender_callback = nullptr;
    QDirModel_SenderSignalIndex_Callback qdirmodel_sendersignalindex_callback = nullptr;
    QDirModel_Receivers_Callback qdirmodel_receivers_callback = nullptr;
    QDirModel_IsSignalConnected_Callback qdirmodel_issignalconnected_callback = nullptr;

    // Instance base flags
    mutable bool qdirmodel_metacall_isbase = false;
    mutable bool qdirmodel_index_isbase = false;
    mutable bool qdirmodel_parent_isbase = false;
    mutable bool qdirmodel_rowcount_isbase = false;
    mutable bool qdirmodel_columncount_isbase = false;
    mutable bool qdirmodel_data_isbase = false;
    mutable bool qdirmodel_setdata_isbase = false;
    mutable bool qdirmodel_headerdata_isbase = false;
    mutable bool qdirmodel_haschildren_isbase = false;
    mutable bool qdirmodel_flags_isbase = false;
    mutable bool qdirmodel_sort_isbase = false;
    mutable bool qdirmodel_mimetypes_isbase = false;
    mutable bool qdirmodel_mimedata_isbase = false;
    mutable bool qdirmodel_dropmimedata_isbase = false;
    mutable bool qdirmodel_supporteddropactions_isbase = false;
    mutable bool qdirmodel_sibling_isbase = false;
    mutable bool qdirmodel_setheaderdata_isbase = false;
    mutable bool qdirmodel_itemdata_isbase = false;
    mutable bool qdirmodel_setitemdata_isbase = false;
    mutable bool qdirmodel_candropmimedata_isbase = false;
    mutable bool qdirmodel_supporteddragactions_isbase = false;
    mutable bool qdirmodel_insertrows_isbase = false;
    mutable bool qdirmodel_insertcolumns_isbase = false;
    mutable bool qdirmodel_removerows_isbase = false;
    mutable bool qdirmodel_removecolumns_isbase = false;
    mutable bool qdirmodel_moverows_isbase = false;
    mutable bool qdirmodel_movecolumns_isbase = false;
    mutable bool qdirmodel_fetchmore_isbase = false;
    mutable bool qdirmodel_canfetchmore_isbase = false;
    mutable bool qdirmodel_buddy_isbase = false;
    mutable bool qdirmodel_match_isbase = false;
    mutable bool qdirmodel_span_isbase = false;
    mutable bool qdirmodel_rolenames_isbase = false;
    mutable bool qdirmodel_submit_isbase = false;
    mutable bool qdirmodel_revert_isbase = false;
    mutable bool qdirmodel_event_isbase = false;
    mutable bool qdirmodel_eventfilter_isbase = false;
    mutable bool qdirmodel_timerevent_isbase = false;
    mutable bool qdirmodel_childevent_isbase = false;
    mutable bool qdirmodel_customevent_isbase = false;
    mutable bool qdirmodel_connectnotify_isbase = false;
    mutable bool qdirmodel_disconnectnotify_isbase = false;
    mutable bool qdirmodel_resetinternaldata_isbase = false;
    mutable bool qdirmodel_createindex_isbase = false;
    mutable bool qdirmodel_encodedata_isbase = false;
    mutable bool qdirmodel_decodedata_isbase = false;
    mutable bool qdirmodel_begininsertrows_isbase = false;
    mutable bool qdirmodel_endinsertrows_isbase = false;
    mutable bool qdirmodel_beginremoverows_isbase = false;
    mutable bool qdirmodel_endremoverows_isbase = false;
    mutable bool qdirmodel_beginmoverows_isbase = false;
    mutable bool qdirmodel_endmoverows_isbase = false;
    mutable bool qdirmodel_begininsertcolumns_isbase = false;
    mutable bool qdirmodel_endinsertcolumns_isbase = false;
    mutable bool qdirmodel_beginremovecolumns_isbase = false;
    mutable bool qdirmodel_endremovecolumns_isbase = false;
    mutable bool qdirmodel_beginmovecolumns_isbase = false;
    mutable bool qdirmodel_endmovecolumns_isbase = false;
    mutable bool qdirmodel_beginresetmodel_isbase = false;
    mutable bool qdirmodel_endresetmodel_isbase = false;
    mutable bool qdirmodel_changepersistentindex_isbase = false;
    mutable bool qdirmodel_changepersistentindexlist_isbase = false;
    mutable bool qdirmodel_persistentindexlist_isbase = false;
    mutable bool qdirmodel_sender_isbase = false;
    mutable bool qdirmodel_sendersignalindex_isbase = false;
    mutable bool qdirmodel_receivers_isbase = false;
    mutable bool qdirmodel_issignalconnected_isbase = false;

  public:
    VirtualQDirModel(const QStringList& nameFilters, QDir::Filters filters, QDir::SortFlags sort) : QDirModel(nameFilters, filters, sort){};
    VirtualQDirModel() : QDirModel(){};
    VirtualQDirModel(const QStringList& nameFilters, QDir::Filters filters, QDir::SortFlags sort, QObject* parent) : QDirModel(nameFilters, filters, sort, parent){};
    VirtualQDirModel(QObject* parent) : QDirModel(parent){};

    ~VirtualQDirModel() {
        qdirmodel_metacall_callback = nullptr;
        qdirmodel_index_callback = nullptr;
        qdirmodel_parent_callback = nullptr;
        qdirmodel_rowcount_callback = nullptr;
        qdirmodel_columncount_callback = nullptr;
        qdirmodel_data_callback = nullptr;
        qdirmodel_setdata_callback = nullptr;
        qdirmodel_headerdata_callback = nullptr;
        qdirmodel_haschildren_callback = nullptr;
        qdirmodel_flags_callback = nullptr;
        qdirmodel_sort_callback = nullptr;
        qdirmodel_mimetypes_callback = nullptr;
        qdirmodel_mimedata_callback = nullptr;
        qdirmodel_dropmimedata_callback = nullptr;
        qdirmodel_supporteddropactions_callback = nullptr;
        qdirmodel_sibling_callback = nullptr;
        qdirmodel_setheaderdata_callback = nullptr;
        qdirmodel_itemdata_callback = nullptr;
        qdirmodel_setitemdata_callback = nullptr;
        qdirmodel_candropmimedata_callback = nullptr;
        qdirmodel_supporteddragactions_callback = nullptr;
        qdirmodel_insertrows_callback = nullptr;
        qdirmodel_insertcolumns_callback = nullptr;
        qdirmodel_removerows_callback = nullptr;
        qdirmodel_removecolumns_callback = nullptr;
        qdirmodel_moverows_callback = nullptr;
        qdirmodel_movecolumns_callback = nullptr;
        qdirmodel_fetchmore_callback = nullptr;
        qdirmodel_canfetchmore_callback = nullptr;
        qdirmodel_buddy_callback = nullptr;
        qdirmodel_match_callback = nullptr;
        qdirmodel_span_callback = nullptr;
        qdirmodel_rolenames_callback = nullptr;
        qdirmodel_submit_callback = nullptr;
        qdirmodel_revert_callback = nullptr;
        qdirmodel_event_callback = nullptr;
        qdirmodel_eventfilter_callback = nullptr;
        qdirmodel_timerevent_callback = nullptr;
        qdirmodel_childevent_callback = nullptr;
        qdirmodel_customevent_callback = nullptr;
        qdirmodel_connectnotify_callback = nullptr;
        qdirmodel_disconnectnotify_callback = nullptr;
        qdirmodel_resetinternaldata_callback = nullptr;
        qdirmodel_createindex_callback = nullptr;
        qdirmodel_encodedata_callback = nullptr;
        qdirmodel_decodedata_callback = nullptr;
        qdirmodel_begininsertrows_callback = nullptr;
        qdirmodel_endinsertrows_callback = nullptr;
        qdirmodel_beginremoverows_callback = nullptr;
        qdirmodel_endremoverows_callback = nullptr;
        qdirmodel_beginmoverows_callback = nullptr;
        qdirmodel_endmoverows_callback = nullptr;
        qdirmodel_begininsertcolumns_callback = nullptr;
        qdirmodel_endinsertcolumns_callback = nullptr;
        qdirmodel_beginremovecolumns_callback = nullptr;
        qdirmodel_endremovecolumns_callback = nullptr;
        qdirmodel_beginmovecolumns_callback = nullptr;
        qdirmodel_endmovecolumns_callback = nullptr;
        qdirmodel_beginresetmodel_callback = nullptr;
        qdirmodel_endresetmodel_callback = nullptr;
        qdirmodel_changepersistentindex_callback = nullptr;
        qdirmodel_changepersistentindexlist_callback = nullptr;
        qdirmodel_persistentindexlist_callback = nullptr;
        qdirmodel_sender_callback = nullptr;
        qdirmodel_sendersignalindex_callback = nullptr;
        qdirmodel_receivers_callback = nullptr;
        qdirmodel_issignalconnected_callback = nullptr;
    }

    // Callback setters
    void setQDirModel_Metacall_Callback(QDirModel_Metacall_Callback cb) { qdirmodel_metacall_callback = cb; }
    void setQDirModel_Index_Callback(QDirModel_Index_Callback cb) { qdirmodel_index_callback = cb; }
    void setQDirModel_Parent_Callback(QDirModel_Parent_Callback cb) { qdirmodel_parent_callback = cb; }
    void setQDirModel_RowCount_Callback(QDirModel_RowCount_Callback cb) { qdirmodel_rowcount_callback = cb; }
    void setQDirModel_ColumnCount_Callback(QDirModel_ColumnCount_Callback cb) { qdirmodel_columncount_callback = cb; }
    void setQDirModel_Data_Callback(QDirModel_Data_Callback cb) { qdirmodel_data_callback = cb; }
    void setQDirModel_SetData_Callback(QDirModel_SetData_Callback cb) { qdirmodel_setdata_callback = cb; }
    void setQDirModel_HeaderData_Callback(QDirModel_HeaderData_Callback cb) { qdirmodel_headerdata_callback = cb; }
    void setQDirModel_HasChildren_Callback(QDirModel_HasChildren_Callback cb) { qdirmodel_haschildren_callback = cb; }
    void setQDirModel_Flags_Callback(QDirModel_Flags_Callback cb) { qdirmodel_flags_callback = cb; }
    void setQDirModel_Sort_Callback(QDirModel_Sort_Callback cb) { qdirmodel_sort_callback = cb; }
    void setQDirModel_MimeTypes_Callback(QDirModel_MimeTypes_Callback cb) { qdirmodel_mimetypes_callback = cb; }
    void setQDirModel_MimeData_Callback(QDirModel_MimeData_Callback cb) { qdirmodel_mimedata_callback = cb; }
    void setQDirModel_DropMimeData_Callback(QDirModel_DropMimeData_Callback cb) { qdirmodel_dropmimedata_callback = cb; }
    void setQDirModel_SupportedDropActions_Callback(QDirModel_SupportedDropActions_Callback cb) { qdirmodel_supporteddropactions_callback = cb; }
    void setQDirModel_Sibling_Callback(QDirModel_Sibling_Callback cb) { qdirmodel_sibling_callback = cb; }
    void setQDirModel_SetHeaderData_Callback(QDirModel_SetHeaderData_Callback cb) { qdirmodel_setheaderdata_callback = cb; }
    void setQDirModel_ItemData_Callback(QDirModel_ItemData_Callback cb) { qdirmodel_itemdata_callback = cb; }
    void setQDirModel_SetItemData_Callback(QDirModel_SetItemData_Callback cb) { qdirmodel_setitemdata_callback = cb; }
    void setQDirModel_CanDropMimeData_Callback(QDirModel_CanDropMimeData_Callback cb) { qdirmodel_candropmimedata_callback = cb; }
    void setQDirModel_SupportedDragActions_Callback(QDirModel_SupportedDragActions_Callback cb) { qdirmodel_supporteddragactions_callback = cb; }
    void setQDirModel_InsertRows_Callback(QDirModel_InsertRows_Callback cb) { qdirmodel_insertrows_callback = cb; }
    void setQDirModel_InsertColumns_Callback(QDirModel_InsertColumns_Callback cb) { qdirmodel_insertcolumns_callback = cb; }
    void setQDirModel_RemoveRows_Callback(QDirModel_RemoveRows_Callback cb) { qdirmodel_removerows_callback = cb; }
    void setQDirModel_RemoveColumns_Callback(QDirModel_RemoveColumns_Callback cb) { qdirmodel_removecolumns_callback = cb; }
    void setQDirModel_MoveRows_Callback(QDirModel_MoveRows_Callback cb) { qdirmodel_moverows_callback = cb; }
    void setQDirModel_MoveColumns_Callback(QDirModel_MoveColumns_Callback cb) { qdirmodel_movecolumns_callback = cb; }
    void setQDirModel_FetchMore_Callback(QDirModel_FetchMore_Callback cb) { qdirmodel_fetchmore_callback = cb; }
    void setQDirModel_CanFetchMore_Callback(QDirModel_CanFetchMore_Callback cb) { qdirmodel_canfetchmore_callback = cb; }
    void setQDirModel_Buddy_Callback(QDirModel_Buddy_Callback cb) { qdirmodel_buddy_callback = cb; }
    void setQDirModel_Match_Callback(QDirModel_Match_Callback cb) { qdirmodel_match_callback = cb; }
    void setQDirModel_Span_Callback(QDirModel_Span_Callback cb) { qdirmodel_span_callback = cb; }
    void setQDirModel_RoleNames_Callback(QDirModel_RoleNames_Callback cb) { qdirmodel_rolenames_callback = cb; }
    void setQDirModel_Submit_Callback(QDirModel_Submit_Callback cb) { qdirmodel_submit_callback = cb; }
    void setQDirModel_Revert_Callback(QDirModel_Revert_Callback cb) { qdirmodel_revert_callback = cb; }
    void setQDirModel_Event_Callback(QDirModel_Event_Callback cb) { qdirmodel_event_callback = cb; }
    void setQDirModel_EventFilter_Callback(QDirModel_EventFilter_Callback cb) { qdirmodel_eventfilter_callback = cb; }
    void setQDirModel_TimerEvent_Callback(QDirModel_TimerEvent_Callback cb) { qdirmodel_timerevent_callback = cb; }
    void setQDirModel_ChildEvent_Callback(QDirModel_ChildEvent_Callback cb) { qdirmodel_childevent_callback = cb; }
    void setQDirModel_CustomEvent_Callback(QDirModel_CustomEvent_Callback cb) { qdirmodel_customevent_callback = cb; }
    void setQDirModel_ConnectNotify_Callback(QDirModel_ConnectNotify_Callback cb) { qdirmodel_connectnotify_callback = cb; }
    void setQDirModel_DisconnectNotify_Callback(QDirModel_DisconnectNotify_Callback cb) { qdirmodel_disconnectnotify_callback = cb; }
    void setQDirModel_ResetInternalData_Callback(QDirModel_ResetInternalData_Callback cb) { qdirmodel_resetinternaldata_callback = cb; }
    void setQDirModel_CreateIndex_Callback(QDirModel_CreateIndex_Callback cb) { qdirmodel_createindex_callback = cb; }
    void setQDirModel_EncodeData_Callback(QDirModel_EncodeData_Callback cb) { qdirmodel_encodedata_callback = cb; }
    void setQDirModel_DecodeData_Callback(QDirModel_DecodeData_Callback cb) { qdirmodel_decodedata_callback = cb; }
    void setQDirModel_BeginInsertRows_Callback(QDirModel_BeginInsertRows_Callback cb) { qdirmodel_begininsertrows_callback = cb; }
    void setQDirModel_EndInsertRows_Callback(QDirModel_EndInsertRows_Callback cb) { qdirmodel_endinsertrows_callback = cb; }
    void setQDirModel_BeginRemoveRows_Callback(QDirModel_BeginRemoveRows_Callback cb) { qdirmodel_beginremoverows_callback = cb; }
    void setQDirModel_EndRemoveRows_Callback(QDirModel_EndRemoveRows_Callback cb) { qdirmodel_endremoverows_callback = cb; }
    void setQDirModel_BeginMoveRows_Callback(QDirModel_BeginMoveRows_Callback cb) { qdirmodel_beginmoverows_callback = cb; }
    void setQDirModel_EndMoveRows_Callback(QDirModel_EndMoveRows_Callback cb) { qdirmodel_endmoverows_callback = cb; }
    void setQDirModel_BeginInsertColumns_Callback(QDirModel_BeginInsertColumns_Callback cb) { qdirmodel_begininsertcolumns_callback = cb; }
    void setQDirModel_EndInsertColumns_Callback(QDirModel_EndInsertColumns_Callback cb) { qdirmodel_endinsertcolumns_callback = cb; }
    void setQDirModel_BeginRemoveColumns_Callback(QDirModel_BeginRemoveColumns_Callback cb) { qdirmodel_beginremovecolumns_callback = cb; }
    void setQDirModel_EndRemoveColumns_Callback(QDirModel_EndRemoveColumns_Callback cb) { qdirmodel_endremovecolumns_callback = cb; }
    void setQDirModel_BeginMoveColumns_Callback(QDirModel_BeginMoveColumns_Callback cb) { qdirmodel_beginmovecolumns_callback = cb; }
    void setQDirModel_EndMoveColumns_Callback(QDirModel_EndMoveColumns_Callback cb) { qdirmodel_endmovecolumns_callback = cb; }
    void setQDirModel_BeginResetModel_Callback(QDirModel_BeginResetModel_Callback cb) { qdirmodel_beginresetmodel_callback = cb; }
    void setQDirModel_EndResetModel_Callback(QDirModel_EndResetModel_Callback cb) { qdirmodel_endresetmodel_callback = cb; }
    void setQDirModel_ChangePersistentIndex_Callback(QDirModel_ChangePersistentIndex_Callback cb) { qdirmodel_changepersistentindex_callback = cb; }
    void setQDirModel_ChangePersistentIndexList_Callback(QDirModel_ChangePersistentIndexList_Callback cb) { qdirmodel_changepersistentindexlist_callback = cb; }
    void setQDirModel_PersistentIndexList_Callback(QDirModel_PersistentIndexList_Callback cb) { qdirmodel_persistentindexlist_callback = cb; }
    void setQDirModel_Sender_Callback(QDirModel_Sender_Callback cb) { qdirmodel_sender_callback = cb; }
    void setQDirModel_SenderSignalIndex_Callback(QDirModel_SenderSignalIndex_Callback cb) { qdirmodel_sendersignalindex_callback = cb; }
    void setQDirModel_Receivers_Callback(QDirModel_Receivers_Callback cb) { qdirmodel_receivers_callback = cb; }
    void setQDirModel_IsSignalConnected_Callback(QDirModel_IsSignalConnected_Callback cb) { qdirmodel_issignalconnected_callback = cb; }

    // Base flag setters
    void setQDirModel_Metacall_IsBase(bool value) const { qdirmodel_metacall_isbase = value; }
    void setQDirModel_Index_IsBase(bool value) const { qdirmodel_index_isbase = value; }
    void setQDirModel_Parent_IsBase(bool value) const { qdirmodel_parent_isbase = value; }
    void setQDirModel_RowCount_IsBase(bool value) const { qdirmodel_rowcount_isbase = value; }
    void setQDirModel_ColumnCount_IsBase(bool value) const { qdirmodel_columncount_isbase = value; }
    void setQDirModel_Data_IsBase(bool value) const { qdirmodel_data_isbase = value; }
    void setQDirModel_SetData_IsBase(bool value) const { qdirmodel_setdata_isbase = value; }
    void setQDirModel_HeaderData_IsBase(bool value) const { qdirmodel_headerdata_isbase = value; }
    void setQDirModel_HasChildren_IsBase(bool value) const { qdirmodel_haschildren_isbase = value; }
    void setQDirModel_Flags_IsBase(bool value) const { qdirmodel_flags_isbase = value; }
    void setQDirModel_Sort_IsBase(bool value) const { qdirmodel_sort_isbase = value; }
    void setQDirModel_MimeTypes_IsBase(bool value) const { qdirmodel_mimetypes_isbase = value; }
    void setQDirModel_MimeData_IsBase(bool value) const { qdirmodel_mimedata_isbase = value; }
    void setQDirModel_DropMimeData_IsBase(bool value) const { qdirmodel_dropmimedata_isbase = value; }
    void setQDirModel_SupportedDropActions_IsBase(bool value) const { qdirmodel_supporteddropactions_isbase = value; }
    void setQDirModel_Sibling_IsBase(bool value) const { qdirmodel_sibling_isbase = value; }
    void setQDirModel_SetHeaderData_IsBase(bool value) const { qdirmodel_setheaderdata_isbase = value; }
    void setQDirModel_ItemData_IsBase(bool value) const { qdirmodel_itemdata_isbase = value; }
    void setQDirModel_SetItemData_IsBase(bool value) const { qdirmodel_setitemdata_isbase = value; }
    void setQDirModel_CanDropMimeData_IsBase(bool value) const { qdirmodel_candropmimedata_isbase = value; }
    void setQDirModel_SupportedDragActions_IsBase(bool value) const { qdirmodel_supporteddragactions_isbase = value; }
    void setQDirModel_InsertRows_IsBase(bool value) const { qdirmodel_insertrows_isbase = value; }
    void setQDirModel_InsertColumns_IsBase(bool value) const { qdirmodel_insertcolumns_isbase = value; }
    void setQDirModel_RemoveRows_IsBase(bool value) const { qdirmodel_removerows_isbase = value; }
    void setQDirModel_RemoveColumns_IsBase(bool value) const { qdirmodel_removecolumns_isbase = value; }
    void setQDirModel_MoveRows_IsBase(bool value) const { qdirmodel_moverows_isbase = value; }
    void setQDirModel_MoveColumns_IsBase(bool value) const { qdirmodel_movecolumns_isbase = value; }
    void setQDirModel_FetchMore_IsBase(bool value) const { qdirmodel_fetchmore_isbase = value; }
    void setQDirModel_CanFetchMore_IsBase(bool value) const { qdirmodel_canfetchmore_isbase = value; }
    void setQDirModel_Buddy_IsBase(bool value) const { qdirmodel_buddy_isbase = value; }
    void setQDirModel_Match_IsBase(bool value) const { qdirmodel_match_isbase = value; }
    void setQDirModel_Span_IsBase(bool value) const { qdirmodel_span_isbase = value; }
    void setQDirModel_RoleNames_IsBase(bool value) const { qdirmodel_rolenames_isbase = value; }
    void setQDirModel_Submit_IsBase(bool value) const { qdirmodel_submit_isbase = value; }
    void setQDirModel_Revert_IsBase(bool value) const { qdirmodel_revert_isbase = value; }
    void setQDirModel_Event_IsBase(bool value) const { qdirmodel_event_isbase = value; }
    void setQDirModel_EventFilter_IsBase(bool value) const { qdirmodel_eventfilter_isbase = value; }
    void setQDirModel_TimerEvent_IsBase(bool value) const { qdirmodel_timerevent_isbase = value; }
    void setQDirModel_ChildEvent_IsBase(bool value) const { qdirmodel_childevent_isbase = value; }
    void setQDirModel_CustomEvent_IsBase(bool value) const { qdirmodel_customevent_isbase = value; }
    void setQDirModel_ConnectNotify_IsBase(bool value) const { qdirmodel_connectnotify_isbase = value; }
    void setQDirModel_DisconnectNotify_IsBase(bool value) const { qdirmodel_disconnectnotify_isbase = value; }
    void setQDirModel_ResetInternalData_IsBase(bool value) const { qdirmodel_resetinternaldata_isbase = value; }
    void setQDirModel_CreateIndex_IsBase(bool value) const { qdirmodel_createindex_isbase = value; }
    void setQDirModel_EncodeData_IsBase(bool value) const { qdirmodel_encodedata_isbase = value; }
    void setQDirModel_DecodeData_IsBase(bool value) const { qdirmodel_decodedata_isbase = value; }
    void setQDirModel_BeginInsertRows_IsBase(bool value) const { qdirmodel_begininsertrows_isbase = value; }
    void setQDirModel_EndInsertRows_IsBase(bool value) const { qdirmodel_endinsertrows_isbase = value; }
    void setQDirModel_BeginRemoveRows_IsBase(bool value) const { qdirmodel_beginremoverows_isbase = value; }
    void setQDirModel_EndRemoveRows_IsBase(bool value) const { qdirmodel_endremoverows_isbase = value; }
    void setQDirModel_BeginMoveRows_IsBase(bool value) const { qdirmodel_beginmoverows_isbase = value; }
    void setQDirModel_EndMoveRows_IsBase(bool value) const { qdirmodel_endmoverows_isbase = value; }
    void setQDirModel_BeginInsertColumns_IsBase(bool value) const { qdirmodel_begininsertcolumns_isbase = value; }
    void setQDirModel_EndInsertColumns_IsBase(bool value) const { qdirmodel_endinsertcolumns_isbase = value; }
    void setQDirModel_BeginRemoveColumns_IsBase(bool value) const { qdirmodel_beginremovecolumns_isbase = value; }
    void setQDirModel_EndRemoveColumns_IsBase(bool value) const { qdirmodel_endremovecolumns_isbase = value; }
    void setQDirModel_BeginMoveColumns_IsBase(bool value) const { qdirmodel_beginmovecolumns_isbase = value; }
    void setQDirModel_EndMoveColumns_IsBase(bool value) const { qdirmodel_endmovecolumns_isbase = value; }
    void setQDirModel_BeginResetModel_IsBase(bool value) const { qdirmodel_beginresetmodel_isbase = value; }
    void setQDirModel_EndResetModel_IsBase(bool value) const { qdirmodel_endresetmodel_isbase = value; }
    void setQDirModel_ChangePersistentIndex_IsBase(bool value) const { qdirmodel_changepersistentindex_isbase = value; }
    void setQDirModel_ChangePersistentIndexList_IsBase(bool value) const { qdirmodel_changepersistentindexlist_isbase = value; }
    void setQDirModel_PersistentIndexList_IsBase(bool value) const { qdirmodel_persistentindexlist_isbase = value; }
    void setQDirModel_Sender_IsBase(bool value) const { qdirmodel_sender_isbase = value; }
    void setQDirModel_SenderSignalIndex_IsBase(bool value) const { qdirmodel_sendersignalindex_isbase = value; }
    void setQDirModel_Receivers_IsBase(bool value) const { qdirmodel_receivers_isbase = value; }
    void setQDirModel_IsSignalConnected_IsBase(bool value) const { qdirmodel_issignalconnected_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
        if (qdirmodel_metacall_isbase) {
            qdirmodel_metacall_isbase = false;
            return QDirModel::qt_metacall(param1, param2, param3);
        } else if (qdirmodel_metacall_callback != nullptr) {
            return qdirmodel_metacall_callback(this, param1, param2, param3);
        } else {
            return QDirModel::qt_metacall(param1, param2, param3);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QModelIndex index(int row, int column, const QModelIndex& parent) const override {
        if (qdirmodel_index_isbase) {
            qdirmodel_index_isbase = false;
            return QDirModel::index(row, column, parent);
        } else if (qdirmodel_index_callback != nullptr) {
            return qdirmodel_index_callback(this, row, column, parent);
        } else {
            return QDirModel::index(row, column, parent);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QModelIndex parent(const QModelIndex& child) const override {
        if (qdirmodel_parent_isbase) {
            qdirmodel_parent_isbase = false;
            return QDirModel::parent(child);
        } else if (qdirmodel_parent_callback != nullptr) {
            return qdirmodel_parent_callback(this, child);
        } else {
            return QDirModel::parent(child);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual int rowCount(const QModelIndex& parent) const override {
        if (qdirmodel_rowcount_isbase) {
            qdirmodel_rowcount_isbase = false;
            return QDirModel::rowCount(parent);
        } else if (qdirmodel_rowcount_callback != nullptr) {
            return qdirmodel_rowcount_callback(this, parent);
        } else {
            return QDirModel::rowCount(parent);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual int columnCount(const QModelIndex& parent) const override {
        if (qdirmodel_columncount_isbase) {
            qdirmodel_columncount_isbase = false;
            return QDirModel::columnCount(parent);
        } else if (qdirmodel_columncount_callback != nullptr) {
            return qdirmodel_columncount_callback(this, parent);
        } else {
            return QDirModel::columnCount(parent);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QVariant data(const QModelIndex& index, int role) const override {
        if (qdirmodel_data_isbase) {
            qdirmodel_data_isbase = false;
            return QDirModel::data(index, role);
        } else if (qdirmodel_data_callback != nullptr) {
            return qdirmodel_data_callback(this, index, role);
        } else {
            return QDirModel::data(index, role);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool setData(const QModelIndex& index, const QVariant& value, int role) override {
        if (qdirmodel_setdata_isbase) {
            qdirmodel_setdata_isbase = false;
            return QDirModel::setData(index, value, role);
        } else if (qdirmodel_setdata_callback != nullptr) {
            return qdirmodel_setdata_callback(this, index, value, role);
        } else {
            return QDirModel::setData(index, value, role);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QVariant headerData(int section, Qt::Orientation orientation, int role) const override {
        if (qdirmodel_headerdata_isbase) {
            qdirmodel_headerdata_isbase = false;
            return QDirModel::headerData(section, orientation, role);
        } else if (qdirmodel_headerdata_callback != nullptr) {
            return qdirmodel_headerdata_callback(this, section, orientation, role);
        } else {
            return QDirModel::headerData(section, orientation, role);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool hasChildren(const QModelIndex& index) const override {
        if (qdirmodel_haschildren_isbase) {
            qdirmodel_haschildren_isbase = false;
            return QDirModel::hasChildren(index);
        } else if (qdirmodel_haschildren_callback != nullptr) {
            return qdirmodel_haschildren_callback(this, index);
        } else {
            return QDirModel::hasChildren(index);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual Qt::ItemFlags flags(const QModelIndex& index) const override {
        if (qdirmodel_flags_isbase) {
            qdirmodel_flags_isbase = false;
            return QDirModel::flags(index);
        } else if (qdirmodel_flags_callback != nullptr) {
            return qdirmodel_flags_callback(this, index);
        } else {
            return QDirModel::flags(index);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void sort(int column, Qt::SortOrder order) override {
        if (qdirmodel_sort_isbase) {
            qdirmodel_sort_isbase = false;
            QDirModel::sort(column, order);
        } else if (qdirmodel_sort_callback != nullptr) {
            qdirmodel_sort_callback(this, column, order);
        } else {
            QDirModel::sort(column, order);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QStringList mimeTypes() const override {
        if (qdirmodel_mimetypes_isbase) {
            qdirmodel_mimetypes_isbase = false;
            return QDirModel::mimeTypes();
        } else if (qdirmodel_mimetypes_callback != nullptr) {
            return qdirmodel_mimetypes_callback();
        } else {
            return QDirModel::mimeTypes();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QMimeData* mimeData(const QModelIndexList& indexes) const override {
        if (qdirmodel_mimedata_isbase) {
            qdirmodel_mimedata_isbase = false;
            return QDirModel::mimeData(indexes);
        } else if (qdirmodel_mimedata_callback != nullptr) {
            return qdirmodel_mimedata_callback(this, indexes);
        } else {
            return QDirModel::mimeData(indexes);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool dropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent) override {
        if (qdirmodel_dropmimedata_isbase) {
            qdirmodel_dropmimedata_isbase = false;
            return QDirModel::dropMimeData(data, action, row, column, parent);
        } else if (qdirmodel_dropmimedata_callback != nullptr) {
            return qdirmodel_dropmimedata_callback(this, data, action, row, column, parent);
        } else {
            return QDirModel::dropMimeData(data, action, row, column, parent);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual Qt::DropActions supportedDropActions() const override {
        if (qdirmodel_supporteddropactions_isbase) {
            qdirmodel_supporteddropactions_isbase = false;
            return QDirModel::supportedDropActions();
        } else if (qdirmodel_supporteddropactions_callback != nullptr) {
            return qdirmodel_supporteddropactions_callback();
        } else {
            return QDirModel::supportedDropActions();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QModelIndex sibling(int row, int column, const QModelIndex& idx) const override {
        if (qdirmodel_sibling_isbase) {
            qdirmodel_sibling_isbase = false;
            return QDirModel::sibling(row, column, idx);
        } else if (qdirmodel_sibling_callback != nullptr) {
            return qdirmodel_sibling_callback(this, row, column, idx);
        } else {
            return QDirModel::sibling(row, column, idx);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool setHeaderData(int section, Qt::Orientation orientation, const QVariant& value, int role) override {
        if (qdirmodel_setheaderdata_isbase) {
            qdirmodel_setheaderdata_isbase = false;
            return QDirModel::setHeaderData(section, orientation, value, role);
        } else if (qdirmodel_setheaderdata_callback != nullptr) {
            return qdirmodel_setheaderdata_callback(this, section, orientation, value, role);
        } else {
            return QDirModel::setHeaderData(section, orientation, value, role);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QMap<int, QVariant> itemData(const QModelIndex& index) const override {
        if (qdirmodel_itemdata_isbase) {
            qdirmodel_itemdata_isbase = false;
            return QDirModel::itemData(index);
        } else if (qdirmodel_itemdata_callback != nullptr) {
            return qdirmodel_itemdata_callback(this, index);
        } else {
            return QDirModel::itemData(index);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool setItemData(const QModelIndex& index, const QMap<int, QVariant>& roles) override {
        if (qdirmodel_setitemdata_isbase) {
            qdirmodel_setitemdata_isbase = false;
            return QDirModel::setItemData(index, roles);
        } else if (qdirmodel_setitemdata_callback != nullptr) {
            return qdirmodel_setitemdata_callback(this, index, roles);
        } else {
            return QDirModel::setItemData(index, roles);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool canDropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent) const override {
        if (qdirmodel_candropmimedata_isbase) {
            qdirmodel_candropmimedata_isbase = false;
            return QDirModel::canDropMimeData(data, action, row, column, parent);
        } else if (qdirmodel_candropmimedata_callback != nullptr) {
            return qdirmodel_candropmimedata_callback(this, data, action, row, column, parent);
        } else {
            return QDirModel::canDropMimeData(data, action, row, column, parent);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual Qt::DropActions supportedDragActions() const override {
        if (qdirmodel_supporteddragactions_isbase) {
            qdirmodel_supporteddragactions_isbase = false;
            return QDirModel::supportedDragActions();
        } else if (qdirmodel_supporteddragactions_callback != nullptr) {
            return qdirmodel_supporteddragactions_callback();
        } else {
            return QDirModel::supportedDragActions();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool insertRows(int row, int count, const QModelIndex& parent) override {
        if (qdirmodel_insertrows_isbase) {
            qdirmodel_insertrows_isbase = false;
            return QDirModel::insertRows(row, count, parent);
        } else if (qdirmodel_insertrows_callback != nullptr) {
            return qdirmodel_insertrows_callback(this, row, count, parent);
        } else {
            return QDirModel::insertRows(row, count, parent);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool insertColumns(int column, int count, const QModelIndex& parent) override {
        if (qdirmodel_insertcolumns_isbase) {
            qdirmodel_insertcolumns_isbase = false;
            return QDirModel::insertColumns(column, count, parent);
        } else if (qdirmodel_insertcolumns_callback != nullptr) {
            return qdirmodel_insertcolumns_callback(this, column, count, parent);
        } else {
            return QDirModel::insertColumns(column, count, parent);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool removeRows(int row, int count, const QModelIndex& parent) override {
        if (qdirmodel_removerows_isbase) {
            qdirmodel_removerows_isbase = false;
            return QDirModel::removeRows(row, count, parent);
        } else if (qdirmodel_removerows_callback != nullptr) {
            return qdirmodel_removerows_callback(this, row, count, parent);
        } else {
            return QDirModel::removeRows(row, count, parent);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool removeColumns(int column, int count, const QModelIndex& parent) override {
        if (qdirmodel_removecolumns_isbase) {
            qdirmodel_removecolumns_isbase = false;
            return QDirModel::removeColumns(column, count, parent);
        } else if (qdirmodel_removecolumns_callback != nullptr) {
            return qdirmodel_removecolumns_callback(this, column, count, parent);
        } else {
            return QDirModel::removeColumns(column, count, parent);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool moveRows(const QModelIndex& sourceParent, int sourceRow, int count, const QModelIndex& destinationParent, int destinationChild) override {
        if (qdirmodel_moverows_isbase) {
            qdirmodel_moverows_isbase = false;
            return QDirModel::moveRows(sourceParent, sourceRow, count, destinationParent, destinationChild);
        } else if (qdirmodel_moverows_callback != nullptr) {
            return qdirmodel_moverows_callback(this, sourceParent, sourceRow, count, destinationParent, destinationChild);
        } else {
            return QDirModel::moveRows(sourceParent, sourceRow, count, destinationParent, destinationChild);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool moveColumns(const QModelIndex& sourceParent, int sourceColumn, int count, const QModelIndex& destinationParent, int destinationChild) override {
        if (qdirmodel_movecolumns_isbase) {
            qdirmodel_movecolumns_isbase = false;
            return QDirModel::moveColumns(sourceParent, sourceColumn, count, destinationParent, destinationChild);
        } else if (qdirmodel_movecolumns_callback != nullptr) {
            return qdirmodel_movecolumns_callback(this, sourceParent, sourceColumn, count, destinationParent, destinationChild);
        } else {
            return QDirModel::moveColumns(sourceParent, sourceColumn, count, destinationParent, destinationChild);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void fetchMore(const QModelIndex& parent) override {
        if (qdirmodel_fetchmore_isbase) {
            qdirmodel_fetchmore_isbase = false;
            QDirModel::fetchMore(parent);
        } else if (qdirmodel_fetchmore_callback != nullptr) {
            qdirmodel_fetchmore_callback(this, parent);
        } else {
            QDirModel::fetchMore(parent);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool canFetchMore(const QModelIndex& parent) const override {
        if (qdirmodel_canfetchmore_isbase) {
            qdirmodel_canfetchmore_isbase = false;
            return QDirModel::canFetchMore(parent);
        } else if (qdirmodel_canfetchmore_callback != nullptr) {
            return qdirmodel_canfetchmore_callback(this, parent);
        } else {
            return QDirModel::canFetchMore(parent);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QModelIndex buddy(const QModelIndex& index) const override {
        if (qdirmodel_buddy_isbase) {
            qdirmodel_buddy_isbase = false;
            return QDirModel::buddy(index);
        } else if (qdirmodel_buddy_callback != nullptr) {
            return qdirmodel_buddy_callback(this, index);
        } else {
            return QDirModel::buddy(index);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QModelIndexList match(const QModelIndex& start, int role, const QVariant& value, int hits, Qt::MatchFlags flags) const override {
        if (qdirmodel_match_isbase) {
            qdirmodel_match_isbase = false;
            return QDirModel::match(start, role, value, hits, flags);
        } else if (qdirmodel_match_callback != nullptr) {
            return qdirmodel_match_callback(this, start, role, value, hits, flags);
        } else {
            return QDirModel::match(start, role, value, hits, flags);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QSize span(const QModelIndex& index) const override {
        if (qdirmodel_span_isbase) {
            qdirmodel_span_isbase = false;
            return QDirModel::span(index);
        } else if (qdirmodel_span_callback != nullptr) {
            return qdirmodel_span_callback(this, index);
        } else {
            return QDirModel::span(index);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QHash<int, QByteArray> roleNames() const override {
        if (qdirmodel_rolenames_isbase) {
            qdirmodel_rolenames_isbase = false;
            return QDirModel::roleNames();
        } else if (qdirmodel_rolenames_callback != nullptr) {
            return qdirmodel_rolenames_callback();
        } else {
            return QDirModel::roleNames();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool submit() override {
        if (qdirmodel_submit_isbase) {
            qdirmodel_submit_isbase = false;
            return QDirModel::submit();
        } else if (qdirmodel_submit_callback != nullptr) {
            return qdirmodel_submit_callback();
        } else {
            return QDirModel::submit();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void revert() override {
        if (qdirmodel_revert_isbase) {
            qdirmodel_revert_isbase = false;
            QDirModel::revert();
        } else if (qdirmodel_revert_callback != nullptr) {
            qdirmodel_revert_callback();
        } else {
            QDirModel::revert();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool event(QEvent* event) override {
        if (qdirmodel_event_isbase) {
            qdirmodel_event_isbase = false;
            return QDirModel::event(event);
        } else if (qdirmodel_event_callback != nullptr) {
            return qdirmodel_event_callback(this, event);
        } else {
            return QDirModel::event(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool eventFilter(QObject* watched, QEvent* event) override {
        if (qdirmodel_eventfilter_isbase) {
            qdirmodel_eventfilter_isbase = false;
            return QDirModel::eventFilter(watched, event);
        } else if (qdirmodel_eventfilter_callback != nullptr) {
            return qdirmodel_eventfilter_callback(this, watched, event);
        } else {
            return QDirModel::eventFilter(watched, event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void timerEvent(QTimerEvent* event) override {
        if (qdirmodel_timerevent_isbase) {
            qdirmodel_timerevent_isbase = false;
            QDirModel::timerEvent(event);
        } else if (qdirmodel_timerevent_callback != nullptr) {
            qdirmodel_timerevent_callback(this, event);
        } else {
            QDirModel::timerEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void childEvent(QChildEvent* event) override {
        if (qdirmodel_childevent_isbase) {
            qdirmodel_childevent_isbase = false;
            QDirModel::childEvent(event);
        } else if (qdirmodel_childevent_callback != nullptr) {
            qdirmodel_childevent_callback(this, event);
        } else {
            QDirModel::childEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void customEvent(QEvent* event) override {
        if (qdirmodel_customevent_isbase) {
            qdirmodel_customevent_isbase = false;
            QDirModel::customEvent(event);
        } else if (qdirmodel_customevent_callback != nullptr) {
            qdirmodel_customevent_callback(this, event);
        } else {
            QDirModel::customEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void connectNotify(const QMetaMethod& signal) override {
        if (qdirmodel_connectnotify_isbase) {
            qdirmodel_connectnotify_isbase = false;
            QDirModel::connectNotify(signal);
        } else if (qdirmodel_connectnotify_callback != nullptr) {
            qdirmodel_connectnotify_callback(this, signal);
        } else {
            QDirModel::connectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void disconnectNotify(const QMetaMethod& signal) override {
        if (qdirmodel_disconnectnotify_isbase) {
            qdirmodel_disconnectnotify_isbase = false;
            QDirModel::disconnectNotify(signal);
        } else if (qdirmodel_disconnectnotify_callback != nullptr) {
            qdirmodel_disconnectnotify_callback(this, signal);
        } else {
            QDirModel::disconnectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    void resetInternalData() {
        if (qdirmodel_resetinternaldata_isbase) {
            qdirmodel_resetinternaldata_isbase = false;
            QDirModel::resetInternalData();
        } else if (qdirmodel_resetinternaldata_callback != nullptr) {
            qdirmodel_resetinternaldata_callback();
        } else {
            QDirModel::resetInternalData();
        }
    }

    // Virtual method for C ABI access and custom callback
    QModelIndex createIndex(int row, int column) const {
        if (qdirmodel_createindex_isbase) {
            qdirmodel_createindex_isbase = false;
            return QDirModel::createIndex(row, column);
        } else if (qdirmodel_createindex_callback != nullptr) {
            return qdirmodel_createindex_callback(this, row, column);
        } else {
            return QDirModel::createIndex(row, column);
        }
    }

    // Virtual method for C ABI access and custom callback
    void encodeData(const QModelIndexList& indexes, QDataStream& stream) const {
        if (qdirmodel_encodedata_isbase) {
            qdirmodel_encodedata_isbase = false;
            QDirModel::encodeData(indexes, stream);
        } else if (qdirmodel_encodedata_callback != nullptr) {
            qdirmodel_encodedata_callback(this, indexes, stream);
        } else {
            QDirModel::encodeData(indexes, stream);
        }
    }

    // Virtual method for C ABI access and custom callback
    bool decodeData(int row, int column, const QModelIndex& parent, QDataStream& stream) {
        if (qdirmodel_decodedata_isbase) {
            qdirmodel_decodedata_isbase = false;
            return QDirModel::decodeData(row, column, parent, stream);
        } else if (qdirmodel_decodedata_callback != nullptr) {
            return qdirmodel_decodedata_callback(this, row, column, parent, stream);
        } else {
            return QDirModel::decodeData(row, column, parent, stream);
        }
    }

    // Virtual method for C ABI access and custom callback
    void beginInsertRows(const QModelIndex& parent, int first, int last) {
        if (qdirmodel_begininsertrows_isbase) {
            qdirmodel_begininsertrows_isbase = false;
            QDirModel::beginInsertRows(parent, first, last);
        } else if (qdirmodel_begininsertrows_callback != nullptr) {
            qdirmodel_begininsertrows_callback(this, parent, first, last);
        } else {
            QDirModel::beginInsertRows(parent, first, last);
        }
    }

    // Virtual method for C ABI access and custom callback
    void endInsertRows() {
        if (qdirmodel_endinsertrows_isbase) {
            qdirmodel_endinsertrows_isbase = false;
            QDirModel::endInsertRows();
        } else if (qdirmodel_endinsertrows_callback != nullptr) {
            qdirmodel_endinsertrows_callback();
        } else {
            QDirModel::endInsertRows();
        }
    }

    // Virtual method for C ABI access and custom callback
    void beginRemoveRows(const QModelIndex& parent, int first, int last) {
        if (qdirmodel_beginremoverows_isbase) {
            qdirmodel_beginremoverows_isbase = false;
            QDirModel::beginRemoveRows(parent, first, last);
        } else if (qdirmodel_beginremoverows_callback != nullptr) {
            qdirmodel_beginremoverows_callback(this, parent, first, last);
        } else {
            QDirModel::beginRemoveRows(parent, first, last);
        }
    }

    // Virtual method for C ABI access and custom callback
    void endRemoveRows() {
        if (qdirmodel_endremoverows_isbase) {
            qdirmodel_endremoverows_isbase = false;
            QDirModel::endRemoveRows();
        } else if (qdirmodel_endremoverows_callback != nullptr) {
            qdirmodel_endremoverows_callback();
        } else {
            QDirModel::endRemoveRows();
        }
    }

    // Virtual method for C ABI access and custom callback
    bool beginMoveRows(const QModelIndex& sourceParent, int sourceFirst, int sourceLast, const QModelIndex& destinationParent, int destinationRow) {
        if (qdirmodel_beginmoverows_isbase) {
            qdirmodel_beginmoverows_isbase = false;
            return QDirModel::beginMoveRows(sourceParent, sourceFirst, sourceLast, destinationParent, destinationRow);
        } else if (qdirmodel_beginmoverows_callback != nullptr) {
            return qdirmodel_beginmoverows_callback(this, sourceParent, sourceFirst, sourceLast, destinationParent, destinationRow);
        } else {
            return QDirModel::beginMoveRows(sourceParent, sourceFirst, sourceLast, destinationParent, destinationRow);
        }
    }

    // Virtual method for C ABI access and custom callback
    void endMoveRows() {
        if (qdirmodel_endmoverows_isbase) {
            qdirmodel_endmoverows_isbase = false;
            QDirModel::endMoveRows();
        } else if (qdirmodel_endmoverows_callback != nullptr) {
            qdirmodel_endmoverows_callback();
        } else {
            QDirModel::endMoveRows();
        }
    }

    // Virtual method for C ABI access and custom callback
    void beginInsertColumns(const QModelIndex& parent, int first, int last) {
        if (qdirmodel_begininsertcolumns_isbase) {
            qdirmodel_begininsertcolumns_isbase = false;
            QDirModel::beginInsertColumns(parent, first, last);
        } else if (qdirmodel_begininsertcolumns_callback != nullptr) {
            qdirmodel_begininsertcolumns_callback(this, parent, first, last);
        } else {
            QDirModel::beginInsertColumns(parent, first, last);
        }
    }

    // Virtual method for C ABI access and custom callback
    void endInsertColumns() {
        if (qdirmodel_endinsertcolumns_isbase) {
            qdirmodel_endinsertcolumns_isbase = false;
            QDirModel::endInsertColumns();
        } else if (qdirmodel_endinsertcolumns_callback != nullptr) {
            qdirmodel_endinsertcolumns_callback();
        } else {
            QDirModel::endInsertColumns();
        }
    }

    // Virtual method for C ABI access and custom callback
    void beginRemoveColumns(const QModelIndex& parent, int first, int last) {
        if (qdirmodel_beginremovecolumns_isbase) {
            qdirmodel_beginremovecolumns_isbase = false;
            QDirModel::beginRemoveColumns(parent, first, last);
        } else if (qdirmodel_beginremovecolumns_callback != nullptr) {
            qdirmodel_beginremovecolumns_callback(this, parent, first, last);
        } else {
            QDirModel::beginRemoveColumns(parent, first, last);
        }
    }

    // Virtual method for C ABI access and custom callback
    void endRemoveColumns() {
        if (qdirmodel_endremovecolumns_isbase) {
            qdirmodel_endremovecolumns_isbase = false;
            QDirModel::endRemoveColumns();
        } else if (qdirmodel_endremovecolumns_callback != nullptr) {
            qdirmodel_endremovecolumns_callback();
        } else {
            QDirModel::endRemoveColumns();
        }
    }

    // Virtual method for C ABI access and custom callback
    bool beginMoveColumns(const QModelIndex& sourceParent, int sourceFirst, int sourceLast, const QModelIndex& destinationParent, int destinationColumn) {
        if (qdirmodel_beginmovecolumns_isbase) {
            qdirmodel_beginmovecolumns_isbase = false;
            return QDirModel::beginMoveColumns(sourceParent, sourceFirst, sourceLast, destinationParent, destinationColumn);
        } else if (qdirmodel_beginmovecolumns_callback != nullptr) {
            return qdirmodel_beginmovecolumns_callback(this, sourceParent, sourceFirst, sourceLast, destinationParent, destinationColumn);
        } else {
            return QDirModel::beginMoveColumns(sourceParent, sourceFirst, sourceLast, destinationParent, destinationColumn);
        }
    }

    // Virtual method for C ABI access and custom callback
    void endMoveColumns() {
        if (qdirmodel_endmovecolumns_isbase) {
            qdirmodel_endmovecolumns_isbase = false;
            QDirModel::endMoveColumns();
        } else if (qdirmodel_endmovecolumns_callback != nullptr) {
            qdirmodel_endmovecolumns_callback();
        } else {
            QDirModel::endMoveColumns();
        }
    }

    // Virtual method for C ABI access and custom callback
    void beginResetModel() {
        if (qdirmodel_beginresetmodel_isbase) {
            qdirmodel_beginresetmodel_isbase = false;
            QDirModel::beginResetModel();
        } else if (qdirmodel_beginresetmodel_callback != nullptr) {
            qdirmodel_beginresetmodel_callback();
        } else {
            QDirModel::beginResetModel();
        }
    }

    // Virtual method for C ABI access and custom callback
    void endResetModel() {
        if (qdirmodel_endresetmodel_isbase) {
            qdirmodel_endresetmodel_isbase = false;
            QDirModel::endResetModel();
        } else if (qdirmodel_endresetmodel_callback != nullptr) {
            qdirmodel_endresetmodel_callback();
        } else {
            QDirModel::endResetModel();
        }
    }

    // Virtual method for C ABI access and custom callback
    void changePersistentIndex(const QModelIndex& from, const QModelIndex& to) {
        if (qdirmodel_changepersistentindex_isbase) {
            qdirmodel_changepersistentindex_isbase = false;
            QDirModel::changePersistentIndex(from, to);
        } else if (qdirmodel_changepersistentindex_callback != nullptr) {
            qdirmodel_changepersistentindex_callback(this, from, to);
        } else {
            QDirModel::changePersistentIndex(from, to);
        }
    }

    // Virtual method for C ABI access and custom callback
    void changePersistentIndexList(const QModelIndexList& from, const QModelIndexList& to) {
        if (qdirmodel_changepersistentindexlist_isbase) {
            qdirmodel_changepersistentindexlist_isbase = false;
            QDirModel::changePersistentIndexList(from, to);
        } else if (qdirmodel_changepersistentindexlist_callback != nullptr) {
            qdirmodel_changepersistentindexlist_callback(this, from, to);
        } else {
            QDirModel::changePersistentIndexList(from, to);
        }
    }

    // Virtual method for C ABI access and custom callback
    QModelIndexList persistentIndexList() const {
        if (qdirmodel_persistentindexlist_isbase) {
            qdirmodel_persistentindexlist_isbase = false;
            return QDirModel::persistentIndexList();
        } else if (qdirmodel_persistentindexlist_callback != nullptr) {
            return qdirmodel_persistentindexlist_callback();
        } else {
            return QDirModel::persistentIndexList();
        }
    }

    // Virtual method for C ABI access and custom callback
    QObject* sender() const {
        if (qdirmodel_sender_isbase) {
            qdirmodel_sender_isbase = false;
            return QDirModel::sender();
        } else if (qdirmodel_sender_callback != nullptr) {
            return qdirmodel_sender_callback();
        } else {
            return QDirModel::sender();
        }
    }

    // Virtual method for C ABI access and custom callback
    int senderSignalIndex() const {
        if (qdirmodel_sendersignalindex_isbase) {
            qdirmodel_sendersignalindex_isbase = false;
            return QDirModel::senderSignalIndex();
        } else if (qdirmodel_sendersignalindex_callback != nullptr) {
            return qdirmodel_sendersignalindex_callback();
        } else {
            return QDirModel::senderSignalIndex();
        }
    }

    // Virtual method for C ABI access and custom callback
    int receivers(const char* signal) const {
        if (qdirmodel_receivers_isbase) {
            qdirmodel_receivers_isbase = false;
            return QDirModel::receivers(signal);
        } else if (qdirmodel_receivers_callback != nullptr) {
            return qdirmodel_receivers_callback(this, signal);
        } else {
            return QDirModel::receivers(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    bool isSignalConnected(const QMetaMethod& signal) const {
        if (qdirmodel_issignalconnected_isbase) {
            qdirmodel_issignalconnected_isbase = false;
            return QDirModel::isSignalConnected(signal);
        } else if (qdirmodel_issignalconnected_callback != nullptr) {
            return qdirmodel_issignalconnected_callback(this, signal);
        } else {
            return QDirModel::isSignalConnected(signal);
        }
    }
};

#endif
