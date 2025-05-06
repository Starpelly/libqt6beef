#pragma once
#ifndef SRC_QTC_LIBQTABWIDGET_H
#define SRC_QTC_LIBQTABWIDGET_H

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
typedef struct QStyleOptionTabWidgetFrame QStyleOptionTabWidgetFrame;
typedef struct QTabBar QTabBar;
typedef struct QTabWidget QTabWidget;
typedef struct QTabletEvent QTabletEvent;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
typedef struct QWindow QWindow;
#endif

#ifdef __cplusplus
typedef QTabWidget::TabPosition TabPosition; // C++ enum
typedef QTabWidget::TabShape TabShape;       // C++ enum
#else
typedef int TabPosition; // C ABI enum
typedef int TabShape;    // C ABI enum
#endif

QTLIBC_API QTabWidget* QTabWidget_new(QWidget* parent);
QTLIBC_API QTabWidget* QTabWidget_new2();
QTLIBC_API QMetaObject* QTabWidget_MetaObject(const QTabWidget* self);
QTLIBC_API void* QTabWidget_Metacast(QTabWidget* self, const char* param1);
QTLIBC_API int QTabWidget_Metacall(QTabWidget* self, int param1, int param2, void** param3);
QTLIBC_API void QTabWidget_OnMetacall(QTabWidget* self, intptr_t slot);
QTLIBC_API int QTabWidget_QBaseMetacall(QTabWidget* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QTabWidget_Tr(const char* s);
QTLIBC_API int QTabWidget_AddTab(QTabWidget* self, QWidget* widget, libqt_string param2);
QTLIBC_API int QTabWidget_AddTab2(QTabWidget* self, QWidget* widget, QIcon* icon, libqt_string label);
QTLIBC_API int QTabWidget_InsertTab(QTabWidget* self, int index, QWidget* widget, libqt_string param3);
QTLIBC_API int QTabWidget_InsertTab2(QTabWidget* self, int index, QWidget* widget, QIcon* icon, libqt_string label);
QTLIBC_API void QTabWidget_RemoveTab(QTabWidget* self, int index);
QTLIBC_API bool QTabWidget_IsTabEnabled(const QTabWidget* self, int index);
QTLIBC_API void QTabWidget_SetTabEnabled(QTabWidget* self, int index, bool enabled);
QTLIBC_API bool QTabWidget_IsTabVisible(const QTabWidget* self, int index);
QTLIBC_API void QTabWidget_SetTabVisible(QTabWidget* self, int index, bool visible);
QTLIBC_API libqt_string QTabWidget_TabText(const QTabWidget* self, int index);
QTLIBC_API void QTabWidget_SetTabText(QTabWidget* self, int index, libqt_string text);
QTLIBC_API QIcon* QTabWidget_TabIcon(const QTabWidget* self, int index);
QTLIBC_API void QTabWidget_SetTabIcon(QTabWidget* self, int index, QIcon* icon);
QTLIBC_API void QTabWidget_SetTabToolTip(QTabWidget* self, int index, libqt_string tip);
QTLIBC_API libqt_string QTabWidget_TabToolTip(const QTabWidget* self, int index);
QTLIBC_API void QTabWidget_SetTabWhatsThis(QTabWidget* self, int index, libqt_string text);
QTLIBC_API libqt_string QTabWidget_TabWhatsThis(const QTabWidget* self, int index);
QTLIBC_API int QTabWidget_CurrentIndex(const QTabWidget* self);
QTLIBC_API QWidget* QTabWidget_CurrentWidget(const QTabWidget* self);
QTLIBC_API QWidget* QTabWidget_Widget(const QTabWidget* self, int index);
QTLIBC_API int QTabWidget_IndexOf(const QTabWidget* self, QWidget* widget);
QTLIBC_API int QTabWidget_Count(const QTabWidget* self);
QTLIBC_API int QTabWidget_TabPosition(const QTabWidget* self);
QTLIBC_API void QTabWidget_SetTabPosition(QTabWidget* self, int position);
QTLIBC_API bool QTabWidget_TabsClosable(const QTabWidget* self);
QTLIBC_API void QTabWidget_SetTabsClosable(QTabWidget* self, bool closeable);
QTLIBC_API bool QTabWidget_IsMovable(const QTabWidget* self);
QTLIBC_API void QTabWidget_SetMovable(QTabWidget* self, bool movable);
QTLIBC_API int QTabWidget_TabShape(const QTabWidget* self);
QTLIBC_API void QTabWidget_SetTabShape(QTabWidget* self, int s);
QTLIBC_API QSize* QTabWidget_SizeHint(const QTabWidget* self);
QTLIBC_API void QTabWidget_OnSizeHint(const QTabWidget* self, intptr_t slot);
QTLIBC_API QSize* QTabWidget_QBaseSizeHint(const QTabWidget* self);
QTLIBC_API QSize* QTabWidget_MinimumSizeHint(const QTabWidget* self);
QTLIBC_API void QTabWidget_OnMinimumSizeHint(const QTabWidget* self, intptr_t slot);
QTLIBC_API QSize* QTabWidget_QBaseMinimumSizeHint(const QTabWidget* self);
QTLIBC_API int QTabWidget_HeightForWidth(const QTabWidget* self, int width);
QTLIBC_API void QTabWidget_OnHeightForWidth(const QTabWidget* self, intptr_t slot);
QTLIBC_API int QTabWidget_QBaseHeightForWidth(const QTabWidget* self, int width);
QTLIBC_API bool QTabWidget_HasHeightForWidth(const QTabWidget* self);
QTLIBC_API void QTabWidget_OnHasHeightForWidth(const QTabWidget* self, intptr_t slot);
QTLIBC_API bool QTabWidget_QBaseHasHeightForWidth(const QTabWidget* self);
QTLIBC_API void QTabWidget_SetCornerWidget(QTabWidget* self, QWidget* w);
QTLIBC_API QWidget* QTabWidget_CornerWidget(const QTabWidget* self);
QTLIBC_API int QTabWidget_ElideMode(const QTabWidget* self);
QTLIBC_API void QTabWidget_SetElideMode(QTabWidget* self, int mode);
QTLIBC_API QSize* QTabWidget_IconSize(const QTabWidget* self);
QTLIBC_API void QTabWidget_SetIconSize(QTabWidget* self, QSize* size);
QTLIBC_API bool QTabWidget_UsesScrollButtons(const QTabWidget* self);
QTLIBC_API void QTabWidget_SetUsesScrollButtons(QTabWidget* self, bool useButtons);
QTLIBC_API bool QTabWidget_DocumentMode(const QTabWidget* self);
QTLIBC_API void QTabWidget_SetDocumentMode(QTabWidget* self, bool set);
QTLIBC_API bool QTabWidget_TabBarAutoHide(const QTabWidget* self);
QTLIBC_API void QTabWidget_SetTabBarAutoHide(QTabWidget* self, bool enabled);
QTLIBC_API void QTabWidget_Clear(QTabWidget* self);
QTLIBC_API QTabBar* QTabWidget_TabBar(const QTabWidget* self);
QTLIBC_API void QTabWidget_SetCurrentIndex(QTabWidget* self, int index);
QTLIBC_API void QTabWidget_SetCurrentWidget(QTabWidget* self, QWidget* widget);
QTLIBC_API void QTabWidget_CurrentChanged(QTabWidget* self, int index);
QTLIBC_API void QTabWidget_Connect_CurrentChanged(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_TabCloseRequested(QTabWidget* self, int index);
QTLIBC_API void QTabWidget_Connect_TabCloseRequested(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_TabBarClicked(QTabWidget* self, int index);
QTLIBC_API void QTabWidget_Connect_TabBarClicked(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_TabBarDoubleClicked(QTabWidget* self, int index);
QTLIBC_API void QTabWidget_Connect_TabBarDoubleClicked(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_TabInserted(QTabWidget* self, int index);
QTLIBC_API void QTabWidget_OnTabInserted(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseTabInserted(QTabWidget* self, int index);
QTLIBC_API void QTabWidget_TabRemoved(QTabWidget* self, int index);
QTLIBC_API void QTabWidget_OnTabRemoved(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseTabRemoved(QTabWidget* self, int index);
QTLIBC_API void QTabWidget_ShowEvent(QTabWidget* self, QShowEvent* param1);
QTLIBC_API void QTabWidget_OnShowEvent(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseShowEvent(QTabWidget* self, QShowEvent* param1);
QTLIBC_API void QTabWidget_ResizeEvent(QTabWidget* self, QResizeEvent* param1);
QTLIBC_API void QTabWidget_OnResizeEvent(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseResizeEvent(QTabWidget* self, QResizeEvent* param1);
QTLIBC_API void QTabWidget_KeyPressEvent(QTabWidget* self, QKeyEvent* param1);
QTLIBC_API void QTabWidget_OnKeyPressEvent(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseKeyPressEvent(QTabWidget* self, QKeyEvent* param1);
QTLIBC_API void QTabWidget_PaintEvent(QTabWidget* self, QPaintEvent* param1);
QTLIBC_API void QTabWidget_OnPaintEvent(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBasePaintEvent(QTabWidget* self, QPaintEvent* param1);
QTLIBC_API void QTabWidget_ChangeEvent(QTabWidget* self, QEvent* param1);
QTLIBC_API void QTabWidget_OnChangeEvent(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseChangeEvent(QTabWidget* self, QEvent* param1);
QTLIBC_API bool QTabWidget_Event(QTabWidget* self, QEvent* param1);
QTLIBC_API void QTabWidget_OnEvent(QTabWidget* self, intptr_t slot);
QTLIBC_API bool QTabWidget_QBaseEvent(QTabWidget* self, QEvent* param1);
QTLIBC_API void QTabWidget_InitStyleOption(const QTabWidget* self, QStyleOptionTabWidgetFrame* option);
QTLIBC_API void QTabWidget_OnInitStyleOption(const QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseInitStyleOption(const QTabWidget* self, QStyleOptionTabWidgetFrame* option);
QTLIBC_API libqt_string QTabWidget_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QTabWidget_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QTabWidget_SetCornerWidget2(QTabWidget* self, QWidget* w, int corner);
QTLIBC_API QWidget* QTabWidget_CornerWidget1(const QTabWidget* self, int corner);
QTLIBC_API int QTabWidget_DevType(const QTabWidget* self);
QTLIBC_API void QTabWidget_OnDevType(const QTabWidget* self, intptr_t slot);
QTLIBC_API int QTabWidget_QBaseDevType(const QTabWidget* self);
QTLIBC_API void QTabWidget_SetVisible(QTabWidget* self, bool visible);
QTLIBC_API void QTabWidget_OnSetVisible(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseSetVisible(QTabWidget* self, bool visible);
QTLIBC_API QPaintEngine* QTabWidget_PaintEngine(const QTabWidget* self);
QTLIBC_API void QTabWidget_OnPaintEngine(const QTabWidget* self, intptr_t slot);
QTLIBC_API QPaintEngine* QTabWidget_QBasePaintEngine(const QTabWidget* self);
QTLIBC_API void QTabWidget_MousePressEvent(QTabWidget* self, QMouseEvent* event);
QTLIBC_API void QTabWidget_OnMousePressEvent(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseMousePressEvent(QTabWidget* self, QMouseEvent* event);
QTLIBC_API void QTabWidget_MouseReleaseEvent(QTabWidget* self, QMouseEvent* event);
QTLIBC_API void QTabWidget_OnMouseReleaseEvent(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseMouseReleaseEvent(QTabWidget* self, QMouseEvent* event);
QTLIBC_API void QTabWidget_MouseDoubleClickEvent(QTabWidget* self, QMouseEvent* event);
QTLIBC_API void QTabWidget_OnMouseDoubleClickEvent(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseMouseDoubleClickEvent(QTabWidget* self, QMouseEvent* event);
QTLIBC_API void QTabWidget_MouseMoveEvent(QTabWidget* self, QMouseEvent* event);
QTLIBC_API void QTabWidget_OnMouseMoveEvent(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseMouseMoveEvent(QTabWidget* self, QMouseEvent* event);
QTLIBC_API void QTabWidget_WheelEvent(QTabWidget* self, QWheelEvent* event);
QTLIBC_API void QTabWidget_OnWheelEvent(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseWheelEvent(QTabWidget* self, QWheelEvent* event);
QTLIBC_API void QTabWidget_KeyReleaseEvent(QTabWidget* self, QKeyEvent* event);
QTLIBC_API void QTabWidget_OnKeyReleaseEvent(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseKeyReleaseEvent(QTabWidget* self, QKeyEvent* event);
QTLIBC_API void QTabWidget_FocusInEvent(QTabWidget* self, QFocusEvent* event);
QTLIBC_API void QTabWidget_OnFocusInEvent(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseFocusInEvent(QTabWidget* self, QFocusEvent* event);
QTLIBC_API void QTabWidget_FocusOutEvent(QTabWidget* self, QFocusEvent* event);
QTLIBC_API void QTabWidget_OnFocusOutEvent(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseFocusOutEvent(QTabWidget* self, QFocusEvent* event);
QTLIBC_API void QTabWidget_EnterEvent(QTabWidget* self, QEnterEvent* event);
QTLIBC_API void QTabWidget_OnEnterEvent(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseEnterEvent(QTabWidget* self, QEnterEvent* event);
QTLIBC_API void QTabWidget_LeaveEvent(QTabWidget* self, QEvent* event);
QTLIBC_API void QTabWidget_OnLeaveEvent(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseLeaveEvent(QTabWidget* self, QEvent* event);
QTLIBC_API void QTabWidget_MoveEvent(QTabWidget* self, QMoveEvent* event);
QTLIBC_API void QTabWidget_OnMoveEvent(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseMoveEvent(QTabWidget* self, QMoveEvent* event);
QTLIBC_API void QTabWidget_CloseEvent(QTabWidget* self, QCloseEvent* event);
QTLIBC_API void QTabWidget_OnCloseEvent(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseCloseEvent(QTabWidget* self, QCloseEvent* event);
QTLIBC_API void QTabWidget_ContextMenuEvent(QTabWidget* self, QContextMenuEvent* event);
QTLIBC_API void QTabWidget_OnContextMenuEvent(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseContextMenuEvent(QTabWidget* self, QContextMenuEvent* event);
QTLIBC_API void QTabWidget_TabletEvent(QTabWidget* self, QTabletEvent* event);
QTLIBC_API void QTabWidget_OnTabletEvent(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseTabletEvent(QTabWidget* self, QTabletEvent* event);
QTLIBC_API void QTabWidget_ActionEvent(QTabWidget* self, QActionEvent* event);
QTLIBC_API void QTabWidget_OnActionEvent(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseActionEvent(QTabWidget* self, QActionEvent* event);
QTLIBC_API void QTabWidget_DragEnterEvent(QTabWidget* self, QDragEnterEvent* event);
QTLIBC_API void QTabWidget_OnDragEnterEvent(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseDragEnterEvent(QTabWidget* self, QDragEnterEvent* event);
QTLIBC_API void QTabWidget_DragMoveEvent(QTabWidget* self, QDragMoveEvent* event);
QTLIBC_API void QTabWidget_OnDragMoveEvent(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseDragMoveEvent(QTabWidget* self, QDragMoveEvent* event);
QTLIBC_API void QTabWidget_DragLeaveEvent(QTabWidget* self, QDragLeaveEvent* event);
QTLIBC_API void QTabWidget_OnDragLeaveEvent(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseDragLeaveEvent(QTabWidget* self, QDragLeaveEvent* event);
QTLIBC_API void QTabWidget_DropEvent(QTabWidget* self, QDropEvent* event);
QTLIBC_API void QTabWidget_OnDropEvent(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseDropEvent(QTabWidget* self, QDropEvent* event);
QTLIBC_API void QTabWidget_HideEvent(QTabWidget* self, QHideEvent* event);
QTLIBC_API void QTabWidget_OnHideEvent(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseHideEvent(QTabWidget* self, QHideEvent* event);
QTLIBC_API bool QTabWidget_NativeEvent(QTabWidget* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QTabWidget_OnNativeEvent(QTabWidget* self, intptr_t slot);
QTLIBC_API bool QTabWidget_QBaseNativeEvent(QTabWidget* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QTabWidget_InputMethodEvent(QTabWidget* self, QInputMethodEvent* param1);
QTLIBC_API void QTabWidget_OnInputMethodEvent(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseInputMethodEvent(QTabWidget* self, QInputMethodEvent* param1);
QTLIBC_API QVariant* QTabWidget_InputMethodQuery(const QTabWidget* self, int param1);
QTLIBC_API void QTabWidget_OnInputMethodQuery(const QTabWidget* self, intptr_t slot);
QTLIBC_API QVariant* QTabWidget_QBaseInputMethodQuery(const QTabWidget* self, int param1);
QTLIBC_API bool QTabWidget_FocusNextPrevChild(QTabWidget* self, bool next);
QTLIBC_API void QTabWidget_OnFocusNextPrevChild(QTabWidget* self, intptr_t slot);
QTLIBC_API bool QTabWidget_QBaseFocusNextPrevChild(QTabWidget* self, bool next);
QTLIBC_API bool QTabWidget_EventFilter(QTabWidget* self, QObject* watched, QEvent* event);
QTLIBC_API void QTabWidget_OnEventFilter(QTabWidget* self, intptr_t slot);
QTLIBC_API bool QTabWidget_QBaseEventFilter(QTabWidget* self, QObject* watched, QEvent* event);
QTLIBC_API void QTabWidget_TimerEvent(QTabWidget* self, QTimerEvent* event);
QTLIBC_API void QTabWidget_OnTimerEvent(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseTimerEvent(QTabWidget* self, QTimerEvent* event);
QTLIBC_API void QTabWidget_ChildEvent(QTabWidget* self, QChildEvent* event);
QTLIBC_API void QTabWidget_OnChildEvent(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseChildEvent(QTabWidget* self, QChildEvent* event);
QTLIBC_API void QTabWidget_CustomEvent(QTabWidget* self, QEvent* event);
QTLIBC_API void QTabWidget_OnCustomEvent(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseCustomEvent(QTabWidget* self, QEvent* event);
QTLIBC_API void QTabWidget_ConnectNotify(QTabWidget* self, QMetaMethod* signal);
QTLIBC_API void QTabWidget_OnConnectNotify(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseConnectNotify(QTabWidget* self, QMetaMethod* signal);
QTLIBC_API void QTabWidget_DisconnectNotify(QTabWidget* self, QMetaMethod* signal);
QTLIBC_API void QTabWidget_OnDisconnectNotify(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseDisconnectNotify(QTabWidget* self, QMetaMethod* signal);
QTLIBC_API int QTabWidget_Metric(const QTabWidget* self, int param1);
QTLIBC_API void QTabWidget_OnMetric(const QTabWidget* self, intptr_t slot);
QTLIBC_API int QTabWidget_QBaseMetric(const QTabWidget* self, int param1);
QTLIBC_API void QTabWidget_InitPainter(const QTabWidget* self, QPainter* painter);
QTLIBC_API void QTabWidget_OnInitPainter(const QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseInitPainter(const QTabWidget* self, QPainter* painter);
QTLIBC_API QPaintDevice* QTabWidget_Redirected(const QTabWidget* self, QPoint* offset);
QTLIBC_API void QTabWidget_OnRedirected(const QTabWidget* self, intptr_t slot);
QTLIBC_API QPaintDevice* QTabWidget_QBaseRedirected(const QTabWidget* self, QPoint* offset);
QTLIBC_API QPainter* QTabWidget_SharedPainter(const QTabWidget* self);
QTLIBC_API void QTabWidget_OnSharedPainter(const QTabWidget* self, intptr_t slot);
QTLIBC_API QPainter* QTabWidget_QBaseSharedPainter(const QTabWidget* self);
QTLIBC_API void QTabWidget_SetTabBar(QTabWidget* self, QTabBar* tabBar);
QTLIBC_API void QTabWidget_OnSetTabBar(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseSetTabBar(QTabWidget* self, QTabBar* tabBar);
QTLIBC_API void QTabWidget_UpdateMicroFocus(QTabWidget* self);
QTLIBC_API void QTabWidget_OnUpdateMicroFocus(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseUpdateMicroFocus(QTabWidget* self);
QTLIBC_API void QTabWidget_Create(QTabWidget* self);
QTLIBC_API void QTabWidget_OnCreate(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseCreate(QTabWidget* self);
QTLIBC_API void QTabWidget_Destroy(QTabWidget* self);
QTLIBC_API void QTabWidget_OnDestroy(QTabWidget* self, intptr_t slot);
QTLIBC_API void QTabWidget_QBaseDestroy(QTabWidget* self);
QTLIBC_API bool QTabWidget_FocusNextChild(QTabWidget* self);
QTLIBC_API void QTabWidget_OnFocusNextChild(QTabWidget* self, intptr_t slot);
QTLIBC_API bool QTabWidget_QBaseFocusNextChild(QTabWidget* self);
QTLIBC_API bool QTabWidget_FocusPreviousChild(QTabWidget* self);
QTLIBC_API void QTabWidget_OnFocusPreviousChild(QTabWidget* self, intptr_t slot);
QTLIBC_API bool QTabWidget_QBaseFocusPreviousChild(QTabWidget* self);
QTLIBC_API QObject* QTabWidget_Sender(const QTabWidget* self);
QTLIBC_API void QTabWidget_OnSender(const QTabWidget* self, intptr_t slot);
QTLIBC_API QObject* QTabWidget_QBaseSender(const QTabWidget* self);
QTLIBC_API int QTabWidget_SenderSignalIndex(const QTabWidget* self);
QTLIBC_API void QTabWidget_OnSenderSignalIndex(const QTabWidget* self, intptr_t slot);
QTLIBC_API int QTabWidget_QBaseSenderSignalIndex(const QTabWidget* self);
QTLIBC_API int QTabWidget_Receivers(const QTabWidget* self, const char* signal);
QTLIBC_API void QTabWidget_OnReceivers(const QTabWidget* self, intptr_t slot);
QTLIBC_API int QTabWidget_QBaseReceivers(const QTabWidget* self, const char* signal);
QTLIBC_API bool QTabWidget_IsSignalConnected(const QTabWidget* self, QMetaMethod* signal);
QTLIBC_API void QTabWidget_OnIsSignalConnected(const QTabWidget* self, intptr_t slot);
QTLIBC_API bool QTabWidget_QBaseIsSignalConnected(const QTabWidget* self, QMetaMethod* signal);
QTLIBC_API void QTabWidget_Delete(QTabWidget* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
