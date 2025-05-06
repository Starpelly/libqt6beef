#pragma once
#ifndef SRC_QTC_LIBQGRAPHICSSCENE_H
#define SRC_QTC_LIBQGRAPHICSSCENE_H

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
typedef struct QAnyStringView QAnyStringView;
typedef struct QBindingStorage QBindingStorage;
typedef struct QBrush QBrush;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QFont QFont;
typedef struct QGraphicsEllipseItem QGraphicsEllipseItem;
typedef struct QGraphicsItem QGraphicsItem;
typedef struct QGraphicsItemGroup QGraphicsItemGroup;
typedef struct QGraphicsLineItem QGraphicsLineItem;
typedef struct QGraphicsPathItem QGraphicsPathItem;
typedef struct QGraphicsPixmapItem QGraphicsPixmapItem;
typedef struct QGraphicsProxyWidget QGraphicsProxyWidget;
typedef struct QGraphicsRectItem QGraphicsRectItem;
typedef struct QGraphicsScene QGraphicsScene;
typedef struct QGraphicsSceneContextMenuEvent QGraphicsSceneContextMenuEvent;
typedef struct QGraphicsSceneDragDropEvent QGraphicsSceneDragDropEvent;
typedef struct QGraphicsSceneHelpEvent QGraphicsSceneHelpEvent;
typedef struct QGraphicsSceneMouseEvent QGraphicsSceneMouseEvent;
typedef struct QGraphicsSceneWheelEvent QGraphicsSceneWheelEvent;
typedef struct QGraphicsSimpleTextItem QGraphicsSimpleTextItem;
typedef struct QGraphicsTextItem QGraphicsTextItem;
typedef struct QGraphicsView QGraphicsView;
typedef struct QGraphicsWidget QGraphicsWidget;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QKeyEvent QKeyEvent;
typedef struct QLineF QLineF;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QPainter QPainter;
typedef struct QPainterPath QPainterPath;
typedef struct QPalette QPalette;
typedef struct QPen QPen;
typedef struct QPixmap QPixmap;
typedef struct QPointF QPointF;
typedef struct QRectF QRectF;
typedef struct QStyle QStyle;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QTransform QTransform;
typedef struct QVariant QVariant;
typedef struct QWidget QWidget;
#endif

#ifdef __cplusplus
typedef QGraphicsScene::ItemIndexMethod ItemIndexMethod; // C++ enum
typedef QGraphicsScene::SceneLayer SceneLayer;           // C++ enum
typedef QGraphicsScene::SceneLayers SceneLayers;         // C++ QFlags
#else
typedef int ItemIndexMethod; // C ABI enum
typedef int SceneLayer;      // C ABI enum
typedef int SceneLayers;     // C ABI QFlags
#endif

QTLIBC_API QGraphicsScene* QGraphicsScene_new();
QTLIBC_API QGraphicsScene* QGraphicsScene_new2(QRectF* sceneRect);
QTLIBC_API QGraphicsScene* QGraphicsScene_new3(double x, double y, double width, double height);
QTLIBC_API QGraphicsScene* QGraphicsScene_new4(QObject* parent);
QTLIBC_API QGraphicsScene* QGraphicsScene_new5(QRectF* sceneRect, QObject* parent);
QTLIBC_API QGraphicsScene* QGraphicsScene_new6(double x, double y, double width, double height, QObject* parent);
QTLIBC_API QMetaObject* QGraphicsScene_MetaObject(const QGraphicsScene* self);
QTLIBC_API void* QGraphicsScene_Metacast(QGraphicsScene* self, const char* param1);
QTLIBC_API int QGraphicsScene_Metacall(QGraphicsScene* self, int param1, int param2, void** param3);
QTLIBC_API void QGraphicsScene_OnMetacall(QGraphicsScene* self, intptr_t slot);
QTLIBC_API int QGraphicsScene_QBaseMetacall(QGraphicsScene* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QGraphicsScene_Tr(const char* s);
QTLIBC_API QRectF* QGraphicsScene_SceneRect(const QGraphicsScene* self);
QTLIBC_API double QGraphicsScene_Width(const QGraphicsScene* self);
QTLIBC_API double QGraphicsScene_Height(const QGraphicsScene* self);
QTLIBC_API void QGraphicsScene_SetSceneRect(QGraphicsScene* self, QRectF* rect);
QTLIBC_API void QGraphicsScene_SetSceneRect2(QGraphicsScene* self, double x, double y, double w, double h);
QTLIBC_API void QGraphicsScene_Render(QGraphicsScene* self, QPainter* painter);
QTLIBC_API int QGraphicsScene_ItemIndexMethod(const QGraphicsScene* self);
QTLIBC_API void QGraphicsScene_SetItemIndexMethod(QGraphicsScene* self, int method);
QTLIBC_API int QGraphicsScene_BspTreeDepth(const QGraphicsScene* self);
QTLIBC_API void QGraphicsScene_SetBspTreeDepth(QGraphicsScene* self, int depth);
QTLIBC_API QRectF* QGraphicsScene_ItemsBoundingRect(const QGraphicsScene* self);
QTLIBC_API libqt_list /* of QGraphicsItem* */ QGraphicsScene_Items(const QGraphicsScene* self);
QTLIBC_API libqt_list /* of QGraphicsItem* */ QGraphicsScene_ItemsWithPos(const QGraphicsScene* self, QPointF* pos);
QTLIBC_API libqt_list /* of QGraphicsItem* */ QGraphicsScene_ItemsWithRect(const QGraphicsScene* self, QRectF* rect);
QTLIBC_API libqt_list /* of QGraphicsItem* */ QGraphicsScene_ItemsWithPath(const QGraphicsScene* self, QPainterPath* path);
QTLIBC_API libqt_list /* of QGraphicsItem* */ QGraphicsScene_Items2(const QGraphicsScene* self, double x, double y, double w, double h, int mode, int order);
QTLIBC_API libqt_list /* of QGraphicsItem* */ QGraphicsScene_CollidingItems(const QGraphicsScene* self, QGraphicsItem* item);
QTLIBC_API QGraphicsItem* QGraphicsScene_ItemAt(const QGraphicsScene* self, QPointF* pos, QTransform* deviceTransform);
QTLIBC_API QGraphicsItem* QGraphicsScene_ItemAt2(const QGraphicsScene* self, double x, double y, QTransform* deviceTransform);
QTLIBC_API libqt_list /* of QGraphicsItem* */ QGraphicsScene_SelectedItems(const QGraphicsScene* self);
QTLIBC_API QPainterPath* QGraphicsScene_SelectionArea(const QGraphicsScene* self);
QTLIBC_API void QGraphicsScene_SetSelectionArea(QGraphicsScene* self, QPainterPath* path, QTransform* deviceTransform);
QTLIBC_API void QGraphicsScene_SetSelectionAreaWithPath(QGraphicsScene* self, QPainterPath* path);
QTLIBC_API QGraphicsItemGroup* QGraphicsScene_CreateItemGroup(QGraphicsScene* self, libqt_list /* of QGraphicsItem* */ items);
QTLIBC_API void QGraphicsScene_DestroyItemGroup(QGraphicsScene* self, QGraphicsItemGroup* group);
QTLIBC_API void QGraphicsScene_AddItem(QGraphicsScene* self, QGraphicsItem* item);
QTLIBC_API QGraphicsEllipseItem* QGraphicsScene_AddEllipse(QGraphicsScene* self, QRectF* rect);
QTLIBC_API QGraphicsLineItem* QGraphicsScene_AddLine(QGraphicsScene* self, QLineF* line);
QTLIBC_API QGraphicsPathItem* QGraphicsScene_AddPath(QGraphicsScene* self, QPainterPath* path);
QTLIBC_API QGraphicsPixmapItem* QGraphicsScene_AddPixmap(QGraphicsScene* self, QPixmap* pixmap);
QTLIBC_API QGraphicsRectItem* QGraphicsScene_AddRect(QGraphicsScene* self, QRectF* rect);
QTLIBC_API QGraphicsTextItem* QGraphicsScene_AddText(QGraphicsScene* self, libqt_string text);
QTLIBC_API QGraphicsSimpleTextItem* QGraphicsScene_AddSimpleText(QGraphicsScene* self, libqt_string text);
QTLIBC_API QGraphicsProxyWidget* QGraphicsScene_AddWidget(QGraphicsScene* self, QWidget* widget);
QTLIBC_API QGraphicsEllipseItem* QGraphicsScene_AddEllipse2(QGraphicsScene* self, double x, double y, double w, double h);
QTLIBC_API QGraphicsLineItem* QGraphicsScene_AddLine2(QGraphicsScene* self, double x1, double y1, double x2, double y2);
QTLIBC_API QGraphicsRectItem* QGraphicsScene_AddRect2(QGraphicsScene* self, double x, double y, double w, double h);
QTLIBC_API void QGraphicsScene_RemoveItem(QGraphicsScene* self, QGraphicsItem* item);
QTLIBC_API QGraphicsItem* QGraphicsScene_FocusItem(const QGraphicsScene* self);
QTLIBC_API void QGraphicsScene_SetFocusItem(QGraphicsScene* self, QGraphicsItem* item);
QTLIBC_API bool QGraphicsScene_HasFocus(const QGraphicsScene* self);
QTLIBC_API void QGraphicsScene_SetFocus(QGraphicsScene* self);
QTLIBC_API void QGraphicsScene_ClearFocus(QGraphicsScene* self);
QTLIBC_API void QGraphicsScene_SetStickyFocus(QGraphicsScene* self, bool enabled);
QTLIBC_API bool QGraphicsScene_StickyFocus(const QGraphicsScene* self);
QTLIBC_API QGraphicsItem* QGraphicsScene_MouseGrabberItem(const QGraphicsScene* self);
QTLIBC_API QBrush* QGraphicsScene_BackgroundBrush(const QGraphicsScene* self);
QTLIBC_API void QGraphicsScene_SetBackgroundBrush(QGraphicsScene* self, QBrush* brush);
QTLIBC_API QBrush* QGraphicsScene_ForegroundBrush(const QGraphicsScene* self);
QTLIBC_API void QGraphicsScene_SetForegroundBrush(QGraphicsScene* self, QBrush* brush);
QTLIBC_API QVariant* QGraphicsScene_InputMethodQuery(const QGraphicsScene* self, int query);
QTLIBC_API void QGraphicsScene_OnInputMethodQuery(const QGraphicsScene* self, intptr_t slot);
QTLIBC_API QVariant* QGraphicsScene_QBaseInputMethodQuery(const QGraphicsScene* self, int query);
QTLIBC_API libqt_list /* of QGraphicsView* */ QGraphicsScene_Views(const QGraphicsScene* self);
QTLIBC_API void QGraphicsScene_Update(QGraphicsScene* self, double x, double y, double w, double h);
QTLIBC_API void QGraphicsScene_Invalidate(QGraphicsScene* self, double x, double y, double w, double h);
QTLIBC_API QStyle* QGraphicsScene_Style(const QGraphicsScene* self);
QTLIBC_API void QGraphicsScene_SetStyle(QGraphicsScene* self, QStyle* style);
QTLIBC_API QFont* QGraphicsScene_Font(const QGraphicsScene* self);
QTLIBC_API void QGraphicsScene_SetFont(QGraphicsScene* self, QFont* font);
QTLIBC_API QPalette* QGraphicsScene_Palette(const QGraphicsScene* self);
QTLIBC_API void QGraphicsScene_SetPalette(QGraphicsScene* self, QPalette* palette);
QTLIBC_API bool QGraphicsScene_IsActive(const QGraphicsScene* self);
QTLIBC_API QGraphicsItem* QGraphicsScene_ActivePanel(const QGraphicsScene* self);
QTLIBC_API void QGraphicsScene_SetActivePanel(QGraphicsScene* self, QGraphicsItem* item);
QTLIBC_API QGraphicsWidget* QGraphicsScene_ActiveWindow(const QGraphicsScene* self);
QTLIBC_API void QGraphicsScene_SetActiveWindow(QGraphicsScene* self, QGraphicsWidget* widget);
QTLIBC_API bool QGraphicsScene_SendEvent(QGraphicsScene* self, QGraphicsItem* item, QEvent* event);
QTLIBC_API double QGraphicsScene_MinimumRenderSize(const QGraphicsScene* self);
QTLIBC_API void QGraphicsScene_SetMinimumRenderSize(QGraphicsScene* self, double minSize);
QTLIBC_API bool QGraphicsScene_FocusOnTouch(const QGraphicsScene* self);
QTLIBC_API void QGraphicsScene_SetFocusOnTouch(QGraphicsScene* self, bool enabled);
QTLIBC_API void QGraphicsScene_Update2(QGraphicsScene* self);
QTLIBC_API void QGraphicsScene_Invalidate2(QGraphicsScene* self);
QTLIBC_API void QGraphicsScene_Advance(QGraphicsScene* self);
QTLIBC_API void QGraphicsScene_ClearSelection(QGraphicsScene* self);
QTLIBC_API void QGraphicsScene_Clear(QGraphicsScene* self);
QTLIBC_API bool QGraphicsScene_Event(QGraphicsScene* self, QEvent* event);
QTLIBC_API void QGraphicsScene_OnEvent(QGraphicsScene* self, intptr_t slot);
QTLIBC_API bool QGraphicsScene_QBaseEvent(QGraphicsScene* self, QEvent* event);
QTLIBC_API bool QGraphicsScene_EventFilter(QGraphicsScene* self, QObject* watched, QEvent* event);
QTLIBC_API void QGraphicsScene_OnEventFilter(QGraphicsScene* self, intptr_t slot);
QTLIBC_API bool QGraphicsScene_QBaseEventFilter(QGraphicsScene* self, QObject* watched, QEvent* event);
QTLIBC_API void QGraphicsScene_ContextMenuEvent(QGraphicsScene* self, QGraphicsSceneContextMenuEvent* event);
QTLIBC_API void QGraphicsScene_OnContextMenuEvent(QGraphicsScene* self, intptr_t slot);
QTLIBC_API void QGraphicsScene_QBaseContextMenuEvent(QGraphicsScene* self, QGraphicsSceneContextMenuEvent* event);
QTLIBC_API void QGraphicsScene_DragEnterEvent(QGraphicsScene* self, QGraphicsSceneDragDropEvent* event);
QTLIBC_API void QGraphicsScene_OnDragEnterEvent(QGraphicsScene* self, intptr_t slot);
QTLIBC_API void QGraphicsScene_QBaseDragEnterEvent(QGraphicsScene* self, QGraphicsSceneDragDropEvent* event);
QTLIBC_API void QGraphicsScene_DragMoveEvent(QGraphicsScene* self, QGraphicsSceneDragDropEvent* event);
QTLIBC_API void QGraphicsScene_OnDragMoveEvent(QGraphicsScene* self, intptr_t slot);
QTLIBC_API void QGraphicsScene_QBaseDragMoveEvent(QGraphicsScene* self, QGraphicsSceneDragDropEvent* event);
QTLIBC_API void QGraphicsScene_DragLeaveEvent(QGraphicsScene* self, QGraphicsSceneDragDropEvent* event);
QTLIBC_API void QGraphicsScene_OnDragLeaveEvent(QGraphicsScene* self, intptr_t slot);
QTLIBC_API void QGraphicsScene_QBaseDragLeaveEvent(QGraphicsScene* self, QGraphicsSceneDragDropEvent* event);
QTLIBC_API void QGraphicsScene_DropEvent(QGraphicsScene* self, QGraphicsSceneDragDropEvent* event);
QTLIBC_API void QGraphicsScene_OnDropEvent(QGraphicsScene* self, intptr_t slot);
QTLIBC_API void QGraphicsScene_QBaseDropEvent(QGraphicsScene* self, QGraphicsSceneDragDropEvent* event);
QTLIBC_API void QGraphicsScene_FocusInEvent(QGraphicsScene* self, QFocusEvent* event);
QTLIBC_API void QGraphicsScene_OnFocusInEvent(QGraphicsScene* self, intptr_t slot);
QTLIBC_API void QGraphicsScene_QBaseFocusInEvent(QGraphicsScene* self, QFocusEvent* event);
QTLIBC_API void QGraphicsScene_FocusOutEvent(QGraphicsScene* self, QFocusEvent* event);
QTLIBC_API void QGraphicsScene_OnFocusOutEvent(QGraphicsScene* self, intptr_t slot);
QTLIBC_API void QGraphicsScene_QBaseFocusOutEvent(QGraphicsScene* self, QFocusEvent* event);
QTLIBC_API void QGraphicsScene_HelpEvent(QGraphicsScene* self, QGraphicsSceneHelpEvent* event);
QTLIBC_API void QGraphicsScene_OnHelpEvent(QGraphicsScene* self, intptr_t slot);
QTLIBC_API void QGraphicsScene_QBaseHelpEvent(QGraphicsScene* self, QGraphicsSceneHelpEvent* event);
QTLIBC_API void QGraphicsScene_KeyPressEvent(QGraphicsScene* self, QKeyEvent* event);
QTLIBC_API void QGraphicsScene_OnKeyPressEvent(QGraphicsScene* self, intptr_t slot);
QTLIBC_API void QGraphicsScene_QBaseKeyPressEvent(QGraphicsScene* self, QKeyEvent* event);
QTLIBC_API void QGraphicsScene_KeyReleaseEvent(QGraphicsScene* self, QKeyEvent* event);
QTLIBC_API void QGraphicsScene_OnKeyReleaseEvent(QGraphicsScene* self, intptr_t slot);
QTLIBC_API void QGraphicsScene_QBaseKeyReleaseEvent(QGraphicsScene* self, QKeyEvent* event);
QTLIBC_API void QGraphicsScene_MousePressEvent(QGraphicsScene* self, QGraphicsSceneMouseEvent* event);
QTLIBC_API void QGraphicsScene_OnMousePressEvent(QGraphicsScene* self, intptr_t slot);
QTLIBC_API void QGraphicsScene_QBaseMousePressEvent(QGraphicsScene* self, QGraphicsSceneMouseEvent* event);
QTLIBC_API void QGraphicsScene_MouseMoveEvent(QGraphicsScene* self, QGraphicsSceneMouseEvent* event);
QTLIBC_API void QGraphicsScene_OnMouseMoveEvent(QGraphicsScene* self, intptr_t slot);
QTLIBC_API void QGraphicsScene_QBaseMouseMoveEvent(QGraphicsScene* self, QGraphicsSceneMouseEvent* event);
QTLIBC_API void QGraphicsScene_MouseReleaseEvent(QGraphicsScene* self, QGraphicsSceneMouseEvent* event);
QTLIBC_API void QGraphicsScene_OnMouseReleaseEvent(QGraphicsScene* self, intptr_t slot);
QTLIBC_API void QGraphicsScene_QBaseMouseReleaseEvent(QGraphicsScene* self, QGraphicsSceneMouseEvent* event);
QTLIBC_API void QGraphicsScene_MouseDoubleClickEvent(QGraphicsScene* self, QGraphicsSceneMouseEvent* event);
QTLIBC_API void QGraphicsScene_OnMouseDoubleClickEvent(QGraphicsScene* self, intptr_t slot);
QTLIBC_API void QGraphicsScene_QBaseMouseDoubleClickEvent(QGraphicsScene* self, QGraphicsSceneMouseEvent* event);
QTLIBC_API void QGraphicsScene_WheelEvent(QGraphicsScene* self, QGraphicsSceneWheelEvent* event);
QTLIBC_API void QGraphicsScene_OnWheelEvent(QGraphicsScene* self, intptr_t slot);
QTLIBC_API void QGraphicsScene_QBaseWheelEvent(QGraphicsScene* self, QGraphicsSceneWheelEvent* event);
QTLIBC_API void QGraphicsScene_InputMethodEvent(QGraphicsScene* self, QInputMethodEvent* event);
QTLIBC_API void QGraphicsScene_OnInputMethodEvent(QGraphicsScene* self, intptr_t slot);
QTLIBC_API void QGraphicsScene_QBaseInputMethodEvent(QGraphicsScene* self, QInputMethodEvent* event);
QTLIBC_API void QGraphicsScene_DrawBackground(QGraphicsScene* self, QPainter* painter, QRectF* rect);
QTLIBC_API void QGraphicsScene_OnDrawBackground(QGraphicsScene* self, intptr_t slot);
QTLIBC_API void QGraphicsScene_QBaseDrawBackground(QGraphicsScene* self, QPainter* painter, QRectF* rect);
QTLIBC_API void QGraphicsScene_DrawForeground(QGraphicsScene* self, QPainter* painter, QRectF* rect);
QTLIBC_API void QGraphicsScene_OnDrawForeground(QGraphicsScene* self, intptr_t slot);
QTLIBC_API void QGraphicsScene_QBaseDrawForeground(QGraphicsScene* self, QPainter* painter, QRectF* rect);
QTLIBC_API bool QGraphicsScene_FocusNextPrevChild(QGraphicsScene* self, bool next);
QTLIBC_API void QGraphicsScene_OnFocusNextPrevChild(QGraphicsScene* self, intptr_t slot);
QTLIBC_API bool QGraphicsScene_QBaseFocusNextPrevChild(QGraphicsScene* self, bool next);
QTLIBC_API void QGraphicsScene_Changed(QGraphicsScene* self, libqt_list /* of QRectF* */ region);
void QGraphicsScene_Connect_Changed(QGraphicsScene* self, intptr_t slot);
QTLIBC_API void QGraphicsScene_SceneRectChanged(QGraphicsScene* self, QRectF* rect);
void QGraphicsScene_Connect_SceneRectChanged(QGraphicsScene* self, intptr_t slot);
QTLIBC_API void QGraphicsScene_SelectionChanged(QGraphicsScene* self);
void QGraphicsScene_Connect_SelectionChanged(QGraphicsScene* self, intptr_t slot);
QTLIBC_API void QGraphicsScene_FocusItemChanged(QGraphicsScene* self, QGraphicsItem* newFocus, QGraphicsItem* oldFocus, int reason);
void QGraphicsScene_Connect_FocusItemChanged(QGraphicsScene* self, intptr_t slot);
QTLIBC_API libqt_string QGraphicsScene_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QGraphicsScene_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QGraphicsScene_Render2(QGraphicsScene* self, QPainter* painter, QRectF* target);
QTLIBC_API void QGraphicsScene_Render3(QGraphicsScene* self, QPainter* painter, QRectF* target, QRectF* source);
QTLIBC_API void QGraphicsScene_Render4(QGraphicsScene* self, QPainter* painter, QRectF* target, QRectF* source, int aspectRatioMode);
QTLIBC_API libqt_list /* of QGraphicsItem* */ QGraphicsScene_Items1(const QGraphicsScene* self, int order);
QTLIBC_API libqt_list /* of QGraphicsItem* */ QGraphicsScene_Items22(const QGraphicsScene* self, QPointF* pos, int mode);
QTLIBC_API libqt_list /* of QGraphicsItem* */ QGraphicsScene_Items3(const QGraphicsScene* self, QPointF* pos, int mode, int order);
QTLIBC_API libqt_list /* of QGraphicsItem* */ QGraphicsScene_Items4(const QGraphicsScene* self, QPointF* pos, int mode, int order, QTransform* deviceTransform);
QTLIBC_API libqt_list /* of QGraphicsItem* */ QGraphicsScene_Items23(const QGraphicsScene* self, QRectF* rect, int mode);
QTLIBC_API libqt_list /* of QGraphicsItem* */ QGraphicsScene_Items32(const QGraphicsScene* self, QRectF* rect, int mode, int order);
QTLIBC_API libqt_list /* of QGraphicsItem* */ QGraphicsScene_Items42(const QGraphicsScene* self, QRectF* rect, int mode, int order, QTransform* deviceTransform);
QTLIBC_API libqt_list /* of QGraphicsItem* */ QGraphicsScene_Items25(const QGraphicsScene* self, QPainterPath* path, int mode);
QTLIBC_API libqt_list /* of QGraphicsItem* */ QGraphicsScene_Items34(const QGraphicsScene* self, QPainterPath* path, int mode, int order);
QTLIBC_API libqt_list /* of QGraphicsItem* */ QGraphicsScene_Items44(const QGraphicsScene* self, QPainterPath* path, int mode, int order, QTransform* deviceTransform);
QTLIBC_API libqt_list /* of QGraphicsItem* */ QGraphicsScene_Items7(const QGraphicsScene* self, double x, double y, double w, double h, int mode, int order, QTransform* deviceTransform);
QTLIBC_API libqt_list /* of QGraphicsItem* */ QGraphicsScene_CollidingItems2(const QGraphicsScene* self, QGraphicsItem* item, int mode);
QTLIBC_API void QGraphicsScene_SetSelectionArea2(QGraphicsScene* self, QPainterPath* path, int selectionOperation);
QTLIBC_API void QGraphicsScene_SetSelectionArea3(QGraphicsScene* self, QPainterPath* path, int selectionOperation, int mode);
QTLIBC_API void QGraphicsScene_SetSelectionArea4(QGraphicsScene* self, QPainterPath* path, int selectionOperation, int mode, QTransform* deviceTransform);
QTLIBC_API QGraphicsEllipseItem* QGraphicsScene_AddEllipse22(QGraphicsScene* self, QRectF* rect, QPen* pen);
QTLIBC_API QGraphicsEllipseItem* QGraphicsScene_AddEllipse3(QGraphicsScene* self, QRectF* rect, QPen* pen, QBrush* brush);
QTLIBC_API QGraphicsLineItem* QGraphicsScene_AddLine22(QGraphicsScene* self, QLineF* line, QPen* pen);
QTLIBC_API QGraphicsPathItem* QGraphicsScene_AddPath2(QGraphicsScene* self, QPainterPath* path, QPen* pen);
QTLIBC_API QGraphicsPathItem* QGraphicsScene_AddPath3(QGraphicsScene* self, QPainterPath* path, QPen* pen, QBrush* brush);
QTLIBC_API QGraphicsRectItem* QGraphicsScene_AddRect22(QGraphicsScene* self, QRectF* rect, QPen* pen);
QTLIBC_API QGraphicsRectItem* QGraphicsScene_AddRect3(QGraphicsScene* self, QRectF* rect, QPen* pen, QBrush* brush);
QTLIBC_API QGraphicsTextItem* QGraphicsScene_AddText2(QGraphicsScene* self, libqt_string text, QFont* font);
QTLIBC_API QGraphicsSimpleTextItem* QGraphicsScene_AddSimpleText2(QGraphicsScene* self, libqt_string text, QFont* font);
QTLIBC_API QGraphicsProxyWidget* QGraphicsScene_AddWidget2(QGraphicsScene* self, QWidget* widget, int wFlags);
QTLIBC_API QGraphicsEllipseItem* QGraphicsScene_AddEllipse5(QGraphicsScene* self, double x, double y, double w, double h, QPen* pen);
QTLIBC_API QGraphicsEllipseItem* QGraphicsScene_AddEllipse6(QGraphicsScene* self, double x, double y, double w, double h, QPen* pen, QBrush* brush);
QTLIBC_API QGraphicsLineItem* QGraphicsScene_AddLine5(QGraphicsScene* self, double x1, double y1, double x2, double y2, QPen* pen);
QTLIBC_API QGraphicsRectItem* QGraphicsScene_AddRect5(QGraphicsScene* self, double x, double y, double w, double h, QPen* pen);
QTLIBC_API QGraphicsRectItem* QGraphicsScene_AddRect6(QGraphicsScene* self, double x, double y, double w, double h, QPen* pen, QBrush* brush);
QTLIBC_API void QGraphicsScene_SetFocusItem2(QGraphicsScene* self, QGraphicsItem* item, int focusReason);
QTLIBC_API void QGraphicsScene_SetFocus1(QGraphicsScene* self, int focusReason);
QTLIBC_API void QGraphicsScene_Invalidate5(QGraphicsScene* self, double x, double y, double w, double h, int layers);
QTLIBC_API void QGraphicsScene_Update1(QGraphicsScene* self, QRectF* rect);
QTLIBC_API void QGraphicsScene_Invalidate1(QGraphicsScene* self, QRectF* rect);
QTLIBC_API void QGraphicsScene_Invalidate22(QGraphicsScene* self, QRectF* rect, int layers);
QTLIBC_API void QGraphicsScene_TimerEvent(QGraphicsScene* self, QTimerEvent* event);
QTLIBC_API void QGraphicsScene_OnTimerEvent(QGraphicsScene* self, intptr_t slot);
QTLIBC_API void QGraphicsScene_QBaseTimerEvent(QGraphicsScene* self, QTimerEvent* event);
QTLIBC_API void QGraphicsScene_ChildEvent(QGraphicsScene* self, QChildEvent* event);
QTLIBC_API void QGraphicsScene_OnChildEvent(QGraphicsScene* self, intptr_t slot);
QTLIBC_API void QGraphicsScene_QBaseChildEvent(QGraphicsScene* self, QChildEvent* event);
QTLIBC_API void QGraphicsScene_CustomEvent(QGraphicsScene* self, QEvent* event);
QTLIBC_API void QGraphicsScene_OnCustomEvent(QGraphicsScene* self, intptr_t slot);
QTLIBC_API void QGraphicsScene_QBaseCustomEvent(QGraphicsScene* self, QEvent* event);
QTLIBC_API void QGraphicsScene_ConnectNotify(QGraphicsScene* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsScene_OnConnectNotify(QGraphicsScene* self, intptr_t slot);
QTLIBC_API void QGraphicsScene_QBaseConnectNotify(QGraphicsScene* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsScene_DisconnectNotify(QGraphicsScene* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsScene_OnDisconnectNotify(QGraphicsScene* self, intptr_t slot);
QTLIBC_API void QGraphicsScene_QBaseDisconnectNotify(QGraphicsScene* self, QMetaMethod* signal);
QTLIBC_API QObject* QGraphicsScene_Sender(const QGraphicsScene* self);
QTLIBC_API void QGraphicsScene_OnSender(const QGraphicsScene* self, intptr_t slot);
QTLIBC_API QObject* QGraphicsScene_QBaseSender(const QGraphicsScene* self);
QTLIBC_API int QGraphicsScene_SenderSignalIndex(const QGraphicsScene* self);
QTLIBC_API void QGraphicsScene_OnSenderSignalIndex(const QGraphicsScene* self, intptr_t slot);
QTLIBC_API int QGraphicsScene_QBaseSenderSignalIndex(const QGraphicsScene* self);
QTLIBC_API int QGraphicsScene_Receivers(const QGraphicsScene* self, const char* signal);
QTLIBC_API void QGraphicsScene_OnReceivers(const QGraphicsScene* self, intptr_t slot);
QTLIBC_API int QGraphicsScene_QBaseReceivers(const QGraphicsScene* self, const char* signal);
QTLIBC_API bool QGraphicsScene_IsSignalConnected(const QGraphicsScene* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsScene_OnIsSignalConnected(const QGraphicsScene* self, intptr_t slot);
QTLIBC_API bool QGraphicsScene_QBaseIsSignalConnected(const QGraphicsScene* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsScene_Delete(QGraphicsScene* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
