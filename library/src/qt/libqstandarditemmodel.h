#pragma once
#ifndef SRC_QTC_LIBQSTANDARDITEMMODEL_H
#define SRC_QTC_LIBQSTANDARDITEMMODEL_H

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
typedef struct QAnyStringView QAnyStringView;
typedef struct QBindingStorage QBindingStorage;
typedef struct QBrush QBrush;
typedef struct QChildEvent QChildEvent;
typedef struct QDataStream QDataStream;
typedef struct QEvent QEvent;
typedef struct QFont QFont;
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
typedef struct QStandardItem QStandardItem;
typedef struct QStandardItemModel QStandardItemModel;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QStandardItem::ItemType ItemType; // C++ enum
#else
typedef int ItemType; // C ABI enum
#endif

QTLIBC_API QStandardItem* QStandardItem_new();
QTLIBC_API QStandardItem* QStandardItem_new2(libqt_string text);
QTLIBC_API QStandardItem* QStandardItem_new3(QIcon* icon, libqt_string text);
QTLIBC_API QStandardItem* QStandardItem_new4(int rows);
QTLIBC_API QStandardItem* QStandardItem_new5(int rows, int columns);
QTLIBC_API QVariant* QStandardItem_Data(const QStandardItem* self, int role);
QTLIBC_API void QStandardItem_OnData(const QStandardItem* self, intptr_t slot);
QTLIBC_API QVariant* QStandardItem_QBaseData(const QStandardItem* self, int role);
QTLIBC_API void QStandardItem_MultiData(const QStandardItem* self, QModelRoleDataSpan* roleDataSpan);
QTLIBC_API void QStandardItem_OnMultiData(const QStandardItem* self, intptr_t slot);
QTLIBC_API void QStandardItem_QBaseMultiData(const QStandardItem* self, QModelRoleDataSpan* roleDataSpan);
QTLIBC_API void QStandardItem_SetData(QStandardItem* self, QVariant* value, int role);
QTLIBC_API void QStandardItem_OnSetData(QStandardItem* self, intptr_t slot);
QTLIBC_API void QStandardItem_QBaseSetData(QStandardItem* self, QVariant* value, int role);
QTLIBC_API void QStandardItem_ClearData(QStandardItem* self);
QTLIBC_API libqt_string QStandardItem_Text(const QStandardItem* self);
QTLIBC_API void QStandardItem_SetText(QStandardItem* self, libqt_string text);
QTLIBC_API QIcon* QStandardItem_Icon(const QStandardItem* self);
QTLIBC_API void QStandardItem_SetIcon(QStandardItem* self, QIcon* icon);
QTLIBC_API libqt_string QStandardItem_ToolTip(const QStandardItem* self);
QTLIBC_API void QStandardItem_SetToolTip(QStandardItem* self, libqt_string toolTip);
QTLIBC_API libqt_string QStandardItem_StatusTip(const QStandardItem* self);
QTLIBC_API void QStandardItem_SetStatusTip(QStandardItem* self, libqt_string statusTip);
QTLIBC_API libqt_string QStandardItem_WhatsThis(const QStandardItem* self);
QTLIBC_API void QStandardItem_SetWhatsThis(QStandardItem* self, libqt_string whatsThis);
QTLIBC_API QSize* QStandardItem_SizeHint(const QStandardItem* self);
QTLIBC_API void QStandardItem_SetSizeHint(QStandardItem* self, QSize* sizeHint);
QTLIBC_API QFont* QStandardItem_Font(const QStandardItem* self);
QTLIBC_API void QStandardItem_SetFont(QStandardItem* self, QFont* font);
QTLIBC_API int QStandardItem_TextAlignment(const QStandardItem* self);
QTLIBC_API void QStandardItem_SetTextAlignment(QStandardItem* self, int textAlignment);
QTLIBC_API QBrush* QStandardItem_Background(const QStandardItem* self);
QTLIBC_API void QStandardItem_SetBackground(QStandardItem* self, QBrush* brush);
QTLIBC_API QBrush* QStandardItem_Foreground(const QStandardItem* self);
QTLIBC_API void QStandardItem_SetForeground(QStandardItem* self, QBrush* brush);
QTLIBC_API int QStandardItem_CheckState(const QStandardItem* self);
QTLIBC_API void QStandardItem_SetCheckState(QStandardItem* self, int checkState);
QTLIBC_API libqt_string QStandardItem_AccessibleText(const QStandardItem* self);
QTLIBC_API void QStandardItem_SetAccessibleText(QStandardItem* self, libqt_string accessibleText);
QTLIBC_API libqt_string QStandardItem_AccessibleDescription(const QStandardItem* self);
QTLIBC_API void QStandardItem_SetAccessibleDescription(QStandardItem* self, libqt_string accessibleDescription);
QTLIBC_API int QStandardItem_Flags(const QStandardItem* self);
QTLIBC_API void QStandardItem_SetFlags(QStandardItem* self, int flags);
QTLIBC_API bool QStandardItem_IsEnabled(const QStandardItem* self);
QTLIBC_API void QStandardItem_SetEnabled(QStandardItem* self, bool enabled);
QTLIBC_API bool QStandardItem_IsEditable(const QStandardItem* self);
QTLIBC_API void QStandardItem_SetEditable(QStandardItem* self, bool editable);
QTLIBC_API bool QStandardItem_IsSelectable(const QStandardItem* self);
QTLIBC_API void QStandardItem_SetSelectable(QStandardItem* self, bool selectable);
QTLIBC_API bool QStandardItem_IsCheckable(const QStandardItem* self);
QTLIBC_API void QStandardItem_SetCheckable(QStandardItem* self, bool checkable);
QTLIBC_API bool QStandardItem_IsAutoTristate(const QStandardItem* self);
QTLIBC_API void QStandardItem_SetAutoTristate(QStandardItem* self, bool tristate);
QTLIBC_API bool QStandardItem_IsUserTristate(const QStandardItem* self);
QTLIBC_API void QStandardItem_SetUserTristate(QStandardItem* self, bool tristate);
QTLIBC_API bool QStandardItem_IsDragEnabled(const QStandardItem* self);
QTLIBC_API void QStandardItem_SetDragEnabled(QStandardItem* self, bool dragEnabled);
QTLIBC_API bool QStandardItem_IsDropEnabled(const QStandardItem* self);
QTLIBC_API void QStandardItem_SetDropEnabled(QStandardItem* self, bool dropEnabled);
QTLIBC_API QStandardItem* QStandardItem_Parent(const QStandardItem* self);
QTLIBC_API int QStandardItem_Row(const QStandardItem* self);
QTLIBC_API int QStandardItem_Column(const QStandardItem* self);
QTLIBC_API QModelIndex* QStandardItem_Index(const QStandardItem* self);
QTLIBC_API QStandardItemModel* QStandardItem_Model(const QStandardItem* self);
QTLIBC_API int QStandardItem_RowCount(const QStandardItem* self);
QTLIBC_API void QStandardItem_SetRowCount(QStandardItem* self, int rows);
QTLIBC_API int QStandardItem_ColumnCount(const QStandardItem* self);
QTLIBC_API void QStandardItem_SetColumnCount(QStandardItem* self, int columns);
QTLIBC_API bool QStandardItem_HasChildren(const QStandardItem* self);
QTLIBC_API QStandardItem* QStandardItem_Child(const QStandardItem* self, int row);
QTLIBC_API void QStandardItem_SetChild(QStandardItem* self, int row, int column, QStandardItem* item);
QTLIBC_API void QStandardItem_SetChild2(QStandardItem* self, int row, QStandardItem* item);
QTLIBC_API void QStandardItem_InsertRow(QStandardItem* self, int row, libqt_list /* of QStandardItem* */ items);
QTLIBC_API void QStandardItem_InsertColumn(QStandardItem* self, int column, libqt_list /* of QStandardItem* */ items);
QTLIBC_API void QStandardItem_InsertRows(QStandardItem* self, int row, libqt_list /* of QStandardItem* */ items);
QTLIBC_API void QStandardItem_InsertRows2(QStandardItem* self, int row, int count);
QTLIBC_API void QStandardItem_InsertColumns(QStandardItem* self, int column, int count);
QTLIBC_API void QStandardItem_RemoveRow(QStandardItem* self, int row);
QTLIBC_API void QStandardItem_RemoveColumn(QStandardItem* self, int column);
QTLIBC_API void QStandardItem_RemoveRows(QStandardItem* self, int row, int count);
QTLIBC_API void QStandardItem_RemoveColumns(QStandardItem* self, int column, int count);
QTLIBC_API void QStandardItem_AppendRow(QStandardItem* self, libqt_list /* of QStandardItem* */ items);
QTLIBC_API void QStandardItem_AppendRows(QStandardItem* self, libqt_list /* of QStandardItem* */ items);
QTLIBC_API void QStandardItem_AppendColumn(QStandardItem* self, libqt_list /* of QStandardItem* */ items);
QTLIBC_API void QStandardItem_InsertRow2(QStandardItem* self, int row, QStandardItem* item);
QTLIBC_API void QStandardItem_AppendRowWithItem(QStandardItem* self, QStandardItem* item);
QTLIBC_API QStandardItem* QStandardItem_TakeChild(QStandardItem* self, int row);
QTLIBC_API libqt_list /* of QStandardItem* */ QStandardItem_TakeRow(QStandardItem* self, int row);
QTLIBC_API libqt_list /* of QStandardItem* */ QStandardItem_TakeColumn(QStandardItem* self, int column);
QTLIBC_API void QStandardItem_SortChildren(QStandardItem* self, int column);
QTLIBC_API QStandardItem* QStandardItem_Clone(const QStandardItem* self);
QTLIBC_API void QStandardItem_OnClone(const QStandardItem* self, intptr_t slot);
QTLIBC_API QStandardItem* QStandardItem_QBaseClone(const QStandardItem* self);
QTLIBC_API int QStandardItem_Type(const QStandardItem* self);
QTLIBC_API void QStandardItem_OnType(const QStandardItem* self, intptr_t slot);
QTLIBC_API int QStandardItem_QBaseType(const QStandardItem* self);
QTLIBC_API void QStandardItem_Read(QStandardItem* self, QDataStream* in);
QTLIBC_API void QStandardItem_OnRead(QStandardItem* self, intptr_t slot);
QTLIBC_API void QStandardItem_QBaseRead(QStandardItem* self, QDataStream* in);
QTLIBC_API void QStandardItem_Write(const QStandardItem* self, QDataStream* out);
QTLIBC_API void QStandardItem_OnWrite(const QStandardItem* self, intptr_t slot);
QTLIBC_API void QStandardItem_QBaseWrite(const QStandardItem* self, QDataStream* out);
QTLIBC_API bool QStandardItem_OperatorLesser(const QStandardItem* self, QStandardItem* other);
QTLIBC_API void QStandardItem_OnOperatorLesser(const QStandardItem* self, intptr_t slot);
QTLIBC_API bool QStandardItem_QBaseOperatorLesser(const QStandardItem* self, QStandardItem* other);
QTLIBC_API QStandardItem* QStandardItem_Child2(const QStandardItem* self, int row, int column);
QTLIBC_API QStandardItem* QStandardItem_TakeChild2(QStandardItem* self, int row, int column);
QTLIBC_API void QStandardItem_SortChildren2(QStandardItem* self, int column, int order);
QTLIBC_API void QStandardItem_OperatorAssign(QStandardItem* self, QStandardItem* other);
QTLIBC_API void QStandardItem_OnOperatorAssign(QStandardItem* self, intptr_t slot);
QTLIBC_API void QStandardItem_QBaseOperatorAssign(QStandardItem* self, QStandardItem* other);
QTLIBC_API void QStandardItem_EmitDataChanged(QStandardItem* self);
QTLIBC_API void QStandardItem_OnEmitDataChanged(QStandardItem* self, intptr_t slot);
QTLIBC_API void QStandardItem_QBaseEmitDataChanged(QStandardItem* self);
QTLIBC_API void QStandardItem_Delete(QStandardItem* self);

QTLIBC_API QStandardItemModel* QStandardItemModel_new();
QTLIBC_API QStandardItemModel* QStandardItemModel_new2(int rows, int columns);
QTLIBC_API QStandardItemModel* QStandardItemModel_new3(QObject* parent);
QTLIBC_API QStandardItemModel* QStandardItemModel_new4(int rows, int columns, QObject* parent);
QTLIBC_API QMetaObject* QStandardItemModel_MetaObject(const QStandardItemModel* self);
QTLIBC_API void* QStandardItemModel_Metacast(QStandardItemModel* self, const char* param1);
QTLIBC_API int QStandardItemModel_Metacall(QStandardItemModel* self, int param1, int param2, void** param3);
QTLIBC_API void QStandardItemModel_OnMetacall(QStandardItemModel* self, intptr_t slot);
QTLIBC_API int QStandardItemModel_QBaseMetacall(QStandardItemModel* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QStandardItemModel_Tr(const char* s);
QTLIBC_API void QStandardItemModel_SetItemRoleNames(QStandardItemModel* self, libqt_map /* of int to libqt_string */ roleNames);
QTLIBC_API libqt_map /* of int to libqt_string */ QStandardItemModel_RoleNames(const QStandardItemModel* self);
QTLIBC_API void QStandardItemModel_OnRoleNames(const QStandardItemModel* self, intptr_t slot);
QTLIBC_API libqt_map /* of int to libqt_string */ QStandardItemModel_QBaseRoleNames(const QStandardItemModel* self);
QTLIBC_API QModelIndex* QStandardItemModel_Index(const QStandardItemModel* self, int row, int column, QModelIndex* parent);
QTLIBC_API void QStandardItemModel_OnIndex(const QStandardItemModel* self, intptr_t slot);
QTLIBC_API QModelIndex* QStandardItemModel_QBaseIndex(const QStandardItemModel* self, int row, int column, QModelIndex* parent);
QTLIBC_API QModelIndex* QStandardItemModel_Parent(const QStandardItemModel* self, QModelIndex* child);
QTLIBC_API void QStandardItemModel_OnParent(const QStandardItemModel* self, intptr_t slot);
QTLIBC_API QModelIndex* QStandardItemModel_QBaseParent(const QStandardItemModel* self, QModelIndex* child);
QTLIBC_API int QStandardItemModel_RowCount(const QStandardItemModel* self, QModelIndex* parent);
QTLIBC_API void QStandardItemModel_OnRowCount(const QStandardItemModel* self, intptr_t slot);
QTLIBC_API int QStandardItemModel_QBaseRowCount(const QStandardItemModel* self, QModelIndex* parent);
QTLIBC_API int QStandardItemModel_ColumnCount(const QStandardItemModel* self, QModelIndex* parent);
QTLIBC_API void QStandardItemModel_OnColumnCount(const QStandardItemModel* self, intptr_t slot);
QTLIBC_API int QStandardItemModel_QBaseColumnCount(const QStandardItemModel* self, QModelIndex* parent);
QTLIBC_API bool QStandardItemModel_HasChildren(const QStandardItemModel* self, QModelIndex* parent);
QTLIBC_API void QStandardItemModel_OnHasChildren(const QStandardItemModel* self, intptr_t slot);
QTLIBC_API bool QStandardItemModel_QBaseHasChildren(const QStandardItemModel* self, QModelIndex* parent);
QTLIBC_API QVariant* QStandardItemModel_Data(const QStandardItemModel* self, QModelIndex* index, int role);
QTLIBC_API void QStandardItemModel_OnData(const QStandardItemModel* self, intptr_t slot);
QTLIBC_API QVariant* QStandardItemModel_QBaseData(const QStandardItemModel* self, QModelIndex* index, int role);
QTLIBC_API void QStandardItemModel_MultiData(const QStandardItemModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan);
QTLIBC_API void QStandardItemModel_OnMultiData(const QStandardItemModel* self, intptr_t slot);
QTLIBC_API void QStandardItemModel_QBaseMultiData(const QStandardItemModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan);
QTLIBC_API bool QStandardItemModel_SetData(QStandardItemModel* self, QModelIndex* index, QVariant* value, int role);
QTLIBC_API void QStandardItemModel_OnSetData(QStandardItemModel* self, intptr_t slot);
QTLIBC_API bool QStandardItemModel_QBaseSetData(QStandardItemModel* self, QModelIndex* index, QVariant* value, int role);
QTLIBC_API bool QStandardItemModel_ClearItemData(QStandardItemModel* self, QModelIndex* index);
QTLIBC_API void QStandardItemModel_OnClearItemData(QStandardItemModel* self, intptr_t slot);
QTLIBC_API bool QStandardItemModel_QBaseClearItemData(QStandardItemModel* self, QModelIndex* index);
QTLIBC_API QVariant* QStandardItemModel_HeaderData(const QStandardItemModel* self, int section, int orientation, int role);
QTLIBC_API void QStandardItemModel_OnHeaderData(const QStandardItemModel* self, intptr_t slot);
QTLIBC_API QVariant* QStandardItemModel_QBaseHeaderData(const QStandardItemModel* self, int section, int orientation, int role);
QTLIBC_API bool QStandardItemModel_SetHeaderData(QStandardItemModel* self, int section, int orientation, QVariant* value, int role);
QTLIBC_API void QStandardItemModel_OnSetHeaderData(QStandardItemModel* self, intptr_t slot);
QTLIBC_API bool QStandardItemModel_QBaseSetHeaderData(QStandardItemModel* self, int section, int orientation, QVariant* value, int role);
QTLIBC_API bool QStandardItemModel_InsertRows(QStandardItemModel* self, int row, int count, QModelIndex* parent);
QTLIBC_API void QStandardItemModel_OnInsertRows(QStandardItemModel* self, intptr_t slot);
QTLIBC_API bool QStandardItemModel_QBaseInsertRows(QStandardItemModel* self, int row, int count, QModelIndex* parent);
QTLIBC_API bool QStandardItemModel_InsertColumns(QStandardItemModel* self, int column, int count, QModelIndex* parent);
QTLIBC_API void QStandardItemModel_OnInsertColumns(QStandardItemModel* self, intptr_t slot);
QTLIBC_API bool QStandardItemModel_QBaseInsertColumns(QStandardItemModel* self, int column, int count, QModelIndex* parent);
QTLIBC_API bool QStandardItemModel_RemoveRows(QStandardItemModel* self, int row, int count, QModelIndex* parent);
QTLIBC_API void QStandardItemModel_OnRemoveRows(QStandardItemModel* self, intptr_t slot);
QTLIBC_API bool QStandardItemModel_QBaseRemoveRows(QStandardItemModel* self, int row, int count, QModelIndex* parent);
QTLIBC_API bool QStandardItemModel_RemoveColumns(QStandardItemModel* self, int column, int count, QModelIndex* parent);
QTLIBC_API void QStandardItemModel_OnRemoveColumns(QStandardItemModel* self, intptr_t slot);
QTLIBC_API bool QStandardItemModel_QBaseRemoveColumns(QStandardItemModel* self, int column, int count, QModelIndex* parent);
QTLIBC_API int QStandardItemModel_Flags(const QStandardItemModel* self, QModelIndex* index);
QTLIBC_API void QStandardItemModel_OnFlags(const QStandardItemModel* self, intptr_t slot);
QTLIBC_API int QStandardItemModel_QBaseFlags(const QStandardItemModel* self, QModelIndex* index);
QTLIBC_API int QStandardItemModel_SupportedDropActions(const QStandardItemModel* self);
QTLIBC_API void QStandardItemModel_OnSupportedDropActions(const QStandardItemModel* self, intptr_t slot);
QTLIBC_API int QStandardItemModel_QBaseSupportedDropActions(const QStandardItemModel* self);
QTLIBC_API libqt_map /* of int to QVariant* */ QStandardItemModel_ItemData(const QStandardItemModel* self, QModelIndex* index);
QTLIBC_API void QStandardItemModel_OnItemData(const QStandardItemModel* self, intptr_t slot);
QTLIBC_API libqt_map /* of int to QVariant* */ QStandardItemModel_QBaseItemData(const QStandardItemModel* self, QModelIndex* index);
QTLIBC_API bool QStandardItemModel_SetItemData(QStandardItemModel* self, QModelIndex* index, libqt_map /* of int to QVariant* */ roles);
QTLIBC_API void QStandardItemModel_OnSetItemData(QStandardItemModel* self, intptr_t slot);
QTLIBC_API bool QStandardItemModel_QBaseSetItemData(QStandardItemModel* self, QModelIndex* index, libqt_map /* of int to QVariant* */ roles);
QTLIBC_API void QStandardItemModel_Clear(QStandardItemModel* self);
QTLIBC_API void QStandardItemModel_Sort(QStandardItemModel* self, int column, int order);
QTLIBC_API void QStandardItemModel_OnSort(QStandardItemModel* self, intptr_t slot);
QTLIBC_API void QStandardItemModel_QBaseSort(QStandardItemModel* self, int column, int order);
QTLIBC_API QStandardItem* QStandardItemModel_ItemFromIndex(const QStandardItemModel* self, QModelIndex* index);
QTLIBC_API QModelIndex* QStandardItemModel_IndexFromItem(const QStandardItemModel* self, QStandardItem* item);
QTLIBC_API QStandardItem* QStandardItemModel_Item(const QStandardItemModel* self, int row);
QTLIBC_API void QStandardItemModel_SetItem(QStandardItemModel* self, int row, int column, QStandardItem* item);
QTLIBC_API void QStandardItemModel_SetItem2(QStandardItemModel* self, int row, QStandardItem* item);
QTLIBC_API QStandardItem* QStandardItemModel_InvisibleRootItem(const QStandardItemModel* self);
QTLIBC_API QStandardItem* QStandardItemModel_HorizontalHeaderItem(const QStandardItemModel* self, int column);
QTLIBC_API void QStandardItemModel_SetHorizontalHeaderItem(QStandardItemModel* self, int column, QStandardItem* item);
QTLIBC_API QStandardItem* QStandardItemModel_VerticalHeaderItem(const QStandardItemModel* self, int row);
QTLIBC_API void QStandardItemModel_SetVerticalHeaderItem(QStandardItemModel* self, int row, QStandardItem* item);
QTLIBC_API void QStandardItemModel_SetHorizontalHeaderLabels(QStandardItemModel* self, libqt_list /* of libqt_string */ labels);
QTLIBC_API void QStandardItemModel_SetVerticalHeaderLabels(QStandardItemModel* self, libqt_list /* of libqt_string */ labels);
QTLIBC_API void QStandardItemModel_SetRowCount(QStandardItemModel* self, int rows);
QTLIBC_API void QStandardItemModel_SetColumnCount(QStandardItemModel* self, int columns);
QTLIBC_API void QStandardItemModel_AppendRow(QStandardItemModel* self, libqt_list /* of QStandardItem* */ items);
QTLIBC_API void QStandardItemModel_AppendColumn(QStandardItemModel* self, libqt_list /* of QStandardItem* */ items);
QTLIBC_API void QStandardItemModel_AppendRowWithItem(QStandardItemModel* self, QStandardItem* item);
QTLIBC_API void QStandardItemModel_InsertRow(QStandardItemModel* self, int row, libqt_list /* of QStandardItem* */ items);
QTLIBC_API void QStandardItemModel_InsertColumn(QStandardItemModel* self, int column, libqt_list /* of QStandardItem* */ items);
QTLIBC_API void QStandardItemModel_InsertRow2(QStandardItemModel* self, int row, QStandardItem* item);
QTLIBC_API bool QStandardItemModel_InsertRowWithRow(QStandardItemModel* self, int row);
QTLIBC_API bool QStandardItemModel_InsertColumnWithColumn(QStandardItemModel* self, int column);
QTLIBC_API QStandardItem* QStandardItemModel_TakeItem(QStandardItemModel* self, int row);
QTLIBC_API libqt_list /* of QStandardItem* */ QStandardItemModel_TakeRow(QStandardItemModel* self, int row);
QTLIBC_API libqt_list /* of QStandardItem* */ QStandardItemModel_TakeColumn(QStandardItemModel* self, int column);
QTLIBC_API QStandardItem* QStandardItemModel_TakeHorizontalHeaderItem(QStandardItemModel* self, int column);
QTLIBC_API QStandardItem* QStandardItemModel_TakeVerticalHeaderItem(QStandardItemModel* self, int row);
QTLIBC_API QStandardItem* QStandardItemModel_ItemPrototype(const QStandardItemModel* self);
QTLIBC_API void QStandardItemModel_SetItemPrototype(QStandardItemModel* self, QStandardItem* item);
QTLIBC_API libqt_list /* of QStandardItem* */ QStandardItemModel_FindItems(const QStandardItemModel* self, libqt_string text);
QTLIBC_API int QStandardItemModel_SortRole(const QStandardItemModel* self);
QTLIBC_API void QStandardItemModel_SetSortRole(QStandardItemModel* self, int role);
QTLIBC_API libqt_list /* of libqt_string */ QStandardItemModel_MimeTypes(const QStandardItemModel* self);
QTLIBC_API void QStandardItemModel_OnMimeTypes(const QStandardItemModel* self, intptr_t slot);
QTLIBC_API libqt_list /* of libqt_string */ QStandardItemModel_QBaseMimeTypes(const QStandardItemModel* self);
QTLIBC_API QMimeData* QStandardItemModel_MimeData(const QStandardItemModel* self, libqt_list /* of QModelIndex* */ indexes);
QTLIBC_API void QStandardItemModel_OnMimeData(const QStandardItemModel* self, intptr_t slot);
QTLIBC_API QMimeData* QStandardItemModel_QBaseMimeData(const QStandardItemModel* self, libqt_list /* of QModelIndex* */ indexes);
QTLIBC_API bool QStandardItemModel_DropMimeData(QStandardItemModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
QTLIBC_API void QStandardItemModel_OnDropMimeData(QStandardItemModel* self, intptr_t slot);
QTLIBC_API bool QStandardItemModel_QBaseDropMimeData(QStandardItemModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
QTLIBC_API void QStandardItemModel_ItemChanged(QStandardItemModel* self, QStandardItem* item);
QTLIBC_API void QStandardItemModel_Connect_ItemChanged(QStandardItemModel* self, intptr_t slot);
QTLIBC_API libqt_string QStandardItemModel_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QStandardItemModel_Tr3(const char* s, const char* c, int n);
QTLIBC_API QStandardItem* QStandardItemModel_Item2(const QStandardItemModel* self, int row, int column);
QTLIBC_API bool QStandardItemModel_InsertRow22(QStandardItemModel* self, int row, QModelIndex* parent);
QTLIBC_API bool QStandardItemModel_InsertColumn2(QStandardItemModel* self, int column, QModelIndex* parent);
QTLIBC_API QStandardItem* QStandardItemModel_TakeItem2(QStandardItemModel* self, int row, int column);
QTLIBC_API libqt_list /* of QStandardItem* */ QStandardItemModel_FindItems2(const QStandardItemModel* self, libqt_string text, int flags);
QTLIBC_API libqt_list /* of QStandardItem* */ QStandardItemModel_FindItems3(const QStandardItemModel* self, libqt_string text, int flags, int column);
QTLIBC_API QModelIndex* QStandardItemModel_Sibling(const QStandardItemModel* self, int row, int column, QModelIndex* idx);
QTLIBC_API void QStandardItemModel_OnSibling(const QStandardItemModel* self, intptr_t slot);
QTLIBC_API QModelIndex* QStandardItemModel_QBaseSibling(const QStandardItemModel* self, int row, int column, QModelIndex* idx);
QTLIBC_API bool QStandardItemModel_CanDropMimeData(const QStandardItemModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
QTLIBC_API void QStandardItemModel_OnCanDropMimeData(const QStandardItemModel* self, intptr_t slot);
QTLIBC_API bool QStandardItemModel_QBaseCanDropMimeData(const QStandardItemModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
QTLIBC_API int QStandardItemModel_SupportedDragActions(const QStandardItemModel* self);
QTLIBC_API void QStandardItemModel_OnSupportedDragActions(const QStandardItemModel* self, intptr_t slot);
QTLIBC_API int QStandardItemModel_QBaseSupportedDragActions(const QStandardItemModel* self);
QTLIBC_API bool QStandardItemModel_MoveRows(QStandardItemModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
QTLIBC_API void QStandardItemModel_OnMoveRows(QStandardItemModel* self, intptr_t slot);
QTLIBC_API bool QStandardItemModel_QBaseMoveRows(QStandardItemModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
QTLIBC_API bool QStandardItemModel_MoveColumns(QStandardItemModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
QTLIBC_API void QStandardItemModel_OnMoveColumns(QStandardItemModel* self, intptr_t slot);
QTLIBC_API bool QStandardItemModel_QBaseMoveColumns(QStandardItemModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
QTLIBC_API void QStandardItemModel_FetchMore(QStandardItemModel* self, QModelIndex* parent);
QTLIBC_API void QStandardItemModel_OnFetchMore(QStandardItemModel* self, intptr_t slot);
QTLIBC_API void QStandardItemModel_QBaseFetchMore(QStandardItemModel* self, QModelIndex* parent);
QTLIBC_API bool QStandardItemModel_CanFetchMore(const QStandardItemModel* self, QModelIndex* parent);
QTLIBC_API void QStandardItemModel_OnCanFetchMore(const QStandardItemModel* self, intptr_t slot);
QTLIBC_API bool QStandardItemModel_QBaseCanFetchMore(const QStandardItemModel* self, QModelIndex* parent);
QTLIBC_API QModelIndex* QStandardItemModel_Buddy(const QStandardItemModel* self, QModelIndex* index);
QTLIBC_API void QStandardItemModel_OnBuddy(const QStandardItemModel* self, intptr_t slot);
QTLIBC_API QModelIndex* QStandardItemModel_QBaseBuddy(const QStandardItemModel* self, QModelIndex* index);
QTLIBC_API libqt_list /* of QModelIndex* */ QStandardItemModel_Match(const QStandardItemModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
QTLIBC_API void QStandardItemModel_OnMatch(const QStandardItemModel* self, intptr_t slot);
QTLIBC_API libqt_list /* of QModelIndex* */ QStandardItemModel_QBaseMatch(const QStandardItemModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
QTLIBC_API QSize* QStandardItemModel_Span(const QStandardItemModel* self, QModelIndex* index);
QTLIBC_API void QStandardItemModel_OnSpan(const QStandardItemModel* self, intptr_t slot);
QTLIBC_API QSize* QStandardItemModel_QBaseSpan(const QStandardItemModel* self, QModelIndex* index);
QTLIBC_API bool QStandardItemModel_Submit(QStandardItemModel* self);
QTLIBC_API void QStandardItemModel_OnSubmit(QStandardItemModel* self, intptr_t slot);
QTLIBC_API bool QStandardItemModel_QBaseSubmit(QStandardItemModel* self);
QTLIBC_API void QStandardItemModel_Revert(QStandardItemModel* self);
QTLIBC_API void QStandardItemModel_OnRevert(QStandardItemModel* self, intptr_t slot);
QTLIBC_API void QStandardItemModel_QBaseRevert(QStandardItemModel* self);
QTLIBC_API void QStandardItemModel_ResetInternalData(QStandardItemModel* self);
QTLIBC_API void QStandardItemModel_OnResetInternalData(QStandardItemModel* self, intptr_t slot);
QTLIBC_API void QStandardItemModel_QBaseResetInternalData(QStandardItemModel* self);
QTLIBC_API bool QStandardItemModel_Event(QStandardItemModel* self, QEvent* event);
QTLIBC_API void QStandardItemModel_OnEvent(QStandardItemModel* self, intptr_t slot);
QTLIBC_API bool QStandardItemModel_QBaseEvent(QStandardItemModel* self, QEvent* event);
QTLIBC_API bool QStandardItemModel_EventFilter(QStandardItemModel* self, QObject* watched, QEvent* event);
QTLIBC_API void QStandardItemModel_OnEventFilter(QStandardItemModel* self, intptr_t slot);
QTLIBC_API bool QStandardItemModel_QBaseEventFilter(QStandardItemModel* self, QObject* watched, QEvent* event);
QTLIBC_API void QStandardItemModel_TimerEvent(QStandardItemModel* self, QTimerEvent* event);
QTLIBC_API void QStandardItemModel_OnTimerEvent(QStandardItemModel* self, intptr_t slot);
QTLIBC_API void QStandardItemModel_QBaseTimerEvent(QStandardItemModel* self, QTimerEvent* event);
QTLIBC_API void QStandardItemModel_ChildEvent(QStandardItemModel* self, QChildEvent* event);
QTLIBC_API void QStandardItemModel_OnChildEvent(QStandardItemModel* self, intptr_t slot);
QTLIBC_API void QStandardItemModel_QBaseChildEvent(QStandardItemModel* self, QChildEvent* event);
QTLIBC_API void QStandardItemModel_CustomEvent(QStandardItemModel* self, QEvent* event);
QTLIBC_API void QStandardItemModel_OnCustomEvent(QStandardItemModel* self, intptr_t slot);
QTLIBC_API void QStandardItemModel_QBaseCustomEvent(QStandardItemModel* self, QEvent* event);
QTLIBC_API void QStandardItemModel_ConnectNotify(QStandardItemModel* self, QMetaMethod* signal);
QTLIBC_API void QStandardItemModel_OnConnectNotify(QStandardItemModel* self, intptr_t slot);
QTLIBC_API void QStandardItemModel_QBaseConnectNotify(QStandardItemModel* self, QMetaMethod* signal);
QTLIBC_API void QStandardItemModel_DisconnectNotify(QStandardItemModel* self, QMetaMethod* signal);
QTLIBC_API void QStandardItemModel_OnDisconnectNotify(QStandardItemModel* self, intptr_t slot);
QTLIBC_API void QStandardItemModel_QBaseDisconnectNotify(QStandardItemModel* self, QMetaMethod* signal);
QTLIBC_API QModelIndex* QStandardItemModel_CreateIndex(const QStandardItemModel* self, int row, int column);
QTLIBC_API void QStandardItemModel_OnCreateIndex(const QStandardItemModel* self, intptr_t slot);
QTLIBC_API QModelIndex* QStandardItemModel_QBaseCreateIndex(const QStandardItemModel* self, int row, int column);
QTLIBC_API void QStandardItemModel_EncodeData(const QStandardItemModel* self, libqt_list /* of QModelIndex* */ indexes, QDataStream* stream);
QTLIBC_API void QStandardItemModel_OnEncodeData(const QStandardItemModel* self, intptr_t slot);
QTLIBC_API void QStandardItemModel_QBaseEncodeData(const QStandardItemModel* self, libqt_list /* of QModelIndex* */ indexes, QDataStream* stream);
QTLIBC_API bool QStandardItemModel_DecodeData(QStandardItemModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
QTLIBC_API void QStandardItemModel_OnDecodeData(QStandardItemModel* self, intptr_t slot);
QTLIBC_API bool QStandardItemModel_QBaseDecodeData(QStandardItemModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
QTLIBC_API void QStandardItemModel_BeginInsertRows(QStandardItemModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QStandardItemModel_OnBeginInsertRows(QStandardItemModel* self, intptr_t slot);
QTLIBC_API void QStandardItemModel_QBaseBeginInsertRows(QStandardItemModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QStandardItemModel_EndInsertRows(QStandardItemModel* self);
QTLIBC_API void QStandardItemModel_OnEndInsertRows(QStandardItemModel* self, intptr_t slot);
QTLIBC_API void QStandardItemModel_QBaseEndInsertRows(QStandardItemModel* self);
QTLIBC_API void QStandardItemModel_BeginRemoveRows(QStandardItemModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QStandardItemModel_OnBeginRemoveRows(QStandardItemModel* self, intptr_t slot);
QTLIBC_API void QStandardItemModel_QBaseBeginRemoveRows(QStandardItemModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QStandardItemModel_EndRemoveRows(QStandardItemModel* self);
QTLIBC_API void QStandardItemModel_OnEndRemoveRows(QStandardItemModel* self, intptr_t slot);
QTLIBC_API void QStandardItemModel_QBaseEndRemoveRows(QStandardItemModel* self);
QTLIBC_API bool QStandardItemModel_BeginMoveRows(QStandardItemModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
QTLIBC_API void QStandardItemModel_OnBeginMoveRows(QStandardItemModel* self, intptr_t slot);
QTLIBC_API bool QStandardItemModel_QBaseBeginMoveRows(QStandardItemModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
QTLIBC_API void QStandardItemModel_EndMoveRows(QStandardItemModel* self);
QTLIBC_API void QStandardItemModel_OnEndMoveRows(QStandardItemModel* self, intptr_t slot);
QTLIBC_API void QStandardItemModel_QBaseEndMoveRows(QStandardItemModel* self);
QTLIBC_API void QStandardItemModel_BeginInsertColumns(QStandardItemModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QStandardItemModel_OnBeginInsertColumns(QStandardItemModel* self, intptr_t slot);
QTLIBC_API void QStandardItemModel_QBaseBeginInsertColumns(QStandardItemModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QStandardItemModel_EndInsertColumns(QStandardItemModel* self);
QTLIBC_API void QStandardItemModel_OnEndInsertColumns(QStandardItemModel* self, intptr_t slot);
QTLIBC_API void QStandardItemModel_QBaseEndInsertColumns(QStandardItemModel* self);
QTLIBC_API void QStandardItemModel_BeginRemoveColumns(QStandardItemModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QStandardItemModel_OnBeginRemoveColumns(QStandardItemModel* self, intptr_t slot);
QTLIBC_API void QStandardItemModel_QBaseBeginRemoveColumns(QStandardItemModel* self, QModelIndex* parent, int first, int last);
QTLIBC_API void QStandardItemModel_EndRemoveColumns(QStandardItemModel* self);
QTLIBC_API void QStandardItemModel_OnEndRemoveColumns(QStandardItemModel* self, intptr_t slot);
QTLIBC_API void QStandardItemModel_QBaseEndRemoveColumns(QStandardItemModel* self);
QTLIBC_API bool QStandardItemModel_BeginMoveColumns(QStandardItemModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
QTLIBC_API void QStandardItemModel_OnBeginMoveColumns(QStandardItemModel* self, intptr_t slot);
QTLIBC_API bool QStandardItemModel_QBaseBeginMoveColumns(QStandardItemModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
QTLIBC_API void QStandardItemModel_EndMoveColumns(QStandardItemModel* self);
QTLIBC_API void QStandardItemModel_OnEndMoveColumns(QStandardItemModel* self, intptr_t slot);
QTLIBC_API void QStandardItemModel_QBaseEndMoveColumns(QStandardItemModel* self);
QTLIBC_API void QStandardItemModel_BeginResetModel(QStandardItemModel* self);
QTLIBC_API void QStandardItemModel_OnBeginResetModel(QStandardItemModel* self, intptr_t slot);
QTLIBC_API void QStandardItemModel_QBaseBeginResetModel(QStandardItemModel* self);
QTLIBC_API void QStandardItemModel_EndResetModel(QStandardItemModel* self);
QTLIBC_API void QStandardItemModel_OnEndResetModel(QStandardItemModel* self, intptr_t slot);
QTLIBC_API void QStandardItemModel_QBaseEndResetModel(QStandardItemModel* self);
QTLIBC_API void QStandardItemModel_ChangePersistentIndex(QStandardItemModel* self, QModelIndex* from, QModelIndex* to);
QTLIBC_API void QStandardItemModel_OnChangePersistentIndex(QStandardItemModel* self, intptr_t slot);
QTLIBC_API void QStandardItemModel_QBaseChangePersistentIndex(QStandardItemModel* self, QModelIndex* from, QModelIndex* to);
QTLIBC_API void QStandardItemModel_ChangePersistentIndexList(QStandardItemModel* self, libqt_list /* of QModelIndex* */ from, libqt_list /* of QModelIndex* */ to);
QTLIBC_API void QStandardItemModel_OnChangePersistentIndexList(QStandardItemModel* self, intptr_t slot);
QTLIBC_API void QStandardItemModel_QBaseChangePersistentIndexList(QStandardItemModel* self, libqt_list /* of QModelIndex* */ from, libqt_list /* of QModelIndex* */ to);
QTLIBC_API libqt_list /* of QModelIndex* */ QStandardItemModel_PersistentIndexList(const QStandardItemModel* self);
QTLIBC_API void QStandardItemModel_OnPersistentIndexList(const QStandardItemModel* self, intptr_t slot);
QTLIBC_API libqt_list /* of QModelIndex* */ QStandardItemModel_QBasePersistentIndexList(const QStandardItemModel* self);
QTLIBC_API QObject* QStandardItemModel_Sender(const QStandardItemModel* self);
QTLIBC_API void QStandardItemModel_OnSender(const QStandardItemModel* self, intptr_t slot);
QTLIBC_API QObject* QStandardItemModel_QBaseSender(const QStandardItemModel* self);
QTLIBC_API int QStandardItemModel_SenderSignalIndex(const QStandardItemModel* self);
QTLIBC_API void QStandardItemModel_OnSenderSignalIndex(const QStandardItemModel* self, intptr_t slot);
QTLIBC_API int QStandardItemModel_QBaseSenderSignalIndex(const QStandardItemModel* self);
QTLIBC_API int QStandardItemModel_Receivers(const QStandardItemModel* self, const char* signal);
QTLIBC_API void QStandardItemModel_OnReceivers(const QStandardItemModel* self, intptr_t slot);
QTLIBC_API int QStandardItemModel_QBaseReceivers(const QStandardItemModel* self, const char* signal);
QTLIBC_API bool QStandardItemModel_IsSignalConnected(const QStandardItemModel* self, QMetaMethod* signal);
QTLIBC_API void QStandardItemModel_OnIsSignalConnected(const QStandardItemModel* self, intptr_t slot);
QTLIBC_API bool QStandardItemModel_QBaseIsSignalConnected(const QStandardItemModel* self, QMetaMethod* signal);
QTLIBC_API void QStandardItemModel_Delete(QStandardItemModel* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
