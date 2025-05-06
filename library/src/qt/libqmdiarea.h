#pragma once
#ifndef SRC_QTC_LIBQMDIAREA_H
#define SRC_QTC_LIBQMDIAREA_H

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
typedef struct QBrush QBrush;
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
typedef struct QMdiArea QMdiArea;
typedef struct QMdiSubWindow QMdiSubWindow;
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
typedef QMdiArea::AreaOption AreaOption;   // C++ enum
typedef QMdiArea::AreaOptions AreaOptions; // C++ QFlags
typedef QMdiArea::ViewMode ViewMode;       // C++ enum
typedef QMdiArea::WindowOrder WindowOrder; // C++ enum
#else
typedef int AreaOption;  // C ABI enum
typedef int AreaOptions; // C ABI QFlags
typedef int ViewMode;    // C ABI enum
typedef int WindowOrder; // C ABI enum
#endif

QTLIBC_API QMdiArea* QMdiArea_new(QWidget* parent);
QTLIBC_API QMdiArea* QMdiArea_new2();
QTLIBC_API QMetaObject* QMdiArea_MetaObject(const QMdiArea* self);
QTLIBC_API void* QMdiArea_Metacast(QMdiArea* self, const char* param1);
QTLIBC_API int QMdiArea_Metacall(QMdiArea* self, int param1, int param2, void** param3);
QTLIBC_API void QMdiArea_OnMetacall(QMdiArea* self, intptr_t slot);
QTLIBC_API int QMdiArea_QBaseMetacall(QMdiArea* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QMdiArea_Tr(const char* s);
QTLIBC_API QSize* QMdiArea_SizeHint(const QMdiArea* self);
QTLIBC_API void QMdiArea_OnSizeHint(const QMdiArea* self, intptr_t slot);
QTLIBC_API QSize* QMdiArea_QBaseSizeHint(const QMdiArea* self);
QTLIBC_API QSize* QMdiArea_MinimumSizeHint(const QMdiArea* self);
QTLIBC_API void QMdiArea_OnMinimumSizeHint(const QMdiArea* self, intptr_t slot);
QTLIBC_API QSize* QMdiArea_QBaseMinimumSizeHint(const QMdiArea* self);
QTLIBC_API QMdiSubWindow* QMdiArea_CurrentSubWindow(const QMdiArea* self);
QTLIBC_API QMdiSubWindow* QMdiArea_ActiveSubWindow(const QMdiArea* self);
QTLIBC_API libqt_list /* of QMdiSubWindow* */ QMdiArea_SubWindowList(const QMdiArea* self);
QTLIBC_API QMdiSubWindow* QMdiArea_AddSubWindow(QMdiArea* self, QWidget* widget);
QTLIBC_API void QMdiArea_RemoveSubWindow(QMdiArea* self, QWidget* widget);
QTLIBC_API QBrush* QMdiArea_Background(const QMdiArea* self);
QTLIBC_API void QMdiArea_SetBackground(QMdiArea* self, QBrush* background);
QTLIBC_API int QMdiArea_ActivationOrder(const QMdiArea* self);
QTLIBC_API void QMdiArea_SetActivationOrder(QMdiArea* self, int order);
QTLIBC_API void QMdiArea_SetOption(QMdiArea* self, int option);
QTLIBC_API bool QMdiArea_TestOption(const QMdiArea* self, int opton);
QTLIBC_API void QMdiArea_SetViewMode(QMdiArea* self, int mode);
QTLIBC_API int QMdiArea_ViewMode(const QMdiArea* self);
QTLIBC_API bool QMdiArea_DocumentMode(const QMdiArea* self);
QTLIBC_API void QMdiArea_SetDocumentMode(QMdiArea* self, bool enabled);
QTLIBC_API void QMdiArea_SetTabsClosable(QMdiArea* self, bool closable);
QTLIBC_API bool QMdiArea_TabsClosable(const QMdiArea* self);
QTLIBC_API void QMdiArea_SetTabsMovable(QMdiArea* self, bool movable);
QTLIBC_API bool QMdiArea_TabsMovable(const QMdiArea* self);
QTLIBC_API void QMdiArea_SetTabShape(QMdiArea* self, int shape);
QTLIBC_API int QMdiArea_TabShape(const QMdiArea* self);
QTLIBC_API void QMdiArea_SetTabPosition(QMdiArea* self, int position);
QTLIBC_API int QMdiArea_TabPosition(const QMdiArea* self);
QTLIBC_API void QMdiArea_SubWindowActivated(QMdiArea* self, QMdiSubWindow* param1);
void QMdiArea_Connect_SubWindowActivated(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_SetActiveSubWindow(QMdiArea* self, QMdiSubWindow* window);
QTLIBC_API void QMdiArea_TileSubWindows(QMdiArea* self);
QTLIBC_API void QMdiArea_CascadeSubWindows(QMdiArea* self);
QTLIBC_API void QMdiArea_CloseActiveSubWindow(QMdiArea* self);
QTLIBC_API void QMdiArea_CloseAllSubWindows(QMdiArea* self);
QTLIBC_API void QMdiArea_ActivateNextSubWindow(QMdiArea* self);
QTLIBC_API void QMdiArea_ActivatePreviousSubWindow(QMdiArea* self);
QTLIBC_API void QMdiArea_SetupViewport(QMdiArea* self, QWidget* viewport);
QTLIBC_API void QMdiArea_OnSetupViewport(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseSetupViewport(QMdiArea* self, QWidget* viewport);
QTLIBC_API bool QMdiArea_Event(QMdiArea* self, QEvent* event);
QTLIBC_API void QMdiArea_OnEvent(QMdiArea* self, intptr_t slot);
QTLIBC_API bool QMdiArea_QBaseEvent(QMdiArea* self, QEvent* event);
QTLIBC_API bool QMdiArea_EventFilter(QMdiArea* self, QObject* object, QEvent* event);
QTLIBC_API void QMdiArea_OnEventFilter(QMdiArea* self, intptr_t slot);
QTLIBC_API bool QMdiArea_QBaseEventFilter(QMdiArea* self, QObject* object, QEvent* event);
QTLIBC_API void QMdiArea_PaintEvent(QMdiArea* self, QPaintEvent* paintEvent);
QTLIBC_API void QMdiArea_OnPaintEvent(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBasePaintEvent(QMdiArea* self, QPaintEvent* paintEvent);
QTLIBC_API void QMdiArea_ChildEvent(QMdiArea* self, QChildEvent* childEvent);
QTLIBC_API void QMdiArea_OnChildEvent(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseChildEvent(QMdiArea* self, QChildEvent* childEvent);
QTLIBC_API void QMdiArea_ResizeEvent(QMdiArea* self, QResizeEvent* resizeEvent);
QTLIBC_API void QMdiArea_OnResizeEvent(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseResizeEvent(QMdiArea* self, QResizeEvent* resizeEvent);
QTLIBC_API void QMdiArea_TimerEvent(QMdiArea* self, QTimerEvent* timerEvent);
QTLIBC_API void QMdiArea_OnTimerEvent(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseTimerEvent(QMdiArea* self, QTimerEvent* timerEvent);
QTLIBC_API void QMdiArea_ShowEvent(QMdiArea* self, QShowEvent* showEvent);
QTLIBC_API void QMdiArea_OnShowEvent(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseShowEvent(QMdiArea* self, QShowEvent* showEvent);
QTLIBC_API bool QMdiArea_ViewportEvent(QMdiArea* self, QEvent* event);
QTLIBC_API void QMdiArea_OnViewportEvent(QMdiArea* self, intptr_t slot);
QTLIBC_API bool QMdiArea_QBaseViewportEvent(QMdiArea* self, QEvent* event);
QTLIBC_API void QMdiArea_ScrollContentsBy(QMdiArea* self, int dx, int dy);
QTLIBC_API void QMdiArea_OnScrollContentsBy(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseScrollContentsBy(QMdiArea* self, int dx, int dy);
QTLIBC_API libqt_string QMdiArea_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QMdiArea_Tr3(const char* s, const char* c, int n);
QTLIBC_API libqt_list /* of QMdiSubWindow* */ QMdiArea_SubWindowList1(const QMdiArea* self, int order);
QTLIBC_API QMdiSubWindow* QMdiArea_AddSubWindow2(QMdiArea* self, QWidget* widget, int flags);
QTLIBC_API void QMdiArea_SetOption2(QMdiArea* self, int option, bool on);
QTLIBC_API void QMdiArea_MousePressEvent(QMdiArea* self, QMouseEvent* param1);
QTLIBC_API void QMdiArea_OnMousePressEvent(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseMousePressEvent(QMdiArea* self, QMouseEvent* param1);
QTLIBC_API void QMdiArea_MouseReleaseEvent(QMdiArea* self, QMouseEvent* param1);
QTLIBC_API void QMdiArea_OnMouseReleaseEvent(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseMouseReleaseEvent(QMdiArea* self, QMouseEvent* param1);
QTLIBC_API void QMdiArea_MouseDoubleClickEvent(QMdiArea* self, QMouseEvent* param1);
QTLIBC_API void QMdiArea_OnMouseDoubleClickEvent(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseMouseDoubleClickEvent(QMdiArea* self, QMouseEvent* param1);
QTLIBC_API void QMdiArea_MouseMoveEvent(QMdiArea* self, QMouseEvent* param1);
QTLIBC_API void QMdiArea_OnMouseMoveEvent(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseMouseMoveEvent(QMdiArea* self, QMouseEvent* param1);
QTLIBC_API void QMdiArea_WheelEvent(QMdiArea* self, QWheelEvent* param1);
QTLIBC_API void QMdiArea_OnWheelEvent(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseWheelEvent(QMdiArea* self, QWheelEvent* param1);
QTLIBC_API void QMdiArea_ContextMenuEvent(QMdiArea* self, QContextMenuEvent* param1);
QTLIBC_API void QMdiArea_OnContextMenuEvent(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseContextMenuEvent(QMdiArea* self, QContextMenuEvent* param1);
QTLIBC_API void QMdiArea_DragEnterEvent(QMdiArea* self, QDragEnterEvent* param1);
QTLIBC_API void QMdiArea_OnDragEnterEvent(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseDragEnterEvent(QMdiArea* self, QDragEnterEvent* param1);
QTLIBC_API void QMdiArea_DragMoveEvent(QMdiArea* self, QDragMoveEvent* param1);
QTLIBC_API void QMdiArea_OnDragMoveEvent(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseDragMoveEvent(QMdiArea* self, QDragMoveEvent* param1);
QTLIBC_API void QMdiArea_DragLeaveEvent(QMdiArea* self, QDragLeaveEvent* param1);
QTLIBC_API void QMdiArea_OnDragLeaveEvent(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseDragLeaveEvent(QMdiArea* self, QDragLeaveEvent* param1);
QTLIBC_API void QMdiArea_DropEvent(QMdiArea* self, QDropEvent* param1);
QTLIBC_API void QMdiArea_OnDropEvent(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseDropEvent(QMdiArea* self, QDropEvent* param1);
QTLIBC_API void QMdiArea_KeyPressEvent(QMdiArea* self, QKeyEvent* param1);
QTLIBC_API void QMdiArea_OnKeyPressEvent(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseKeyPressEvent(QMdiArea* self, QKeyEvent* param1);
QTLIBC_API void QMdiArea_ChangeEvent(QMdiArea* self, QEvent* param1);
QTLIBC_API void QMdiArea_OnChangeEvent(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseChangeEvent(QMdiArea* self, QEvent* param1);
QTLIBC_API int QMdiArea_DevType(const QMdiArea* self);
QTLIBC_API void QMdiArea_OnDevType(const QMdiArea* self, intptr_t slot);
QTLIBC_API int QMdiArea_QBaseDevType(const QMdiArea* self);
QTLIBC_API void QMdiArea_SetVisible(QMdiArea* self, bool visible);
QTLIBC_API void QMdiArea_OnSetVisible(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseSetVisible(QMdiArea* self, bool visible);
QTLIBC_API int QMdiArea_HeightForWidth(const QMdiArea* self, int param1);
QTLIBC_API void QMdiArea_OnHeightForWidth(const QMdiArea* self, intptr_t slot);
QTLIBC_API int QMdiArea_QBaseHeightForWidth(const QMdiArea* self, int param1);
QTLIBC_API bool QMdiArea_HasHeightForWidth(const QMdiArea* self);
QTLIBC_API void QMdiArea_OnHasHeightForWidth(const QMdiArea* self, intptr_t slot);
QTLIBC_API bool QMdiArea_QBaseHasHeightForWidth(const QMdiArea* self);
QTLIBC_API QPaintEngine* QMdiArea_PaintEngine(const QMdiArea* self);
QTLIBC_API void QMdiArea_OnPaintEngine(const QMdiArea* self, intptr_t slot);
QTLIBC_API QPaintEngine* QMdiArea_QBasePaintEngine(const QMdiArea* self);
QTLIBC_API void QMdiArea_KeyReleaseEvent(QMdiArea* self, QKeyEvent* event);
QTLIBC_API void QMdiArea_OnKeyReleaseEvent(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseKeyReleaseEvent(QMdiArea* self, QKeyEvent* event);
QTLIBC_API void QMdiArea_FocusInEvent(QMdiArea* self, QFocusEvent* event);
QTLIBC_API void QMdiArea_OnFocusInEvent(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseFocusInEvent(QMdiArea* self, QFocusEvent* event);
QTLIBC_API void QMdiArea_FocusOutEvent(QMdiArea* self, QFocusEvent* event);
QTLIBC_API void QMdiArea_OnFocusOutEvent(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseFocusOutEvent(QMdiArea* self, QFocusEvent* event);
QTLIBC_API void QMdiArea_EnterEvent(QMdiArea* self, QEnterEvent* event);
QTLIBC_API void QMdiArea_OnEnterEvent(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseEnterEvent(QMdiArea* self, QEnterEvent* event);
QTLIBC_API void QMdiArea_LeaveEvent(QMdiArea* self, QEvent* event);
QTLIBC_API void QMdiArea_OnLeaveEvent(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseLeaveEvent(QMdiArea* self, QEvent* event);
QTLIBC_API void QMdiArea_MoveEvent(QMdiArea* self, QMoveEvent* event);
QTLIBC_API void QMdiArea_OnMoveEvent(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseMoveEvent(QMdiArea* self, QMoveEvent* event);
QTLIBC_API void QMdiArea_CloseEvent(QMdiArea* self, QCloseEvent* event);
QTLIBC_API void QMdiArea_OnCloseEvent(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseCloseEvent(QMdiArea* self, QCloseEvent* event);
QTLIBC_API void QMdiArea_TabletEvent(QMdiArea* self, QTabletEvent* event);
QTLIBC_API void QMdiArea_OnTabletEvent(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseTabletEvent(QMdiArea* self, QTabletEvent* event);
QTLIBC_API void QMdiArea_ActionEvent(QMdiArea* self, QActionEvent* event);
QTLIBC_API void QMdiArea_OnActionEvent(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseActionEvent(QMdiArea* self, QActionEvent* event);
QTLIBC_API void QMdiArea_HideEvent(QMdiArea* self, QHideEvent* event);
QTLIBC_API void QMdiArea_OnHideEvent(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseHideEvent(QMdiArea* self, QHideEvent* event);
QTLIBC_API bool QMdiArea_NativeEvent(QMdiArea* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QMdiArea_OnNativeEvent(QMdiArea* self, intptr_t slot);
QTLIBC_API bool QMdiArea_QBaseNativeEvent(QMdiArea* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QMdiArea_InputMethodEvent(QMdiArea* self, QInputMethodEvent* param1);
QTLIBC_API void QMdiArea_OnInputMethodEvent(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseInputMethodEvent(QMdiArea* self, QInputMethodEvent* param1);
QTLIBC_API QVariant* QMdiArea_InputMethodQuery(const QMdiArea* self, int param1);
QTLIBC_API void QMdiArea_OnInputMethodQuery(const QMdiArea* self, intptr_t slot);
QTLIBC_API QVariant* QMdiArea_QBaseInputMethodQuery(const QMdiArea* self, int param1);
QTLIBC_API bool QMdiArea_FocusNextPrevChild(QMdiArea* self, bool next);
QTLIBC_API void QMdiArea_OnFocusNextPrevChild(QMdiArea* self, intptr_t slot);
QTLIBC_API bool QMdiArea_QBaseFocusNextPrevChild(QMdiArea* self, bool next);
QTLIBC_API void QMdiArea_CustomEvent(QMdiArea* self, QEvent* event);
QTLIBC_API void QMdiArea_OnCustomEvent(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseCustomEvent(QMdiArea* self, QEvent* event);
QTLIBC_API void QMdiArea_ConnectNotify(QMdiArea* self, QMetaMethod* signal);
QTLIBC_API void QMdiArea_OnConnectNotify(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseConnectNotify(QMdiArea* self, QMetaMethod* signal);
QTLIBC_API void QMdiArea_DisconnectNotify(QMdiArea* self, QMetaMethod* signal);
QTLIBC_API void QMdiArea_OnDisconnectNotify(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseDisconnectNotify(QMdiArea* self, QMetaMethod* signal);
QTLIBC_API QSize* QMdiArea_ViewportSizeHint(const QMdiArea* self);
QTLIBC_API void QMdiArea_OnViewportSizeHint(const QMdiArea* self, intptr_t slot);
QTLIBC_API QSize* QMdiArea_QBaseViewportSizeHint(const QMdiArea* self);
QTLIBC_API void QMdiArea_InitStyleOption(const QMdiArea* self, QStyleOptionFrame* option);
QTLIBC_API void QMdiArea_OnInitStyleOption(const QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseInitStyleOption(const QMdiArea* self, QStyleOptionFrame* option);
QTLIBC_API int QMdiArea_Metric(const QMdiArea* self, int param1);
QTLIBC_API void QMdiArea_OnMetric(const QMdiArea* self, intptr_t slot);
QTLIBC_API int QMdiArea_QBaseMetric(const QMdiArea* self, int param1);
QTLIBC_API void QMdiArea_InitPainter(const QMdiArea* self, QPainter* painter);
QTLIBC_API void QMdiArea_OnInitPainter(const QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseInitPainter(const QMdiArea* self, QPainter* painter);
QTLIBC_API QPaintDevice* QMdiArea_Redirected(const QMdiArea* self, QPoint* offset);
QTLIBC_API void QMdiArea_OnRedirected(const QMdiArea* self, intptr_t slot);
QTLIBC_API QPaintDevice* QMdiArea_QBaseRedirected(const QMdiArea* self, QPoint* offset);
QTLIBC_API QPainter* QMdiArea_SharedPainter(const QMdiArea* self);
QTLIBC_API void QMdiArea_OnSharedPainter(const QMdiArea* self, intptr_t slot);
QTLIBC_API QPainter* QMdiArea_QBaseSharedPainter(const QMdiArea* self);
QTLIBC_API void QMdiArea_SetViewportMargins(QMdiArea* self, int left, int top, int right, int bottom);
QTLIBC_API void QMdiArea_OnSetViewportMargins(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseSetViewportMargins(QMdiArea* self, int left, int top, int right, int bottom);
QTLIBC_API QMargins* QMdiArea_ViewportMargins(const QMdiArea* self);
QTLIBC_API void QMdiArea_OnViewportMargins(const QMdiArea* self, intptr_t slot);
QTLIBC_API QMargins* QMdiArea_QBaseViewportMargins(const QMdiArea* self);
QTLIBC_API void QMdiArea_DrawFrame(QMdiArea* self, QPainter* param1);
QTLIBC_API void QMdiArea_OnDrawFrame(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseDrawFrame(QMdiArea* self, QPainter* param1);
QTLIBC_API void QMdiArea_UpdateMicroFocus(QMdiArea* self);
QTLIBC_API void QMdiArea_OnUpdateMicroFocus(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseUpdateMicroFocus(QMdiArea* self);
QTLIBC_API void QMdiArea_Create(QMdiArea* self);
QTLIBC_API void QMdiArea_OnCreate(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseCreate(QMdiArea* self);
QTLIBC_API void QMdiArea_Destroy(QMdiArea* self);
QTLIBC_API void QMdiArea_OnDestroy(QMdiArea* self, intptr_t slot);
QTLIBC_API void QMdiArea_QBaseDestroy(QMdiArea* self);
QTLIBC_API bool QMdiArea_FocusNextChild(QMdiArea* self);
QTLIBC_API void QMdiArea_OnFocusNextChild(QMdiArea* self, intptr_t slot);
QTLIBC_API bool QMdiArea_QBaseFocusNextChild(QMdiArea* self);
QTLIBC_API bool QMdiArea_FocusPreviousChild(QMdiArea* self);
QTLIBC_API void QMdiArea_OnFocusPreviousChild(QMdiArea* self, intptr_t slot);
QTLIBC_API bool QMdiArea_QBaseFocusPreviousChild(QMdiArea* self);
QTLIBC_API QObject* QMdiArea_Sender(const QMdiArea* self);
QTLIBC_API void QMdiArea_OnSender(const QMdiArea* self, intptr_t slot);
QTLIBC_API QObject* QMdiArea_QBaseSender(const QMdiArea* self);
QTLIBC_API int QMdiArea_SenderSignalIndex(const QMdiArea* self);
QTLIBC_API void QMdiArea_OnSenderSignalIndex(const QMdiArea* self, intptr_t slot);
QTLIBC_API int QMdiArea_QBaseSenderSignalIndex(const QMdiArea* self);
QTLIBC_API int QMdiArea_Receivers(const QMdiArea* self, const char* signal);
QTLIBC_API void QMdiArea_OnReceivers(const QMdiArea* self, intptr_t slot);
QTLIBC_API int QMdiArea_QBaseReceivers(const QMdiArea* self, const char* signal);
QTLIBC_API bool QMdiArea_IsSignalConnected(const QMdiArea* self, QMetaMethod* signal);
QTLIBC_API void QMdiArea_OnIsSignalConnected(const QMdiArea* self, intptr_t slot);
QTLIBC_API bool QMdiArea_QBaseIsSignalConnected(const QMdiArea* self, QMetaMethod* signal);
QTLIBC_API void QMdiArea_Delete(QMdiArea* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
