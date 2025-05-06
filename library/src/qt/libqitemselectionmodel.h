#pragma once
#ifndef SRC_QTC_LIBQITEMSELECTIONMODEL_H
#define SRC_QTC_LIBQITEMSELECTIONMODEL_H

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
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QItemSelection QItemSelection;
typedef struct QItemSelectionModel QItemSelectionModel;
typedef struct QItemSelectionRange QItemSelectionRange;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QModelIndex QModelIndex;
typedef struct QObject QObject;
typedef struct QPersistentModelIndex QPersistentModelIndex;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QItemSelectionModel::SelectionFlag SelectionFlag;   // C++ enum
typedef QItemSelectionModel::SelectionFlags SelectionFlags; // C++ QFlags
#else
typedef int SelectionFlag;  // C ABI enum
typedef int SelectionFlags; // C ABI QFlags
#endif

QTLIBC_API QItemSelectionRange* QItemSelectionRange_new();
QTLIBC_API QItemSelectionRange* QItemSelectionRange_new2(QModelIndex* topL, QModelIndex* bottomR);
QTLIBC_API QItemSelectionRange* QItemSelectionRange_new3(QModelIndex* index);
QTLIBC_API QItemSelectionRange* QItemSelectionRange_new4(QItemSelectionRange* param1);
QTLIBC_API void QItemSelectionRange_Swap(QItemSelectionRange* self, QItemSelectionRange* other);
QTLIBC_API int QItemSelectionRange_Top(const QItemSelectionRange* self);
QTLIBC_API int QItemSelectionRange_Left(const QItemSelectionRange* self);
QTLIBC_API int QItemSelectionRange_Bottom(const QItemSelectionRange* self);
QTLIBC_API int QItemSelectionRange_Right(const QItemSelectionRange* self);
QTLIBC_API int QItemSelectionRange_Width(const QItemSelectionRange* self);
QTLIBC_API int QItemSelectionRange_Height(const QItemSelectionRange* self);
QTLIBC_API QPersistentModelIndex* QItemSelectionRange_TopLeft(const QItemSelectionRange* self);
QTLIBC_API QPersistentModelIndex* QItemSelectionRange_BottomRight(const QItemSelectionRange* self);
QTLIBC_API QModelIndex* QItemSelectionRange_Parent(const QItemSelectionRange* self);
QTLIBC_API QAbstractItemModel* QItemSelectionRange_Model(const QItemSelectionRange* self);
QTLIBC_API bool QItemSelectionRange_Contains(const QItemSelectionRange* self, QModelIndex* index);
QTLIBC_API bool QItemSelectionRange_Contains2(const QItemSelectionRange* self, int row, int column, QModelIndex* parentIndex);
QTLIBC_API bool QItemSelectionRange_Intersects(const QItemSelectionRange* self, QItemSelectionRange* other);
QTLIBC_API QItemSelectionRange* QItemSelectionRange_Intersected(const QItemSelectionRange* self, QItemSelectionRange* other);
QTLIBC_API bool QItemSelectionRange_OperatorEqual(const QItemSelectionRange* self, QItemSelectionRange* other);
QTLIBC_API bool QItemSelectionRange_OperatorNotEqual(const QItemSelectionRange* self, QItemSelectionRange* other);
QTLIBC_API bool QItemSelectionRange_IsValid(const QItemSelectionRange* self);
QTLIBC_API bool QItemSelectionRange_IsEmpty(const QItemSelectionRange* self);
QTLIBC_API libqt_list /* of QModelIndex* */ QItemSelectionRange_Indexes(const QItemSelectionRange* self);
QTLIBC_API void QItemSelectionRange_Delete(QItemSelectionRange* self);

QTLIBC_API QItemSelectionModel* QItemSelectionModel_new();
QTLIBC_API QItemSelectionModel* QItemSelectionModel_new2(QAbstractItemModel* model, QObject* parent);
QTLIBC_API QItemSelectionModel* QItemSelectionModel_new3(QAbstractItemModel* model);
QTLIBC_API QMetaObject* QItemSelectionModel_MetaObject(const QItemSelectionModel* self);
QTLIBC_API void* QItemSelectionModel_Metacast(QItemSelectionModel* self, const char* param1);
QTLIBC_API int QItemSelectionModel_Metacall(QItemSelectionModel* self, int param1, int param2, void** param3);
QTLIBC_API void QItemSelectionModel_OnMetacall(QItemSelectionModel* self, intptr_t slot);
QTLIBC_API int QItemSelectionModel_QBaseMetacall(QItemSelectionModel* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QItemSelectionModel_Tr(const char* s);
QTLIBC_API QModelIndex* QItemSelectionModel_CurrentIndex(const QItemSelectionModel* self);
QTLIBC_API bool QItemSelectionModel_IsSelected(const QItemSelectionModel* self, QModelIndex* index);
QTLIBC_API bool QItemSelectionModel_IsRowSelected(const QItemSelectionModel* self, int row);
QTLIBC_API bool QItemSelectionModel_IsColumnSelected(const QItemSelectionModel* self, int column);
QTLIBC_API bool QItemSelectionModel_RowIntersectsSelection(const QItemSelectionModel* self, int row);
QTLIBC_API bool QItemSelectionModel_ColumnIntersectsSelection(const QItemSelectionModel* self, int column);
QTLIBC_API bool QItemSelectionModel_HasSelection(const QItemSelectionModel* self);
QTLIBC_API libqt_list /* of QModelIndex* */ QItemSelectionModel_SelectedIndexes(const QItemSelectionModel* self);
QTLIBC_API libqt_list /* of QModelIndex* */ QItemSelectionModel_SelectedRows(const QItemSelectionModel* self);
QTLIBC_API libqt_list /* of QModelIndex* */ QItemSelectionModel_SelectedColumns(const QItemSelectionModel* self);
QTLIBC_API QItemSelection* QItemSelectionModel_Selection(const QItemSelectionModel* self);
QTLIBC_API QAbstractItemModel* QItemSelectionModel_Model(const QItemSelectionModel* self);
QTLIBC_API QAbstractItemModel* QItemSelectionModel_Model2(QItemSelectionModel* self);
QTLIBC_API void QItemSelectionModel_SetModel(QItemSelectionModel* self, QAbstractItemModel* model);
QTLIBC_API void QItemSelectionModel_SetCurrentIndex(QItemSelectionModel* self, QModelIndex* index, int command);
QTLIBC_API void QItemSelectionModel_OnSetCurrentIndex(QItemSelectionModel* self, intptr_t slot);
QTLIBC_API void QItemSelectionModel_QBaseSetCurrentIndex(QItemSelectionModel* self, QModelIndex* index, int command);
QTLIBC_API void QItemSelectionModel_Select(QItemSelectionModel* self, QModelIndex* index, int command);
QTLIBC_API void QItemSelectionModel_OnSelect(QItemSelectionModel* self, intptr_t slot);
QTLIBC_API void QItemSelectionModel_QBaseSelect(QItemSelectionModel* self, QModelIndex* index, int command);
QTLIBC_API void QItemSelectionModel_Select2(QItemSelectionModel* self, QItemSelection* selection, int command);
QTLIBC_API void QItemSelectionModel_OnSelect2(QItemSelectionModel* self, intptr_t slot);
QTLIBC_API void QItemSelectionModel_QBaseSelect2(QItemSelectionModel* self, QItemSelection* selection, int command);
QTLIBC_API void QItemSelectionModel_Clear(QItemSelectionModel* self);
QTLIBC_API void QItemSelectionModel_OnClear(QItemSelectionModel* self, intptr_t slot);
QTLIBC_API void QItemSelectionModel_QBaseClear(QItemSelectionModel* self);
QTLIBC_API void QItemSelectionModel_Reset(QItemSelectionModel* self);
QTLIBC_API void QItemSelectionModel_OnReset(QItemSelectionModel* self, intptr_t slot);
QTLIBC_API void QItemSelectionModel_QBaseReset(QItemSelectionModel* self);
QTLIBC_API void QItemSelectionModel_ClearSelection(QItemSelectionModel* self);
QTLIBC_API void QItemSelectionModel_ClearCurrentIndex(QItemSelectionModel* self);
QTLIBC_API void QItemSelectionModel_OnClearCurrentIndex(QItemSelectionModel* self, intptr_t slot);
QTLIBC_API void QItemSelectionModel_QBaseClearCurrentIndex(QItemSelectionModel* self);
QTLIBC_API void QItemSelectionModel_SelectionChanged(QItemSelectionModel* self, QItemSelection* selected, QItemSelection* deselected);
void QItemSelectionModel_Connect_SelectionChanged(QItemSelectionModel* self, intptr_t slot);
QTLIBC_API void QItemSelectionModel_CurrentChanged(QItemSelectionModel* self, QModelIndex* current, QModelIndex* previous);
void QItemSelectionModel_Connect_CurrentChanged(QItemSelectionModel* self, intptr_t slot);
QTLIBC_API void QItemSelectionModel_CurrentRowChanged(QItemSelectionModel* self, QModelIndex* current, QModelIndex* previous);
void QItemSelectionModel_Connect_CurrentRowChanged(QItemSelectionModel* self, intptr_t slot);
QTLIBC_API void QItemSelectionModel_CurrentColumnChanged(QItemSelectionModel* self, QModelIndex* current, QModelIndex* previous);
void QItemSelectionModel_Connect_CurrentColumnChanged(QItemSelectionModel* self, intptr_t slot);
QTLIBC_API void QItemSelectionModel_ModelChanged(QItemSelectionModel* self, QAbstractItemModel* model);
void QItemSelectionModel_Connect_ModelChanged(QItemSelectionModel* self, intptr_t slot);
QTLIBC_API libqt_string QItemSelectionModel_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QItemSelectionModel_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QItemSelectionModel_IsRowSelected2(const QItemSelectionModel* self, int row, QModelIndex* parent);
QTLIBC_API bool QItemSelectionModel_IsColumnSelected2(const QItemSelectionModel* self, int column, QModelIndex* parent);
QTLIBC_API bool QItemSelectionModel_RowIntersectsSelection2(const QItemSelectionModel* self, int row, QModelIndex* parent);
QTLIBC_API bool QItemSelectionModel_ColumnIntersectsSelection2(const QItemSelectionModel* self, int column, QModelIndex* parent);
QTLIBC_API libqt_list /* of QModelIndex* */ QItemSelectionModel_SelectedRows1(const QItemSelectionModel* self, int column);
QTLIBC_API libqt_list /* of QModelIndex* */ QItemSelectionModel_SelectedColumns1(const QItemSelectionModel* self, int row);
QTLIBC_API bool QItemSelectionModel_Event(QItemSelectionModel* self, QEvent* event);
QTLIBC_API void QItemSelectionModel_OnEvent(QItemSelectionModel* self, intptr_t slot);
QTLIBC_API bool QItemSelectionModel_QBaseEvent(QItemSelectionModel* self, QEvent* event);
QTLIBC_API bool QItemSelectionModel_EventFilter(QItemSelectionModel* self, QObject* watched, QEvent* event);
QTLIBC_API void QItemSelectionModel_OnEventFilter(QItemSelectionModel* self, intptr_t slot);
QTLIBC_API bool QItemSelectionModel_QBaseEventFilter(QItemSelectionModel* self, QObject* watched, QEvent* event);
QTLIBC_API void QItemSelectionModel_TimerEvent(QItemSelectionModel* self, QTimerEvent* event);
QTLIBC_API void QItemSelectionModel_OnTimerEvent(QItemSelectionModel* self, intptr_t slot);
QTLIBC_API void QItemSelectionModel_QBaseTimerEvent(QItemSelectionModel* self, QTimerEvent* event);
QTLIBC_API void QItemSelectionModel_ChildEvent(QItemSelectionModel* self, QChildEvent* event);
QTLIBC_API void QItemSelectionModel_OnChildEvent(QItemSelectionModel* self, intptr_t slot);
QTLIBC_API void QItemSelectionModel_QBaseChildEvent(QItemSelectionModel* self, QChildEvent* event);
QTLIBC_API void QItemSelectionModel_CustomEvent(QItemSelectionModel* self, QEvent* event);
QTLIBC_API void QItemSelectionModel_OnCustomEvent(QItemSelectionModel* self, intptr_t slot);
QTLIBC_API void QItemSelectionModel_QBaseCustomEvent(QItemSelectionModel* self, QEvent* event);
QTLIBC_API void QItemSelectionModel_ConnectNotify(QItemSelectionModel* self, QMetaMethod* signal);
QTLIBC_API void QItemSelectionModel_OnConnectNotify(QItemSelectionModel* self, intptr_t slot);
QTLIBC_API void QItemSelectionModel_QBaseConnectNotify(QItemSelectionModel* self, QMetaMethod* signal);
QTLIBC_API void QItemSelectionModel_DisconnectNotify(QItemSelectionModel* self, QMetaMethod* signal);
QTLIBC_API void QItemSelectionModel_OnDisconnectNotify(QItemSelectionModel* self, intptr_t slot);
QTLIBC_API void QItemSelectionModel_QBaseDisconnectNotify(QItemSelectionModel* self, QMetaMethod* signal);
QTLIBC_API void QItemSelectionModel_EmitSelectionChanged(QItemSelectionModel* self, QItemSelection* newSelection, QItemSelection* oldSelection);
QTLIBC_API void QItemSelectionModel_OnEmitSelectionChanged(QItemSelectionModel* self, intptr_t slot);
QTLIBC_API void QItemSelectionModel_QBaseEmitSelectionChanged(QItemSelectionModel* self, QItemSelection* newSelection, QItemSelection* oldSelection);
QTLIBC_API QObject* QItemSelectionModel_Sender(const QItemSelectionModel* self);
QTLIBC_API void QItemSelectionModel_OnSender(const QItemSelectionModel* self, intptr_t slot);
QTLIBC_API QObject* QItemSelectionModel_QBaseSender(const QItemSelectionModel* self);
QTLIBC_API int QItemSelectionModel_SenderSignalIndex(const QItemSelectionModel* self);
QTLIBC_API void QItemSelectionModel_OnSenderSignalIndex(const QItemSelectionModel* self, intptr_t slot);
QTLIBC_API int QItemSelectionModel_QBaseSenderSignalIndex(const QItemSelectionModel* self);
QTLIBC_API int QItemSelectionModel_Receivers(const QItemSelectionModel* self, const char* signal);
QTLIBC_API void QItemSelectionModel_OnReceivers(const QItemSelectionModel* self, intptr_t slot);
QTLIBC_API int QItemSelectionModel_QBaseReceivers(const QItemSelectionModel* self, const char* signal);
QTLIBC_API bool QItemSelectionModel_IsSignalConnected(const QItemSelectionModel* self, QMetaMethod* signal);
QTLIBC_API void QItemSelectionModel_OnIsSignalConnected(const QItemSelectionModel* self, intptr_t slot);
QTLIBC_API bool QItemSelectionModel_QBaseIsSignalConnected(const QItemSelectionModel* self, QMetaMethod* signal);
QTLIBC_API void QItemSelectionModel_Delete(QItemSelectionModel* self);

QTLIBC_API QItemSelection* QItemSelection_new(QModelIndex* topLeft, QModelIndex* bottomRight);
QTLIBC_API QItemSelection* QItemSelection_new2();
QTLIBC_API QItemSelection* QItemSelection_new3(QItemSelection* param1);
QTLIBC_API void QItemSelection_Select(QItemSelection* self, QModelIndex* topLeft, QModelIndex* bottomRight);
QTLIBC_API bool QItemSelection_Contains(const QItemSelection* self, QModelIndex* index);
QTLIBC_API libqt_list /* of QModelIndex* */ QItemSelection_Indexes(const QItemSelection* self);
QTLIBC_API void QItemSelection_Merge(QItemSelection* self, QItemSelection* other, int command);
QTLIBC_API void QItemSelection_Split(QItemSelectionRange* range, QItemSelectionRange* other, QItemSelection* result);
QTLIBC_API void QItemSelection_Delete(QItemSelection* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
