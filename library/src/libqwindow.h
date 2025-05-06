#pragma once
#ifndef SRCC_LIBQWINDOW_H
#define SRCC_LIBQWINDOW_H

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
typedef struct QAccessibleInterface QAccessibleInterface;
typedef struct QAnyStringView QAnyStringView;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QCursor QCursor;
typedef struct QEvent QEvent;
typedef struct QExposeEvent QExposeEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QHideEvent QHideEvent;
typedef struct QIcon QIcon;
typedef struct QKeyEvent QKeyEvent;
typedef struct QMargins QMargins;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QMouseEvent QMouseEvent;
typedef struct QMoveEvent QMoveEvent;
typedef struct QObject QObject;
typedef struct QPaintEvent QPaintEvent;
typedef struct QPoint QPoint;
typedef struct QPointF QPointF;
typedef struct QRect QRect;
typedef struct QRegion QRegion;
typedef struct QResizeEvent QResizeEvent;
typedef struct QScreen QScreen;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QSurface QSurface;
typedef struct QSurfaceFormat QSurfaceFormat;
typedef struct QTabletEvent QTabletEvent;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QTouchEvent QTouchEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWindow QWindow;
#endif

#ifdef __cplusplus
typedef QWindow::AncestorMode AncestorMode; // C++ enum
typedef QWindow::Visibility Visibility;     // C++ enum
#else
typedef int AncestorMode; // C ABI enum
typedef int Visibility;   // C ABI enum
#endif

QTLIBC_API QWindow* QWindow_new();
QTLIBC_API QWindow* QWindow_new2(QWindow* parent);
QTLIBC_API QWindow* QWindow_new3(QScreen* screen);
QTLIBC_API QMetaObject* QWindow_MetaObject(const QWindow* self);
QTLIBC_API void* QWindow_Metacast(QWindow* self, const char* param1);
QTLIBC_API int QWindow_Metacall(QWindow* self, int param1, int param2, void** param3);
QTLIBC_API void QWindow_OnMetacall(QWindow* self, intptr_t slot);
QTLIBC_API int QWindow_QBaseMetacall(QWindow* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QWindow_Tr(const char* s);
QTLIBC_API void QWindow_SetSurfaceType(QWindow* self, int surfaceType);
QTLIBC_API int QWindow_SurfaceType(const QWindow* self);
QTLIBC_API void QWindow_OnSurfaceType(const QWindow* self, intptr_t slot);
QTLIBC_API int QWindow_QBaseSurfaceType(const QWindow* self);
QTLIBC_API bool QWindow_IsVisible(const QWindow* self);
QTLIBC_API int QWindow_Visibility(const QWindow* self);
QTLIBC_API void QWindow_SetVisibility(QWindow* self, int v);
QTLIBC_API void QWindow_Create(QWindow* self);
QTLIBC_API uintptr_t QWindow_WinId(const QWindow* self);
QTLIBC_API QWindow* QWindow_Parent(const QWindow* self);
QTLIBC_API void QWindow_SetParent(QWindow* self, QWindow* parent);
QTLIBC_API bool QWindow_IsTopLevel(const QWindow* self);
QTLIBC_API bool QWindow_IsModal(const QWindow* self);
QTLIBC_API int QWindow_Modality(const QWindow* self);
QTLIBC_API void QWindow_SetModality(QWindow* self, int modality);
QTLIBC_API void QWindow_SetFormat(QWindow* self, QSurfaceFormat* format);
QTLIBC_API QSurfaceFormat* QWindow_Format(const QWindow* self);
QTLIBC_API void QWindow_OnFormat(const QWindow* self, intptr_t slot);
QTLIBC_API QSurfaceFormat* QWindow_QBaseFormat(const QWindow* self);
QTLIBC_API QSurfaceFormat* QWindow_RequestedFormat(const QWindow* self);
QTLIBC_API void QWindow_SetFlags(QWindow* self, int flags);
QTLIBC_API int QWindow_Flags(const QWindow* self);
QTLIBC_API void QWindow_SetFlag(QWindow* self, int param1);
QTLIBC_API int QWindow_Type(const QWindow* self);
QTLIBC_API libqt_string QWindow_Title(const QWindow* self);
QTLIBC_API void QWindow_SetOpacity(QWindow* self, double level);
QTLIBC_API double QWindow_Opacity(const QWindow* self);
QTLIBC_API void QWindow_SetMask(QWindow* self, QRegion* region);
QTLIBC_API QRegion* QWindow_Mask(const QWindow* self);
QTLIBC_API bool QWindow_IsActive(const QWindow* self);
QTLIBC_API void QWindow_ReportContentOrientationChange(QWindow* self, int orientation);
QTLIBC_API int QWindow_ContentOrientation(const QWindow* self);
QTLIBC_API double QWindow_DevicePixelRatio(const QWindow* self);
QTLIBC_API int QWindow_WindowState(const QWindow* self);
QTLIBC_API int QWindow_WindowStates(const QWindow* self);
QTLIBC_API void QWindow_SetWindowState(QWindow* self, int state);
QTLIBC_API void QWindow_SetWindowStates(QWindow* self, int states);
QTLIBC_API void QWindow_SetTransientParent(QWindow* self, QWindow* parent);
QTLIBC_API QWindow* QWindow_TransientParent(const QWindow* self);
QTLIBC_API bool QWindow_IsAncestorOf(const QWindow* self, QWindow* child);
QTLIBC_API bool QWindow_IsExposed(const QWindow* self);
QTLIBC_API int QWindow_MinimumWidth(const QWindow* self);
QTLIBC_API int QWindow_MinimumHeight(const QWindow* self);
QTLIBC_API int QWindow_MaximumWidth(const QWindow* self);
QTLIBC_API int QWindow_MaximumHeight(const QWindow* self);
QTLIBC_API QSize* QWindow_MinimumSize(const QWindow* self);
QTLIBC_API QSize* QWindow_MaximumSize(const QWindow* self);
QTLIBC_API QSize* QWindow_BaseSize(const QWindow* self);
QTLIBC_API QSize* QWindow_SizeIncrement(const QWindow* self);
QTLIBC_API void QWindow_SetMinimumSize(QWindow* self, QSize* size);
QTLIBC_API void QWindow_SetMaximumSize(QWindow* self, QSize* size);
QTLIBC_API void QWindow_SetBaseSize(QWindow* self, QSize* size);
QTLIBC_API void QWindow_SetSizeIncrement(QWindow* self, QSize* size);
QTLIBC_API QRect* QWindow_Geometry(const QWindow* self);
QTLIBC_API QMargins* QWindow_FrameMargins(const QWindow* self);
QTLIBC_API QRect* QWindow_FrameGeometry(const QWindow* self);
QTLIBC_API QPoint* QWindow_FramePosition(const QWindow* self);
QTLIBC_API void QWindow_SetFramePosition(QWindow* self, QPoint* point);
QTLIBC_API int QWindow_Width(const QWindow* self);
QTLIBC_API int QWindow_Height(const QWindow* self);
QTLIBC_API int QWindow_X(const QWindow* self);
QTLIBC_API int QWindow_Y(const QWindow* self);
QTLIBC_API QSize* QWindow_Size(const QWindow* self);
QTLIBC_API void QWindow_OnSize(const QWindow* self, intptr_t slot);
QTLIBC_API QSize* QWindow_QBaseSize(const QWindow* self);
QTLIBC_API QPoint* QWindow_Position(const QWindow* self);
QTLIBC_API void QWindow_SetPosition(QWindow* self, QPoint* pt);
QTLIBC_API void QWindow_SetPosition2(QWindow* self, int posx, int posy);
QTLIBC_API void QWindow_Resize(QWindow* self, QSize* newSize);
QTLIBC_API void QWindow_Resize2(QWindow* self, int w, int h);
QTLIBC_API void QWindow_SetFilePath(QWindow* self, libqt_string filePath);
QTLIBC_API libqt_string QWindow_FilePath(const QWindow* self);
QTLIBC_API void QWindow_SetIcon(QWindow* self, QIcon* icon);
QTLIBC_API QIcon* QWindow_Icon(const QWindow* self);
QTLIBC_API void QWindow_Destroy(QWindow* self);
QTLIBC_API bool QWindow_SetKeyboardGrabEnabled(QWindow* self, bool grab);
QTLIBC_API bool QWindow_SetMouseGrabEnabled(QWindow* self, bool grab);
QTLIBC_API QScreen* QWindow_Screen(const QWindow* self);
QTLIBC_API void QWindow_SetScreen(QWindow* self, QScreen* screen);
QTLIBC_API QAccessibleInterface* QWindow_AccessibleRoot(const QWindow* self);
QTLIBC_API void QWindow_OnAccessibleRoot(const QWindow* self, intptr_t slot);
QTLIBC_API QAccessibleInterface* QWindow_QBaseAccessibleRoot(const QWindow* self);
QTLIBC_API QObject* QWindow_FocusObject(const QWindow* self);
QTLIBC_API void QWindow_OnFocusObject(const QWindow* self, intptr_t slot);
QTLIBC_API QObject* QWindow_QBaseFocusObject(const QWindow* self);
QTLIBC_API QPointF* QWindow_MapToGlobal(const QWindow* self, QPointF* pos);
QTLIBC_API QPointF* QWindow_MapFromGlobal(const QWindow* self, QPointF* pos);
QTLIBC_API QPoint* QWindow_MapToGlobalWithPos(const QWindow* self, QPoint* pos);
QTLIBC_API QPoint* QWindow_MapFromGlobalWithPos(const QWindow* self, QPoint* pos);
QTLIBC_API QCursor* QWindow_Cursor(const QWindow* self);
QTLIBC_API void QWindow_SetCursor(QWindow* self, QCursor* cursor);
QTLIBC_API void QWindow_UnsetCursor(QWindow* self);
QTLIBC_API QWindow* QWindow_FromWinId(uintptr_t id);
QTLIBC_API void QWindow_RequestActivate(QWindow* self);
QTLIBC_API void QWindow_SetVisible(QWindow* self, bool visible);
QTLIBC_API void QWindow_Show(QWindow* self);
QTLIBC_API void QWindow_Hide(QWindow* self);
QTLIBC_API void QWindow_ShowMinimized(QWindow* self);
QTLIBC_API void QWindow_ShowMaximized(QWindow* self);
QTLIBC_API void QWindow_ShowFullScreen(QWindow* self);
QTLIBC_API void QWindow_ShowNormal(QWindow* self);
QTLIBC_API bool QWindow_Close(QWindow* self);
QTLIBC_API void QWindow_Raise(QWindow* self);
QTLIBC_API void QWindow_Lower(QWindow* self);
QTLIBC_API bool QWindow_StartSystemResize(QWindow* self, int edges);
QTLIBC_API bool QWindow_StartSystemMove(QWindow* self);
QTLIBC_API void QWindow_SetTitle(QWindow* self, libqt_string title);
QTLIBC_API void QWindow_SetX(QWindow* self, int arg);
QTLIBC_API void QWindow_SetY(QWindow* self, int arg);
QTLIBC_API void QWindow_SetWidth(QWindow* self, int arg);
QTLIBC_API void QWindow_SetHeight(QWindow* self, int arg);
QTLIBC_API void QWindow_SetGeometry(QWindow* self, int posx, int posy, int w, int h);
QTLIBC_API void QWindow_SetGeometryWithRect(QWindow* self, QRect* rect);
QTLIBC_API void QWindow_SetMinimumWidth(QWindow* self, int w);
QTLIBC_API void QWindow_SetMinimumHeight(QWindow* self, int h);
QTLIBC_API void QWindow_SetMaximumWidth(QWindow* self, int w);
QTLIBC_API void QWindow_SetMaximumHeight(QWindow* self, int h);
QTLIBC_API void QWindow_Alert(QWindow* self, int msec);
QTLIBC_API void QWindow_RequestUpdate(QWindow* self);
QTLIBC_API void QWindow_ScreenChanged(QWindow* self, QScreen* screen);
void QWindow_Connect_ScreenChanged(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_ModalityChanged(QWindow* self, int modality);
void QWindow_Connect_ModalityChanged(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_WindowStateChanged(QWindow* self, int windowState);
void QWindow_Connect_WindowStateChanged(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_WindowTitleChanged(QWindow* self, libqt_string title);
void QWindow_Connect_WindowTitleChanged(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_XChanged(QWindow* self, int arg);
void QWindow_Connect_XChanged(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_YChanged(QWindow* self, int arg);
void QWindow_Connect_YChanged(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_WidthChanged(QWindow* self, int arg);
void QWindow_Connect_WidthChanged(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_HeightChanged(QWindow* self, int arg);
void QWindow_Connect_HeightChanged(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_MinimumWidthChanged(QWindow* self, int arg);
void QWindow_Connect_MinimumWidthChanged(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_MinimumHeightChanged(QWindow* self, int arg);
void QWindow_Connect_MinimumHeightChanged(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_MaximumWidthChanged(QWindow* self, int arg);
void QWindow_Connect_MaximumWidthChanged(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_MaximumHeightChanged(QWindow* self, int arg);
void QWindow_Connect_MaximumHeightChanged(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_VisibleChanged(QWindow* self, bool arg);
void QWindow_Connect_VisibleChanged(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_VisibilityChanged(QWindow* self, int visibility);
void QWindow_Connect_VisibilityChanged(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_ActiveChanged(QWindow* self);
void QWindow_Connect_ActiveChanged(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_ContentOrientationChanged(QWindow* self, int orientation);
void QWindow_Connect_ContentOrientationChanged(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_FocusObjectChanged(QWindow* self, QObject* object);
void QWindow_Connect_FocusObjectChanged(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_OpacityChanged(QWindow* self, double opacity);
void QWindow_Connect_OpacityChanged(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_TransientParentChanged(QWindow* self, QWindow* transientParent);
void QWindow_Connect_TransientParentChanged(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_ExposeEvent(QWindow* self, QExposeEvent* param1);
QTLIBC_API void QWindow_OnExposeEvent(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_QBaseExposeEvent(QWindow* self, QExposeEvent* param1);
QTLIBC_API void QWindow_ResizeEvent(QWindow* self, QResizeEvent* param1);
QTLIBC_API void QWindow_OnResizeEvent(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_QBaseResizeEvent(QWindow* self, QResizeEvent* param1);
QTLIBC_API void QWindow_PaintEvent(QWindow* self, QPaintEvent* param1);
QTLIBC_API void QWindow_OnPaintEvent(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_QBasePaintEvent(QWindow* self, QPaintEvent* param1);
QTLIBC_API void QWindow_MoveEvent(QWindow* self, QMoveEvent* param1);
QTLIBC_API void QWindow_OnMoveEvent(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_QBaseMoveEvent(QWindow* self, QMoveEvent* param1);
QTLIBC_API void QWindow_FocusInEvent(QWindow* self, QFocusEvent* param1);
QTLIBC_API void QWindow_OnFocusInEvent(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_QBaseFocusInEvent(QWindow* self, QFocusEvent* param1);
QTLIBC_API void QWindow_FocusOutEvent(QWindow* self, QFocusEvent* param1);
QTLIBC_API void QWindow_OnFocusOutEvent(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_QBaseFocusOutEvent(QWindow* self, QFocusEvent* param1);
QTLIBC_API void QWindow_ShowEvent(QWindow* self, QShowEvent* param1);
QTLIBC_API void QWindow_OnShowEvent(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_QBaseShowEvent(QWindow* self, QShowEvent* param1);
QTLIBC_API void QWindow_HideEvent(QWindow* self, QHideEvent* param1);
QTLIBC_API void QWindow_OnHideEvent(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_QBaseHideEvent(QWindow* self, QHideEvent* param1);
QTLIBC_API void QWindow_CloseEvent(QWindow* self, QCloseEvent* param1);
QTLIBC_API void QWindow_OnCloseEvent(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_QBaseCloseEvent(QWindow* self, QCloseEvent* param1);
QTLIBC_API bool QWindow_Event(QWindow* self, QEvent* param1);
QTLIBC_API void QWindow_OnEvent(QWindow* self, intptr_t slot);
QTLIBC_API bool QWindow_QBaseEvent(QWindow* self, QEvent* param1);
QTLIBC_API void QWindow_KeyPressEvent(QWindow* self, QKeyEvent* param1);
QTLIBC_API void QWindow_OnKeyPressEvent(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_QBaseKeyPressEvent(QWindow* self, QKeyEvent* param1);
QTLIBC_API void QWindow_KeyReleaseEvent(QWindow* self, QKeyEvent* param1);
QTLIBC_API void QWindow_OnKeyReleaseEvent(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_QBaseKeyReleaseEvent(QWindow* self, QKeyEvent* param1);
QTLIBC_API void QWindow_MousePressEvent(QWindow* self, QMouseEvent* param1);
QTLIBC_API void QWindow_OnMousePressEvent(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_QBaseMousePressEvent(QWindow* self, QMouseEvent* param1);
QTLIBC_API void QWindow_MouseReleaseEvent(QWindow* self, QMouseEvent* param1);
QTLIBC_API void QWindow_OnMouseReleaseEvent(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_QBaseMouseReleaseEvent(QWindow* self, QMouseEvent* param1);
QTLIBC_API void QWindow_MouseDoubleClickEvent(QWindow* self, QMouseEvent* param1);
QTLIBC_API void QWindow_OnMouseDoubleClickEvent(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_QBaseMouseDoubleClickEvent(QWindow* self, QMouseEvent* param1);
QTLIBC_API void QWindow_MouseMoveEvent(QWindow* self, QMouseEvent* param1);
QTLIBC_API void QWindow_OnMouseMoveEvent(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_QBaseMouseMoveEvent(QWindow* self, QMouseEvent* param1);
QTLIBC_API void QWindow_WheelEvent(QWindow* self, QWheelEvent* param1);
QTLIBC_API void QWindow_OnWheelEvent(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_QBaseWheelEvent(QWindow* self, QWheelEvent* param1);
QTLIBC_API void QWindow_TouchEvent(QWindow* self, QTouchEvent* param1);
QTLIBC_API void QWindow_OnTouchEvent(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_QBaseTouchEvent(QWindow* self, QTouchEvent* param1);
QTLIBC_API void QWindow_TabletEvent(QWindow* self, QTabletEvent* param1);
QTLIBC_API void QWindow_OnTabletEvent(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_QBaseTabletEvent(QWindow* self, QTabletEvent* param1);
QTLIBC_API bool QWindow_NativeEvent(QWindow* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QWindow_OnNativeEvent(QWindow* self, intptr_t slot);
QTLIBC_API bool QWindow_QBaseNativeEvent(QWindow* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API libqt_string QWindow_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QWindow_Tr3(const char* s, const char* c, int n);
QTLIBC_API QWindow* QWindow_Parent1(const QWindow* self, int mode);
QTLIBC_API void QWindow_SetFlag2(QWindow* self, int param1, bool on);
QTLIBC_API bool QWindow_IsAncestorOf2(const QWindow* self, QWindow* child, int mode);
QTLIBC_API bool QWindow_EventFilter(QWindow* self, QObject* watched, QEvent* event);
QTLIBC_API void QWindow_OnEventFilter(QWindow* self, intptr_t slot);
QTLIBC_API bool QWindow_QBaseEventFilter(QWindow* self, QObject* watched, QEvent* event);
QTLIBC_API void QWindow_TimerEvent(QWindow* self, QTimerEvent* event);
QTLIBC_API void QWindow_OnTimerEvent(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_QBaseTimerEvent(QWindow* self, QTimerEvent* event);
QTLIBC_API void QWindow_ChildEvent(QWindow* self, QChildEvent* event);
QTLIBC_API void QWindow_OnChildEvent(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_QBaseChildEvent(QWindow* self, QChildEvent* event);
QTLIBC_API void QWindow_CustomEvent(QWindow* self, QEvent* event);
QTLIBC_API void QWindow_OnCustomEvent(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_QBaseCustomEvent(QWindow* self, QEvent* event);
QTLIBC_API void QWindow_ConnectNotify(QWindow* self, QMetaMethod* signal);
QTLIBC_API void QWindow_OnConnectNotify(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_QBaseConnectNotify(QWindow* self, QMetaMethod* signal);
QTLIBC_API void QWindow_DisconnectNotify(QWindow* self, QMetaMethod* signal);
QTLIBC_API void QWindow_OnDisconnectNotify(QWindow* self, intptr_t slot);
QTLIBC_API void QWindow_QBaseDisconnectNotify(QWindow* self, QMetaMethod* signal);
QTLIBC_API void* QWindow_ResolveInterface(const QWindow* self, const char* name, int revision);
QTLIBC_API void QWindow_OnResolveInterface(const QWindow* self, intptr_t slot);
QTLIBC_API void* QWindow_QBaseResolveInterface(const QWindow* self, const char* name, int revision);
QTLIBC_API QObject* QWindow_Sender(const QWindow* self);
QTLIBC_API void QWindow_OnSender(const QWindow* self, intptr_t slot);
QTLIBC_API QObject* QWindow_QBaseSender(const QWindow* self);
QTLIBC_API int QWindow_SenderSignalIndex(const QWindow* self);
QTLIBC_API void QWindow_OnSenderSignalIndex(const QWindow* self, intptr_t slot);
QTLIBC_API int QWindow_QBaseSenderSignalIndex(const QWindow* self);
QTLIBC_API int QWindow_Receivers(const QWindow* self, const char* signal);
QTLIBC_API void QWindow_OnReceivers(const QWindow* self, intptr_t slot);
QTLIBC_API int QWindow_QBaseReceivers(const QWindow* self, const char* signal);
QTLIBC_API bool QWindow_IsSignalConnected(const QWindow* self, QMetaMethod* signal);
QTLIBC_API void QWindow_OnIsSignalConnected(const QWindow* self, intptr_t slot);
QTLIBC_API bool QWindow_QBaseIsSignalConnected(const QWindow* self, QMetaMethod* signal);
QTLIBC_API void QWindow_Delete(QWindow* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
