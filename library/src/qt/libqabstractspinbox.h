#pragma once
#ifndef SRC_QTC_LIBQABSTRACTSPINBOX_H
#define SRC_QTC_LIBQABSTRACTSPINBOX_H

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
typedef struct QAbstractSpinBox QAbstractSpinBox;
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
typedef struct QLineEdit QLineEdit;
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
typedef struct QStyleOptionSpinBox QStyleOptionSpinBox;
typedef struct QTabletEvent QTabletEvent;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
typedef struct QWindow QWindow;
#endif

#ifdef __cplusplus
typedef QAbstractSpinBox::ButtonSymbols ButtonSymbols;     // C++ enum
typedef QAbstractSpinBox::CorrectionMode CorrectionMode;   // C++ enum
typedef QAbstractSpinBox::StepEnabled StepEnabled;         // C++ QFlags
typedef QAbstractSpinBox::StepEnabledFlag StepEnabledFlag; // C++ enum
typedef QAbstractSpinBox::StepType StepType;               // C++ enum
#else
typedef int ButtonSymbols;   // C ABI enum
typedef int CorrectionMode;  // C ABI enum
typedef int StepEnabled;     // C ABI QFlags
typedef int StepEnabledFlag; // C ABI enum
typedef int StepType;        // C ABI enum
#endif

QTLIBC_API QAbstractSpinBox* QAbstractSpinBox_new(QWidget* parent);
QTLIBC_API QAbstractSpinBox* QAbstractSpinBox_new2();
QTLIBC_API QMetaObject* QAbstractSpinBox_MetaObject(const QAbstractSpinBox* self);
QTLIBC_API void* QAbstractSpinBox_Metacast(QAbstractSpinBox* self, const char* param1);
QTLIBC_API int QAbstractSpinBox_Metacall(QAbstractSpinBox* self, int param1, int param2, void** param3);
QTLIBC_API void QAbstractSpinBox_OnMetacall(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API int QAbstractSpinBox_QBaseMetacall(QAbstractSpinBox* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QAbstractSpinBox_Tr(const char* s);
QTLIBC_API int QAbstractSpinBox_ButtonSymbols(const QAbstractSpinBox* self);
QTLIBC_API void QAbstractSpinBox_SetButtonSymbols(QAbstractSpinBox* self, int bs);
QTLIBC_API void QAbstractSpinBox_SetCorrectionMode(QAbstractSpinBox* self, int cm);
QTLIBC_API int QAbstractSpinBox_CorrectionMode(const QAbstractSpinBox* self);
QTLIBC_API bool QAbstractSpinBox_HasAcceptableInput(const QAbstractSpinBox* self);
QTLIBC_API libqt_string QAbstractSpinBox_Text(const QAbstractSpinBox* self);
QTLIBC_API libqt_string QAbstractSpinBox_SpecialValueText(const QAbstractSpinBox* self);
QTLIBC_API void QAbstractSpinBox_SetSpecialValueText(QAbstractSpinBox* self, libqt_string txt);
QTLIBC_API bool QAbstractSpinBox_Wrapping(const QAbstractSpinBox* self);
QTLIBC_API void QAbstractSpinBox_SetWrapping(QAbstractSpinBox* self, bool w);
QTLIBC_API void QAbstractSpinBox_SetReadOnly(QAbstractSpinBox* self, bool r);
QTLIBC_API bool QAbstractSpinBox_IsReadOnly(const QAbstractSpinBox* self);
QTLIBC_API void QAbstractSpinBox_SetKeyboardTracking(QAbstractSpinBox* self, bool kt);
QTLIBC_API bool QAbstractSpinBox_KeyboardTracking(const QAbstractSpinBox* self);
QTLIBC_API void QAbstractSpinBox_SetAlignment(QAbstractSpinBox* self, int flag);
QTLIBC_API int QAbstractSpinBox_Alignment(const QAbstractSpinBox* self);
QTLIBC_API void QAbstractSpinBox_SetFrame(QAbstractSpinBox* self, bool frame);
QTLIBC_API bool QAbstractSpinBox_HasFrame(const QAbstractSpinBox* self);
QTLIBC_API void QAbstractSpinBox_SetAccelerated(QAbstractSpinBox* self, bool on);
QTLIBC_API bool QAbstractSpinBox_IsAccelerated(const QAbstractSpinBox* self);
QTLIBC_API void QAbstractSpinBox_SetGroupSeparatorShown(QAbstractSpinBox* self, bool shown);
QTLIBC_API bool QAbstractSpinBox_IsGroupSeparatorShown(const QAbstractSpinBox* self);
QTLIBC_API QSize* QAbstractSpinBox_SizeHint(const QAbstractSpinBox* self);
QTLIBC_API void QAbstractSpinBox_OnSizeHint(const QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API QSize* QAbstractSpinBox_QBaseSizeHint(const QAbstractSpinBox* self);
QTLIBC_API QSize* QAbstractSpinBox_MinimumSizeHint(const QAbstractSpinBox* self);
QTLIBC_API void QAbstractSpinBox_OnMinimumSizeHint(const QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API QSize* QAbstractSpinBox_QBaseMinimumSizeHint(const QAbstractSpinBox* self);
QTLIBC_API void QAbstractSpinBox_InterpretText(QAbstractSpinBox* self);
QTLIBC_API bool QAbstractSpinBox_Event(QAbstractSpinBox* self, QEvent* event);
QTLIBC_API void QAbstractSpinBox_OnEvent(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API bool QAbstractSpinBox_QBaseEvent(QAbstractSpinBox* self, QEvent* event);
QTLIBC_API QVariant* QAbstractSpinBox_InputMethodQuery(const QAbstractSpinBox* self, int param1);
QTLIBC_API void QAbstractSpinBox_OnInputMethodQuery(const QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API QVariant* QAbstractSpinBox_QBaseInputMethodQuery(const QAbstractSpinBox* self, int param1);
QTLIBC_API int QAbstractSpinBox_Validate(const QAbstractSpinBox* self, libqt_string input, int* pos);
QTLIBC_API void QAbstractSpinBox_OnValidate(const QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API int QAbstractSpinBox_QBaseValidate(const QAbstractSpinBox* self, libqt_string input, int* pos);
QTLIBC_API void QAbstractSpinBox_Fixup(const QAbstractSpinBox* self, libqt_string input);
QTLIBC_API void QAbstractSpinBox_OnFixup(const QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseFixup(const QAbstractSpinBox* self, libqt_string input);
QTLIBC_API void QAbstractSpinBox_StepBy(QAbstractSpinBox* self, int steps);
QTLIBC_API void QAbstractSpinBox_OnStepBy(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseStepBy(QAbstractSpinBox* self, int steps);
QTLIBC_API void QAbstractSpinBox_StepUp(QAbstractSpinBox* self);
QTLIBC_API void QAbstractSpinBox_StepDown(QAbstractSpinBox* self);
QTLIBC_API void QAbstractSpinBox_SelectAll(QAbstractSpinBox* self);
QTLIBC_API void QAbstractSpinBox_Clear(QAbstractSpinBox* self);
QTLIBC_API void QAbstractSpinBox_OnClear(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseClear(QAbstractSpinBox* self);
QTLIBC_API void QAbstractSpinBox_ResizeEvent(QAbstractSpinBox* self, QResizeEvent* event);
QTLIBC_API void QAbstractSpinBox_OnResizeEvent(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseResizeEvent(QAbstractSpinBox* self, QResizeEvent* event);
QTLIBC_API void QAbstractSpinBox_KeyPressEvent(QAbstractSpinBox* self, QKeyEvent* event);
QTLIBC_API void QAbstractSpinBox_OnKeyPressEvent(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseKeyPressEvent(QAbstractSpinBox* self, QKeyEvent* event);
QTLIBC_API void QAbstractSpinBox_KeyReleaseEvent(QAbstractSpinBox* self, QKeyEvent* event);
QTLIBC_API void QAbstractSpinBox_OnKeyReleaseEvent(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseKeyReleaseEvent(QAbstractSpinBox* self, QKeyEvent* event);
QTLIBC_API void QAbstractSpinBox_WheelEvent(QAbstractSpinBox* self, QWheelEvent* event);
QTLIBC_API void QAbstractSpinBox_OnWheelEvent(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseWheelEvent(QAbstractSpinBox* self, QWheelEvent* event);
QTLIBC_API void QAbstractSpinBox_FocusInEvent(QAbstractSpinBox* self, QFocusEvent* event);
QTLIBC_API void QAbstractSpinBox_OnFocusInEvent(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseFocusInEvent(QAbstractSpinBox* self, QFocusEvent* event);
QTLIBC_API void QAbstractSpinBox_FocusOutEvent(QAbstractSpinBox* self, QFocusEvent* event);
QTLIBC_API void QAbstractSpinBox_OnFocusOutEvent(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseFocusOutEvent(QAbstractSpinBox* self, QFocusEvent* event);
QTLIBC_API void QAbstractSpinBox_ContextMenuEvent(QAbstractSpinBox* self, QContextMenuEvent* event);
QTLIBC_API void QAbstractSpinBox_OnContextMenuEvent(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseContextMenuEvent(QAbstractSpinBox* self, QContextMenuEvent* event);
QTLIBC_API void QAbstractSpinBox_ChangeEvent(QAbstractSpinBox* self, QEvent* event);
QTLIBC_API void QAbstractSpinBox_OnChangeEvent(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseChangeEvent(QAbstractSpinBox* self, QEvent* event);
QTLIBC_API void QAbstractSpinBox_CloseEvent(QAbstractSpinBox* self, QCloseEvent* event);
QTLIBC_API void QAbstractSpinBox_OnCloseEvent(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseCloseEvent(QAbstractSpinBox* self, QCloseEvent* event);
QTLIBC_API void QAbstractSpinBox_HideEvent(QAbstractSpinBox* self, QHideEvent* event);
QTLIBC_API void QAbstractSpinBox_OnHideEvent(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseHideEvent(QAbstractSpinBox* self, QHideEvent* event);
QTLIBC_API void QAbstractSpinBox_MousePressEvent(QAbstractSpinBox* self, QMouseEvent* event);
QTLIBC_API void QAbstractSpinBox_OnMousePressEvent(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseMousePressEvent(QAbstractSpinBox* self, QMouseEvent* event);
QTLIBC_API void QAbstractSpinBox_MouseReleaseEvent(QAbstractSpinBox* self, QMouseEvent* event);
QTLIBC_API void QAbstractSpinBox_OnMouseReleaseEvent(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseMouseReleaseEvent(QAbstractSpinBox* self, QMouseEvent* event);
QTLIBC_API void QAbstractSpinBox_MouseMoveEvent(QAbstractSpinBox* self, QMouseEvent* event);
QTLIBC_API void QAbstractSpinBox_OnMouseMoveEvent(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseMouseMoveEvent(QAbstractSpinBox* self, QMouseEvent* event);
QTLIBC_API void QAbstractSpinBox_TimerEvent(QAbstractSpinBox* self, QTimerEvent* event);
QTLIBC_API void QAbstractSpinBox_OnTimerEvent(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseTimerEvent(QAbstractSpinBox* self, QTimerEvent* event);
QTLIBC_API void QAbstractSpinBox_PaintEvent(QAbstractSpinBox* self, QPaintEvent* event);
QTLIBC_API void QAbstractSpinBox_OnPaintEvent(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBasePaintEvent(QAbstractSpinBox* self, QPaintEvent* event);
QTLIBC_API void QAbstractSpinBox_ShowEvent(QAbstractSpinBox* self, QShowEvent* event);
QTLIBC_API void QAbstractSpinBox_OnShowEvent(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseShowEvent(QAbstractSpinBox* self, QShowEvent* event);
QTLIBC_API void QAbstractSpinBox_InitStyleOption(const QAbstractSpinBox* self, QStyleOptionSpinBox* option);
QTLIBC_API void QAbstractSpinBox_OnInitStyleOption(const QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseInitStyleOption(const QAbstractSpinBox* self, QStyleOptionSpinBox* option);
QTLIBC_API int QAbstractSpinBox_StepEnabled(const QAbstractSpinBox* self);
QTLIBC_API void QAbstractSpinBox_OnStepEnabled(const QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API int QAbstractSpinBox_QBaseStepEnabled(const QAbstractSpinBox* self);
QTLIBC_API void QAbstractSpinBox_EditingFinished(QAbstractSpinBox* self);
QTLIBC_API void QAbstractSpinBox_Connect_EditingFinished(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API libqt_string QAbstractSpinBox_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QAbstractSpinBox_Tr3(const char* s, const char* c, int n);
QTLIBC_API int QAbstractSpinBox_DevType(const QAbstractSpinBox* self);
QTLIBC_API void QAbstractSpinBox_OnDevType(const QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API int QAbstractSpinBox_QBaseDevType(const QAbstractSpinBox* self);
QTLIBC_API void QAbstractSpinBox_SetVisible(QAbstractSpinBox* self, bool visible);
QTLIBC_API void QAbstractSpinBox_OnSetVisible(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseSetVisible(QAbstractSpinBox* self, bool visible);
QTLIBC_API int QAbstractSpinBox_HeightForWidth(const QAbstractSpinBox* self, int param1);
QTLIBC_API void QAbstractSpinBox_OnHeightForWidth(const QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API int QAbstractSpinBox_QBaseHeightForWidth(const QAbstractSpinBox* self, int param1);
QTLIBC_API bool QAbstractSpinBox_HasHeightForWidth(const QAbstractSpinBox* self);
QTLIBC_API void QAbstractSpinBox_OnHasHeightForWidth(const QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API bool QAbstractSpinBox_QBaseHasHeightForWidth(const QAbstractSpinBox* self);
QTLIBC_API QPaintEngine* QAbstractSpinBox_PaintEngine(const QAbstractSpinBox* self);
QTLIBC_API void QAbstractSpinBox_OnPaintEngine(const QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API QPaintEngine* QAbstractSpinBox_QBasePaintEngine(const QAbstractSpinBox* self);
QTLIBC_API void QAbstractSpinBox_MouseDoubleClickEvent(QAbstractSpinBox* self, QMouseEvent* event);
QTLIBC_API void QAbstractSpinBox_OnMouseDoubleClickEvent(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseMouseDoubleClickEvent(QAbstractSpinBox* self, QMouseEvent* event);
QTLIBC_API void QAbstractSpinBox_EnterEvent(QAbstractSpinBox* self, QEnterEvent* event);
QTLIBC_API void QAbstractSpinBox_OnEnterEvent(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseEnterEvent(QAbstractSpinBox* self, QEnterEvent* event);
QTLIBC_API void QAbstractSpinBox_LeaveEvent(QAbstractSpinBox* self, QEvent* event);
QTLIBC_API void QAbstractSpinBox_OnLeaveEvent(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseLeaveEvent(QAbstractSpinBox* self, QEvent* event);
QTLIBC_API void QAbstractSpinBox_MoveEvent(QAbstractSpinBox* self, QMoveEvent* event);
QTLIBC_API void QAbstractSpinBox_OnMoveEvent(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseMoveEvent(QAbstractSpinBox* self, QMoveEvent* event);
QTLIBC_API void QAbstractSpinBox_TabletEvent(QAbstractSpinBox* self, QTabletEvent* event);
QTLIBC_API void QAbstractSpinBox_OnTabletEvent(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseTabletEvent(QAbstractSpinBox* self, QTabletEvent* event);
QTLIBC_API void QAbstractSpinBox_ActionEvent(QAbstractSpinBox* self, QActionEvent* event);
QTLIBC_API void QAbstractSpinBox_OnActionEvent(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseActionEvent(QAbstractSpinBox* self, QActionEvent* event);
QTLIBC_API void QAbstractSpinBox_DragEnterEvent(QAbstractSpinBox* self, QDragEnterEvent* event);
QTLIBC_API void QAbstractSpinBox_OnDragEnterEvent(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseDragEnterEvent(QAbstractSpinBox* self, QDragEnterEvent* event);
QTLIBC_API void QAbstractSpinBox_DragMoveEvent(QAbstractSpinBox* self, QDragMoveEvent* event);
QTLIBC_API void QAbstractSpinBox_OnDragMoveEvent(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseDragMoveEvent(QAbstractSpinBox* self, QDragMoveEvent* event);
QTLIBC_API void QAbstractSpinBox_DragLeaveEvent(QAbstractSpinBox* self, QDragLeaveEvent* event);
QTLIBC_API void QAbstractSpinBox_OnDragLeaveEvent(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseDragLeaveEvent(QAbstractSpinBox* self, QDragLeaveEvent* event);
QTLIBC_API void QAbstractSpinBox_DropEvent(QAbstractSpinBox* self, QDropEvent* event);
QTLIBC_API void QAbstractSpinBox_OnDropEvent(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseDropEvent(QAbstractSpinBox* self, QDropEvent* event);
QTLIBC_API bool QAbstractSpinBox_NativeEvent(QAbstractSpinBox* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QAbstractSpinBox_OnNativeEvent(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API bool QAbstractSpinBox_QBaseNativeEvent(QAbstractSpinBox* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QAbstractSpinBox_InputMethodEvent(QAbstractSpinBox* self, QInputMethodEvent* param1);
QTLIBC_API void QAbstractSpinBox_OnInputMethodEvent(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseInputMethodEvent(QAbstractSpinBox* self, QInputMethodEvent* param1);
QTLIBC_API bool QAbstractSpinBox_FocusNextPrevChild(QAbstractSpinBox* self, bool next);
QTLIBC_API void QAbstractSpinBox_OnFocusNextPrevChild(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API bool QAbstractSpinBox_QBaseFocusNextPrevChild(QAbstractSpinBox* self, bool next);
QTLIBC_API bool QAbstractSpinBox_EventFilter(QAbstractSpinBox* self, QObject* watched, QEvent* event);
QTLIBC_API void QAbstractSpinBox_OnEventFilter(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API bool QAbstractSpinBox_QBaseEventFilter(QAbstractSpinBox* self, QObject* watched, QEvent* event);
QTLIBC_API void QAbstractSpinBox_ChildEvent(QAbstractSpinBox* self, QChildEvent* event);
QTLIBC_API void QAbstractSpinBox_OnChildEvent(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseChildEvent(QAbstractSpinBox* self, QChildEvent* event);
QTLIBC_API void QAbstractSpinBox_CustomEvent(QAbstractSpinBox* self, QEvent* event);
QTLIBC_API void QAbstractSpinBox_OnCustomEvent(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseCustomEvent(QAbstractSpinBox* self, QEvent* event);
QTLIBC_API void QAbstractSpinBox_ConnectNotify(QAbstractSpinBox* self, QMetaMethod* signal);
QTLIBC_API void QAbstractSpinBox_OnConnectNotify(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseConnectNotify(QAbstractSpinBox* self, QMetaMethod* signal);
QTLIBC_API void QAbstractSpinBox_DisconnectNotify(QAbstractSpinBox* self, QMetaMethod* signal);
QTLIBC_API void QAbstractSpinBox_OnDisconnectNotify(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseDisconnectNotify(QAbstractSpinBox* self, QMetaMethod* signal);
QTLIBC_API int QAbstractSpinBox_Metric(const QAbstractSpinBox* self, int param1);
QTLIBC_API void QAbstractSpinBox_OnMetric(const QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API int QAbstractSpinBox_QBaseMetric(const QAbstractSpinBox* self, int param1);
QTLIBC_API void QAbstractSpinBox_InitPainter(const QAbstractSpinBox* self, QPainter* painter);
QTLIBC_API void QAbstractSpinBox_OnInitPainter(const QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseInitPainter(const QAbstractSpinBox* self, QPainter* painter);
QTLIBC_API QPaintDevice* QAbstractSpinBox_Redirected(const QAbstractSpinBox* self, QPoint* offset);
QTLIBC_API void QAbstractSpinBox_OnRedirected(const QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API QPaintDevice* QAbstractSpinBox_QBaseRedirected(const QAbstractSpinBox* self, QPoint* offset);
QTLIBC_API QPainter* QAbstractSpinBox_SharedPainter(const QAbstractSpinBox* self);
QTLIBC_API void QAbstractSpinBox_OnSharedPainter(const QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API QPainter* QAbstractSpinBox_QBaseSharedPainter(const QAbstractSpinBox* self);
QTLIBC_API QLineEdit* QAbstractSpinBox_LineEdit(const QAbstractSpinBox* self);
QTLIBC_API void QAbstractSpinBox_OnLineEdit(const QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API QLineEdit* QAbstractSpinBox_QBaseLineEdit(const QAbstractSpinBox* self);
QTLIBC_API void QAbstractSpinBox_SetLineEdit(QAbstractSpinBox* self, QLineEdit* edit);
QTLIBC_API void QAbstractSpinBox_OnSetLineEdit(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseSetLineEdit(QAbstractSpinBox* self, QLineEdit* edit);
QTLIBC_API void QAbstractSpinBox_UpdateMicroFocus(QAbstractSpinBox* self);
QTLIBC_API void QAbstractSpinBox_OnUpdateMicroFocus(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseUpdateMicroFocus(QAbstractSpinBox* self);
QTLIBC_API void QAbstractSpinBox_Create(QAbstractSpinBox* self);
QTLIBC_API void QAbstractSpinBox_OnCreate(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseCreate(QAbstractSpinBox* self);
QTLIBC_API void QAbstractSpinBox_Destroy(QAbstractSpinBox* self);
QTLIBC_API void QAbstractSpinBox_OnDestroy(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API void QAbstractSpinBox_QBaseDestroy(QAbstractSpinBox* self);
QTLIBC_API bool QAbstractSpinBox_FocusNextChild(QAbstractSpinBox* self);
QTLIBC_API void QAbstractSpinBox_OnFocusNextChild(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API bool QAbstractSpinBox_QBaseFocusNextChild(QAbstractSpinBox* self);
QTLIBC_API bool QAbstractSpinBox_FocusPreviousChild(QAbstractSpinBox* self);
QTLIBC_API void QAbstractSpinBox_OnFocusPreviousChild(QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API bool QAbstractSpinBox_QBaseFocusPreviousChild(QAbstractSpinBox* self);
QTLIBC_API QObject* QAbstractSpinBox_Sender(const QAbstractSpinBox* self);
QTLIBC_API void QAbstractSpinBox_OnSender(const QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API QObject* QAbstractSpinBox_QBaseSender(const QAbstractSpinBox* self);
QTLIBC_API int QAbstractSpinBox_SenderSignalIndex(const QAbstractSpinBox* self);
QTLIBC_API void QAbstractSpinBox_OnSenderSignalIndex(const QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API int QAbstractSpinBox_QBaseSenderSignalIndex(const QAbstractSpinBox* self);
QTLIBC_API int QAbstractSpinBox_Receivers(const QAbstractSpinBox* self, const char* signal);
QTLIBC_API void QAbstractSpinBox_OnReceivers(const QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API int QAbstractSpinBox_QBaseReceivers(const QAbstractSpinBox* self, const char* signal);
QTLIBC_API bool QAbstractSpinBox_IsSignalConnected(const QAbstractSpinBox* self, QMetaMethod* signal);
QTLIBC_API void QAbstractSpinBox_OnIsSignalConnected(const QAbstractSpinBox* self, intptr_t slot);
QTLIBC_API bool QAbstractSpinBox_QBaseIsSignalConnected(const QAbstractSpinBox* self, QMetaMethod* signal);
QTLIBC_API void QAbstractSpinBox_Delete(QAbstractSpinBox* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
