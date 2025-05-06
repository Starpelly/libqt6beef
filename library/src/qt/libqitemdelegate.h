#pragma once
#ifndef SRC_QTC_LIBQITEMDELEGATE_H
#define SRC_QTC_LIBQITEMDELEGATE_H

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
typedef struct QFont QFont;
typedef struct QHelpEvent QHelpEvent;
typedef struct QItemDelegate QItemDelegate;
typedef struct QItemEditorFactory QItemEditorFactory;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QModelIndex QModelIndex;
typedef struct QObject QObject;
typedef struct QPainter QPainter;
typedef struct QPixmap QPixmap;
typedef struct QRect QRect;
typedef struct QSize QSize;
typedef struct QStyleOptionViewItem QStyleOptionViewItem;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWidget QWidget;
#endif

QTLIBC_API QItemDelegate* QItemDelegate_new();
QTLIBC_API QItemDelegate* QItemDelegate_new2(QObject* parent);
QTLIBC_API QMetaObject* QItemDelegate_MetaObject(const QItemDelegate* self);
QTLIBC_API void* QItemDelegate_Metacast(QItemDelegate* self, const char* param1);
QTLIBC_API int QItemDelegate_Metacall(QItemDelegate* self, int param1, int param2, void** param3);
QTLIBC_API void QItemDelegate_OnMetacall(QItemDelegate* self, intptr_t slot);
QTLIBC_API int QItemDelegate_QBaseMetacall(QItemDelegate* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QItemDelegate_Tr(const char* s);
QTLIBC_API bool QItemDelegate_HasClipping(const QItemDelegate* self);
QTLIBC_API void QItemDelegate_SetClipping(QItemDelegate* self, bool clip);
QTLIBC_API void QItemDelegate_Paint(const QItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API void QItemDelegate_OnPaint(const QItemDelegate* self, intptr_t slot);
QTLIBC_API void QItemDelegate_QBasePaint(const QItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API QSize* QItemDelegate_SizeHint(const QItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API void QItemDelegate_OnSizeHint(const QItemDelegate* self, intptr_t slot);
QTLIBC_API QSize* QItemDelegate_QBaseSizeHint(const QItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API QWidget* QItemDelegate_CreateEditor(const QItemDelegate* self, QWidget* parent, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API void QItemDelegate_OnCreateEditor(const QItemDelegate* self, intptr_t slot);
QTLIBC_API QWidget* QItemDelegate_QBaseCreateEditor(const QItemDelegate* self, QWidget* parent, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API void QItemDelegate_SetEditorData(const QItemDelegate* self, QWidget* editor, QModelIndex* index);
QTLIBC_API void QItemDelegate_OnSetEditorData(const QItemDelegate* self, intptr_t slot);
QTLIBC_API void QItemDelegate_QBaseSetEditorData(const QItemDelegate* self, QWidget* editor, QModelIndex* index);
QTLIBC_API void QItemDelegate_SetModelData(const QItemDelegate* self, QWidget* editor, QAbstractItemModel* model, QModelIndex* index);
QTLIBC_API void QItemDelegate_OnSetModelData(const QItemDelegate* self, intptr_t slot);
QTLIBC_API void QItemDelegate_QBaseSetModelData(const QItemDelegate* self, QWidget* editor, QAbstractItemModel* model, QModelIndex* index);
QTLIBC_API void QItemDelegate_UpdateEditorGeometry(const QItemDelegate* self, QWidget* editor, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API void QItemDelegate_OnUpdateEditorGeometry(const QItemDelegate* self, intptr_t slot);
QTLIBC_API void QItemDelegate_QBaseUpdateEditorGeometry(const QItemDelegate* self, QWidget* editor, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API QItemEditorFactory* QItemDelegate_ItemEditorFactory(const QItemDelegate* self);
QTLIBC_API void QItemDelegate_SetItemEditorFactory(QItemDelegate* self, QItemEditorFactory* factory);
QTLIBC_API void QItemDelegate_DrawDisplay(const QItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QRect* rect, libqt_string text);
QTLIBC_API void QItemDelegate_OnDrawDisplay(const QItemDelegate* self, intptr_t slot);
QTLIBC_API void QItemDelegate_QBaseDrawDisplay(const QItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QRect* rect, libqt_string text);
QTLIBC_API void QItemDelegate_DrawDecoration(const QItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QRect* rect, QPixmap* pixmap);
QTLIBC_API void QItemDelegate_OnDrawDecoration(const QItemDelegate* self, intptr_t slot);
QTLIBC_API void QItemDelegate_QBaseDrawDecoration(const QItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QRect* rect, QPixmap* pixmap);
QTLIBC_API void QItemDelegate_DrawFocus(const QItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QRect* rect);
QTLIBC_API void QItemDelegate_OnDrawFocus(const QItemDelegate* self, intptr_t slot);
QTLIBC_API void QItemDelegate_QBaseDrawFocus(const QItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QRect* rect);
QTLIBC_API void QItemDelegate_DrawCheck(const QItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QRect* rect, int state);
QTLIBC_API void QItemDelegate_OnDrawCheck(const QItemDelegate* self, intptr_t slot);
QTLIBC_API void QItemDelegate_QBaseDrawCheck(const QItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QRect* rect, int state);
QTLIBC_API bool QItemDelegate_EventFilter(QItemDelegate* self, QObject* object, QEvent* event);
QTLIBC_API void QItemDelegate_OnEventFilter(QItemDelegate* self, intptr_t slot);
QTLIBC_API bool QItemDelegate_QBaseEventFilter(QItemDelegate* self, QObject* object, QEvent* event);
QTLIBC_API bool QItemDelegate_EditorEvent(QItemDelegate* self, QEvent* event, QAbstractItemModel* model, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API void QItemDelegate_OnEditorEvent(QItemDelegate* self, intptr_t slot);
QTLIBC_API bool QItemDelegate_QBaseEditorEvent(QItemDelegate* self, QEvent* event, QAbstractItemModel* model, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API libqt_string QItemDelegate_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QItemDelegate_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QItemDelegate_DestroyEditor(const QItemDelegate* self, QWidget* editor, QModelIndex* index);
QTLIBC_API void QItemDelegate_OnDestroyEditor(const QItemDelegate* self, intptr_t slot);
QTLIBC_API void QItemDelegate_QBaseDestroyEditor(const QItemDelegate* self, QWidget* editor, QModelIndex* index);
QTLIBC_API bool QItemDelegate_HelpEvent(QItemDelegate* self, QHelpEvent* event, QAbstractItemView* view, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API void QItemDelegate_OnHelpEvent(QItemDelegate* self, intptr_t slot);
QTLIBC_API bool QItemDelegate_QBaseHelpEvent(QItemDelegate* self, QHelpEvent* event, QAbstractItemView* view, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API libqt_list /* of int */ QItemDelegate_PaintingRoles(const QItemDelegate* self);
QTLIBC_API void QItemDelegate_OnPaintingRoles(const QItemDelegate* self, intptr_t slot);
QTLIBC_API libqt_list /* of int */ QItemDelegate_QBasePaintingRoles(const QItemDelegate* self);
QTLIBC_API bool QItemDelegate_Event(QItemDelegate* self, QEvent* event);
QTLIBC_API void QItemDelegate_OnEvent(QItemDelegate* self, intptr_t slot);
QTLIBC_API bool QItemDelegate_QBaseEvent(QItemDelegate* self, QEvent* event);
QTLIBC_API void QItemDelegate_TimerEvent(QItemDelegate* self, QTimerEvent* event);
QTLIBC_API void QItemDelegate_OnTimerEvent(QItemDelegate* self, intptr_t slot);
QTLIBC_API void QItemDelegate_QBaseTimerEvent(QItemDelegate* self, QTimerEvent* event);
QTLIBC_API void QItemDelegate_ChildEvent(QItemDelegate* self, QChildEvent* event);
QTLIBC_API void QItemDelegate_OnChildEvent(QItemDelegate* self, intptr_t slot);
QTLIBC_API void QItemDelegate_QBaseChildEvent(QItemDelegate* self, QChildEvent* event);
QTLIBC_API void QItemDelegate_CustomEvent(QItemDelegate* self, QEvent* event);
QTLIBC_API void QItemDelegate_OnCustomEvent(QItemDelegate* self, intptr_t slot);
QTLIBC_API void QItemDelegate_QBaseCustomEvent(QItemDelegate* self, QEvent* event);
QTLIBC_API void QItemDelegate_ConnectNotify(QItemDelegate* self, QMetaMethod* signal);
QTLIBC_API void QItemDelegate_OnConnectNotify(QItemDelegate* self, intptr_t slot);
QTLIBC_API void QItemDelegate_QBaseConnectNotify(QItemDelegate* self, QMetaMethod* signal);
QTLIBC_API void QItemDelegate_DisconnectNotify(QItemDelegate* self, QMetaMethod* signal);
QTLIBC_API void QItemDelegate_OnDisconnectNotify(QItemDelegate* self, intptr_t slot);
QTLIBC_API void QItemDelegate_QBaseDisconnectNotify(QItemDelegate* self, QMetaMethod* signal);
QTLIBC_API void QItemDelegate_DrawBackground(const QItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API void QItemDelegate_OnDrawBackground(const QItemDelegate* self, intptr_t slot);
QTLIBC_API void QItemDelegate_QBaseDrawBackground(const QItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index);
QTLIBC_API void QItemDelegate_DoLayout(const QItemDelegate* self, QStyleOptionViewItem* option, QRect* checkRect, QRect* iconRect, QRect* textRect, bool hint);
QTLIBC_API void QItemDelegate_OnDoLayout(const QItemDelegate* self, intptr_t slot);
QTLIBC_API void QItemDelegate_QBaseDoLayout(const QItemDelegate* self, QStyleOptionViewItem* option, QRect* checkRect, QRect* iconRect, QRect* textRect, bool hint);
QTLIBC_API QRect* QItemDelegate_Rect(const QItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index, int role);
QTLIBC_API void QItemDelegate_OnRect(const QItemDelegate* self, intptr_t slot);
QTLIBC_API QRect* QItemDelegate_QBaseRect(const QItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index, int role);
QTLIBC_API QStyleOptionViewItem* QItemDelegate_SetOptions(const QItemDelegate* self, QModelIndex* index, QStyleOptionViewItem* option);
QTLIBC_API void QItemDelegate_OnSetOptions(const QItemDelegate* self, intptr_t slot);
QTLIBC_API QStyleOptionViewItem* QItemDelegate_QBaseSetOptions(const QItemDelegate* self, QModelIndex* index, QStyleOptionViewItem* option);
QTLIBC_API QPixmap* QItemDelegate_Decoration(const QItemDelegate* self, QStyleOptionViewItem* option, QVariant* variant);
QTLIBC_API void QItemDelegate_OnDecoration(const QItemDelegate* self, intptr_t slot);
QTLIBC_API QPixmap* QItemDelegate_QBaseDecoration(const QItemDelegate* self, QStyleOptionViewItem* option, QVariant* variant);
QTLIBC_API QRect* QItemDelegate_DoCheck(const QItemDelegate* self, QStyleOptionViewItem* option, QRect* bounding, QVariant* variant);
QTLIBC_API void QItemDelegate_OnDoCheck(const QItemDelegate* self, intptr_t slot);
QTLIBC_API QRect* QItemDelegate_QBaseDoCheck(const QItemDelegate* self, QStyleOptionViewItem* option, QRect* bounding, QVariant* variant);
QTLIBC_API QRect* QItemDelegate_TextRectangle(const QItemDelegate* self, QPainter* painter, QRect* rect, QFont* font, libqt_string text);
QTLIBC_API void QItemDelegate_OnTextRectangle(const QItemDelegate* self, intptr_t slot);
QTLIBC_API QRect* QItemDelegate_QBaseTextRectangle(const QItemDelegate* self, QPainter* painter, QRect* rect, QFont* font, libqt_string text);
QTLIBC_API QObject* QItemDelegate_Sender(const QItemDelegate* self);
QTLIBC_API void QItemDelegate_OnSender(const QItemDelegate* self, intptr_t slot);
QTLIBC_API QObject* QItemDelegate_QBaseSender(const QItemDelegate* self);
QTLIBC_API int QItemDelegate_SenderSignalIndex(const QItemDelegate* self);
QTLIBC_API void QItemDelegate_OnSenderSignalIndex(const QItemDelegate* self, intptr_t slot);
QTLIBC_API int QItemDelegate_QBaseSenderSignalIndex(const QItemDelegate* self);
QTLIBC_API int QItemDelegate_Receivers(const QItemDelegate* self, const char* signal);
QTLIBC_API void QItemDelegate_OnReceivers(const QItemDelegate* self, intptr_t slot);
QTLIBC_API int QItemDelegate_QBaseReceivers(const QItemDelegate* self, const char* signal);
QTLIBC_API bool QItemDelegate_IsSignalConnected(const QItemDelegate* self, QMetaMethod* signal);
QTLIBC_API void QItemDelegate_OnIsSignalConnected(const QItemDelegate* self, intptr_t slot);
QTLIBC_API bool QItemDelegate_QBaseIsSignalConnected(const QItemDelegate* self, QMetaMethod* signal);
QTLIBC_API void QItemDelegate_Delete(QItemDelegate* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
