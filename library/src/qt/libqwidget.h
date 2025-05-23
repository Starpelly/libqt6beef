#pragma once
#ifndef SRC_QTC_LIBQWIDGET_H
#define SRC_QTC_LIBQWIDGET_H

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
typedef struct QWidgetData QWidgetData;
typedef struct QWindow QWindow;
#endif

#ifdef __cplusplus
typedef QWidget::RenderFlag RenderFlag;   // C++ enum
typedef QWidget::RenderFlags RenderFlags; // C++ QFlags
#else
typedef int RenderFlag;  // C ABI enum
typedef int RenderFlags; // C ABI QFlags
#endif

QTLIBC_API QWidgetData* QWidgetData_new(QWidgetData* param1);
QTLIBC_API void QWidgetData_OperatorAssign(QWidgetData* self, QWidgetData* param1);
QTLIBC_API void QWidgetData_Delete(QWidgetData* self);

QTLIBC_API QWidget* QWidget_new(QWidget* parent);
QTLIBC_API QWidget* QWidget_new2();
QTLIBC_API QWidget* QWidget_new3(QWidget* parent, int f);
QTLIBC_API QMetaObject* QWidget_MetaObject(const QWidget* self);
QTLIBC_API void* QWidget_Metacast(QWidget* self, const char* param1);
QTLIBC_API int QWidget_Metacall(QWidget* self, int param1, int param2, void** param3);
QTLIBC_API void QWidget_OnMetacall(QWidget* self, intptr_t slot);
QTLIBC_API int QWidget_QBaseMetacall(QWidget* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QWidget_Tr(const char* s);
QTLIBC_API int QWidget_DevType(const QWidget* self);
QTLIBC_API void QWidget_OnDevType(const QWidget* self, intptr_t slot);
QTLIBC_API int QWidget_QBaseDevType(const QWidget* self);
QTLIBC_API uintptr_t QWidget_WinId(const QWidget* self);
QTLIBC_API void QWidget_CreateWinId(QWidget* self);
QTLIBC_API uintptr_t QWidget_InternalWinId(const QWidget* self);
QTLIBC_API uintptr_t QWidget_EffectiveWinId(const QWidget* self);
QTLIBC_API QStyle* QWidget_Style(const QWidget* self);
QTLIBC_API void QWidget_SetStyle(QWidget* self, QStyle* style);
QTLIBC_API bool QWidget_IsTopLevel(const QWidget* self);
QTLIBC_API bool QWidget_IsWindow(const QWidget* self);
QTLIBC_API bool QWidget_IsModal(const QWidget* self);
QTLIBC_API int QWidget_WindowModality(const QWidget* self);
QTLIBC_API void QWidget_SetWindowModality(QWidget* self, int windowModality);
QTLIBC_API bool QWidget_IsEnabled(const QWidget* self);
QTLIBC_API bool QWidget_IsEnabledTo(const QWidget* self, QWidget* param1);
QTLIBC_API void QWidget_SetEnabled(QWidget* self, bool enabled);
QTLIBC_API void QWidget_SetDisabled(QWidget* self, bool disabled);
QTLIBC_API void QWidget_SetWindowModified(QWidget* self, bool windowModified);
QTLIBC_API QRect* QWidget_FrameGeometry(const QWidget* self);
QTLIBC_API QRect* QWidget_Geometry(const QWidget* self);
QTLIBC_API QRect* QWidget_NormalGeometry(const QWidget* self);
QTLIBC_API int QWidget_X(const QWidget* self);
QTLIBC_API int QWidget_Y(const QWidget* self);
QTLIBC_API QPoint* QWidget_Pos(const QWidget* self);
QTLIBC_API QSize* QWidget_FrameSize(const QWidget* self);
QTLIBC_API QSize* QWidget_Size(const QWidget* self);
QTLIBC_API int QWidget_Width(const QWidget* self);
QTLIBC_API int QWidget_Height(const QWidget* self);
QTLIBC_API QRect* QWidget_Rect(const QWidget* self);
QTLIBC_API QRect* QWidget_ChildrenRect(const QWidget* self);
QTLIBC_API QRegion* QWidget_ChildrenRegion(const QWidget* self);
QTLIBC_API QSize* QWidget_MinimumSize(const QWidget* self);
QTLIBC_API QSize* QWidget_MaximumSize(const QWidget* self);
QTLIBC_API int QWidget_MinimumWidth(const QWidget* self);
QTLIBC_API int QWidget_MinimumHeight(const QWidget* self);
QTLIBC_API int QWidget_MaximumWidth(const QWidget* self);
QTLIBC_API int QWidget_MaximumHeight(const QWidget* self);
QTLIBC_API void QWidget_SetMinimumSize(QWidget* self, QSize* minimumSize);
QTLIBC_API void QWidget_SetMinimumSize2(QWidget* self, int minw, int minh);
QTLIBC_API void QWidget_SetMaximumSize(QWidget* self, QSize* maximumSize);
QTLIBC_API void QWidget_SetMaximumSize2(QWidget* self, int maxw, int maxh);
QTLIBC_API void QWidget_SetMinimumWidth(QWidget* self, int minw);
QTLIBC_API void QWidget_SetMinimumHeight(QWidget* self, int minh);
QTLIBC_API void QWidget_SetMaximumWidth(QWidget* self, int maxw);
QTLIBC_API void QWidget_SetMaximumHeight(QWidget* self, int maxh);
QTLIBC_API QSize* QWidget_SizeIncrement(const QWidget* self);
QTLIBC_API void QWidget_SetSizeIncrement(QWidget* self, QSize* sizeIncrement);
QTLIBC_API void QWidget_SetSizeIncrement2(QWidget* self, int w, int h);
QTLIBC_API QSize* QWidget_BaseSize(const QWidget* self);
QTLIBC_API void QWidget_SetBaseSize(QWidget* self, QSize* baseSize);
QTLIBC_API void QWidget_SetBaseSize2(QWidget* self, int basew, int baseh);
QTLIBC_API void QWidget_SetFixedSize(QWidget* self, QSize* fixedSize);
QTLIBC_API void QWidget_SetFixedSize2(QWidget* self, int w, int h);
QTLIBC_API void QWidget_SetFixedWidth(QWidget* self, int w);
QTLIBC_API void QWidget_SetFixedHeight(QWidget* self, int h);
QTLIBC_API QPointF* QWidget_MapToGlobal(const QWidget* self, QPointF* param1);
QTLIBC_API QPoint* QWidget_MapToGlobalWithQPoint(const QWidget* self, QPoint* param1);
QTLIBC_API QPointF* QWidget_MapFromGlobal(const QWidget* self, QPointF* param1);
QTLIBC_API QPoint* QWidget_MapFromGlobalWithQPoint(const QWidget* self, QPoint* param1);
QTLIBC_API QPointF* QWidget_MapToParent(const QWidget* self, QPointF* param1);
QTLIBC_API QPoint* QWidget_MapToParentWithQPoint(const QWidget* self, QPoint* param1);
QTLIBC_API QPointF* QWidget_MapFromParent(const QWidget* self, QPointF* param1);
QTLIBC_API QPoint* QWidget_MapFromParentWithQPoint(const QWidget* self, QPoint* param1);
QTLIBC_API QPointF* QWidget_MapTo(const QWidget* self, QWidget* param1, QPointF* param2);
QTLIBC_API QPoint* QWidget_MapTo2(const QWidget* self, QWidget* param1, QPoint* param2);
QTLIBC_API QPointF* QWidget_MapFrom(const QWidget* self, QWidget* param1, QPointF* param2);
QTLIBC_API QPoint* QWidget_MapFrom2(const QWidget* self, QWidget* param1, QPoint* param2);
QTLIBC_API QWidget* QWidget_Window(const QWidget* self);
QTLIBC_API QWidget* QWidget_NativeParentWidget(const QWidget* self);
QTLIBC_API QWidget* QWidget_TopLevelWidget(const QWidget* self);
QTLIBC_API QPalette* QWidget_Palette(const QWidget* self);
QTLIBC_API void QWidget_SetPalette(QWidget* self, QPalette* palette);
QTLIBC_API void QWidget_SetBackgroundRole(QWidget* self, int backgroundRole);
QTLIBC_API int QWidget_BackgroundRole(const QWidget* self);
QTLIBC_API void QWidget_SetForegroundRole(QWidget* self, int foregroundRole);
QTLIBC_API int QWidget_ForegroundRole(const QWidget* self);
QTLIBC_API QFont* QWidget_Font(const QWidget* self);
QTLIBC_API void QWidget_SetFont(QWidget* self, QFont* font);
QTLIBC_API QFontMetrics* QWidget_FontMetrics(const QWidget* self);
QTLIBC_API QFontInfo* QWidget_FontInfo(const QWidget* self);
QTLIBC_API QCursor* QWidget_Cursor(const QWidget* self);
QTLIBC_API void QWidget_SetCursor(QWidget* self, QCursor* cursor);
QTLIBC_API void QWidget_UnsetCursor(QWidget* self);
QTLIBC_API void QWidget_SetMouseTracking(QWidget* self, bool enable);
QTLIBC_API bool QWidget_HasMouseTracking(const QWidget* self);
QTLIBC_API bool QWidget_UnderMouse(const QWidget* self);
QTLIBC_API void QWidget_SetTabletTracking(QWidget* self, bool enable);
QTLIBC_API bool QWidget_HasTabletTracking(const QWidget* self);
QTLIBC_API void QWidget_SetMask(QWidget* self, QBitmap* mask);
QTLIBC_API void QWidget_SetMaskWithMask(QWidget* self, QRegion* mask);
QTLIBC_API QRegion* QWidget_Mask(const QWidget* self);
QTLIBC_API void QWidget_ClearMask(QWidget* self);
QTLIBC_API void QWidget_Render(QWidget* self, QPaintDevice* target);
QTLIBC_API void QWidget_RenderWithPainter(QWidget* self, QPainter* painter);
QTLIBC_API QPixmap* QWidget_Grab(QWidget* self);
QTLIBC_API QGraphicsEffect* QWidget_GraphicsEffect(const QWidget* self);
QTLIBC_API void QWidget_SetGraphicsEffect(QWidget* self, QGraphicsEffect* effect);
QTLIBC_API void QWidget_GrabGesture(QWidget* self, int typeVal);
QTLIBC_API void QWidget_UngrabGesture(QWidget* self, int typeVal);
QTLIBC_API void QWidget_SetWindowTitle(QWidget* self, libqt_string windowTitle);
QTLIBC_API void QWidget_SetStyleSheet(QWidget* self, libqt_string styleSheet);
QTLIBC_API libqt_string QWidget_StyleSheet(const QWidget* self);
QTLIBC_API libqt_string QWidget_WindowTitle(const QWidget* self);
QTLIBC_API void QWidget_SetWindowIcon(QWidget* self, QIcon* icon);
QTLIBC_API QIcon* QWidget_WindowIcon(const QWidget* self);
QTLIBC_API void QWidget_SetWindowIconText(QWidget* self, libqt_string windowIconText);
QTLIBC_API libqt_string QWidget_WindowIconText(const QWidget* self);
QTLIBC_API void QWidget_SetWindowRole(QWidget* self, libqt_string windowRole);
QTLIBC_API libqt_string QWidget_WindowRole(const QWidget* self);
QTLIBC_API void QWidget_SetWindowFilePath(QWidget* self, libqt_string filePath);
QTLIBC_API libqt_string QWidget_WindowFilePath(const QWidget* self);
QTLIBC_API void QWidget_SetWindowOpacity(QWidget* self, double level);
QTLIBC_API double QWidget_WindowOpacity(const QWidget* self);
QTLIBC_API bool QWidget_IsWindowModified(const QWidget* self);
QTLIBC_API void QWidget_SetToolTip(QWidget* self, libqt_string toolTip);
QTLIBC_API libqt_string QWidget_ToolTip(const QWidget* self);
QTLIBC_API void QWidget_SetToolTipDuration(QWidget* self, int msec);
QTLIBC_API int QWidget_ToolTipDuration(const QWidget* self);
QTLIBC_API void QWidget_SetStatusTip(QWidget* self, libqt_string statusTip);
QTLIBC_API libqt_string QWidget_StatusTip(const QWidget* self);
QTLIBC_API void QWidget_SetWhatsThis(QWidget* self, libqt_string whatsThis);
QTLIBC_API libqt_string QWidget_WhatsThis(const QWidget* self);
QTLIBC_API libqt_string QWidget_AccessibleName(const QWidget* self);
QTLIBC_API void QWidget_SetAccessibleName(QWidget* self, libqt_string name);
QTLIBC_API libqt_string QWidget_AccessibleDescription(const QWidget* self);
QTLIBC_API void QWidget_SetAccessibleDescription(QWidget* self, libqt_string description);
QTLIBC_API void QWidget_SetLayoutDirection(QWidget* self, int direction);
QTLIBC_API int QWidget_LayoutDirection(const QWidget* self);
QTLIBC_API void QWidget_UnsetLayoutDirection(QWidget* self);
QTLIBC_API void QWidget_SetLocale(QWidget* self, QLocale* locale);
QTLIBC_API QLocale* QWidget_Locale(const QWidget* self);
QTLIBC_API void QWidget_UnsetLocale(QWidget* self);
QTLIBC_API bool QWidget_IsRightToLeft(const QWidget* self);
QTLIBC_API bool QWidget_IsLeftToRight(const QWidget* self);
QTLIBC_API void QWidget_SetFocus(QWidget* self);
QTLIBC_API bool QWidget_IsActiveWindow(const QWidget* self);
QTLIBC_API void QWidget_ActivateWindow(QWidget* self);
QTLIBC_API void QWidget_ClearFocus(QWidget* self);
QTLIBC_API void QWidget_SetFocusWithReason(QWidget* self, int reason);
QTLIBC_API int QWidget_FocusPolicy(const QWidget* self);
QTLIBC_API void QWidget_SetFocusPolicy(QWidget* self, int policy);
QTLIBC_API bool QWidget_HasFocus(const QWidget* self);
QTLIBC_API void QWidget_SetTabOrder(QWidget* param1, QWidget* param2);
QTLIBC_API void QWidget_SetFocusProxy(QWidget* self, QWidget* focusProxy);
QTLIBC_API QWidget* QWidget_FocusProxy(const QWidget* self);
QTLIBC_API int QWidget_ContextMenuPolicy(const QWidget* self);
QTLIBC_API void QWidget_SetContextMenuPolicy(QWidget* self, int policy);
QTLIBC_API void QWidget_GrabMouse(QWidget* self);
QTLIBC_API void QWidget_GrabMouseWithQCursor(QWidget* self, QCursor* param1);
QTLIBC_API void QWidget_ReleaseMouse(QWidget* self);
QTLIBC_API void QWidget_GrabKeyboard(QWidget* self);
QTLIBC_API void QWidget_ReleaseKeyboard(QWidget* self);
QTLIBC_API int QWidget_GrabShortcut(QWidget* self, QKeySequence* key);
QTLIBC_API void QWidget_ReleaseShortcut(QWidget* self, int id);
QTLIBC_API void QWidget_SetShortcutEnabled(QWidget* self, int id);
QTLIBC_API void QWidget_SetShortcutAutoRepeat(QWidget* self, int id);
QTLIBC_API QWidget* QWidget_MouseGrabber();
QTLIBC_API QWidget* QWidget_KeyboardGrabber();
QTLIBC_API bool QWidget_UpdatesEnabled(const QWidget* self);
QTLIBC_API void QWidget_SetUpdatesEnabled(QWidget* self, bool enable);
QTLIBC_API QGraphicsProxyWidget* QWidget_GraphicsProxyWidget(const QWidget* self);
QTLIBC_API void QWidget_Update(QWidget* self);
QTLIBC_API void QWidget_Repaint(QWidget* self);
QTLIBC_API void QWidget_Update2(QWidget* self, int x, int y, int w, int h);
QTLIBC_API void QWidget_UpdateWithQRect(QWidget* self, QRect* param1);
QTLIBC_API void QWidget_UpdateWithQRegion(QWidget* self, QRegion* param1);
QTLIBC_API void QWidget_Repaint2(QWidget* self, int x, int y, int w, int h);
QTLIBC_API void QWidget_RepaintWithQRect(QWidget* self, QRect* param1);
QTLIBC_API void QWidget_RepaintWithQRegion(QWidget* self, QRegion* param1);
QTLIBC_API void QWidget_SetVisible(QWidget* self, bool visible);
QTLIBC_API void QWidget_OnSetVisible(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseSetVisible(QWidget* self, bool visible);
QTLIBC_API void QWidget_SetHidden(QWidget* self, bool hidden);
QTLIBC_API void QWidget_Show(QWidget* self);
QTLIBC_API void QWidget_Hide(QWidget* self);
QTLIBC_API void QWidget_ShowMinimized(QWidget* self);
QTLIBC_API void QWidget_ShowMaximized(QWidget* self);
QTLIBC_API void QWidget_ShowFullScreen(QWidget* self);
QTLIBC_API void QWidget_ShowNormal(QWidget* self);
QTLIBC_API bool QWidget_Close(QWidget* self);
QTLIBC_API void QWidget_Raise(QWidget* self);
QTLIBC_API void QWidget_Lower(QWidget* self);
QTLIBC_API void QWidget_StackUnder(QWidget* self, QWidget* param1);
QTLIBC_API void QWidget_Move(QWidget* self, int x, int y);
QTLIBC_API void QWidget_MoveWithQPoint(QWidget* self, QPoint* param1);
QTLIBC_API void QWidget_Resize(QWidget* self, int w, int h);
QTLIBC_API void QWidget_ResizeWithQSize(QWidget* self, QSize* param1);
QTLIBC_API void QWidget_SetGeometry(QWidget* self, int x, int y, int w, int h);
QTLIBC_API void QWidget_SetGeometryWithGeometry(QWidget* self, QRect* geometry);
QTLIBC_API libqt_string QWidget_SaveGeometry(const QWidget* self);
QTLIBC_API bool QWidget_RestoreGeometry(QWidget* self, libqt_string geometry);
QTLIBC_API void QWidget_AdjustSize(QWidget* self);
QTLIBC_API bool QWidget_IsVisible(const QWidget* self);
QTLIBC_API bool QWidget_IsVisibleTo(const QWidget* self, QWidget* param1);
QTLIBC_API bool QWidget_IsHidden(const QWidget* self);
QTLIBC_API bool QWidget_IsMinimized(const QWidget* self);
QTLIBC_API bool QWidget_IsMaximized(const QWidget* self);
QTLIBC_API bool QWidget_IsFullScreen(const QWidget* self);
QTLIBC_API int QWidget_WindowState(const QWidget* self);
QTLIBC_API void QWidget_SetWindowState(QWidget* self, int state);
QTLIBC_API void QWidget_OverrideWindowState(QWidget* self, int state);
QTLIBC_API QSize* QWidget_SizeHint(const QWidget* self);
QTLIBC_API void QWidget_OnSizeHint(const QWidget* self, intptr_t slot);
QTLIBC_API QSize* QWidget_QBaseSizeHint(const QWidget* self);
QTLIBC_API QSize* QWidget_MinimumSizeHint(const QWidget* self);
QTLIBC_API void QWidget_OnMinimumSizeHint(const QWidget* self, intptr_t slot);
QTLIBC_API QSize* QWidget_QBaseMinimumSizeHint(const QWidget* self);
QTLIBC_API QSizePolicy* QWidget_SizePolicy(const QWidget* self);
QTLIBC_API void QWidget_SetSizePolicy(QWidget* self, QSizePolicy* sizePolicy);
QTLIBC_API void QWidget_SetSizePolicy2(QWidget* self, int horizontal, int vertical);
QTLIBC_API int QWidget_HeightForWidth(const QWidget* self, int param1);
QTLIBC_API void QWidget_OnHeightForWidth(const QWidget* self, intptr_t slot);
QTLIBC_API int QWidget_QBaseHeightForWidth(const QWidget* self, int param1);
QTLIBC_API bool QWidget_HasHeightForWidth(const QWidget* self);
QTLIBC_API void QWidget_OnHasHeightForWidth(const QWidget* self, intptr_t slot);
QTLIBC_API bool QWidget_QBaseHasHeightForWidth(const QWidget* self);
QTLIBC_API QRegion* QWidget_VisibleRegion(const QWidget* self);
QTLIBC_API void QWidget_SetContentsMargins(QWidget* self, int left, int top, int right, int bottom);
QTLIBC_API void QWidget_SetContentsMarginsWithMargins(QWidget* self, QMargins* margins);
QTLIBC_API QMargins* QWidget_ContentsMargins(const QWidget* self);
QTLIBC_API QRect* QWidget_ContentsRect(const QWidget* self);
QTLIBC_API QLayout* QWidget_Layout(const QWidget* self);
QTLIBC_API void QWidget_SetLayout(QWidget* self, QLayout* layout);
QTLIBC_API void QWidget_UpdateGeometry(QWidget* self);
QTLIBC_API void QWidget_SetParent(QWidget* self, QWidget* parent);
QTLIBC_API void QWidget_SetParent2(QWidget* self, QWidget* parent, int f);
QTLIBC_API void QWidget_Scroll(QWidget* self, int dx, int dy);
QTLIBC_API void QWidget_Scroll2(QWidget* self, int dx, int dy, QRect* param3);
QTLIBC_API QWidget* QWidget_FocusWidget(const QWidget* self);
QTLIBC_API QWidget* QWidget_NextInFocusChain(const QWidget* self);
QTLIBC_API QWidget* QWidget_PreviousInFocusChain(const QWidget* self);
QTLIBC_API bool QWidget_AcceptDrops(const QWidget* self);
QTLIBC_API void QWidget_SetAcceptDrops(QWidget* self, bool on);
QTLIBC_API void QWidget_AddAction(QWidget* self, QAction* action);
QTLIBC_API void QWidget_AddActions(QWidget* self, libqt_list /* of QAction* */ actions);
QTLIBC_API void QWidget_InsertActions(QWidget* self, QAction* before, libqt_list /* of QAction* */ actions);
QTLIBC_API void QWidget_InsertAction(QWidget* self, QAction* before, QAction* action);
QTLIBC_API void QWidget_RemoveAction(QWidget* self, QAction* action);
QTLIBC_API libqt_list /* of QAction* */ QWidget_Actions(const QWidget* self);
QTLIBC_API QAction* QWidget_AddActionWithText(QWidget* self, libqt_string text);
QTLIBC_API QAction* QWidget_AddAction2(QWidget* self, QIcon* icon, libqt_string text);
QTLIBC_API QAction* QWidget_AddAction3(QWidget* self, libqt_string text, QKeySequence* shortcut);
QTLIBC_API QAction* QWidget_AddAction4(QWidget* self, QIcon* icon, libqt_string text, QKeySequence* shortcut);
QTLIBC_API QWidget* QWidget_ParentWidget(const QWidget* self);
QTLIBC_API void QWidget_SetWindowFlags(QWidget* self, int typeVal);
QTLIBC_API int QWidget_WindowFlags(const QWidget* self);
QTLIBC_API void QWidget_SetWindowFlag(QWidget* self, int param1);
QTLIBC_API void QWidget_OverrideWindowFlags(QWidget* self, int typeVal);
QTLIBC_API int QWidget_WindowType(const QWidget* self);
QTLIBC_API QWidget* QWidget_Find(unsigned long long param1);
QTLIBC_API QWidget* QWidget_ChildAt(const QWidget* self, int x, int y);
QTLIBC_API QWidget* QWidget_ChildAtWithQPoint(const QWidget* self, QPoint* p);
QTLIBC_API void QWidget_SetAttribute(QWidget* self, int param1);
QTLIBC_API bool QWidget_TestAttribute(const QWidget* self, int param1);
QTLIBC_API QPaintEngine* QWidget_PaintEngine(const QWidget* self);
QTLIBC_API void QWidget_OnPaintEngine(const QWidget* self, intptr_t slot);
QTLIBC_API QPaintEngine* QWidget_QBasePaintEngine(const QWidget* self);
QTLIBC_API void QWidget_EnsurePolished(const QWidget* self);
QTLIBC_API bool QWidget_IsAncestorOf(const QWidget* self, QWidget* child);
QTLIBC_API bool QWidget_AutoFillBackground(const QWidget* self);
QTLIBC_API void QWidget_SetAutoFillBackground(QWidget* self, bool enabled);
QTLIBC_API QBackingStore* QWidget_BackingStore(const QWidget* self);
QTLIBC_API QWindow* QWidget_WindowHandle(const QWidget* self);
QTLIBC_API QScreen* QWidget_Screen(const QWidget* self);
QTLIBC_API void QWidget_SetScreen(QWidget* self, QScreen* screen);
QTLIBC_API QWidget* QWidget_CreateWindowContainer(QWindow* window);
QTLIBC_API void QWidget_WindowTitleChanged(QWidget* self, libqt_string title);
QTLIBC_API void QWidget_Connect_WindowTitleChanged(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_WindowIconChanged(QWidget* self, QIcon* icon);
QTLIBC_API void QWidget_Connect_WindowIconChanged(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_WindowIconTextChanged(QWidget* self, libqt_string iconText);
QTLIBC_API void QWidget_Connect_WindowIconTextChanged(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_CustomContextMenuRequested(QWidget* self, QPoint* pos);
QTLIBC_API void QWidget_Connect_CustomContextMenuRequested(QWidget* self, intptr_t slot);
QTLIBC_API bool QWidget_Event(QWidget* self, QEvent* event);
QTLIBC_API void QWidget_OnEvent(QWidget* self, intptr_t slot);
QTLIBC_API bool QWidget_QBaseEvent(QWidget* self, QEvent* event);
QTLIBC_API void QWidget_MousePressEvent(QWidget* self, QMouseEvent* event);
QTLIBC_API void QWidget_OnMousePressEvent(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseMousePressEvent(QWidget* self, QMouseEvent* event);
QTLIBC_API void QWidget_MouseReleaseEvent(QWidget* self, QMouseEvent* event);
QTLIBC_API void QWidget_OnMouseReleaseEvent(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseMouseReleaseEvent(QWidget* self, QMouseEvent* event);
QTLIBC_API void QWidget_MouseDoubleClickEvent(QWidget* self, QMouseEvent* event);
QTLIBC_API void QWidget_OnMouseDoubleClickEvent(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseMouseDoubleClickEvent(QWidget* self, QMouseEvent* event);
QTLIBC_API void QWidget_MouseMoveEvent(QWidget* self, QMouseEvent* event);
QTLIBC_API void QWidget_OnMouseMoveEvent(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseMouseMoveEvent(QWidget* self, QMouseEvent* event);
QTLIBC_API void QWidget_WheelEvent(QWidget* self, QWheelEvent* event);
QTLIBC_API void QWidget_OnWheelEvent(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseWheelEvent(QWidget* self, QWheelEvent* event);
QTLIBC_API void QWidget_KeyPressEvent(QWidget* self, QKeyEvent* event);
QTLIBC_API void QWidget_OnKeyPressEvent(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseKeyPressEvent(QWidget* self, QKeyEvent* event);
QTLIBC_API void QWidget_KeyReleaseEvent(QWidget* self, QKeyEvent* event);
QTLIBC_API void QWidget_OnKeyReleaseEvent(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseKeyReleaseEvent(QWidget* self, QKeyEvent* event);
QTLIBC_API void QWidget_FocusInEvent(QWidget* self, QFocusEvent* event);
QTLIBC_API void QWidget_OnFocusInEvent(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseFocusInEvent(QWidget* self, QFocusEvent* event);
QTLIBC_API void QWidget_FocusOutEvent(QWidget* self, QFocusEvent* event);
QTLIBC_API void QWidget_OnFocusOutEvent(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseFocusOutEvent(QWidget* self, QFocusEvent* event);
QTLIBC_API void QWidget_EnterEvent(QWidget* self, QEnterEvent* event);
QTLIBC_API void QWidget_OnEnterEvent(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseEnterEvent(QWidget* self, QEnterEvent* event);
QTLIBC_API void QWidget_LeaveEvent(QWidget* self, QEvent* event);
QTLIBC_API void QWidget_OnLeaveEvent(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseLeaveEvent(QWidget* self, QEvent* event);
QTLIBC_API void QWidget_PaintEvent(QWidget* self, QPaintEvent* event);
QTLIBC_API void QWidget_OnPaintEvent(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBasePaintEvent(QWidget* self, QPaintEvent* event);
QTLIBC_API void QWidget_MoveEvent(QWidget* self, QMoveEvent* event);
QTLIBC_API void QWidget_OnMoveEvent(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseMoveEvent(QWidget* self, QMoveEvent* event);
QTLIBC_API void QWidget_ResizeEvent(QWidget* self, QResizeEvent* event);
QTLIBC_API void QWidget_OnResizeEvent(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseResizeEvent(QWidget* self, QResizeEvent* event);
QTLIBC_API void QWidget_CloseEvent(QWidget* self, QCloseEvent* event);
QTLIBC_API void QWidget_OnCloseEvent(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseCloseEvent(QWidget* self, QCloseEvent* event);
QTLIBC_API void QWidget_ContextMenuEvent(QWidget* self, QContextMenuEvent* event);
QTLIBC_API void QWidget_OnContextMenuEvent(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseContextMenuEvent(QWidget* self, QContextMenuEvent* event);
QTLIBC_API void QWidget_TabletEvent(QWidget* self, QTabletEvent* event);
QTLIBC_API void QWidget_OnTabletEvent(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseTabletEvent(QWidget* self, QTabletEvent* event);
QTLIBC_API void QWidget_ActionEvent(QWidget* self, QActionEvent* event);
QTLIBC_API void QWidget_OnActionEvent(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseActionEvent(QWidget* self, QActionEvent* event);
QTLIBC_API void QWidget_DragEnterEvent(QWidget* self, QDragEnterEvent* event);
QTLIBC_API void QWidget_OnDragEnterEvent(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseDragEnterEvent(QWidget* self, QDragEnterEvent* event);
QTLIBC_API void QWidget_DragMoveEvent(QWidget* self, QDragMoveEvent* event);
QTLIBC_API void QWidget_OnDragMoveEvent(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseDragMoveEvent(QWidget* self, QDragMoveEvent* event);
QTLIBC_API void QWidget_DragLeaveEvent(QWidget* self, QDragLeaveEvent* event);
QTLIBC_API void QWidget_OnDragLeaveEvent(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseDragLeaveEvent(QWidget* self, QDragLeaveEvent* event);
QTLIBC_API void QWidget_DropEvent(QWidget* self, QDropEvent* event);
QTLIBC_API void QWidget_OnDropEvent(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseDropEvent(QWidget* self, QDropEvent* event);
QTLIBC_API void QWidget_ShowEvent(QWidget* self, QShowEvent* event);
QTLIBC_API void QWidget_OnShowEvent(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseShowEvent(QWidget* self, QShowEvent* event);
QTLIBC_API void QWidget_HideEvent(QWidget* self, QHideEvent* event);
QTLIBC_API void QWidget_OnHideEvent(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseHideEvent(QWidget* self, QHideEvent* event);
QTLIBC_API bool QWidget_NativeEvent(QWidget* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QWidget_OnNativeEvent(QWidget* self, intptr_t slot);
QTLIBC_API bool QWidget_QBaseNativeEvent(QWidget* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QWidget_ChangeEvent(QWidget* self, QEvent* param1);
QTLIBC_API void QWidget_OnChangeEvent(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseChangeEvent(QWidget* self, QEvent* param1);
QTLIBC_API int QWidget_Metric(const QWidget* self, int param1);
QTLIBC_API void QWidget_OnMetric(const QWidget* self, intptr_t slot);
QTLIBC_API int QWidget_QBaseMetric(const QWidget* self, int param1);
QTLIBC_API void QWidget_InitPainter(const QWidget* self, QPainter* painter);
QTLIBC_API void QWidget_OnInitPainter(const QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseInitPainter(const QWidget* self, QPainter* painter);
QTLIBC_API QPaintDevice* QWidget_Redirected(const QWidget* self, QPoint* offset);
QTLIBC_API void QWidget_OnRedirected(const QWidget* self, intptr_t slot);
QTLIBC_API QPaintDevice* QWidget_QBaseRedirected(const QWidget* self, QPoint* offset);
QTLIBC_API QPainter* QWidget_SharedPainter(const QWidget* self);
QTLIBC_API void QWidget_OnSharedPainter(const QWidget* self, intptr_t slot);
QTLIBC_API QPainter* QWidget_QBaseSharedPainter(const QWidget* self);
QTLIBC_API void QWidget_InputMethodEvent(QWidget* self, QInputMethodEvent* param1);
QTLIBC_API void QWidget_OnInputMethodEvent(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseInputMethodEvent(QWidget* self, QInputMethodEvent* param1);
QTLIBC_API QVariant* QWidget_InputMethodQuery(const QWidget* self, int param1);
QTLIBC_API void QWidget_OnInputMethodQuery(const QWidget* self, intptr_t slot);
QTLIBC_API QVariant* QWidget_QBaseInputMethodQuery(const QWidget* self, int param1);
QTLIBC_API int QWidget_InputMethodHints(const QWidget* self);
QTLIBC_API void QWidget_SetInputMethodHints(QWidget* self, int hints);
QTLIBC_API bool QWidget_FocusNextPrevChild(QWidget* self, bool next);
QTLIBC_API void QWidget_OnFocusNextPrevChild(QWidget* self, intptr_t slot);
QTLIBC_API bool QWidget_QBaseFocusNextPrevChild(QWidget* self, bool next);
QTLIBC_API libqt_string QWidget_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QWidget_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QWidget_Render2(QWidget* self, QPaintDevice* target, QPoint* targetOffset);
QTLIBC_API void QWidget_Render3(QWidget* self, QPaintDevice* target, QPoint* targetOffset, QRegion* sourceRegion);
QTLIBC_API void QWidget_Render4(QWidget* self, QPaintDevice* target, QPoint* targetOffset, QRegion* sourceRegion, int renderFlags);
QTLIBC_API void QWidget_Render22(QWidget* self, QPainter* painter, QPoint* targetOffset);
QTLIBC_API void QWidget_Render32(QWidget* self, QPainter* painter, QPoint* targetOffset, QRegion* sourceRegion);
QTLIBC_API void QWidget_Render42(QWidget* self, QPainter* painter, QPoint* targetOffset, QRegion* sourceRegion, int renderFlags);
QTLIBC_API QPixmap* QWidget_Grab1(QWidget* self, QRect* rectangle);
QTLIBC_API void QWidget_GrabGesture2(QWidget* self, int typeVal, int flags);
QTLIBC_API int QWidget_GrabShortcut2(QWidget* self, QKeySequence* key, int context);
QTLIBC_API void QWidget_SetShortcutEnabled2(QWidget* self, int id, bool enable);
QTLIBC_API void QWidget_SetShortcutAutoRepeat2(QWidget* self, int id, bool enable);
QTLIBC_API void QWidget_SetWindowFlag2(QWidget* self, int param1, bool on);
QTLIBC_API void QWidget_SetAttribute2(QWidget* self, int param1, bool on);
QTLIBC_API QWidget* QWidget_CreateWindowContainer2(QWindow* window, QWidget* parent);
QTLIBC_API QWidget* QWidget_CreateWindowContainer3(QWindow* window, QWidget* parent, int flags);
QTLIBC_API bool QWidget_EventFilter(QWidget* self, QObject* watched, QEvent* event);
QTLIBC_API void QWidget_OnEventFilter(QWidget* self, intptr_t slot);
QTLIBC_API bool QWidget_QBaseEventFilter(QWidget* self, QObject* watched, QEvent* event);
QTLIBC_API void QWidget_TimerEvent(QWidget* self, QTimerEvent* event);
QTLIBC_API void QWidget_OnTimerEvent(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseTimerEvent(QWidget* self, QTimerEvent* event);
QTLIBC_API void QWidget_ChildEvent(QWidget* self, QChildEvent* event);
QTLIBC_API void QWidget_OnChildEvent(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseChildEvent(QWidget* self, QChildEvent* event);
QTLIBC_API void QWidget_CustomEvent(QWidget* self, QEvent* event);
QTLIBC_API void QWidget_OnCustomEvent(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseCustomEvent(QWidget* self, QEvent* event);
QTLIBC_API void QWidget_ConnectNotify(QWidget* self, QMetaMethod* signal);
QTLIBC_API void QWidget_OnConnectNotify(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseConnectNotify(QWidget* self, QMetaMethod* signal);
QTLIBC_API void QWidget_DisconnectNotify(QWidget* self, QMetaMethod* signal);
QTLIBC_API void QWidget_OnDisconnectNotify(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseDisconnectNotify(QWidget* self, QMetaMethod* signal);
QTLIBC_API void QWidget_UpdateMicroFocus(QWidget* self);
QTLIBC_API void QWidget_OnUpdateMicroFocus(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseUpdateMicroFocus(QWidget* self);
QTLIBC_API void QWidget_Create(QWidget* self);
QTLIBC_API void QWidget_OnCreate(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseCreate(QWidget* self);
QTLIBC_API void QWidget_Destroy(QWidget* self);
QTLIBC_API void QWidget_OnDestroy(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseDestroy(QWidget* self);
QTLIBC_API bool QWidget_FocusNextChild(QWidget* self);
QTLIBC_API void QWidget_OnFocusNextChild(QWidget* self, intptr_t slot);
QTLIBC_API bool QWidget_QBaseFocusNextChild(QWidget* self);
QTLIBC_API bool QWidget_FocusPreviousChild(QWidget* self);
QTLIBC_API void QWidget_OnFocusPreviousChild(QWidget* self, intptr_t slot);
QTLIBC_API bool QWidget_QBaseFocusPreviousChild(QWidget* self);
QTLIBC_API void QWidget_UpdateMicroFocus1(QWidget* self, int query);
QTLIBC_API void QWidget_OnUpdateMicroFocus1(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseUpdateMicroFocus1(QWidget* self, int query);
QTLIBC_API void QWidget_Create1(QWidget* self, unsigned long long param1);
QTLIBC_API void QWidget_OnCreate1(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseCreate1(QWidget* self, unsigned long long param1);
QTLIBC_API void QWidget_Create2(QWidget* self, unsigned long long param1, bool initializeWindow);
QTLIBC_API void QWidget_OnCreate2(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseCreate2(QWidget* self, unsigned long long param1, bool initializeWindow);
QTLIBC_API void QWidget_Create3(QWidget* self, unsigned long long param1, bool initializeWindow, bool destroyOldWindow);
QTLIBC_API void QWidget_OnCreate3(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseCreate3(QWidget* self, unsigned long long param1, bool initializeWindow, bool destroyOldWindow);
QTLIBC_API void QWidget_Destroy1(QWidget* self, bool destroyWindow);
QTLIBC_API void QWidget_OnDestroy1(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseDestroy1(QWidget* self, bool destroyWindow);
QTLIBC_API void QWidget_Destroy2(QWidget* self, bool destroyWindow, bool destroySubWindows);
QTLIBC_API void QWidget_OnDestroy2(QWidget* self, intptr_t slot);
QTLIBC_API void QWidget_QBaseDestroy2(QWidget* self, bool destroyWindow, bool destroySubWindows);
QTLIBC_API QObject* QWidget_Sender(const QWidget* self);
QTLIBC_API void QWidget_OnSender(const QWidget* self, intptr_t slot);
QTLIBC_API QObject* QWidget_QBaseSender(const QWidget* self);
QTLIBC_API int QWidget_SenderSignalIndex(const QWidget* self);
QTLIBC_API void QWidget_OnSenderSignalIndex(const QWidget* self, intptr_t slot);
QTLIBC_API int QWidget_QBaseSenderSignalIndex(const QWidget* self);
QTLIBC_API int QWidget_Receivers(const QWidget* self, const char* signal);
QTLIBC_API void QWidget_OnReceivers(const QWidget* self, intptr_t slot);
QTLIBC_API int QWidget_QBaseReceivers(const QWidget* self, const char* signal);
QTLIBC_API bool QWidget_IsSignalConnected(const QWidget* self, QMetaMethod* signal);
QTLIBC_API void QWidget_OnIsSignalConnected(const QWidget* self, intptr_t slot);
QTLIBC_API bool QWidget_QBaseIsSignalConnected(const QWidget* self, QMetaMethod* signal);
QTLIBC_API void QWidget_Delete(QWidget* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
