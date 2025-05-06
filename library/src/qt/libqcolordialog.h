#pragma once
#ifndef SRC_QTC_LIBQCOLORDIALOG_H
#define SRC_QTC_LIBQCOLORDIALOG_H

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
typedef struct QColorDialog QColorDialog;
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QCursor QCursor;
typedef struct QDialog QDialog;
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
typedef struct QTabletEvent QTabletEvent;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
typedef struct QWindow QWindow;
#endif

#ifdef __cplusplus
typedef QColorDialog::ColorDialogOption ColorDialogOption;   // C++ enum
typedef QColorDialog::ColorDialogOptions ColorDialogOptions; // C++ QFlags
#else
typedef int ColorDialogOption;  // C ABI enum
typedef int ColorDialogOptions; // C ABI QFlags
#endif

QTLIBC_API QColorDialog* QColorDialog_new(QWidget* parent);
QTLIBC_API QColorDialog* QColorDialog_new2();
QTLIBC_API QColorDialog* QColorDialog_new3(QColor* initial);
QTLIBC_API QColorDialog* QColorDialog_new4(QColor* initial, QWidget* parent);
QTLIBC_API QMetaObject* QColorDialog_MetaObject(const QColorDialog* self);
QTLIBC_API void* QColorDialog_Metacast(QColorDialog* self, const char* param1);
QTLIBC_API int QColorDialog_Metacall(QColorDialog* self, int param1, int param2, void** param3);
QTLIBC_API void QColorDialog_OnMetacall(QColorDialog* self, intptr_t slot);
QTLIBC_API int QColorDialog_QBaseMetacall(QColorDialog* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QColorDialog_Tr(const char* s);
QTLIBC_API void QColorDialog_SetCurrentColor(QColorDialog* self, QColor* color);
QTLIBC_API QColor* QColorDialog_CurrentColor(const QColorDialog* self);
QTLIBC_API QColor* QColorDialog_SelectedColor(const QColorDialog* self);
QTLIBC_API void QColorDialog_SetOption(QColorDialog* self, int option);
QTLIBC_API bool QColorDialog_TestOption(const QColorDialog* self, int option);
QTLIBC_API void QColorDialog_SetOptions(QColorDialog* self, int options);
QTLIBC_API int QColorDialog_Options(const QColorDialog* self);
QTLIBC_API void QColorDialog_SetVisible(QColorDialog* self, bool visible);
QTLIBC_API void QColorDialog_OnSetVisible(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseSetVisible(QColorDialog* self, bool visible);
QTLIBC_API QColor* QColorDialog_GetColor();
QTLIBC_API int QColorDialog_CustomCount();
QTLIBC_API QColor* QColorDialog_CustomColor(int index);
QTLIBC_API void QColorDialog_SetCustomColor(int index, QColor* color);
QTLIBC_API QColor* QColorDialog_StandardColor(int index);
QTLIBC_API void QColorDialog_SetStandardColor(int index, QColor* color);
QTLIBC_API void QColorDialog_CurrentColorChanged(QColorDialog* self, QColor* color);
void QColorDialog_Connect_CurrentColorChanged(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_ColorSelected(QColorDialog* self, QColor* color);
void QColorDialog_Connect_ColorSelected(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_ChangeEvent(QColorDialog* self, QEvent* event);
QTLIBC_API void QColorDialog_OnChangeEvent(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseChangeEvent(QColorDialog* self, QEvent* event);
QTLIBC_API void QColorDialog_Done(QColorDialog* self, int result);
QTLIBC_API void QColorDialog_OnDone(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseDone(QColorDialog* self, int result);
QTLIBC_API libqt_string QColorDialog_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QColorDialog_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QColorDialog_SetOption2(QColorDialog* self, int option, bool on);
QTLIBC_API QColor* QColorDialog_GetColor1(QColor* initial);
QTLIBC_API QColor* QColorDialog_GetColor2(QColor* initial, QWidget* parent);
QTLIBC_API QColor* QColorDialog_GetColor3(QColor* initial, QWidget* parent, libqt_string title);
QTLIBC_API QColor* QColorDialog_GetColor4(QColor* initial, QWidget* parent, libqt_string title, int options);
QTLIBC_API QSize* QColorDialog_SizeHint(const QColorDialog* self);
QTLIBC_API void QColorDialog_OnSizeHint(const QColorDialog* self, intptr_t slot);
QTLIBC_API QSize* QColorDialog_QBaseSizeHint(const QColorDialog* self);
QTLIBC_API QSize* QColorDialog_MinimumSizeHint(const QColorDialog* self);
QTLIBC_API void QColorDialog_OnMinimumSizeHint(const QColorDialog* self, intptr_t slot);
QTLIBC_API QSize* QColorDialog_QBaseMinimumSizeHint(const QColorDialog* self);
QTLIBC_API void QColorDialog_Open(QColorDialog* self);
QTLIBC_API void QColorDialog_OnOpen(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseOpen(QColorDialog* self);
QTLIBC_API int QColorDialog_Exec(QColorDialog* self);
QTLIBC_API void QColorDialog_OnExec(QColorDialog* self, intptr_t slot);
QTLIBC_API int QColorDialog_QBaseExec(QColorDialog* self);
QTLIBC_API void QColorDialog_Accept(QColorDialog* self);
QTLIBC_API void QColorDialog_OnAccept(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseAccept(QColorDialog* self);
QTLIBC_API void QColorDialog_Reject(QColorDialog* self);
QTLIBC_API void QColorDialog_OnReject(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseReject(QColorDialog* self);
QTLIBC_API void QColorDialog_KeyPressEvent(QColorDialog* self, QKeyEvent* param1);
QTLIBC_API void QColorDialog_OnKeyPressEvent(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseKeyPressEvent(QColorDialog* self, QKeyEvent* param1);
QTLIBC_API void QColorDialog_CloseEvent(QColorDialog* self, QCloseEvent* param1);
QTLIBC_API void QColorDialog_OnCloseEvent(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseCloseEvent(QColorDialog* self, QCloseEvent* param1);
QTLIBC_API void QColorDialog_ShowEvent(QColorDialog* self, QShowEvent* param1);
QTLIBC_API void QColorDialog_OnShowEvent(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseShowEvent(QColorDialog* self, QShowEvent* param1);
QTLIBC_API void QColorDialog_ResizeEvent(QColorDialog* self, QResizeEvent* param1);
QTLIBC_API void QColorDialog_OnResizeEvent(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseResizeEvent(QColorDialog* self, QResizeEvent* param1);
QTLIBC_API void QColorDialog_ContextMenuEvent(QColorDialog* self, QContextMenuEvent* param1);
QTLIBC_API void QColorDialog_OnContextMenuEvent(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseContextMenuEvent(QColorDialog* self, QContextMenuEvent* param1);
QTLIBC_API bool QColorDialog_EventFilter(QColorDialog* self, QObject* param1, QEvent* param2);
QTLIBC_API void QColorDialog_OnEventFilter(QColorDialog* self, intptr_t slot);
QTLIBC_API bool QColorDialog_QBaseEventFilter(QColorDialog* self, QObject* param1, QEvent* param2);
QTLIBC_API int QColorDialog_DevType(const QColorDialog* self);
QTLIBC_API void QColorDialog_OnDevType(const QColorDialog* self, intptr_t slot);
QTLIBC_API int QColorDialog_QBaseDevType(const QColorDialog* self);
QTLIBC_API int QColorDialog_HeightForWidth(const QColorDialog* self, int param1);
QTLIBC_API void QColorDialog_OnHeightForWidth(const QColorDialog* self, intptr_t slot);
QTLIBC_API int QColorDialog_QBaseHeightForWidth(const QColorDialog* self, int param1);
QTLIBC_API bool QColorDialog_HasHeightForWidth(const QColorDialog* self);
QTLIBC_API void QColorDialog_OnHasHeightForWidth(const QColorDialog* self, intptr_t slot);
QTLIBC_API bool QColorDialog_QBaseHasHeightForWidth(const QColorDialog* self);
QTLIBC_API QPaintEngine* QColorDialog_PaintEngine(const QColorDialog* self);
QTLIBC_API void QColorDialog_OnPaintEngine(const QColorDialog* self, intptr_t slot);
QTLIBC_API QPaintEngine* QColorDialog_QBasePaintEngine(const QColorDialog* self);
QTLIBC_API bool QColorDialog_Event(QColorDialog* self, QEvent* event);
QTLIBC_API void QColorDialog_OnEvent(QColorDialog* self, intptr_t slot);
QTLIBC_API bool QColorDialog_QBaseEvent(QColorDialog* self, QEvent* event);
QTLIBC_API void QColorDialog_MousePressEvent(QColorDialog* self, QMouseEvent* event);
QTLIBC_API void QColorDialog_OnMousePressEvent(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseMousePressEvent(QColorDialog* self, QMouseEvent* event);
QTLIBC_API void QColorDialog_MouseReleaseEvent(QColorDialog* self, QMouseEvent* event);
QTLIBC_API void QColorDialog_OnMouseReleaseEvent(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseMouseReleaseEvent(QColorDialog* self, QMouseEvent* event);
QTLIBC_API void QColorDialog_MouseDoubleClickEvent(QColorDialog* self, QMouseEvent* event);
QTLIBC_API void QColorDialog_OnMouseDoubleClickEvent(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseMouseDoubleClickEvent(QColorDialog* self, QMouseEvent* event);
QTLIBC_API void QColorDialog_MouseMoveEvent(QColorDialog* self, QMouseEvent* event);
QTLIBC_API void QColorDialog_OnMouseMoveEvent(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseMouseMoveEvent(QColorDialog* self, QMouseEvent* event);
QTLIBC_API void QColorDialog_WheelEvent(QColorDialog* self, QWheelEvent* event);
QTLIBC_API void QColorDialog_OnWheelEvent(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseWheelEvent(QColorDialog* self, QWheelEvent* event);
QTLIBC_API void QColorDialog_KeyReleaseEvent(QColorDialog* self, QKeyEvent* event);
QTLIBC_API void QColorDialog_OnKeyReleaseEvent(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseKeyReleaseEvent(QColorDialog* self, QKeyEvent* event);
QTLIBC_API void QColorDialog_FocusInEvent(QColorDialog* self, QFocusEvent* event);
QTLIBC_API void QColorDialog_OnFocusInEvent(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseFocusInEvent(QColorDialog* self, QFocusEvent* event);
QTLIBC_API void QColorDialog_FocusOutEvent(QColorDialog* self, QFocusEvent* event);
QTLIBC_API void QColorDialog_OnFocusOutEvent(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseFocusOutEvent(QColorDialog* self, QFocusEvent* event);
QTLIBC_API void QColorDialog_EnterEvent(QColorDialog* self, QEnterEvent* event);
QTLIBC_API void QColorDialog_OnEnterEvent(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseEnterEvent(QColorDialog* self, QEnterEvent* event);
QTLIBC_API void QColorDialog_LeaveEvent(QColorDialog* self, QEvent* event);
QTLIBC_API void QColorDialog_OnLeaveEvent(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseLeaveEvent(QColorDialog* self, QEvent* event);
QTLIBC_API void QColorDialog_PaintEvent(QColorDialog* self, QPaintEvent* event);
QTLIBC_API void QColorDialog_OnPaintEvent(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBasePaintEvent(QColorDialog* self, QPaintEvent* event);
QTLIBC_API void QColorDialog_MoveEvent(QColorDialog* self, QMoveEvent* event);
QTLIBC_API void QColorDialog_OnMoveEvent(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseMoveEvent(QColorDialog* self, QMoveEvent* event);
QTLIBC_API void QColorDialog_TabletEvent(QColorDialog* self, QTabletEvent* event);
QTLIBC_API void QColorDialog_OnTabletEvent(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseTabletEvent(QColorDialog* self, QTabletEvent* event);
QTLIBC_API void QColorDialog_ActionEvent(QColorDialog* self, QActionEvent* event);
QTLIBC_API void QColorDialog_OnActionEvent(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseActionEvent(QColorDialog* self, QActionEvent* event);
QTLIBC_API void QColorDialog_DragEnterEvent(QColorDialog* self, QDragEnterEvent* event);
QTLIBC_API void QColorDialog_OnDragEnterEvent(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseDragEnterEvent(QColorDialog* self, QDragEnterEvent* event);
QTLIBC_API void QColorDialog_DragMoveEvent(QColorDialog* self, QDragMoveEvent* event);
QTLIBC_API void QColorDialog_OnDragMoveEvent(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseDragMoveEvent(QColorDialog* self, QDragMoveEvent* event);
QTLIBC_API void QColorDialog_DragLeaveEvent(QColorDialog* self, QDragLeaveEvent* event);
QTLIBC_API void QColorDialog_OnDragLeaveEvent(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseDragLeaveEvent(QColorDialog* self, QDragLeaveEvent* event);
QTLIBC_API void QColorDialog_DropEvent(QColorDialog* self, QDropEvent* event);
QTLIBC_API void QColorDialog_OnDropEvent(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseDropEvent(QColorDialog* self, QDropEvent* event);
QTLIBC_API void QColorDialog_HideEvent(QColorDialog* self, QHideEvent* event);
QTLIBC_API void QColorDialog_OnHideEvent(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseHideEvent(QColorDialog* self, QHideEvent* event);
QTLIBC_API bool QColorDialog_NativeEvent(QColorDialog* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QColorDialog_OnNativeEvent(QColorDialog* self, intptr_t slot);
QTLIBC_API bool QColorDialog_QBaseNativeEvent(QColorDialog* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QColorDialog_InputMethodEvent(QColorDialog* self, QInputMethodEvent* param1);
QTLIBC_API void QColorDialog_OnInputMethodEvent(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseInputMethodEvent(QColorDialog* self, QInputMethodEvent* param1);
QTLIBC_API QVariant* QColorDialog_InputMethodQuery(const QColorDialog* self, int param1);
QTLIBC_API void QColorDialog_OnInputMethodQuery(const QColorDialog* self, intptr_t slot);
QTLIBC_API QVariant* QColorDialog_QBaseInputMethodQuery(const QColorDialog* self, int param1);
QTLIBC_API bool QColorDialog_FocusNextPrevChild(QColorDialog* self, bool next);
QTLIBC_API void QColorDialog_OnFocusNextPrevChild(QColorDialog* self, intptr_t slot);
QTLIBC_API bool QColorDialog_QBaseFocusNextPrevChild(QColorDialog* self, bool next);
QTLIBC_API void QColorDialog_TimerEvent(QColorDialog* self, QTimerEvent* event);
QTLIBC_API void QColorDialog_OnTimerEvent(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseTimerEvent(QColorDialog* self, QTimerEvent* event);
QTLIBC_API void QColorDialog_ChildEvent(QColorDialog* self, QChildEvent* event);
QTLIBC_API void QColorDialog_OnChildEvent(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseChildEvent(QColorDialog* self, QChildEvent* event);
QTLIBC_API void QColorDialog_CustomEvent(QColorDialog* self, QEvent* event);
QTLIBC_API void QColorDialog_OnCustomEvent(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseCustomEvent(QColorDialog* self, QEvent* event);
QTLIBC_API void QColorDialog_ConnectNotify(QColorDialog* self, QMetaMethod* signal);
QTLIBC_API void QColorDialog_OnConnectNotify(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseConnectNotify(QColorDialog* self, QMetaMethod* signal);
QTLIBC_API void QColorDialog_DisconnectNotify(QColorDialog* self, QMetaMethod* signal);
QTLIBC_API void QColorDialog_OnDisconnectNotify(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseDisconnectNotify(QColorDialog* self, QMetaMethod* signal);
QTLIBC_API int QColorDialog_Metric(const QColorDialog* self, int param1);
QTLIBC_API void QColorDialog_OnMetric(const QColorDialog* self, intptr_t slot);
QTLIBC_API int QColorDialog_QBaseMetric(const QColorDialog* self, int param1);
QTLIBC_API void QColorDialog_InitPainter(const QColorDialog* self, QPainter* painter);
QTLIBC_API void QColorDialog_OnInitPainter(const QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseInitPainter(const QColorDialog* self, QPainter* painter);
QTLIBC_API QPaintDevice* QColorDialog_Redirected(const QColorDialog* self, QPoint* offset);
QTLIBC_API void QColorDialog_OnRedirected(const QColorDialog* self, intptr_t slot);
QTLIBC_API QPaintDevice* QColorDialog_QBaseRedirected(const QColorDialog* self, QPoint* offset);
QTLIBC_API QPainter* QColorDialog_SharedPainter(const QColorDialog* self);
QTLIBC_API void QColorDialog_OnSharedPainter(const QColorDialog* self, intptr_t slot);
QTLIBC_API QPainter* QColorDialog_QBaseSharedPainter(const QColorDialog* self);
QTLIBC_API void QColorDialog_AdjustPosition(QColorDialog* self, QWidget* param1);
QTLIBC_API void QColorDialog_OnAdjustPosition(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseAdjustPosition(QColorDialog* self, QWidget* param1);
QTLIBC_API void QColorDialog_UpdateMicroFocus(QColorDialog* self);
QTLIBC_API void QColorDialog_OnUpdateMicroFocus(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseUpdateMicroFocus(QColorDialog* self);
QTLIBC_API void QColorDialog_Create(QColorDialog* self);
QTLIBC_API void QColorDialog_OnCreate(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseCreate(QColorDialog* self);
QTLIBC_API void QColorDialog_Destroy(QColorDialog* self);
QTLIBC_API void QColorDialog_OnDestroy(QColorDialog* self, intptr_t slot);
QTLIBC_API void QColorDialog_QBaseDestroy(QColorDialog* self);
QTLIBC_API bool QColorDialog_FocusNextChild(QColorDialog* self);
QTLIBC_API void QColorDialog_OnFocusNextChild(QColorDialog* self, intptr_t slot);
QTLIBC_API bool QColorDialog_QBaseFocusNextChild(QColorDialog* self);
QTLIBC_API bool QColorDialog_FocusPreviousChild(QColorDialog* self);
QTLIBC_API void QColorDialog_OnFocusPreviousChild(QColorDialog* self, intptr_t slot);
QTLIBC_API bool QColorDialog_QBaseFocusPreviousChild(QColorDialog* self);
QTLIBC_API QObject* QColorDialog_Sender(const QColorDialog* self);
QTLIBC_API void QColorDialog_OnSender(const QColorDialog* self, intptr_t slot);
QTLIBC_API QObject* QColorDialog_QBaseSender(const QColorDialog* self);
QTLIBC_API int QColorDialog_SenderSignalIndex(const QColorDialog* self);
QTLIBC_API void QColorDialog_OnSenderSignalIndex(const QColorDialog* self, intptr_t slot);
QTLIBC_API int QColorDialog_QBaseSenderSignalIndex(const QColorDialog* self);
QTLIBC_API int QColorDialog_Receivers(const QColorDialog* self, const char* signal);
QTLIBC_API void QColorDialog_OnReceivers(const QColorDialog* self, intptr_t slot);
QTLIBC_API int QColorDialog_QBaseReceivers(const QColorDialog* self, const char* signal);
QTLIBC_API bool QColorDialog_IsSignalConnected(const QColorDialog* self, QMetaMethod* signal);
QTLIBC_API void QColorDialog_OnIsSignalConnected(const QColorDialog* self, intptr_t slot);
QTLIBC_API bool QColorDialog_QBaseIsSignalConnected(const QColorDialog* self, QMetaMethod* signal);
QTLIBC_API void QColorDialog_Delete(QColorDialog* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
