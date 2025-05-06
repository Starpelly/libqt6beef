#pragma once
#ifndef SRCC_LIBQCOMMANDLINKBUTTON_H
#define SRCC_LIBQCOMMANDLINKBUTTON_H

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
typedef struct QAbstractButton QAbstractButton;
typedef struct QAction QAction;
typedef struct QActionEvent QActionEvent;
typedef struct QAnyStringView QAnyStringView;
typedef struct QBackingStore QBackingStore;
typedef struct QBindingStorage QBindingStorage;
typedef struct QBitmap QBitmap;
typedef struct QButtonGroup QButtonGroup;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QCommandLinkButton QCommandLinkButton;
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
typedef struct QMenu QMenu;
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
typedef struct QPushButton QPushButton;
typedef struct QRect QRect;
typedef struct QRegion QRegion;
typedef struct QResizeEvent QResizeEvent;
typedef struct QScreen QScreen;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QSizePolicy QSizePolicy;
typedef struct QStyle QStyle;
typedef struct QStyleOptionButton QStyleOptionButton;
typedef struct QTabletEvent QTabletEvent;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
typedef struct QWindow QWindow;
#endif

QTLIBC_API QCommandLinkButton* QCommandLinkButton_new(QWidget* parent);
QTLIBC_API QCommandLinkButton* QCommandLinkButton_new2();
QTLIBC_API QCommandLinkButton* QCommandLinkButton_new3(libqt_string text);
QTLIBC_API QCommandLinkButton* QCommandLinkButton_new4(libqt_string text, libqt_string description);
QTLIBC_API QCommandLinkButton* QCommandLinkButton_new5(libqt_string text, QWidget* parent);
QTLIBC_API QCommandLinkButton* QCommandLinkButton_new6(libqt_string text, libqt_string description, QWidget* parent);
QTLIBC_API QMetaObject* QCommandLinkButton_MetaObject(const QCommandLinkButton* self);
QTLIBC_API void* QCommandLinkButton_Metacast(QCommandLinkButton* self, const char* param1);
QTLIBC_API int QCommandLinkButton_Metacall(QCommandLinkButton* self, int param1, int param2, void** param3);
QTLIBC_API void QCommandLinkButton_OnMetacall(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API int QCommandLinkButton_QBaseMetacall(QCommandLinkButton* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QCommandLinkButton_Tr(const char* s);
QTLIBC_API libqt_string QCommandLinkButton_Description(const QCommandLinkButton* self);
QTLIBC_API void QCommandLinkButton_SetDescription(QCommandLinkButton* self, libqt_string description);
QTLIBC_API QSize* QCommandLinkButton_SizeHint(const QCommandLinkButton* self);
QTLIBC_API void QCommandLinkButton_OnSizeHint(const QCommandLinkButton* self, intptr_t slot);
QTLIBC_API QSize* QCommandLinkButton_QBaseSizeHint(const QCommandLinkButton* self);
QTLIBC_API int QCommandLinkButton_HeightForWidth(const QCommandLinkButton* self, int param1);
QTLIBC_API void QCommandLinkButton_OnHeightForWidth(const QCommandLinkButton* self, intptr_t slot);
QTLIBC_API int QCommandLinkButton_QBaseHeightForWidth(const QCommandLinkButton* self, int param1);
QTLIBC_API QSize* QCommandLinkButton_MinimumSizeHint(const QCommandLinkButton* self);
QTLIBC_API void QCommandLinkButton_OnMinimumSizeHint(const QCommandLinkButton* self, intptr_t slot);
QTLIBC_API QSize* QCommandLinkButton_QBaseMinimumSizeHint(const QCommandLinkButton* self);
QTLIBC_API void QCommandLinkButton_InitStyleOption(const QCommandLinkButton* self, QStyleOptionButton* option);
QTLIBC_API void QCommandLinkButton_OnInitStyleOption(const QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBaseInitStyleOption(const QCommandLinkButton* self, QStyleOptionButton* option);
QTLIBC_API bool QCommandLinkButton_Event(QCommandLinkButton* self, QEvent* e);
QTLIBC_API void QCommandLinkButton_OnEvent(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API bool QCommandLinkButton_QBaseEvent(QCommandLinkButton* self, QEvent* e);
QTLIBC_API void QCommandLinkButton_PaintEvent(QCommandLinkButton* self, QPaintEvent* param1);
QTLIBC_API void QCommandLinkButton_OnPaintEvent(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBasePaintEvent(QCommandLinkButton* self, QPaintEvent* param1);
QTLIBC_API libqt_string QCommandLinkButton_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QCommandLinkButton_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QCommandLinkButton_KeyPressEvent(QCommandLinkButton* self, QKeyEvent* param1);
QTLIBC_API void QCommandLinkButton_OnKeyPressEvent(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBaseKeyPressEvent(QCommandLinkButton* self, QKeyEvent* param1);
QTLIBC_API void QCommandLinkButton_FocusInEvent(QCommandLinkButton* self, QFocusEvent* param1);
QTLIBC_API void QCommandLinkButton_OnFocusInEvent(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBaseFocusInEvent(QCommandLinkButton* self, QFocusEvent* param1);
QTLIBC_API void QCommandLinkButton_FocusOutEvent(QCommandLinkButton* self, QFocusEvent* param1);
QTLIBC_API void QCommandLinkButton_OnFocusOutEvent(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBaseFocusOutEvent(QCommandLinkButton* self, QFocusEvent* param1);
QTLIBC_API void QCommandLinkButton_MouseMoveEvent(QCommandLinkButton* self, QMouseEvent* param1);
QTLIBC_API void QCommandLinkButton_OnMouseMoveEvent(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBaseMouseMoveEvent(QCommandLinkButton* self, QMouseEvent* param1);
QTLIBC_API void QCommandLinkButton_CheckStateSet(QCommandLinkButton* self);
QTLIBC_API void QCommandLinkButton_OnCheckStateSet(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBaseCheckStateSet(QCommandLinkButton* self);
QTLIBC_API void QCommandLinkButton_NextCheckState(QCommandLinkButton* self);
QTLIBC_API void QCommandLinkButton_OnNextCheckState(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBaseNextCheckState(QCommandLinkButton* self);
QTLIBC_API void QCommandLinkButton_KeyReleaseEvent(QCommandLinkButton* self, QKeyEvent* e);
QTLIBC_API void QCommandLinkButton_OnKeyReleaseEvent(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBaseKeyReleaseEvent(QCommandLinkButton* self, QKeyEvent* e);
QTLIBC_API void QCommandLinkButton_MousePressEvent(QCommandLinkButton* self, QMouseEvent* e);
QTLIBC_API void QCommandLinkButton_OnMousePressEvent(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBaseMousePressEvent(QCommandLinkButton* self, QMouseEvent* e);
QTLIBC_API void QCommandLinkButton_MouseReleaseEvent(QCommandLinkButton* self, QMouseEvent* e);
QTLIBC_API void QCommandLinkButton_OnMouseReleaseEvent(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBaseMouseReleaseEvent(QCommandLinkButton* self, QMouseEvent* e);
QTLIBC_API void QCommandLinkButton_ChangeEvent(QCommandLinkButton* self, QEvent* e);
QTLIBC_API void QCommandLinkButton_OnChangeEvent(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBaseChangeEvent(QCommandLinkButton* self, QEvent* e);
QTLIBC_API void QCommandLinkButton_TimerEvent(QCommandLinkButton* self, QTimerEvent* e);
QTLIBC_API void QCommandLinkButton_OnTimerEvent(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBaseTimerEvent(QCommandLinkButton* self, QTimerEvent* e);
QTLIBC_API int QCommandLinkButton_DevType(const QCommandLinkButton* self);
QTLIBC_API void QCommandLinkButton_OnDevType(const QCommandLinkButton* self, intptr_t slot);
QTLIBC_API int QCommandLinkButton_QBaseDevType(const QCommandLinkButton* self);
QTLIBC_API void QCommandLinkButton_SetVisible(QCommandLinkButton* self, bool visible);
QTLIBC_API void QCommandLinkButton_OnSetVisible(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBaseSetVisible(QCommandLinkButton* self, bool visible);
QTLIBC_API bool QCommandLinkButton_HasHeightForWidth(const QCommandLinkButton* self);
QTLIBC_API void QCommandLinkButton_OnHasHeightForWidth(const QCommandLinkButton* self, intptr_t slot);
QTLIBC_API bool QCommandLinkButton_QBaseHasHeightForWidth(const QCommandLinkButton* self);
QTLIBC_API QPaintEngine* QCommandLinkButton_PaintEngine(const QCommandLinkButton* self);
QTLIBC_API void QCommandLinkButton_OnPaintEngine(const QCommandLinkButton* self, intptr_t slot);
QTLIBC_API QPaintEngine* QCommandLinkButton_QBasePaintEngine(const QCommandLinkButton* self);
QTLIBC_API void QCommandLinkButton_MouseDoubleClickEvent(QCommandLinkButton* self, QMouseEvent* event);
QTLIBC_API void QCommandLinkButton_OnMouseDoubleClickEvent(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBaseMouseDoubleClickEvent(QCommandLinkButton* self, QMouseEvent* event);
QTLIBC_API void QCommandLinkButton_WheelEvent(QCommandLinkButton* self, QWheelEvent* event);
QTLIBC_API void QCommandLinkButton_OnWheelEvent(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBaseWheelEvent(QCommandLinkButton* self, QWheelEvent* event);
QTLIBC_API void QCommandLinkButton_EnterEvent(QCommandLinkButton* self, QEnterEvent* event);
QTLIBC_API void QCommandLinkButton_OnEnterEvent(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBaseEnterEvent(QCommandLinkButton* self, QEnterEvent* event);
QTLIBC_API void QCommandLinkButton_LeaveEvent(QCommandLinkButton* self, QEvent* event);
QTLIBC_API void QCommandLinkButton_OnLeaveEvent(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBaseLeaveEvent(QCommandLinkButton* self, QEvent* event);
QTLIBC_API void QCommandLinkButton_MoveEvent(QCommandLinkButton* self, QMoveEvent* event);
QTLIBC_API void QCommandLinkButton_OnMoveEvent(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBaseMoveEvent(QCommandLinkButton* self, QMoveEvent* event);
QTLIBC_API void QCommandLinkButton_ResizeEvent(QCommandLinkButton* self, QResizeEvent* event);
QTLIBC_API void QCommandLinkButton_OnResizeEvent(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBaseResizeEvent(QCommandLinkButton* self, QResizeEvent* event);
QTLIBC_API void QCommandLinkButton_CloseEvent(QCommandLinkButton* self, QCloseEvent* event);
QTLIBC_API void QCommandLinkButton_OnCloseEvent(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBaseCloseEvent(QCommandLinkButton* self, QCloseEvent* event);
QTLIBC_API void QCommandLinkButton_ContextMenuEvent(QCommandLinkButton* self, QContextMenuEvent* event);
QTLIBC_API void QCommandLinkButton_OnContextMenuEvent(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBaseContextMenuEvent(QCommandLinkButton* self, QContextMenuEvent* event);
QTLIBC_API void QCommandLinkButton_TabletEvent(QCommandLinkButton* self, QTabletEvent* event);
QTLIBC_API void QCommandLinkButton_OnTabletEvent(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBaseTabletEvent(QCommandLinkButton* self, QTabletEvent* event);
QTLIBC_API void QCommandLinkButton_ActionEvent(QCommandLinkButton* self, QActionEvent* event);
QTLIBC_API void QCommandLinkButton_OnActionEvent(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBaseActionEvent(QCommandLinkButton* self, QActionEvent* event);
QTLIBC_API void QCommandLinkButton_DragEnterEvent(QCommandLinkButton* self, QDragEnterEvent* event);
QTLIBC_API void QCommandLinkButton_OnDragEnterEvent(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBaseDragEnterEvent(QCommandLinkButton* self, QDragEnterEvent* event);
QTLIBC_API void QCommandLinkButton_DragMoveEvent(QCommandLinkButton* self, QDragMoveEvent* event);
QTLIBC_API void QCommandLinkButton_OnDragMoveEvent(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBaseDragMoveEvent(QCommandLinkButton* self, QDragMoveEvent* event);
QTLIBC_API void QCommandLinkButton_DragLeaveEvent(QCommandLinkButton* self, QDragLeaveEvent* event);
QTLIBC_API void QCommandLinkButton_OnDragLeaveEvent(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBaseDragLeaveEvent(QCommandLinkButton* self, QDragLeaveEvent* event);
QTLIBC_API void QCommandLinkButton_DropEvent(QCommandLinkButton* self, QDropEvent* event);
QTLIBC_API void QCommandLinkButton_OnDropEvent(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBaseDropEvent(QCommandLinkButton* self, QDropEvent* event);
QTLIBC_API void QCommandLinkButton_ShowEvent(QCommandLinkButton* self, QShowEvent* event);
QTLIBC_API void QCommandLinkButton_OnShowEvent(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBaseShowEvent(QCommandLinkButton* self, QShowEvent* event);
QTLIBC_API void QCommandLinkButton_HideEvent(QCommandLinkButton* self, QHideEvent* event);
QTLIBC_API void QCommandLinkButton_OnHideEvent(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBaseHideEvent(QCommandLinkButton* self, QHideEvent* event);
QTLIBC_API bool QCommandLinkButton_NativeEvent(QCommandLinkButton* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QCommandLinkButton_OnNativeEvent(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API bool QCommandLinkButton_QBaseNativeEvent(QCommandLinkButton* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QCommandLinkButton_InputMethodEvent(QCommandLinkButton* self, QInputMethodEvent* param1);
QTLIBC_API void QCommandLinkButton_OnInputMethodEvent(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBaseInputMethodEvent(QCommandLinkButton* self, QInputMethodEvent* param1);
QTLIBC_API QVariant* QCommandLinkButton_InputMethodQuery(const QCommandLinkButton* self, int param1);
QTLIBC_API void QCommandLinkButton_OnInputMethodQuery(const QCommandLinkButton* self, intptr_t slot);
QTLIBC_API QVariant* QCommandLinkButton_QBaseInputMethodQuery(const QCommandLinkButton* self, int param1);
QTLIBC_API bool QCommandLinkButton_FocusNextPrevChild(QCommandLinkButton* self, bool next);
QTLIBC_API void QCommandLinkButton_OnFocusNextPrevChild(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API bool QCommandLinkButton_QBaseFocusNextPrevChild(QCommandLinkButton* self, bool next);
QTLIBC_API bool QCommandLinkButton_EventFilter(QCommandLinkButton* self, QObject* watched, QEvent* event);
QTLIBC_API void QCommandLinkButton_OnEventFilter(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API bool QCommandLinkButton_QBaseEventFilter(QCommandLinkButton* self, QObject* watched, QEvent* event);
QTLIBC_API void QCommandLinkButton_ChildEvent(QCommandLinkButton* self, QChildEvent* event);
QTLIBC_API void QCommandLinkButton_OnChildEvent(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBaseChildEvent(QCommandLinkButton* self, QChildEvent* event);
QTLIBC_API void QCommandLinkButton_CustomEvent(QCommandLinkButton* self, QEvent* event);
QTLIBC_API void QCommandLinkButton_OnCustomEvent(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBaseCustomEvent(QCommandLinkButton* self, QEvent* event);
QTLIBC_API void QCommandLinkButton_ConnectNotify(QCommandLinkButton* self, QMetaMethod* signal);
QTLIBC_API void QCommandLinkButton_OnConnectNotify(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBaseConnectNotify(QCommandLinkButton* self, QMetaMethod* signal);
QTLIBC_API void QCommandLinkButton_DisconnectNotify(QCommandLinkButton* self, QMetaMethod* signal);
QTLIBC_API void QCommandLinkButton_OnDisconnectNotify(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBaseDisconnectNotify(QCommandLinkButton* self, QMetaMethod* signal);
QTLIBC_API bool QCommandLinkButton_HitButton(const QCommandLinkButton* self, QPoint* pos);
QTLIBC_API void QCommandLinkButton_OnHitButton(const QCommandLinkButton* self, intptr_t slot);
QTLIBC_API bool QCommandLinkButton_QBaseHitButton(const QCommandLinkButton* self, QPoint* pos);
QTLIBC_API int QCommandLinkButton_Metric(const QCommandLinkButton* self, int param1);
QTLIBC_API void QCommandLinkButton_OnMetric(const QCommandLinkButton* self, intptr_t slot);
QTLIBC_API int QCommandLinkButton_QBaseMetric(const QCommandLinkButton* self, int param1);
QTLIBC_API void QCommandLinkButton_InitPainter(const QCommandLinkButton* self, QPainter* painter);
QTLIBC_API void QCommandLinkButton_OnInitPainter(const QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBaseInitPainter(const QCommandLinkButton* self, QPainter* painter);
QTLIBC_API QPaintDevice* QCommandLinkButton_Redirected(const QCommandLinkButton* self, QPoint* offset);
QTLIBC_API void QCommandLinkButton_OnRedirected(const QCommandLinkButton* self, intptr_t slot);
QTLIBC_API QPaintDevice* QCommandLinkButton_QBaseRedirected(const QCommandLinkButton* self, QPoint* offset);
QTLIBC_API QPainter* QCommandLinkButton_SharedPainter(const QCommandLinkButton* self);
QTLIBC_API void QCommandLinkButton_OnSharedPainter(const QCommandLinkButton* self, intptr_t slot);
QTLIBC_API QPainter* QCommandLinkButton_QBaseSharedPainter(const QCommandLinkButton* self);
QTLIBC_API void QCommandLinkButton_UpdateMicroFocus(QCommandLinkButton* self);
QTLIBC_API void QCommandLinkButton_OnUpdateMicroFocus(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBaseUpdateMicroFocus(QCommandLinkButton* self);
QTLIBC_API void QCommandLinkButton_Create(QCommandLinkButton* self);
QTLIBC_API void QCommandLinkButton_OnCreate(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBaseCreate(QCommandLinkButton* self);
QTLIBC_API void QCommandLinkButton_Destroy(QCommandLinkButton* self);
QTLIBC_API void QCommandLinkButton_OnDestroy(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API void QCommandLinkButton_QBaseDestroy(QCommandLinkButton* self);
QTLIBC_API bool QCommandLinkButton_FocusNextChild(QCommandLinkButton* self);
QTLIBC_API void QCommandLinkButton_OnFocusNextChild(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API bool QCommandLinkButton_QBaseFocusNextChild(QCommandLinkButton* self);
QTLIBC_API bool QCommandLinkButton_FocusPreviousChild(QCommandLinkButton* self);
QTLIBC_API void QCommandLinkButton_OnFocusPreviousChild(QCommandLinkButton* self, intptr_t slot);
QTLIBC_API bool QCommandLinkButton_QBaseFocusPreviousChild(QCommandLinkButton* self);
QTLIBC_API QObject* QCommandLinkButton_Sender(const QCommandLinkButton* self);
QTLIBC_API void QCommandLinkButton_OnSender(const QCommandLinkButton* self, intptr_t slot);
QTLIBC_API QObject* QCommandLinkButton_QBaseSender(const QCommandLinkButton* self);
QTLIBC_API int QCommandLinkButton_SenderSignalIndex(const QCommandLinkButton* self);
QTLIBC_API void QCommandLinkButton_OnSenderSignalIndex(const QCommandLinkButton* self, intptr_t slot);
QTLIBC_API int QCommandLinkButton_QBaseSenderSignalIndex(const QCommandLinkButton* self);
QTLIBC_API int QCommandLinkButton_Receivers(const QCommandLinkButton* self, const char* signal);
QTLIBC_API void QCommandLinkButton_OnReceivers(const QCommandLinkButton* self, intptr_t slot);
QTLIBC_API int QCommandLinkButton_QBaseReceivers(const QCommandLinkButton* self, const char* signal);
QTLIBC_API bool QCommandLinkButton_IsSignalConnected(const QCommandLinkButton* self, QMetaMethod* signal);
QTLIBC_API void QCommandLinkButton_OnIsSignalConnected(const QCommandLinkButton* self, intptr_t slot);
QTLIBC_API bool QCommandLinkButton_QBaseIsSignalConnected(const QCommandLinkButton* self, QMetaMethod* signal);
QTLIBC_API void QCommandLinkButton_Delete(QCommandLinkButton* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
