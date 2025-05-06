#pragma once
#ifndef SRC_QTC_LIBQDIALOGBUTTONBOX_H
#define SRC_QTC_LIBQDIALOGBUTTONBOX_H

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
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QCursor QCursor;
typedef struct QDialogButtonBox QDialogButtonBox;
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
typedef struct QPushButton QPushButton;
typedef struct QRect QRect;
typedef struct QRegion QRegion;
typedef struct QResizeEvent QResizeEvent;
typedef struct QScreen QScreen;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QSizePolicy QSizePolicy;
typedef struct QStyle QStyle;
typedef struct QTabletEvent QTabletEvent;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
typedef struct QWindow QWindow;
#endif

#ifdef __cplusplus
typedef QDialogButtonBox::ButtonLayout ButtonLayout;       // C++ enum
typedef QDialogButtonBox::ButtonRole ButtonRole;           // C++ enum
typedef QDialogButtonBox::StandardButton StandardButton;   // C++ enum
typedef QDialogButtonBox::StandardButtons StandardButtons; // C++ QFlags
#else
typedef int ButtonLayout;    // C ABI enum
typedef int ButtonRole;      // C ABI enum
typedef int StandardButton;  // C ABI enum
typedef int StandardButtons; // C ABI QFlags
#endif

QTLIBC_API QDialogButtonBox* QDialogButtonBox_new(QWidget* parent);
QTLIBC_API QDialogButtonBox* QDialogButtonBox_new2();
QTLIBC_API QDialogButtonBox* QDialogButtonBox_new3(int orientation);
QTLIBC_API QDialogButtonBox* QDialogButtonBox_new4(int buttons);
QTLIBC_API QDialogButtonBox* QDialogButtonBox_new5(int buttons, int orientation);
QTLIBC_API QDialogButtonBox* QDialogButtonBox_new6(int orientation, QWidget* parent);
QTLIBC_API QDialogButtonBox* QDialogButtonBox_new7(int buttons, QWidget* parent);
QTLIBC_API QDialogButtonBox* QDialogButtonBox_new8(int buttons, int orientation, QWidget* parent);
QTLIBC_API QMetaObject* QDialogButtonBox_MetaObject(const QDialogButtonBox* self);
QTLIBC_API void* QDialogButtonBox_Metacast(QDialogButtonBox* self, const char* param1);
QTLIBC_API int QDialogButtonBox_Metacall(QDialogButtonBox* self, int param1, int param2, void** param3);
QTLIBC_API void QDialogButtonBox_OnMetacall(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API int QDialogButtonBox_QBaseMetacall(QDialogButtonBox* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QDialogButtonBox_Tr(const char* s);
QTLIBC_API void QDialogButtonBox_SetOrientation(QDialogButtonBox* self, int orientation);
QTLIBC_API int QDialogButtonBox_Orientation(const QDialogButtonBox* self);
QTLIBC_API void QDialogButtonBox_AddButton(QDialogButtonBox* self, QAbstractButton* button, int role);
QTLIBC_API QPushButton* QDialogButtonBox_AddButton2(QDialogButtonBox* self, libqt_string text, int role);
QTLIBC_API QPushButton* QDialogButtonBox_AddButtonWithButton(QDialogButtonBox* self, int button);
QTLIBC_API void QDialogButtonBox_RemoveButton(QDialogButtonBox* self, QAbstractButton* button);
QTLIBC_API void QDialogButtonBox_Clear(QDialogButtonBox* self);
QTLIBC_API libqt_list /* of QAbstractButton* */ QDialogButtonBox_Buttons(const QDialogButtonBox* self);
QTLIBC_API int QDialogButtonBox_ButtonRole(const QDialogButtonBox* self, QAbstractButton* button);
QTLIBC_API void QDialogButtonBox_SetStandardButtons(QDialogButtonBox* self, int buttons);
QTLIBC_API int QDialogButtonBox_StandardButtons(const QDialogButtonBox* self);
QTLIBC_API int QDialogButtonBox_StandardButton(const QDialogButtonBox* self, QAbstractButton* button);
QTLIBC_API QPushButton* QDialogButtonBox_Button(const QDialogButtonBox* self, int which);
QTLIBC_API void QDialogButtonBox_SetCenterButtons(QDialogButtonBox* self, bool center);
QTLIBC_API bool QDialogButtonBox_CenterButtons(const QDialogButtonBox* self);
QTLIBC_API void QDialogButtonBox_Clicked(QDialogButtonBox* self, QAbstractButton* button);
QTLIBC_API void QDialogButtonBox_Connect_Clicked(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_Accepted(QDialogButtonBox* self);
QTLIBC_API void QDialogButtonBox_Connect_Accepted(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_HelpRequested(QDialogButtonBox* self);
QTLIBC_API void QDialogButtonBox_Connect_HelpRequested(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_Rejected(QDialogButtonBox* self);
QTLIBC_API void QDialogButtonBox_Connect_Rejected(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_ChangeEvent(QDialogButtonBox* self, QEvent* event);
QTLIBC_API void QDialogButtonBox_OnChangeEvent(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_QBaseChangeEvent(QDialogButtonBox* self, QEvent* event);
QTLIBC_API bool QDialogButtonBox_Event(QDialogButtonBox* self, QEvent* event);
QTLIBC_API void QDialogButtonBox_OnEvent(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API bool QDialogButtonBox_QBaseEvent(QDialogButtonBox* self, QEvent* event);
QTLIBC_API libqt_string QDialogButtonBox_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QDialogButtonBox_Tr3(const char* s, const char* c, int n);
QTLIBC_API int QDialogButtonBox_DevType(const QDialogButtonBox* self);
QTLIBC_API void QDialogButtonBox_OnDevType(const QDialogButtonBox* self, intptr_t slot);
QTLIBC_API int QDialogButtonBox_QBaseDevType(const QDialogButtonBox* self);
QTLIBC_API void QDialogButtonBox_SetVisible(QDialogButtonBox* self, bool visible);
QTLIBC_API void QDialogButtonBox_OnSetVisible(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_QBaseSetVisible(QDialogButtonBox* self, bool visible);
QTLIBC_API QSize* QDialogButtonBox_SizeHint(const QDialogButtonBox* self);
QTLIBC_API void QDialogButtonBox_OnSizeHint(const QDialogButtonBox* self, intptr_t slot);
QTLIBC_API QSize* QDialogButtonBox_QBaseSizeHint(const QDialogButtonBox* self);
QTLIBC_API QSize* QDialogButtonBox_MinimumSizeHint(const QDialogButtonBox* self);
QTLIBC_API void QDialogButtonBox_OnMinimumSizeHint(const QDialogButtonBox* self, intptr_t slot);
QTLIBC_API QSize* QDialogButtonBox_QBaseMinimumSizeHint(const QDialogButtonBox* self);
QTLIBC_API int QDialogButtonBox_HeightForWidth(const QDialogButtonBox* self, int param1);
QTLIBC_API void QDialogButtonBox_OnHeightForWidth(const QDialogButtonBox* self, intptr_t slot);
QTLIBC_API int QDialogButtonBox_QBaseHeightForWidth(const QDialogButtonBox* self, int param1);
QTLIBC_API bool QDialogButtonBox_HasHeightForWidth(const QDialogButtonBox* self);
QTLIBC_API void QDialogButtonBox_OnHasHeightForWidth(const QDialogButtonBox* self, intptr_t slot);
QTLIBC_API bool QDialogButtonBox_QBaseHasHeightForWidth(const QDialogButtonBox* self);
QTLIBC_API QPaintEngine* QDialogButtonBox_PaintEngine(const QDialogButtonBox* self);
QTLIBC_API void QDialogButtonBox_OnPaintEngine(const QDialogButtonBox* self, intptr_t slot);
QTLIBC_API QPaintEngine* QDialogButtonBox_QBasePaintEngine(const QDialogButtonBox* self);
QTLIBC_API void QDialogButtonBox_MousePressEvent(QDialogButtonBox* self, QMouseEvent* event);
QTLIBC_API void QDialogButtonBox_OnMousePressEvent(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_QBaseMousePressEvent(QDialogButtonBox* self, QMouseEvent* event);
QTLIBC_API void QDialogButtonBox_MouseReleaseEvent(QDialogButtonBox* self, QMouseEvent* event);
QTLIBC_API void QDialogButtonBox_OnMouseReleaseEvent(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_QBaseMouseReleaseEvent(QDialogButtonBox* self, QMouseEvent* event);
QTLIBC_API void QDialogButtonBox_MouseDoubleClickEvent(QDialogButtonBox* self, QMouseEvent* event);
QTLIBC_API void QDialogButtonBox_OnMouseDoubleClickEvent(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_QBaseMouseDoubleClickEvent(QDialogButtonBox* self, QMouseEvent* event);
QTLIBC_API void QDialogButtonBox_MouseMoveEvent(QDialogButtonBox* self, QMouseEvent* event);
QTLIBC_API void QDialogButtonBox_OnMouseMoveEvent(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_QBaseMouseMoveEvent(QDialogButtonBox* self, QMouseEvent* event);
QTLIBC_API void QDialogButtonBox_WheelEvent(QDialogButtonBox* self, QWheelEvent* event);
QTLIBC_API void QDialogButtonBox_OnWheelEvent(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_QBaseWheelEvent(QDialogButtonBox* self, QWheelEvent* event);
QTLIBC_API void QDialogButtonBox_KeyPressEvent(QDialogButtonBox* self, QKeyEvent* event);
QTLIBC_API void QDialogButtonBox_OnKeyPressEvent(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_QBaseKeyPressEvent(QDialogButtonBox* self, QKeyEvent* event);
QTLIBC_API void QDialogButtonBox_KeyReleaseEvent(QDialogButtonBox* self, QKeyEvent* event);
QTLIBC_API void QDialogButtonBox_OnKeyReleaseEvent(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_QBaseKeyReleaseEvent(QDialogButtonBox* self, QKeyEvent* event);
QTLIBC_API void QDialogButtonBox_FocusInEvent(QDialogButtonBox* self, QFocusEvent* event);
QTLIBC_API void QDialogButtonBox_OnFocusInEvent(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_QBaseFocusInEvent(QDialogButtonBox* self, QFocusEvent* event);
QTLIBC_API void QDialogButtonBox_FocusOutEvent(QDialogButtonBox* self, QFocusEvent* event);
QTLIBC_API void QDialogButtonBox_OnFocusOutEvent(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_QBaseFocusOutEvent(QDialogButtonBox* self, QFocusEvent* event);
QTLIBC_API void QDialogButtonBox_EnterEvent(QDialogButtonBox* self, QEnterEvent* event);
QTLIBC_API void QDialogButtonBox_OnEnterEvent(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_QBaseEnterEvent(QDialogButtonBox* self, QEnterEvent* event);
QTLIBC_API void QDialogButtonBox_LeaveEvent(QDialogButtonBox* self, QEvent* event);
QTLIBC_API void QDialogButtonBox_OnLeaveEvent(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_QBaseLeaveEvent(QDialogButtonBox* self, QEvent* event);
QTLIBC_API void QDialogButtonBox_PaintEvent(QDialogButtonBox* self, QPaintEvent* event);
QTLIBC_API void QDialogButtonBox_OnPaintEvent(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_QBasePaintEvent(QDialogButtonBox* self, QPaintEvent* event);
QTLIBC_API void QDialogButtonBox_MoveEvent(QDialogButtonBox* self, QMoveEvent* event);
QTLIBC_API void QDialogButtonBox_OnMoveEvent(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_QBaseMoveEvent(QDialogButtonBox* self, QMoveEvent* event);
QTLIBC_API void QDialogButtonBox_ResizeEvent(QDialogButtonBox* self, QResizeEvent* event);
QTLIBC_API void QDialogButtonBox_OnResizeEvent(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_QBaseResizeEvent(QDialogButtonBox* self, QResizeEvent* event);
QTLIBC_API void QDialogButtonBox_CloseEvent(QDialogButtonBox* self, QCloseEvent* event);
QTLIBC_API void QDialogButtonBox_OnCloseEvent(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_QBaseCloseEvent(QDialogButtonBox* self, QCloseEvent* event);
QTLIBC_API void QDialogButtonBox_ContextMenuEvent(QDialogButtonBox* self, QContextMenuEvent* event);
QTLIBC_API void QDialogButtonBox_OnContextMenuEvent(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_QBaseContextMenuEvent(QDialogButtonBox* self, QContextMenuEvent* event);
QTLIBC_API void QDialogButtonBox_TabletEvent(QDialogButtonBox* self, QTabletEvent* event);
QTLIBC_API void QDialogButtonBox_OnTabletEvent(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_QBaseTabletEvent(QDialogButtonBox* self, QTabletEvent* event);
QTLIBC_API void QDialogButtonBox_ActionEvent(QDialogButtonBox* self, QActionEvent* event);
QTLIBC_API void QDialogButtonBox_OnActionEvent(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_QBaseActionEvent(QDialogButtonBox* self, QActionEvent* event);
QTLIBC_API void QDialogButtonBox_DragEnterEvent(QDialogButtonBox* self, QDragEnterEvent* event);
QTLIBC_API void QDialogButtonBox_OnDragEnterEvent(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_QBaseDragEnterEvent(QDialogButtonBox* self, QDragEnterEvent* event);
QTLIBC_API void QDialogButtonBox_DragMoveEvent(QDialogButtonBox* self, QDragMoveEvent* event);
QTLIBC_API void QDialogButtonBox_OnDragMoveEvent(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_QBaseDragMoveEvent(QDialogButtonBox* self, QDragMoveEvent* event);
QTLIBC_API void QDialogButtonBox_DragLeaveEvent(QDialogButtonBox* self, QDragLeaveEvent* event);
QTLIBC_API void QDialogButtonBox_OnDragLeaveEvent(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_QBaseDragLeaveEvent(QDialogButtonBox* self, QDragLeaveEvent* event);
QTLIBC_API void QDialogButtonBox_DropEvent(QDialogButtonBox* self, QDropEvent* event);
QTLIBC_API void QDialogButtonBox_OnDropEvent(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_QBaseDropEvent(QDialogButtonBox* self, QDropEvent* event);
QTLIBC_API void QDialogButtonBox_ShowEvent(QDialogButtonBox* self, QShowEvent* event);
QTLIBC_API void QDialogButtonBox_OnShowEvent(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_QBaseShowEvent(QDialogButtonBox* self, QShowEvent* event);
QTLIBC_API void QDialogButtonBox_HideEvent(QDialogButtonBox* self, QHideEvent* event);
QTLIBC_API void QDialogButtonBox_OnHideEvent(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_QBaseHideEvent(QDialogButtonBox* self, QHideEvent* event);
QTLIBC_API bool QDialogButtonBox_NativeEvent(QDialogButtonBox* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QDialogButtonBox_OnNativeEvent(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API bool QDialogButtonBox_QBaseNativeEvent(QDialogButtonBox* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QDialogButtonBox_InputMethodEvent(QDialogButtonBox* self, QInputMethodEvent* param1);
QTLIBC_API void QDialogButtonBox_OnInputMethodEvent(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_QBaseInputMethodEvent(QDialogButtonBox* self, QInputMethodEvent* param1);
QTLIBC_API QVariant* QDialogButtonBox_InputMethodQuery(const QDialogButtonBox* self, int param1);
QTLIBC_API void QDialogButtonBox_OnInputMethodQuery(const QDialogButtonBox* self, intptr_t slot);
QTLIBC_API QVariant* QDialogButtonBox_QBaseInputMethodQuery(const QDialogButtonBox* self, int param1);
QTLIBC_API bool QDialogButtonBox_FocusNextPrevChild(QDialogButtonBox* self, bool next);
QTLIBC_API void QDialogButtonBox_OnFocusNextPrevChild(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API bool QDialogButtonBox_QBaseFocusNextPrevChild(QDialogButtonBox* self, bool next);
QTLIBC_API bool QDialogButtonBox_EventFilter(QDialogButtonBox* self, QObject* watched, QEvent* event);
QTLIBC_API void QDialogButtonBox_OnEventFilter(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API bool QDialogButtonBox_QBaseEventFilter(QDialogButtonBox* self, QObject* watched, QEvent* event);
QTLIBC_API void QDialogButtonBox_TimerEvent(QDialogButtonBox* self, QTimerEvent* event);
QTLIBC_API void QDialogButtonBox_OnTimerEvent(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_QBaseTimerEvent(QDialogButtonBox* self, QTimerEvent* event);
QTLIBC_API void QDialogButtonBox_ChildEvent(QDialogButtonBox* self, QChildEvent* event);
QTLIBC_API void QDialogButtonBox_OnChildEvent(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_QBaseChildEvent(QDialogButtonBox* self, QChildEvent* event);
QTLIBC_API void QDialogButtonBox_CustomEvent(QDialogButtonBox* self, QEvent* event);
QTLIBC_API void QDialogButtonBox_OnCustomEvent(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_QBaseCustomEvent(QDialogButtonBox* self, QEvent* event);
QTLIBC_API void QDialogButtonBox_ConnectNotify(QDialogButtonBox* self, QMetaMethod* signal);
QTLIBC_API void QDialogButtonBox_OnConnectNotify(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_QBaseConnectNotify(QDialogButtonBox* self, QMetaMethod* signal);
QTLIBC_API void QDialogButtonBox_DisconnectNotify(QDialogButtonBox* self, QMetaMethod* signal);
QTLIBC_API void QDialogButtonBox_OnDisconnectNotify(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_QBaseDisconnectNotify(QDialogButtonBox* self, QMetaMethod* signal);
QTLIBC_API int QDialogButtonBox_Metric(const QDialogButtonBox* self, int param1);
QTLIBC_API void QDialogButtonBox_OnMetric(const QDialogButtonBox* self, intptr_t slot);
QTLIBC_API int QDialogButtonBox_QBaseMetric(const QDialogButtonBox* self, int param1);
QTLIBC_API void QDialogButtonBox_InitPainter(const QDialogButtonBox* self, QPainter* painter);
QTLIBC_API void QDialogButtonBox_OnInitPainter(const QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_QBaseInitPainter(const QDialogButtonBox* self, QPainter* painter);
QTLIBC_API QPaintDevice* QDialogButtonBox_Redirected(const QDialogButtonBox* self, QPoint* offset);
QTLIBC_API void QDialogButtonBox_OnRedirected(const QDialogButtonBox* self, intptr_t slot);
QTLIBC_API QPaintDevice* QDialogButtonBox_QBaseRedirected(const QDialogButtonBox* self, QPoint* offset);
QTLIBC_API QPainter* QDialogButtonBox_SharedPainter(const QDialogButtonBox* self);
QTLIBC_API void QDialogButtonBox_OnSharedPainter(const QDialogButtonBox* self, intptr_t slot);
QTLIBC_API QPainter* QDialogButtonBox_QBaseSharedPainter(const QDialogButtonBox* self);
QTLIBC_API void QDialogButtonBox_UpdateMicroFocus(QDialogButtonBox* self);
QTLIBC_API void QDialogButtonBox_OnUpdateMicroFocus(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_QBaseUpdateMicroFocus(QDialogButtonBox* self);
QTLIBC_API void QDialogButtonBox_Create(QDialogButtonBox* self);
QTLIBC_API void QDialogButtonBox_OnCreate(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_QBaseCreate(QDialogButtonBox* self);
QTLIBC_API void QDialogButtonBox_Destroy(QDialogButtonBox* self);
QTLIBC_API void QDialogButtonBox_OnDestroy(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API void QDialogButtonBox_QBaseDestroy(QDialogButtonBox* self);
QTLIBC_API bool QDialogButtonBox_FocusNextChild(QDialogButtonBox* self);
QTLIBC_API void QDialogButtonBox_OnFocusNextChild(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API bool QDialogButtonBox_QBaseFocusNextChild(QDialogButtonBox* self);
QTLIBC_API bool QDialogButtonBox_FocusPreviousChild(QDialogButtonBox* self);
QTLIBC_API void QDialogButtonBox_OnFocusPreviousChild(QDialogButtonBox* self, intptr_t slot);
QTLIBC_API bool QDialogButtonBox_QBaseFocusPreviousChild(QDialogButtonBox* self);
QTLIBC_API QObject* QDialogButtonBox_Sender(const QDialogButtonBox* self);
QTLIBC_API void QDialogButtonBox_OnSender(const QDialogButtonBox* self, intptr_t slot);
QTLIBC_API QObject* QDialogButtonBox_QBaseSender(const QDialogButtonBox* self);
QTLIBC_API int QDialogButtonBox_SenderSignalIndex(const QDialogButtonBox* self);
QTLIBC_API void QDialogButtonBox_OnSenderSignalIndex(const QDialogButtonBox* self, intptr_t slot);
QTLIBC_API int QDialogButtonBox_QBaseSenderSignalIndex(const QDialogButtonBox* self);
QTLIBC_API int QDialogButtonBox_Receivers(const QDialogButtonBox* self, const char* signal);
QTLIBC_API void QDialogButtonBox_OnReceivers(const QDialogButtonBox* self, intptr_t slot);
QTLIBC_API int QDialogButtonBox_QBaseReceivers(const QDialogButtonBox* self, const char* signal);
QTLIBC_API bool QDialogButtonBox_IsSignalConnected(const QDialogButtonBox* self, QMetaMethod* signal);
QTLIBC_API void QDialogButtonBox_OnIsSignalConnected(const QDialogButtonBox* self, intptr_t slot);
QTLIBC_API bool QDialogButtonBox_QBaseIsSignalConnected(const QDialogButtonBox* self, QMetaMethod* signal);
QTLIBC_API void QDialogButtonBox_Delete(QDialogButtonBox* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
