#pragma once
#ifndef SRC_QTC_LIBQPUSHBUTTON_H
#define SRC_QTC_LIBQPUSHBUTTON_H

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

QTLIBC_API QPushButton* QPushButton_new(QWidget* parent);
QTLIBC_API QPushButton* QPushButton_new2();
QTLIBC_API QPushButton* QPushButton_new3(libqt_string text);
QTLIBC_API QPushButton* QPushButton_new4(QIcon* icon, libqt_string text);
QTLIBC_API QPushButton* QPushButton_new5(libqt_string text, QWidget* parent);
QTLIBC_API QPushButton* QPushButton_new6(QIcon* icon, libqt_string text, QWidget* parent);
QTLIBC_API QMetaObject* QPushButton_MetaObject(const QPushButton* self);
QTLIBC_API void* QPushButton_Metacast(QPushButton* self, const char* param1);
QTLIBC_API int QPushButton_Metacall(QPushButton* self, int param1, int param2, void** param3);
QTLIBC_API void QPushButton_OnMetacall(QPushButton* self, intptr_t slot);
QTLIBC_API int QPushButton_QBaseMetacall(QPushButton* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QPushButton_Tr(const char* s);
QTLIBC_API QSize* QPushButton_SizeHint(const QPushButton* self);
QTLIBC_API void QPushButton_OnSizeHint(const QPushButton* self, intptr_t slot);
QTLIBC_API QSize* QPushButton_QBaseSizeHint(const QPushButton* self);
QTLIBC_API QSize* QPushButton_MinimumSizeHint(const QPushButton* self);
QTLIBC_API void QPushButton_OnMinimumSizeHint(const QPushButton* self, intptr_t slot);
QTLIBC_API QSize* QPushButton_QBaseMinimumSizeHint(const QPushButton* self);
QTLIBC_API bool QPushButton_AutoDefault(const QPushButton* self);
QTLIBC_API void QPushButton_SetAutoDefault(QPushButton* self, bool autoDefault);
QTLIBC_API bool QPushButton_IsDefault(const QPushButton* self);
QTLIBC_API void QPushButton_SetDefault(QPushButton* self, bool defaultVal);
QTLIBC_API void QPushButton_SetMenu(QPushButton* self, QMenu* menu);
QTLIBC_API QMenu* QPushButton_Menu(const QPushButton* self);
QTLIBC_API void QPushButton_SetFlat(QPushButton* self, bool flat);
QTLIBC_API bool QPushButton_IsFlat(const QPushButton* self);
QTLIBC_API void QPushButton_ShowMenu(QPushButton* self);
QTLIBC_API bool QPushButton_Event(QPushButton* self, QEvent* e);
QTLIBC_API void QPushButton_OnEvent(QPushButton* self, intptr_t slot);
QTLIBC_API bool QPushButton_QBaseEvent(QPushButton* self, QEvent* e);
QTLIBC_API void QPushButton_PaintEvent(QPushButton* self, QPaintEvent* param1);
QTLIBC_API void QPushButton_OnPaintEvent(QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBasePaintEvent(QPushButton* self, QPaintEvent* param1);
QTLIBC_API void QPushButton_KeyPressEvent(QPushButton* self, QKeyEvent* param1);
QTLIBC_API void QPushButton_OnKeyPressEvent(QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBaseKeyPressEvent(QPushButton* self, QKeyEvent* param1);
QTLIBC_API void QPushButton_FocusInEvent(QPushButton* self, QFocusEvent* param1);
QTLIBC_API void QPushButton_OnFocusInEvent(QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBaseFocusInEvent(QPushButton* self, QFocusEvent* param1);
QTLIBC_API void QPushButton_FocusOutEvent(QPushButton* self, QFocusEvent* param1);
QTLIBC_API void QPushButton_OnFocusOutEvent(QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBaseFocusOutEvent(QPushButton* self, QFocusEvent* param1);
QTLIBC_API void QPushButton_MouseMoveEvent(QPushButton* self, QMouseEvent* param1);
QTLIBC_API void QPushButton_OnMouseMoveEvent(QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBaseMouseMoveEvent(QPushButton* self, QMouseEvent* param1);
QTLIBC_API void QPushButton_InitStyleOption(const QPushButton* self, QStyleOptionButton* option);
QTLIBC_API void QPushButton_OnInitStyleOption(const QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBaseInitStyleOption(const QPushButton* self, QStyleOptionButton* option);
QTLIBC_API bool QPushButton_HitButton(const QPushButton* self, QPoint* pos);
QTLIBC_API void QPushButton_OnHitButton(const QPushButton* self, intptr_t slot);
QTLIBC_API bool QPushButton_QBaseHitButton(const QPushButton* self, QPoint* pos);
QTLIBC_API libqt_string QPushButton_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QPushButton_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QPushButton_CheckStateSet(QPushButton* self);
QTLIBC_API void QPushButton_OnCheckStateSet(QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBaseCheckStateSet(QPushButton* self);
QTLIBC_API void QPushButton_NextCheckState(QPushButton* self);
QTLIBC_API void QPushButton_OnNextCheckState(QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBaseNextCheckState(QPushButton* self);
QTLIBC_API void QPushButton_KeyReleaseEvent(QPushButton* self, QKeyEvent* e);
QTLIBC_API void QPushButton_OnKeyReleaseEvent(QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBaseKeyReleaseEvent(QPushButton* self, QKeyEvent* e);
QTLIBC_API void QPushButton_MousePressEvent(QPushButton* self, QMouseEvent* e);
QTLIBC_API void QPushButton_OnMousePressEvent(QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBaseMousePressEvent(QPushButton* self, QMouseEvent* e);
QTLIBC_API void QPushButton_MouseReleaseEvent(QPushButton* self, QMouseEvent* e);
QTLIBC_API void QPushButton_OnMouseReleaseEvent(QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBaseMouseReleaseEvent(QPushButton* self, QMouseEvent* e);
QTLIBC_API void QPushButton_ChangeEvent(QPushButton* self, QEvent* e);
QTLIBC_API void QPushButton_OnChangeEvent(QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBaseChangeEvent(QPushButton* self, QEvent* e);
QTLIBC_API void QPushButton_TimerEvent(QPushButton* self, QTimerEvent* e);
QTLIBC_API void QPushButton_OnTimerEvent(QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBaseTimerEvent(QPushButton* self, QTimerEvent* e);
QTLIBC_API int QPushButton_DevType(const QPushButton* self);
QTLIBC_API void QPushButton_OnDevType(const QPushButton* self, intptr_t slot);
QTLIBC_API int QPushButton_QBaseDevType(const QPushButton* self);
QTLIBC_API void QPushButton_SetVisible(QPushButton* self, bool visible);
QTLIBC_API void QPushButton_OnSetVisible(QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBaseSetVisible(QPushButton* self, bool visible);
QTLIBC_API int QPushButton_HeightForWidth(const QPushButton* self, int param1);
QTLIBC_API void QPushButton_OnHeightForWidth(const QPushButton* self, intptr_t slot);
QTLIBC_API int QPushButton_QBaseHeightForWidth(const QPushButton* self, int param1);
QTLIBC_API bool QPushButton_HasHeightForWidth(const QPushButton* self);
QTLIBC_API void QPushButton_OnHasHeightForWidth(const QPushButton* self, intptr_t slot);
QTLIBC_API bool QPushButton_QBaseHasHeightForWidth(const QPushButton* self);
QTLIBC_API QPaintEngine* QPushButton_PaintEngine(const QPushButton* self);
QTLIBC_API void QPushButton_OnPaintEngine(const QPushButton* self, intptr_t slot);
QTLIBC_API QPaintEngine* QPushButton_QBasePaintEngine(const QPushButton* self);
QTLIBC_API void QPushButton_MouseDoubleClickEvent(QPushButton* self, QMouseEvent* event);
QTLIBC_API void QPushButton_OnMouseDoubleClickEvent(QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBaseMouseDoubleClickEvent(QPushButton* self, QMouseEvent* event);
QTLIBC_API void QPushButton_WheelEvent(QPushButton* self, QWheelEvent* event);
QTLIBC_API void QPushButton_OnWheelEvent(QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBaseWheelEvent(QPushButton* self, QWheelEvent* event);
QTLIBC_API void QPushButton_EnterEvent(QPushButton* self, QEnterEvent* event);
QTLIBC_API void QPushButton_OnEnterEvent(QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBaseEnterEvent(QPushButton* self, QEnterEvent* event);
QTLIBC_API void QPushButton_LeaveEvent(QPushButton* self, QEvent* event);
QTLIBC_API void QPushButton_OnLeaveEvent(QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBaseLeaveEvent(QPushButton* self, QEvent* event);
QTLIBC_API void QPushButton_MoveEvent(QPushButton* self, QMoveEvent* event);
QTLIBC_API void QPushButton_OnMoveEvent(QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBaseMoveEvent(QPushButton* self, QMoveEvent* event);
QTLIBC_API void QPushButton_ResizeEvent(QPushButton* self, QResizeEvent* event);
QTLIBC_API void QPushButton_OnResizeEvent(QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBaseResizeEvent(QPushButton* self, QResizeEvent* event);
QTLIBC_API void QPushButton_CloseEvent(QPushButton* self, QCloseEvent* event);
QTLIBC_API void QPushButton_OnCloseEvent(QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBaseCloseEvent(QPushButton* self, QCloseEvent* event);
QTLIBC_API void QPushButton_ContextMenuEvent(QPushButton* self, QContextMenuEvent* event);
QTLIBC_API void QPushButton_OnContextMenuEvent(QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBaseContextMenuEvent(QPushButton* self, QContextMenuEvent* event);
QTLIBC_API void QPushButton_TabletEvent(QPushButton* self, QTabletEvent* event);
QTLIBC_API void QPushButton_OnTabletEvent(QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBaseTabletEvent(QPushButton* self, QTabletEvent* event);
QTLIBC_API void QPushButton_ActionEvent(QPushButton* self, QActionEvent* event);
QTLIBC_API void QPushButton_OnActionEvent(QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBaseActionEvent(QPushButton* self, QActionEvent* event);
QTLIBC_API void QPushButton_DragEnterEvent(QPushButton* self, QDragEnterEvent* event);
QTLIBC_API void QPushButton_OnDragEnterEvent(QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBaseDragEnterEvent(QPushButton* self, QDragEnterEvent* event);
QTLIBC_API void QPushButton_DragMoveEvent(QPushButton* self, QDragMoveEvent* event);
QTLIBC_API void QPushButton_OnDragMoveEvent(QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBaseDragMoveEvent(QPushButton* self, QDragMoveEvent* event);
QTLIBC_API void QPushButton_DragLeaveEvent(QPushButton* self, QDragLeaveEvent* event);
QTLIBC_API void QPushButton_OnDragLeaveEvent(QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBaseDragLeaveEvent(QPushButton* self, QDragLeaveEvent* event);
QTLIBC_API void QPushButton_DropEvent(QPushButton* self, QDropEvent* event);
QTLIBC_API void QPushButton_OnDropEvent(QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBaseDropEvent(QPushButton* self, QDropEvent* event);
QTLIBC_API void QPushButton_ShowEvent(QPushButton* self, QShowEvent* event);
QTLIBC_API void QPushButton_OnShowEvent(QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBaseShowEvent(QPushButton* self, QShowEvent* event);
QTLIBC_API void QPushButton_HideEvent(QPushButton* self, QHideEvent* event);
QTLIBC_API void QPushButton_OnHideEvent(QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBaseHideEvent(QPushButton* self, QHideEvent* event);
QTLIBC_API bool QPushButton_NativeEvent(QPushButton* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QPushButton_OnNativeEvent(QPushButton* self, intptr_t slot);
QTLIBC_API bool QPushButton_QBaseNativeEvent(QPushButton* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QPushButton_InputMethodEvent(QPushButton* self, QInputMethodEvent* param1);
QTLIBC_API void QPushButton_OnInputMethodEvent(QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBaseInputMethodEvent(QPushButton* self, QInputMethodEvent* param1);
QTLIBC_API QVariant* QPushButton_InputMethodQuery(const QPushButton* self, int param1);
QTLIBC_API void QPushButton_OnInputMethodQuery(const QPushButton* self, intptr_t slot);
QTLIBC_API QVariant* QPushButton_QBaseInputMethodQuery(const QPushButton* self, int param1);
QTLIBC_API bool QPushButton_FocusNextPrevChild(QPushButton* self, bool next);
QTLIBC_API void QPushButton_OnFocusNextPrevChild(QPushButton* self, intptr_t slot);
QTLIBC_API bool QPushButton_QBaseFocusNextPrevChild(QPushButton* self, bool next);
QTLIBC_API bool QPushButton_EventFilter(QPushButton* self, QObject* watched, QEvent* event);
QTLIBC_API void QPushButton_OnEventFilter(QPushButton* self, intptr_t slot);
QTLIBC_API bool QPushButton_QBaseEventFilter(QPushButton* self, QObject* watched, QEvent* event);
QTLIBC_API void QPushButton_ChildEvent(QPushButton* self, QChildEvent* event);
QTLIBC_API void QPushButton_OnChildEvent(QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBaseChildEvent(QPushButton* self, QChildEvent* event);
QTLIBC_API void QPushButton_CustomEvent(QPushButton* self, QEvent* event);
QTLIBC_API void QPushButton_OnCustomEvent(QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBaseCustomEvent(QPushButton* self, QEvent* event);
QTLIBC_API void QPushButton_ConnectNotify(QPushButton* self, QMetaMethod* signal);
QTLIBC_API void QPushButton_OnConnectNotify(QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBaseConnectNotify(QPushButton* self, QMetaMethod* signal);
QTLIBC_API void QPushButton_DisconnectNotify(QPushButton* self, QMetaMethod* signal);
QTLIBC_API void QPushButton_OnDisconnectNotify(QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBaseDisconnectNotify(QPushButton* self, QMetaMethod* signal);
QTLIBC_API int QPushButton_Metric(const QPushButton* self, int param1);
QTLIBC_API void QPushButton_OnMetric(const QPushButton* self, intptr_t slot);
QTLIBC_API int QPushButton_QBaseMetric(const QPushButton* self, int param1);
QTLIBC_API void QPushButton_InitPainter(const QPushButton* self, QPainter* painter);
QTLIBC_API void QPushButton_OnInitPainter(const QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBaseInitPainter(const QPushButton* self, QPainter* painter);
QTLIBC_API QPaintDevice* QPushButton_Redirected(const QPushButton* self, QPoint* offset);
QTLIBC_API void QPushButton_OnRedirected(const QPushButton* self, intptr_t slot);
QTLIBC_API QPaintDevice* QPushButton_QBaseRedirected(const QPushButton* self, QPoint* offset);
QTLIBC_API QPainter* QPushButton_SharedPainter(const QPushButton* self);
QTLIBC_API void QPushButton_OnSharedPainter(const QPushButton* self, intptr_t slot);
QTLIBC_API QPainter* QPushButton_QBaseSharedPainter(const QPushButton* self);
QTLIBC_API void QPushButton_UpdateMicroFocus(QPushButton* self);
QTLIBC_API void QPushButton_OnUpdateMicroFocus(QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBaseUpdateMicroFocus(QPushButton* self);
QTLIBC_API void QPushButton_Create(QPushButton* self);
QTLIBC_API void QPushButton_OnCreate(QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBaseCreate(QPushButton* self);
QTLIBC_API void QPushButton_Destroy(QPushButton* self);
QTLIBC_API void QPushButton_OnDestroy(QPushButton* self, intptr_t slot);
QTLIBC_API void QPushButton_QBaseDestroy(QPushButton* self);
QTLIBC_API bool QPushButton_FocusNextChild(QPushButton* self);
QTLIBC_API void QPushButton_OnFocusNextChild(QPushButton* self, intptr_t slot);
QTLIBC_API bool QPushButton_QBaseFocusNextChild(QPushButton* self);
QTLIBC_API bool QPushButton_FocusPreviousChild(QPushButton* self);
QTLIBC_API void QPushButton_OnFocusPreviousChild(QPushButton* self, intptr_t slot);
QTLIBC_API bool QPushButton_QBaseFocusPreviousChild(QPushButton* self);
QTLIBC_API QObject* QPushButton_Sender(const QPushButton* self);
QTLIBC_API void QPushButton_OnSender(const QPushButton* self, intptr_t slot);
QTLIBC_API QObject* QPushButton_QBaseSender(const QPushButton* self);
QTLIBC_API int QPushButton_SenderSignalIndex(const QPushButton* self);
QTLIBC_API void QPushButton_OnSenderSignalIndex(const QPushButton* self, intptr_t slot);
QTLIBC_API int QPushButton_QBaseSenderSignalIndex(const QPushButton* self);
QTLIBC_API int QPushButton_Receivers(const QPushButton* self, const char* signal);
QTLIBC_API void QPushButton_OnReceivers(const QPushButton* self, intptr_t slot);
QTLIBC_API int QPushButton_QBaseReceivers(const QPushButton* self, const char* signal);
QTLIBC_API bool QPushButton_IsSignalConnected(const QPushButton* self, QMetaMethod* signal);
QTLIBC_API void QPushButton_OnIsSignalConnected(const QPushButton* self, intptr_t slot);
QTLIBC_API bool QPushButton_QBaseIsSignalConnected(const QPushButton* self, QMetaMethod* signal);
QTLIBC_API void QPushButton_Delete(QPushButton* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
