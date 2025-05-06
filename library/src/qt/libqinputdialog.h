#pragma once
#ifndef SRC_QTC_LIBQINPUTDIALOG_H
#define SRC_QTC_LIBQINPUTDIALOG_H

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
typedef struct QInputDialog QInputDialog;
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
typedef QInputDialog::InputDialogOption InputDialogOption;   // C++ enum
typedef QInputDialog::InputDialogOptions InputDialogOptions; // C++ QFlags
typedef QInputDialog::InputMode InputMode;                   // C++ enum
#else
typedef int InputDialogOption;  // C ABI enum
typedef int InputDialogOptions; // C ABI QFlags
typedef int InputMode;          // C ABI enum
#endif

QTLIBC_API QInputDialog* QInputDialog_new(QWidget* parent);
QTLIBC_API QInputDialog* QInputDialog_new2();
QTLIBC_API QInputDialog* QInputDialog_new3(QWidget* parent, int flags);
QTLIBC_API QMetaObject* QInputDialog_MetaObject(const QInputDialog* self);
QTLIBC_API void* QInputDialog_Metacast(QInputDialog* self, const char* param1);
QTLIBC_API int QInputDialog_Metacall(QInputDialog* self, int param1, int param2, void** param3);
QTLIBC_API void QInputDialog_OnMetacall(QInputDialog* self, intptr_t slot);
QTLIBC_API int QInputDialog_QBaseMetacall(QInputDialog* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QInputDialog_Tr(const char* s);
QTLIBC_API void QInputDialog_SetInputMode(QInputDialog* self, int mode);
QTLIBC_API int QInputDialog_InputMode(const QInputDialog* self);
QTLIBC_API void QInputDialog_SetLabelText(QInputDialog* self, libqt_string text);
QTLIBC_API libqt_string QInputDialog_LabelText(const QInputDialog* self);
QTLIBC_API void QInputDialog_SetOption(QInputDialog* self, int option);
QTLIBC_API bool QInputDialog_TestOption(const QInputDialog* self, int option);
QTLIBC_API void QInputDialog_SetOptions(QInputDialog* self, int options);
QTLIBC_API int QInputDialog_Options(const QInputDialog* self);
QTLIBC_API void QInputDialog_SetTextValue(QInputDialog* self, libqt_string text);
QTLIBC_API libqt_string QInputDialog_TextValue(const QInputDialog* self);
QTLIBC_API void QInputDialog_SetTextEchoMode(QInputDialog* self, int mode);
QTLIBC_API int QInputDialog_TextEchoMode(const QInputDialog* self);
QTLIBC_API void QInputDialog_SetComboBoxEditable(QInputDialog* self, bool editable);
QTLIBC_API bool QInputDialog_IsComboBoxEditable(const QInputDialog* self);
QTLIBC_API void QInputDialog_SetComboBoxItems(QInputDialog* self, libqt_list /* of libqt_string */ items);
QTLIBC_API libqt_list /* of libqt_string */ QInputDialog_ComboBoxItems(const QInputDialog* self);
QTLIBC_API void QInputDialog_SetIntValue(QInputDialog* self, int value);
QTLIBC_API int QInputDialog_IntValue(const QInputDialog* self);
QTLIBC_API void QInputDialog_SetIntMinimum(QInputDialog* self, int min);
QTLIBC_API int QInputDialog_IntMinimum(const QInputDialog* self);
QTLIBC_API void QInputDialog_SetIntMaximum(QInputDialog* self, int max);
QTLIBC_API int QInputDialog_IntMaximum(const QInputDialog* self);
QTLIBC_API void QInputDialog_SetIntRange(QInputDialog* self, int min, int max);
QTLIBC_API void QInputDialog_SetIntStep(QInputDialog* self, int step);
QTLIBC_API int QInputDialog_IntStep(const QInputDialog* self);
QTLIBC_API void QInputDialog_SetDoubleValue(QInputDialog* self, double value);
QTLIBC_API double QInputDialog_DoubleValue(const QInputDialog* self);
QTLIBC_API void QInputDialog_SetDoubleMinimum(QInputDialog* self, double min);
QTLIBC_API double QInputDialog_DoubleMinimum(const QInputDialog* self);
QTLIBC_API void QInputDialog_SetDoubleMaximum(QInputDialog* self, double max);
QTLIBC_API double QInputDialog_DoubleMaximum(const QInputDialog* self);
QTLIBC_API void QInputDialog_SetDoubleRange(QInputDialog* self, double min, double max);
QTLIBC_API void QInputDialog_SetDoubleDecimals(QInputDialog* self, int decimals);
QTLIBC_API int QInputDialog_DoubleDecimals(const QInputDialog* self);
QTLIBC_API void QInputDialog_SetOkButtonText(QInputDialog* self, libqt_string text);
QTLIBC_API libqt_string QInputDialog_OkButtonText(const QInputDialog* self);
QTLIBC_API void QInputDialog_SetCancelButtonText(QInputDialog* self, libqt_string text);
QTLIBC_API libqt_string QInputDialog_CancelButtonText(const QInputDialog* self);
QTLIBC_API QSize* QInputDialog_MinimumSizeHint(const QInputDialog* self);
QTLIBC_API void QInputDialog_OnMinimumSizeHint(const QInputDialog* self, intptr_t slot);
QTLIBC_API QSize* QInputDialog_QBaseMinimumSizeHint(const QInputDialog* self);
QTLIBC_API QSize* QInputDialog_SizeHint(const QInputDialog* self);
QTLIBC_API void QInputDialog_OnSizeHint(const QInputDialog* self, intptr_t slot);
QTLIBC_API QSize* QInputDialog_QBaseSizeHint(const QInputDialog* self);
QTLIBC_API void QInputDialog_SetVisible(QInputDialog* self, bool visible);
QTLIBC_API void QInputDialog_OnSetVisible(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseSetVisible(QInputDialog* self, bool visible);
QTLIBC_API libqt_string QInputDialog_GetText(QWidget* parent, libqt_string title, libqt_string label);
QTLIBC_API libqt_string QInputDialog_GetMultiLineText(QWidget* parent, libqt_string title, libqt_string label);
QTLIBC_API libqt_string QInputDialog_GetItem(QWidget* parent, libqt_string title, libqt_string label, libqt_list /* of libqt_string */ items);
QTLIBC_API int QInputDialog_GetInt(QWidget* parent, libqt_string title, libqt_string label);
QTLIBC_API double QInputDialog_GetDouble(QWidget* parent, libqt_string title, libqt_string label);
QTLIBC_API void QInputDialog_SetDoubleStep(QInputDialog* self, double step);
QTLIBC_API double QInputDialog_DoubleStep(const QInputDialog* self);
QTLIBC_API void QInputDialog_TextValueChanged(QInputDialog* self, libqt_string text);
QTLIBC_API void QInputDialog_Connect_TextValueChanged(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_TextValueSelected(QInputDialog* self, libqt_string text);
QTLIBC_API void QInputDialog_Connect_TextValueSelected(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_IntValueChanged(QInputDialog* self, int value);
QTLIBC_API void QInputDialog_Connect_IntValueChanged(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_IntValueSelected(QInputDialog* self, int value);
QTLIBC_API void QInputDialog_Connect_IntValueSelected(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_DoubleValueChanged(QInputDialog* self, double value);
QTLIBC_API void QInputDialog_Connect_DoubleValueChanged(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_DoubleValueSelected(QInputDialog* self, double value);
QTLIBC_API void QInputDialog_Connect_DoubleValueSelected(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_Done(QInputDialog* self, int result);
QTLIBC_API void QInputDialog_OnDone(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseDone(QInputDialog* self, int result);
QTLIBC_API libqt_string QInputDialog_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QInputDialog_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QInputDialog_SetOption2(QInputDialog* self, int option, bool on);
QTLIBC_API libqt_string QInputDialog_GetText4(QWidget* parent, libqt_string title, libqt_string label, int echo);
QTLIBC_API libqt_string QInputDialog_GetText5(QWidget* parent, libqt_string title, libqt_string label, int echo, libqt_string text);
QTLIBC_API libqt_string QInputDialog_GetText6(QWidget* parent, libqt_string title, libqt_string label, int echo, libqt_string text, bool* ok);
QTLIBC_API libqt_string QInputDialog_GetText7(QWidget* parent, libqt_string title, libqt_string label, int echo, libqt_string text, bool* ok, int flags);
QTLIBC_API libqt_string QInputDialog_GetText8(QWidget* parent, libqt_string title, libqt_string label, int echo, libqt_string text, bool* ok, int flags, int inputMethodHints);
QTLIBC_API libqt_string QInputDialog_GetMultiLineText4(QWidget* parent, libqt_string title, libqt_string label, libqt_string text);
QTLIBC_API libqt_string QInputDialog_GetMultiLineText5(QWidget* parent, libqt_string title, libqt_string label, libqt_string text, bool* ok);
QTLIBC_API libqt_string QInputDialog_GetMultiLineText6(QWidget* parent, libqt_string title, libqt_string label, libqt_string text, bool* ok, int flags);
QTLIBC_API libqt_string QInputDialog_GetMultiLineText7(QWidget* parent, libqt_string title, libqt_string label, libqt_string text, bool* ok, int flags, int inputMethodHints);
QTLIBC_API libqt_string QInputDialog_GetItem5(QWidget* parent, libqt_string title, libqt_string label, libqt_list /* of libqt_string */ items, int current);
QTLIBC_API libqt_string QInputDialog_GetItem6(QWidget* parent, libqt_string title, libqt_string label, libqt_list /* of libqt_string */ items, int current, bool editable);
QTLIBC_API libqt_string QInputDialog_GetItem7(QWidget* parent, libqt_string title, libqt_string label, libqt_list /* of libqt_string */ items, int current, bool editable, bool* ok);
QTLIBC_API libqt_string QInputDialog_GetItem8(QWidget* parent, libqt_string title, libqt_string label, libqt_list /* of libqt_string */ items, int current, bool editable, bool* ok, int flags);
QTLIBC_API libqt_string QInputDialog_GetItem9(QWidget* parent, libqt_string title, libqt_string label, libqt_list /* of libqt_string */ items, int current, bool editable, bool* ok, int flags, int inputMethodHints);
QTLIBC_API int QInputDialog_GetInt4(QWidget* parent, libqt_string title, libqt_string label, int value);
QTLIBC_API int QInputDialog_GetInt5(QWidget* parent, libqt_string title, libqt_string label, int value, int minValue);
QTLIBC_API int QInputDialog_GetInt6(QWidget* parent, libqt_string title, libqt_string label, int value, int minValue, int maxValue);
QTLIBC_API int QInputDialog_GetInt7(QWidget* parent, libqt_string title, libqt_string label, int value, int minValue, int maxValue, int step);
QTLIBC_API int QInputDialog_GetInt8(QWidget* parent, libqt_string title, libqt_string label, int value, int minValue, int maxValue, int step, bool* ok);
QTLIBC_API int QInputDialog_GetInt9(QWidget* parent, libqt_string title, libqt_string label, int value, int minValue, int maxValue, int step, bool* ok, int flags);
QTLIBC_API double QInputDialog_GetDouble4(QWidget* parent, libqt_string title, libqt_string label, double value);
QTLIBC_API double QInputDialog_GetDouble5(QWidget* parent, libqt_string title, libqt_string label, double value, double minValue);
QTLIBC_API double QInputDialog_GetDouble6(QWidget* parent, libqt_string title, libqt_string label, double value, double minValue, double maxValue);
QTLIBC_API double QInputDialog_GetDouble7(QWidget* parent, libqt_string title, libqt_string label, double value, double minValue, double maxValue, int decimals);
QTLIBC_API double QInputDialog_GetDouble8(QWidget* parent, libqt_string title, libqt_string label, double value, double minValue, double maxValue, int decimals, bool* ok);
QTLIBC_API double QInputDialog_GetDouble9(QWidget* parent, libqt_string title, libqt_string label, double value, double minValue, double maxValue, int decimals, bool* ok, int flags);
QTLIBC_API double QInputDialog_GetDouble10(QWidget* parent, libqt_string title, libqt_string label, double value, double minValue, double maxValue, int decimals, bool* ok, int flags, double step);
QTLIBC_API void QInputDialog_Open(QInputDialog* self);
QTLIBC_API void QInputDialog_OnOpen(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseOpen(QInputDialog* self);
QTLIBC_API int QInputDialog_Exec(QInputDialog* self);
QTLIBC_API void QInputDialog_OnExec(QInputDialog* self, intptr_t slot);
QTLIBC_API int QInputDialog_QBaseExec(QInputDialog* self);
QTLIBC_API void QInputDialog_Accept(QInputDialog* self);
QTLIBC_API void QInputDialog_OnAccept(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseAccept(QInputDialog* self);
QTLIBC_API void QInputDialog_Reject(QInputDialog* self);
QTLIBC_API void QInputDialog_OnReject(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseReject(QInputDialog* self);
QTLIBC_API void QInputDialog_KeyPressEvent(QInputDialog* self, QKeyEvent* param1);
QTLIBC_API void QInputDialog_OnKeyPressEvent(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseKeyPressEvent(QInputDialog* self, QKeyEvent* param1);
QTLIBC_API void QInputDialog_CloseEvent(QInputDialog* self, QCloseEvent* param1);
QTLIBC_API void QInputDialog_OnCloseEvent(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseCloseEvent(QInputDialog* self, QCloseEvent* param1);
QTLIBC_API void QInputDialog_ShowEvent(QInputDialog* self, QShowEvent* param1);
QTLIBC_API void QInputDialog_OnShowEvent(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseShowEvent(QInputDialog* self, QShowEvent* param1);
QTLIBC_API void QInputDialog_ResizeEvent(QInputDialog* self, QResizeEvent* param1);
QTLIBC_API void QInputDialog_OnResizeEvent(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseResizeEvent(QInputDialog* self, QResizeEvent* param1);
QTLIBC_API void QInputDialog_ContextMenuEvent(QInputDialog* self, QContextMenuEvent* param1);
QTLIBC_API void QInputDialog_OnContextMenuEvent(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseContextMenuEvent(QInputDialog* self, QContextMenuEvent* param1);
QTLIBC_API bool QInputDialog_EventFilter(QInputDialog* self, QObject* param1, QEvent* param2);
QTLIBC_API void QInputDialog_OnEventFilter(QInputDialog* self, intptr_t slot);
QTLIBC_API bool QInputDialog_QBaseEventFilter(QInputDialog* self, QObject* param1, QEvent* param2);
QTLIBC_API int QInputDialog_DevType(const QInputDialog* self);
QTLIBC_API void QInputDialog_OnDevType(const QInputDialog* self, intptr_t slot);
QTLIBC_API int QInputDialog_QBaseDevType(const QInputDialog* self);
QTLIBC_API int QInputDialog_HeightForWidth(const QInputDialog* self, int param1);
QTLIBC_API void QInputDialog_OnHeightForWidth(const QInputDialog* self, intptr_t slot);
QTLIBC_API int QInputDialog_QBaseHeightForWidth(const QInputDialog* self, int param1);
QTLIBC_API bool QInputDialog_HasHeightForWidth(const QInputDialog* self);
QTLIBC_API void QInputDialog_OnHasHeightForWidth(const QInputDialog* self, intptr_t slot);
QTLIBC_API bool QInputDialog_QBaseHasHeightForWidth(const QInputDialog* self);
QTLIBC_API QPaintEngine* QInputDialog_PaintEngine(const QInputDialog* self);
QTLIBC_API void QInputDialog_OnPaintEngine(const QInputDialog* self, intptr_t slot);
QTLIBC_API QPaintEngine* QInputDialog_QBasePaintEngine(const QInputDialog* self);
QTLIBC_API bool QInputDialog_Event(QInputDialog* self, QEvent* event);
QTLIBC_API void QInputDialog_OnEvent(QInputDialog* self, intptr_t slot);
QTLIBC_API bool QInputDialog_QBaseEvent(QInputDialog* self, QEvent* event);
QTLIBC_API void QInputDialog_MousePressEvent(QInputDialog* self, QMouseEvent* event);
QTLIBC_API void QInputDialog_OnMousePressEvent(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseMousePressEvent(QInputDialog* self, QMouseEvent* event);
QTLIBC_API void QInputDialog_MouseReleaseEvent(QInputDialog* self, QMouseEvent* event);
QTLIBC_API void QInputDialog_OnMouseReleaseEvent(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseMouseReleaseEvent(QInputDialog* self, QMouseEvent* event);
QTLIBC_API void QInputDialog_MouseDoubleClickEvent(QInputDialog* self, QMouseEvent* event);
QTLIBC_API void QInputDialog_OnMouseDoubleClickEvent(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseMouseDoubleClickEvent(QInputDialog* self, QMouseEvent* event);
QTLIBC_API void QInputDialog_MouseMoveEvent(QInputDialog* self, QMouseEvent* event);
QTLIBC_API void QInputDialog_OnMouseMoveEvent(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseMouseMoveEvent(QInputDialog* self, QMouseEvent* event);
QTLIBC_API void QInputDialog_WheelEvent(QInputDialog* self, QWheelEvent* event);
QTLIBC_API void QInputDialog_OnWheelEvent(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseWheelEvent(QInputDialog* self, QWheelEvent* event);
QTLIBC_API void QInputDialog_KeyReleaseEvent(QInputDialog* self, QKeyEvent* event);
QTLIBC_API void QInputDialog_OnKeyReleaseEvent(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseKeyReleaseEvent(QInputDialog* self, QKeyEvent* event);
QTLIBC_API void QInputDialog_FocusInEvent(QInputDialog* self, QFocusEvent* event);
QTLIBC_API void QInputDialog_OnFocusInEvent(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseFocusInEvent(QInputDialog* self, QFocusEvent* event);
QTLIBC_API void QInputDialog_FocusOutEvent(QInputDialog* self, QFocusEvent* event);
QTLIBC_API void QInputDialog_OnFocusOutEvent(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseFocusOutEvent(QInputDialog* self, QFocusEvent* event);
QTLIBC_API void QInputDialog_EnterEvent(QInputDialog* self, QEnterEvent* event);
QTLIBC_API void QInputDialog_OnEnterEvent(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseEnterEvent(QInputDialog* self, QEnterEvent* event);
QTLIBC_API void QInputDialog_LeaveEvent(QInputDialog* self, QEvent* event);
QTLIBC_API void QInputDialog_OnLeaveEvent(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseLeaveEvent(QInputDialog* self, QEvent* event);
QTLIBC_API void QInputDialog_PaintEvent(QInputDialog* self, QPaintEvent* event);
QTLIBC_API void QInputDialog_OnPaintEvent(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBasePaintEvent(QInputDialog* self, QPaintEvent* event);
QTLIBC_API void QInputDialog_MoveEvent(QInputDialog* self, QMoveEvent* event);
QTLIBC_API void QInputDialog_OnMoveEvent(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseMoveEvent(QInputDialog* self, QMoveEvent* event);
QTLIBC_API void QInputDialog_TabletEvent(QInputDialog* self, QTabletEvent* event);
QTLIBC_API void QInputDialog_OnTabletEvent(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseTabletEvent(QInputDialog* self, QTabletEvent* event);
QTLIBC_API void QInputDialog_ActionEvent(QInputDialog* self, QActionEvent* event);
QTLIBC_API void QInputDialog_OnActionEvent(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseActionEvent(QInputDialog* self, QActionEvent* event);
QTLIBC_API void QInputDialog_DragEnterEvent(QInputDialog* self, QDragEnterEvent* event);
QTLIBC_API void QInputDialog_OnDragEnterEvent(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseDragEnterEvent(QInputDialog* self, QDragEnterEvent* event);
QTLIBC_API void QInputDialog_DragMoveEvent(QInputDialog* self, QDragMoveEvent* event);
QTLIBC_API void QInputDialog_OnDragMoveEvent(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseDragMoveEvent(QInputDialog* self, QDragMoveEvent* event);
QTLIBC_API void QInputDialog_DragLeaveEvent(QInputDialog* self, QDragLeaveEvent* event);
QTLIBC_API void QInputDialog_OnDragLeaveEvent(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseDragLeaveEvent(QInputDialog* self, QDragLeaveEvent* event);
QTLIBC_API void QInputDialog_DropEvent(QInputDialog* self, QDropEvent* event);
QTLIBC_API void QInputDialog_OnDropEvent(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseDropEvent(QInputDialog* self, QDropEvent* event);
QTLIBC_API void QInputDialog_HideEvent(QInputDialog* self, QHideEvent* event);
QTLIBC_API void QInputDialog_OnHideEvent(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseHideEvent(QInputDialog* self, QHideEvent* event);
QTLIBC_API bool QInputDialog_NativeEvent(QInputDialog* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QInputDialog_OnNativeEvent(QInputDialog* self, intptr_t slot);
QTLIBC_API bool QInputDialog_QBaseNativeEvent(QInputDialog* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QInputDialog_ChangeEvent(QInputDialog* self, QEvent* param1);
QTLIBC_API void QInputDialog_OnChangeEvent(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseChangeEvent(QInputDialog* self, QEvent* param1);
QTLIBC_API void QInputDialog_InputMethodEvent(QInputDialog* self, QInputMethodEvent* param1);
QTLIBC_API void QInputDialog_OnInputMethodEvent(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseInputMethodEvent(QInputDialog* self, QInputMethodEvent* param1);
QTLIBC_API QVariant* QInputDialog_InputMethodQuery(const QInputDialog* self, int param1);
QTLIBC_API void QInputDialog_OnInputMethodQuery(const QInputDialog* self, intptr_t slot);
QTLIBC_API QVariant* QInputDialog_QBaseInputMethodQuery(const QInputDialog* self, int param1);
QTLIBC_API bool QInputDialog_FocusNextPrevChild(QInputDialog* self, bool next);
QTLIBC_API void QInputDialog_OnFocusNextPrevChild(QInputDialog* self, intptr_t slot);
QTLIBC_API bool QInputDialog_QBaseFocusNextPrevChild(QInputDialog* self, bool next);
QTLIBC_API void QInputDialog_TimerEvent(QInputDialog* self, QTimerEvent* event);
QTLIBC_API void QInputDialog_OnTimerEvent(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseTimerEvent(QInputDialog* self, QTimerEvent* event);
QTLIBC_API void QInputDialog_ChildEvent(QInputDialog* self, QChildEvent* event);
QTLIBC_API void QInputDialog_OnChildEvent(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseChildEvent(QInputDialog* self, QChildEvent* event);
QTLIBC_API void QInputDialog_CustomEvent(QInputDialog* self, QEvent* event);
QTLIBC_API void QInputDialog_OnCustomEvent(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseCustomEvent(QInputDialog* self, QEvent* event);
QTLIBC_API void QInputDialog_ConnectNotify(QInputDialog* self, QMetaMethod* signal);
QTLIBC_API void QInputDialog_OnConnectNotify(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseConnectNotify(QInputDialog* self, QMetaMethod* signal);
QTLIBC_API void QInputDialog_DisconnectNotify(QInputDialog* self, QMetaMethod* signal);
QTLIBC_API void QInputDialog_OnDisconnectNotify(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseDisconnectNotify(QInputDialog* self, QMetaMethod* signal);
QTLIBC_API int QInputDialog_Metric(const QInputDialog* self, int param1);
QTLIBC_API void QInputDialog_OnMetric(const QInputDialog* self, intptr_t slot);
QTLIBC_API int QInputDialog_QBaseMetric(const QInputDialog* self, int param1);
QTLIBC_API void QInputDialog_InitPainter(const QInputDialog* self, QPainter* painter);
QTLIBC_API void QInputDialog_OnInitPainter(const QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseInitPainter(const QInputDialog* self, QPainter* painter);
QTLIBC_API QPaintDevice* QInputDialog_Redirected(const QInputDialog* self, QPoint* offset);
QTLIBC_API void QInputDialog_OnRedirected(const QInputDialog* self, intptr_t slot);
QTLIBC_API QPaintDevice* QInputDialog_QBaseRedirected(const QInputDialog* self, QPoint* offset);
QTLIBC_API QPainter* QInputDialog_SharedPainter(const QInputDialog* self);
QTLIBC_API void QInputDialog_OnSharedPainter(const QInputDialog* self, intptr_t slot);
QTLIBC_API QPainter* QInputDialog_QBaseSharedPainter(const QInputDialog* self);
QTLIBC_API void QInputDialog_AdjustPosition(QInputDialog* self, QWidget* param1);
QTLIBC_API void QInputDialog_OnAdjustPosition(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseAdjustPosition(QInputDialog* self, QWidget* param1);
QTLIBC_API void QInputDialog_UpdateMicroFocus(QInputDialog* self);
QTLIBC_API void QInputDialog_OnUpdateMicroFocus(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseUpdateMicroFocus(QInputDialog* self);
QTLIBC_API void QInputDialog_Create(QInputDialog* self);
QTLIBC_API void QInputDialog_OnCreate(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseCreate(QInputDialog* self);
QTLIBC_API void QInputDialog_Destroy(QInputDialog* self);
QTLIBC_API void QInputDialog_OnDestroy(QInputDialog* self, intptr_t slot);
QTLIBC_API void QInputDialog_QBaseDestroy(QInputDialog* self);
QTLIBC_API bool QInputDialog_FocusNextChild(QInputDialog* self);
QTLIBC_API void QInputDialog_OnFocusNextChild(QInputDialog* self, intptr_t slot);
QTLIBC_API bool QInputDialog_QBaseFocusNextChild(QInputDialog* self);
QTLIBC_API bool QInputDialog_FocusPreviousChild(QInputDialog* self);
QTLIBC_API void QInputDialog_OnFocusPreviousChild(QInputDialog* self, intptr_t slot);
QTLIBC_API bool QInputDialog_QBaseFocusPreviousChild(QInputDialog* self);
QTLIBC_API QObject* QInputDialog_Sender(const QInputDialog* self);
QTLIBC_API void QInputDialog_OnSender(const QInputDialog* self, intptr_t slot);
QTLIBC_API QObject* QInputDialog_QBaseSender(const QInputDialog* self);
QTLIBC_API int QInputDialog_SenderSignalIndex(const QInputDialog* self);
QTLIBC_API void QInputDialog_OnSenderSignalIndex(const QInputDialog* self, intptr_t slot);
QTLIBC_API int QInputDialog_QBaseSenderSignalIndex(const QInputDialog* self);
QTLIBC_API int QInputDialog_Receivers(const QInputDialog* self, const char* signal);
QTLIBC_API void QInputDialog_OnReceivers(const QInputDialog* self, intptr_t slot);
QTLIBC_API int QInputDialog_QBaseReceivers(const QInputDialog* self, const char* signal);
QTLIBC_API bool QInputDialog_IsSignalConnected(const QInputDialog* self, QMetaMethod* signal);
QTLIBC_API void QInputDialog_OnIsSignalConnected(const QInputDialog* self, intptr_t slot);
QTLIBC_API bool QInputDialog_QBaseIsSignalConnected(const QInputDialog* self, QMetaMethod* signal);
QTLIBC_API void QInputDialog_Delete(QInputDialog* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
