#pragma once
#ifndef SRCC_LIBQABSTRACTITEMDELEGATE_H
#define SRCC_LIBQABSTRACTITEMDELEGATE_H

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
typedef struct QAbstractItemDelegate QAbstractItemDelegate;
typedef struct QAbstractItemModel QAbstractItemModel;
typedef struct QAbstractItemView QAbstractItemView;
typedef struct QAnyStringView QAnyStringView;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QHelpEvent QHelpEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QModelIndex QModelIndex;
typedef struct QObject QObject;
typedef struct QPainter QPainter;
typedef struct QSize QSize;
typedef struct QStyleOptionViewItem QStyleOptionViewItem;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWidget QWidget;
#endif

#ifdef __cplusplus
typedef QAbstractItemDelegate::EndEditHint EndEditHint; // C++ enum
#else
typedef int EndEditHint; // C ABI enum
#endif

QTLIBC_API QAbstractItemDelegate* QAbstractItemDelegate_new();
QTLIBC_API QAbstractItemDelegate* QAbstractItemDelegate_new2(QObject* parent);
QTLIBC_API QMetaObject* QAbstractItemDelegate_MetaObject(const QAbstractItemDelegate* self);
QTLIBC_API void* QAbstractItemDelegate_Metacast(QAbstractItemDelegate* self, const char* param1);
QTLIBC_API int QAbstractItemDelegate_Metacall(QAbstractItemDelegate* self, int param1, int param2, void** param3);
QTLIBC_API void QAbstractItemDelegate_OnMetacall(QAbstractItemDelegate* self, intptr_t slot);
QTLIBC_API int QAbstractItemDelegate_QBaseMetacall(QAbstractItemDelegate* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QAbstractItemDelegate_Tr(const char* s);
QTLIBC_API void QAbstractItemDelegate_Paint(const QAbstractItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API void QAbstractItemDelegate_OnPaint(const QAbstractItemDelegate* self, intptr_t slot);
QTLIBC_API void QAbstractItemDelegate_QBasePaint(const QAbstractItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API QSize* QAbstractItemDelegate_SizeHint(const QAbstractItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API void QAbstractItemDelegate_OnSizeHint(const QAbstractItemDelegate* self, intptr_t slot);
QTLIBC_API QSize* QAbstractItemDelegate_QBaseSizeHint(const QAbstractItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API QWidget* QAbstractItemDelegate_CreateEditor(const QAbstractItemDelegate* self, QWidget* parent, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API void QAbstractItemDelegate_OnCreateEditor(const QAbstractItemDelegate* self, intptr_t slot);
QTLIBC_API QWidget* QAbstractItemDelegate_QBaseCreateEditor(const QAbstractItemDelegate* self, QWidget* parent, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API void QAbstractItemDelegate_DestroyEditor(const QAbstractItemDelegate* self, QWidget* editor, QModelIndex* index);
QTLIBC_API void QAbstractItemDelegate_OnDestroyEditor(const QAbstractItemDelegate* self, intptr_t slot);
QTLIBC_API void QAbstractItemDelegate_QBaseDestroyEditor(const QAbstractItemDelegate* self, QWidget* editor, QModelIndex* index);
QTLIBC_API void QAbstractItemDelegate_SetEditorData(const QAbstractItemDelegate* self, QWidget* editor, QModelIndex* index);
QTLIBC_API void QAbstractItemDelegate_OnSetEditorData(const QAbstractItemDelegate* self, intptr_t slot);
QTLIBC_API void QAbstractItemDelegate_QBaseSetEditorData(const QAbstractItemDelegate* self, QWidget* editor, QModelIndex* index);
QTLIBC_API void QAbstractItemDelegate_SetModelData(const QAbstractItemDelegate* self, QWidget* editor, QAbstractItemModel* model, QModelIndex* index);
QTLIBC_API void QAbstractItemDelegate_OnSetModelData(const QAbstractItemDelegate* self, intptr_t slot);
QTLIBC_API void QAbstractItemDelegate_QBaseSetModelData(const QAbstractItemDelegate* self, QWidget* editor, QAbstractItemModel* model, QModelIndex* index);
QTLIBC_API void QAbstractItemDelegate_UpdateEditorGeometry(const QAbstractItemDelegate* self, QWidget* editor, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API void QAbstractItemDelegate_OnUpdateEditorGeometry(const QAbstractItemDelegate* self, intptr_t slot);
QTLIBC_API void QAbstractItemDelegate_QBaseUpdateEditorGeometry(const QAbstractItemDelegate* self, QWidget* editor, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API bool QAbstractItemDelegate_EditorEvent(QAbstractItemDelegate* self, QEvent* event, QAbstractItemModel* model, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API void QAbstractItemDelegate_OnEditorEvent(QAbstractItemDelegate* self, intptr_t slot);
QTLIBC_API bool QAbstractItemDelegate_QBaseEditorEvent(QAbstractItemDelegate* self, QEvent* event, QAbstractItemModel* model, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API bool QAbstractItemDelegate_HelpEvent(QAbstractItemDelegate* self, QHelpEvent* event, QAbstractItemView* view, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API void QAbstractItemDelegate_OnHelpEvent(QAbstractItemDelegate* self, intptr_t slot);
QTLIBC_API bool QAbstractItemDelegate_QBaseHelpEvent(QAbstractItemDelegate* self, QHelpEvent* event, QAbstractItemView* view, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API libqt_list /* of int */ QAbstractItemDelegate_PaintingRoles(const QAbstractItemDelegate* self);
QTLIBC_API void QAbstractItemDelegate_OnPaintingRoles(const QAbstractItemDelegate* self, intptr_t slot);
QTLIBC_API libqt_list /* of int */ QAbstractItemDelegate_QBasePaintingRoles(const QAbstractItemDelegate* self);
QTLIBC_API void QAbstractItemDelegate_CommitData(QAbstractItemDelegate* self, QWidget* editor);
void QAbstractItemDelegate_Connect_CommitData(QAbstractItemDelegate* self, intptr_t slot);
QTLIBC_API void QAbstractItemDelegate_CloseEditor(QAbstractItemDelegate* self, QWidget* editor);
void QAbstractItemDelegate_Connect_CloseEditor(QAbstractItemDelegate* self, intptr_t slot);
QTLIBC_API void QAbstractItemDelegate_SizeHintChanged(QAbstractItemDelegate* self, QModelIndex* param1);
void QAbstractItemDelegate_Connect_SizeHintChanged(QAbstractItemDelegate* self, intptr_t slot);
QTLIBC_API libqt_string QAbstractItemDelegate_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QAbstractItemDelegate_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QAbstractItemDelegate_CloseEditor2(QAbstractItemDelegate* self, QWidget* editor, int hint);
void QAbstractItemDelegate_Connect_CloseEditor2(QAbstractItemDelegate* self, intptr_t slot);
QTLIBC_API bool QAbstractItemDelegate_Event(QAbstractItemDelegate* self, QEvent* event);
QTLIBC_API void QAbstractItemDelegate_OnEvent(QAbstractItemDelegate* self, intptr_t slot);
QTLIBC_API bool QAbstractItemDelegate_QBaseEvent(QAbstractItemDelegate* self, QEvent* event);
QTLIBC_API bool QAbstractItemDelegate_EventFilter(QAbstractItemDelegate* self, QObject* watched, QEvent* event);
QTLIBC_API void QAbstractItemDelegate_OnEventFilter(QAbstractItemDelegate* self, intptr_t slot);
QTLIBC_API bool QAbstractItemDelegate_QBaseEventFilter(QAbstractItemDelegate* self, QObject* watched, QEvent* event);
QTLIBC_API void QAbstractItemDelegate_TimerEvent(QAbstractItemDelegate* self, QTimerEvent* event);
QTLIBC_API void QAbstractItemDelegate_OnTimerEvent(QAbstractItemDelegate* self, intptr_t slot);
QTLIBC_API void QAbstractItemDelegate_QBaseTimerEvent(QAbstractItemDelegate* self, QTimerEvent* event);
QTLIBC_API void QAbstractItemDelegate_ChildEvent(QAbstractItemDelegate* self, QChildEvent* event);
QTLIBC_API void QAbstractItemDelegate_OnChildEvent(QAbstractItemDelegate* self, intptr_t slot);
QTLIBC_API void QAbstractItemDelegate_QBaseChildEvent(QAbstractItemDelegate* self, QChildEvent* event);
QTLIBC_API void QAbstractItemDelegate_CustomEvent(QAbstractItemDelegate* self, QEvent* event);
QTLIBC_API void QAbstractItemDelegate_OnCustomEvent(QAbstractItemDelegate* self, intptr_t slot);
QTLIBC_API void QAbstractItemDelegate_QBaseCustomEvent(QAbstractItemDelegate* self, QEvent* event);
QTLIBC_API void QAbstractItemDelegate_ConnectNotify(QAbstractItemDelegate* self, QMetaMethod* signal);
QTLIBC_API void QAbstractItemDelegate_OnConnectNotify(QAbstractItemDelegate* self, intptr_t slot);
QTLIBC_API void QAbstractItemDelegate_QBaseConnectNotify(QAbstractItemDelegate* self, QMetaMethod* signal);
QTLIBC_API void QAbstractItemDelegate_DisconnectNotify(QAbstractItemDelegate* self, QMetaMethod* signal);
QTLIBC_API void QAbstractItemDelegate_OnDisconnectNotify(QAbstractItemDelegate* self, intptr_t slot);
QTLIBC_API void QAbstractItemDelegate_QBaseDisconnectNotify(QAbstractItemDelegate* self, QMetaMethod* signal);
QTLIBC_API QObject* QAbstractItemDelegate_Sender(const QAbstractItemDelegate* self);
QTLIBC_API void QAbstractItemDelegate_OnSender(const QAbstractItemDelegate* self, intptr_t slot);
QTLIBC_API QObject* QAbstractItemDelegate_QBaseSender(const QAbstractItemDelegate* self);
QTLIBC_API int QAbstractItemDelegate_SenderSignalIndex(const QAbstractItemDelegate* self);
QTLIBC_API void QAbstractItemDelegate_OnSenderSignalIndex(const QAbstractItemDelegate* self, intptr_t slot);
QTLIBC_API int QAbstractItemDelegate_QBaseSenderSignalIndex(const QAbstractItemDelegate* self);
QTLIBC_API int QAbstractItemDelegate_Receivers(const QAbstractItemDelegate* self, const char* signal);
QTLIBC_API void QAbstractItemDelegate_OnReceivers(const QAbstractItemDelegate* self, intptr_t slot);
QTLIBC_API int QAbstractItemDelegate_QBaseReceivers(const QAbstractItemDelegate* self, const char* signal);
QTLIBC_API bool QAbstractItemDelegate_IsSignalConnected(const QAbstractItemDelegate* self, QMetaMethod* signal);
QTLIBC_API void QAbstractItemDelegate_OnIsSignalConnected(const QAbstractItemDelegate* self, intptr_t slot);
QTLIBC_API bool QAbstractItemDelegate_QBaseIsSignalConnected(const QAbstractItemDelegate* self, QMetaMethod* signal);
QTLIBC_API void QAbstractItemDelegate_Delete(QAbstractItemDelegate* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
