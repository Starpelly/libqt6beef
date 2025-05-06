#pragma once
#ifndef SRC_QTC_LIBQCOMBOBOX_H
#define SRC_QTC_LIBQCOMBOBOX_H

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
typedef QComboBox::InsertPolicy InsertPolicy;         // C++ enum
typedef QComboBox::SizeAdjustPolicy SizeAdjustPolicy; // C++ enum
#else
typedef int InsertPolicy;     // C ABI enum
typedef int SizeAdjustPolicy; // C ABI enum
#endif

QTLIBC_API QComboBox* QComboBox_new(QWidget* parent);
QTLIBC_API QComboBox* QComboBox_new2();
QTLIBC_API QMetaObject* QComboBox_MetaObject(const QComboBox* self);
QTLIBC_API void* QComboBox_Metacast(QComboBox* self, const char* param1);
QTLIBC_API int QComboBox_Metacall(QComboBox* self, int param1, int param2, void** param3);
QTLIBC_API void QComboBox_OnMetacall(QComboBox* self, intptr_t slot);
QTLIBC_API int QComboBox_QBaseMetacall(QComboBox* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QComboBox_Tr(const char* s);
QTLIBC_API int QComboBox_MaxVisibleItems(const QComboBox* self);
QTLIBC_API void QComboBox_SetMaxVisibleItems(QComboBox* self, int maxItems);
QTLIBC_API int QComboBox_Count(const QComboBox* self);
QTLIBC_API void QComboBox_SetMaxCount(QComboBox* self, int max);
QTLIBC_API int QComboBox_MaxCount(const QComboBox* self);
QTLIBC_API bool QComboBox_DuplicatesEnabled(const QComboBox* self);
QTLIBC_API void QComboBox_SetDuplicatesEnabled(QComboBox* self, bool enable);
QTLIBC_API void QComboBox_SetFrame(QComboBox* self, bool frame);
QTLIBC_API bool QComboBox_HasFrame(const QComboBox* self);
QTLIBC_API int QComboBox_FindText(const QComboBox* self, libqt_string text);
QTLIBC_API int QComboBox_FindData(const QComboBox* self, QVariant* data);
QTLIBC_API int QComboBox_InsertPolicy(const QComboBox* self);
QTLIBC_API void QComboBox_SetInsertPolicy(QComboBox* self, int policy);
QTLIBC_API int QComboBox_SizeAdjustPolicy(const QComboBox* self);
QTLIBC_API void QComboBox_SetSizeAdjustPolicy(QComboBox* self, int policy);
QTLIBC_API int QComboBox_MinimumContentsLength(const QComboBox* self);
QTLIBC_API void QComboBox_SetMinimumContentsLength(QComboBox* self, int characters);
QTLIBC_API QSize* QComboBox_IconSize(const QComboBox* self);
QTLIBC_API void QComboBox_SetIconSize(QComboBox* self, QSize* size);
QTLIBC_API void QComboBox_SetPlaceholderText(QComboBox* self, libqt_string placeholderText);
QTLIBC_API libqt_string QComboBox_PlaceholderText(const QComboBox* self);
QTLIBC_API bool QComboBox_IsEditable(const QComboBox* self);
QTLIBC_API void QComboBox_SetEditable(QComboBox* self, bool editable);
QTLIBC_API void QComboBox_SetLineEdit(QComboBox* self, QLineEdit* edit);
QTLIBC_API QLineEdit* QComboBox_LineEdit(const QComboBox* self);
QTLIBC_API void QComboBox_SetValidator(QComboBox* self, QValidator* v);
QTLIBC_API QValidator* QComboBox_Validator(const QComboBox* self);
QTLIBC_API void QComboBox_SetCompleter(QComboBox* self, QCompleter* c);
QTLIBC_API QCompleter* QComboBox_Completer(const QComboBox* self);
QTLIBC_API QAbstractItemDelegate* QComboBox_ItemDelegate(const QComboBox* self);
QTLIBC_API void QComboBox_SetItemDelegate(QComboBox* self, QAbstractItemDelegate* delegate);
QTLIBC_API QAbstractItemModel* QComboBox_Model(const QComboBox* self);
QTLIBC_API void QComboBox_SetModel(QComboBox* self, QAbstractItemModel* model);
QTLIBC_API void QComboBox_OnSetModel(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseSetModel(QComboBox* self, QAbstractItemModel* model);
QTLIBC_API QModelIndex* QComboBox_RootModelIndex(const QComboBox* self);
QTLIBC_API void QComboBox_SetRootModelIndex(QComboBox* self, QModelIndex* index);
QTLIBC_API int QComboBox_ModelColumn(const QComboBox* self);
QTLIBC_API void QComboBox_SetModelColumn(QComboBox* self, int visibleColumn);
QTLIBC_API int QComboBox_CurrentIndex(const QComboBox* self);
QTLIBC_API libqt_string QComboBox_CurrentText(const QComboBox* self);
QTLIBC_API QVariant* QComboBox_CurrentData(const QComboBox* self);
QTLIBC_API libqt_string QComboBox_ItemText(const QComboBox* self, int index);
QTLIBC_API QIcon* QComboBox_ItemIcon(const QComboBox* self, int index);
QTLIBC_API QVariant* QComboBox_ItemData(const QComboBox* self, int index);
QTLIBC_API void QComboBox_AddItem(QComboBox* self, libqt_string text);
QTLIBC_API void QComboBox_AddItem2(QComboBox* self, QIcon* icon, libqt_string text);
QTLIBC_API void QComboBox_AddItems(QComboBox* self, libqt_list /* of libqt_string */ texts);
QTLIBC_API void QComboBox_InsertItem(QComboBox* self, int index, libqt_string text);
QTLIBC_API void QComboBox_InsertItem2(QComboBox* self, int index, QIcon* icon, libqt_string text);
QTLIBC_API void QComboBox_InsertItems(QComboBox* self, int index, libqt_list /* of libqt_string */ texts);
QTLIBC_API void QComboBox_InsertSeparator(QComboBox* self, int index);
QTLIBC_API void QComboBox_RemoveItem(QComboBox* self, int index);
QTLIBC_API void QComboBox_SetItemText(QComboBox* self, int index, libqt_string text);
QTLIBC_API void QComboBox_SetItemIcon(QComboBox* self, int index, QIcon* icon);
QTLIBC_API void QComboBox_SetItemData(QComboBox* self, int index, QVariant* value);
QTLIBC_API QAbstractItemView* QComboBox_View(const QComboBox* self);
QTLIBC_API void QComboBox_SetView(QComboBox* self, QAbstractItemView* itemView);
QTLIBC_API QSize* QComboBox_SizeHint(const QComboBox* self);
QTLIBC_API void QComboBox_OnSizeHint(const QComboBox* self, intptr_t slot);
QTLIBC_API QSize* QComboBox_QBaseSizeHint(const QComboBox* self);
QTLIBC_API QSize* QComboBox_MinimumSizeHint(const QComboBox* self);
QTLIBC_API void QComboBox_OnMinimumSizeHint(const QComboBox* self, intptr_t slot);
QTLIBC_API QSize* QComboBox_QBaseMinimumSizeHint(const QComboBox* self);
QTLIBC_API void QComboBox_ShowPopup(QComboBox* self);
QTLIBC_API void QComboBox_OnShowPopup(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseShowPopup(QComboBox* self);
QTLIBC_API void QComboBox_HidePopup(QComboBox* self);
QTLIBC_API void QComboBox_OnHidePopup(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseHidePopup(QComboBox* self);
QTLIBC_API bool QComboBox_Event(QComboBox* self, QEvent* event);
QTLIBC_API void QComboBox_OnEvent(QComboBox* self, intptr_t slot);
QTLIBC_API bool QComboBox_QBaseEvent(QComboBox* self, QEvent* event);
QTLIBC_API QVariant* QComboBox_InputMethodQuery(const QComboBox* self, int param1);
QTLIBC_API void QComboBox_OnInputMethodQuery(const QComboBox* self, intptr_t slot);
QTLIBC_API QVariant* QComboBox_QBaseInputMethodQuery(const QComboBox* self, int param1);
QTLIBC_API QVariant* QComboBox_InputMethodQuery2(const QComboBox* self, int query, QVariant* argument);
QTLIBC_API void QComboBox_Clear(QComboBox* self);
QTLIBC_API void QComboBox_ClearEditText(QComboBox* self);
QTLIBC_API void QComboBox_SetEditText(QComboBox* self, libqt_string text);
QTLIBC_API void QComboBox_SetCurrentIndex(QComboBox* self, int index);
QTLIBC_API void QComboBox_SetCurrentText(QComboBox* self, libqt_string text);
QTLIBC_API void QComboBox_EditTextChanged(QComboBox* self, libqt_string param1);
QTLIBC_API void QComboBox_Connect_EditTextChanged(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_Activated(QComboBox* self, int index);
QTLIBC_API void QComboBox_Connect_Activated(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_TextActivated(QComboBox* self, libqt_string param1);
QTLIBC_API void QComboBox_Connect_TextActivated(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_Highlighted(QComboBox* self, int index);
QTLIBC_API void QComboBox_Connect_Highlighted(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_TextHighlighted(QComboBox* self, libqt_string param1);
QTLIBC_API void QComboBox_Connect_TextHighlighted(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_CurrentIndexChanged(QComboBox* self, int index);
QTLIBC_API void QComboBox_Connect_CurrentIndexChanged(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_CurrentTextChanged(QComboBox* self, libqt_string param1);
QTLIBC_API void QComboBox_Connect_CurrentTextChanged(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_FocusInEvent(QComboBox* self, QFocusEvent* e);
QTLIBC_API void QComboBox_OnFocusInEvent(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseFocusInEvent(QComboBox* self, QFocusEvent* e);
QTLIBC_API void QComboBox_FocusOutEvent(QComboBox* self, QFocusEvent* e);
QTLIBC_API void QComboBox_OnFocusOutEvent(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseFocusOutEvent(QComboBox* self, QFocusEvent* e);
QTLIBC_API void QComboBox_ChangeEvent(QComboBox* self, QEvent* e);
QTLIBC_API void QComboBox_OnChangeEvent(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseChangeEvent(QComboBox* self, QEvent* e);
QTLIBC_API void QComboBox_ResizeEvent(QComboBox* self, QResizeEvent* e);
QTLIBC_API void QComboBox_OnResizeEvent(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseResizeEvent(QComboBox* self, QResizeEvent* e);
QTLIBC_API void QComboBox_PaintEvent(QComboBox* self, QPaintEvent* e);
QTLIBC_API void QComboBox_OnPaintEvent(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBasePaintEvent(QComboBox* self, QPaintEvent* e);
QTLIBC_API void QComboBox_ShowEvent(QComboBox* self, QShowEvent* e);
QTLIBC_API void QComboBox_OnShowEvent(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseShowEvent(QComboBox* self, QShowEvent* e);
QTLIBC_API void QComboBox_HideEvent(QComboBox* self, QHideEvent* e);
QTLIBC_API void QComboBox_OnHideEvent(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseHideEvent(QComboBox* self, QHideEvent* e);
QTLIBC_API void QComboBox_MousePressEvent(QComboBox* self, QMouseEvent* e);
QTLIBC_API void QComboBox_OnMousePressEvent(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseMousePressEvent(QComboBox* self, QMouseEvent* e);
QTLIBC_API void QComboBox_MouseReleaseEvent(QComboBox* self, QMouseEvent* e);
QTLIBC_API void QComboBox_OnMouseReleaseEvent(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseMouseReleaseEvent(QComboBox* self, QMouseEvent* e);
QTLIBC_API void QComboBox_KeyPressEvent(QComboBox* self, QKeyEvent* e);
QTLIBC_API void QComboBox_OnKeyPressEvent(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseKeyPressEvent(QComboBox* self, QKeyEvent* e);
QTLIBC_API void QComboBox_KeyReleaseEvent(QComboBox* self, QKeyEvent* e);
QTLIBC_API void QComboBox_OnKeyReleaseEvent(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseKeyReleaseEvent(QComboBox* self, QKeyEvent* e);
QTLIBC_API void QComboBox_WheelEvent(QComboBox* self, QWheelEvent* e);
QTLIBC_API void QComboBox_OnWheelEvent(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseWheelEvent(QComboBox* self, QWheelEvent* e);
QTLIBC_API void QComboBox_ContextMenuEvent(QComboBox* self, QContextMenuEvent* e);
QTLIBC_API void QComboBox_OnContextMenuEvent(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseContextMenuEvent(QComboBox* self, QContextMenuEvent* e);
QTLIBC_API void QComboBox_InputMethodEvent(QComboBox* self, QInputMethodEvent* param1);
QTLIBC_API void QComboBox_OnInputMethodEvent(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseInputMethodEvent(QComboBox* self, QInputMethodEvent* param1);
QTLIBC_API void QComboBox_InitStyleOption(const QComboBox* self, QStyleOptionComboBox* option);
QTLIBC_API void QComboBox_OnInitStyleOption(const QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseInitStyleOption(const QComboBox* self, QStyleOptionComboBox* option);
QTLIBC_API libqt_string QComboBox_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QComboBox_Tr3(const char* s, const char* c, int n);
QTLIBC_API int QComboBox_FindText2(const QComboBox* self, libqt_string text, int flags);
QTLIBC_API int QComboBox_FindData2(const QComboBox* self, QVariant* data, int role);
QTLIBC_API int QComboBox_FindData3(const QComboBox* self, QVariant* data, int role, int flags);
QTLIBC_API QVariant* QComboBox_CurrentData1(const QComboBox* self, int role);
QTLIBC_API QVariant* QComboBox_ItemData2(const QComboBox* self, int index, int role);
QTLIBC_API void QComboBox_AddItem22(QComboBox* self, libqt_string text, QVariant* userData);
QTLIBC_API void QComboBox_AddItem3(QComboBox* self, QIcon* icon, libqt_string text, QVariant* userData);
QTLIBC_API void QComboBox_InsertItem3(QComboBox* self, int index, libqt_string text, QVariant* userData);
QTLIBC_API void QComboBox_InsertItem4(QComboBox* self, int index, QIcon* icon, libqt_string text, QVariant* userData);
QTLIBC_API void QComboBox_SetItemData3(QComboBox* self, int index, QVariant* value, int role);
QTLIBC_API int QComboBox_DevType(const QComboBox* self);
QTLIBC_API void QComboBox_OnDevType(const QComboBox* self, intptr_t slot);
QTLIBC_API int QComboBox_QBaseDevType(const QComboBox* self);
QTLIBC_API void QComboBox_SetVisible(QComboBox* self, bool visible);
QTLIBC_API void QComboBox_OnSetVisible(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseSetVisible(QComboBox* self, bool visible);
QTLIBC_API int QComboBox_HeightForWidth(const QComboBox* self, int param1);
QTLIBC_API void QComboBox_OnHeightForWidth(const QComboBox* self, intptr_t slot);
QTLIBC_API int QComboBox_QBaseHeightForWidth(const QComboBox* self, int param1);
QTLIBC_API bool QComboBox_HasHeightForWidth(const QComboBox* self);
QTLIBC_API void QComboBox_OnHasHeightForWidth(const QComboBox* self, intptr_t slot);
QTLIBC_API bool QComboBox_QBaseHasHeightForWidth(const QComboBox* self);
QTLIBC_API QPaintEngine* QComboBox_PaintEngine(const QComboBox* self);
QTLIBC_API void QComboBox_OnPaintEngine(const QComboBox* self, intptr_t slot);
QTLIBC_API QPaintEngine* QComboBox_QBasePaintEngine(const QComboBox* self);
QTLIBC_API void QComboBox_MouseDoubleClickEvent(QComboBox* self, QMouseEvent* event);
QTLIBC_API void QComboBox_OnMouseDoubleClickEvent(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseMouseDoubleClickEvent(QComboBox* self, QMouseEvent* event);
QTLIBC_API void QComboBox_MouseMoveEvent(QComboBox* self, QMouseEvent* event);
QTLIBC_API void QComboBox_OnMouseMoveEvent(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseMouseMoveEvent(QComboBox* self, QMouseEvent* event);
QTLIBC_API void QComboBox_EnterEvent(QComboBox* self, QEnterEvent* event);
QTLIBC_API void QComboBox_OnEnterEvent(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseEnterEvent(QComboBox* self, QEnterEvent* event);
QTLIBC_API void QComboBox_LeaveEvent(QComboBox* self, QEvent* event);
QTLIBC_API void QComboBox_OnLeaveEvent(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseLeaveEvent(QComboBox* self, QEvent* event);
QTLIBC_API void QComboBox_MoveEvent(QComboBox* self, QMoveEvent* event);
QTLIBC_API void QComboBox_OnMoveEvent(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseMoveEvent(QComboBox* self, QMoveEvent* event);
QTLIBC_API void QComboBox_CloseEvent(QComboBox* self, QCloseEvent* event);
QTLIBC_API void QComboBox_OnCloseEvent(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseCloseEvent(QComboBox* self, QCloseEvent* event);
QTLIBC_API void QComboBox_TabletEvent(QComboBox* self, QTabletEvent* event);
QTLIBC_API void QComboBox_OnTabletEvent(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseTabletEvent(QComboBox* self, QTabletEvent* event);
QTLIBC_API void QComboBox_ActionEvent(QComboBox* self, QActionEvent* event);
QTLIBC_API void QComboBox_OnActionEvent(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseActionEvent(QComboBox* self, QActionEvent* event);
QTLIBC_API void QComboBox_DragEnterEvent(QComboBox* self, QDragEnterEvent* event);
QTLIBC_API void QComboBox_OnDragEnterEvent(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseDragEnterEvent(QComboBox* self, QDragEnterEvent* event);
QTLIBC_API void QComboBox_DragMoveEvent(QComboBox* self, QDragMoveEvent* event);
QTLIBC_API void QComboBox_OnDragMoveEvent(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseDragMoveEvent(QComboBox* self, QDragMoveEvent* event);
QTLIBC_API void QComboBox_DragLeaveEvent(QComboBox* self, QDragLeaveEvent* event);
QTLIBC_API void QComboBox_OnDragLeaveEvent(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseDragLeaveEvent(QComboBox* self, QDragLeaveEvent* event);
QTLIBC_API void QComboBox_DropEvent(QComboBox* self, QDropEvent* event);
QTLIBC_API void QComboBox_OnDropEvent(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseDropEvent(QComboBox* self, QDropEvent* event);
QTLIBC_API bool QComboBox_NativeEvent(QComboBox* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QComboBox_OnNativeEvent(QComboBox* self, intptr_t slot);
QTLIBC_API bool QComboBox_QBaseNativeEvent(QComboBox* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API bool QComboBox_FocusNextPrevChild(QComboBox* self, bool next);
QTLIBC_API void QComboBox_OnFocusNextPrevChild(QComboBox* self, intptr_t slot);
QTLIBC_API bool QComboBox_QBaseFocusNextPrevChild(QComboBox* self, bool next);
QTLIBC_API bool QComboBox_EventFilter(QComboBox* self, QObject* watched, QEvent* event);
QTLIBC_API void QComboBox_OnEventFilter(QComboBox* self, intptr_t slot);
QTLIBC_API bool QComboBox_QBaseEventFilter(QComboBox* self, QObject* watched, QEvent* event);
QTLIBC_API void QComboBox_TimerEvent(QComboBox* self, QTimerEvent* event);
QTLIBC_API void QComboBox_OnTimerEvent(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseTimerEvent(QComboBox* self, QTimerEvent* event);
QTLIBC_API void QComboBox_ChildEvent(QComboBox* self, QChildEvent* event);
QTLIBC_API void QComboBox_OnChildEvent(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseChildEvent(QComboBox* self, QChildEvent* event);
QTLIBC_API void QComboBox_CustomEvent(QComboBox* self, QEvent* event);
QTLIBC_API void QComboBox_OnCustomEvent(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseCustomEvent(QComboBox* self, QEvent* event);
QTLIBC_API void QComboBox_ConnectNotify(QComboBox* self, QMetaMethod* signal);
QTLIBC_API void QComboBox_OnConnectNotify(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseConnectNotify(QComboBox* self, QMetaMethod* signal);
QTLIBC_API void QComboBox_DisconnectNotify(QComboBox* self, QMetaMethod* signal);
QTLIBC_API void QComboBox_OnDisconnectNotify(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseDisconnectNotify(QComboBox* self, QMetaMethod* signal);
QTLIBC_API int QComboBox_Metric(const QComboBox* self, int param1);
QTLIBC_API void QComboBox_OnMetric(const QComboBox* self, intptr_t slot);
QTLIBC_API int QComboBox_QBaseMetric(const QComboBox* self, int param1);
QTLIBC_API void QComboBox_InitPainter(const QComboBox* self, QPainter* painter);
QTLIBC_API void QComboBox_OnInitPainter(const QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseInitPainter(const QComboBox* self, QPainter* painter);
QTLIBC_API QPaintDevice* QComboBox_Redirected(const QComboBox* self, QPoint* offset);
QTLIBC_API void QComboBox_OnRedirected(const QComboBox* self, intptr_t slot);
QTLIBC_API QPaintDevice* QComboBox_QBaseRedirected(const QComboBox* self, QPoint* offset);
QTLIBC_API QPainter* QComboBox_SharedPainter(const QComboBox* self);
QTLIBC_API void QComboBox_OnSharedPainter(const QComboBox* self, intptr_t slot);
QTLIBC_API QPainter* QComboBox_QBaseSharedPainter(const QComboBox* self);
QTLIBC_API void QComboBox_UpdateMicroFocus(QComboBox* self);
QTLIBC_API void QComboBox_OnUpdateMicroFocus(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseUpdateMicroFocus(QComboBox* self);
QTLIBC_API void QComboBox_Create(QComboBox* self);
QTLIBC_API void QComboBox_OnCreate(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseCreate(QComboBox* self);
QTLIBC_API void QComboBox_Destroy(QComboBox* self);
QTLIBC_API void QComboBox_OnDestroy(QComboBox* self, intptr_t slot);
QTLIBC_API void QComboBox_QBaseDestroy(QComboBox* self);
QTLIBC_API bool QComboBox_FocusNextChild(QComboBox* self);
QTLIBC_API void QComboBox_OnFocusNextChild(QComboBox* self, intptr_t slot);
QTLIBC_API bool QComboBox_QBaseFocusNextChild(QComboBox* self);
QTLIBC_API bool QComboBox_FocusPreviousChild(QComboBox* self);
QTLIBC_API void QComboBox_OnFocusPreviousChild(QComboBox* self, intptr_t slot);
QTLIBC_API bool QComboBox_QBaseFocusPreviousChild(QComboBox* self);
QTLIBC_API QObject* QComboBox_Sender(const QComboBox* self);
QTLIBC_API void QComboBox_OnSender(const QComboBox* self, intptr_t slot);
QTLIBC_API QObject* QComboBox_QBaseSender(const QComboBox* self);
QTLIBC_API int QComboBox_SenderSignalIndex(const QComboBox* self);
QTLIBC_API void QComboBox_OnSenderSignalIndex(const QComboBox* self, intptr_t slot);
QTLIBC_API int QComboBox_QBaseSenderSignalIndex(const QComboBox* self);
QTLIBC_API int QComboBox_Receivers(const QComboBox* self, const char* signal);
QTLIBC_API void QComboBox_OnReceivers(const QComboBox* self, intptr_t slot);
QTLIBC_API int QComboBox_QBaseReceivers(const QComboBox* self, const char* signal);
QTLIBC_API bool QComboBox_IsSignalConnected(const QComboBox* self, QMetaMethod* signal);
QTLIBC_API void QComboBox_OnIsSignalConnected(const QComboBox* self, intptr_t slot);
QTLIBC_API bool QComboBox_QBaseIsSignalConnected(const QComboBox* self, QMetaMethod* signal);
QTLIBC_API void QComboBox_Delete(QComboBox* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
