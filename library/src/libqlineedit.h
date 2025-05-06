#pragma once
#ifndef SRCC_LIBQLINEEDIT_H
#define SRCC_LIBQLINEEDIT_H

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
typedef struct QCompleter QCompleter;
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
typedef struct QValidator QValidator;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
typedef struct QWindow QWindow;
#endif

#ifdef __cplusplus
typedef QLineEdit::ActionPosition ActionPosition; // C++ enum
typedef QLineEdit::EchoMode EchoMode;             // C++ enum
#else
typedef int ActionPosition; // C ABI enum
typedef int EchoMode;       // C ABI enum
#endif

QTLIBC_API QLineEdit* QLineEdit_new(QWidget* parent);
QTLIBC_API QLineEdit* QLineEdit_new2();
QTLIBC_API QLineEdit* QLineEdit_new3(libqt_string param1);
QTLIBC_API QLineEdit* QLineEdit_new4(libqt_string param1, QWidget* parent);
QTLIBC_API QMetaObject* QLineEdit_MetaObject(const QLineEdit* self);
QTLIBC_API void* QLineEdit_Metacast(QLineEdit* self, const char* param1);
QTLIBC_API int QLineEdit_Metacall(QLineEdit* self, int param1, int param2, void** param3);
QTLIBC_API void QLineEdit_OnMetacall(QLineEdit* self, intptr_t slot);
QTLIBC_API int QLineEdit_QBaseMetacall(QLineEdit* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QLineEdit_Tr(const char* s);
QTLIBC_API libqt_string QLineEdit_Text(const QLineEdit* self);
QTLIBC_API libqt_string QLineEdit_DisplayText(const QLineEdit* self);
QTLIBC_API libqt_string QLineEdit_PlaceholderText(const QLineEdit* self);
QTLIBC_API void QLineEdit_SetPlaceholderText(QLineEdit* self, libqt_string placeholderText);
QTLIBC_API int QLineEdit_MaxLength(const QLineEdit* self);
QTLIBC_API void QLineEdit_SetMaxLength(QLineEdit* self, int maxLength);
QTLIBC_API void QLineEdit_SetFrame(QLineEdit* self, bool frame);
QTLIBC_API bool QLineEdit_HasFrame(const QLineEdit* self);
QTLIBC_API void QLineEdit_SetClearButtonEnabled(QLineEdit* self, bool enable);
QTLIBC_API bool QLineEdit_IsClearButtonEnabled(const QLineEdit* self);
QTLIBC_API int QLineEdit_EchoMode(const QLineEdit* self);
QTLIBC_API void QLineEdit_SetEchoMode(QLineEdit* self, int echoMode);
QTLIBC_API bool QLineEdit_IsReadOnly(const QLineEdit* self);
QTLIBC_API void QLineEdit_SetReadOnly(QLineEdit* self, bool readOnly);
QTLIBC_API void QLineEdit_SetValidator(QLineEdit* self, QValidator* validator);
QTLIBC_API QValidator* QLineEdit_Validator(const QLineEdit* self);
QTLIBC_API void QLineEdit_SetCompleter(QLineEdit* self, QCompleter* completer);
QTLIBC_API QCompleter* QLineEdit_Completer(const QLineEdit* self);
QTLIBC_API QSize* QLineEdit_SizeHint(const QLineEdit* self);
QTLIBC_API void QLineEdit_OnSizeHint(const QLineEdit* self, intptr_t slot);
QTLIBC_API QSize* QLineEdit_QBaseSizeHint(const QLineEdit* self);
QTLIBC_API QSize* QLineEdit_MinimumSizeHint(const QLineEdit* self);
QTLIBC_API void QLineEdit_OnMinimumSizeHint(const QLineEdit* self, intptr_t slot);
QTLIBC_API QSize* QLineEdit_QBaseMinimumSizeHint(const QLineEdit* self);
QTLIBC_API int QLineEdit_CursorPosition(const QLineEdit* self);
QTLIBC_API void QLineEdit_SetCursorPosition(QLineEdit* self, int cursorPosition);
QTLIBC_API int QLineEdit_CursorPositionAt(QLineEdit* self, QPoint* pos);
QTLIBC_API void QLineEdit_SetAlignment(QLineEdit* self, int flag);
QTLIBC_API int QLineEdit_Alignment(const QLineEdit* self);
QTLIBC_API void QLineEdit_CursorForward(QLineEdit* self, bool mark);
QTLIBC_API void QLineEdit_CursorBackward(QLineEdit* self, bool mark);
QTLIBC_API void QLineEdit_CursorWordForward(QLineEdit* self, bool mark);
QTLIBC_API void QLineEdit_CursorWordBackward(QLineEdit* self, bool mark);
QTLIBC_API void QLineEdit_Backspace(QLineEdit* self);
QTLIBC_API void QLineEdit_Del(QLineEdit* self);
QTLIBC_API void QLineEdit_Home(QLineEdit* self, bool mark);
QTLIBC_API void QLineEdit_End(QLineEdit* self, bool mark);
QTLIBC_API bool QLineEdit_IsModified(const QLineEdit* self);
QTLIBC_API void QLineEdit_SetModified(QLineEdit* self, bool modified);
QTLIBC_API void QLineEdit_SetSelection(QLineEdit* self, int param1, int param2);
QTLIBC_API bool QLineEdit_HasSelectedText(const QLineEdit* self);
QTLIBC_API libqt_string QLineEdit_SelectedText(const QLineEdit* self);
QTLIBC_API int QLineEdit_SelectionStart(const QLineEdit* self);
QTLIBC_API int QLineEdit_SelectionEnd(const QLineEdit* self);
QTLIBC_API int QLineEdit_SelectionLength(const QLineEdit* self);
QTLIBC_API bool QLineEdit_IsUndoAvailable(const QLineEdit* self);
QTLIBC_API bool QLineEdit_IsRedoAvailable(const QLineEdit* self);
QTLIBC_API void QLineEdit_SetDragEnabled(QLineEdit* self, bool b);
QTLIBC_API bool QLineEdit_DragEnabled(const QLineEdit* self);
QTLIBC_API void QLineEdit_SetCursorMoveStyle(QLineEdit* self, int style);
QTLIBC_API int QLineEdit_CursorMoveStyle(const QLineEdit* self);
QTLIBC_API libqt_string QLineEdit_InputMask(const QLineEdit* self);
QTLIBC_API void QLineEdit_SetInputMask(QLineEdit* self, libqt_string inputMask);
QTLIBC_API bool QLineEdit_HasAcceptableInput(const QLineEdit* self);
QTLIBC_API void QLineEdit_SetTextMargins(QLineEdit* self, int left, int top, int right, int bottom);
QTLIBC_API void QLineEdit_SetTextMarginsWithMargins(QLineEdit* self, QMargins* margins);
QTLIBC_API QMargins* QLineEdit_TextMargins(const QLineEdit* self);
QTLIBC_API void QLineEdit_AddAction(QLineEdit* self, QAction* action, int position);
QTLIBC_API QAction* QLineEdit_AddAction2(QLineEdit* self, QIcon* icon, int position);
QTLIBC_API void QLineEdit_SetText(QLineEdit* self, libqt_string text);
QTLIBC_API void QLineEdit_Clear(QLineEdit* self);
QTLIBC_API void QLineEdit_SelectAll(QLineEdit* self);
QTLIBC_API void QLineEdit_Undo(QLineEdit* self);
QTLIBC_API void QLineEdit_Redo(QLineEdit* self);
QTLIBC_API void QLineEdit_Cut(QLineEdit* self);
QTLIBC_API void QLineEdit_Copy(const QLineEdit* self);
QTLIBC_API void QLineEdit_Paste(QLineEdit* self);
QTLIBC_API void QLineEdit_Deselect(QLineEdit* self);
QTLIBC_API void QLineEdit_Insert(QLineEdit* self, libqt_string param1);
QTLIBC_API QMenu* QLineEdit_CreateStandardContextMenu(QLineEdit* self);
QTLIBC_API void QLineEdit_TextChanged(QLineEdit* self, libqt_string param1);
void QLineEdit_Connect_TextChanged(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_TextEdited(QLineEdit* self, libqt_string param1);
void QLineEdit_Connect_TextEdited(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_CursorPositionChanged(QLineEdit* self, int param1, int param2);
void QLineEdit_Connect_CursorPositionChanged(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_ReturnPressed(QLineEdit* self);
void QLineEdit_Connect_ReturnPressed(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_EditingFinished(QLineEdit* self);
void QLineEdit_Connect_EditingFinished(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_SelectionChanged(QLineEdit* self);
void QLineEdit_Connect_SelectionChanged(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_InputRejected(QLineEdit* self);
void QLineEdit_Connect_InputRejected(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_MousePressEvent(QLineEdit* self, QMouseEvent* param1);
QTLIBC_API void QLineEdit_OnMousePressEvent(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_QBaseMousePressEvent(QLineEdit* self, QMouseEvent* param1);
QTLIBC_API void QLineEdit_MouseMoveEvent(QLineEdit* self, QMouseEvent* param1);
QTLIBC_API void QLineEdit_OnMouseMoveEvent(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_QBaseMouseMoveEvent(QLineEdit* self, QMouseEvent* param1);
QTLIBC_API void QLineEdit_MouseReleaseEvent(QLineEdit* self, QMouseEvent* param1);
QTLIBC_API void QLineEdit_OnMouseReleaseEvent(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_QBaseMouseReleaseEvent(QLineEdit* self, QMouseEvent* param1);
QTLIBC_API void QLineEdit_MouseDoubleClickEvent(QLineEdit* self, QMouseEvent* param1);
QTLIBC_API void QLineEdit_OnMouseDoubleClickEvent(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_QBaseMouseDoubleClickEvent(QLineEdit* self, QMouseEvent* param1);
QTLIBC_API void QLineEdit_KeyPressEvent(QLineEdit* self, QKeyEvent* param1);
QTLIBC_API void QLineEdit_OnKeyPressEvent(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_QBaseKeyPressEvent(QLineEdit* self, QKeyEvent* param1);
QTLIBC_API void QLineEdit_KeyReleaseEvent(QLineEdit* self, QKeyEvent* param1);
QTLIBC_API void QLineEdit_OnKeyReleaseEvent(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_QBaseKeyReleaseEvent(QLineEdit* self, QKeyEvent* param1);
QTLIBC_API void QLineEdit_FocusInEvent(QLineEdit* self, QFocusEvent* param1);
QTLIBC_API void QLineEdit_OnFocusInEvent(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_QBaseFocusInEvent(QLineEdit* self, QFocusEvent* param1);
QTLIBC_API void QLineEdit_FocusOutEvent(QLineEdit* self, QFocusEvent* param1);
QTLIBC_API void QLineEdit_OnFocusOutEvent(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_QBaseFocusOutEvent(QLineEdit* self, QFocusEvent* param1);
QTLIBC_API void QLineEdit_PaintEvent(QLineEdit* self, QPaintEvent* param1);
QTLIBC_API void QLineEdit_OnPaintEvent(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_QBasePaintEvent(QLineEdit* self, QPaintEvent* param1);
QTLIBC_API void QLineEdit_DragEnterEvent(QLineEdit* self, QDragEnterEvent* param1);
QTLIBC_API void QLineEdit_OnDragEnterEvent(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_QBaseDragEnterEvent(QLineEdit* self, QDragEnterEvent* param1);
QTLIBC_API void QLineEdit_DragMoveEvent(QLineEdit* self, QDragMoveEvent* e);
QTLIBC_API void QLineEdit_OnDragMoveEvent(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_QBaseDragMoveEvent(QLineEdit* self, QDragMoveEvent* e);
QTLIBC_API void QLineEdit_DragLeaveEvent(QLineEdit* self, QDragLeaveEvent* e);
QTLIBC_API void QLineEdit_OnDragLeaveEvent(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_QBaseDragLeaveEvent(QLineEdit* self, QDragLeaveEvent* e);
QTLIBC_API void QLineEdit_DropEvent(QLineEdit* self, QDropEvent* param1);
QTLIBC_API void QLineEdit_OnDropEvent(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_QBaseDropEvent(QLineEdit* self, QDropEvent* param1);
QTLIBC_API void QLineEdit_ChangeEvent(QLineEdit* self, QEvent* param1);
QTLIBC_API void QLineEdit_OnChangeEvent(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_QBaseChangeEvent(QLineEdit* self, QEvent* param1);
QTLIBC_API void QLineEdit_ContextMenuEvent(QLineEdit* self, QContextMenuEvent* param1);
QTLIBC_API void QLineEdit_OnContextMenuEvent(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_QBaseContextMenuEvent(QLineEdit* self, QContextMenuEvent* param1);
QTLIBC_API void QLineEdit_InputMethodEvent(QLineEdit* self, QInputMethodEvent* param1);
QTLIBC_API void QLineEdit_OnInputMethodEvent(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_QBaseInputMethodEvent(QLineEdit* self, QInputMethodEvent* param1);
QTLIBC_API void QLineEdit_InitStyleOption(const QLineEdit* self, QStyleOptionFrame* option);
QTLIBC_API void QLineEdit_OnInitStyleOption(const QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_QBaseInitStyleOption(const QLineEdit* self, QStyleOptionFrame* option);
QTLIBC_API QVariant* QLineEdit_InputMethodQuery(const QLineEdit* self, int param1);
QTLIBC_API void QLineEdit_OnInputMethodQuery(const QLineEdit* self, intptr_t slot);
QTLIBC_API QVariant* QLineEdit_QBaseInputMethodQuery(const QLineEdit* self, int param1);
QTLIBC_API QVariant* QLineEdit_InputMethodQuery2(const QLineEdit* self, int property, QVariant* argument);
QTLIBC_API void QLineEdit_TimerEvent(QLineEdit* self, QTimerEvent* param1);
QTLIBC_API void QLineEdit_OnTimerEvent(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_QBaseTimerEvent(QLineEdit* self, QTimerEvent* param1);
QTLIBC_API bool QLineEdit_Event(QLineEdit* self, QEvent* param1);
QTLIBC_API void QLineEdit_OnEvent(QLineEdit* self, intptr_t slot);
QTLIBC_API bool QLineEdit_QBaseEvent(QLineEdit* self, QEvent* param1);
QTLIBC_API libqt_string QLineEdit_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QLineEdit_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QLineEdit_CursorForward2(QLineEdit* self, bool mark, int steps);
QTLIBC_API void QLineEdit_CursorBackward2(QLineEdit* self, bool mark, int steps);
QTLIBC_API int QLineEdit_DevType(const QLineEdit* self);
QTLIBC_API void QLineEdit_OnDevType(const QLineEdit* self, intptr_t slot);
QTLIBC_API int QLineEdit_QBaseDevType(const QLineEdit* self);
QTLIBC_API void QLineEdit_SetVisible(QLineEdit* self, bool visible);
QTLIBC_API void QLineEdit_OnSetVisible(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_QBaseSetVisible(QLineEdit* self, bool visible);
QTLIBC_API int QLineEdit_HeightForWidth(const QLineEdit* self, int param1);
QTLIBC_API void QLineEdit_OnHeightForWidth(const QLineEdit* self, intptr_t slot);
QTLIBC_API int QLineEdit_QBaseHeightForWidth(const QLineEdit* self, int param1);
QTLIBC_API bool QLineEdit_HasHeightForWidth(const QLineEdit* self);
QTLIBC_API void QLineEdit_OnHasHeightForWidth(const QLineEdit* self, intptr_t slot);
QTLIBC_API bool QLineEdit_QBaseHasHeightForWidth(const QLineEdit* self);
QTLIBC_API QPaintEngine* QLineEdit_PaintEngine(const QLineEdit* self);
QTLIBC_API void QLineEdit_OnPaintEngine(const QLineEdit* self, intptr_t slot);
QTLIBC_API QPaintEngine* QLineEdit_QBasePaintEngine(const QLineEdit* self);
QTLIBC_API void QLineEdit_WheelEvent(QLineEdit* self, QWheelEvent* event);
QTLIBC_API void QLineEdit_OnWheelEvent(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_QBaseWheelEvent(QLineEdit* self, QWheelEvent* event);
QTLIBC_API void QLineEdit_EnterEvent(QLineEdit* self, QEnterEvent* event);
QTLIBC_API void QLineEdit_OnEnterEvent(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_QBaseEnterEvent(QLineEdit* self, QEnterEvent* event);
QTLIBC_API void QLineEdit_LeaveEvent(QLineEdit* self, QEvent* event);
QTLIBC_API void QLineEdit_OnLeaveEvent(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_QBaseLeaveEvent(QLineEdit* self, QEvent* event);
QTLIBC_API void QLineEdit_MoveEvent(QLineEdit* self, QMoveEvent* event);
QTLIBC_API void QLineEdit_OnMoveEvent(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_QBaseMoveEvent(QLineEdit* self, QMoveEvent* event);
QTLIBC_API void QLineEdit_ResizeEvent(QLineEdit* self, QResizeEvent* event);
QTLIBC_API void QLineEdit_OnResizeEvent(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_QBaseResizeEvent(QLineEdit* self, QResizeEvent* event);
QTLIBC_API void QLineEdit_CloseEvent(QLineEdit* self, QCloseEvent* event);
QTLIBC_API void QLineEdit_OnCloseEvent(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_QBaseCloseEvent(QLineEdit* self, QCloseEvent* event);
QTLIBC_API void QLineEdit_TabletEvent(QLineEdit* self, QTabletEvent* event);
QTLIBC_API void QLineEdit_OnTabletEvent(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_QBaseTabletEvent(QLineEdit* self, QTabletEvent* event);
QTLIBC_API void QLineEdit_ActionEvent(QLineEdit* self, QActionEvent* event);
QTLIBC_API void QLineEdit_OnActionEvent(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_QBaseActionEvent(QLineEdit* self, QActionEvent* event);
QTLIBC_API void QLineEdit_ShowEvent(QLineEdit* self, QShowEvent* event);
QTLIBC_API void QLineEdit_OnShowEvent(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_QBaseShowEvent(QLineEdit* self, QShowEvent* event);
QTLIBC_API void QLineEdit_HideEvent(QLineEdit* self, QHideEvent* event);
QTLIBC_API void QLineEdit_OnHideEvent(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_QBaseHideEvent(QLineEdit* self, QHideEvent* event);
QTLIBC_API bool QLineEdit_NativeEvent(QLineEdit* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QLineEdit_OnNativeEvent(QLineEdit* self, intptr_t slot);
QTLIBC_API bool QLineEdit_QBaseNativeEvent(QLineEdit* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API bool QLineEdit_FocusNextPrevChild(QLineEdit* self, bool next);
QTLIBC_API void QLineEdit_OnFocusNextPrevChild(QLineEdit* self, intptr_t slot);
QTLIBC_API bool QLineEdit_QBaseFocusNextPrevChild(QLineEdit* self, bool next);
QTLIBC_API bool QLineEdit_EventFilter(QLineEdit* self, QObject* watched, QEvent* event);
QTLIBC_API void QLineEdit_OnEventFilter(QLineEdit* self, intptr_t slot);
QTLIBC_API bool QLineEdit_QBaseEventFilter(QLineEdit* self, QObject* watched, QEvent* event);
QTLIBC_API void QLineEdit_ChildEvent(QLineEdit* self, QChildEvent* event);
QTLIBC_API void QLineEdit_OnChildEvent(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_QBaseChildEvent(QLineEdit* self, QChildEvent* event);
QTLIBC_API void QLineEdit_CustomEvent(QLineEdit* self, QEvent* event);
QTLIBC_API void QLineEdit_OnCustomEvent(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_QBaseCustomEvent(QLineEdit* self, QEvent* event);
QTLIBC_API void QLineEdit_ConnectNotify(QLineEdit* self, QMetaMethod* signal);
QTLIBC_API void QLineEdit_OnConnectNotify(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_QBaseConnectNotify(QLineEdit* self, QMetaMethod* signal);
QTLIBC_API void QLineEdit_DisconnectNotify(QLineEdit* self, QMetaMethod* signal);
QTLIBC_API void QLineEdit_OnDisconnectNotify(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_QBaseDisconnectNotify(QLineEdit* self, QMetaMethod* signal);
QTLIBC_API int QLineEdit_Metric(const QLineEdit* self, int param1);
QTLIBC_API void QLineEdit_OnMetric(const QLineEdit* self, intptr_t slot);
QTLIBC_API int QLineEdit_QBaseMetric(const QLineEdit* self, int param1);
QTLIBC_API void QLineEdit_InitPainter(const QLineEdit* self, QPainter* painter);
QTLIBC_API void QLineEdit_OnInitPainter(const QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_QBaseInitPainter(const QLineEdit* self, QPainter* painter);
QTLIBC_API QPaintDevice* QLineEdit_Redirected(const QLineEdit* self, QPoint* offset);
QTLIBC_API void QLineEdit_OnRedirected(const QLineEdit* self, intptr_t slot);
QTLIBC_API QPaintDevice* QLineEdit_QBaseRedirected(const QLineEdit* self, QPoint* offset);
QTLIBC_API QPainter* QLineEdit_SharedPainter(const QLineEdit* self);
QTLIBC_API void QLineEdit_OnSharedPainter(const QLineEdit* self, intptr_t slot);
QTLIBC_API QPainter* QLineEdit_QBaseSharedPainter(const QLineEdit* self);
QTLIBC_API QRect* QLineEdit_CursorRect(const QLineEdit* self);
QTLIBC_API void QLineEdit_OnCursorRect(const QLineEdit* self, intptr_t slot);
QTLIBC_API QRect* QLineEdit_QBaseCursorRect(const QLineEdit* self);
QTLIBC_API void QLineEdit_UpdateMicroFocus(QLineEdit* self);
QTLIBC_API void QLineEdit_OnUpdateMicroFocus(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_QBaseUpdateMicroFocus(QLineEdit* self);
QTLIBC_API void QLineEdit_Create(QLineEdit* self);
QTLIBC_API void QLineEdit_OnCreate(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_QBaseCreate(QLineEdit* self);
QTLIBC_API void QLineEdit_Destroy(QLineEdit* self);
QTLIBC_API void QLineEdit_OnDestroy(QLineEdit* self, intptr_t slot);
QTLIBC_API void QLineEdit_QBaseDestroy(QLineEdit* self);
QTLIBC_API bool QLineEdit_FocusNextChild(QLineEdit* self);
QTLIBC_API void QLineEdit_OnFocusNextChild(QLineEdit* self, intptr_t slot);
QTLIBC_API bool QLineEdit_QBaseFocusNextChild(QLineEdit* self);
QTLIBC_API bool QLineEdit_FocusPreviousChild(QLineEdit* self);
QTLIBC_API void QLineEdit_OnFocusPreviousChild(QLineEdit* self, intptr_t slot);
QTLIBC_API bool QLineEdit_QBaseFocusPreviousChild(QLineEdit* self);
QTLIBC_API QObject* QLineEdit_Sender(const QLineEdit* self);
QTLIBC_API void QLineEdit_OnSender(const QLineEdit* self, intptr_t slot);
QTLIBC_API QObject* QLineEdit_QBaseSender(const QLineEdit* self);
QTLIBC_API int QLineEdit_SenderSignalIndex(const QLineEdit* self);
QTLIBC_API void QLineEdit_OnSenderSignalIndex(const QLineEdit* self, intptr_t slot);
QTLIBC_API int QLineEdit_QBaseSenderSignalIndex(const QLineEdit* self);
QTLIBC_API int QLineEdit_Receivers(const QLineEdit* self, const char* signal);
QTLIBC_API void QLineEdit_OnReceivers(const QLineEdit* self, intptr_t slot);
QTLIBC_API int QLineEdit_QBaseReceivers(const QLineEdit* self, const char* signal);
QTLIBC_API bool QLineEdit_IsSignalConnected(const QLineEdit* self, QMetaMethod* signal);
QTLIBC_API void QLineEdit_OnIsSignalConnected(const QLineEdit* self, intptr_t slot);
QTLIBC_API bool QLineEdit_QBaseIsSignalConnected(const QLineEdit* self, QMetaMethod* signal);
QTLIBC_API void QLineEdit_Delete(QLineEdit* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
