#pragma once
#ifndef SRC_QTC_LIBQFONTCOMBOBOX_H
#define SRC_QTC_LIBQFONTCOMBOBOX_H

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
typedef struct QAbstractItemDelegate QAbstractItemDelegate;
typedef struct QAbstractItemModel QAbstractItemModel;
typedef struct QAbstractItemView QAbstractItemView;
typedef struct QAction QAction;
typedef struct QActionEvent QActionEvent;
typedef struct QAnyStringView QAnyStringView;
typedef struct QBackingStore QBackingStore;
typedef struct QBindingStorage QBindingStorage;
typedef struct QBitmap QBitmap;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QComboBox QComboBox;
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
typedef struct QFontComboBox QFontComboBox;
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
typedef struct QModelIndex QModelIndex;
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
typedef struct QStyleOptionComboBox QStyleOptionComboBox;
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
typedef QFontComboBox::FontFilter FontFilter;   // C++ enum
typedef QFontComboBox::FontFilters FontFilters; // C++ QFlags
#else
typedef int FontFilter;  // C ABI enum
typedef int FontFilters; // C ABI QFlags
#endif

QTLIBC_API QFontComboBox* QFontComboBox_new(QWidget* parent);
QTLIBC_API QFontComboBox* QFontComboBox_new2();
QTLIBC_API QMetaObject* QFontComboBox_MetaObject(const QFontComboBox* self);
QTLIBC_API void* QFontComboBox_Metacast(QFontComboBox* self, const char* param1);
QTLIBC_API int QFontComboBox_Metacall(QFontComboBox* self, int param1, int param2, void** param3);
QTLIBC_API void QFontComboBox_OnMetacall(QFontComboBox* self, intptr_t slot);
QTLIBC_API int QFontComboBox_QBaseMetacall(QFontComboBox* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QFontComboBox_Tr(const char* s);
QTLIBC_API void QFontComboBox_SetWritingSystem(QFontComboBox* self, int writingSystem);
QTLIBC_API int QFontComboBox_WritingSystem(const QFontComboBox* self);
QTLIBC_API void QFontComboBox_SetFontFilters(QFontComboBox* self, int filters);
QTLIBC_API int QFontComboBox_FontFilters(const QFontComboBox* self);
QTLIBC_API QFont* QFontComboBox_CurrentFont(const QFontComboBox* self);
QTLIBC_API QSize* QFontComboBox_SizeHint(const QFontComboBox* self);
QTLIBC_API void QFontComboBox_OnSizeHint(const QFontComboBox* self, intptr_t slot);
QTLIBC_API QSize* QFontComboBox_QBaseSizeHint(const QFontComboBox* self);
QTLIBC_API void QFontComboBox_SetSampleTextForSystem(QFontComboBox* self, int writingSystem, libqt_string sampleText);
QTLIBC_API libqt_string QFontComboBox_SampleTextForSystem(const QFontComboBox* self, int writingSystem);
QTLIBC_API void QFontComboBox_SetSampleTextForFont(QFontComboBox* self, libqt_string fontFamily, libqt_string sampleText);
QTLIBC_API libqt_string QFontComboBox_SampleTextForFont(const QFontComboBox* self, libqt_string fontFamily);
QTLIBC_API void QFontComboBox_SetDisplayFont(QFontComboBox* self, libqt_string fontFamily, QFont* font);
QTLIBC_API void QFontComboBox_SetCurrentFont(QFontComboBox* self, QFont* f);
QTLIBC_API void QFontComboBox_CurrentFontChanged(QFontComboBox* self, QFont* f);
QTLIBC_API void QFontComboBox_Connect_CurrentFontChanged(QFontComboBox* self, intptr_t slot);
QTLIBC_API bool QFontComboBox_Event(QFontComboBox* self, QEvent* e);
QTLIBC_API void QFontComboBox_OnEvent(QFontComboBox* self, intptr_t slot);
QTLIBC_API bool QFontComboBox_QBaseEvent(QFontComboBox* self, QEvent* e);
QTLIBC_API libqt_string QFontComboBox_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QFontComboBox_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QFontComboBox_SetModel(QFontComboBox* self, QAbstractItemModel* model);
QTLIBC_API void QFontComboBox_OnSetModel(QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseSetModel(QFontComboBox* self, QAbstractItemModel* model);
QTLIBC_API QSize* QFontComboBox_MinimumSizeHint(const QFontComboBox* self);
QTLIBC_API void QFontComboBox_OnMinimumSizeHint(const QFontComboBox* self, intptr_t slot);
QTLIBC_API QSize* QFontComboBox_QBaseMinimumSizeHint(const QFontComboBox* self);
QTLIBC_API void QFontComboBox_ShowPopup(QFontComboBox* self);
QTLIBC_API void QFontComboBox_OnShowPopup(QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseShowPopup(QFontComboBox* self);
QTLIBC_API void QFontComboBox_HidePopup(QFontComboBox* self);
QTLIBC_API void QFontComboBox_OnHidePopup(QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseHidePopup(QFontComboBox* self);
QTLIBC_API QVariant* QFontComboBox_InputMethodQuery(const QFontComboBox* self, int param1);
QTLIBC_API void QFontComboBox_OnInputMethodQuery(const QFontComboBox* self, intptr_t slot);
QTLIBC_API QVariant* QFontComboBox_QBaseInputMethodQuery(const QFontComboBox* self, int param1);
QTLIBC_API void QFontComboBox_FocusInEvent(QFontComboBox* self, QFocusEvent* e);
QTLIBC_API void QFontComboBox_OnFocusInEvent(QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseFocusInEvent(QFontComboBox* self, QFocusEvent* e);
QTLIBC_API void QFontComboBox_FocusOutEvent(QFontComboBox* self, QFocusEvent* e);
QTLIBC_API void QFontComboBox_OnFocusOutEvent(QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseFocusOutEvent(QFontComboBox* self, QFocusEvent* e);
QTLIBC_API void QFontComboBox_ChangeEvent(QFontComboBox* self, QEvent* e);
QTLIBC_API void QFontComboBox_OnChangeEvent(QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseChangeEvent(QFontComboBox* self, QEvent* e);
QTLIBC_API void QFontComboBox_ResizeEvent(QFontComboBox* self, QResizeEvent* e);
QTLIBC_API void QFontComboBox_OnResizeEvent(QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseResizeEvent(QFontComboBox* self, QResizeEvent* e);
QTLIBC_API void QFontComboBox_PaintEvent(QFontComboBox* self, QPaintEvent* e);
QTLIBC_API void QFontComboBox_OnPaintEvent(QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBasePaintEvent(QFontComboBox* self, QPaintEvent* e);
QTLIBC_API void QFontComboBox_ShowEvent(QFontComboBox* self, QShowEvent* e);
QTLIBC_API void QFontComboBox_OnShowEvent(QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseShowEvent(QFontComboBox* self, QShowEvent* e);
QTLIBC_API void QFontComboBox_HideEvent(QFontComboBox* self, QHideEvent* e);
QTLIBC_API void QFontComboBox_OnHideEvent(QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseHideEvent(QFontComboBox* self, QHideEvent* e);
QTLIBC_API void QFontComboBox_MousePressEvent(QFontComboBox* self, QMouseEvent* e);
QTLIBC_API void QFontComboBox_OnMousePressEvent(QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseMousePressEvent(QFontComboBox* self, QMouseEvent* e);
QTLIBC_API void QFontComboBox_MouseReleaseEvent(QFontComboBox* self, QMouseEvent* e);
QTLIBC_API void QFontComboBox_OnMouseReleaseEvent(QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseMouseReleaseEvent(QFontComboBox* self, QMouseEvent* e);
QTLIBC_API void QFontComboBox_KeyPressEvent(QFontComboBox* self, QKeyEvent* e);
QTLIBC_API void QFontComboBox_OnKeyPressEvent(QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseKeyPressEvent(QFontComboBox* self, QKeyEvent* e);
QTLIBC_API void QFontComboBox_KeyReleaseEvent(QFontComboBox* self, QKeyEvent* e);
QTLIBC_API void QFontComboBox_OnKeyReleaseEvent(QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseKeyReleaseEvent(QFontComboBox* self, QKeyEvent* e);
QTLIBC_API void QFontComboBox_WheelEvent(QFontComboBox* self, QWheelEvent* e);
QTLIBC_API void QFontComboBox_OnWheelEvent(QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseWheelEvent(QFontComboBox* self, QWheelEvent* e);
QTLIBC_API void QFontComboBox_ContextMenuEvent(QFontComboBox* self, QContextMenuEvent* e);
QTLIBC_API void QFontComboBox_OnContextMenuEvent(QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseContextMenuEvent(QFontComboBox* self, QContextMenuEvent* e);
QTLIBC_API void QFontComboBox_InputMethodEvent(QFontComboBox* self, QInputMethodEvent* param1);
QTLIBC_API void QFontComboBox_OnInputMethodEvent(QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseInputMethodEvent(QFontComboBox* self, QInputMethodEvent* param1);
QTLIBC_API int QFontComboBox_DevType(const QFontComboBox* self);
QTLIBC_API void QFontComboBox_OnDevType(const QFontComboBox* self, intptr_t slot);
QTLIBC_API int QFontComboBox_QBaseDevType(const QFontComboBox* self);
QTLIBC_API void QFontComboBox_SetVisible(QFontComboBox* self, bool visible);
QTLIBC_API void QFontComboBox_OnSetVisible(QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseSetVisible(QFontComboBox* self, bool visible);
QTLIBC_API int QFontComboBox_HeightForWidth(const QFontComboBox* self, int param1);
QTLIBC_API void QFontComboBox_OnHeightForWidth(const QFontComboBox* self, intptr_t slot);
QTLIBC_API int QFontComboBox_QBaseHeightForWidth(const QFontComboBox* self, int param1);
QTLIBC_API bool QFontComboBox_HasHeightForWidth(const QFontComboBox* self);
QTLIBC_API void QFontComboBox_OnHasHeightForWidth(const QFontComboBox* self, intptr_t slot);
QTLIBC_API bool QFontComboBox_QBaseHasHeightForWidth(const QFontComboBox* self);
QTLIBC_API QPaintEngine* QFontComboBox_PaintEngine(const QFontComboBox* self);
QTLIBC_API void QFontComboBox_OnPaintEngine(const QFontComboBox* self, intptr_t slot);
QTLIBC_API QPaintEngine* QFontComboBox_QBasePaintEngine(const QFontComboBox* self);
QTLIBC_API void QFontComboBox_MouseDoubleClickEvent(QFontComboBox* self, QMouseEvent* event);
QTLIBC_API void QFontComboBox_OnMouseDoubleClickEvent(QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseMouseDoubleClickEvent(QFontComboBox* self, QMouseEvent* event);
QTLIBC_API void QFontComboBox_MouseMoveEvent(QFontComboBox* self, QMouseEvent* event);
QTLIBC_API void QFontComboBox_OnMouseMoveEvent(QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseMouseMoveEvent(QFontComboBox* self, QMouseEvent* event);
QTLIBC_API void QFontComboBox_EnterEvent(QFontComboBox* self, QEnterEvent* event);
QTLIBC_API void QFontComboBox_OnEnterEvent(QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseEnterEvent(QFontComboBox* self, QEnterEvent* event);
QTLIBC_API void QFontComboBox_LeaveEvent(QFontComboBox* self, QEvent* event);
QTLIBC_API void QFontComboBox_OnLeaveEvent(QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseLeaveEvent(QFontComboBox* self, QEvent* event);
QTLIBC_API void QFontComboBox_MoveEvent(QFontComboBox* self, QMoveEvent* event);
QTLIBC_API void QFontComboBox_OnMoveEvent(QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseMoveEvent(QFontComboBox* self, QMoveEvent* event);
QTLIBC_API void QFontComboBox_CloseEvent(QFontComboBox* self, QCloseEvent* event);
QTLIBC_API void QFontComboBox_OnCloseEvent(QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseCloseEvent(QFontComboBox* self, QCloseEvent* event);
QTLIBC_API void QFontComboBox_TabletEvent(QFontComboBox* self, QTabletEvent* event);
QTLIBC_API void QFontComboBox_OnTabletEvent(QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseTabletEvent(QFontComboBox* self, QTabletEvent* event);
QTLIBC_API void QFontComboBox_ActionEvent(QFontComboBox* self, QActionEvent* event);
QTLIBC_API void QFontComboBox_OnActionEvent(QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseActionEvent(QFontComboBox* self, QActionEvent* event);
QTLIBC_API void QFontComboBox_DragEnterEvent(QFontComboBox* self, QDragEnterEvent* event);
QTLIBC_API void QFontComboBox_OnDragEnterEvent(QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseDragEnterEvent(QFontComboBox* self, QDragEnterEvent* event);
QTLIBC_API void QFontComboBox_DragMoveEvent(QFontComboBox* self, QDragMoveEvent* event);
QTLIBC_API void QFontComboBox_OnDragMoveEvent(QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseDragMoveEvent(QFontComboBox* self, QDragMoveEvent* event);
QTLIBC_API void QFontComboBox_DragLeaveEvent(QFontComboBox* self, QDragLeaveEvent* event);
QTLIBC_API void QFontComboBox_OnDragLeaveEvent(QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseDragLeaveEvent(QFontComboBox* self, QDragLeaveEvent* event);
QTLIBC_API void QFontComboBox_DropEvent(QFontComboBox* self, QDropEvent* event);
QTLIBC_API void QFontComboBox_OnDropEvent(QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseDropEvent(QFontComboBox* self, QDropEvent* event);
QTLIBC_API bool QFontComboBox_NativeEvent(QFontComboBox* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QFontComboBox_OnNativeEvent(QFontComboBox* self, intptr_t slot);
QTLIBC_API bool QFontComboBox_QBaseNativeEvent(QFontComboBox* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API bool QFontComboBox_FocusNextPrevChild(QFontComboBox* self, bool next);
QTLIBC_API void QFontComboBox_OnFocusNextPrevChild(QFontComboBox* self, intptr_t slot);
QTLIBC_API bool QFontComboBox_QBaseFocusNextPrevChild(QFontComboBox* self, bool next);
QTLIBC_API bool QFontComboBox_EventFilter(QFontComboBox* self, QObject* watched, QEvent* event);
QTLIBC_API void QFontComboBox_OnEventFilter(QFontComboBox* self, intptr_t slot);
QTLIBC_API bool QFontComboBox_QBaseEventFilter(QFontComboBox* self, QObject* watched, QEvent* event);
QTLIBC_API void QFontComboBox_TimerEvent(QFontComboBox* self, QTimerEvent* event);
QTLIBC_API void QFontComboBox_OnTimerEvent(QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseTimerEvent(QFontComboBox* self, QTimerEvent* event);
QTLIBC_API void QFontComboBox_ChildEvent(QFontComboBox* self, QChildEvent* event);
QTLIBC_API void QFontComboBox_OnChildEvent(QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseChildEvent(QFontComboBox* self, QChildEvent* event);
QTLIBC_API void QFontComboBox_CustomEvent(QFontComboBox* self, QEvent* event);
QTLIBC_API void QFontComboBox_OnCustomEvent(QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseCustomEvent(QFontComboBox* self, QEvent* event);
QTLIBC_API void QFontComboBox_ConnectNotify(QFontComboBox* self, QMetaMethod* signal);
QTLIBC_API void QFontComboBox_OnConnectNotify(QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseConnectNotify(QFontComboBox* self, QMetaMethod* signal);
QTLIBC_API void QFontComboBox_DisconnectNotify(QFontComboBox* self, QMetaMethod* signal);
QTLIBC_API void QFontComboBox_OnDisconnectNotify(QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseDisconnectNotify(QFontComboBox* self, QMetaMethod* signal);
QTLIBC_API void QFontComboBox_InitStyleOption(const QFontComboBox* self, QStyleOptionComboBox* option);
QTLIBC_API void QFontComboBox_OnInitStyleOption(const QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseInitStyleOption(const QFontComboBox* self, QStyleOptionComboBox* option);
QTLIBC_API int QFontComboBox_Metric(const QFontComboBox* self, int param1);
QTLIBC_API void QFontComboBox_OnMetric(const QFontComboBox* self, intptr_t slot);
QTLIBC_API int QFontComboBox_QBaseMetric(const QFontComboBox* self, int param1);
QTLIBC_API void QFontComboBox_InitPainter(const QFontComboBox* self, QPainter* painter);
QTLIBC_API void QFontComboBox_OnInitPainter(const QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseInitPainter(const QFontComboBox* self, QPainter* painter);
QTLIBC_API QPaintDevice* QFontComboBox_Redirected(const QFontComboBox* self, QPoint* offset);
QTLIBC_API void QFontComboBox_OnRedirected(const QFontComboBox* self, intptr_t slot);
QTLIBC_API QPaintDevice* QFontComboBox_QBaseRedirected(const QFontComboBox* self, QPoint* offset);
QTLIBC_API QPainter* QFontComboBox_SharedPainter(const QFontComboBox* self);
QTLIBC_API void QFontComboBox_OnSharedPainter(const QFontComboBox* self, intptr_t slot);
QTLIBC_API QPainter* QFontComboBox_QBaseSharedPainter(const QFontComboBox* self);
QTLIBC_API void QFontComboBox_UpdateMicroFocus(QFontComboBox* self);
QTLIBC_API void QFontComboBox_OnUpdateMicroFocus(QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseUpdateMicroFocus(QFontComboBox* self);
QTLIBC_API void QFontComboBox_Create(QFontComboBox* self);
QTLIBC_API void QFontComboBox_OnCreate(QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseCreate(QFontComboBox* self);
QTLIBC_API void QFontComboBox_Destroy(QFontComboBox* self);
QTLIBC_API void QFontComboBox_OnDestroy(QFontComboBox* self, intptr_t slot);
QTLIBC_API void QFontComboBox_QBaseDestroy(QFontComboBox* self);
QTLIBC_API bool QFontComboBox_FocusNextChild(QFontComboBox* self);
QTLIBC_API void QFontComboBox_OnFocusNextChild(QFontComboBox* self, intptr_t slot);
QTLIBC_API bool QFontComboBox_QBaseFocusNextChild(QFontComboBox* self);
QTLIBC_API bool QFontComboBox_FocusPreviousChild(QFontComboBox* self);
QTLIBC_API void QFontComboBox_OnFocusPreviousChild(QFontComboBox* self, intptr_t slot);
QTLIBC_API bool QFontComboBox_QBaseFocusPreviousChild(QFontComboBox* self);
QTLIBC_API QObject* QFontComboBox_Sender(const QFontComboBox* self);
QTLIBC_API void QFontComboBox_OnSender(const QFontComboBox* self, intptr_t slot);
QTLIBC_API QObject* QFontComboBox_QBaseSender(const QFontComboBox* self);
QTLIBC_API int QFontComboBox_SenderSignalIndex(const QFontComboBox* self);
QTLIBC_API void QFontComboBox_OnSenderSignalIndex(const QFontComboBox* self, intptr_t slot);
QTLIBC_API int QFontComboBox_QBaseSenderSignalIndex(const QFontComboBox* self);
QTLIBC_API int QFontComboBox_Receivers(const QFontComboBox* self, const char* signal);
QTLIBC_API void QFontComboBox_OnReceivers(const QFontComboBox* self, intptr_t slot);
QTLIBC_API int QFontComboBox_QBaseReceivers(const QFontComboBox* self, const char* signal);
QTLIBC_API bool QFontComboBox_IsSignalConnected(const QFontComboBox* self, QMetaMethod* signal);
QTLIBC_API void QFontComboBox_OnIsSignalConnected(const QFontComboBox* self, intptr_t slot);
QTLIBC_API bool QFontComboBox_QBaseIsSignalConnected(const QFontComboBox* self, QMetaMethod* signal);
QTLIBC_API void QFontComboBox_Delete(QFontComboBox* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
