#pragma once
#ifndef SRC_QTC_LIBQGROUPBOX_H
#define SRC_QTC_LIBQGROUPBOX_H

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
typedef struct QGroupBox QGroupBox;
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
typedef struct QStyleOptionGroupBox QStyleOptionGroupBox;
typedef struct QTabletEvent QTabletEvent;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
typedef struct QWindow QWindow;
#endif

QTLIBC_API QGroupBox* QGroupBox_new(QWidget* parent);
QTLIBC_API QGroupBox* QGroupBox_new2();
QTLIBC_API QGroupBox* QGroupBox_new3(libqt_string title);
QTLIBC_API QGroupBox* QGroupBox_new4(libqt_string title, QWidget* parent);
QTLIBC_API QMetaObject* QGroupBox_MetaObject(const QGroupBox* self);
QTLIBC_API void* QGroupBox_Metacast(QGroupBox* self, const char* param1);
QTLIBC_API int QGroupBox_Metacall(QGroupBox* self, int param1, int param2, void** param3);
QTLIBC_API void QGroupBox_OnMetacall(QGroupBox* self, intptr_t slot);
QTLIBC_API int QGroupBox_QBaseMetacall(QGroupBox* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QGroupBox_Tr(const char* s);
QTLIBC_API libqt_string QGroupBox_Title(const QGroupBox* self);
QTLIBC_API void QGroupBox_SetTitle(QGroupBox* self, libqt_string title);
QTLIBC_API int QGroupBox_Alignment(const QGroupBox* self);
QTLIBC_API void QGroupBox_SetAlignment(QGroupBox* self, int alignment);
QTLIBC_API QSize* QGroupBox_MinimumSizeHint(const QGroupBox* self);
QTLIBC_API void QGroupBox_OnMinimumSizeHint(const QGroupBox* self, intptr_t slot);
QTLIBC_API QSize* QGroupBox_QBaseMinimumSizeHint(const QGroupBox* self);
QTLIBC_API bool QGroupBox_IsFlat(const QGroupBox* self);
QTLIBC_API void QGroupBox_SetFlat(QGroupBox* self, bool flat);
QTLIBC_API bool QGroupBox_IsCheckable(const QGroupBox* self);
QTLIBC_API void QGroupBox_SetCheckable(QGroupBox* self, bool checkable);
QTLIBC_API bool QGroupBox_IsChecked(const QGroupBox* self);
QTLIBC_API void QGroupBox_SetChecked(QGroupBox* self, bool checked);
QTLIBC_API void QGroupBox_Clicked(QGroupBox* self);
QTLIBC_API void QGroupBox_Connect_Clicked(QGroupBox* self, intptr_t slot);
QTLIBC_API void QGroupBox_Toggled(QGroupBox* self, bool param1);
QTLIBC_API void QGroupBox_Connect_Toggled(QGroupBox* self, intptr_t slot);
QTLIBC_API bool QGroupBox_Event(QGroupBox* self, QEvent* event);
QTLIBC_API void QGroupBox_OnEvent(QGroupBox* self, intptr_t slot);
QTLIBC_API bool QGroupBox_QBaseEvent(QGroupBox* self, QEvent* event);
QTLIBC_API void QGroupBox_ChildEvent(QGroupBox* self, QChildEvent* event);
QTLIBC_API void QGroupBox_OnChildEvent(QGroupBox* self, intptr_t slot);
QTLIBC_API void QGroupBox_QBaseChildEvent(QGroupBox* self, QChildEvent* event);
QTLIBC_API void QGroupBox_ResizeEvent(QGroupBox* self, QResizeEvent* event);
QTLIBC_API void QGroupBox_OnResizeEvent(QGroupBox* self, intptr_t slot);
QTLIBC_API void QGroupBox_QBaseResizeEvent(QGroupBox* self, QResizeEvent* event);
QTLIBC_API void QGroupBox_PaintEvent(QGroupBox* self, QPaintEvent* event);
QTLIBC_API void QGroupBox_OnPaintEvent(QGroupBox* self, intptr_t slot);
QTLIBC_API void QGroupBox_QBasePaintEvent(QGroupBox* self, QPaintEvent* event);
QTLIBC_API void QGroupBox_FocusInEvent(QGroupBox* self, QFocusEvent* event);
QTLIBC_API void QGroupBox_OnFocusInEvent(QGroupBox* self, intptr_t slot);
QTLIBC_API void QGroupBox_QBaseFocusInEvent(QGroupBox* self, QFocusEvent* event);
QTLIBC_API void QGroupBox_ChangeEvent(QGroupBox* self, QEvent* event);
QTLIBC_API void QGroupBox_OnChangeEvent(QGroupBox* self, intptr_t slot);
QTLIBC_API void QGroupBox_QBaseChangeEvent(QGroupBox* self, QEvent* event);
QTLIBC_API void QGroupBox_MousePressEvent(QGroupBox* self, QMouseEvent* event);
QTLIBC_API void QGroupBox_OnMousePressEvent(QGroupBox* self, intptr_t slot);
QTLIBC_API void QGroupBox_QBaseMousePressEvent(QGroupBox* self, QMouseEvent* event);
QTLIBC_API void QGroupBox_MouseMoveEvent(QGroupBox* self, QMouseEvent* event);
QTLIBC_API void QGroupBox_OnMouseMoveEvent(QGroupBox* self, intptr_t slot);
QTLIBC_API void QGroupBox_QBaseMouseMoveEvent(QGroupBox* self, QMouseEvent* event);
QTLIBC_API void QGroupBox_MouseReleaseEvent(QGroupBox* self, QMouseEvent* event);
QTLIBC_API void QGroupBox_OnMouseReleaseEvent(QGroupBox* self, intptr_t slot);
QTLIBC_API void QGroupBox_QBaseMouseReleaseEvent(QGroupBox* self, QMouseEvent* event);
QTLIBC_API void QGroupBox_InitStyleOption(const QGroupBox* self, QStyleOptionGroupBox* option);
QTLIBC_API void QGroupBox_OnInitStyleOption(const QGroupBox* self, intptr_t slot);
QTLIBC_API void QGroupBox_QBaseInitStyleOption(const QGroupBox* self, QStyleOptionGroupBox* option);
QTLIBC_API libqt_string QGroupBox_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QGroupBox_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QGroupBox_Clicked1(QGroupBox* self, bool checked);
QTLIBC_API void QGroupBox_Connect_Clicked1(QGroupBox* self, intptr_t slot);
QTLIBC_API int QGroupBox_DevType(const QGroupBox* self);
QTLIBC_API void QGroupBox_OnDevType(const QGroupBox* self, intptr_t slot);
QTLIBC_API int QGroupBox_QBaseDevType(const QGroupBox* self);
QTLIBC_API void QGroupBox_SetVisible(QGroupBox* self, bool visible);
QTLIBC_API void QGroupBox_OnSetVisible(QGroupBox* self, intptr_t slot);
QTLIBC_API void QGroupBox_QBaseSetVisible(QGroupBox* self, bool visible);
QTLIBC_API QSize* QGroupBox_SizeHint(const QGroupBox* self);
QTLIBC_API void QGroupBox_OnSizeHint(const QGroupBox* self, intptr_t slot);
QTLIBC_API QSize* QGroupBox_QBaseSizeHint(const QGroupBox* self);
QTLIBC_API int QGroupBox_HeightForWidth(const QGroupBox* self, int param1);
QTLIBC_API void QGroupBox_OnHeightForWidth(const QGroupBox* self, intptr_t slot);
QTLIBC_API int QGroupBox_QBaseHeightForWidth(const QGroupBox* self, int param1);
QTLIBC_API bool QGroupBox_HasHeightForWidth(const QGroupBox* self);
QTLIBC_API void QGroupBox_OnHasHeightForWidth(const QGroupBox* self, intptr_t slot);
QTLIBC_API bool QGroupBox_QBaseHasHeightForWidth(const QGroupBox* self);
QTLIBC_API QPaintEngine* QGroupBox_PaintEngine(const QGroupBox* self);
QTLIBC_API void QGroupBox_OnPaintEngine(const QGroupBox* self, intptr_t slot);
QTLIBC_API QPaintEngine* QGroupBox_QBasePaintEngine(const QGroupBox* self);
QTLIBC_API void QGroupBox_MouseDoubleClickEvent(QGroupBox* self, QMouseEvent* event);
QTLIBC_API void QGroupBox_OnMouseDoubleClickEvent(QGroupBox* self, intptr_t slot);
QTLIBC_API void QGroupBox_QBaseMouseDoubleClickEvent(QGroupBox* self, QMouseEvent* event);
QTLIBC_API void QGroupBox_WheelEvent(QGroupBox* self, QWheelEvent* event);
QTLIBC_API void QGroupBox_OnWheelEvent(QGroupBox* self, intptr_t slot);
QTLIBC_API void QGroupBox_QBaseWheelEvent(QGroupBox* self, QWheelEvent* event);
QTLIBC_API void QGroupBox_KeyPressEvent(QGroupBox* self, QKeyEvent* event);
QTLIBC_API void QGroupBox_OnKeyPressEvent(QGroupBox* self, intptr_t slot);
QTLIBC_API void QGroupBox_QBaseKeyPressEvent(QGroupBox* self, QKeyEvent* event);
QTLIBC_API void QGroupBox_KeyReleaseEvent(QGroupBox* self, QKeyEvent* event);
QTLIBC_API void QGroupBox_OnKeyReleaseEvent(QGroupBox* self, intptr_t slot);
QTLIBC_API void QGroupBox_QBaseKeyReleaseEvent(QGroupBox* self, QKeyEvent* event);
QTLIBC_API void QGroupBox_FocusOutEvent(QGroupBox* self, QFocusEvent* event);
QTLIBC_API void QGroupBox_OnFocusOutEvent(QGroupBox* self, intptr_t slot);
QTLIBC_API void QGroupBox_QBaseFocusOutEvent(QGroupBox* self, QFocusEvent* event);
QTLIBC_API void QGroupBox_EnterEvent(QGroupBox* self, QEnterEvent* event);
QTLIBC_API void QGroupBox_OnEnterEvent(QGroupBox* self, intptr_t slot);
QTLIBC_API void QGroupBox_QBaseEnterEvent(QGroupBox* self, QEnterEvent* event);
QTLIBC_API void QGroupBox_LeaveEvent(QGroupBox* self, QEvent* event);
QTLIBC_API void QGroupBox_OnLeaveEvent(QGroupBox* self, intptr_t slot);
QTLIBC_API void QGroupBox_QBaseLeaveEvent(QGroupBox* self, QEvent* event);
QTLIBC_API void QGroupBox_MoveEvent(QGroupBox* self, QMoveEvent* event);
QTLIBC_API void QGroupBox_OnMoveEvent(QGroupBox* self, intptr_t slot);
QTLIBC_API void QGroupBox_QBaseMoveEvent(QGroupBox* self, QMoveEvent* event);
QTLIBC_API void QGroupBox_CloseEvent(QGroupBox* self, QCloseEvent* event);
QTLIBC_API void QGroupBox_OnCloseEvent(QGroupBox* self, intptr_t slot);
QTLIBC_API void QGroupBox_QBaseCloseEvent(QGroupBox* self, QCloseEvent* event);
QTLIBC_API void QGroupBox_ContextMenuEvent(QGroupBox* self, QContextMenuEvent* event);
QTLIBC_API void QGroupBox_OnContextMenuEvent(QGroupBox* self, intptr_t slot);
QTLIBC_API void QGroupBox_QBaseContextMenuEvent(QGroupBox* self, QContextMenuEvent* event);
QTLIBC_API void QGroupBox_TabletEvent(QGroupBox* self, QTabletEvent* event);
QTLIBC_API void QGroupBox_OnTabletEvent(QGroupBox* self, intptr_t slot);
QTLIBC_API void QGroupBox_QBaseTabletEvent(QGroupBox* self, QTabletEvent* event);
QTLIBC_API void QGroupBox_ActionEvent(QGroupBox* self, QActionEvent* event);
QTLIBC_API void QGroupBox_OnActionEvent(QGroupBox* self, intptr_t slot);
QTLIBC_API void QGroupBox_QBaseActionEvent(QGroupBox* self, QActionEvent* event);
QTLIBC_API void QGroupBox_DragEnterEvent(QGroupBox* self, QDragEnterEvent* event);
QTLIBC_API void QGroupBox_OnDragEnterEvent(QGroupBox* self, intptr_t slot);
QTLIBC_API void QGroupBox_QBaseDragEnterEvent(QGroupBox* self, QDragEnterEvent* event);
QTLIBC_API void QGroupBox_DragMoveEvent(QGroupBox* self, QDragMoveEvent* event);
QTLIBC_API void QGroupBox_OnDragMoveEvent(QGroupBox* self, intptr_t slot);
QTLIBC_API void QGroupBox_QBaseDragMoveEvent(QGroupBox* self, QDragMoveEvent* event);
QTLIBC_API void QGroupBox_DragLeaveEvent(QGroupBox* self, QDragLeaveEvent* event);
QTLIBC_API void QGroupBox_OnDragLeaveEvent(QGroupBox* self, intptr_t slot);
QTLIBC_API void QGroupBox_QBaseDragLeaveEvent(QGroupBox* self, QDragLeaveEvent* event);
QTLIBC_API void QGroupBox_DropEvent(QGroupBox* self, QDropEvent* event);
QTLIBC_API void QGroupBox_OnDropEvent(QGroupBox* self, intptr_t slot);
QTLIBC_API void QGroupBox_QBaseDropEvent(QGroupBox* self, QDropEvent* event);
QTLIBC_API void QGroupBox_ShowEvent(QGroupBox* self, QShowEvent* event);
QTLIBC_API void QGroupBox_OnShowEvent(QGroupBox* self, intptr_t slot);
QTLIBC_API void QGroupBox_QBaseShowEvent(QGroupBox* self, QShowEvent* event);
QTLIBC_API void QGroupBox_HideEvent(QGroupBox* self, QHideEvent* event);
QTLIBC_API void QGroupBox_OnHideEvent(QGroupBox* self, intptr_t slot);
QTLIBC_API void QGroupBox_QBaseHideEvent(QGroupBox* self, QHideEvent* event);
QTLIBC_API bool QGroupBox_NativeEvent(QGroupBox* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QGroupBox_OnNativeEvent(QGroupBox* self, intptr_t slot);
QTLIBC_API bool QGroupBox_QBaseNativeEvent(QGroupBox* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QGroupBox_InputMethodEvent(QGroupBox* self, QInputMethodEvent* param1);
QTLIBC_API void QGroupBox_OnInputMethodEvent(QGroupBox* self, intptr_t slot);
QTLIBC_API void QGroupBox_QBaseInputMethodEvent(QGroupBox* self, QInputMethodEvent* param1);
QTLIBC_API QVariant* QGroupBox_InputMethodQuery(const QGroupBox* self, int param1);
QTLIBC_API void QGroupBox_OnInputMethodQuery(const QGroupBox* self, intptr_t slot);
QTLIBC_API QVariant* QGroupBox_QBaseInputMethodQuery(const QGroupBox* self, int param1);
QTLIBC_API bool QGroupBox_FocusNextPrevChild(QGroupBox* self, bool next);
QTLIBC_API void QGroupBox_OnFocusNextPrevChild(QGroupBox* self, intptr_t slot);
QTLIBC_API bool QGroupBox_QBaseFocusNextPrevChild(QGroupBox* self, bool next);
QTLIBC_API bool QGroupBox_EventFilter(QGroupBox* self, QObject* watched, QEvent* event);
QTLIBC_API void QGroupBox_OnEventFilter(QGroupBox* self, intptr_t slot);
QTLIBC_API bool QGroupBox_QBaseEventFilter(QGroupBox* self, QObject* watched, QEvent* event);
QTLIBC_API void QGroupBox_TimerEvent(QGroupBox* self, QTimerEvent* event);
QTLIBC_API void QGroupBox_OnTimerEvent(QGroupBox* self, intptr_t slot);
QTLIBC_API void QGroupBox_QBaseTimerEvent(QGroupBox* self, QTimerEvent* event);
QTLIBC_API void QGroupBox_CustomEvent(QGroupBox* self, QEvent* event);
QTLIBC_API void QGroupBox_OnCustomEvent(QGroupBox* self, intptr_t slot);
QTLIBC_API void QGroupBox_QBaseCustomEvent(QGroupBox* self, QEvent* event);
QTLIBC_API void QGroupBox_ConnectNotify(QGroupBox* self, QMetaMethod* signal);
QTLIBC_API void QGroupBox_OnConnectNotify(QGroupBox* self, intptr_t slot);
QTLIBC_API void QGroupBox_QBaseConnectNotify(QGroupBox* self, QMetaMethod* signal);
QTLIBC_API void QGroupBox_DisconnectNotify(QGroupBox* self, QMetaMethod* signal);
QTLIBC_API void QGroupBox_OnDisconnectNotify(QGroupBox* self, intptr_t slot);
QTLIBC_API void QGroupBox_QBaseDisconnectNotify(QGroupBox* self, QMetaMethod* signal);
QTLIBC_API int QGroupBox_Metric(const QGroupBox* self, int param1);
QTLIBC_API void QGroupBox_OnMetric(const QGroupBox* self, intptr_t slot);
QTLIBC_API int QGroupBox_QBaseMetric(const QGroupBox* self, int param1);
QTLIBC_API void QGroupBox_InitPainter(const QGroupBox* self, QPainter* painter);
QTLIBC_API void QGroupBox_OnInitPainter(const QGroupBox* self, intptr_t slot);
QTLIBC_API void QGroupBox_QBaseInitPainter(const QGroupBox* self, QPainter* painter);
QTLIBC_API QPaintDevice* QGroupBox_Redirected(const QGroupBox* self, QPoint* offset);
QTLIBC_API void QGroupBox_OnRedirected(const QGroupBox* self, intptr_t slot);
QTLIBC_API QPaintDevice* QGroupBox_QBaseRedirected(const QGroupBox* self, QPoint* offset);
QTLIBC_API QPainter* QGroupBox_SharedPainter(const QGroupBox* self);
QTLIBC_API void QGroupBox_OnSharedPainter(const QGroupBox* self, intptr_t slot);
QTLIBC_API QPainter* QGroupBox_QBaseSharedPainter(const QGroupBox* self);
QTLIBC_API void QGroupBox_UpdateMicroFocus(QGroupBox* self);
QTLIBC_API void QGroupBox_OnUpdateMicroFocus(QGroupBox* self, intptr_t slot);
QTLIBC_API void QGroupBox_QBaseUpdateMicroFocus(QGroupBox* self);
QTLIBC_API void QGroupBox_Create(QGroupBox* self);
QTLIBC_API void QGroupBox_OnCreate(QGroupBox* self, intptr_t slot);
QTLIBC_API void QGroupBox_QBaseCreate(QGroupBox* self);
QTLIBC_API void QGroupBox_Destroy(QGroupBox* self);
QTLIBC_API void QGroupBox_OnDestroy(QGroupBox* self, intptr_t slot);
QTLIBC_API void QGroupBox_QBaseDestroy(QGroupBox* self);
QTLIBC_API bool QGroupBox_FocusNextChild(QGroupBox* self);
QTLIBC_API void QGroupBox_OnFocusNextChild(QGroupBox* self, intptr_t slot);
QTLIBC_API bool QGroupBox_QBaseFocusNextChild(QGroupBox* self);
QTLIBC_API bool QGroupBox_FocusPreviousChild(QGroupBox* self);
QTLIBC_API void QGroupBox_OnFocusPreviousChild(QGroupBox* self, intptr_t slot);
QTLIBC_API bool QGroupBox_QBaseFocusPreviousChild(QGroupBox* self);
QTLIBC_API QObject* QGroupBox_Sender(const QGroupBox* self);
QTLIBC_API void QGroupBox_OnSender(const QGroupBox* self, intptr_t slot);
QTLIBC_API QObject* QGroupBox_QBaseSender(const QGroupBox* self);
QTLIBC_API int QGroupBox_SenderSignalIndex(const QGroupBox* self);
QTLIBC_API void QGroupBox_OnSenderSignalIndex(const QGroupBox* self, intptr_t slot);
QTLIBC_API int QGroupBox_QBaseSenderSignalIndex(const QGroupBox* self);
QTLIBC_API int QGroupBox_Receivers(const QGroupBox* self, const char* signal);
QTLIBC_API void QGroupBox_OnReceivers(const QGroupBox* self, intptr_t slot);
QTLIBC_API int QGroupBox_QBaseReceivers(const QGroupBox* self, const char* signal);
QTLIBC_API bool QGroupBox_IsSignalConnected(const QGroupBox* self, QMetaMethod* signal);
QTLIBC_API void QGroupBox_OnIsSignalConnected(const QGroupBox* self, intptr_t slot);
QTLIBC_API bool QGroupBox_QBaseIsSignalConnected(const QGroupBox* self, QMetaMethod* signal);
QTLIBC_API void QGroupBox_Delete(QGroupBox* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
