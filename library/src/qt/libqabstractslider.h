#pragma once
#ifndef SRC_QTC_LIBQABSTRACTSLIDER_H
#define SRC_QTC_LIBQABSTRACTSLIDER_H

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
typedef struct QAbstractSlider QAbstractSlider;
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
typedef QAbstractSlider::SliderAction SliderAction; // C++ enum
#else
typedef int SliderAction; // C ABI enum
typedef int SliderChange; // C ABI enum
#endif

QTLIBC_API QAbstractSlider* QAbstractSlider_new(QWidget* parent);
QTLIBC_API QAbstractSlider* QAbstractSlider_new2();
QTLIBC_API QMetaObject* QAbstractSlider_MetaObject(const QAbstractSlider* self);
QTLIBC_API void* QAbstractSlider_Metacast(QAbstractSlider* self, const char* param1);
QTLIBC_API int QAbstractSlider_Metacall(QAbstractSlider* self, int param1, int param2, void** param3);
QTLIBC_API void QAbstractSlider_OnMetacall(QAbstractSlider* self, intptr_t slot);
QTLIBC_API int QAbstractSlider_QBaseMetacall(QAbstractSlider* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QAbstractSlider_Tr(const char* s);
QTLIBC_API int QAbstractSlider_Orientation(const QAbstractSlider* self);
QTLIBC_API void QAbstractSlider_SetMinimum(QAbstractSlider* self, int minimum);
QTLIBC_API int QAbstractSlider_Minimum(const QAbstractSlider* self);
QTLIBC_API void QAbstractSlider_SetMaximum(QAbstractSlider* self, int maximum);
QTLIBC_API int QAbstractSlider_Maximum(const QAbstractSlider* self);
QTLIBC_API void QAbstractSlider_SetSingleStep(QAbstractSlider* self, int singleStep);
QTLIBC_API int QAbstractSlider_SingleStep(const QAbstractSlider* self);
QTLIBC_API void QAbstractSlider_SetPageStep(QAbstractSlider* self, int pageStep);
QTLIBC_API int QAbstractSlider_PageStep(const QAbstractSlider* self);
QTLIBC_API void QAbstractSlider_SetTracking(QAbstractSlider* self, bool enable);
QTLIBC_API bool QAbstractSlider_HasTracking(const QAbstractSlider* self);
QTLIBC_API void QAbstractSlider_SetSliderDown(QAbstractSlider* self, bool sliderDown);
QTLIBC_API bool QAbstractSlider_IsSliderDown(const QAbstractSlider* self);
QTLIBC_API void QAbstractSlider_SetSliderPosition(QAbstractSlider* self, int sliderPosition);
QTLIBC_API int QAbstractSlider_SliderPosition(const QAbstractSlider* self);
QTLIBC_API void QAbstractSlider_SetInvertedAppearance(QAbstractSlider* self, bool invertedAppearance);
QTLIBC_API bool QAbstractSlider_InvertedAppearance(const QAbstractSlider* self);
QTLIBC_API void QAbstractSlider_SetInvertedControls(QAbstractSlider* self, bool invertedControls);
QTLIBC_API bool QAbstractSlider_InvertedControls(const QAbstractSlider* self);
QTLIBC_API int QAbstractSlider_Value(const QAbstractSlider* self);
QTLIBC_API void QAbstractSlider_TriggerAction(QAbstractSlider* self, int action);
QTLIBC_API void QAbstractSlider_SetValue(QAbstractSlider* self, int value);
QTLIBC_API void QAbstractSlider_SetOrientation(QAbstractSlider* self, int orientation);
QTLIBC_API void QAbstractSlider_SetRange(QAbstractSlider* self, int min, int max);
QTLIBC_API void QAbstractSlider_ValueChanged(QAbstractSlider* self, int value);
QTLIBC_API void QAbstractSlider_Connect_ValueChanged(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_SliderPressed(QAbstractSlider* self);
QTLIBC_API void QAbstractSlider_Connect_SliderPressed(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_SliderMoved(QAbstractSlider* self, int position);
QTLIBC_API void QAbstractSlider_Connect_SliderMoved(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_SliderReleased(QAbstractSlider* self);
QTLIBC_API void QAbstractSlider_Connect_SliderReleased(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_RangeChanged(QAbstractSlider* self, int min, int max);
QTLIBC_API void QAbstractSlider_Connect_RangeChanged(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_ActionTriggered(QAbstractSlider* self, int action);
QTLIBC_API void QAbstractSlider_Connect_ActionTriggered(QAbstractSlider* self, intptr_t slot);
QTLIBC_API bool QAbstractSlider_Event(QAbstractSlider* self, QEvent* e);
QTLIBC_API void QAbstractSlider_OnEvent(QAbstractSlider* self, intptr_t slot);
QTLIBC_API bool QAbstractSlider_QBaseEvent(QAbstractSlider* self, QEvent* e);
QTLIBC_API void QAbstractSlider_SliderChange(QAbstractSlider* self, int change);
QTLIBC_API void QAbstractSlider_OnSliderChange(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseSliderChange(QAbstractSlider* self, int change);
QTLIBC_API void QAbstractSlider_KeyPressEvent(QAbstractSlider* self, QKeyEvent* ev);
QTLIBC_API void QAbstractSlider_OnKeyPressEvent(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseKeyPressEvent(QAbstractSlider* self, QKeyEvent* ev);
QTLIBC_API void QAbstractSlider_TimerEvent(QAbstractSlider* self, QTimerEvent* param1);
QTLIBC_API void QAbstractSlider_OnTimerEvent(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseTimerEvent(QAbstractSlider* self, QTimerEvent* param1);
QTLIBC_API void QAbstractSlider_WheelEvent(QAbstractSlider* self, QWheelEvent* e);
QTLIBC_API void QAbstractSlider_OnWheelEvent(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseWheelEvent(QAbstractSlider* self, QWheelEvent* e);
QTLIBC_API void QAbstractSlider_ChangeEvent(QAbstractSlider* self, QEvent* e);
QTLIBC_API void QAbstractSlider_OnChangeEvent(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseChangeEvent(QAbstractSlider* self, QEvent* e);
QTLIBC_API libqt_string QAbstractSlider_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QAbstractSlider_Tr3(const char* s, const char* c, int n);
QTLIBC_API int QAbstractSlider_DevType(const QAbstractSlider* self);
QTLIBC_API void QAbstractSlider_OnDevType(const QAbstractSlider* self, intptr_t slot);
QTLIBC_API int QAbstractSlider_QBaseDevType(const QAbstractSlider* self);
QTLIBC_API void QAbstractSlider_SetVisible(QAbstractSlider* self, bool visible);
QTLIBC_API void QAbstractSlider_OnSetVisible(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseSetVisible(QAbstractSlider* self, bool visible);
QTLIBC_API QSize* QAbstractSlider_SizeHint(const QAbstractSlider* self);
QTLIBC_API void QAbstractSlider_OnSizeHint(const QAbstractSlider* self, intptr_t slot);
QTLIBC_API QSize* QAbstractSlider_QBaseSizeHint(const QAbstractSlider* self);
QTLIBC_API QSize* QAbstractSlider_MinimumSizeHint(const QAbstractSlider* self);
QTLIBC_API void QAbstractSlider_OnMinimumSizeHint(const QAbstractSlider* self, intptr_t slot);
QTLIBC_API QSize* QAbstractSlider_QBaseMinimumSizeHint(const QAbstractSlider* self);
QTLIBC_API int QAbstractSlider_HeightForWidth(const QAbstractSlider* self, int param1);
QTLIBC_API void QAbstractSlider_OnHeightForWidth(const QAbstractSlider* self, intptr_t slot);
QTLIBC_API int QAbstractSlider_QBaseHeightForWidth(const QAbstractSlider* self, int param1);
QTLIBC_API bool QAbstractSlider_HasHeightForWidth(const QAbstractSlider* self);
QTLIBC_API void QAbstractSlider_OnHasHeightForWidth(const QAbstractSlider* self, intptr_t slot);
QTLIBC_API bool QAbstractSlider_QBaseHasHeightForWidth(const QAbstractSlider* self);
QTLIBC_API QPaintEngine* QAbstractSlider_PaintEngine(const QAbstractSlider* self);
QTLIBC_API void QAbstractSlider_OnPaintEngine(const QAbstractSlider* self, intptr_t slot);
QTLIBC_API QPaintEngine* QAbstractSlider_QBasePaintEngine(const QAbstractSlider* self);
QTLIBC_API void QAbstractSlider_MousePressEvent(QAbstractSlider* self, QMouseEvent* event);
QTLIBC_API void QAbstractSlider_OnMousePressEvent(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseMousePressEvent(QAbstractSlider* self, QMouseEvent* event);
QTLIBC_API void QAbstractSlider_MouseReleaseEvent(QAbstractSlider* self, QMouseEvent* event);
QTLIBC_API void QAbstractSlider_OnMouseReleaseEvent(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseMouseReleaseEvent(QAbstractSlider* self, QMouseEvent* event);
QTLIBC_API void QAbstractSlider_MouseDoubleClickEvent(QAbstractSlider* self, QMouseEvent* event);
QTLIBC_API void QAbstractSlider_OnMouseDoubleClickEvent(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseMouseDoubleClickEvent(QAbstractSlider* self, QMouseEvent* event);
QTLIBC_API void QAbstractSlider_MouseMoveEvent(QAbstractSlider* self, QMouseEvent* event);
QTLIBC_API void QAbstractSlider_OnMouseMoveEvent(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseMouseMoveEvent(QAbstractSlider* self, QMouseEvent* event);
QTLIBC_API void QAbstractSlider_KeyReleaseEvent(QAbstractSlider* self, QKeyEvent* event);
QTLIBC_API void QAbstractSlider_OnKeyReleaseEvent(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseKeyReleaseEvent(QAbstractSlider* self, QKeyEvent* event);
QTLIBC_API void QAbstractSlider_FocusInEvent(QAbstractSlider* self, QFocusEvent* event);
QTLIBC_API void QAbstractSlider_OnFocusInEvent(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseFocusInEvent(QAbstractSlider* self, QFocusEvent* event);
QTLIBC_API void QAbstractSlider_FocusOutEvent(QAbstractSlider* self, QFocusEvent* event);
QTLIBC_API void QAbstractSlider_OnFocusOutEvent(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseFocusOutEvent(QAbstractSlider* self, QFocusEvent* event);
QTLIBC_API void QAbstractSlider_EnterEvent(QAbstractSlider* self, QEnterEvent* event);
QTLIBC_API void QAbstractSlider_OnEnterEvent(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseEnterEvent(QAbstractSlider* self, QEnterEvent* event);
QTLIBC_API void QAbstractSlider_LeaveEvent(QAbstractSlider* self, QEvent* event);
QTLIBC_API void QAbstractSlider_OnLeaveEvent(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseLeaveEvent(QAbstractSlider* self, QEvent* event);
QTLIBC_API void QAbstractSlider_PaintEvent(QAbstractSlider* self, QPaintEvent* event);
QTLIBC_API void QAbstractSlider_OnPaintEvent(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBasePaintEvent(QAbstractSlider* self, QPaintEvent* event);
QTLIBC_API void QAbstractSlider_MoveEvent(QAbstractSlider* self, QMoveEvent* event);
QTLIBC_API void QAbstractSlider_OnMoveEvent(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseMoveEvent(QAbstractSlider* self, QMoveEvent* event);
QTLIBC_API void QAbstractSlider_ResizeEvent(QAbstractSlider* self, QResizeEvent* event);
QTLIBC_API void QAbstractSlider_OnResizeEvent(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseResizeEvent(QAbstractSlider* self, QResizeEvent* event);
QTLIBC_API void QAbstractSlider_CloseEvent(QAbstractSlider* self, QCloseEvent* event);
QTLIBC_API void QAbstractSlider_OnCloseEvent(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseCloseEvent(QAbstractSlider* self, QCloseEvent* event);
QTLIBC_API void QAbstractSlider_ContextMenuEvent(QAbstractSlider* self, QContextMenuEvent* event);
QTLIBC_API void QAbstractSlider_OnContextMenuEvent(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseContextMenuEvent(QAbstractSlider* self, QContextMenuEvent* event);
QTLIBC_API void QAbstractSlider_TabletEvent(QAbstractSlider* self, QTabletEvent* event);
QTLIBC_API void QAbstractSlider_OnTabletEvent(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseTabletEvent(QAbstractSlider* self, QTabletEvent* event);
QTLIBC_API void QAbstractSlider_ActionEvent(QAbstractSlider* self, QActionEvent* event);
QTLIBC_API void QAbstractSlider_OnActionEvent(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseActionEvent(QAbstractSlider* self, QActionEvent* event);
QTLIBC_API void QAbstractSlider_DragEnterEvent(QAbstractSlider* self, QDragEnterEvent* event);
QTLIBC_API void QAbstractSlider_OnDragEnterEvent(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseDragEnterEvent(QAbstractSlider* self, QDragEnterEvent* event);
QTLIBC_API void QAbstractSlider_DragMoveEvent(QAbstractSlider* self, QDragMoveEvent* event);
QTLIBC_API void QAbstractSlider_OnDragMoveEvent(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseDragMoveEvent(QAbstractSlider* self, QDragMoveEvent* event);
QTLIBC_API void QAbstractSlider_DragLeaveEvent(QAbstractSlider* self, QDragLeaveEvent* event);
QTLIBC_API void QAbstractSlider_OnDragLeaveEvent(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseDragLeaveEvent(QAbstractSlider* self, QDragLeaveEvent* event);
QTLIBC_API void QAbstractSlider_DropEvent(QAbstractSlider* self, QDropEvent* event);
QTLIBC_API void QAbstractSlider_OnDropEvent(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseDropEvent(QAbstractSlider* self, QDropEvent* event);
QTLIBC_API void QAbstractSlider_ShowEvent(QAbstractSlider* self, QShowEvent* event);
QTLIBC_API void QAbstractSlider_OnShowEvent(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseShowEvent(QAbstractSlider* self, QShowEvent* event);
QTLIBC_API void QAbstractSlider_HideEvent(QAbstractSlider* self, QHideEvent* event);
QTLIBC_API void QAbstractSlider_OnHideEvent(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseHideEvent(QAbstractSlider* self, QHideEvent* event);
QTLIBC_API bool QAbstractSlider_NativeEvent(QAbstractSlider* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QAbstractSlider_OnNativeEvent(QAbstractSlider* self, intptr_t slot);
QTLIBC_API bool QAbstractSlider_QBaseNativeEvent(QAbstractSlider* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QAbstractSlider_InputMethodEvent(QAbstractSlider* self, QInputMethodEvent* param1);
QTLIBC_API void QAbstractSlider_OnInputMethodEvent(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseInputMethodEvent(QAbstractSlider* self, QInputMethodEvent* param1);
QTLIBC_API QVariant* QAbstractSlider_InputMethodQuery(const QAbstractSlider* self, int param1);
QTLIBC_API void QAbstractSlider_OnInputMethodQuery(const QAbstractSlider* self, intptr_t slot);
QTLIBC_API QVariant* QAbstractSlider_QBaseInputMethodQuery(const QAbstractSlider* self, int param1);
QTLIBC_API bool QAbstractSlider_FocusNextPrevChild(QAbstractSlider* self, bool next);
QTLIBC_API void QAbstractSlider_OnFocusNextPrevChild(QAbstractSlider* self, intptr_t slot);
QTLIBC_API bool QAbstractSlider_QBaseFocusNextPrevChild(QAbstractSlider* self, bool next);
QTLIBC_API bool QAbstractSlider_EventFilter(QAbstractSlider* self, QObject* watched, QEvent* event);
QTLIBC_API void QAbstractSlider_OnEventFilter(QAbstractSlider* self, intptr_t slot);
QTLIBC_API bool QAbstractSlider_QBaseEventFilter(QAbstractSlider* self, QObject* watched, QEvent* event);
QTLIBC_API void QAbstractSlider_ChildEvent(QAbstractSlider* self, QChildEvent* event);
QTLIBC_API void QAbstractSlider_OnChildEvent(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseChildEvent(QAbstractSlider* self, QChildEvent* event);
QTLIBC_API void QAbstractSlider_CustomEvent(QAbstractSlider* self, QEvent* event);
QTLIBC_API void QAbstractSlider_OnCustomEvent(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseCustomEvent(QAbstractSlider* self, QEvent* event);
QTLIBC_API void QAbstractSlider_ConnectNotify(QAbstractSlider* self, QMetaMethod* signal);
QTLIBC_API void QAbstractSlider_OnConnectNotify(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseConnectNotify(QAbstractSlider* self, QMetaMethod* signal);
QTLIBC_API void QAbstractSlider_DisconnectNotify(QAbstractSlider* self, QMetaMethod* signal);
QTLIBC_API void QAbstractSlider_OnDisconnectNotify(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseDisconnectNotify(QAbstractSlider* self, QMetaMethod* signal);
QTLIBC_API int QAbstractSlider_Metric(const QAbstractSlider* self, int param1);
QTLIBC_API void QAbstractSlider_OnMetric(const QAbstractSlider* self, intptr_t slot);
QTLIBC_API int QAbstractSlider_QBaseMetric(const QAbstractSlider* self, int param1);
QTLIBC_API void QAbstractSlider_InitPainter(const QAbstractSlider* self, QPainter* painter);
QTLIBC_API void QAbstractSlider_OnInitPainter(const QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseInitPainter(const QAbstractSlider* self, QPainter* painter);
QTLIBC_API QPaintDevice* QAbstractSlider_Redirected(const QAbstractSlider* self, QPoint* offset);
QTLIBC_API void QAbstractSlider_OnRedirected(const QAbstractSlider* self, intptr_t slot);
QTLIBC_API QPaintDevice* QAbstractSlider_QBaseRedirected(const QAbstractSlider* self, QPoint* offset);
QTLIBC_API QPainter* QAbstractSlider_SharedPainter(const QAbstractSlider* self);
QTLIBC_API void QAbstractSlider_OnSharedPainter(const QAbstractSlider* self, intptr_t slot);
QTLIBC_API QPainter* QAbstractSlider_QBaseSharedPainter(const QAbstractSlider* self);
QTLIBC_API void QAbstractSlider_SetRepeatAction(QAbstractSlider* self, int action);
QTLIBC_API void QAbstractSlider_OnSetRepeatAction(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseSetRepeatAction(QAbstractSlider* self, int action);
QTLIBC_API int QAbstractSlider_RepeatAction(const QAbstractSlider* self);
QTLIBC_API void QAbstractSlider_OnRepeatAction(const QAbstractSlider* self, intptr_t slot);
QTLIBC_API int QAbstractSlider_QBaseRepeatAction(const QAbstractSlider* self);
QTLIBC_API void QAbstractSlider_SetRepeatAction2(QAbstractSlider* self, int action, int thresholdTime);
QTLIBC_API void QAbstractSlider_OnSetRepeatAction2(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseSetRepeatAction2(QAbstractSlider* self, int action, int thresholdTime);
QTLIBC_API void QAbstractSlider_SetRepeatAction3(QAbstractSlider* self, int action, int thresholdTime, int repeatTime);
QTLIBC_API void QAbstractSlider_OnSetRepeatAction3(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseSetRepeatAction3(QAbstractSlider* self, int action, int thresholdTime, int repeatTime);
QTLIBC_API void QAbstractSlider_UpdateMicroFocus(QAbstractSlider* self);
QTLIBC_API void QAbstractSlider_OnUpdateMicroFocus(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseUpdateMicroFocus(QAbstractSlider* self);
QTLIBC_API void QAbstractSlider_Create(QAbstractSlider* self);
QTLIBC_API void QAbstractSlider_OnCreate(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseCreate(QAbstractSlider* self);
QTLIBC_API void QAbstractSlider_Destroy(QAbstractSlider* self);
QTLIBC_API void QAbstractSlider_OnDestroy(QAbstractSlider* self, intptr_t slot);
QTLIBC_API void QAbstractSlider_QBaseDestroy(QAbstractSlider* self);
QTLIBC_API bool QAbstractSlider_FocusNextChild(QAbstractSlider* self);
QTLIBC_API void QAbstractSlider_OnFocusNextChild(QAbstractSlider* self, intptr_t slot);
QTLIBC_API bool QAbstractSlider_QBaseFocusNextChild(QAbstractSlider* self);
QTLIBC_API bool QAbstractSlider_FocusPreviousChild(QAbstractSlider* self);
QTLIBC_API void QAbstractSlider_OnFocusPreviousChild(QAbstractSlider* self, intptr_t slot);
QTLIBC_API bool QAbstractSlider_QBaseFocusPreviousChild(QAbstractSlider* self);
QTLIBC_API QObject* QAbstractSlider_Sender(const QAbstractSlider* self);
QTLIBC_API void QAbstractSlider_OnSender(const QAbstractSlider* self, intptr_t slot);
QTLIBC_API QObject* QAbstractSlider_QBaseSender(const QAbstractSlider* self);
QTLIBC_API int QAbstractSlider_SenderSignalIndex(const QAbstractSlider* self);
QTLIBC_API void QAbstractSlider_OnSenderSignalIndex(const QAbstractSlider* self, intptr_t slot);
QTLIBC_API int QAbstractSlider_QBaseSenderSignalIndex(const QAbstractSlider* self);
QTLIBC_API int QAbstractSlider_Receivers(const QAbstractSlider* self, const char* signal);
QTLIBC_API void QAbstractSlider_OnReceivers(const QAbstractSlider* self, intptr_t slot);
QTLIBC_API int QAbstractSlider_QBaseReceivers(const QAbstractSlider* self, const char* signal);
QTLIBC_API bool QAbstractSlider_IsSignalConnected(const QAbstractSlider* self, QMetaMethod* signal);
QTLIBC_API void QAbstractSlider_OnIsSignalConnected(const QAbstractSlider* self, intptr_t slot);
QTLIBC_API bool QAbstractSlider_QBaseIsSignalConnected(const QAbstractSlider* self, QMetaMethod* signal);
QTLIBC_API void QAbstractSlider_Delete(QAbstractSlider* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
