#pragma once
#ifndef SRC_QTC_LIBQABSTRACTSCROLLAREA_H
#define SRC_QTC_LIBQABSTRACTSCROLLAREA_H

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
typedef struct QAbstractScrollArea QAbstractScrollArea;
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
typedef struct QScrollBar QScrollBar;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QSizePolicy QSizePolicy;
typedef struct QStyle QStyle;
typedef struct QStyleOptionFrame QStyleOptionFrame;
typedef struct QTabletEvent QTabletEvent;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
typedef struct QWindow QWindow;
#endif

#ifdef __cplusplus
typedef QAbstractScrollArea::SizeAdjustPolicy SizeAdjustPolicy; // C++ enum
#else
typedef int SizeAdjustPolicy; // C ABI enum
#endif

QTLIBC_API QAbstractScrollArea* QAbstractScrollArea_new(QWidget* parent);
QTLIBC_API QAbstractScrollArea* QAbstractScrollArea_new2();
QTLIBC_API QMetaObject* QAbstractScrollArea_MetaObject(const QAbstractScrollArea* self);
QTLIBC_API void* QAbstractScrollArea_Metacast(QAbstractScrollArea* self, const char* param1);
QTLIBC_API int QAbstractScrollArea_Metacall(QAbstractScrollArea* self, int param1, int param2, void** param3);
QTLIBC_API void QAbstractScrollArea_OnMetacall(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API int QAbstractScrollArea_QBaseMetacall(QAbstractScrollArea* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QAbstractScrollArea_Tr(const char* s);
QTLIBC_API int QAbstractScrollArea_VerticalScrollBarPolicy(const QAbstractScrollArea* self);
QTLIBC_API void QAbstractScrollArea_SetVerticalScrollBarPolicy(QAbstractScrollArea* self, int verticalScrollBarPolicy);
QTLIBC_API QScrollBar* QAbstractScrollArea_VerticalScrollBar(const QAbstractScrollArea* self);
QTLIBC_API void QAbstractScrollArea_SetVerticalScrollBar(QAbstractScrollArea* self, QScrollBar* scrollbar);
QTLIBC_API int QAbstractScrollArea_HorizontalScrollBarPolicy(const QAbstractScrollArea* self);
QTLIBC_API void QAbstractScrollArea_SetHorizontalScrollBarPolicy(QAbstractScrollArea* self, int horizontalScrollBarPolicy);
QTLIBC_API QScrollBar* QAbstractScrollArea_HorizontalScrollBar(const QAbstractScrollArea* self);
QTLIBC_API void QAbstractScrollArea_SetHorizontalScrollBar(QAbstractScrollArea* self, QScrollBar* scrollbar);
QTLIBC_API QWidget* QAbstractScrollArea_CornerWidget(const QAbstractScrollArea* self);
QTLIBC_API void QAbstractScrollArea_SetCornerWidget(QAbstractScrollArea* self, QWidget* widget);
QTLIBC_API void QAbstractScrollArea_AddScrollBarWidget(QAbstractScrollArea* self, QWidget* widget, int alignment);
QTLIBC_API libqt_list /* of QWidget* */ QAbstractScrollArea_ScrollBarWidgets(QAbstractScrollArea* self, int alignment);
QTLIBC_API QWidget* QAbstractScrollArea_Viewport(const QAbstractScrollArea* self);
QTLIBC_API void QAbstractScrollArea_SetViewport(QAbstractScrollArea* self, QWidget* widget);
QTLIBC_API QSize* QAbstractScrollArea_MaximumViewportSize(const QAbstractScrollArea* self);
QTLIBC_API QSize* QAbstractScrollArea_MinimumSizeHint(const QAbstractScrollArea* self);
QTLIBC_API void QAbstractScrollArea_OnMinimumSizeHint(const QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API QSize* QAbstractScrollArea_QBaseMinimumSizeHint(const QAbstractScrollArea* self);
QTLIBC_API QSize* QAbstractScrollArea_SizeHint(const QAbstractScrollArea* self);
QTLIBC_API void QAbstractScrollArea_OnSizeHint(const QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API QSize* QAbstractScrollArea_QBaseSizeHint(const QAbstractScrollArea* self);
QTLIBC_API void QAbstractScrollArea_SetupViewport(QAbstractScrollArea* self, QWidget* viewport);
QTLIBC_API void QAbstractScrollArea_OnSetupViewport(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseSetupViewport(QAbstractScrollArea* self, QWidget* viewport);
QTLIBC_API int QAbstractScrollArea_SizeAdjustPolicy(const QAbstractScrollArea* self);
QTLIBC_API void QAbstractScrollArea_SetSizeAdjustPolicy(QAbstractScrollArea* self, int policy);
QTLIBC_API bool QAbstractScrollArea_EventFilter(QAbstractScrollArea* self, QObject* param1, QEvent* param2);
QTLIBC_API void QAbstractScrollArea_OnEventFilter(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API bool QAbstractScrollArea_QBaseEventFilter(QAbstractScrollArea* self, QObject* param1, QEvent* param2);
QTLIBC_API bool QAbstractScrollArea_Event(QAbstractScrollArea* self, QEvent* param1);
QTLIBC_API void QAbstractScrollArea_OnEvent(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API bool QAbstractScrollArea_QBaseEvent(QAbstractScrollArea* self, QEvent* param1);
QTLIBC_API bool QAbstractScrollArea_ViewportEvent(QAbstractScrollArea* self, QEvent* param1);
QTLIBC_API void QAbstractScrollArea_OnViewportEvent(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API bool QAbstractScrollArea_QBaseViewportEvent(QAbstractScrollArea* self, QEvent* param1);
QTLIBC_API void QAbstractScrollArea_ResizeEvent(QAbstractScrollArea* self, QResizeEvent* param1);
QTLIBC_API void QAbstractScrollArea_OnResizeEvent(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseResizeEvent(QAbstractScrollArea* self, QResizeEvent* param1);
QTLIBC_API void QAbstractScrollArea_PaintEvent(QAbstractScrollArea* self, QPaintEvent* param1);
QTLIBC_API void QAbstractScrollArea_OnPaintEvent(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBasePaintEvent(QAbstractScrollArea* self, QPaintEvent* param1);
QTLIBC_API void QAbstractScrollArea_MousePressEvent(QAbstractScrollArea* self, QMouseEvent* param1);
QTLIBC_API void QAbstractScrollArea_OnMousePressEvent(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseMousePressEvent(QAbstractScrollArea* self, QMouseEvent* param1);
QTLIBC_API void QAbstractScrollArea_MouseReleaseEvent(QAbstractScrollArea* self, QMouseEvent* param1);
QTLIBC_API void QAbstractScrollArea_OnMouseReleaseEvent(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseMouseReleaseEvent(QAbstractScrollArea* self, QMouseEvent* param1);
QTLIBC_API void QAbstractScrollArea_MouseDoubleClickEvent(QAbstractScrollArea* self, QMouseEvent* param1);
QTLIBC_API void QAbstractScrollArea_OnMouseDoubleClickEvent(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseMouseDoubleClickEvent(QAbstractScrollArea* self, QMouseEvent* param1);
QTLIBC_API void QAbstractScrollArea_MouseMoveEvent(QAbstractScrollArea* self, QMouseEvent* param1);
QTLIBC_API void QAbstractScrollArea_OnMouseMoveEvent(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseMouseMoveEvent(QAbstractScrollArea* self, QMouseEvent* param1);
QTLIBC_API void QAbstractScrollArea_WheelEvent(QAbstractScrollArea* self, QWheelEvent* param1);
QTLIBC_API void QAbstractScrollArea_OnWheelEvent(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseWheelEvent(QAbstractScrollArea* self, QWheelEvent* param1);
QTLIBC_API void QAbstractScrollArea_ContextMenuEvent(QAbstractScrollArea* self, QContextMenuEvent* param1);
QTLIBC_API void QAbstractScrollArea_OnContextMenuEvent(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseContextMenuEvent(QAbstractScrollArea* self, QContextMenuEvent* param1);
QTLIBC_API void QAbstractScrollArea_DragEnterEvent(QAbstractScrollArea* self, QDragEnterEvent* param1);
QTLIBC_API void QAbstractScrollArea_OnDragEnterEvent(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseDragEnterEvent(QAbstractScrollArea* self, QDragEnterEvent* param1);
QTLIBC_API void QAbstractScrollArea_DragMoveEvent(QAbstractScrollArea* self, QDragMoveEvent* param1);
QTLIBC_API void QAbstractScrollArea_OnDragMoveEvent(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseDragMoveEvent(QAbstractScrollArea* self, QDragMoveEvent* param1);
QTLIBC_API void QAbstractScrollArea_DragLeaveEvent(QAbstractScrollArea* self, QDragLeaveEvent* param1);
QTLIBC_API void QAbstractScrollArea_OnDragLeaveEvent(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseDragLeaveEvent(QAbstractScrollArea* self, QDragLeaveEvent* param1);
QTLIBC_API void QAbstractScrollArea_DropEvent(QAbstractScrollArea* self, QDropEvent* param1);
QTLIBC_API void QAbstractScrollArea_OnDropEvent(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseDropEvent(QAbstractScrollArea* self, QDropEvent* param1);
QTLIBC_API void QAbstractScrollArea_KeyPressEvent(QAbstractScrollArea* self, QKeyEvent* param1);
QTLIBC_API void QAbstractScrollArea_OnKeyPressEvent(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseKeyPressEvent(QAbstractScrollArea* self, QKeyEvent* param1);
QTLIBC_API void QAbstractScrollArea_ScrollContentsBy(QAbstractScrollArea* self, int dx, int dy);
QTLIBC_API void QAbstractScrollArea_OnScrollContentsBy(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseScrollContentsBy(QAbstractScrollArea* self, int dx, int dy);
QTLIBC_API QSize* QAbstractScrollArea_ViewportSizeHint(const QAbstractScrollArea* self);
QTLIBC_API void QAbstractScrollArea_OnViewportSizeHint(const QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API QSize* QAbstractScrollArea_QBaseViewportSizeHint(const QAbstractScrollArea* self);
QTLIBC_API libqt_string QAbstractScrollArea_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QAbstractScrollArea_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QAbstractScrollArea_ChangeEvent(QAbstractScrollArea* self, QEvent* param1);
QTLIBC_API void QAbstractScrollArea_OnChangeEvent(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseChangeEvent(QAbstractScrollArea* self, QEvent* param1);
QTLIBC_API int QAbstractScrollArea_DevType(const QAbstractScrollArea* self);
QTLIBC_API void QAbstractScrollArea_OnDevType(const QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API int QAbstractScrollArea_QBaseDevType(const QAbstractScrollArea* self);
QTLIBC_API void QAbstractScrollArea_SetVisible(QAbstractScrollArea* self, bool visible);
QTLIBC_API void QAbstractScrollArea_OnSetVisible(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseSetVisible(QAbstractScrollArea* self, bool visible);
QTLIBC_API int QAbstractScrollArea_HeightForWidth(const QAbstractScrollArea* self, int param1);
QTLIBC_API void QAbstractScrollArea_OnHeightForWidth(const QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API int QAbstractScrollArea_QBaseHeightForWidth(const QAbstractScrollArea* self, int param1);
QTLIBC_API bool QAbstractScrollArea_HasHeightForWidth(const QAbstractScrollArea* self);
QTLIBC_API void QAbstractScrollArea_OnHasHeightForWidth(const QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API bool QAbstractScrollArea_QBaseHasHeightForWidth(const QAbstractScrollArea* self);
QTLIBC_API QPaintEngine* QAbstractScrollArea_PaintEngine(const QAbstractScrollArea* self);
QTLIBC_API void QAbstractScrollArea_OnPaintEngine(const QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API QPaintEngine* QAbstractScrollArea_QBasePaintEngine(const QAbstractScrollArea* self);
QTLIBC_API void QAbstractScrollArea_KeyReleaseEvent(QAbstractScrollArea* self, QKeyEvent* event);
QTLIBC_API void QAbstractScrollArea_OnKeyReleaseEvent(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseKeyReleaseEvent(QAbstractScrollArea* self, QKeyEvent* event);
QTLIBC_API void QAbstractScrollArea_FocusInEvent(QAbstractScrollArea* self, QFocusEvent* event);
QTLIBC_API void QAbstractScrollArea_OnFocusInEvent(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseFocusInEvent(QAbstractScrollArea* self, QFocusEvent* event);
QTLIBC_API void QAbstractScrollArea_FocusOutEvent(QAbstractScrollArea* self, QFocusEvent* event);
QTLIBC_API void QAbstractScrollArea_OnFocusOutEvent(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseFocusOutEvent(QAbstractScrollArea* self, QFocusEvent* event);
QTLIBC_API void QAbstractScrollArea_EnterEvent(QAbstractScrollArea* self, QEnterEvent* event);
QTLIBC_API void QAbstractScrollArea_OnEnterEvent(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseEnterEvent(QAbstractScrollArea* self, QEnterEvent* event);
QTLIBC_API void QAbstractScrollArea_LeaveEvent(QAbstractScrollArea* self, QEvent* event);
QTLIBC_API void QAbstractScrollArea_OnLeaveEvent(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseLeaveEvent(QAbstractScrollArea* self, QEvent* event);
QTLIBC_API void QAbstractScrollArea_MoveEvent(QAbstractScrollArea* self, QMoveEvent* event);
QTLIBC_API void QAbstractScrollArea_OnMoveEvent(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseMoveEvent(QAbstractScrollArea* self, QMoveEvent* event);
QTLIBC_API void QAbstractScrollArea_CloseEvent(QAbstractScrollArea* self, QCloseEvent* event);
QTLIBC_API void QAbstractScrollArea_OnCloseEvent(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseCloseEvent(QAbstractScrollArea* self, QCloseEvent* event);
QTLIBC_API void QAbstractScrollArea_TabletEvent(QAbstractScrollArea* self, QTabletEvent* event);
QTLIBC_API void QAbstractScrollArea_OnTabletEvent(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseTabletEvent(QAbstractScrollArea* self, QTabletEvent* event);
QTLIBC_API void QAbstractScrollArea_ActionEvent(QAbstractScrollArea* self, QActionEvent* event);
QTLIBC_API void QAbstractScrollArea_OnActionEvent(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseActionEvent(QAbstractScrollArea* self, QActionEvent* event);
QTLIBC_API void QAbstractScrollArea_ShowEvent(QAbstractScrollArea* self, QShowEvent* event);
QTLIBC_API void QAbstractScrollArea_OnShowEvent(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseShowEvent(QAbstractScrollArea* self, QShowEvent* event);
QTLIBC_API void QAbstractScrollArea_HideEvent(QAbstractScrollArea* self, QHideEvent* event);
QTLIBC_API void QAbstractScrollArea_OnHideEvent(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseHideEvent(QAbstractScrollArea* self, QHideEvent* event);
QTLIBC_API bool QAbstractScrollArea_NativeEvent(QAbstractScrollArea* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QAbstractScrollArea_OnNativeEvent(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API bool QAbstractScrollArea_QBaseNativeEvent(QAbstractScrollArea* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QAbstractScrollArea_InputMethodEvent(QAbstractScrollArea* self, QInputMethodEvent* param1);
QTLIBC_API void QAbstractScrollArea_OnInputMethodEvent(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseInputMethodEvent(QAbstractScrollArea* self, QInputMethodEvent* param1);
QTLIBC_API QVariant* QAbstractScrollArea_InputMethodQuery(const QAbstractScrollArea* self, int param1);
QTLIBC_API void QAbstractScrollArea_OnInputMethodQuery(const QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API QVariant* QAbstractScrollArea_QBaseInputMethodQuery(const QAbstractScrollArea* self, int param1);
QTLIBC_API bool QAbstractScrollArea_FocusNextPrevChild(QAbstractScrollArea* self, bool next);
QTLIBC_API void QAbstractScrollArea_OnFocusNextPrevChild(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API bool QAbstractScrollArea_QBaseFocusNextPrevChild(QAbstractScrollArea* self, bool next);
QTLIBC_API void QAbstractScrollArea_TimerEvent(QAbstractScrollArea* self, QTimerEvent* event);
QTLIBC_API void QAbstractScrollArea_OnTimerEvent(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseTimerEvent(QAbstractScrollArea* self, QTimerEvent* event);
QTLIBC_API void QAbstractScrollArea_ChildEvent(QAbstractScrollArea* self, QChildEvent* event);
QTLIBC_API void QAbstractScrollArea_OnChildEvent(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseChildEvent(QAbstractScrollArea* self, QChildEvent* event);
QTLIBC_API void QAbstractScrollArea_CustomEvent(QAbstractScrollArea* self, QEvent* event);
QTLIBC_API void QAbstractScrollArea_OnCustomEvent(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseCustomEvent(QAbstractScrollArea* self, QEvent* event);
QTLIBC_API void QAbstractScrollArea_ConnectNotify(QAbstractScrollArea* self, QMetaMethod* signal);
QTLIBC_API void QAbstractScrollArea_OnConnectNotify(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseConnectNotify(QAbstractScrollArea* self, QMetaMethod* signal);
QTLIBC_API void QAbstractScrollArea_DisconnectNotify(QAbstractScrollArea* self, QMetaMethod* signal);
QTLIBC_API void QAbstractScrollArea_OnDisconnectNotify(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseDisconnectNotify(QAbstractScrollArea* self, QMetaMethod* signal);
QTLIBC_API void QAbstractScrollArea_InitStyleOption(const QAbstractScrollArea* self, QStyleOptionFrame* option);
QTLIBC_API void QAbstractScrollArea_OnInitStyleOption(const QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseInitStyleOption(const QAbstractScrollArea* self, QStyleOptionFrame* option);
QTLIBC_API int QAbstractScrollArea_Metric(const QAbstractScrollArea* self, int param1);
QTLIBC_API void QAbstractScrollArea_OnMetric(const QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API int QAbstractScrollArea_QBaseMetric(const QAbstractScrollArea* self, int param1);
QTLIBC_API void QAbstractScrollArea_InitPainter(const QAbstractScrollArea* self, QPainter* painter);
QTLIBC_API void QAbstractScrollArea_OnInitPainter(const QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseInitPainter(const QAbstractScrollArea* self, QPainter* painter);
QTLIBC_API QPaintDevice* QAbstractScrollArea_Redirected(const QAbstractScrollArea* self, QPoint* offset);
QTLIBC_API void QAbstractScrollArea_OnRedirected(const QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API QPaintDevice* QAbstractScrollArea_QBaseRedirected(const QAbstractScrollArea* self, QPoint* offset);
QTLIBC_API QPainter* QAbstractScrollArea_SharedPainter(const QAbstractScrollArea* self);
QTLIBC_API void QAbstractScrollArea_OnSharedPainter(const QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API QPainter* QAbstractScrollArea_QBaseSharedPainter(const QAbstractScrollArea* self);
QTLIBC_API void QAbstractScrollArea_SetViewportMargins(QAbstractScrollArea* self, int left, int top, int right, int bottom);
QTLIBC_API void QAbstractScrollArea_OnSetViewportMargins(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseSetViewportMargins(QAbstractScrollArea* self, int left, int top, int right, int bottom);
QTLIBC_API void QAbstractScrollArea_SetViewportMarginsWithMargins(QAbstractScrollArea* self, QMargins* margins);
QTLIBC_API void QAbstractScrollArea_OnSetViewportMarginsWithMargins(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseSetViewportMarginsWithMargins(QAbstractScrollArea* self, QMargins* margins);
QTLIBC_API QMargins* QAbstractScrollArea_ViewportMargins(const QAbstractScrollArea* self);
QTLIBC_API void QAbstractScrollArea_OnViewportMargins(const QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API QMargins* QAbstractScrollArea_QBaseViewportMargins(const QAbstractScrollArea* self);
QTLIBC_API void QAbstractScrollArea_DrawFrame(QAbstractScrollArea* self, QPainter* param1);
QTLIBC_API void QAbstractScrollArea_OnDrawFrame(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseDrawFrame(QAbstractScrollArea* self, QPainter* param1);
QTLIBC_API void QAbstractScrollArea_UpdateMicroFocus(QAbstractScrollArea* self);
QTLIBC_API void QAbstractScrollArea_OnUpdateMicroFocus(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseUpdateMicroFocus(QAbstractScrollArea* self);
QTLIBC_API void QAbstractScrollArea_Create(QAbstractScrollArea* self);
QTLIBC_API void QAbstractScrollArea_OnCreate(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseCreate(QAbstractScrollArea* self);
QTLIBC_API void QAbstractScrollArea_Destroy(QAbstractScrollArea* self);
QTLIBC_API void QAbstractScrollArea_OnDestroy(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API void QAbstractScrollArea_QBaseDestroy(QAbstractScrollArea* self);
QTLIBC_API bool QAbstractScrollArea_FocusNextChild(QAbstractScrollArea* self);
QTLIBC_API void QAbstractScrollArea_OnFocusNextChild(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API bool QAbstractScrollArea_QBaseFocusNextChild(QAbstractScrollArea* self);
QTLIBC_API bool QAbstractScrollArea_FocusPreviousChild(QAbstractScrollArea* self);
QTLIBC_API void QAbstractScrollArea_OnFocusPreviousChild(QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API bool QAbstractScrollArea_QBaseFocusPreviousChild(QAbstractScrollArea* self);
QTLIBC_API QObject* QAbstractScrollArea_Sender(const QAbstractScrollArea* self);
QTLIBC_API void QAbstractScrollArea_OnSender(const QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API QObject* QAbstractScrollArea_QBaseSender(const QAbstractScrollArea* self);
QTLIBC_API int QAbstractScrollArea_SenderSignalIndex(const QAbstractScrollArea* self);
QTLIBC_API void QAbstractScrollArea_OnSenderSignalIndex(const QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API int QAbstractScrollArea_QBaseSenderSignalIndex(const QAbstractScrollArea* self);
QTLIBC_API int QAbstractScrollArea_Receivers(const QAbstractScrollArea* self, const char* signal);
QTLIBC_API void QAbstractScrollArea_OnReceivers(const QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API int QAbstractScrollArea_QBaseReceivers(const QAbstractScrollArea* self, const char* signal);
QTLIBC_API bool QAbstractScrollArea_IsSignalConnected(const QAbstractScrollArea* self, QMetaMethod* signal);
QTLIBC_API void QAbstractScrollArea_OnIsSignalConnected(const QAbstractScrollArea* self, intptr_t slot);
QTLIBC_API bool QAbstractScrollArea_QBaseIsSignalConnected(const QAbstractScrollArea* self, QMetaMethod* signal);
QTLIBC_API void QAbstractScrollArea_Delete(QAbstractScrollArea* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
