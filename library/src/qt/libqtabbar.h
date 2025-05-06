#pragma once
#ifndef SRC_QTC_LIBQTABBAR_H
#define SRC_QTC_LIBQTABBAR_H

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
typedef struct QColor QColor;
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
typedef struct QStyleOptionTab QStyleOptionTab;
typedef struct QTabBar QTabBar;
typedef struct QTabletEvent QTabletEvent;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
typedef struct QWindow QWindow;
#endif

#ifdef __cplusplus
typedef QTabBar::ButtonPosition ButtonPosition;       // C++ enum
typedef QTabBar::SelectionBehavior SelectionBehavior; // C++ enum
typedef QTabBar::Shape Shape;                         // C++ enum
#else
typedef int ButtonPosition;    // C ABI enum
typedef int SelectionBehavior; // C ABI enum
typedef int Shape;             // C ABI enum
#endif

QTLIBC_API QTabBar* QTabBar_new(QWidget* parent);
QTLIBC_API QTabBar* QTabBar_new2();
QTLIBC_API QMetaObject* QTabBar_MetaObject(const QTabBar* self);
QTLIBC_API void* QTabBar_Metacast(QTabBar* self, const char* param1);
QTLIBC_API int QTabBar_Metacall(QTabBar* self, int param1, int param2, void** param3);
QTLIBC_API void QTabBar_OnMetacall(QTabBar* self, intptr_t slot);
QTLIBC_API int QTabBar_QBaseMetacall(QTabBar* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QTabBar_Tr(const char* s);
QTLIBC_API int QTabBar_Shape(const QTabBar* self);
QTLIBC_API void QTabBar_SetShape(QTabBar* self, int shape);
QTLIBC_API int QTabBar_AddTab(QTabBar* self, libqt_string text);
QTLIBC_API int QTabBar_AddTab2(QTabBar* self, QIcon* icon, libqt_string text);
QTLIBC_API int QTabBar_InsertTab(QTabBar* self, int index, libqt_string text);
QTLIBC_API int QTabBar_InsertTab2(QTabBar* self, int index, QIcon* icon, libqt_string text);
QTLIBC_API void QTabBar_RemoveTab(QTabBar* self, int index);
QTLIBC_API void QTabBar_MoveTab(QTabBar* self, int from, int to);
QTLIBC_API bool QTabBar_IsTabEnabled(const QTabBar* self, int index);
QTLIBC_API void QTabBar_SetTabEnabled(QTabBar* self, int index, bool enabled);
QTLIBC_API bool QTabBar_IsTabVisible(const QTabBar* self, int index);
QTLIBC_API void QTabBar_SetTabVisible(QTabBar* self, int index, bool visible);
QTLIBC_API libqt_string QTabBar_TabText(const QTabBar* self, int index);
QTLIBC_API void QTabBar_SetTabText(QTabBar* self, int index, libqt_string text);
QTLIBC_API QColor* QTabBar_TabTextColor(const QTabBar* self, int index);
QTLIBC_API void QTabBar_SetTabTextColor(QTabBar* self, int index, QColor* color);
QTLIBC_API QIcon* QTabBar_TabIcon(const QTabBar* self, int index);
QTLIBC_API void QTabBar_SetTabIcon(QTabBar* self, int index, QIcon* icon);
QTLIBC_API int QTabBar_ElideMode(const QTabBar* self);
QTLIBC_API void QTabBar_SetElideMode(QTabBar* self, int mode);
QTLIBC_API void QTabBar_SetTabToolTip(QTabBar* self, int index, libqt_string tip);
QTLIBC_API libqt_string QTabBar_TabToolTip(const QTabBar* self, int index);
QTLIBC_API void QTabBar_SetTabWhatsThis(QTabBar* self, int index, libqt_string text);
QTLIBC_API libqt_string QTabBar_TabWhatsThis(const QTabBar* self, int index);
QTLIBC_API void QTabBar_SetTabData(QTabBar* self, int index, QVariant* data);
QTLIBC_API QVariant* QTabBar_TabData(const QTabBar* self, int index);
QTLIBC_API QRect* QTabBar_TabRect(const QTabBar* self, int index);
QTLIBC_API int QTabBar_TabAt(const QTabBar* self, QPoint* pos);
QTLIBC_API int QTabBar_CurrentIndex(const QTabBar* self);
QTLIBC_API int QTabBar_Count(const QTabBar* self);
QTLIBC_API QSize* QTabBar_SizeHint(const QTabBar* self);
QTLIBC_API void QTabBar_OnSizeHint(const QTabBar* self, intptr_t slot);
QTLIBC_API QSize* QTabBar_QBaseSizeHint(const QTabBar* self);
QTLIBC_API QSize* QTabBar_MinimumSizeHint(const QTabBar* self);
QTLIBC_API void QTabBar_OnMinimumSizeHint(const QTabBar* self, intptr_t slot);
QTLIBC_API QSize* QTabBar_QBaseMinimumSizeHint(const QTabBar* self);
QTLIBC_API void QTabBar_SetDrawBase(QTabBar* self, bool drawTheBase);
QTLIBC_API bool QTabBar_DrawBase(const QTabBar* self);
QTLIBC_API QSize* QTabBar_IconSize(const QTabBar* self);
QTLIBC_API void QTabBar_SetIconSize(QTabBar* self, QSize* size);
QTLIBC_API bool QTabBar_UsesScrollButtons(const QTabBar* self);
QTLIBC_API void QTabBar_SetUsesScrollButtons(QTabBar* self, bool useButtons);
QTLIBC_API bool QTabBar_TabsClosable(const QTabBar* self);
QTLIBC_API void QTabBar_SetTabsClosable(QTabBar* self, bool closable);
QTLIBC_API void QTabBar_SetTabButton(QTabBar* self, int index, int position, QWidget* widget);
QTLIBC_API QWidget* QTabBar_TabButton(const QTabBar* self, int index, int position);
QTLIBC_API int QTabBar_SelectionBehaviorOnRemove(const QTabBar* self);
QTLIBC_API void QTabBar_SetSelectionBehaviorOnRemove(QTabBar* self, int behavior);
QTLIBC_API bool QTabBar_Expanding(const QTabBar* self);
QTLIBC_API void QTabBar_SetExpanding(QTabBar* self, bool enabled);
QTLIBC_API bool QTabBar_IsMovable(const QTabBar* self);
QTLIBC_API void QTabBar_SetMovable(QTabBar* self, bool movable);
QTLIBC_API bool QTabBar_DocumentMode(const QTabBar* self);
QTLIBC_API void QTabBar_SetDocumentMode(QTabBar* self, bool set);
QTLIBC_API bool QTabBar_AutoHide(const QTabBar* self);
QTLIBC_API void QTabBar_SetAutoHide(QTabBar* self, bool hide);
QTLIBC_API bool QTabBar_ChangeCurrentOnDrag(const QTabBar* self);
QTLIBC_API void QTabBar_SetChangeCurrentOnDrag(QTabBar* self, bool change);
QTLIBC_API libqt_string QTabBar_AccessibleTabName(const QTabBar* self, int index);
QTLIBC_API void QTabBar_SetAccessibleTabName(QTabBar* self, int index, libqt_string name);
QTLIBC_API void QTabBar_SetCurrentIndex(QTabBar* self, int index);
QTLIBC_API void QTabBar_CurrentChanged(QTabBar* self, int index);
void QTabBar_Connect_CurrentChanged(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_TabCloseRequested(QTabBar* self, int index);
void QTabBar_Connect_TabCloseRequested(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_TabMoved(QTabBar* self, int from, int to);
void QTabBar_Connect_TabMoved(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_TabBarClicked(QTabBar* self, int index);
void QTabBar_Connect_TabBarClicked(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_TabBarDoubleClicked(QTabBar* self, int index);
void QTabBar_Connect_TabBarDoubleClicked(QTabBar* self, intptr_t slot);
QTLIBC_API QSize* QTabBar_TabSizeHint(const QTabBar* self, int index);
QTLIBC_API void QTabBar_OnTabSizeHint(const QTabBar* self, intptr_t slot);
QTLIBC_API QSize* QTabBar_QBaseTabSizeHint(const QTabBar* self, int index);
QTLIBC_API QSize* QTabBar_MinimumTabSizeHint(const QTabBar* self, int index);
QTLIBC_API void QTabBar_OnMinimumTabSizeHint(const QTabBar* self, intptr_t slot);
QTLIBC_API QSize* QTabBar_QBaseMinimumTabSizeHint(const QTabBar* self, int index);
QTLIBC_API void QTabBar_TabInserted(QTabBar* self, int index);
QTLIBC_API void QTabBar_OnTabInserted(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseTabInserted(QTabBar* self, int index);
QTLIBC_API void QTabBar_TabRemoved(QTabBar* self, int index);
QTLIBC_API void QTabBar_OnTabRemoved(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseTabRemoved(QTabBar* self, int index);
QTLIBC_API void QTabBar_TabLayoutChange(QTabBar* self);
QTLIBC_API void QTabBar_OnTabLayoutChange(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseTabLayoutChange(QTabBar* self);
QTLIBC_API bool QTabBar_Event(QTabBar* self, QEvent* param1);
QTLIBC_API void QTabBar_OnEvent(QTabBar* self, intptr_t slot);
QTLIBC_API bool QTabBar_QBaseEvent(QTabBar* self, QEvent* param1);
QTLIBC_API void QTabBar_ResizeEvent(QTabBar* self, QResizeEvent* param1);
QTLIBC_API void QTabBar_OnResizeEvent(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseResizeEvent(QTabBar* self, QResizeEvent* param1);
QTLIBC_API void QTabBar_ShowEvent(QTabBar* self, QShowEvent* param1);
QTLIBC_API void QTabBar_OnShowEvent(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseShowEvent(QTabBar* self, QShowEvent* param1);
QTLIBC_API void QTabBar_HideEvent(QTabBar* self, QHideEvent* param1);
QTLIBC_API void QTabBar_OnHideEvent(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseHideEvent(QTabBar* self, QHideEvent* param1);
QTLIBC_API void QTabBar_PaintEvent(QTabBar* self, QPaintEvent* param1);
QTLIBC_API void QTabBar_OnPaintEvent(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBasePaintEvent(QTabBar* self, QPaintEvent* param1);
QTLIBC_API void QTabBar_MousePressEvent(QTabBar* self, QMouseEvent* param1);
QTLIBC_API void QTabBar_OnMousePressEvent(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseMousePressEvent(QTabBar* self, QMouseEvent* param1);
QTLIBC_API void QTabBar_MouseMoveEvent(QTabBar* self, QMouseEvent* param1);
QTLIBC_API void QTabBar_OnMouseMoveEvent(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseMouseMoveEvent(QTabBar* self, QMouseEvent* param1);
QTLIBC_API void QTabBar_MouseReleaseEvent(QTabBar* self, QMouseEvent* param1);
QTLIBC_API void QTabBar_OnMouseReleaseEvent(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseMouseReleaseEvent(QTabBar* self, QMouseEvent* param1);
QTLIBC_API void QTabBar_MouseDoubleClickEvent(QTabBar* self, QMouseEvent* param1);
QTLIBC_API void QTabBar_OnMouseDoubleClickEvent(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseMouseDoubleClickEvent(QTabBar* self, QMouseEvent* param1);
QTLIBC_API void QTabBar_WheelEvent(QTabBar* self, QWheelEvent* event);
QTLIBC_API void QTabBar_OnWheelEvent(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseWheelEvent(QTabBar* self, QWheelEvent* event);
QTLIBC_API void QTabBar_KeyPressEvent(QTabBar* self, QKeyEvent* param1);
QTLIBC_API void QTabBar_OnKeyPressEvent(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseKeyPressEvent(QTabBar* self, QKeyEvent* param1);
QTLIBC_API void QTabBar_ChangeEvent(QTabBar* self, QEvent* param1);
QTLIBC_API void QTabBar_OnChangeEvent(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseChangeEvent(QTabBar* self, QEvent* param1);
QTLIBC_API void QTabBar_TimerEvent(QTabBar* self, QTimerEvent* event);
QTLIBC_API void QTabBar_OnTimerEvent(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseTimerEvent(QTabBar* self, QTimerEvent* event);
QTLIBC_API void QTabBar_InitStyleOption(const QTabBar* self, QStyleOptionTab* option, int tabIndex);
QTLIBC_API void QTabBar_OnInitStyleOption(const QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseInitStyleOption(const QTabBar* self, QStyleOptionTab* option, int tabIndex);
QTLIBC_API libqt_string QTabBar_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QTabBar_Tr3(const char* s, const char* c, int n);
QTLIBC_API int QTabBar_DevType(const QTabBar* self);
QTLIBC_API void QTabBar_OnDevType(const QTabBar* self, intptr_t slot);
QTLIBC_API int QTabBar_QBaseDevType(const QTabBar* self);
QTLIBC_API void QTabBar_SetVisible(QTabBar* self, bool visible);
QTLIBC_API void QTabBar_OnSetVisible(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseSetVisible(QTabBar* self, bool visible);
QTLIBC_API int QTabBar_HeightForWidth(const QTabBar* self, int param1);
QTLIBC_API void QTabBar_OnHeightForWidth(const QTabBar* self, intptr_t slot);
QTLIBC_API int QTabBar_QBaseHeightForWidth(const QTabBar* self, int param1);
QTLIBC_API bool QTabBar_HasHeightForWidth(const QTabBar* self);
QTLIBC_API void QTabBar_OnHasHeightForWidth(const QTabBar* self, intptr_t slot);
QTLIBC_API bool QTabBar_QBaseHasHeightForWidth(const QTabBar* self);
QTLIBC_API QPaintEngine* QTabBar_PaintEngine(const QTabBar* self);
QTLIBC_API void QTabBar_OnPaintEngine(const QTabBar* self, intptr_t slot);
QTLIBC_API QPaintEngine* QTabBar_QBasePaintEngine(const QTabBar* self);
QTLIBC_API void QTabBar_KeyReleaseEvent(QTabBar* self, QKeyEvent* event);
QTLIBC_API void QTabBar_OnKeyReleaseEvent(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseKeyReleaseEvent(QTabBar* self, QKeyEvent* event);
QTLIBC_API void QTabBar_FocusInEvent(QTabBar* self, QFocusEvent* event);
QTLIBC_API void QTabBar_OnFocusInEvent(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseFocusInEvent(QTabBar* self, QFocusEvent* event);
QTLIBC_API void QTabBar_FocusOutEvent(QTabBar* self, QFocusEvent* event);
QTLIBC_API void QTabBar_OnFocusOutEvent(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseFocusOutEvent(QTabBar* self, QFocusEvent* event);
QTLIBC_API void QTabBar_EnterEvent(QTabBar* self, QEnterEvent* event);
QTLIBC_API void QTabBar_OnEnterEvent(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseEnterEvent(QTabBar* self, QEnterEvent* event);
QTLIBC_API void QTabBar_LeaveEvent(QTabBar* self, QEvent* event);
QTLIBC_API void QTabBar_OnLeaveEvent(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseLeaveEvent(QTabBar* self, QEvent* event);
QTLIBC_API void QTabBar_MoveEvent(QTabBar* self, QMoveEvent* event);
QTLIBC_API void QTabBar_OnMoveEvent(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseMoveEvent(QTabBar* self, QMoveEvent* event);
QTLIBC_API void QTabBar_CloseEvent(QTabBar* self, QCloseEvent* event);
QTLIBC_API void QTabBar_OnCloseEvent(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseCloseEvent(QTabBar* self, QCloseEvent* event);
QTLIBC_API void QTabBar_ContextMenuEvent(QTabBar* self, QContextMenuEvent* event);
QTLIBC_API void QTabBar_OnContextMenuEvent(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseContextMenuEvent(QTabBar* self, QContextMenuEvent* event);
QTLIBC_API void QTabBar_TabletEvent(QTabBar* self, QTabletEvent* event);
QTLIBC_API void QTabBar_OnTabletEvent(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseTabletEvent(QTabBar* self, QTabletEvent* event);
QTLIBC_API void QTabBar_ActionEvent(QTabBar* self, QActionEvent* event);
QTLIBC_API void QTabBar_OnActionEvent(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseActionEvent(QTabBar* self, QActionEvent* event);
QTLIBC_API void QTabBar_DragEnterEvent(QTabBar* self, QDragEnterEvent* event);
QTLIBC_API void QTabBar_OnDragEnterEvent(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseDragEnterEvent(QTabBar* self, QDragEnterEvent* event);
QTLIBC_API void QTabBar_DragMoveEvent(QTabBar* self, QDragMoveEvent* event);
QTLIBC_API void QTabBar_OnDragMoveEvent(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseDragMoveEvent(QTabBar* self, QDragMoveEvent* event);
QTLIBC_API void QTabBar_DragLeaveEvent(QTabBar* self, QDragLeaveEvent* event);
QTLIBC_API void QTabBar_OnDragLeaveEvent(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseDragLeaveEvent(QTabBar* self, QDragLeaveEvent* event);
QTLIBC_API void QTabBar_DropEvent(QTabBar* self, QDropEvent* event);
QTLIBC_API void QTabBar_OnDropEvent(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseDropEvent(QTabBar* self, QDropEvent* event);
QTLIBC_API bool QTabBar_NativeEvent(QTabBar* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QTabBar_OnNativeEvent(QTabBar* self, intptr_t slot);
QTLIBC_API bool QTabBar_QBaseNativeEvent(QTabBar* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QTabBar_InputMethodEvent(QTabBar* self, QInputMethodEvent* param1);
QTLIBC_API void QTabBar_OnInputMethodEvent(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseInputMethodEvent(QTabBar* self, QInputMethodEvent* param1);
QTLIBC_API QVariant* QTabBar_InputMethodQuery(const QTabBar* self, int param1);
QTLIBC_API void QTabBar_OnInputMethodQuery(const QTabBar* self, intptr_t slot);
QTLIBC_API QVariant* QTabBar_QBaseInputMethodQuery(const QTabBar* self, int param1);
QTLIBC_API bool QTabBar_FocusNextPrevChild(QTabBar* self, bool next);
QTLIBC_API void QTabBar_OnFocusNextPrevChild(QTabBar* self, intptr_t slot);
QTLIBC_API bool QTabBar_QBaseFocusNextPrevChild(QTabBar* self, bool next);
QTLIBC_API bool QTabBar_EventFilter(QTabBar* self, QObject* watched, QEvent* event);
QTLIBC_API void QTabBar_OnEventFilter(QTabBar* self, intptr_t slot);
QTLIBC_API bool QTabBar_QBaseEventFilter(QTabBar* self, QObject* watched, QEvent* event);
QTLIBC_API void QTabBar_ChildEvent(QTabBar* self, QChildEvent* event);
QTLIBC_API void QTabBar_OnChildEvent(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseChildEvent(QTabBar* self, QChildEvent* event);
QTLIBC_API void QTabBar_CustomEvent(QTabBar* self, QEvent* event);
QTLIBC_API void QTabBar_OnCustomEvent(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseCustomEvent(QTabBar* self, QEvent* event);
QTLIBC_API void QTabBar_ConnectNotify(QTabBar* self, QMetaMethod* signal);
QTLIBC_API void QTabBar_OnConnectNotify(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseConnectNotify(QTabBar* self, QMetaMethod* signal);
QTLIBC_API void QTabBar_DisconnectNotify(QTabBar* self, QMetaMethod* signal);
QTLIBC_API void QTabBar_OnDisconnectNotify(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseDisconnectNotify(QTabBar* self, QMetaMethod* signal);
QTLIBC_API int QTabBar_Metric(const QTabBar* self, int param1);
QTLIBC_API void QTabBar_OnMetric(const QTabBar* self, intptr_t slot);
QTLIBC_API int QTabBar_QBaseMetric(const QTabBar* self, int param1);
QTLIBC_API void QTabBar_InitPainter(const QTabBar* self, QPainter* painter);
QTLIBC_API void QTabBar_OnInitPainter(const QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseInitPainter(const QTabBar* self, QPainter* painter);
QTLIBC_API QPaintDevice* QTabBar_Redirected(const QTabBar* self, QPoint* offset);
QTLIBC_API void QTabBar_OnRedirected(const QTabBar* self, intptr_t slot);
QTLIBC_API QPaintDevice* QTabBar_QBaseRedirected(const QTabBar* self, QPoint* offset);
QTLIBC_API QPainter* QTabBar_SharedPainter(const QTabBar* self);
QTLIBC_API void QTabBar_OnSharedPainter(const QTabBar* self, intptr_t slot);
QTLIBC_API QPainter* QTabBar_QBaseSharedPainter(const QTabBar* self);
QTLIBC_API void QTabBar_UpdateMicroFocus(QTabBar* self);
QTLIBC_API void QTabBar_OnUpdateMicroFocus(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseUpdateMicroFocus(QTabBar* self);
QTLIBC_API void QTabBar_Create(QTabBar* self);
QTLIBC_API void QTabBar_OnCreate(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseCreate(QTabBar* self);
QTLIBC_API void QTabBar_Destroy(QTabBar* self);
QTLIBC_API void QTabBar_OnDestroy(QTabBar* self, intptr_t slot);
QTLIBC_API void QTabBar_QBaseDestroy(QTabBar* self);
QTLIBC_API bool QTabBar_FocusNextChild(QTabBar* self);
QTLIBC_API void QTabBar_OnFocusNextChild(QTabBar* self, intptr_t slot);
QTLIBC_API bool QTabBar_QBaseFocusNextChild(QTabBar* self);
QTLIBC_API bool QTabBar_FocusPreviousChild(QTabBar* self);
QTLIBC_API void QTabBar_OnFocusPreviousChild(QTabBar* self, intptr_t slot);
QTLIBC_API bool QTabBar_QBaseFocusPreviousChild(QTabBar* self);
QTLIBC_API QObject* QTabBar_Sender(const QTabBar* self);
QTLIBC_API void QTabBar_OnSender(const QTabBar* self, intptr_t slot);
QTLIBC_API QObject* QTabBar_QBaseSender(const QTabBar* self);
QTLIBC_API int QTabBar_SenderSignalIndex(const QTabBar* self);
QTLIBC_API void QTabBar_OnSenderSignalIndex(const QTabBar* self, intptr_t slot);
QTLIBC_API int QTabBar_QBaseSenderSignalIndex(const QTabBar* self);
QTLIBC_API int QTabBar_Receivers(const QTabBar* self, const char* signal);
QTLIBC_API void QTabBar_OnReceivers(const QTabBar* self, intptr_t slot);
QTLIBC_API int QTabBar_QBaseReceivers(const QTabBar* self, const char* signal);
QTLIBC_API bool QTabBar_IsSignalConnected(const QTabBar* self, QMetaMethod* signal);
QTLIBC_API void QTabBar_OnIsSignalConnected(const QTabBar* self, intptr_t slot);
QTLIBC_API bool QTabBar_QBaseIsSignalConnected(const QTabBar* self, QMetaMethod* signal);
QTLIBC_API void QTabBar_Delete(QTabBar* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
