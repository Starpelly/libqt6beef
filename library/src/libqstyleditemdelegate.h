#pragma once
#ifndef SRCC_LIBQSTYLEDITEMDELEGATE_H
#define SRCC_LIBQSTYLEDITEMDELEGATE_H

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
typedef struct QItemEditorFactory QItemEditorFactory;
typedef struct QLocale QLocale;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QModelIndex QModelIndex;
typedef struct QObject QObject;
typedef struct QPainter QPainter;
typedef struct QSize QSize;
typedef struct QStyleOptionViewItem QStyleOptionViewItem;
typedef struct QStyledItemDelegate QStyledItemDelegate;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWidget QWidget;
#endif

QTLIBC_API QStyledItemDelegate* QStyledItemDelegate_new();
QTLIBC_API QStyledItemDelegate* QStyledItemDelegate_new2(QObject* parent);
QTLIBC_API QMetaObject* QStyledItemDelegate_MetaObject(const QStyledItemDelegate* self);
QTLIBC_API void* QStyledItemDelegate_Metacast(QStyledItemDelegate* self, const char* param1);
QTLIBC_API int QStyledItemDelegate_Metacall(QStyledItemDelegate* self, int param1, int param2, void** param3);
QTLIBC_API void QStyledItemDelegate_OnMetacall(QStyledItemDelegate* self, intptr_t slot);
QTLIBC_API int QStyledItemDelegate_QBaseMetacall(QStyledItemDelegate* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QStyledItemDelegate_Tr(const char* s);
QTLIBC_API void QStyledItemDelegate_Paint(const QStyledItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API void QStyledItemDelegate_OnPaint(const QStyledItemDelegate* self, intptr_t slot);
QTLIBC_API void QStyledItemDelegate_QBasePaint(const QStyledItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API QSize* QStyledItemDelegate_SizeHint(const QStyledItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API void QStyledItemDelegate_OnSizeHint(const QStyledItemDelegate* self, intptr_t slot);
QTLIBC_API QSize* QStyledItemDelegate_QBaseSizeHint(const QStyledItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API QWidget* QStyledItemDelegate_CreateEditor(const QStyledItemDelegate* self, QWidget* parent, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API void QStyledItemDelegate_OnCreateEditor(const QStyledItemDelegate* self, intptr_t slot);
QTLIBC_API QWidget* QStyledItemDelegate_QBaseCreateEditor(const QStyledItemDelegate* self, QWidget* parent, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API void QStyledItemDelegate_SetEditorData(const QStyledItemDelegate* self, QWidget* editor, QModelIndex* index);
QTLIBC_API void QStyledItemDelegate_OnSetEditorData(const QStyledItemDelegate* self, intptr_t slot);
QTLIBC_API void QStyledItemDelegate_QBaseSetEditorData(const QStyledItemDelegate* self, QWidget* editor, QModelIndex* index);
QTLIBC_API void QStyledItemDelegate_SetModelData(const QStyledItemDelegate* self, QWidget* editor, QAbstractItemModel* model, QModelIndex* index);
QTLIBC_API void QStyledItemDelegate_OnSetModelData(const QStyledItemDelegate* self, intptr_t slot);
QTLIBC_API void QStyledItemDelegate_QBaseSetModelData(const QStyledItemDelegate* self, QWidget* editor, QAbstractItemModel* model, QModelIndex* index);
QTLIBC_API void QStyledItemDelegate_UpdateEditorGeometry(const QStyledItemDelegate* self, QWidget* editor, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API void QStyledItemDelegate_OnUpdateEditorGeometry(const QStyledItemDelegate* self, intptr_t slot);
QTLIBC_API void QStyledItemDelegate_QBaseUpdateEditorGeometry(const QStyledItemDelegate* self, QWidget* editor, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API QItemEditorFactory* QStyledItemDelegate_ItemEditorFactory(const QStyledItemDelegate* self);
QTLIBC_API void QStyledItemDelegate_SetItemEditorFactory(QStyledItemDelegate* self, QItemEditorFactory* factory);
QTLIBC_API libqt_string QStyledItemDelegate_DisplayText(const QStyledItemDelegate* self, QVariant* value, QLocale* locale);
QTLIBC_API void QStyledItemDelegate_OnDisplayText(const QStyledItemDelegate* self, intptr_t slot);
QTLIBC_API libqt_string QStyledItemDelegate_QBaseDisplayText(const QStyledItemDelegate* self, QVariant* value, QLocale* locale);
QTLIBC_API void QStyledItemDelegate_InitStyleOption(const QStyledItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API void QStyledItemDelegate_OnInitStyleOption(const QStyledItemDelegate* self, intptr_t slot);
QTLIBC_API void QStyledItemDelegate_QBaseInitStyleOption(const QStyledItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API bool QStyledItemDelegate_EventFilter(QStyledItemDelegate* self, QObject* object, QEvent* event);
QTLIBC_API void QStyledItemDelegate_OnEventFilter(QStyledItemDelegate* self, intptr_t slot);
QTLIBC_API bool QStyledItemDelegate_QBaseEventFilter(QStyledItemDelegate* self, QObject* object, QEvent* event);
QTLIBC_API bool QStyledItemDelegate_EditorEvent(QStyledItemDelegate* self, QEvent* event, QAbstractItemModel* model, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API void QStyledItemDelegate_OnEditorEvent(QStyledItemDelegate* self, intptr_t slot);
QTLIBC_API bool QStyledItemDelegate_QBaseEditorEvent(QStyledItemDelegate* self, QEvent* event, QAbstractItemModel* model, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API libqt_string QStyledItemDelegate_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QStyledItemDelegate_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QStyledItemDelegate_DestroyEditor(const QStyledItemDelegate* self, QWidget* editor, QModelIndex* index);
QTLIBC_API void QStyledItemDelegate_OnDestroyEditor(const QStyledItemDelegate* self, intptr_t slot);
QTLIBC_API void QStyledItemDelegate_QBaseDestroyEditor(const QStyledItemDelegate* self, QWidget* editor, QModelIndex* index);
QTLIBC_API bool QStyledItemDelegate_HelpEvent(QStyledItemDelegate* self, QHelpEvent* event, QAbstractItemView* view, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API void QStyledItemDelegate_OnHelpEvent(QStyledItemDelegate* self, intptr_t slot);
QTLIBC_API bool QStyledItemDelegate_QBaseHelpEvent(QStyledItemDelegate* self, QHelpEvent* event, QAbstractItemView* view, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API libqt_list /* of int */ QStyledItemDelegate_PaintingRoles(const QStyledItemDelegate* self);
QTLIBC_API void QStyledItemDelegate_OnPaintingRoles(const QStyledItemDelegate* self, intptr_t slot);
QTLIBC_API libqt_list /* of int */ QStyledItemDelegate_QBasePaintingRoles(const QStyledItemDelegate* self);
QTLIBC_API bool QStyledItemDelegate_Event(QStyledItemDelegate* self, QEvent* event);
QTLIBC_API void QStyledItemDelegate_OnEvent(QStyledItemDelegate* self, intptr_t slot);
QTLIBC_API bool QStyledItemDelegate_QBaseEvent(QStyledItemDelegate* self, QEvent* event);
QTLIBC_API void QStyledItemDelegate_TimerEvent(QStyledItemDelegate* self, QTimerEvent* event);
QTLIBC_API void QStyledItemDelegate_OnTimerEvent(QStyledItemDelegate* self, intptr_t slot);
QTLIBC_API void QStyledItemDelegate_QBaseTimerEvent(QStyledItemDelegate* self, QTimerEvent* event);
QTLIBC_API void QStyledItemDelegate_ChildEvent(QStyledItemDelegate* self, QChildEvent* event);
QTLIBC_API void QStyledItemDelegate_OnChildEvent(QStyledItemDelegate* self, intptr_t slot);
QTLIBC_API void QStyledItemDelegate_QBaseChildEvent(QStyledItemDelegate* self, QChildEvent* event);
QTLIBC_API void QStyledItemDelegate_CustomEvent(QStyledItemDelegate* self, QEvent* event);
QTLIBC_API void QStyledItemDelegate_OnCustomEvent(QStyledItemDelegate* self, intptr_t slot);
QTLIBC_API void QStyledItemDelegate_QBaseCustomEvent(QStyledItemDelegate* self, QEvent* event);
QTLIBC_API void QStyledItemDelegate_ConnectNotify(QStyledItemDelegate* self, QMetaMethod* signal);
QTLIBC_API void QStyledItemDelegate_OnConnectNotify(QStyledItemDelegate* self, intptr_t slot);
QTLIBC_API void QStyledItemDelegate_QBaseConnectNotify(QStyledItemDelegate* self, QMetaMethod* signal);
QTLIBC_API void QStyledItemDelegate_DisconnectNotify(QStyledItemDelegate* self, QMetaMethod* signal);
QTLIBC_API void QStyledItemDelegate_OnDisconnectNotify(QStyledItemDelegate* self, intptr_t slot);
QTLIBC_API void QStyledItemDelegate_QBaseDisconnectNotify(QStyledItemDelegate* self, QMetaMethod* signal);
QTLIBC_API QObject* QStyledItemDelegate_Sender(const QStyledItemDelegate* self);
QTLIBC_API void QStyledItemDelegate_OnSender(const QStyledItemDelegate* self, intptr_t slot);
QTLIBC_API QObject* QStyledItemDelegate_QBaseSender(const QStyledItemDelegate* self);
QTLIBC_API int QStyledItemDelegate_SenderSignalIndex(const QStyledItemDelegate* self);
QTLIBC_API void QStyledItemDelegate_OnSenderSignalIndex(const QStyledItemDelegate* self, intptr_t slot);
QTLIBC_API int QStyledItemDelegate_QBaseSenderSignalIndex(const QStyledItemDelegate* self);
QTLIBC_API int QStyledItemDelegate_Receivers(const QStyledItemDelegate* self, const char* signal);
QTLIBC_API void QStyledItemDelegate_OnReceivers(const QStyledItemDelegate* self, intptr_t slot);
QTLIBC_API int QStyledItemDelegate_QBaseReceivers(const QStyledItemDelegate* self, const char* signal);
QTLIBC_API bool QStyledItemDelegate_IsSignalConnected(const QStyledItemDelegate* self, QMetaMethod* signal);
QTLIBC_API void QStyledItemDelegate_OnIsSignalConnected(const QStyledItemDelegate* self, intptr_t slot);
QTLIBC_API bool QStyledItemDelegate_QBaseIsSignalConnected(const QStyledItemDelegate* self, QMetaMethod* signal);
QTLIBC_API void QStyledItemDelegate_Delete(QStyledItemDelegate* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
