#pragma once
#ifndef SRC_QTC_LIBQMESSAGEBOX_H
#define SRC_QTC_LIBQMESSAGEBOX_H

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
typedef struct QCheckBox QCheckBox;
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
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QKeyEvent QKeyEvent;
typedef struct QKeySequence QKeySequence;
typedef struct QLayout QLayout;
typedef struct QLocale QLocale;
typedef struct QMargins QMargins;
typedef struct QMessageBox QMessageBox;
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
typedef QMessageBox::Button Button;                   // C++ QFlags
typedef QMessageBox::ButtonRole ButtonRole;           // C++ enum
typedef QMessageBox::Icon Icon;                       // C++ enum
typedef QMessageBox::StandardButton StandardButton;   // C++ enum
typedef QMessageBox::StandardButtons StandardButtons; // C++ QFlags
#else
typedef int Button;          // C ABI QFlags
typedef int ButtonRole;      // C ABI enum
typedef int Icon;            // C ABI enum
typedef int StandardButton;  // C ABI enum
typedef int StandardButtons; // C ABI QFlags
#endif

QTLIBC_API QMessageBox* QMessageBox_new(QWidget* parent);
QTLIBC_API QMessageBox* QMessageBox_new2();
QTLIBC_API QMessageBox* QMessageBox_new3(int icon, libqt_string title, libqt_string text);
QTLIBC_API QMessageBox* QMessageBox_new4(libqt_string title, libqt_string text, int icon, int button0, int button1, int button2);
QTLIBC_API QMessageBox* QMessageBox_new5(int icon, libqt_string title, libqt_string text, int buttons);
QTLIBC_API QMessageBox* QMessageBox_new6(int icon, libqt_string title, libqt_string text, int buttons, QWidget* parent);
QTLIBC_API QMessageBox* QMessageBox_new7(int icon, libqt_string title, libqt_string text, int buttons, QWidget* parent, int flags);
QTLIBC_API QMessageBox* QMessageBox_new8(libqt_string title, libqt_string text, int icon, int button0, int button1, int button2, QWidget* parent);
QTLIBC_API QMessageBox* QMessageBox_new9(libqt_string title, libqt_string text, int icon, int button0, int button1, int button2, QWidget* parent, int f);
QTLIBC_API QMetaObject* QMessageBox_MetaObject(const QMessageBox* self);
QTLIBC_API void* QMessageBox_Metacast(QMessageBox* self, const char* param1);
QTLIBC_API int QMessageBox_Metacall(QMessageBox* self, int param1, int param2, void** param3);
QTLIBC_API void QMessageBox_OnMetacall(QMessageBox* self, intptr_t slot);
QTLIBC_API int QMessageBox_QBaseMetacall(QMessageBox* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QMessageBox_Tr(const char* s);
QTLIBC_API void QMessageBox_AddButton(QMessageBox* self, QAbstractButton* button, int role);
QTLIBC_API QPushButton* QMessageBox_AddButton2(QMessageBox* self, libqt_string text, int role);
QTLIBC_API QPushButton* QMessageBox_AddButtonWithButton(QMessageBox* self, int button);
QTLIBC_API void QMessageBox_RemoveButton(QMessageBox* self, QAbstractButton* button);
QTLIBC_API libqt_list /* of QAbstractButton* */ QMessageBox_Buttons(const QMessageBox* self);
QTLIBC_API int QMessageBox_ButtonRole(const QMessageBox* self, QAbstractButton* button);
QTLIBC_API void QMessageBox_SetStandardButtons(QMessageBox* self, int buttons);
QTLIBC_API int QMessageBox_StandardButtons(const QMessageBox* self);
QTLIBC_API int QMessageBox_StandardButton(const QMessageBox* self, QAbstractButton* button);
QTLIBC_API QAbstractButton* QMessageBox_Button(const QMessageBox* self, int which);
QTLIBC_API QPushButton* QMessageBox_DefaultButton(const QMessageBox* self);
QTLIBC_API void QMessageBox_SetDefaultButton(QMessageBox* self, QPushButton* button);
QTLIBC_API void QMessageBox_SetDefaultButtonWithButton(QMessageBox* self, int button);
QTLIBC_API QAbstractButton* QMessageBox_EscapeButton(const QMessageBox* self);
QTLIBC_API void QMessageBox_SetEscapeButton(QMessageBox* self, QAbstractButton* button);
QTLIBC_API void QMessageBox_SetEscapeButtonWithButton(QMessageBox* self, int button);
QTLIBC_API QAbstractButton* QMessageBox_ClickedButton(const QMessageBox* self);
QTLIBC_API libqt_string QMessageBox_Text(const QMessageBox* self);
QTLIBC_API void QMessageBox_SetText(QMessageBox* self, libqt_string text);
QTLIBC_API int QMessageBox_Icon(const QMessageBox* self);
QTLIBC_API void QMessageBox_SetIcon(QMessageBox* self, int icon);
QTLIBC_API QPixmap* QMessageBox_IconPixmap(const QMessageBox* self);
QTLIBC_API void QMessageBox_SetIconPixmap(QMessageBox* self, QPixmap* pixmap);
QTLIBC_API int QMessageBox_TextFormat(const QMessageBox* self);
QTLIBC_API void QMessageBox_SetTextFormat(QMessageBox* self, int format);
QTLIBC_API void QMessageBox_SetTextInteractionFlags(QMessageBox* self, int flags);
QTLIBC_API int QMessageBox_TextInteractionFlags(const QMessageBox* self);
QTLIBC_API void QMessageBox_SetCheckBox(QMessageBox* self, QCheckBox* cb);
QTLIBC_API QCheckBox* QMessageBox_CheckBox(const QMessageBox* self);
QTLIBC_API int QMessageBox_Information(QWidget* parent, libqt_string title, libqt_string text);
QTLIBC_API int QMessageBox_Information2(QWidget* parent, libqt_string title, libqt_string text, int button0);
QTLIBC_API int QMessageBox_Question(QWidget* parent, libqt_string title, libqt_string text);
QTLIBC_API int QMessageBox_Question2(QWidget* parent, libqt_string title, libqt_string text, int button0, int button1);
QTLIBC_API int QMessageBox_Warning(QWidget* parent, libqt_string title, libqt_string text);
QTLIBC_API int QMessageBox_Warning2(QWidget* parent, libqt_string title, libqt_string text, int button0, int button1);
QTLIBC_API int QMessageBox_Critical(QWidget* parent, libqt_string title, libqt_string text);
QTLIBC_API int QMessageBox_Critical2(QWidget* parent, libqt_string title, libqt_string text, int button0, int button1);
QTLIBC_API void QMessageBox_About(QWidget* parent, libqt_string title, libqt_string text);
QTLIBC_API void QMessageBox_AboutQt(QWidget* parent);
QTLIBC_API int QMessageBox_Information3(QWidget* parent, libqt_string title, libqt_string text, int button0);
QTLIBC_API int QMessageBox_Information4(QWidget* parent, libqt_string title, libqt_string text, libqt_string button0Text);
QTLIBC_API int QMessageBox_Question3(QWidget* parent, libqt_string title, libqt_string text, int button0);
QTLIBC_API int QMessageBox_Question4(QWidget* parent, libqt_string title, libqt_string text, libqt_string button0Text);
QTLIBC_API int QMessageBox_Warning3(QWidget* parent, libqt_string title, libqt_string text, int button0, int button1);
QTLIBC_API int QMessageBox_Warning4(QWidget* parent, libqt_string title, libqt_string text, libqt_string button0Text);
QTLIBC_API int QMessageBox_Critical3(QWidget* parent, libqt_string title, libqt_string text, int button0, int button1);
QTLIBC_API int QMessageBox_Critical4(QWidget* parent, libqt_string title, libqt_string text, libqt_string button0Text);
QTLIBC_API libqt_string QMessageBox_ButtonText(const QMessageBox* self, int button);
QTLIBC_API void QMessageBox_SetButtonText(QMessageBox* self, int button, libqt_string text);
QTLIBC_API libqt_string QMessageBox_InformativeText(const QMessageBox* self);
QTLIBC_API void QMessageBox_SetInformativeText(QMessageBox* self, libqt_string text);
QTLIBC_API libqt_string QMessageBox_DetailedText(const QMessageBox* self);
QTLIBC_API void QMessageBox_SetDetailedText(QMessageBox* self, libqt_string text);
QTLIBC_API void QMessageBox_SetWindowTitle(QMessageBox* self, libqt_string title);
QTLIBC_API void QMessageBox_SetWindowModality(QMessageBox* self, int windowModality);
QTLIBC_API QPixmap* QMessageBox_StandardIcon(int icon);
QTLIBC_API void QMessageBox_ButtonClicked(QMessageBox* self, QAbstractButton* button);
QTLIBC_API void QMessageBox_Connect_ButtonClicked(QMessageBox* self, intptr_t slot);
QTLIBC_API bool QMessageBox_Event(QMessageBox* self, QEvent* e);
QTLIBC_API void QMessageBox_OnEvent(QMessageBox* self, intptr_t slot);
QTLIBC_API bool QMessageBox_QBaseEvent(QMessageBox* self, QEvent* e);
QTLIBC_API void QMessageBox_ResizeEvent(QMessageBox* self, QResizeEvent* event);
QTLIBC_API void QMessageBox_OnResizeEvent(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseResizeEvent(QMessageBox* self, QResizeEvent* event);
QTLIBC_API void QMessageBox_ShowEvent(QMessageBox* self, QShowEvent* event);
QTLIBC_API void QMessageBox_OnShowEvent(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseShowEvent(QMessageBox* self, QShowEvent* event);
QTLIBC_API void QMessageBox_CloseEvent(QMessageBox* self, QCloseEvent* event);
QTLIBC_API void QMessageBox_OnCloseEvent(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseCloseEvent(QMessageBox* self, QCloseEvent* event);
QTLIBC_API void QMessageBox_KeyPressEvent(QMessageBox* self, QKeyEvent* event);
QTLIBC_API void QMessageBox_OnKeyPressEvent(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseKeyPressEvent(QMessageBox* self, QKeyEvent* event);
QTLIBC_API void QMessageBox_ChangeEvent(QMessageBox* self, QEvent* event);
QTLIBC_API void QMessageBox_OnChangeEvent(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseChangeEvent(QMessageBox* self, QEvent* event);
QTLIBC_API libqt_string QMessageBox_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QMessageBox_Tr3(const char* s, const char* c, int n);
QTLIBC_API int QMessageBox_Information42(QWidget* parent, libqt_string title, libqt_string text, int buttons);
QTLIBC_API int QMessageBox_Information5(QWidget* parent, libqt_string title, libqt_string text, int buttons, int defaultButton);
QTLIBC_API int QMessageBox_Information52(QWidget* parent, libqt_string title, libqt_string text, int button0, int button1);
QTLIBC_API int QMessageBox_Question42(QWidget* parent, libqt_string title, libqt_string text, int buttons);
QTLIBC_API int QMessageBox_Question5(QWidget* parent, libqt_string title, libqt_string text, int buttons, int defaultButton);
QTLIBC_API int QMessageBox_Warning42(QWidget* parent, libqt_string title, libqt_string text, int buttons);
QTLIBC_API int QMessageBox_Warning5(QWidget* parent, libqt_string title, libqt_string text, int buttons, int defaultButton);
QTLIBC_API int QMessageBox_Critical42(QWidget* parent, libqt_string title, libqt_string text, int buttons);
QTLIBC_API int QMessageBox_Critical5(QWidget* parent, libqt_string title, libqt_string text, int buttons, int defaultButton);
QTLIBC_API void QMessageBox_AboutQt2(QWidget* parent, libqt_string title);
QTLIBC_API int QMessageBox_Information53(QWidget* parent, libqt_string title, libqt_string text, int button0, int button1);
QTLIBC_API int QMessageBox_Information6(QWidget* parent, libqt_string title, libqt_string text, int button0, int button1, int button2);
QTLIBC_API int QMessageBox_Information54(QWidget* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text);
QTLIBC_API int QMessageBox_Information62(QWidget* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text, libqt_string button2Text);
QTLIBC_API int QMessageBox_Information7(QWidget* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text, libqt_string button2Text, int defaultButtonNumber);
QTLIBC_API int QMessageBox_Information8(QWidget* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text, libqt_string button2Text, int defaultButtonNumber, int escapeButtonNumber);
QTLIBC_API int QMessageBox_Question52(QWidget* parent, libqt_string title, libqt_string text, int button0, int button1);
QTLIBC_API int QMessageBox_Question6(QWidget* parent, libqt_string title, libqt_string text, int button0, int button1, int button2);
QTLIBC_API int QMessageBox_Question53(QWidget* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text);
QTLIBC_API int QMessageBox_Question62(QWidget* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text, libqt_string button2Text);
QTLIBC_API int QMessageBox_Question7(QWidget* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text, libqt_string button2Text, int defaultButtonNumber);
QTLIBC_API int QMessageBox_Question8(QWidget* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text, libqt_string button2Text, int defaultButtonNumber, int escapeButtonNumber);
QTLIBC_API int QMessageBox_Warning6(QWidget* parent, libqt_string title, libqt_string text, int button0, int button1, int button2);
QTLIBC_API int QMessageBox_Warning52(QWidget* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text);
QTLIBC_API int QMessageBox_Warning62(QWidget* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text, libqt_string button2Text);
QTLIBC_API int QMessageBox_Warning7(QWidget* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text, libqt_string button2Text, int defaultButtonNumber);
QTLIBC_API int QMessageBox_Warning8(QWidget* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text, libqt_string button2Text, int defaultButtonNumber, int escapeButtonNumber);
QTLIBC_API int QMessageBox_Critical6(QWidget* parent, libqt_string title, libqt_string text, int button0, int button1, int button2);
QTLIBC_API int QMessageBox_Critical52(QWidget* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text);
QTLIBC_API int QMessageBox_Critical62(QWidget* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text, libqt_string button2Text);
QTLIBC_API int QMessageBox_Critical7(QWidget* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text, libqt_string button2Text, int defaultButtonNumber);
QTLIBC_API int QMessageBox_Critical8(QWidget* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text, libqt_string button2Text, int defaultButtonNumber, int escapeButtonNumber);
QTLIBC_API void QMessageBox_SetVisible(QMessageBox* self, bool visible);
QTLIBC_API void QMessageBox_OnSetVisible(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseSetVisible(QMessageBox* self, bool visible);
QTLIBC_API QSize* QMessageBox_SizeHint(const QMessageBox* self);
QTLIBC_API void QMessageBox_OnSizeHint(const QMessageBox* self, intptr_t slot);
QTLIBC_API QSize* QMessageBox_QBaseSizeHint(const QMessageBox* self);
QTLIBC_API QSize* QMessageBox_MinimumSizeHint(const QMessageBox* self);
QTLIBC_API void QMessageBox_OnMinimumSizeHint(const QMessageBox* self, intptr_t slot);
QTLIBC_API QSize* QMessageBox_QBaseMinimumSizeHint(const QMessageBox* self);
QTLIBC_API void QMessageBox_Open(QMessageBox* self);
QTLIBC_API void QMessageBox_OnOpen(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseOpen(QMessageBox* self);
QTLIBC_API int QMessageBox_Exec(QMessageBox* self);
QTLIBC_API void QMessageBox_OnExec(QMessageBox* self, intptr_t slot);
QTLIBC_API int QMessageBox_QBaseExec(QMessageBox* self);
QTLIBC_API void QMessageBox_Done(QMessageBox* self, int param1);
QTLIBC_API void QMessageBox_OnDone(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseDone(QMessageBox* self, int param1);
QTLIBC_API void QMessageBox_Accept(QMessageBox* self);
QTLIBC_API void QMessageBox_OnAccept(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseAccept(QMessageBox* self);
QTLIBC_API void QMessageBox_Reject(QMessageBox* self);
QTLIBC_API void QMessageBox_OnReject(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseReject(QMessageBox* self);
QTLIBC_API void QMessageBox_ContextMenuEvent(QMessageBox* self, QContextMenuEvent* param1);
QTLIBC_API void QMessageBox_OnContextMenuEvent(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseContextMenuEvent(QMessageBox* self, QContextMenuEvent* param1);
QTLIBC_API bool QMessageBox_EventFilter(QMessageBox* self, QObject* param1, QEvent* param2);
QTLIBC_API void QMessageBox_OnEventFilter(QMessageBox* self, intptr_t slot);
QTLIBC_API bool QMessageBox_QBaseEventFilter(QMessageBox* self, QObject* param1, QEvent* param2);
QTLIBC_API int QMessageBox_DevType(const QMessageBox* self);
QTLIBC_API void QMessageBox_OnDevType(const QMessageBox* self, intptr_t slot);
QTLIBC_API int QMessageBox_QBaseDevType(const QMessageBox* self);
QTLIBC_API int QMessageBox_HeightForWidth(const QMessageBox* self, int param1);
QTLIBC_API void QMessageBox_OnHeightForWidth(const QMessageBox* self, intptr_t slot);
QTLIBC_API int QMessageBox_QBaseHeightForWidth(const QMessageBox* self, int param1);
QTLIBC_API bool QMessageBox_HasHeightForWidth(const QMessageBox* self);
QTLIBC_API void QMessageBox_OnHasHeightForWidth(const QMessageBox* self, intptr_t slot);
QTLIBC_API bool QMessageBox_QBaseHasHeightForWidth(const QMessageBox* self);
QTLIBC_API QPaintEngine* QMessageBox_PaintEngine(const QMessageBox* self);
QTLIBC_API void QMessageBox_OnPaintEngine(const QMessageBox* self, intptr_t slot);
QTLIBC_API QPaintEngine* QMessageBox_QBasePaintEngine(const QMessageBox* self);
QTLIBC_API void QMessageBox_MousePressEvent(QMessageBox* self, QMouseEvent* event);
QTLIBC_API void QMessageBox_OnMousePressEvent(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseMousePressEvent(QMessageBox* self, QMouseEvent* event);
QTLIBC_API void QMessageBox_MouseReleaseEvent(QMessageBox* self, QMouseEvent* event);
QTLIBC_API void QMessageBox_OnMouseReleaseEvent(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseMouseReleaseEvent(QMessageBox* self, QMouseEvent* event);
QTLIBC_API void QMessageBox_MouseDoubleClickEvent(QMessageBox* self, QMouseEvent* event);
QTLIBC_API void QMessageBox_OnMouseDoubleClickEvent(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseMouseDoubleClickEvent(QMessageBox* self, QMouseEvent* event);
QTLIBC_API void QMessageBox_MouseMoveEvent(QMessageBox* self, QMouseEvent* event);
QTLIBC_API void QMessageBox_OnMouseMoveEvent(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseMouseMoveEvent(QMessageBox* self, QMouseEvent* event);
QTLIBC_API void QMessageBox_WheelEvent(QMessageBox* self, QWheelEvent* event);
QTLIBC_API void QMessageBox_OnWheelEvent(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseWheelEvent(QMessageBox* self, QWheelEvent* event);
QTLIBC_API void QMessageBox_KeyReleaseEvent(QMessageBox* self, QKeyEvent* event);
QTLIBC_API void QMessageBox_OnKeyReleaseEvent(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseKeyReleaseEvent(QMessageBox* self, QKeyEvent* event);
QTLIBC_API void QMessageBox_FocusInEvent(QMessageBox* self, QFocusEvent* event);
QTLIBC_API void QMessageBox_OnFocusInEvent(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseFocusInEvent(QMessageBox* self, QFocusEvent* event);
QTLIBC_API void QMessageBox_FocusOutEvent(QMessageBox* self, QFocusEvent* event);
QTLIBC_API void QMessageBox_OnFocusOutEvent(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseFocusOutEvent(QMessageBox* self, QFocusEvent* event);
QTLIBC_API void QMessageBox_EnterEvent(QMessageBox* self, QEnterEvent* event);
QTLIBC_API void QMessageBox_OnEnterEvent(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseEnterEvent(QMessageBox* self, QEnterEvent* event);
QTLIBC_API void QMessageBox_LeaveEvent(QMessageBox* self, QEvent* event);
QTLIBC_API void QMessageBox_OnLeaveEvent(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseLeaveEvent(QMessageBox* self, QEvent* event);
QTLIBC_API void QMessageBox_PaintEvent(QMessageBox* self, QPaintEvent* event);
QTLIBC_API void QMessageBox_OnPaintEvent(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBasePaintEvent(QMessageBox* self, QPaintEvent* event);
QTLIBC_API void QMessageBox_MoveEvent(QMessageBox* self, QMoveEvent* event);
QTLIBC_API void QMessageBox_OnMoveEvent(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseMoveEvent(QMessageBox* self, QMoveEvent* event);
QTLIBC_API void QMessageBox_TabletEvent(QMessageBox* self, QTabletEvent* event);
QTLIBC_API void QMessageBox_OnTabletEvent(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseTabletEvent(QMessageBox* self, QTabletEvent* event);
QTLIBC_API void QMessageBox_ActionEvent(QMessageBox* self, QActionEvent* event);
QTLIBC_API void QMessageBox_OnActionEvent(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseActionEvent(QMessageBox* self, QActionEvent* event);
QTLIBC_API void QMessageBox_DragEnterEvent(QMessageBox* self, QDragEnterEvent* event);
QTLIBC_API void QMessageBox_OnDragEnterEvent(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseDragEnterEvent(QMessageBox* self, QDragEnterEvent* event);
QTLIBC_API void QMessageBox_DragMoveEvent(QMessageBox* self, QDragMoveEvent* event);
QTLIBC_API void QMessageBox_OnDragMoveEvent(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseDragMoveEvent(QMessageBox* self, QDragMoveEvent* event);
QTLIBC_API void QMessageBox_DragLeaveEvent(QMessageBox* self, QDragLeaveEvent* event);
QTLIBC_API void QMessageBox_OnDragLeaveEvent(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseDragLeaveEvent(QMessageBox* self, QDragLeaveEvent* event);
QTLIBC_API void QMessageBox_DropEvent(QMessageBox* self, QDropEvent* event);
QTLIBC_API void QMessageBox_OnDropEvent(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseDropEvent(QMessageBox* self, QDropEvent* event);
QTLIBC_API void QMessageBox_HideEvent(QMessageBox* self, QHideEvent* event);
QTLIBC_API void QMessageBox_OnHideEvent(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseHideEvent(QMessageBox* self, QHideEvent* event);
QTLIBC_API bool QMessageBox_NativeEvent(QMessageBox* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QMessageBox_OnNativeEvent(QMessageBox* self, intptr_t slot);
QTLIBC_API bool QMessageBox_QBaseNativeEvent(QMessageBox* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QMessageBox_InputMethodEvent(QMessageBox* self, QInputMethodEvent* param1);
QTLIBC_API void QMessageBox_OnInputMethodEvent(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseInputMethodEvent(QMessageBox* self, QInputMethodEvent* param1);
QTLIBC_API QVariant* QMessageBox_InputMethodQuery(const QMessageBox* self, int param1);
QTLIBC_API void QMessageBox_OnInputMethodQuery(const QMessageBox* self, intptr_t slot);
QTLIBC_API QVariant* QMessageBox_QBaseInputMethodQuery(const QMessageBox* self, int param1);
QTLIBC_API bool QMessageBox_FocusNextPrevChild(QMessageBox* self, bool next);
QTLIBC_API void QMessageBox_OnFocusNextPrevChild(QMessageBox* self, intptr_t slot);
QTLIBC_API bool QMessageBox_QBaseFocusNextPrevChild(QMessageBox* self, bool next);
QTLIBC_API void QMessageBox_TimerEvent(QMessageBox* self, QTimerEvent* event);
QTLIBC_API void QMessageBox_OnTimerEvent(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseTimerEvent(QMessageBox* self, QTimerEvent* event);
QTLIBC_API void QMessageBox_ChildEvent(QMessageBox* self, QChildEvent* event);
QTLIBC_API void QMessageBox_OnChildEvent(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseChildEvent(QMessageBox* self, QChildEvent* event);
QTLIBC_API void QMessageBox_CustomEvent(QMessageBox* self, QEvent* event);
QTLIBC_API void QMessageBox_OnCustomEvent(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseCustomEvent(QMessageBox* self, QEvent* event);
QTLIBC_API void QMessageBox_ConnectNotify(QMessageBox* self, QMetaMethod* signal);
QTLIBC_API void QMessageBox_OnConnectNotify(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseConnectNotify(QMessageBox* self, QMetaMethod* signal);
QTLIBC_API void QMessageBox_DisconnectNotify(QMessageBox* self, QMetaMethod* signal);
QTLIBC_API void QMessageBox_OnDisconnectNotify(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseDisconnectNotify(QMessageBox* self, QMetaMethod* signal);
QTLIBC_API int QMessageBox_Metric(const QMessageBox* self, int param1);
QTLIBC_API void QMessageBox_OnMetric(const QMessageBox* self, intptr_t slot);
QTLIBC_API int QMessageBox_QBaseMetric(const QMessageBox* self, int param1);
QTLIBC_API void QMessageBox_InitPainter(const QMessageBox* self, QPainter* painter);
QTLIBC_API void QMessageBox_OnInitPainter(const QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseInitPainter(const QMessageBox* self, QPainter* painter);
QTLIBC_API QPaintDevice* QMessageBox_Redirected(const QMessageBox* self, QPoint* offset);
QTLIBC_API void QMessageBox_OnRedirected(const QMessageBox* self, intptr_t slot);
QTLIBC_API QPaintDevice* QMessageBox_QBaseRedirected(const QMessageBox* self, QPoint* offset);
QTLIBC_API QPainter* QMessageBox_SharedPainter(const QMessageBox* self);
QTLIBC_API void QMessageBox_OnSharedPainter(const QMessageBox* self, intptr_t slot);
QTLIBC_API QPainter* QMessageBox_QBaseSharedPainter(const QMessageBox* self);
QTLIBC_API void QMessageBox_AdjustPosition(QMessageBox* self, QWidget* param1);
QTLIBC_API void QMessageBox_OnAdjustPosition(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseAdjustPosition(QMessageBox* self, QWidget* param1);
QTLIBC_API void QMessageBox_UpdateMicroFocus(QMessageBox* self);
QTLIBC_API void QMessageBox_OnUpdateMicroFocus(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseUpdateMicroFocus(QMessageBox* self);
QTLIBC_API void QMessageBox_Create(QMessageBox* self);
QTLIBC_API void QMessageBox_OnCreate(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseCreate(QMessageBox* self);
QTLIBC_API void QMessageBox_Destroy(QMessageBox* self);
QTLIBC_API void QMessageBox_OnDestroy(QMessageBox* self, intptr_t slot);
QTLIBC_API void QMessageBox_QBaseDestroy(QMessageBox* self);
QTLIBC_API bool QMessageBox_FocusNextChild(QMessageBox* self);
QTLIBC_API void QMessageBox_OnFocusNextChild(QMessageBox* self, intptr_t slot);
QTLIBC_API bool QMessageBox_QBaseFocusNextChild(QMessageBox* self);
QTLIBC_API bool QMessageBox_FocusPreviousChild(QMessageBox* self);
QTLIBC_API void QMessageBox_OnFocusPreviousChild(QMessageBox* self, intptr_t slot);
QTLIBC_API bool QMessageBox_QBaseFocusPreviousChild(QMessageBox* self);
QTLIBC_API QObject* QMessageBox_Sender(const QMessageBox* self);
QTLIBC_API void QMessageBox_OnSender(const QMessageBox* self, intptr_t slot);
QTLIBC_API QObject* QMessageBox_QBaseSender(const QMessageBox* self);
QTLIBC_API int QMessageBox_SenderSignalIndex(const QMessageBox* self);
QTLIBC_API void QMessageBox_OnSenderSignalIndex(const QMessageBox* self, intptr_t slot);
QTLIBC_API int QMessageBox_QBaseSenderSignalIndex(const QMessageBox* self);
QTLIBC_API int QMessageBox_Receivers(const QMessageBox* self, const char* signal);
QTLIBC_API void QMessageBox_OnReceivers(const QMessageBox* self, intptr_t slot);
QTLIBC_API int QMessageBox_QBaseReceivers(const QMessageBox* self, const char* signal);
QTLIBC_API bool QMessageBox_IsSignalConnected(const QMessageBox* self, QMetaMethod* signal);
QTLIBC_API void QMessageBox_OnIsSignalConnected(const QMessageBox* self, intptr_t slot);
QTLIBC_API bool QMessageBox_QBaseIsSignalConnected(const QMessageBox* self, QMetaMethod* signal);
QTLIBC_API void QMessageBox_Delete(QMessageBox* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
