#pragma once
#ifndef SRCC_LIBQLCDNUMBER_H
#define SRCC_LIBQLCDNUMBER_H

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
typedef struct QFrame QFrame;
typedef struct QGraphicsEffect QGraphicsEffect;
typedef struct QGraphicsProxyWidget QGraphicsProxyWidget;
typedef struct QHideEvent QHideEvent;
typedef struct QIcon QIcon;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QKeyEvent QKeyEvent;
typedef struct QKeySequence QKeySequence;
typedef struct QLCDNumber QLCDNumber;
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
typedef QLCDNumber::Mode Mode;                 // C++ enum
typedef QLCDNumber::SegmentStyle SegmentStyle; // C++ enum
#else
typedef int Mode;         // C ABI enum
typedef int SegmentStyle; // C ABI enum
#endif

QTLIBC_API QLCDNumber* QLCDNumber_new(QWidget* parent);
QTLIBC_API QLCDNumber* QLCDNumber_new2();
QTLIBC_API QLCDNumber* QLCDNumber_new3(unsigned int numDigits);
QTLIBC_API QLCDNumber* QLCDNumber_new4(unsigned int numDigits, QWidget* parent);
QTLIBC_API QMetaObject* QLCDNumber_MetaObject(const QLCDNumber* self);
QTLIBC_API void* QLCDNumber_Metacast(QLCDNumber* self, const char* param1);
QTLIBC_API int QLCDNumber_Metacall(QLCDNumber* self, int param1, int param2, void** param3);
QTLIBC_API void QLCDNumber_OnMetacall(QLCDNumber* self, intptr_t slot);
QTLIBC_API int QLCDNumber_QBaseMetacall(QLCDNumber* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QLCDNumber_Tr(const char* s);
QTLIBC_API bool QLCDNumber_SmallDecimalPoint(const QLCDNumber* self);
QTLIBC_API int QLCDNumber_DigitCount(const QLCDNumber* self);
QTLIBC_API void QLCDNumber_SetDigitCount(QLCDNumber* self, int nDigits);
QTLIBC_API bool QLCDNumber_CheckOverflow(const QLCDNumber* self, double num);
QTLIBC_API bool QLCDNumber_CheckOverflowWithNum(const QLCDNumber* self, int num);
QTLIBC_API int QLCDNumber_Mode(const QLCDNumber* self);
QTLIBC_API void QLCDNumber_SetMode(QLCDNumber* self, int mode);
QTLIBC_API int QLCDNumber_SegmentStyle(const QLCDNumber* self);
QTLIBC_API void QLCDNumber_SetSegmentStyle(QLCDNumber* self, int segmentStyle);
QTLIBC_API double QLCDNumber_Value(const QLCDNumber* self);
QTLIBC_API int QLCDNumber_IntValue(const QLCDNumber* self);
QTLIBC_API QSize* QLCDNumber_SizeHint(const QLCDNumber* self);
QTLIBC_API void QLCDNumber_OnSizeHint(const QLCDNumber* self, intptr_t slot);
QTLIBC_API QSize* QLCDNumber_QBaseSizeHint(const QLCDNumber* self);
QTLIBC_API void QLCDNumber_Display(QLCDNumber* self, libqt_string str);
QTLIBC_API void QLCDNumber_DisplayWithNum(QLCDNumber* self, int num);
QTLIBC_API void QLCDNumber_Display2(QLCDNumber* self, double num);
QTLIBC_API void QLCDNumber_SetHexMode(QLCDNumber* self);
QTLIBC_API void QLCDNumber_SetDecMode(QLCDNumber* self);
QTLIBC_API void QLCDNumber_SetOctMode(QLCDNumber* self);
QTLIBC_API void QLCDNumber_SetBinMode(QLCDNumber* self);
QTLIBC_API void QLCDNumber_SetSmallDecimalPoint(QLCDNumber* self, bool smallDecimalPoint);
QTLIBC_API void QLCDNumber_Overflow(QLCDNumber* self);
void QLCDNumber_Connect_Overflow(QLCDNumber* self, intptr_t slot);
QTLIBC_API bool QLCDNumber_Event(QLCDNumber* self, QEvent* e);
QTLIBC_API void QLCDNumber_OnEvent(QLCDNumber* self, intptr_t slot);
QTLIBC_API bool QLCDNumber_QBaseEvent(QLCDNumber* self, QEvent* e);
QTLIBC_API void QLCDNumber_PaintEvent(QLCDNumber* self, QPaintEvent* param1);
QTLIBC_API void QLCDNumber_OnPaintEvent(QLCDNumber* self, intptr_t slot);
QTLIBC_API void QLCDNumber_QBasePaintEvent(QLCDNumber* self, QPaintEvent* param1);
QTLIBC_API libqt_string QLCDNumber_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QLCDNumber_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QLCDNumber_ChangeEvent(QLCDNumber* self, QEvent* param1);
QTLIBC_API void QLCDNumber_OnChangeEvent(QLCDNumber* self, intptr_t slot);
QTLIBC_API void QLCDNumber_QBaseChangeEvent(QLCDNumber* self, QEvent* param1);
QTLIBC_API int QLCDNumber_DevType(const QLCDNumber* self);
QTLIBC_API void QLCDNumber_OnDevType(const QLCDNumber* self, intptr_t slot);
QTLIBC_API int QLCDNumber_QBaseDevType(const QLCDNumber* self);
QTLIBC_API void QLCDNumber_SetVisible(QLCDNumber* self, bool visible);
QTLIBC_API void QLCDNumber_OnSetVisible(QLCDNumber* self, intptr_t slot);
QTLIBC_API void QLCDNumber_QBaseSetVisible(QLCDNumber* self, bool visible);
QTLIBC_API QSize* QLCDNumber_MinimumSizeHint(const QLCDNumber* self);
QTLIBC_API void QLCDNumber_OnMinimumSizeHint(const QLCDNumber* self, intptr_t slot);
QTLIBC_API QSize* QLCDNumber_QBaseMinimumSizeHint(const QLCDNumber* self);
QTLIBC_API int QLCDNumber_HeightForWidth(const QLCDNumber* self, int param1);
QTLIBC_API void QLCDNumber_OnHeightForWidth(const QLCDNumber* self, intptr_t slot);
QTLIBC_API int QLCDNumber_QBaseHeightForWidth(const QLCDNumber* self, int param1);
QTLIBC_API bool QLCDNumber_HasHeightForWidth(const QLCDNumber* self);
QTLIBC_API void QLCDNumber_OnHasHeightForWidth(const QLCDNumber* self, intptr_t slot);
QTLIBC_API bool QLCDNumber_QBaseHasHeightForWidth(const QLCDNumber* self);
QTLIBC_API QPaintEngine* QLCDNumber_PaintEngine(const QLCDNumber* self);
QTLIBC_API void QLCDNumber_OnPaintEngine(const QLCDNumber* self, intptr_t slot);
QTLIBC_API QPaintEngine* QLCDNumber_QBasePaintEngine(const QLCDNumber* self);
QTLIBC_API void QLCDNumber_MousePressEvent(QLCDNumber* self, QMouseEvent* event);
QTLIBC_API void QLCDNumber_OnMousePressEvent(QLCDNumber* self, intptr_t slot);
QTLIBC_API void QLCDNumber_QBaseMousePressEvent(QLCDNumber* self, QMouseEvent* event);
QTLIBC_API void QLCDNumber_MouseReleaseEvent(QLCDNumber* self, QMouseEvent* event);
QTLIBC_API void QLCDNumber_OnMouseReleaseEvent(QLCDNumber* self, intptr_t slot);
QTLIBC_API void QLCDNumber_QBaseMouseReleaseEvent(QLCDNumber* self, QMouseEvent* event);
QTLIBC_API void QLCDNumber_MouseDoubleClickEvent(QLCDNumber* self, QMouseEvent* event);
QTLIBC_API void QLCDNumber_OnMouseDoubleClickEvent(QLCDNumber* self, intptr_t slot);
QTLIBC_API void QLCDNumber_QBaseMouseDoubleClickEvent(QLCDNumber* self, QMouseEvent* event);
QTLIBC_API void QLCDNumber_MouseMoveEvent(QLCDNumber* self, QMouseEvent* event);
QTLIBC_API void QLCDNumber_OnMouseMoveEvent(QLCDNumber* self, intptr_t slot);
QTLIBC_API void QLCDNumber_QBaseMouseMoveEvent(QLCDNumber* self, QMouseEvent* event);
QTLIBC_API void QLCDNumber_WheelEvent(QLCDNumber* self, QWheelEvent* event);
QTLIBC_API void QLCDNumber_OnWheelEvent(QLCDNumber* self, intptr_t slot);
QTLIBC_API void QLCDNumber_QBaseWheelEvent(QLCDNumber* self, QWheelEvent* event);
QTLIBC_API void QLCDNumber_KeyPressEvent(QLCDNumber* self, QKeyEvent* event);
QTLIBC_API void QLCDNumber_OnKeyPressEvent(QLCDNumber* self, intptr_t slot);
QTLIBC_API void QLCDNumber_QBaseKeyPressEvent(QLCDNumber* self, QKeyEvent* event);
QTLIBC_API void QLCDNumber_KeyReleaseEvent(QLCDNumber* self, QKeyEvent* event);
QTLIBC_API void QLCDNumber_OnKeyReleaseEvent(QLCDNumber* self, intptr_t slot);
QTLIBC_API void QLCDNumber_QBaseKeyReleaseEvent(QLCDNumber* self, QKeyEvent* event);
QTLIBC_API void QLCDNumber_FocusInEvent(QLCDNumber* self, QFocusEvent* event);
QTLIBC_API void QLCDNumber_OnFocusInEvent(QLCDNumber* self, intptr_t slot);
QTLIBC_API void QLCDNumber_QBaseFocusInEvent(QLCDNumber* self, QFocusEvent* event);
QTLIBC_API void QLCDNumber_FocusOutEvent(QLCDNumber* self, QFocusEvent* event);
QTLIBC_API void QLCDNumber_OnFocusOutEvent(QLCDNumber* self, intptr_t slot);
QTLIBC_API void QLCDNumber_QBaseFocusOutEvent(QLCDNumber* self, QFocusEvent* event);
QTLIBC_API void QLCDNumber_EnterEvent(QLCDNumber* self, QEnterEvent* event);
QTLIBC_API void QLCDNumber_OnEnterEvent(QLCDNumber* self, intptr_t slot);
QTLIBC_API void QLCDNumber_QBaseEnterEvent(QLCDNumber* self, QEnterEvent* event);
QTLIBC_API void QLCDNumber_LeaveEvent(QLCDNumber* self, QEvent* event);
QTLIBC_API void QLCDNumber_OnLeaveEvent(QLCDNumber* self, intptr_t slot);
QTLIBC_API void QLCDNumber_QBaseLeaveEvent(QLCDNumber* self, QEvent* event);
QTLIBC_API void QLCDNumber_MoveEvent(QLCDNumber* self, QMoveEvent* event);
QTLIBC_API void QLCDNumber_OnMoveEvent(QLCDNumber* self, intptr_t slot);
QTLIBC_API void QLCDNumber_QBaseMoveEvent(QLCDNumber* self, QMoveEvent* event);
QTLIBC_API void QLCDNumber_ResizeEvent(QLCDNumber* self, QResizeEvent* event);
QTLIBC_API void QLCDNumber_OnResizeEvent(QLCDNumber* self, intptr_t slot);
QTLIBC_API void QLCDNumber_QBaseResizeEvent(QLCDNumber* self, QResizeEvent* event);
QTLIBC_API void QLCDNumber_CloseEvent(QLCDNumber* self, QCloseEvent* event);
QTLIBC_API void QLCDNumber_OnCloseEvent(QLCDNumber* self, intptr_t slot);
QTLIBC_API void QLCDNumber_QBaseCloseEvent(QLCDNumber* self, QCloseEvent* event);
QTLIBC_API void QLCDNumber_ContextMenuEvent(QLCDNumber* self, QContextMenuEvent* event);
QTLIBC_API void QLCDNumber_OnContextMenuEvent(QLCDNumber* self, intptr_t slot);
QTLIBC_API void QLCDNumber_QBaseContextMenuEvent(QLCDNumber* self, QContextMenuEvent* event);
QTLIBC_API void QLCDNumber_TabletEvent(QLCDNumber* self, QTabletEvent* event);
QTLIBC_API void QLCDNumber_OnTabletEvent(QLCDNumber* self, intptr_t slot);
QTLIBC_API void QLCDNumber_QBaseTabletEvent(QLCDNumber* self, QTabletEvent* event);
QTLIBC_API void QLCDNumber_ActionEvent(QLCDNumber* self, QActionEvent* event);
QTLIBC_API void QLCDNumber_OnActionEvent(QLCDNumber* self, intptr_t slot);
QTLIBC_API void QLCDNumber_QBaseActionEvent(QLCDNumber* self, QActionEvent* event);
QTLIBC_API void QLCDNumber_DragEnterEvent(QLCDNumber* self, QDragEnterEvent* event);
QTLIBC_API void QLCDNumber_OnDragEnterEvent(QLCDNumber* self, intptr_t slot);
QTLIBC_API void QLCDNumber_QBaseDragEnterEvent(QLCDNumber* self, QDragEnterEvent* event);
QTLIBC_API void QLCDNumber_DragMoveEvent(QLCDNumber* self, QDragMoveEvent* event);
QTLIBC_API void QLCDNumber_OnDragMoveEvent(QLCDNumber* self, intptr_t slot);
QTLIBC_API void QLCDNumber_QBaseDragMoveEvent(QLCDNumber* self, QDragMoveEvent* event);
QTLIBC_API void QLCDNumber_DragLeaveEvent(QLCDNumber* self, QDragLeaveEvent* event);
QTLIBC_API void QLCDNumber_OnDragLeaveEvent(QLCDNumber* self, intptr_t slot);
QTLIBC_API void QLCDNumber_QBaseDragLeaveEvent(QLCDNumber* self, QDragLeaveEvent* event);
QTLIBC_API void QLCDNumber_DropEvent(QLCDNumber* self, QDropEvent* event);
QTLIBC_API void QLCDNumber_OnDropEvent(QLCDNumber* self, intptr_t slot);
QTLIBC_API void QLCDNumber_QBaseDropEvent(QLCDNumber* self, QDropEvent* event);
QTLIBC_API void QLCDNumber_ShowEvent(QLCDNumber* self, QShowEvent* event);
QTLIBC_API void QLCDNumber_OnShowEvent(QLCDNumber* self, intptr_t slot);
QTLIBC_API void QLCDNumber_QBaseShowEvent(QLCDNumber* self, QShowEvent* event);
QTLIBC_API void QLCDNumber_HideEvent(QLCDNumber* self, QHideEvent* event);
QTLIBC_API void QLCDNumber_OnHideEvent(QLCDNumber* self, intptr_t slot);
QTLIBC_API void QLCDNumber_QBaseHideEvent(QLCDNumber* self, QHideEvent* event);
QTLIBC_API bool QLCDNumber_NativeEvent(QLCDNumber* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QLCDNumber_OnNativeEvent(QLCDNumber* self, intptr_t slot);
QTLIBC_API bool QLCDNumber_QBaseNativeEvent(QLCDNumber* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QLCDNumber_InputMethodEvent(QLCDNumber* self, QInputMethodEvent* param1);
QTLIBC_API void QLCDNumber_OnInputMethodEvent(QLCDNumber* self, intptr_t slot);
QTLIBC_API void QLCDNumber_QBaseInputMethodEvent(QLCDNumber* self, QInputMethodEvent* param1);
QTLIBC_API QVariant* QLCDNumber_InputMethodQuery(const QLCDNumber* self, int param1);
QTLIBC_API void QLCDNumber_OnInputMethodQuery(const QLCDNumber* self, intptr_t slot);
QTLIBC_API QVariant* QLCDNumber_QBaseInputMethodQuery(const QLCDNumber* self, int param1);
QTLIBC_API bool QLCDNumber_FocusNextPrevChild(QLCDNumber* self, bool next);
QTLIBC_API void QLCDNumber_OnFocusNextPrevChild(QLCDNumber* self, intptr_t slot);
QTLIBC_API bool QLCDNumber_QBaseFocusNextPrevChild(QLCDNumber* self, bool next);
QTLIBC_API bool QLCDNumber_EventFilter(QLCDNumber* self, QObject* watched, QEvent* event);
QTLIBC_API void QLCDNumber_OnEventFilter(QLCDNumber* self, intptr_t slot);
QTLIBC_API bool QLCDNumber_QBaseEventFilter(QLCDNumber* self, QObject* watched, QEvent* event);
QTLIBC_API void QLCDNumber_TimerEvent(QLCDNumber* self, QTimerEvent* event);
QTLIBC_API void QLCDNumber_OnTimerEvent(QLCDNumber* self, intptr_t slot);
QTLIBC_API void QLCDNumber_QBaseTimerEvent(QLCDNumber* self, QTimerEvent* event);
QTLIBC_API void QLCDNumber_ChildEvent(QLCDNumber* self, QChildEvent* event);
QTLIBC_API void QLCDNumber_OnChildEvent(QLCDNumber* self, intptr_t slot);
QTLIBC_API void QLCDNumber_QBaseChildEvent(QLCDNumber* self, QChildEvent* event);
QTLIBC_API void QLCDNumber_CustomEvent(QLCDNumber* self, QEvent* event);
QTLIBC_API void QLCDNumber_OnCustomEvent(QLCDNumber* self, intptr_t slot);
QTLIBC_API void QLCDNumber_QBaseCustomEvent(QLCDNumber* self, QEvent* event);
QTLIBC_API void QLCDNumber_ConnectNotify(QLCDNumber* self, QMetaMethod* signal);
QTLIBC_API void QLCDNumber_OnConnectNotify(QLCDNumber* self, intptr_t slot);
QTLIBC_API void QLCDNumber_QBaseConnectNotify(QLCDNumber* self, QMetaMethod* signal);
QTLIBC_API void QLCDNumber_DisconnectNotify(QLCDNumber* self, QMetaMethod* signal);
QTLIBC_API void QLCDNumber_OnDisconnectNotify(QLCDNumber* self, intptr_t slot);
QTLIBC_API void QLCDNumber_QBaseDisconnectNotify(QLCDNumber* self, QMetaMethod* signal);
QTLIBC_API void QLCDNumber_InitStyleOption(const QLCDNumber* self, QStyleOptionFrame* option);
QTLIBC_API void QLCDNumber_OnInitStyleOption(const QLCDNumber* self, intptr_t slot);
QTLIBC_API void QLCDNumber_QBaseInitStyleOption(const QLCDNumber* self, QStyleOptionFrame* option);
QTLIBC_API int QLCDNumber_Metric(const QLCDNumber* self, int param1);
QTLIBC_API void QLCDNumber_OnMetric(const QLCDNumber* self, intptr_t slot);
QTLIBC_API int QLCDNumber_QBaseMetric(const QLCDNumber* self, int param1);
QTLIBC_API void QLCDNumber_InitPainter(const QLCDNumber* self, QPainter* painter);
QTLIBC_API void QLCDNumber_OnInitPainter(const QLCDNumber* self, intptr_t slot);
QTLIBC_API void QLCDNumber_QBaseInitPainter(const QLCDNumber* self, QPainter* painter);
QTLIBC_API QPaintDevice* QLCDNumber_Redirected(const QLCDNumber* self, QPoint* offset);
QTLIBC_API void QLCDNumber_OnRedirected(const QLCDNumber* self, intptr_t slot);
QTLIBC_API QPaintDevice* QLCDNumber_QBaseRedirected(const QLCDNumber* self, QPoint* offset);
QTLIBC_API QPainter* QLCDNumber_SharedPainter(const QLCDNumber* self);
QTLIBC_API void QLCDNumber_OnSharedPainter(const QLCDNumber* self, intptr_t slot);
QTLIBC_API QPainter* QLCDNumber_QBaseSharedPainter(const QLCDNumber* self);
QTLIBC_API void QLCDNumber_DrawFrame(QLCDNumber* self, QPainter* param1);
QTLIBC_API void QLCDNumber_OnDrawFrame(QLCDNumber* self, intptr_t slot);
QTLIBC_API void QLCDNumber_QBaseDrawFrame(QLCDNumber* self, QPainter* param1);
QTLIBC_API void QLCDNumber_UpdateMicroFocus(QLCDNumber* self);
QTLIBC_API void QLCDNumber_OnUpdateMicroFocus(QLCDNumber* self, intptr_t slot);
QTLIBC_API void QLCDNumber_QBaseUpdateMicroFocus(QLCDNumber* self);
QTLIBC_API void QLCDNumber_Create(QLCDNumber* self);
QTLIBC_API void QLCDNumber_OnCreate(QLCDNumber* self, intptr_t slot);
QTLIBC_API void QLCDNumber_QBaseCreate(QLCDNumber* self);
QTLIBC_API void QLCDNumber_Destroy(QLCDNumber* self);
QTLIBC_API void QLCDNumber_OnDestroy(QLCDNumber* self, intptr_t slot);
QTLIBC_API void QLCDNumber_QBaseDestroy(QLCDNumber* self);
QTLIBC_API bool QLCDNumber_FocusNextChild(QLCDNumber* self);
QTLIBC_API void QLCDNumber_OnFocusNextChild(QLCDNumber* self, intptr_t slot);
QTLIBC_API bool QLCDNumber_QBaseFocusNextChild(QLCDNumber* self);
QTLIBC_API bool QLCDNumber_FocusPreviousChild(QLCDNumber* self);
QTLIBC_API void QLCDNumber_OnFocusPreviousChild(QLCDNumber* self, intptr_t slot);
QTLIBC_API bool QLCDNumber_QBaseFocusPreviousChild(QLCDNumber* self);
QTLIBC_API QObject* QLCDNumber_Sender(const QLCDNumber* self);
QTLIBC_API void QLCDNumber_OnSender(const QLCDNumber* self, intptr_t slot);
QTLIBC_API QObject* QLCDNumber_QBaseSender(const QLCDNumber* self);
QTLIBC_API int QLCDNumber_SenderSignalIndex(const QLCDNumber* self);
QTLIBC_API void QLCDNumber_OnSenderSignalIndex(const QLCDNumber* self, intptr_t slot);
QTLIBC_API int QLCDNumber_QBaseSenderSignalIndex(const QLCDNumber* self);
QTLIBC_API int QLCDNumber_Receivers(const QLCDNumber* self, const char* signal);
QTLIBC_API void QLCDNumber_OnReceivers(const QLCDNumber* self, intptr_t slot);
QTLIBC_API int QLCDNumber_QBaseReceivers(const QLCDNumber* self, const char* signal);
QTLIBC_API bool QLCDNumber_IsSignalConnected(const QLCDNumber* self, QMetaMethod* signal);
QTLIBC_API void QLCDNumber_OnIsSignalConnected(const QLCDNumber* self, intptr_t slot);
QTLIBC_API bool QLCDNumber_QBaseIsSignalConnected(const QLCDNumber* self, QMetaMethod* signal);
QTLIBC_API void QLCDNumber_Delete(QLCDNumber* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
