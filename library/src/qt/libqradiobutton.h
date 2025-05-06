#pragma once
#ifndef SRC_QTC_LIBQRADIOBUTTON_H
#define SRC_QTC_LIBQRADIOBUTTON_H

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
typedef struct QRadioButton QRadioButton;
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

QTLIBC_API QRadioButton* QRadioButton_new(QWidget* parent);
QTLIBC_API QRadioButton* QRadioButton_new2();
QTLIBC_API QRadioButton* QRadioButton_new3(libqt_string text);
QTLIBC_API QRadioButton* QRadioButton_new4(libqt_string text, QWidget* parent);
QTLIBC_API QMetaObject* QRadioButton_MetaObject(const QRadioButton* self);
QTLIBC_API void* QRadioButton_Metacast(QRadioButton* self, const char* param1);
QTLIBC_API int QRadioButton_Metacall(QRadioButton* self, int param1, int param2, void** param3);
QTLIBC_API void QRadioButton_OnMetacall(QRadioButton* self, intptr_t slot);
QTLIBC_API int QRadioButton_QBaseMetacall(QRadioButton* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QRadioButton_Tr(const char* s);
QTLIBC_API QSize* QRadioButton_SizeHint(const QRadioButton* self);
QTLIBC_API void QRadioButton_OnSizeHint(const QRadioButton* self, intptr_t slot);
QTLIBC_API QSize* QRadioButton_QBaseSizeHint(const QRadioButton* self);
QTLIBC_API QSize* QRadioButton_MinimumSizeHint(const QRadioButton* self);
QTLIBC_API void QRadioButton_OnMinimumSizeHint(const QRadioButton* self, intptr_t slot);
QTLIBC_API QSize* QRadioButton_QBaseMinimumSizeHint(const QRadioButton* self);
QTLIBC_API bool QRadioButton_Event(QRadioButton* self, QEvent* e);
QTLIBC_API void QRadioButton_OnEvent(QRadioButton* self, intptr_t slot);
QTLIBC_API bool QRadioButton_QBaseEvent(QRadioButton* self, QEvent* e);
QTLIBC_API bool QRadioButton_HitButton(const QRadioButton* self, QPoint* param1);
QTLIBC_API void QRadioButton_OnHitButton(const QRadioButton* self, intptr_t slot);
QTLIBC_API bool QRadioButton_QBaseHitButton(const QRadioButton* self, QPoint* param1);
QTLIBC_API void QRadioButton_PaintEvent(QRadioButton* self, QPaintEvent* param1);
QTLIBC_API void QRadioButton_OnPaintEvent(QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBasePaintEvent(QRadioButton* self, QPaintEvent* param1);
QTLIBC_API void QRadioButton_MouseMoveEvent(QRadioButton* self, QMouseEvent* param1);
QTLIBC_API void QRadioButton_OnMouseMoveEvent(QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBaseMouseMoveEvent(QRadioButton* self, QMouseEvent* param1);
QTLIBC_API void QRadioButton_InitStyleOption(const QRadioButton* self, QStyleOptionButton* button);
QTLIBC_API void QRadioButton_OnInitStyleOption(const QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBaseInitStyleOption(const QRadioButton* self, QStyleOptionButton* button);
QTLIBC_API libqt_string QRadioButton_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QRadioButton_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QRadioButton_CheckStateSet(QRadioButton* self);
QTLIBC_API void QRadioButton_OnCheckStateSet(QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBaseCheckStateSet(QRadioButton* self);
QTLIBC_API void QRadioButton_NextCheckState(QRadioButton* self);
QTLIBC_API void QRadioButton_OnNextCheckState(QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBaseNextCheckState(QRadioButton* self);
QTLIBC_API void QRadioButton_KeyPressEvent(QRadioButton* self, QKeyEvent* e);
QTLIBC_API void QRadioButton_OnKeyPressEvent(QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBaseKeyPressEvent(QRadioButton* self, QKeyEvent* e);
QTLIBC_API void QRadioButton_KeyReleaseEvent(QRadioButton* self, QKeyEvent* e);
QTLIBC_API void QRadioButton_OnKeyReleaseEvent(QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBaseKeyReleaseEvent(QRadioButton* self, QKeyEvent* e);
QTLIBC_API void QRadioButton_MousePressEvent(QRadioButton* self, QMouseEvent* e);
QTLIBC_API void QRadioButton_OnMousePressEvent(QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBaseMousePressEvent(QRadioButton* self, QMouseEvent* e);
QTLIBC_API void QRadioButton_MouseReleaseEvent(QRadioButton* self, QMouseEvent* e);
QTLIBC_API void QRadioButton_OnMouseReleaseEvent(QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBaseMouseReleaseEvent(QRadioButton* self, QMouseEvent* e);
QTLIBC_API void QRadioButton_FocusInEvent(QRadioButton* self, QFocusEvent* e);
QTLIBC_API void QRadioButton_OnFocusInEvent(QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBaseFocusInEvent(QRadioButton* self, QFocusEvent* e);
QTLIBC_API void QRadioButton_FocusOutEvent(QRadioButton* self, QFocusEvent* e);
QTLIBC_API void QRadioButton_OnFocusOutEvent(QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBaseFocusOutEvent(QRadioButton* self, QFocusEvent* e);
QTLIBC_API void QRadioButton_ChangeEvent(QRadioButton* self, QEvent* e);
QTLIBC_API void QRadioButton_OnChangeEvent(QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBaseChangeEvent(QRadioButton* self, QEvent* e);
QTLIBC_API void QRadioButton_TimerEvent(QRadioButton* self, QTimerEvent* e);
QTLIBC_API void QRadioButton_OnTimerEvent(QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBaseTimerEvent(QRadioButton* self, QTimerEvent* e);
QTLIBC_API int QRadioButton_DevType(const QRadioButton* self);
QTLIBC_API void QRadioButton_OnDevType(const QRadioButton* self, intptr_t slot);
QTLIBC_API int QRadioButton_QBaseDevType(const QRadioButton* self);
QTLIBC_API void QRadioButton_SetVisible(QRadioButton* self, bool visible);
QTLIBC_API void QRadioButton_OnSetVisible(QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBaseSetVisible(QRadioButton* self, bool visible);
QTLIBC_API int QRadioButton_HeightForWidth(const QRadioButton* self, int param1);
QTLIBC_API void QRadioButton_OnHeightForWidth(const QRadioButton* self, intptr_t slot);
QTLIBC_API int QRadioButton_QBaseHeightForWidth(const QRadioButton* self, int param1);
QTLIBC_API bool QRadioButton_HasHeightForWidth(const QRadioButton* self);
QTLIBC_API void QRadioButton_OnHasHeightForWidth(const QRadioButton* self, intptr_t slot);
QTLIBC_API bool QRadioButton_QBaseHasHeightForWidth(const QRadioButton* self);
QTLIBC_API QPaintEngine* QRadioButton_PaintEngine(const QRadioButton* self);
QTLIBC_API void QRadioButton_OnPaintEngine(const QRadioButton* self, intptr_t slot);
QTLIBC_API QPaintEngine* QRadioButton_QBasePaintEngine(const QRadioButton* self);
QTLIBC_API void QRadioButton_MouseDoubleClickEvent(QRadioButton* self, QMouseEvent* event);
QTLIBC_API void QRadioButton_OnMouseDoubleClickEvent(QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBaseMouseDoubleClickEvent(QRadioButton* self, QMouseEvent* event);
QTLIBC_API void QRadioButton_WheelEvent(QRadioButton* self, QWheelEvent* event);
QTLIBC_API void QRadioButton_OnWheelEvent(QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBaseWheelEvent(QRadioButton* self, QWheelEvent* event);
QTLIBC_API void QRadioButton_EnterEvent(QRadioButton* self, QEnterEvent* event);
QTLIBC_API void QRadioButton_OnEnterEvent(QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBaseEnterEvent(QRadioButton* self, QEnterEvent* event);
QTLIBC_API void QRadioButton_LeaveEvent(QRadioButton* self, QEvent* event);
QTLIBC_API void QRadioButton_OnLeaveEvent(QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBaseLeaveEvent(QRadioButton* self, QEvent* event);
QTLIBC_API void QRadioButton_MoveEvent(QRadioButton* self, QMoveEvent* event);
QTLIBC_API void QRadioButton_OnMoveEvent(QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBaseMoveEvent(QRadioButton* self, QMoveEvent* event);
QTLIBC_API void QRadioButton_ResizeEvent(QRadioButton* self, QResizeEvent* event);
QTLIBC_API void QRadioButton_OnResizeEvent(QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBaseResizeEvent(QRadioButton* self, QResizeEvent* event);
QTLIBC_API void QRadioButton_CloseEvent(QRadioButton* self, QCloseEvent* event);
QTLIBC_API void QRadioButton_OnCloseEvent(QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBaseCloseEvent(QRadioButton* self, QCloseEvent* event);
QTLIBC_API void QRadioButton_ContextMenuEvent(QRadioButton* self, QContextMenuEvent* event);
QTLIBC_API void QRadioButton_OnContextMenuEvent(QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBaseContextMenuEvent(QRadioButton* self, QContextMenuEvent* event);
QTLIBC_API void QRadioButton_TabletEvent(QRadioButton* self, QTabletEvent* event);
QTLIBC_API void QRadioButton_OnTabletEvent(QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBaseTabletEvent(QRadioButton* self, QTabletEvent* event);
QTLIBC_API void QRadioButton_ActionEvent(QRadioButton* self, QActionEvent* event);
QTLIBC_API void QRadioButton_OnActionEvent(QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBaseActionEvent(QRadioButton* self, QActionEvent* event);
QTLIBC_API void QRadioButton_DragEnterEvent(QRadioButton* self, QDragEnterEvent* event);
QTLIBC_API void QRadioButton_OnDragEnterEvent(QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBaseDragEnterEvent(QRadioButton* self, QDragEnterEvent* event);
QTLIBC_API void QRadioButton_DragMoveEvent(QRadioButton* self, QDragMoveEvent* event);
QTLIBC_API void QRadioButton_OnDragMoveEvent(QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBaseDragMoveEvent(QRadioButton* self, QDragMoveEvent* event);
QTLIBC_API void QRadioButton_DragLeaveEvent(QRadioButton* self, QDragLeaveEvent* event);
QTLIBC_API void QRadioButton_OnDragLeaveEvent(QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBaseDragLeaveEvent(QRadioButton* self, QDragLeaveEvent* event);
QTLIBC_API void QRadioButton_DropEvent(QRadioButton* self, QDropEvent* event);
QTLIBC_API void QRadioButton_OnDropEvent(QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBaseDropEvent(QRadioButton* self, QDropEvent* event);
QTLIBC_API void QRadioButton_ShowEvent(QRadioButton* self, QShowEvent* event);
QTLIBC_API void QRadioButton_OnShowEvent(QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBaseShowEvent(QRadioButton* self, QShowEvent* event);
QTLIBC_API void QRadioButton_HideEvent(QRadioButton* self, QHideEvent* event);
QTLIBC_API void QRadioButton_OnHideEvent(QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBaseHideEvent(QRadioButton* self, QHideEvent* event);
QTLIBC_API bool QRadioButton_NativeEvent(QRadioButton* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QRadioButton_OnNativeEvent(QRadioButton* self, intptr_t slot);
QTLIBC_API bool QRadioButton_QBaseNativeEvent(QRadioButton* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QRadioButton_InputMethodEvent(QRadioButton* self, QInputMethodEvent* param1);
QTLIBC_API void QRadioButton_OnInputMethodEvent(QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBaseInputMethodEvent(QRadioButton* self, QInputMethodEvent* param1);
QTLIBC_API QVariant* QRadioButton_InputMethodQuery(const QRadioButton* self, int param1);
QTLIBC_API void QRadioButton_OnInputMethodQuery(const QRadioButton* self, intptr_t slot);
QTLIBC_API QVariant* QRadioButton_QBaseInputMethodQuery(const QRadioButton* self, int param1);
QTLIBC_API bool QRadioButton_FocusNextPrevChild(QRadioButton* self, bool next);
QTLIBC_API void QRadioButton_OnFocusNextPrevChild(QRadioButton* self, intptr_t slot);
QTLIBC_API bool QRadioButton_QBaseFocusNextPrevChild(QRadioButton* self, bool next);
QTLIBC_API bool QRadioButton_EventFilter(QRadioButton* self, QObject* watched, QEvent* event);
QTLIBC_API void QRadioButton_OnEventFilter(QRadioButton* self, intptr_t slot);
QTLIBC_API bool QRadioButton_QBaseEventFilter(QRadioButton* self, QObject* watched, QEvent* event);
QTLIBC_API void QRadioButton_ChildEvent(QRadioButton* self, QChildEvent* event);
QTLIBC_API void QRadioButton_OnChildEvent(QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBaseChildEvent(QRadioButton* self, QChildEvent* event);
QTLIBC_API void QRadioButton_CustomEvent(QRadioButton* self, QEvent* event);
QTLIBC_API void QRadioButton_OnCustomEvent(QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBaseCustomEvent(QRadioButton* self, QEvent* event);
QTLIBC_API void QRadioButton_ConnectNotify(QRadioButton* self, QMetaMethod* signal);
QTLIBC_API void QRadioButton_OnConnectNotify(QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBaseConnectNotify(QRadioButton* self, QMetaMethod* signal);
QTLIBC_API void QRadioButton_DisconnectNotify(QRadioButton* self, QMetaMethod* signal);
QTLIBC_API void QRadioButton_OnDisconnectNotify(QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBaseDisconnectNotify(QRadioButton* self, QMetaMethod* signal);
QTLIBC_API int QRadioButton_Metric(const QRadioButton* self, int param1);
QTLIBC_API void QRadioButton_OnMetric(const QRadioButton* self, intptr_t slot);
QTLIBC_API int QRadioButton_QBaseMetric(const QRadioButton* self, int param1);
QTLIBC_API void QRadioButton_InitPainter(const QRadioButton* self, QPainter* painter);
QTLIBC_API void QRadioButton_OnInitPainter(const QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBaseInitPainter(const QRadioButton* self, QPainter* painter);
QTLIBC_API QPaintDevice* QRadioButton_Redirected(const QRadioButton* self, QPoint* offset);
QTLIBC_API void QRadioButton_OnRedirected(const QRadioButton* self, intptr_t slot);
QTLIBC_API QPaintDevice* QRadioButton_QBaseRedirected(const QRadioButton* self, QPoint* offset);
QTLIBC_API QPainter* QRadioButton_SharedPainter(const QRadioButton* self);
QTLIBC_API void QRadioButton_OnSharedPainter(const QRadioButton* self, intptr_t slot);
QTLIBC_API QPainter* QRadioButton_QBaseSharedPainter(const QRadioButton* self);
QTLIBC_API void QRadioButton_UpdateMicroFocus(QRadioButton* self);
QTLIBC_API void QRadioButton_OnUpdateMicroFocus(QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBaseUpdateMicroFocus(QRadioButton* self);
QTLIBC_API void QRadioButton_Create(QRadioButton* self);
QTLIBC_API void QRadioButton_OnCreate(QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBaseCreate(QRadioButton* self);
QTLIBC_API void QRadioButton_Destroy(QRadioButton* self);
QTLIBC_API void QRadioButton_OnDestroy(QRadioButton* self, intptr_t slot);
QTLIBC_API void QRadioButton_QBaseDestroy(QRadioButton* self);
QTLIBC_API bool QRadioButton_FocusNextChild(QRadioButton* self);
QTLIBC_API void QRadioButton_OnFocusNextChild(QRadioButton* self, intptr_t slot);
QTLIBC_API bool QRadioButton_QBaseFocusNextChild(QRadioButton* self);
QTLIBC_API bool QRadioButton_FocusPreviousChild(QRadioButton* self);
QTLIBC_API void QRadioButton_OnFocusPreviousChild(QRadioButton* self, intptr_t slot);
QTLIBC_API bool QRadioButton_QBaseFocusPreviousChild(QRadioButton* self);
QTLIBC_API QObject* QRadioButton_Sender(const QRadioButton* self);
QTLIBC_API void QRadioButton_OnSender(const QRadioButton* self, intptr_t slot);
QTLIBC_API QObject* QRadioButton_QBaseSender(const QRadioButton* self);
QTLIBC_API int QRadioButton_SenderSignalIndex(const QRadioButton* self);
QTLIBC_API void QRadioButton_OnSenderSignalIndex(const QRadioButton* self, intptr_t slot);
QTLIBC_API int QRadioButton_QBaseSenderSignalIndex(const QRadioButton* self);
QTLIBC_API int QRadioButton_Receivers(const QRadioButton* self, const char* signal);
QTLIBC_API void QRadioButton_OnReceivers(const QRadioButton* self, intptr_t slot);
QTLIBC_API int QRadioButton_QBaseReceivers(const QRadioButton* self, const char* signal);
QTLIBC_API bool QRadioButton_IsSignalConnected(const QRadioButton* self, QMetaMethod* signal);
QTLIBC_API void QRadioButton_OnIsSignalConnected(const QRadioButton* self, intptr_t slot);
QTLIBC_API bool QRadioButton_QBaseIsSignalConnected(const QRadioButton* self, QMetaMethod* signal);
QTLIBC_API void QRadioButton_Delete(QRadioButton* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
