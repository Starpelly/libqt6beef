#pragma once
#ifndef SRCC_LIBQGRAPHICSVIEW_H
#define SRCC_LIBQGRAPHICSVIEW_H

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
typedef struct QAbstractScrollArea QAbstractScrollArea;
typedef struct QAction QAction;
typedef struct QActionEvent QActionEvent;
typedef struct QAnyStringView QAnyStringView;
typedef struct QBackingStore QBackingStore;
typedef struct QBindingStorage QBindingStorage;
typedef struct QBitmap QBitmap;
typedef struct QBrush QBrush;
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
typedef struct QGraphicsItem QGraphicsItem;
typedef struct QGraphicsProxyWidget QGraphicsProxyWidget;
typedef struct QGraphicsScene QGraphicsScene;
typedef struct QGraphicsView QGraphicsView;
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
typedef struct QPainterPath QPainterPath;
typedef struct QPalette QPalette;
typedef struct QPixmap QPixmap;
typedef struct QPoint QPoint;
typedef struct QPointF QPointF;
typedef struct QRect QRect;
typedef struct QRectF QRectF;
typedef struct QRegion QRegion;
typedef struct QResizeEvent QResizeEvent;
typedef struct QScreen QScreen;
typedef struct QScrollBar QScrollBar;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QSizePolicy QSizePolicy;
typedef struct QStyle QStyle;
typedef struct QStyleOptionFrame QStyleOptionFrame;
typedef struct QTabletEvent QTabletEvent;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QTransform QTransform;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
typedef struct QWindow QWindow;
#endif

#ifdef __cplusplus
typedef QGraphicsView::CacheMode CacheMode;                   // C++ QFlags
typedef QGraphicsView::CacheModeFlag CacheModeFlag;           // C++ enum
typedef QGraphicsView::DragMode DragMode;                     // C++ enum
typedef QGraphicsView::OptimizationFlag OptimizationFlag;     // C++ enum
typedef QGraphicsView::OptimizationFlags OptimizationFlags;   // C++ QFlags
typedef QGraphicsView::ViewportAnchor ViewportAnchor;         // C++ enum
typedef QGraphicsView::ViewportUpdateMode ViewportUpdateMode; // C++ enum
#else
typedef int CacheMode;          // C ABI QFlags
typedef int CacheModeFlag;      // C ABI enum
typedef int DragMode;           // C ABI enum
typedef int OptimizationFlag;   // C ABI enum
typedef int OptimizationFlags;  // C ABI QFlags
typedef int ViewportAnchor;     // C ABI enum
typedef int ViewportUpdateMode; // C ABI enum
#endif

QTLIBC_API QGraphicsView* QGraphicsView_new(QWidget* parent);
QTLIBC_API QGraphicsView* QGraphicsView_new2();
QTLIBC_API QGraphicsView* QGraphicsView_new3(QGraphicsScene* scene);
QTLIBC_API QGraphicsView* QGraphicsView_new4(QGraphicsScene* scene, QWidget* parent);
QTLIBC_API QMetaObject* QGraphicsView_MetaObject(const QGraphicsView* self);
QTLIBC_API void* QGraphicsView_Metacast(QGraphicsView* self, const char* param1);
QTLIBC_API int QGraphicsView_Metacall(QGraphicsView* self, int param1, int param2, void** param3);
QTLIBC_API void QGraphicsView_OnMetacall(QGraphicsView* self, intptr_t slot);
QTLIBC_API int QGraphicsView_QBaseMetacall(QGraphicsView* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QGraphicsView_Tr(const char* s);
QTLIBC_API QSize* QGraphicsView_SizeHint(const QGraphicsView* self);
QTLIBC_API void QGraphicsView_OnSizeHint(const QGraphicsView* self, intptr_t slot);
QTLIBC_API QSize* QGraphicsView_QBaseSizeHint(const QGraphicsView* self);
QTLIBC_API int QGraphicsView_RenderHints(const QGraphicsView* self);
QTLIBC_API void QGraphicsView_SetRenderHint(QGraphicsView* self, int hint);
QTLIBC_API void QGraphicsView_SetRenderHints(QGraphicsView* self, int hints);
QTLIBC_API int QGraphicsView_Alignment(const QGraphicsView* self);
QTLIBC_API void QGraphicsView_SetAlignment(QGraphicsView* self, int alignment);
QTLIBC_API int QGraphicsView_TransformationAnchor(const QGraphicsView* self);
QTLIBC_API void QGraphicsView_SetTransformationAnchor(QGraphicsView* self, int anchor);
QTLIBC_API int QGraphicsView_ResizeAnchor(const QGraphicsView* self);
QTLIBC_API void QGraphicsView_SetResizeAnchor(QGraphicsView* self, int anchor);
QTLIBC_API int QGraphicsView_ViewportUpdateMode(const QGraphicsView* self);
QTLIBC_API void QGraphicsView_SetViewportUpdateMode(QGraphicsView* self, int mode);
QTLIBC_API int QGraphicsView_OptimizationFlags(const QGraphicsView* self);
QTLIBC_API void QGraphicsView_SetOptimizationFlag(QGraphicsView* self, int flag);
QTLIBC_API void QGraphicsView_SetOptimizationFlags(QGraphicsView* self, int flags);
QTLIBC_API int QGraphicsView_DragMode(const QGraphicsView* self);
QTLIBC_API void QGraphicsView_SetDragMode(QGraphicsView* self, int mode);
QTLIBC_API int QGraphicsView_RubberBandSelectionMode(const QGraphicsView* self);
QTLIBC_API void QGraphicsView_SetRubberBandSelectionMode(QGraphicsView* self, int mode);
QTLIBC_API QRect* QGraphicsView_RubberBandRect(const QGraphicsView* self);
QTLIBC_API int QGraphicsView_CacheMode(const QGraphicsView* self);
QTLIBC_API void QGraphicsView_SetCacheMode(QGraphicsView* self, int mode);
QTLIBC_API void QGraphicsView_ResetCachedContent(QGraphicsView* self);
QTLIBC_API bool QGraphicsView_IsInteractive(const QGraphicsView* self);
QTLIBC_API void QGraphicsView_SetInteractive(QGraphicsView* self, bool allowed);
QTLIBC_API QGraphicsScene* QGraphicsView_Scene(const QGraphicsView* self);
QTLIBC_API void QGraphicsView_SetScene(QGraphicsView* self, QGraphicsScene* scene);
QTLIBC_API QRectF* QGraphicsView_SceneRect(const QGraphicsView* self);
QTLIBC_API void QGraphicsView_SetSceneRect(QGraphicsView* self, QRectF* rect);
QTLIBC_API void QGraphicsView_SetSceneRect2(QGraphicsView* self, double x, double y, double w, double h);
QTLIBC_API QTransform* QGraphicsView_Transform(const QGraphicsView* self);
QTLIBC_API QTransform* QGraphicsView_ViewportTransform(const QGraphicsView* self);
QTLIBC_API bool QGraphicsView_IsTransformed(const QGraphicsView* self);
QTLIBC_API void QGraphicsView_SetTransform(QGraphicsView* self, QTransform* matrix);
QTLIBC_API void QGraphicsView_ResetTransform(QGraphicsView* self);
QTLIBC_API void QGraphicsView_Rotate(QGraphicsView* self, double angle);
QTLIBC_API void QGraphicsView_Scale(QGraphicsView* self, double sx, double sy);
QTLIBC_API void QGraphicsView_Shear(QGraphicsView* self, double sh, double sv);
QTLIBC_API void QGraphicsView_Translate(QGraphicsView* self, double dx, double dy);
QTLIBC_API void QGraphicsView_CenterOn(QGraphicsView* self, QPointF* pos);
QTLIBC_API void QGraphicsView_CenterOn2(QGraphicsView* self, double x, double y);
QTLIBC_API void QGraphicsView_CenterOnWithItem(QGraphicsView* self, QGraphicsItem* item);
QTLIBC_API void QGraphicsView_EnsureVisible(QGraphicsView* self, QRectF* rect);
QTLIBC_API void QGraphicsView_EnsureVisible2(QGraphicsView* self, double x, double y, double w, double h);
QTLIBC_API void QGraphicsView_EnsureVisibleWithItem(QGraphicsView* self, QGraphicsItem* item);
QTLIBC_API void QGraphicsView_FitInView(QGraphicsView* self, QRectF* rect);
QTLIBC_API void QGraphicsView_FitInView2(QGraphicsView* self, double x, double y, double w, double h);
QTLIBC_API void QGraphicsView_FitInViewWithItem(QGraphicsView* self, QGraphicsItem* item);
QTLIBC_API void QGraphicsView_Render(QGraphicsView* self, QPainter* painter);
QTLIBC_API libqt_list /* of QGraphicsItem* */ QGraphicsView_Items(const QGraphicsView* self);
QTLIBC_API libqt_list /* of QGraphicsItem* */ QGraphicsView_ItemsWithPos(const QGraphicsView* self, QPoint* pos);
QTLIBC_API libqt_list /* of QGraphicsItem* */ QGraphicsView_Items2(const QGraphicsView* self, int x, int y);
QTLIBC_API libqt_list /* of QGraphicsItem* */ QGraphicsView_ItemsWithRect(const QGraphicsView* self, QRect* rect);
QTLIBC_API libqt_list /* of QGraphicsItem* */ QGraphicsView_Items3(const QGraphicsView* self, int x, int y, int w, int h);
QTLIBC_API libqt_list /* of QGraphicsItem* */ QGraphicsView_ItemsWithPath(const QGraphicsView* self, QPainterPath* path);
QTLIBC_API QGraphicsItem* QGraphicsView_ItemAt(const QGraphicsView* self, QPoint* pos);
QTLIBC_API QGraphicsItem* QGraphicsView_ItemAt2(const QGraphicsView* self, int x, int y);
QTLIBC_API QPointF* QGraphicsView_MapToScene(const QGraphicsView* self, QPoint* point);
QTLIBC_API QPainterPath* QGraphicsView_MapToSceneWithPath(const QGraphicsView* self, QPainterPath* path);
QTLIBC_API QPoint* QGraphicsView_MapFromScene(const QGraphicsView* self, QPointF* point);
QTLIBC_API QPainterPath* QGraphicsView_MapFromSceneWithPath(const QGraphicsView* self, QPainterPath* path);
QTLIBC_API QPointF* QGraphicsView_MapToScene2(const QGraphicsView* self, int x, int y);
QTLIBC_API QPoint* QGraphicsView_MapFromScene2(const QGraphicsView* self, double x, double y);
QTLIBC_API QVariant* QGraphicsView_InputMethodQuery(const QGraphicsView* self, int query);
QTLIBC_API void QGraphicsView_OnInputMethodQuery(const QGraphicsView* self, intptr_t slot);
QTLIBC_API QVariant* QGraphicsView_QBaseInputMethodQuery(const QGraphicsView* self, int query);
QTLIBC_API QBrush* QGraphicsView_BackgroundBrush(const QGraphicsView* self);
QTLIBC_API void QGraphicsView_SetBackgroundBrush(QGraphicsView* self, QBrush* brush);
QTLIBC_API QBrush* QGraphicsView_ForegroundBrush(const QGraphicsView* self);
QTLIBC_API void QGraphicsView_SetForegroundBrush(QGraphicsView* self, QBrush* brush);
QTLIBC_API void QGraphicsView_UpdateScene(QGraphicsView* self, libqt_list /* of QRectF* */ rects);
QTLIBC_API void QGraphicsView_InvalidateScene(QGraphicsView* self);
QTLIBC_API void QGraphicsView_UpdateSceneRect(QGraphicsView* self, QRectF* rect);
QTLIBC_API void QGraphicsView_RubberBandChanged(QGraphicsView* self, QRect* viewportRect, QPointF* fromScenePoint, QPointF* toScenePoint);
void QGraphicsView_Connect_RubberBandChanged(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_SetupViewport(QGraphicsView* self, QWidget* widget);
QTLIBC_API void QGraphicsView_OnSetupViewport(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseSetupViewport(QGraphicsView* self, QWidget* widget);
QTLIBC_API bool QGraphicsView_Event(QGraphicsView* self, QEvent* event);
QTLIBC_API void QGraphicsView_OnEvent(QGraphicsView* self, intptr_t slot);
QTLIBC_API bool QGraphicsView_QBaseEvent(QGraphicsView* self, QEvent* event);
QTLIBC_API bool QGraphicsView_ViewportEvent(QGraphicsView* self, QEvent* event);
QTLIBC_API void QGraphicsView_OnViewportEvent(QGraphicsView* self, intptr_t slot);
QTLIBC_API bool QGraphicsView_QBaseViewportEvent(QGraphicsView* self, QEvent* event);
QTLIBC_API void QGraphicsView_ContextMenuEvent(QGraphicsView* self, QContextMenuEvent* event);
QTLIBC_API void QGraphicsView_OnContextMenuEvent(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseContextMenuEvent(QGraphicsView* self, QContextMenuEvent* event);
QTLIBC_API void QGraphicsView_DragEnterEvent(QGraphicsView* self, QDragEnterEvent* event);
QTLIBC_API void QGraphicsView_OnDragEnterEvent(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseDragEnterEvent(QGraphicsView* self, QDragEnterEvent* event);
QTLIBC_API void QGraphicsView_DragLeaveEvent(QGraphicsView* self, QDragLeaveEvent* event);
QTLIBC_API void QGraphicsView_OnDragLeaveEvent(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseDragLeaveEvent(QGraphicsView* self, QDragLeaveEvent* event);
QTLIBC_API void QGraphicsView_DragMoveEvent(QGraphicsView* self, QDragMoveEvent* event);
QTLIBC_API void QGraphicsView_OnDragMoveEvent(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseDragMoveEvent(QGraphicsView* self, QDragMoveEvent* event);
QTLIBC_API void QGraphicsView_DropEvent(QGraphicsView* self, QDropEvent* event);
QTLIBC_API void QGraphicsView_OnDropEvent(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseDropEvent(QGraphicsView* self, QDropEvent* event);
QTLIBC_API void QGraphicsView_FocusInEvent(QGraphicsView* self, QFocusEvent* event);
QTLIBC_API void QGraphicsView_OnFocusInEvent(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseFocusInEvent(QGraphicsView* self, QFocusEvent* event);
QTLIBC_API bool QGraphicsView_FocusNextPrevChild(QGraphicsView* self, bool next);
QTLIBC_API void QGraphicsView_OnFocusNextPrevChild(QGraphicsView* self, intptr_t slot);
QTLIBC_API bool QGraphicsView_QBaseFocusNextPrevChild(QGraphicsView* self, bool next);
QTLIBC_API void QGraphicsView_FocusOutEvent(QGraphicsView* self, QFocusEvent* event);
QTLIBC_API void QGraphicsView_OnFocusOutEvent(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseFocusOutEvent(QGraphicsView* self, QFocusEvent* event);
QTLIBC_API void QGraphicsView_KeyPressEvent(QGraphicsView* self, QKeyEvent* event);
QTLIBC_API void QGraphicsView_OnKeyPressEvent(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseKeyPressEvent(QGraphicsView* self, QKeyEvent* event);
QTLIBC_API void QGraphicsView_KeyReleaseEvent(QGraphicsView* self, QKeyEvent* event);
QTLIBC_API void QGraphicsView_OnKeyReleaseEvent(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseKeyReleaseEvent(QGraphicsView* self, QKeyEvent* event);
QTLIBC_API void QGraphicsView_MouseDoubleClickEvent(QGraphicsView* self, QMouseEvent* event);
QTLIBC_API void QGraphicsView_OnMouseDoubleClickEvent(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseMouseDoubleClickEvent(QGraphicsView* self, QMouseEvent* event);
QTLIBC_API void QGraphicsView_MousePressEvent(QGraphicsView* self, QMouseEvent* event);
QTLIBC_API void QGraphicsView_OnMousePressEvent(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseMousePressEvent(QGraphicsView* self, QMouseEvent* event);
QTLIBC_API void QGraphicsView_MouseMoveEvent(QGraphicsView* self, QMouseEvent* event);
QTLIBC_API void QGraphicsView_OnMouseMoveEvent(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseMouseMoveEvent(QGraphicsView* self, QMouseEvent* event);
QTLIBC_API void QGraphicsView_MouseReleaseEvent(QGraphicsView* self, QMouseEvent* event);
QTLIBC_API void QGraphicsView_OnMouseReleaseEvent(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseMouseReleaseEvent(QGraphicsView* self, QMouseEvent* event);
QTLIBC_API void QGraphicsView_WheelEvent(QGraphicsView* self, QWheelEvent* event);
QTLIBC_API void QGraphicsView_OnWheelEvent(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseWheelEvent(QGraphicsView* self, QWheelEvent* event);
QTLIBC_API void QGraphicsView_PaintEvent(QGraphicsView* self, QPaintEvent* event);
QTLIBC_API void QGraphicsView_OnPaintEvent(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBasePaintEvent(QGraphicsView* self, QPaintEvent* event);
QTLIBC_API void QGraphicsView_ResizeEvent(QGraphicsView* self, QResizeEvent* event);
QTLIBC_API void QGraphicsView_OnResizeEvent(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseResizeEvent(QGraphicsView* self, QResizeEvent* event);
QTLIBC_API void QGraphicsView_ScrollContentsBy(QGraphicsView* self, int dx, int dy);
QTLIBC_API void QGraphicsView_OnScrollContentsBy(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseScrollContentsBy(QGraphicsView* self, int dx, int dy);
QTLIBC_API void QGraphicsView_ShowEvent(QGraphicsView* self, QShowEvent* event);
QTLIBC_API void QGraphicsView_OnShowEvent(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseShowEvent(QGraphicsView* self, QShowEvent* event);
QTLIBC_API void QGraphicsView_InputMethodEvent(QGraphicsView* self, QInputMethodEvent* event);
QTLIBC_API void QGraphicsView_OnInputMethodEvent(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseInputMethodEvent(QGraphicsView* self, QInputMethodEvent* event);
QTLIBC_API void QGraphicsView_DrawBackground(QGraphicsView* self, QPainter* painter, QRectF* rect);
QTLIBC_API void QGraphicsView_OnDrawBackground(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseDrawBackground(QGraphicsView* self, QPainter* painter, QRectF* rect);
QTLIBC_API void QGraphicsView_DrawForeground(QGraphicsView* self, QPainter* painter, QRectF* rect);
QTLIBC_API void QGraphicsView_OnDrawForeground(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseDrawForeground(QGraphicsView* self, QPainter* painter, QRectF* rect);
QTLIBC_API libqt_string QGraphicsView_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QGraphicsView_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QGraphicsView_SetRenderHint2(QGraphicsView* self, int hint, bool enabled);
QTLIBC_API void QGraphicsView_SetOptimizationFlag2(QGraphicsView* self, int flag, bool enabled);
QTLIBC_API void QGraphicsView_SetTransform2(QGraphicsView* self, QTransform* matrix, bool combine);
QTLIBC_API void QGraphicsView_EnsureVisible22(QGraphicsView* self, QRectF* rect, int xmargin);
QTLIBC_API void QGraphicsView_EnsureVisible3(QGraphicsView* self, QRectF* rect, int xmargin, int ymargin);
QTLIBC_API void QGraphicsView_EnsureVisible5(QGraphicsView* self, double x, double y, double w, double h, int xmargin);
QTLIBC_API void QGraphicsView_EnsureVisible6(QGraphicsView* self, double x, double y, double w, double h, int xmargin, int ymargin);
QTLIBC_API void QGraphicsView_EnsureVisible23(QGraphicsView* self, QGraphicsItem* item, int xmargin);
QTLIBC_API void QGraphicsView_EnsureVisible32(QGraphicsView* self, QGraphicsItem* item, int xmargin, int ymargin);
QTLIBC_API void QGraphicsView_FitInView22(QGraphicsView* self, QRectF* rect, int aspectRadioMode);
QTLIBC_API void QGraphicsView_FitInView5(QGraphicsView* self, double x, double y, double w, double h, int aspectRadioMode);
QTLIBC_API void QGraphicsView_FitInView23(QGraphicsView* self, QGraphicsItem* item, int aspectRadioMode);
QTLIBC_API void QGraphicsView_Render2(QGraphicsView* self, QPainter* painter, QRectF* target);
QTLIBC_API void QGraphicsView_Render3(QGraphicsView* self, QPainter* painter, QRectF* target, QRect* source);
QTLIBC_API void QGraphicsView_Render4(QGraphicsView* self, QPainter* painter, QRectF* target, QRect* source, int aspectRatioMode);
QTLIBC_API libqt_list /* of QGraphicsItem* */ QGraphicsView_Items22(const QGraphicsView* self, QRect* rect, int mode);
QTLIBC_API libqt_list /* of QGraphicsItem* */ QGraphicsView_Items5(const QGraphicsView* self, int x, int y, int w, int h, int mode);
QTLIBC_API libqt_list /* of QGraphicsItem* */ QGraphicsView_Items24(const QGraphicsView* self, QPainterPath* path, int mode);
QTLIBC_API void QGraphicsView_InvalidateScene1(QGraphicsView* self, QRectF* rect);
QTLIBC_API void QGraphicsView_InvalidateScene2(QGraphicsView* self, QRectF* rect, int layers);
QTLIBC_API QSize* QGraphicsView_MinimumSizeHint(const QGraphicsView* self);
QTLIBC_API void QGraphicsView_OnMinimumSizeHint(const QGraphicsView* self, intptr_t slot);
QTLIBC_API QSize* QGraphicsView_QBaseMinimumSizeHint(const QGraphicsView* self);
QTLIBC_API bool QGraphicsView_EventFilter(QGraphicsView* self, QObject* param1, QEvent* param2);
QTLIBC_API void QGraphicsView_OnEventFilter(QGraphicsView* self, intptr_t slot);
QTLIBC_API bool QGraphicsView_QBaseEventFilter(QGraphicsView* self, QObject* param1, QEvent* param2);
QTLIBC_API void QGraphicsView_ChangeEvent(QGraphicsView* self, QEvent* param1);
QTLIBC_API void QGraphicsView_OnChangeEvent(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseChangeEvent(QGraphicsView* self, QEvent* param1);
QTLIBC_API int QGraphicsView_DevType(const QGraphicsView* self);
QTLIBC_API void QGraphicsView_OnDevType(const QGraphicsView* self, intptr_t slot);
QTLIBC_API int QGraphicsView_QBaseDevType(const QGraphicsView* self);
QTLIBC_API void QGraphicsView_SetVisible(QGraphicsView* self, bool visible);
QTLIBC_API void QGraphicsView_OnSetVisible(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseSetVisible(QGraphicsView* self, bool visible);
QTLIBC_API int QGraphicsView_HeightForWidth(const QGraphicsView* self, int param1);
QTLIBC_API void QGraphicsView_OnHeightForWidth(const QGraphicsView* self, intptr_t slot);
QTLIBC_API int QGraphicsView_QBaseHeightForWidth(const QGraphicsView* self, int param1);
QTLIBC_API bool QGraphicsView_HasHeightForWidth(const QGraphicsView* self);
QTLIBC_API void QGraphicsView_OnHasHeightForWidth(const QGraphicsView* self, intptr_t slot);
QTLIBC_API bool QGraphicsView_QBaseHasHeightForWidth(const QGraphicsView* self);
QTLIBC_API QPaintEngine* QGraphicsView_PaintEngine(const QGraphicsView* self);
QTLIBC_API void QGraphicsView_OnPaintEngine(const QGraphicsView* self, intptr_t slot);
QTLIBC_API QPaintEngine* QGraphicsView_QBasePaintEngine(const QGraphicsView* self);
QTLIBC_API void QGraphicsView_EnterEvent(QGraphicsView* self, QEnterEvent* event);
QTLIBC_API void QGraphicsView_OnEnterEvent(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseEnterEvent(QGraphicsView* self, QEnterEvent* event);
QTLIBC_API void QGraphicsView_LeaveEvent(QGraphicsView* self, QEvent* event);
QTLIBC_API void QGraphicsView_OnLeaveEvent(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseLeaveEvent(QGraphicsView* self, QEvent* event);
QTLIBC_API void QGraphicsView_MoveEvent(QGraphicsView* self, QMoveEvent* event);
QTLIBC_API void QGraphicsView_OnMoveEvent(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseMoveEvent(QGraphicsView* self, QMoveEvent* event);
QTLIBC_API void QGraphicsView_CloseEvent(QGraphicsView* self, QCloseEvent* event);
QTLIBC_API void QGraphicsView_OnCloseEvent(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseCloseEvent(QGraphicsView* self, QCloseEvent* event);
QTLIBC_API void QGraphicsView_TabletEvent(QGraphicsView* self, QTabletEvent* event);
QTLIBC_API void QGraphicsView_OnTabletEvent(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseTabletEvent(QGraphicsView* self, QTabletEvent* event);
QTLIBC_API void QGraphicsView_ActionEvent(QGraphicsView* self, QActionEvent* event);
QTLIBC_API void QGraphicsView_OnActionEvent(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseActionEvent(QGraphicsView* self, QActionEvent* event);
QTLIBC_API void QGraphicsView_HideEvent(QGraphicsView* self, QHideEvent* event);
QTLIBC_API void QGraphicsView_OnHideEvent(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseHideEvent(QGraphicsView* self, QHideEvent* event);
QTLIBC_API bool QGraphicsView_NativeEvent(QGraphicsView* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QGraphicsView_OnNativeEvent(QGraphicsView* self, intptr_t slot);
QTLIBC_API bool QGraphicsView_QBaseNativeEvent(QGraphicsView* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QGraphicsView_TimerEvent(QGraphicsView* self, QTimerEvent* event);
QTLIBC_API void QGraphicsView_OnTimerEvent(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseTimerEvent(QGraphicsView* self, QTimerEvent* event);
QTLIBC_API void QGraphicsView_ChildEvent(QGraphicsView* self, QChildEvent* event);
QTLIBC_API void QGraphicsView_OnChildEvent(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseChildEvent(QGraphicsView* self, QChildEvent* event);
QTLIBC_API void QGraphicsView_CustomEvent(QGraphicsView* self, QEvent* event);
QTLIBC_API void QGraphicsView_OnCustomEvent(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseCustomEvent(QGraphicsView* self, QEvent* event);
QTLIBC_API void QGraphicsView_ConnectNotify(QGraphicsView* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsView_OnConnectNotify(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseConnectNotify(QGraphicsView* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsView_DisconnectNotify(QGraphicsView* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsView_OnDisconnectNotify(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseDisconnectNotify(QGraphicsView* self, QMetaMethod* signal);
QTLIBC_API QSize* QGraphicsView_ViewportSizeHint(const QGraphicsView* self);
QTLIBC_API void QGraphicsView_OnViewportSizeHint(const QGraphicsView* self, intptr_t slot);
QTLIBC_API QSize* QGraphicsView_QBaseViewportSizeHint(const QGraphicsView* self);
QTLIBC_API void QGraphicsView_InitStyleOption(const QGraphicsView* self, QStyleOptionFrame* option);
QTLIBC_API void QGraphicsView_OnInitStyleOption(const QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseInitStyleOption(const QGraphicsView* self, QStyleOptionFrame* option);
QTLIBC_API int QGraphicsView_Metric(const QGraphicsView* self, int param1);
QTLIBC_API void QGraphicsView_OnMetric(const QGraphicsView* self, intptr_t slot);
QTLIBC_API int QGraphicsView_QBaseMetric(const QGraphicsView* self, int param1);
QTLIBC_API void QGraphicsView_InitPainter(const QGraphicsView* self, QPainter* painter);
QTLIBC_API void QGraphicsView_OnInitPainter(const QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseInitPainter(const QGraphicsView* self, QPainter* painter);
QTLIBC_API QPaintDevice* QGraphicsView_Redirected(const QGraphicsView* self, QPoint* offset);
QTLIBC_API void QGraphicsView_OnRedirected(const QGraphicsView* self, intptr_t slot);
QTLIBC_API QPaintDevice* QGraphicsView_QBaseRedirected(const QGraphicsView* self, QPoint* offset);
QTLIBC_API QPainter* QGraphicsView_SharedPainter(const QGraphicsView* self);
QTLIBC_API void QGraphicsView_OnSharedPainter(const QGraphicsView* self, intptr_t slot);
QTLIBC_API QPainter* QGraphicsView_QBaseSharedPainter(const QGraphicsView* self);
QTLIBC_API void QGraphicsView_SetViewportMargins(QGraphicsView* self, int left, int top, int right, int bottom);
QTLIBC_API void QGraphicsView_OnSetViewportMargins(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseSetViewportMargins(QGraphicsView* self, int left, int top, int right, int bottom);
QTLIBC_API QMargins* QGraphicsView_ViewportMargins(const QGraphicsView* self);
QTLIBC_API void QGraphicsView_OnViewportMargins(const QGraphicsView* self, intptr_t slot);
QTLIBC_API QMargins* QGraphicsView_QBaseViewportMargins(const QGraphicsView* self);
QTLIBC_API void QGraphicsView_DrawFrame(QGraphicsView* self, QPainter* param1);
QTLIBC_API void QGraphicsView_OnDrawFrame(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseDrawFrame(QGraphicsView* self, QPainter* param1);
QTLIBC_API void QGraphicsView_UpdateMicroFocus(QGraphicsView* self);
QTLIBC_API void QGraphicsView_OnUpdateMicroFocus(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseUpdateMicroFocus(QGraphicsView* self);
QTLIBC_API void QGraphicsView_Create(QGraphicsView* self);
QTLIBC_API void QGraphicsView_OnCreate(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseCreate(QGraphicsView* self);
QTLIBC_API void QGraphicsView_Destroy(QGraphicsView* self);
QTLIBC_API void QGraphicsView_OnDestroy(QGraphicsView* self, intptr_t slot);
QTLIBC_API void QGraphicsView_QBaseDestroy(QGraphicsView* self);
QTLIBC_API bool QGraphicsView_FocusNextChild(QGraphicsView* self);
QTLIBC_API void QGraphicsView_OnFocusNextChild(QGraphicsView* self, intptr_t slot);
QTLIBC_API bool QGraphicsView_QBaseFocusNextChild(QGraphicsView* self);
QTLIBC_API bool QGraphicsView_FocusPreviousChild(QGraphicsView* self);
QTLIBC_API void QGraphicsView_OnFocusPreviousChild(QGraphicsView* self, intptr_t slot);
QTLIBC_API bool QGraphicsView_QBaseFocusPreviousChild(QGraphicsView* self);
QTLIBC_API QObject* QGraphicsView_Sender(const QGraphicsView* self);
QTLIBC_API void QGraphicsView_OnSender(const QGraphicsView* self, intptr_t slot);
QTLIBC_API QObject* QGraphicsView_QBaseSender(const QGraphicsView* self);
QTLIBC_API int QGraphicsView_SenderSignalIndex(const QGraphicsView* self);
QTLIBC_API void QGraphicsView_OnSenderSignalIndex(const QGraphicsView* self, intptr_t slot);
QTLIBC_API int QGraphicsView_QBaseSenderSignalIndex(const QGraphicsView* self);
QTLIBC_API int QGraphicsView_Receivers(const QGraphicsView* self, const char* signal);
QTLIBC_API void QGraphicsView_OnReceivers(const QGraphicsView* self, intptr_t slot);
QTLIBC_API int QGraphicsView_QBaseReceivers(const QGraphicsView* self, const char* signal);
QTLIBC_API bool QGraphicsView_IsSignalConnected(const QGraphicsView* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsView_OnIsSignalConnected(const QGraphicsView* self, intptr_t slot);
QTLIBC_API bool QGraphicsView_QBaseIsSignalConnected(const QGraphicsView* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsView_Delete(QGraphicsView* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
