#pragma once
#ifndef SRCC_LIBQMAINWINDOW_H
#define SRCC_LIBQMAINWINDOW_H

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
typedef struct QMainWindow QMainWindow;
typedef struct QMargins QMargins;
typedef struct QMenu QMenu;
typedef struct QMenuBar QMenuBar;
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
typedef struct QStatusBar QStatusBar;
typedef struct QStyle QStyle;
typedef struct QTabletEvent QTabletEvent;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QToolBar QToolBar;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
typedef struct QWindow QWindow;
#endif

#ifdef __cplusplus
typedef QMainWindow::DockOption DockOption;   // C++ enum
typedef QMainWindow::DockOptions DockOptions; // C++ QFlags
#else
typedef int DockOption;  // C ABI enum
typedef int DockOptions; // C ABI QFlags
#endif

QTLIBC_API QMainWindow* QMainWindow_new(QWidget* parent);
QTLIBC_API QMainWindow* QMainWindow_new2();
QTLIBC_API QMainWindow* QMainWindow_new3(QWidget* parent, int flags);
QTLIBC_API QMetaObject* QMainWindow_MetaObject(const QMainWindow* self);
QTLIBC_API void* QMainWindow_Metacast(QMainWindow* self, const char* param1);
QTLIBC_API int QMainWindow_Metacall(QMainWindow* self, int param1, int param2, void** param3);
QTLIBC_API void QMainWindow_OnMetacall(QMainWindow* self, intptr_t slot);
QTLIBC_API int QMainWindow_QBaseMetacall(QMainWindow* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QMainWindow_Tr(const char* s);
QTLIBC_API QSize* QMainWindow_IconSize(const QMainWindow* self);
QTLIBC_API void QMainWindow_SetIconSize(QMainWindow* self, QSize* iconSize);
QTLIBC_API int QMainWindow_ToolButtonStyle(const QMainWindow* self);
QTLIBC_API void QMainWindow_SetToolButtonStyle(QMainWindow* self, int toolButtonStyle);
QTLIBC_API bool QMainWindow_IsAnimated(const QMainWindow* self);
QTLIBC_API bool QMainWindow_IsDockNestingEnabled(const QMainWindow* self);
QTLIBC_API bool QMainWindow_DocumentMode(const QMainWindow* self);
QTLIBC_API void QMainWindow_SetDocumentMode(QMainWindow* self, bool enabled);
QTLIBC_API int QMainWindow_TabShape(const QMainWindow* self);
QTLIBC_API void QMainWindow_SetTabShape(QMainWindow* self, int tabShape);
QTLIBC_API int QMainWindow_TabPosition(const QMainWindow* self, int area);
QTLIBC_API void QMainWindow_SetTabPosition(QMainWindow* self, int areas, int tabPosition);
QTLIBC_API void QMainWindow_SetDockOptions(QMainWindow* self, int options);
QTLIBC_API int QMainWindow_DockOptions(const QMainWindow* self);
QTLIBC_API bool QMainWindow_IsSeparator(const QMainWindow* self, QPoint* pos);
QTLIBC_API QMenuBar* QMainWindow_MenuBar(const QMainWindow* self);
QTLIBC_API void QMainWindow_SetMenuBar(QMainWindow* self, QMenuBar* menubar);
QTLIBC_API QWidget* QMainWindow_MenuWidget(const QMainWindow* self);
QTLIBC_API void QMainWindow_SetMenuWidget(QMainWindow* self, QWidget* menubar);
QTLIBC_API QStatusBar* QMainWindow_StatusBar(const QMainWindow* self);
QTLIBC_API void QMainWindow_SetStatusBar(QMainWindow* self, QStatusBar* statusbar);
QTLIBC_API QWidget* QMainWindow_CentralWidget(const QMainWindow* self);
QTLIBC_API void QMainWindow_SetCentralWidget(QMainWindow* self, QWidget* widget);
QTLIBC_API QWidget* QMainWindow_TakeCentralWidget(QMainWindow* self);
QTLIBC_API void QMainWindow_SetCorner(QMainWindow* self, int corner, int area);
QTLIBC_API int QMainWindow_Corner(const QMainWindow* self, int corner);
QTLIBC_API void QMainWindow_AddToolBarBreak(QMainWindow* self);
QTLIBC_API void QMainWindow_InsertToolBarBreak(QMainWindow* self, QToolBar* before);
QTLIBC_API void QMainWindow_AddToolBar(QMainWindow* self, int area, QToolBar* toolbar);
QTLIBC_API void QMainWindow_AddToolBarWithToolbar(QMainWindow* self, QToolBar* toolbar);
QTLIBC_API QToolBar* QMainWindow_AddToolBarWithTitle(QMainWindow* self, libqt_string title);
QTLIBC_API void QMainWindow_InsertToolBar(QMainWindow* self, QToolBar* before, QToolBar* toolbar);
QTLIBC_API void QMainWindow_RemoveToolBar(QMainWindow* self, QToolBar* toolbar);
QTLIBC_API void QMainWindow_RemoveToolBarBreak(QMainWindow* self, QToolBar* before);
QTLIBC_API bool QMainWindow_UnifiedTitleAndToolBarOnMac(const QMainWindow* self);
QTLIBC_API int QMainWindow_ToolBarArea(const QMainWindow* self, QToolBar* toolbar);
QTLIBC_API bool QMainWindow_ToolBarBreak(const QMainWindow* self, QToolBar* toolbar);
QTLIBC_API void QMainWindow_AddDockWidget(QMainWindow* self, int area, QDockWidget* dockwidget);
QTLIBC_API void QMainWindow_AddDockWidget2(QMainWindow* self, int area, QDockWidget* dockwidget, int orientation);
QTLIBC_API void QMainWindow_SplitDockWidget(QMainWindow* self, QDockWidget* after, QDockWidget* dockwidget, int orientation);
QTLIBC_API void QMainWindow_TabifyDockWidget(QMainWindow* self, QDockWidget* first, QDockWidget* second);
QTLIBC_API libqt_list /* of QDockWidget* */ QMainWindow_TabifiedDockWidgets(const QMainWindow* self, QDockWidget* dockwidget);
QTLIBC_API void QMainWindow_RemoveDockWidget(QMainWindow* self, QDockWidget* dockwidget);
QTLIBC_API bool QMainWindow_RestoreDockWidget(QMainWindow* self, QDockWidget* dockwidget);
QTLIBC_API int QMainWindow_DockWidgetArea(const QMainWindow* self, QDockWidget* dockwidget);
QTLIBC_API void QMainWindow_ResizeDocks(QMainWindow* self, libqt_list /* of QDockWidget* */ docks, libqt_list /* of int */ sizes, int orientation);
QTLIBC_API libqt_string QMainWindow_SaveState(const QMainWindow* self);
QTLIBC_API bool QMainWindow_RestoreState(QMainWindow* self, libqt_string state);
QTLIBC_API QMenu* QMainWindow_CreatePopupMenu(QMainWindow* self);
QTLIBC_API void QMainWindow_OnCreatePopupMenu(QMainWindow* self, intptr_t slot);
QTLIBC_API QMenu* QMainWindow_QBaseCreatePopupMenu(QMainWindow* self);
QTLIBC_API void QMainWindow_SetAnimated(QMainWindow* self, bool enabled);
QTLIBC_API void QMainWindow_SetDockNestingEnabled(QMainWindow* self, bool enabled);
QTLIBC_API void QMainWindow_SetUnifiedTitleAndToolBarOnMac(QMainWindow* self, bool set);
QTLIBC_API void QMainWindow_IconSizeChanged(QMainWindow* self, QSize* iconSize);
void QMainWindow_Connect_IconSizeChanged(QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_ToolButtonStyleChanged(QMainWindow* self, int toolButtonStyle);
void QMainWindow_Connect_ToolButtonStyleChanged(QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_TabifiedDockWidgetActivated(QMainWindow* self, QDockWidget* dockWidget);
void QMainWindow_Connect_TabifiedDockWidgetActivated(QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_ContextMenuEvent(QMainWindow* self, QContextMenuEvent* event);
QTLIBC_API void QMainWindow_OnContextMenuEvent(QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_QBaseContextMenuEvent(QMainWindow* self, QContextMenuEvent* event);
QTLIBC_API bool QMainWindow_Event(QMainWindow* self, QEvent* event);
QTLIBC_API void QMainWindow_OnEvent(QMainWindow* self, intptr_t slot);
QTLIBC_API bool QMainWindow_QBaseEvent(QMainWindow* self, QEvent* event);
QTLIBC_API libqt_string QMainWindow_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QMainWindow_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QMainWindow_AddToolBarBreak1(QMainWindow* self, int area);
QTLIBC_API libqt_string QMainWindow_SaveState1(const QMainWindow* self, int version);
QTLIBC_API bool QMainWindow_RestoreState2(QMainWindow* self, libqt_string state, int version);
QTLIBC_API int QMainWindow_DevType(const QMainWindow* self);
QTLIBC_API void QMainWindow_OnDevType(const QMainWindow* self, intptr_t slot);
QTLIBC_API int QMainWindow_QBaseDevType(const QMainWindow* self);
QTLIBC_API void QMainWindow_SetVisible(QMainWindow* self, bool visible);
QTLIBC_API void QMainWindow_OnSetVisible(QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_QBaseSetVisible(QMainWindow* self, bool visible);
QTLIBC_API QSize* QMainWindow_SizeHint(const QMainWindow* self);
QTLIBC_API void QMainWindow_OnSizeHint(const QMainWindow* self, intptr_t slot);
QTLIBC_API QSize* QMainWindow_QBaseSizeHint(const QMainWindow* self);
QTLIBC_API QSize* QMainWindow_MinimumSizeHint(const QMainWindow* self);
QTLIBC_API void QMainWindow_OnMinimumSizeHint(const QMainWindow* self, intptr_t slot);
QTLIBC_API QSize* QMainWindow_QBaseMinimumSizeHint(const QMainWindow* self);
QTLIBC_API int QMainWindow_HeightForWidth(const QMainWindow* self, int param1);
QTLIBC_API void QMainWindow_OnHeightForWidth(const QMainWindow* self, intptr_t slot);
QTLIBC_API int QMainWindow_QBaseHeightForWidth(const QMainWindow* self, int param1);
QTLIBC_API bool QMainWindow_HasHeightForWidth(const QMainWindow* self);
QTLIBC_API void QMainWindow_OnHasHeightForWidth(const QMainWindow* self, intptr_t slot);
QTLIBC_API bool QMainWindow_QBaseHasHeightForWidth(const QMainWindow* self);
QTLIBC_API QPaintEngine* QMainWindow_PaintEngine(const QMainWindow* self);
QTLIBC_API void QMainWindow_OnPaintEngine(const QMainWindow* self, intptr_t slot);
QTLIBC_API QPaintEngine* QMainWindow_QBasePaintEngine(const QMainWindow* self);
QTLIBC_API void QMainWindow_MousePressEvent(QMainWindow* self, QMouseEvent* event);
QTLIBC_API void QMainWindow_OnMousePressEvent(QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_QBaseMousePressEvent(QMainWindow* self, QMouseEvent* event);
QTLIBC_API void QMainWindow_MouseReleaseEvent(QMainWindow* self, QMouseEvent* event);
QTLIBC_API void QMainWindow_OnMouseReleaseEvent(QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_QBaseMouseReleaseEvent(QMainWindow* self, QMouseEvent* event);
QTLIBC_API void QMainWindow_MouseDoubleClickEvent(QMainWindow* self, QMouseEvent* event);
QTLIBC_API void QMainWindow_OnMouseDoubleClickEvent(QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_QBaseMouseDoubleClickEvent(QMainWindow* self, QMouseEvent* event);
QTLIBC_API void QMainWindow_MouseMoveEvent(QMainWindow* self, QMouseEvent* event);
QTLIBC_API void QMainWindow_OnMouseMoveEvent(QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_QBaseMouseMoveEvent(QMainWindow* self, QMouseEvent* event);
QTLIBC_API void QMainWindow_WheelEvent(QMainWindow* self, QWheelEvent* event);
QTLIBC_API void QMainWindow_OnWheelEvent(QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_QBaseWheelEvent(QMainWindow* self, QWheelEvent* event);
QTLIBC_API void QMainWindow_KeyPressEvent(QMainWindow* self, QKeyEvent* event);
QTLIBC_API void QMainWindow_OnKeyPressEvent(QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_QBaseKeyPressEvent(QMainWindow* self, QKeyEvent* event);
QTLIBC_API void QMainWindow_KeyReleaseEvent(QMainWindow* self, QKeyEvent* event);
QTLIBC_API void QMainWindow_OnKeyReleaseEvent(QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_QBaseKeyReleaseEvent(QMainWindow* self, QKeyEvent* event);
QTLIBC_API void QMainWindow_FocusInEvent(QMainWindow* self, QFocusEvent* event);
QTLIBC_API void QMainWindow_OnFocusInEvent(QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_QBaseFocusInEvent(QMainWindow* self, QFocusEvent* event);
QTLIBC_API void QMainWindow_FocusOutEvent(QMainWindow* self, QFocusEvent* event);
QTLIBC_API void QMainWindow_OnFocusOutEvent(QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_QBaseFocusOutEvent(QMainWindow* self, QFocusEvent* event);
QTLIBC_API void QMainWindow_EnterEvent(QMainWindow* self, QEnterEvent* event);
QTLIBC_API void QMainWindow_OnEnterEvent(QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_QBaseEnterEvent(QMainWindow* self, QEnterEvent* event);
QTLIBC_API void QMainWindow_LeaveEvent(QMainWindow* self, QEvent* event);
QTLIBC_API void QMainWindow_OnLeaveEvent(QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_QBaseLeaveEvent(QMainWindow* self, QEvent* event);
QTLIBC_API void QMainWindow_PaintEvent(QMainWindow* self, QPaintEvent* event);
QTLIBC_API void QMainWindow_OnPaintEvent(QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_QBasePaintEvent(QMainWindow* self, QPaintEvent* event);
QTLIBC_API void QMainWindow_MoveEvent(QMainWindow* self, QMoveEvent* event);
QTLIBC_API void QMainWindow_OnMoveEvent(QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_QBaseMoveEvent(QMainWindow* self, QMoveEvent* event);
QTLIBC_API void QMainWindow_ResizeEvent(QMainWindow* self, QResizeEvent* event);
QTLIBC_API void QMainWindow_OnResizeEvent(QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_QBaseResizeEvent(QMainWindow* self, QResizeEvent* event);
QTLIBC_API void QMainWindow_CloseEvent(QMainWindow* self, QCloseEvent* event);
QTLIBC_API void QMainWindow_OnCloseEvent(QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_QBaseCloseEvent(QMainWindow* self, QCloseEvent* event);
QTLIBC_API void QMainWindow_TabletEvent(QMainWindow* self, QTabletEvent* event);
QTLIBC_API void QMainWindow_OnTabletEvent(QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_QBaseTabletEvent(QMainWindow* self, QTabletEvent* event);
QTLIBC_API void QMainWindow_ActionEvent(QMainWindow* self, QActionEvent* event);
QTLIBC_API void QMainWindow_OnActionEvent(QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_QBaseActionEvent(QMainWindow* self, QActionEvent* event);
QTLIBC_API void QMainWindow_DragEnterEvent(QMainWindow* self, QDragEnterEvent* event);
QTLIBC_API void QMainWindow_OnDragEnterEvent(QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_QBaseDragEnterEvent(QMainWindow* self, QDragEnterEvent* event);
QTLIBC_API void QMainWindow_DragMoveEvent(QMainWindow* self, QDragMoveEvent* event);
QTLIBC_API void QMainWindow_OnDragMoveEvent(QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_QBaseDragMoveEvent(QMainWindow* self, QDragMoveEvent* event);
QTLIBC_API void QMainWindow_DragLeaveEvent(QMainWindow* self, QDragLeaveEvent* event);
QTLIBC_API void QMainWindow_OnDragLeaveEvent(QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_QBaseDragLeaveEvent(QMainWindow* self, QDragLeaveEvent* event);
QTLIBC_API void QMainWindow_DropEvent(QMainWindow* self, QDropEvent* event);
QTLIBC_API void QMainWindow_OnDropEvent(QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_QBaseDropEvent(QMainWindow* self, QDropEvent* event);
QTLIBC_API void QMainWindow_ShowEvent(QMainWindow* self, QShowEvent* event);
QTLIBC_API void QMainWindow_OnShowEvent(QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_QBaseShowEvent(QMainWindow* self, QShowEvent* event);
QTLIBC_API void QMainWindow_HideEvent(QMainWindow* self, QHideEvent* event);
QTLIBC_API void QMainWindow_OnHideEvent(QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_QBaseHideEvent(QMainWindow* self, QHideEvent* event);
QTLIBC_API bool QMainWindow_NativeEvent(QMainWindow* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QMainWindow_OnNativeEvent(QMainWindow* self, intptr_t slot);
QTLIBC_API bool QMainWindow_QBaseNativeEvent(QMainWindow* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QMainWindow_ChangeEvent(QMainWindow* self, QEvent* param1);
QTLIBC_API void QMainWindow_OnChangeEvent(QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_QBaseChangeEvent(QMainWindow* self, QEvent* param1);
QTLIBC_API void QMainWindow_InputMethodEvent(QMainWindow* self, QInputMethodEvent* param1);
QTLIBC_API void QMainWindow_OnInputMethodEvent(QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_QBaseInputMethodEvent(QMainWindow* self, QInputMethodEvent* param1);
QTLIBC_API QVariant* QMainWindow_InputMethodQuery(const QMainWindow* self, int param1);
QTLIBC_API void QMainWindow_OnInputMethodQuery(const QMainWindow* self, intptr_t slot);
QTLIBC_API QVariant* QMainWindow_QBaseInputMethodQuery(const QMainWindow* self, int param1);
QTLIBC_API bool QMainWindow_FocusNextPrevChild(QMainWindow* self, bool next);
QTLIBC_API void QMainWindow_OnFocusNextPrevChild(QMainWindow* self, intptr_t slot);
QTLIBC_API bool QMainWindow_QBaseFocusNextPrevChild(QMainWindow* self, bool next);
QTLIBC_API bool QMainWindow_EventFilter(QMainWindow* self, QObject* watched, QEvent* event);
QTLIBC_API void QMainWindow_OnEventFilter(QMainWindow* self, intptr_t slot);
QTLIBC_API bool QMainWindow_QBaseEventFilter(QMainWindow* self, QObject* watched, QEvent* event);
QTLIBC_API void QMainWindow_TimerEvent(QMainWindow* self, QTimerEvent* event);
QTLIBC_API void QMainWindow_OnTimerEvent(QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_QBaseTimerEvent(QMainWindow* self, QTimerEvent* event);
QTLIBC_API void QMainWindow_ChildEvent(QMainWindow* self, QChildEvent* event);
QTLIBC_API void QMainWindow_OnChildEvent(QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_QBaseChildEvent(QMainWindow* self, QChildEvent* event);
QTLIBC_API void QMainWindow_CustomEvent(QMainWindow* self, QEvent* event);
QTLIBC_API void QMainWindow_OnCustomEvent(QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_QBaseCustomEvent(QMainWindow* self, QEvent* event);
QTLIBC_API void QMainWindow_ConnectNotify(QMainWindow* self, QMetaMethod* signal);
QTLIBC_API void QMainWindow_OnConnectNotify(QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_QBaseConnectNotify(QMainWindow* self, QMetaMethod* signal);
QTLIBC_API void QMainWindow_DisconnectNotify(QMainWindow* self, QMetaMethod* signal);
QTLIBC_API void QMainWindow_OnDisconnectNotify(QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_QBaseDisconnectNotify(QMainWindow* self, QMetaMethod* signal);
QTLIBC_API int QMainWindow_Metric(const QMainWindow* self, int param1);
QTLIBC_API void QMainWindow_OnMetric(const QMainWindow* self, intptr_t slot);
QTLIBC_API int QMainWindow_QBaseMetric(const QMainWindow* self, int param1);
QTLIBC_API void QMainWindow_InitPainter(const QMainWindow* self, QPainter* painter);
QTLIBC_API void QMainWindow_OnInitPainter(const QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_QBaseInitPainter(const QMainWindow* self, QPainter* painter);
QTLIBC_API QPaintDevice* QMainWindow_Redirected(const QMainWindow* self, QPoint* offset);
QTLIBC_API void QMainWindow_OnRedirected(const QMainWindow* self, intptr_t slot);
QTLIBC_API QPaintDevice* QMainWindow_QBaseRedirected(const QMainWindow* self, QPoint* offset);
QTLIBC_API QPainter* QMainWindow_SharedPainter(const QMainWindow* self);
QTLIBC_API void QMainWindow_OnSharedPainter(const QMainWindow* self, intptr_t slot);
QTLIBC_API QPainter* QMainWindow_QBaseSharedPainter(const QMainWindow* self);
QTLIBC_API void QMainWindow_UpdateMicroFocus(QMainWindow* self);
QTLIBC_API void QMainWindow_OnUpdateMicroFocus(QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_QBaseUpdateMicroFocus(QMainWindow* self);
QTLIBC_API void QMainWindow_Create(QMainWindow* self);
QTLIBC_API void QMainWindow_OnCreate(QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_QBaseCreate(QMainWindow* self);
QTLIBC_API void QMainWindow_Destroy(QMainWindow* self);
QTLIBC_API void QMainWindow_OnDestroy(QMainWindow* self, intptr_t slot);
QTLIBC_API void QMainWindow_QBaseDestroy(QMainWindow* self);
QTLIBC_API bool QMainWindow_FocusNextChild(QMainWindow* self);
QTLIBC_API void QMainWindow_OnFocusNextChild(QMainWindow* self, intptr_t slot);
QTLIBC_API bool QMainWindow_QBaseFocusNextChild(QMainWindow* self);
QTLIBC_API bool QMainWindow_FocusPreviousChild(QMainWindow* self);
QTLIBC_API void QMainWindow_OnFocusPreviousChild(QMainWindow* self, intptr_t slot);
QTLIBC_API bool QMainWindow_QBaseFocusPreviousChild(QMainWindow* self);
QTLIBC_API QObject* QMainWindow_Sender(const QMainWindow* self);
QTLIBC_API void QMainWindow_OnSender(const QMainWindow* self, intptr_t slot);
QTLIBC_API QObject* QMainWindow_QBaseSender(const QMainWindow* self);
QTLIBC_API int QMainWindow_SenderSignalIndex(const QMainWindow* self);
QTLIBC_API void QMainWindow_OnSenderSignalIndex(const QMainWindow* self, intptr_t slot);
QTLIBC_API int QMainWindow_QBaseSenderSignalIndex(const QMainWindow* self);
QTLIBC_API int QMainWindow_Receivers(const QMainWindow* self, const char* signal);
QTLIBC_API void QMainWindow_OnReceivers(const QMainWindow* self, intptr_t slot);
QTLIBC_API int QMainWindow_QBaseReceivers(const QMainWindow* self, const char* signal);
QTLIBC_API bool QMainWindow_IsSignalConnected(const QMainWindow* self, QMetaMethod* signal);
QTLIBC_API void QMainWindow_OnIsSignalConnected(const QMainWindow* self, intptr_t slot);
QTLIBC_API bool QMainWindow_QBaseIsSignalConnected(const QMainWindow* self, QMetaMethod* signal);
QTLIBC_API void QMainWindow_Delete(QMainWindow* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
