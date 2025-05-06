#pragma once
#ifndef SRCC_LIBQTOOLBOX_H
#define SRCC_LIBQTOOLBOX_H

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
typedef struct QAction QAction;
typedef struct QActionEvent QActionEvent;
typedef struct QAnyStringView QAnyStringView;
typedef struct QBackingStore QBackingStore;
typedef struct QBindingStorage QBindingStorage;
typedef struct QBitmap QBitmap;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QCursor QCursor;
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
typedef struct QEnterEvent QEnterEvent;
typedef struct QEvent QEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QFont QFont;
typedef struct QFontInfo QFontInfo;
typedef struct QFontMetrics QFontMetrics;
typedef struct QFrame QFrame;
typedef struct QGraphicsEffect QGraphicsEffect;
typedef struct QGraphicsProxyWidget QGraphicsProxyWidget;
typedef struct QHideEvent QHideEvent;
typedef struct QIcon QIcon;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QKeyEvent QKeyEvent;
typedef struct QKeySequence QKeySequence;
typedef struct QLayout QLayout;
typedef struct QLocale QLocale;
typedef struct QMargins QMargins;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QMouseEvent QMouseEvent;
typedef struct QMoveEvent QMoveEvent;
typedef struct QObject QObject;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPaintEvent QPaintEvent;
typedef struct QPainter QPainter;
typedef struct QPalette QPalette;
typedef struct QPixmap QPixmap;
typedef struct QPoint QPoint;
typedef struct QPointF QPointF;
typedef struct QRect QRect;
typedef struct QRegion QRegion;
typedef struct QResizeEvent QResizeEvent;
typedef struct QScreen QScreen;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QSizePolicy QSizePolicy;
typedef struct QStyle QStyle;
typedef struct QStyleOptionFrame QStyleOptionFrame;
typedef struct QTabletEvent QTabletEvent;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QToolBox QToolBox;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
typedef struct QWindow QWindow;
#endif

QTLIBC_API QToolBox* QToolBox_new(QWidget* parent);
QTLIBC_API QToolBox* QToolBox_new2();
QTLIBC_API QToolBox* QToolBox_new3(QWidget* parent, int f);
QTLIBC_API QMetaObject* QToolBox_MetaObject(const QToolBox* self);
QTLIBC_API void* QToolBox_Metacast(QToolBox* self, const char* param1);
QTLIBC_API int QToolBox_Metacall(QToolBox* self, int param1, int param2, void** param3);
QTLIBC_API void QToolBox_OnMetacall(QToolBox* self, intptr_t slot);
QTLIBC_API int QToolBox_QBaseMetacall(QToolBox* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QToolBox_Tr(const char* s);
QTLIBC_API int QToolBox_AddItem(QToolBox* self, QWidget* widget, libqt_string text);
QTLIBC_API int QToolBox_AddItem2(QToolBox* self, QWidget* widget, QIcon* icon, libqt_string text);
QTLIBC_API int QToolBox_InsertItem(QToolBox* self, int index, QWidget* widget, libqt_string text);
QTLIBC_API int QToolBox_InsertItem2(QToolBox* self, int index, QWidget* widget, QIcon* icon, libqt_string text);
QTLIBC_API void QToolBox_RemoveItem(QToolBox* self, int index);
QTLIBC_API void QToolBox_SetItemEnabled(QToolBox* self, int index, bool enabled);
QTLIBC_API bool QToolBox_IsItemEnabled(const QToolBox* self, int index);
QTLIBC_API void QToolBox_SetItemText(QToolBox* self, int index, libqt_string text);
QTLIBC_API libqt_string QToolBox_ItemText(const QToolBox* self, int index);
QTLIBC_API void QToolBox_SetItemIcon(QToolBox* self, int index, QIcon* icon);
QTLIBC_API QIcon* QToolBox_ItemIcon(const QToolBox* self, int index);
QTLIBC_API void QToolBox_SetItemToolTip(QToolBox* self, int index, libqt_string toolTip);
QTLIBC_API libqt_string QToolBox_ItemToolTip(const QToolBox* self, int index);
QTLIBC_API int QToolBox_CurrentIndex(const QToolBox* self);
QTLIBC_API QWidget* QToolBox_CurrentWidget(const QToolBox* self);
QTLIBC_API QWidget* QToolBox_Widget(const QToolBox* self, int index);
QTLIBC_API int QToolBox_IndexOf(const QToolBox* self, QWidget* widget);
QTLIBC_API int QToolBox_Count(const QToolBox* self);
QTLIBC_API void QToolBox_SetCurrentIndex(QToolBox* self, int index);
QTLIBC_API void QToolBox_SetCurrentWidget(QToolBox* self, QWidget* widget);
QTLIBC_API void QToolBox_CurrentChanged(QToolBox* self, int index);
void QToolBox_Connect_CurrentChanged(QToolBox* self, intptr_t slot);
QTLIBC_API bool QToolBox_Event(QToolBox* self, QEvent* e);
QTLIBC_API void QToolBox_OnEvent(QToolBox* self, intptr_t slot);
QTLIBC_API bool QToolBox_QBaseEvent(QToolBox* self, QEvent* e);
QTLIBC_API void QToolBox_ItemInserted(QToolBox* self, int index);
QTLIBC_API void QToolBox_OnItemInserted(QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseItemInserted(QToolBox* self, int index);
QTLIBC_API void QToolBox_ItemRemoved(QToolBox* self, int index);
QTLIBC_API void QToolBox_OnItemRemoved(QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseItemRemoved(QToolBox* self, int index);
QTLIBC_API void QToolBox_ShowEvent(QToolBox* self, QShowEvent* e);
QTLIBC_API void QToolBox_OnShowEvent(QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseShowEvent(QToolBox* self, QShowEvent* e);
QTLIBC_API void QToolBox_ChangeEvent(QToolBox* self, QEvent* param1);
QTLIBC_API void QToolBox_OnChangeEvent(QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseChangeEvent(QToolBox* self, QEvent* param1);
QTLIBC_API libqt_string QToolBox_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QToolBox_Tr3(const char* s, const char* c, int n);
QTLIBC_API QSize* QToolBox_SizeHint(const QToolBox* self);
QTLIBC_API void QToolBox_OnSizeHint(const QToolBox* self, intptr_t slot);
QTLIBC_API QSize* QToolBox_QBaseSizeHint(const QToolBox* self);
QTLIBC_API void QToolBox_PaintEvent(QToolBox* self, QPaintEvent* param1);
QTLIBC_API void QToolBox_OnPaintEvent(QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBasePaintEvent(QToolBox* self, QPaintEvent* param1);
QTLIBC_API int QToolBox_DevType(const QToolBox* self);
QTLIBC_API void QToolBox_OnDevType(const QToolBox* self, intptr_t slot);
QTLIBC_API int QToolBox_QBaseDevType(const QToolBox* self);
QTLIBC_API void QToolBox_SetVisible(QToolBox* self, bool visible);
QTLIBC_API void QToolBox_OnSetVisible(QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseSetVisible(QToolBox* self, bool visible);
QTLIBC_API QSize* QToolBox_MinimumSizeHint(const QToolBox* self);
QTLIBC_API void QToolBox_OnMinimumSizeHint(const QToolBox* self, intptr_t slot);
QTLIBC_API QSize* QToolBox_QBaseMinimumSizeHint(const QToolBox* self);
QTLIBC_API int QToolBox_HeightForWidth(const QToolBox* self, int param1);
QTLIBC_API void QToolBox_OnHeightForWidth(const QToolBox* self, intptr_t slot);
QTLIBC_API int QToolBox_QBaseHeightForWidth(const QToolBox* self, int param1);
QTLIBC_API bool QToolBox_HasHeightForWidth(const QToolBox* self);
QTLIBC_API void QToolBox_OnHasHeightForWidth(const QToolBox* self, intptr_t slot);
QTLIBC_API bool QToolBox_QBaseHasHeightForWidth(const QToolBox* self);
QTLIBC_API QPaintEngine* QToolBox_PaintEngine(const QToolBox* self);
QTLIBC_API void QToolBox_OnPaintEngine(const QToolBox* self, intptr_t slot);
QTLIBC_API QPaintEngine* QToolBox_QBasePaintEngine(const QToolBox* self);
QTLIBC_API void QToolBox_MousePressEvent(QToolBox* self, QMouseEvent* event);
QTLIBC_API void QToolBox_OnMousePressEvent(QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseMousePressEvent(QToolBox* self, QMouseEvent* event);
QTLIBC_API void QToolBox_MouseReleaseEvent(QToolBox* self, QMouseEvent* event);
QTLIBC_API void QToolBox_OnMouseReleaseEvent(QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseMouseReleaseEvent(QToolBox* self, QMouseEvent* event);
QTLIBC_API void QToolBox_MouseDoubleClickEvent(QToolBox* self, QMouseEvent* event);
QTLIBC_API void QToolBox_OnMouseDoubleClickEvent(QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseMouseDoubleClickEvent(QToolBox* self, QMouseEvent* event);
QTLIBC_API void QToolBox_MouseMoveEvent(QToolBox* self, QMouseEvent* event);
QTLIBC_API void QToolBox_OnMouseMoveEvent(QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseMouseMoveEvent(QToolBox* self, QMouseEvent* event);
QTLIBC_API void QToolBox_WheelEvent(QToolBox* self, QWheelEvent* event);
QTLIBC_API void QToolBox_OnWheelEvent(QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseWheelEvent(QToolBox* self, QWheelEvent* event);
QTLIBC_API void QToolBox_KeyPressEvent(QToolBox* self, QKeyEvent* event);
QTLIBC_API void QToolBox_OnKeyPressEvent(QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseKeyPressEvent(QToolBox* self, QKeyEvent* event);
QTLIBC_API void QToolBox_KeyReleaseEvent(QToolBox* self, QKeyEvent* event);
QTLIBC_API void QToolBox_OnKeyReleaseEvent(QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseKeyReleaseEvent(QToolBox* self, QKeyEvent* event);
QTLIBC_API void QToolBox_FocusInEvent(QToolBox* self, QFocusEvent* event);
QTLIBC_API void QToolBox_OnFocusInEvent(QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseFocusInEvent(QToolBox* self, QFocusEvent* event);
QTLIBC_API void QToolBox_FocusOutEvent(QToolBox* self, QFocusEvent* event);
QTLIBC_API void QToolBox_OnFocusOutEvent(QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseFocusOutEvent(QToolBox* self, QFocusEvent* event);
QTLIBC_API void QToolBox_EnterEvent(QToolBox* self, QEnterEvent* event);
QTLIBC_API void QToolBox_OnEnterEvent(QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseEnterEvent(QToolBox* self, QEnterEvent* event);
QTLIBC_API void QToolBox_LeaveEvent(QToolBox* self, QEvent* event);
QTLIBC_API void QToolBox_OnLeaveEvent(QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseLeaveEvent(QToolBox* self, QEvent* event);
QTLIBC_API void QToolBox_MoveEvent(QToolBox* self, QMoveEvent* event);
QTLIBC_API void QToolBox_OnMoveEvent(QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseMoveEvent(QToolBox* self, QMoveEvent* event);
QTLIBC_API void QToolBox_ResizeEvent(QToolBox* self, QResizeEvent* event);
QTLIBC_API void QToolBox_OnResizeEvent(QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseResizeEvent(QToolBox* self, QResizeEvent* event);
QTLIBC_API void QToolBox_CloseEvent(QToolBox* self, QCloseEvent* event);
QTLIBC_API void QToolBox_OnCloseEvent(QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseCloseEvent(QToolBox* self, QCloseEvent* event);
QTLIBC_API void QToolBox_ContextMenuEvent(QToolBox* self, QContextMenuEvent* event);
QTLIBC_API void QToolBox_OnContextMenuEvent(QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseContextMenuEvent(QToolBox* self, QContextMenuEvent* event);
QTLIBC_API void QToolBox_TabletEvent(QToolBox* self, QTabletEvent* event);
QTLIBC_API void QToolBox_OnTabletEvent(QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseTabletEvent(QToolBox* self, QTabletEvent* event);
QTLIBC_API void QToolBox_ActionEvent(QToolBox* self, QActionEvent* event);
QTLIBC_API void QToolBox_OnActionEvent(QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseActionEvent(QToolBox* self, QActionEvent* event);
QTLIBC_API void QToolBox_DragEnterEvent(QToolBox* self, QDragEnterEvent* event);
QTLIBC_API void QToolBox_OnDragEnterEvent(QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseDragEnterEvent(QToolBox* self, QDragEnterEvent* event);
QTLIBC_API void QToolBox_DragMoveEvent(QToolBox* self, QDragMoveEvent* event);
QTLIBC_API void QToolBox_OnDragMoveEvent(QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseDragMoveEvent(QToolBox* self, QDragMoveEvent* event);
QTLIBC_API void QToolBox_DragLeaveEvent(QToolBox* self, QDragLeaveEvent* event);
QTLIBC_API void QToolBox_OnDragLeaveEvent(QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseDragLeaveEvent(QToolBox* self, QDragLeaveEvent* event);
QTLIBC_API void QToolBox_DropEvent(QToolBox* self, QDropEvent* event);
QTLIBC_API void QToolBox_OnDropEvent(QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseDropEvent(QToolBox* self, QDropEvent* event);
QTLIBC_API void QToolBox_HideEvent(QToolBox* self, QHideEvent* event);
QTLIBC_API void QToolBox_OnHideEvent(QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseHideEvent(QToolBox* self, QHideEvent* event);
QTLIBC_API bool QToolBox_NativeEvent(QToolBox* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QToolBox_OnNativeEvent(QToolBox* self, intptr_t slot);
QTLIBC_API bool QToolBox_QBaseNativeEvent(QToolBox* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QToolBox_InputMethodEvent(QToolBox* self, QInputMethodEvent* param1);
QTLIBC_API void QToolBox_OnInputMethodEvent(QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseInputMethodEvent(QToolBox* self, QInputMethodEvent* param1);
QTLIBC_API QVariant* QToolBox_InputMethodQuery(const QToolBox* self, int param1);
QTLIBC_API void QToolBox_OnInputMethodQuery(const QToolBox* self, intptr_t slot);
QTLIBC_API QVariant* QToolBox_QBaseInputMethodQuery(const QToolBox* self, int param1);
QTLIBC_API bool QToolBox_FocusNextPrevChild(QToolBox* self, bool next);
QTLIBC_API void QToolBox_OnFocusNextPrevChild(QToolBox* self, intptr_t slot);
QTLIBC_API bool QToolBox_QBaseFocusNextPrevChild(QToolBox* self, bool next);
QTLIBC_API bool QToolBox_EventFilter(QToolBox* self, QObject* watched, QEvent* event);
QTLIBC_API void QToolBox_OnEventFilter(QToolBox* self, intptr_t slot);
QTLIBC_API bool QToolBox_QBaseEventFilter(QToolBox* self, QObject* watched, QEvent* event);
QTLIBC_API void QToolBox_TimerEvent(QToolBox* self, QTimerEvent* event);
QTLIBC_API void QToolBox_OnTimerEvent(QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseTimerEvent(QToolBox* self, QTimerEvent* event);
QTLIBC_API void QToolBox_ChildEvent(QToolBox* self, QChildEvent* event);
QTLIBC_API void QToolBox_OnChildEvent(QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseChildEvent(QToolBox* self, QChildEvent* event);
QTLIBC_API void QToolBox_CustomEvent(QToolBox* self, QEvent* event);
QTLIBC_API void QToolBox_OnCustomEvent(QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseCustomEvent(QToolBox* self, QEvent* event);
QTLIBC_API void QToolBox_ConnectNotify(QToolBox* self, QMetaMethod* signal);
QTLIBC_API void QToolBox_OnConnectNotify(QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseConnectNotify(QToolBox* self, QMetaMethod* signal);
QTLIBC_API void QToolBox_DisconnectNotify(QToolBox* self, QMetaMethod* signal);
QTLIBC_API void QToolBox_OnDisconnectNotify(QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseDisconnectNotify(QToolBox* self, QMetaMethod* signal);
QTLIBC_API void QToolBox_InitStyleOption(const QToolBox* self, QStyleOptionFrame* option);
QTLIBC_API void QToolBox_OnInitStyleOption(const QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseInitStyleOption(const QToolBox* self, QStyleOptionFrame* option);
QTLIBC_API int QToolBox_Metric(const QToolBox* self, int param1);
QTLIBC_API void QToolBox_OnMetric(const QToolBox* self, intptr_t slot);
QTLIBC_API int QToolBox_QBaseMetric(const QToolBox* self, int param1);
QTLIBC_API void QToolBox_InitPainter(const QToolBox* self, QPainter* painter);
QTLIBC_API void QToolBox_OnInitPainter(const QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseInitPainter(const QToolBox* self, QPainter* painter);
QTLIBC_API QPaintDevice* QToolBox_Redirected(const QToolBox* self, QPoint* offset);
QTLIBC_API void QToolBox_OnRedirected(const QToolBox* self, intptr_t slot);
QTLIBC_API QPaintDevice* QToolBox_QBaseRedirected(const QToolBox* self, QPoint* offset);
QTLIBC_API QPainter* QToolBox_SharedPainter(const QToolBox* self);
QTLIBC_API void QToolBox_OnSharedPainter(const QToolBox* self, intptr_t slot);
QTLIBC_API QPainter* QToolBox_QBaseSharedPainter(const QToolBox* self);
QTLIBC_API void QToolBox_DrawFrame(QToolBox* self, QPainter* param1);
QTLIBC_API void QToolBox_OnDrawFrame(QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseDrawFrame(QToolBox* self, QPainter* param1);
QTLIBC_API void QToolBox_UpdateMicroFocus(QToolBox* self);
QTLIBC_API void QToolBox_OnUpdateMicroFocus(QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseUpdateMicroFocus(QToolBox* self);
QTLIBC_API void QToolBox_Create(QToolBox* self);
QTLIBC_API void QToolBox_OnCreate(QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseCreate(QToolBox* self);
QTLIBC_API void QToolBox_Destroy(QToolBox* self);
QTLIBC_API void QToolBox_OnDestroy(QToolBox* self, intptr_t slot);
QTLIBC_API void QToolBox_QBaseDestroy(QToolBox* self);
QTLIBC_API bool QToolBox_FocusNextChild(QToolBox* self);
QTLIBC_API void QToolBox_OnFocusNextChild(QToolBox* self, intptr_t slot);
QTLIBC_API bool QToolBox_QBaseFocusNextChild(QToolBox* self);
QTLIBC_API bool QToolBox_FocusPreviousChild(QToolBox* self);
QTLIBC_API void QToolBox_OnFocusPreviousChild(QToolBox* self, intptr_t slot);
QTLIBC_API bool QToolBox_QBaseFocusPreviousChild(QToolBox* self);
QTLIBC_API QObject* QToolBox_Sender(const QToolBox* self);
QTLIBC_API void QToolBox_OnSender(const QToolBox* self, intptr_t slot);
QTLIBC_API QObject* QToolBox_QBaseSender(const QToolBox* self);
QTLIBC_API int QToolBox_SenderSignalIndex(const QToolBox* self);
QTLIBC_API void QToolBox_OnSenderSignalIndex(const QToolBox* self, intptr_t slot);
QTLIBC_API int QToolBox_QBaseSenderSignalIndex(const QToolBox* self);
QTLIBC_API int QToolBox_Receivers(const QToolBox* self, const char* signal);
QTLIBC_API void QToolBox_OnReceivers(const QToolBox* self, intptr_t slot);
QTLIBC_API int QToolBox_QBaseReceivers(const QToolBox* self, const char* signal);
QTLIBC_API bool QToolBox_IsSignalConnected(const QToolBox* self, QMetaMethod* signal);
QTLIBC_API void QToolBox_OnIsSignalConnected(const QToolBox* self, intptr_t slot);
QTLIBC_API bool QToolBox_QBaseIsSignalConnected(const QToolBox* self, QMetaMethod* signal);
QTLIBC_API void QToolBox_Delete(QToolBox* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
