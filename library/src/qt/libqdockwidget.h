#pragma once
#ifndef SRC_QTC_LIBQDOCKWIDGET_H
#define SRC_QTC_LIBQDOCKWIDGET_H

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
typedef struct QDockWidget QDockWidget;
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
typedef struct QStyleOptionDockWidget QStyleOptionDockWidget;
typedef struct QTabletEvent QTabletEvent;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
typedef struct QWindow QWindow;
#endif

#ifdef __cplusplus
typedef QDockWidget::DockWidgetFeature DockWidgetFeature;   // C++ enum
typedef QDockWidget::DockWidgetFeatures DockWidgetFeatures; // C++ QFlags
#else
typedef int DockWidgetFeature;  // C ABI enum
typedef int DockWidgetFeatures; // C ABI QFlags
#endif

QTLIBC_API QDockWidget* QDockWidget_new(QWidget* parent);
QTLIBC_API QDockWidget* QDockWidget_new2(libqt_string title);
QTLIBC_API QDockWidget* QDockWidget_new3();
QTLIBC_API QDockWidget* QDockWidget_new4(libqt_string title, QWidget* parent);
QTLIBC_API QDockWidget* QDockWidget_new5(libqt_string title, QWidget* parent, int flags);
QTLIBC_API QDockWidget* QDockWidget_new6(QWidget* parent, int flags);
QTLIBC_API QMetaObject* QDockWidget_MetaObject(const QDockWidget* self);
QTLIBC_API void* QDockWidget_Metacast(QDockWidget* self, const char* param1);
QTLIBC_API int QDockWidget_Metacall(QDockWidget* self, int param1, int param2, void** param3);
QTLIBC_API void QDockWidget_OnMetacall(QDockWidget* self, intptr_t slot);
QTLIBC_API int QDockWidget_QBaseMetacall(QDockWidget* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QDockWidget_Tr(const char* s);
QTLIBC_API QWidget* QDockWidget_Widget(const QDockWidget* self);
QTLIBC_API void QDockWidget_SetWidget(QDockWidget* self, QWidget* widget);
QTLIBC_API void QDockWidget_SetFeatures(QDockWidget* self, int features);
QTLIBC_API int QDockWidget_Features(const QDockWidget* self);
QTLIBC_API void QDockWidget_SetFloating(QDockWidget* self, bool floating);
QTLIBC_API bool QDockWidget_IsFloating(const QDockWidget* self);
QTLIBC_API void QDockWidget_SetAllowedAreas(QDockWidget* self, int areas);
QTLIBC_API int QDockWidget_AllowedAreas(const QDockWidget* self);
QTLIBC_API void QDockWidget_SetTitleBarWidget(QDockWidget* self, QWidget* widget);
QTLIBC_API QWidget* QDockWidget_TitleBarWidget(const QDockWidget* self);
QTLIBC_API bool QDockWidget_IsAreaAllowed(const QDockWidget* self, int area);
QTLIBC_API QAction* QDockWidget_ToggleViewAction(const QDockWidget* self);
QTLIBC_API void QDockWidget_FeaturesChanged(QDockWidget* self, int features);
void QDockWidget_Connect_FeaturesChanged(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_TopLevelChanged(QDockWidget* self, bool topLevel);
void QDockWidget_Connect_TopLevelChanged(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_AllowedAreasChanged(QDockWidget* self, int allowedAreas);
void QDockWidget_Connect_AllowedAreasChanged(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_VisibilityChanged(QDockWidget* self, bool visible);
void QDockWidget_Connect_VisibilityChanged(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_DockLocationChanged(QDockWidget* self, int area);
void QDockWidget_Connect_DockLocationChanged(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_ChangeEvent(QDockWidget* self, QEvent* event);
QTLIBC_API void QDockWidget_OnChangeEvent(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_QBaseChangeEvent(QDockWidget* self, QEvent* event);
QTLIBC_API void QDockWidget_CloseEvent(QDockWidget* self, QCloseEvent* event);
QTLIBC_API void QDockWidget_OnCloseEvent(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_QBaseCloseEvent(QDockWidget* self, QCloseEvent* event);
QTLIBC_API void QDockWidget_PaintEvent(QDockWidget* self, QPaintEvent* event);
QTLIBC_API void QDockWidget_OnPaintEvent(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_QBasePaintEvent(QDockWidget* self, QPaintEvent* event);
QTLIBC_API bool QDockWidget_Event(QDockWidget* self, QEvent* event);
QTLIBC_API void QDockWidget_OnEvent(QDockWidget* self, intptr_t slot);
QTLIBC_API bool QDockWidget_QBaseEvent(QDockWidget* self, QEvent* event);
QTLIBC_API void QDockWidget_InitStyleOption(const QDockWidget* self, QStyleOptionDockWidget* option);
QTLIBC_API void QDockWidget_OnInitStyleOption(const QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_QBaseInitStyleOption(const QDockWidget* self, QStyleOptionDockWidget* option);
QTLIBC_API libqt_string QDockWidget_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QDockWidget_Tr3(const char* s, const char* c, int n);
QTLIBC_API int QDockWidget_DevType(const QDockWidget* self);
QTLIBC_API void QDockWidget_OnDevType(const QDockWidget* self, intptr_t slot);
QTLIBC_API int QDockWidget_QBaseDevType(const QDockWidget* self);
QTLIBC_API void QDockWidget_SetVisible(QDockWidget* self, bool visible);
QTLIBC_API void QDockWidget_OnSetVisible(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_QBaseSetVisible(QDockWidget* self, bool visible);
QTLIBC_API QSize* QDockWidget_SizeHint(const QDockWidget* self);
QTLIBC_API void QDockWidget_OnSizeHint(const QDockWidget* self, intptr_t slot);
QTLIBC_API QSize* QDockWidget_QBaseSizeHint(const QDockWidget* self);
QTLIBC_API QSize* QDockWidget_MinimumSizeHint(const QDockWidget* self);
QTLIBC_API void QDockWidget_OnMinimumSizeHint(const QDockWidget* self, intptr_t slot);
QTLIBC_API QSize* QDockWidget_QBaseMinimumSizeHint(const QDockWidget* self);
QTLIBC_API int QDockWidget_HeightForWidth(const QDockWidget* self, int param1);
QTLIBC_API void QDockWidget_OnHeightForWidth(const QDockWidget* self, intptr_t slot);
QTLIBC_API int QDockWidget_QBaseHeightForWidth(const QDockWidget* self, int param1);
QTLIBC_API bool QDockWidget_HasHeightForWidth(const QDockWidget* self);
QTLIBC_API void QDockWidget_OnHasHeightForWidth(const QDockWidget* self, intptr_t slot);
QTLIBC_API bool QDockWidget_QBaseHasHeightForWidth(const QDockWidget* self);
QTLIBC_API QPaintEngine* QDockWidget_PaintEngine(const QDockWidget* self);
QTLIBC_API void QDockWidget_OnPaintEngine(const QDockWidget* self, intptr_t slot);
QTLIBC_API QPaintEngine* QDockWidget_QBasePaintEngine(const QDockWidget* self);
QTLIBC_API void QDockWidget_MousePressEvent(QDockWidget* self, QMouseEvent* event);
QTLIBC_API void QDockWidget_OnMousePressEvent(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_QBaseMousePressEvent(QDockWidget* self, QMouseEvent* event);
QTLIBC_API void QDockWidget_MouseReleaseEvent(QDockWidget* self, QMouseEvent* event);
QTLIBC_API void QDockWidget_OnMouseReleaseEvent(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_QBaseMouseReleaseEvent(QDockWidget* self, QMouseEvent* event);
QTLIBC_API void QDockWidget_MouseDoubleClickEvent(QDockWidget* self, QMouseEvent* event);
QTLIBC_API void QDockWidget_OnMouseDoubleClickEvent(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_QBaseMouseDoubleClickEvent(QDockWidget* self, QMouseEvent* event);
QTLIBC_API void QDockWidget_MouseMoveEvent(QDockWidget* self, QMouseEvent* event);
QTLIBC_API void QDockWidget_OnMouseMoveEvent(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_QBaseMouseMoveEvent(QDockWidget* self, QMouseEvent* event);
QTLIBC_API void QDockWidget_WheelEvent(QDockWidget* self, QWheelEvent* event);
QTLIBC_API void QDockWidget_OnWheelEvent(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_QBaseWheelEvent(QDockWidget* self, QWheelEvent* event);
QTLIBC_API void QDockWidget_KeyPressEvent(QDockWidget* self, QKeyEvent* event);
QTLIBC_API void QDockWidget_OnKeyPressEvent(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_QBaseKeyPressEvent(QDockWidget* self, QKeyEvent* event);
QTLIBC_API void QDockWidget_KeyReleaseEvent(QDockWidget* self, QKeyEvent* event);
QTLIBC_API void QDockWidget_OnKeyReleaseEvent(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_QBaseKeyReleaseEvent(QDockWidget* self, QKeyEvent* event);
QTLIBC_API void QDockWidget_FocusInEvent(QDockWidget* self, QFocusEvent* event);
QTLIBC_API void QDockWidget_OnFocusInEvent(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_QBaseFocusInEvent(QDockWidget* self, QFocusEvent* event);
QTLIBC_API void QDockWidget_FocusOutEvent(QDockWidget* self, QFocusEvent* event);
QTLIBC_API void QDockWidget_OnFocusOutEvent(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_QBaseFocusOutEvent(QDockWidget* self, QFocusEvent* event);
QTLIBC_API void QDockWidget_EnterEvent(QDockWidget* self, QEnterEvent* event);
QTLIBC_API void QDockWidget_OnEnterEvent(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_QBaseEnterEvent(QDockWidget* self, QEnterEvent* event);
QTLIBC_API void QDockWidget_LeaveEvent(QDockWidget* self, QEvent* event);
QTLIBC_API void QDockWidget_OnLeaveEvent(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_QBaseLeaveEvent(QDockWidget* self, QEvent* event);
QTLIBC_API void QDockWidget_MoveEvent(QDockWidget* self, QMoveEvent* event);
QTLIBC_API void QDockWidget_OnMoveEvent(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_QBaseMoveEvent(QDockWidget* self, QMoveEvent* event);
QTLIBC_API void QDockWidget_ResizeEvent(QDockWidget* self, QResizeEvent* event);
QTLIBC_API void QDockWidget_OnResizeEvent(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_QBaseResizeEvent(QDockWidget* self, QResizeEvent* event);
QTLIBC_API void QDockWidget_ContextMenuEvent(QDockWidget* self, QContextMenuEvent* event);
QTLIBC_API void QDockWidget_OnContextMenuEvent(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_QBaseContextMenuEvent(QDockWidget* self, QContextMenuEvent* event);
QTLIBC_API void QDockWidget_TabletEvent(QDockWidget* self, QTabletEvent* event);
QTLIBC_API void QDockWidget_OnTabletEvent(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_QBaseTabletEvent(QDockWidget* self, QTabletEvent* event);
QTLIBC_API void QDockWidget_ActionEvent(QDockWidget* self, QActionEvent* event);
QTLIBC_API void QDockWidget_OnActionEvent(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_QBaseActionEvent(QDockWidget* self, QActionEvent* event);
QTLIBC_API void QDockWidget_DragEnterEvent(QDockWidget* self, QDragEnterEvent* event);
QTLIBC_API void QDockWidget_OnDragEnterEvent(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_QBaseDragEnterEvent(QDockWidget* self, QDragEnterEvent* event);
QTLIBC_API void QDockWidget_DragMoveEvent(QDockWidget* self, QDragMoveEvent* event);
QTLIBC_API void QDockWidget_OnDragMoveEvent(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_QBaseDragMoveEvent(QDockWidget* self, QDragMoveEvent* event);
QTLIBC_API void QDockWidget_DragLeaveEvent(QDockWidget* self, QDragLeaveEvent* event);
QTLIBC_API void QDockWidget_OnDragLeaveEvent(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_QBaseDragLeaveEvent(QDockWidget* self, QDragLeaveEvent* event);
QTLIBC_API void QDockWidget_DropEvent(QDockWidget* self, QDropEvent* event);
QTLIBC_API void QDockWidget_OnDropEvent(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_QBaseDropEvent(QDockWidget* self, QDropEvent* event);
QTLIBC_API void QDockWidget_ShowEvent(QDockWidget* self, QShowEvent* event);
QTLIBC_API void QDockWidget_OnShowEvent(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_QBaseShowEvent(QDockWidget* self, QShowEvent* event);
QTLIBC_API void QDockWidget_HideEvent(QDockWidget* self, QHideEvent* event);
QTLIBC_API void QDockWidget_OnHideEvent(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_QBaseHideEvent(QDockWidget* self, QHideEvent* event);
QTLIBC_API bool QDockWidget_NativeEvent(QDockWidget* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QDockWidget_OnNativeEvent(QDockWidget* self, intptr_t slot);
QTLIBC_API bool QDockWidget_QBaseNativeEvent(QDockWidget* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QDockWidget_InputMethodEvent(QDockWidget* self, QInputMethodEvent* param1);
QTLIBC_API void QDockWidget_OnInputMethodEvent(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_QBaseInputMethodEvent(QDockWidget* self, QInputMethodEvent* param1);
QTLIBC_API QVariant* QDockWidget_InputMethodQuery(const QDockWidget* self, int param1);
QTLIBC_API void QDockWidget_OnInputMethodQuery(const QDockWidget* self, intptr_t slot);
QTLIBC_API QVariant* QDockWidget_QBaseInputMethodQuery(const QDockWidget* self, int param1);
QTLIBC_API bool QDockWidget_FocusNextPrevChild(QDockWidget* self, bool next);
QTLIBC_API void QDockWidget_OnFocusNextPrevChild(QDockWidget* self, intptr_t slot);
QTLIBC_API bool QDockWidget_QBaseFocusNextPrevChild(QDockWidget* self, bool next);
QTLIBC_API bool QDockWidget_EventFilter(QDockWidget* self, QObject* watched, QEvent* event);
QTLIBC_API void QDockWidget_OnEventFilter(QDockWidget* self, intptr_t slot);
QTLIBC_API bool QDockWidget_QBaseEventFilter(QDockWidget* self, QObject* watched, QEvent* event);
QTLIBC_API void QDockWidget_TimerEvent(QDockWidget* self, QTimerEvent* event);
QTLIBC_API void QDockWidget_OnTimerEvent(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_QBaseTimerEvent(QDockWidget* self, QTimerEvent* event);
QTLIBC_API void QDockWidget_ChildEvent(QDockWidget* self, QChildEvent* event);
QTLIBC_API void QDockWidget_OnChildEvent(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_QBaseChildEvent(QDockWidget* self, QChildEvent* event);
QTLIBC_API void QDockWidget_CustomEvent(QDockWidget* self, QEvent* event);
QTLIBC_API void QDockWidget_OnCustomEvent(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_QBaseCustomEvent(QDockWidget* self, QEvent* event);
QTLIBC_API void QDockWidget_ConnectNotify(QDockWidget* self, QMetaMethod* signal);
QTLIBC_API void QDockWidget_OnConnectNotify(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_QBaseConnectNotify(QDockWidget* self, QMetaMethod* signal);
QTLIBC_API void QDockWidget_DisconnectNotify(QDockWidget* self, QMetaMethod* signal);
QTLIBC_API void QDockWidget_OnDisconnectNotify(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_QBaseDisconnectNotify(QDockWidget* self, QMetaMethod* signal);
QTLIBC_API int QDockWidget_Metric(const QDockWidget* self, int param1);
QTLIBC_API void QDockWidget_OnMetric(const QDockWidget* self, intptr_t slot);
QTLIBC_API int QDockWidget_QBaseMetric(const QDockWidget* self, int param1);
QTLIBC_API void QDockWidget_InitPainter(const QDockWidget* self, QPainter* painter);
QTLIBC_API void QDockWidget_OnInitPainter(const QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_QBaseInitPainter(const QDockWidget* self, QPainter* painter);
QTLIBC_API QPaintDevice* QDockWidget_Redirected(const QDockWidget* self, QPoint* offset);
QTLIBC_API void QDockWidget_OnRedirected(const QDockWidget* self, intptr_t slot);
QTLIBC_API QPaintDevice* QDockWidget_QBaseRedirected(const QDockWidget* self, QPoint* offset);
QTLIBC_API QPainter* QDockWidget_SharedPainter(const QDockWidget* self);
QTLIBC_API void QDockWidget_OnSharedPainter(const QDockWidget* self, intptr_t slot);
QTLIBC_API QPainter* QDockWidget_QBaseSharedPainter(const QDockWidget* self);
QTLIBC_API void QDockWidget_UpdateMicroFocus(QDockWidget* self);
QTLIBC_API void QDockWidget_OnUpdateMicroFocus(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_QBaseUpdateMicroFocus(QDockWidget* self);
QTLIBC_API void QDockWidget_Create(QDockWidget* self);
QTLIBC_API void QDockWidget_OnCreate(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_QBaseCreate(QDockWidget* self);
QTLIBC_API void QDockWidget_Destroy(QDockWidget* self);
QTLIBC_API void QDockWidget_OnDestroy(QDockWidget* self, intptr_t slot);
QTLIBC_API void QDockWidget_QBaseDestroy(QDockWidget* self);
QTLIBC_API bool QDockWidget_FocusNextChild(QDockWidget* self);
QTLIBC_API void QDockWidget_OnFocusNextChild(QDockWidget* self, intptr_t slot);
QTLIBC_API bool QDockWidget_QBaseFocusNextChild(QDockWidget* self);
QTLIBC_API bool QDockWidget_FocusPreviousChild(QDockWidget* self);
QTLIBC_API void QDockWidget_OnFocusPreviousChild(QDockWidget* self, intptr_t slot);
QTLIBC_API bool QDockWidget_QBaseFocusPreviousChild(QDockWidget* self);
QTLIBC_API QObject* QDockWidget_Sender(const QDockWidget* self);
QTLIBC_API void QDockWidget_OnSender(const QDockWidget* self, intptr_t slot);
QTLIBC_API QObject* QDockWidget_QBaseSender(const QDockWidget* self);
QTLIBC_API int QDockWidget_SenderSignalIndex(const QDockWidget* self);
QTLIBC_API void QDockWidget_OnSenderSignalIndex(const QDockWidget* self, intptr_t slot);
QTLIBC_API int QDockWidget_QBaseSenderSignalIndex(const QDockWidget* self);
QTLIBC_API int QDockWidget_Receivers(const QDockWidget* self, const char* signal);
QTLIBC_API void QDockWidget_OnReceivers(const QDockWidget* self, intptr_t slot);
QTLIBC_API int QDockWidget_QBaseReceivers(const QDockWidget* self, const char* signal);
QTLIBC_API bool QDockWidget_IsSignalConnected(const QDockWidget* self, QMetaMethod* signal);
QTLIBC_API void QDockWidget_OnIsSignalConnected(const QDockWidget* self, intptr_t slot);
QTLIBC_API bool QDockWidget_QBaseIsSignalConnected(const QDockWidget* self, QMetaMethod* signal);
QTLIBC_API void QDockWidget_Delete(QDockWidget* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
