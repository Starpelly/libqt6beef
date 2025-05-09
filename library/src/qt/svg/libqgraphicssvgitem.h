#pragma once
#ifndef SRC_QT_SVGC_LIBQGRAPHICSSVGITEM_H
#define SRC_QT_SVGC_LIBQGRAPHICSSVGITEM_H

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
typedef struct QChildEvent QChildEvent;
typedef struct QCursor QCursor;
typedef struct QEvent QEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QGraphicsEffect QGraphicsEffect;
typedef struct QGraphicsItem QGraphicsItem;
typedef struct QGraphicsItemGroup QGraphicsItemGroup;
typedef struct QGraphicsObject QGraphicsObject;
typedef struct QGraphicsScene QGraphicsScene;
typedef struct QGraphicsSceneContextMenuEvent QGraphicsSceneContextMenuEvent;
typedef struct QGraphicsSceneDragDropEvent QGraphicsSceneDragDropEvent;
typedef struct QGraphicsSceneHoverEvent QGraphicsSceneHoverEvent;
typedef struct QGraphicsSceneMouseEvent QGraphicsSceneMouseEvent;
typedef struct QGraphicsSceneWheelEvent QGraphicsSceneWheelEvent;
typedef struct QGraphicsSvgItem QGraphicsSvgItem;
typedef struct QGraphicsTransform QGraphicsTransform;
typedef struct QGraphicsWidget QGraphicsWidget;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QKeyEvent QKeyEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QPainter QPainter;
typedef struct QPainterPath QPainterPath;
typedef struct QPointF QPointF;
typedef struct QRectF QRectF;
typedef struct QRegion QRegion;
typedef struct QSize QSize;
typedef struct QStyleOptionGraphicsItem QStyleOptionGraphicsItem;
typedef struct QSvgRenderer QSvgRenderer;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QTransform QTransform;
typedef struct QVariant QVariant;
typedef struct QWidget QWidget;
#endif

QTLIBC_API QGraphicsSvgItem* QGraphicsSvgItem_new();
QTLIBC_API QGraphicsSvgItem* QGraphicsSvgItem_new2(libqt_string fileName);
QTLIBC_API QGraphicsSvgItem* QGraphicsSvgItem_new3(QGraphicsItem* parentItem);
QTLIBC_API QGraphicsSvgItem* QGraphicsSvgItem_new4(libqt_string fileName, QGraphicsItem* parentItem);
QTLIBC_API QMetaObject* QGraphicsSvgItem_MetaObject(const QGraphicsSvgItem* self);
QTLIBC_API void* QGraphicsSvgItem_Metacast(QGraphicsSvgItem* self, const char* param1);
QTLIBC_API int QGraphicsSvgItem_Metacall(QGraphicsSvgItem* self, int param1, int param2, void** param3);
QTLIBC_API void QGraphicsSvgItem_OnMetacall(QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API int QGraphicsSvgItem_QBaseMetacall(QGraphicsSvgItem* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QGraphicsSvgItem_Tr(const char* s);
QTLIBC_API void QGraphicsSvgItem_SetSharedRenderer(QGraphicsSvgItem* self, QSvgRenderer* renderer);
QTLIBC_API QSvgRenderer* QGraphicsSvgItem_Renderer(const QGraphicsSvgItem* self);
QTLIBC_API void QGraphicsSvgItem_SetElementId(QGraphicsSvgItem* self, libqt_string id);
QTLIBC_API libqt_string QGraphicsSvgItem_ElementId(const QGraphicsSvgItem* self);
QTLIBC_API void QGraphicsSvgItem_SetCachingEnabled(QGraphicsSvgItem* self, bool cachingEnabled);
QTLIBC_API bool QGraphicsSvgItem_IsCachingEnabled(const QGraphicsSvgItem* self);
QTLIBC_API void QGraphicsSvgItem_SetMaximumCacheSize(QGraphicsSvgItem* self, QSize* size);
QTLIBC_API QSize* QGraphicsSvgItem_MaximumCacheSize(const QGraphicsSvgItem* self);
QTLIBC_API QRectF* QGraphicsSvgItem_BoundingRect(const QGraphicsSvgItem* self);
QTLIBC_API void QGraphicsSvgItem_OnBoundingRect(const QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API QRectF* QGraphicsSvgItem_QBaseBoundingRect(const QGraphicsSvgItem* self);
QTLIBC_API void QGraphicsSvgItem_Paint(QGraphicsSvgItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);
QTLIBC_API void QGraphicsSvgItem_OnPaint(QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API void QGraphicsSvgItem_QBasePaint(QGraphicsSvgItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);
QTLIBC_API int QGraphicsSvgItem_Type(const QGraphicsSvgItem* self);
QTLIBC_API void QGraphicsSvgItem_OnType(const QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API int QGraphicsSvgItem_QBaseType(const QGraphicsSvgItem* self);
QTLIBC_API libqt_string QGraphicsSvgItem_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QGraphicsSvgItem_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QGraphicsSvgItem_Event(QGraphicsSvgItem* self, QEvent* ev);
QTLIBC_API void QGraphicsSvgItem_OnEvent(QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API bool QGraphicsSvgItem_QBaseEvent(QGraphicsSvgItem* self, QEvent* ev);
QTLIBC_API bool QGraphicsSvgItem_EventFilter(QGraphicsSvgItem* self, QObject* watched, QEvent* event);
QTLIBC_API void QGraphicsSvgItem_OnEventFilter(QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API bool QGraphicsSvgItem_QBaseEventFilter(QGraphicsSvgItem* self, QObject* watched, QEvent* event);
QTLIBC_API void QGraphicsSvgItem_TimerEvent(QGraphicsSvgItem* self, QTimerEvent* event);
QTLIBC_API void QGraphicsSvgItem_OnTimerEvent(QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API void QGraphicsSvgItem_QBaseTimerEvent(QGraphicsSvgItem* self, QTimerEvent* event);
QTLIBC_API void QGraphicsSvgItem_ChildEvent(QGraphicsSvgItem* self, QChildEvent* event);
QTLIBC_API void QGraphicsSvgItem_OnChildEvent(QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API void QGraphicsSvgItem_QBaseChildEvent(QGraphicsSvgItem* self, QChildEvent* event);
QTLIBC_API void QGraphicsSvgItem_CustomEvent(QGraphicsSvgItem* self, QEvent* event);
QTLIBC_API void QGraphicsSvgItem_OnCustomEvent(QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API void QGraphicsSvgItem_QBaseCustomEvent(QGraphicsSvgItem* self, QEvent* event);
QTLIBC_API void QGraphicsSvgItem_ConnectNotify(QGraphicsSvgItem* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsSvgItem_OnConnectNotify(QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API void QGraphicsSvgItem_QBaseConnectNotify(QGraphicsSvgItem* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsSvgItem_DisconnectNotify(QGraphicsSvgItem* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsSvgItem_OnDisconnectNotify(QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API void QGraphicsSvgItem_QBaseDisconnectNotify(QGraphicsSvgItem* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsSvgItem_Advance(QGraphicsSvgItem* self, int phase);
QTLIBC_API void QGraphicsSvgItem_OnAdvance(QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API void QGraphicsSvgItem_QBaseAdvance(QGraphicsSvgItem* self, int phase);
QTLIBC_API QPainterPath* QGraphicsSvgItem_Shape(const QGraphicsSvgItem* self);
QTLIBC_API void QGraphicsSvgItem_OnShape(const QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API QPainterPath* QGraphicsSvgItem_QBaseShape(const QGraphicsSvgItem* self);
QTLIBC_API bool QGraphicsSvgItem_Contains(const QGraphicsSvgItem* self, QPointF* point);
QTLIBC_API void QGraphicsSvgItem_OnContains(const QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API bool QGraphicsSvgItem_QBaseContains(const QGraphicsSvgItem* self, QPointF* point);
QTLIBC_API bool QGraphicsSvgItem_CollidesWithItem(const QGraphicsSvgItem* self, QGraphicsItem* other, int mode);
QTLIBC_API void QGraphicsSvgItem_OnCollidesWithItem(const QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API bool QGraphicsSvgItem_QBaseCollidesWithItem(const QGraphicsSvgItem* self, QGraphicsItem* other, int mode);
QTLIBC_API bool QGraphicsSvgItem_CollidesWithPath(const QGraphicsSvgItem* self, QPainterPath* path, int mode);
QTLIBC_API void QGraphicsSvgItem_OnCollidesWithPath(const QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API bool QGraphicsSvgItem_QBaseCollidesWithPath(const QGraphicsSvgItem* self, QPainterPath* path, int mode);
QTLIBC_API bool QGraphicsSvgItem_IsObscuredBy(const QGraphicsSvgItem* self, QGraphicsItem* item);
QTLIBC_API void QGraphicsSvgItem_OnIsObscuredBy(const QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API bool QGraphicsSvgItem_QBaseIsObscuredBy(const QGraphicsSvgItem* self, QGraphicsItem* item);
QTLIBC_API QPainterPath* QGraphicsSvgItem_OpaqueArea(const QGraphicsSvgItem* self);
QTLIBC_API void QGraphicsSvgItem_OnOpaqueArea(const QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API QPainterPath* QGraphicsSvgItem_QBaseOpaqueArea(const QGraphicsSvgItem* self);
QTLIBC_API bool QGraphicsSvgItem_SceneEventFilter(QGraphicsSvgItem* self, QGraphicsItem* watched, QEvent* event);
QTLIBC_API void QGraphicsSvgItem_OnSceneEventFilter(QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API bool QGraphicsSvgItem_QBaseSceneEventFilter(QGraphicsSvgItem* self, QGraphicsItem* watched, QEvent* event);
QTLIBC_API bool QGraphicsSvgItem_SceneEvent(QGraphicsSvgItem* self, QEvent* event);
QTLIBC_API void QGraphicsSvgItem_OnSceneEvent(QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API bool QGraphicsSvgItem_QBaseSceneEvent(QGraphicsSvgItem* self, QEvent* event);
QTLIBC_API void QGraphicsSvgItem_ContextMenuEvent(QGraphicsSvgItem* self, QGraphicsSceneContextMenuEvent* event);
QTLIBC_API void QGraphicsSvgItem_OnContextMenuEvent(QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API void QGraphicsSvgItem_QBaseContextMenuEvent(QGraphicsSvgItem* self, QGraphicsSceneContextMenuEvent* event);
QTLIBC_API void QGraphicsSvgItem_DragEnterEvent(QGraphicsSvgItem* self, QGraphicsSceneDragDropEvent* event);
QTLIBC_API void QGraphicsSvgItem_OnDragEnterEvent(QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API void QGraphicsSvgItem_QBaseDragEnterEvent(QGraphicsSvgItem* self, QGraphicsSceneDragDropEvent* event);
QTLIBC_API void QGraphicsSvgItem_DragLeaveEvent(QGraphicsSvgItem* self, QGraphicsSceneDragDropEvent* event);
QTLIBC_API void QGraphicsSvgItem_OnDragLeaveEvent(QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API void QGraphicsSvgItem_QBaseDragLeaveEvent(QGraphicsSvgItem* self, QGraphicsSceneDragDropEvent* event);
QTLIBC_API void QGraphicsSvgItem_DragMoveEvent(QGraphicsSvgItem* self, QGraphicsSceneDragDropEvent* event);
QTLIBC_API void QGraphicsSvgItem_OnDragMoveEvent(QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API void QGraphicsSvgItem_QBaseDragMoveEvent(QGraphicsSvgItem* self, QGraphicsSceneDragDropEvent* event);
QTLIBC_API void QGraphicsSvgItem_DropEvent(QGraphicsSvgItem* self, QGraphicsSceneDragDropEvent* event);
QTLIBC_API void QGraphicsSvgItem_OnDropEvent(QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API void QGraphicsSvgItem_QBaseDropEvent(QGraphicsSvgItem* self, QGraphicsSceneDragDropEvent* event);
QTLIBC_API void QGraphicsSvgItem_FocusInEvent(QGraphicsSvgItem* self, QFocusEvent* event);
QTLIBC_API void QGraphicsSvgItem_OnFocusInEvent(QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API void QGraphicsSvgItem_QBaseFocusInEvent(QGraphicsSvgItem* self, QFocusEvent* event);
QTLIBC_API void QGraphicsSvgItem_FocusOutEvent(QGraphicsSvgItem* self, QFocusEvent* event);
QTLIBC_API void QGraphicsSvgItem_OnFocusOutEvent(QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API void QGraphicsSvgItem_QBaseFocusOutEvent(QGraphicsSvgItem* self, QFocusEvent* event);
QTLIBC_API void QGraphicsSvgItem_HoverEnterEvent(QGraphicsSvgItem* self, QGraphicsSceneHoverEvent* event);
QTLIBC_API void QGraphicsSvgItem_OnHoverEnterEvent(QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API void QGraphicsSvgItem_QBaseHoverEnterEvent(QGraphicsSvgItem* self, QGraphicsSceneHoverEvent* event);
QTLIBC_API void QGraphicsSvgItem_HoverMoveEvent(QGraphicsSvgItem* self, QGraphicsSceneHoverEvent* event);
QTLIBC_API void QGraphicsSvgItem_OnHoverMoveEvent(QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API void QGraphicsSvgItem_QBaseHoverMoveEvent(QGraphicsSvgItem* self, QGraphicsSceneHoverEvent* event);
QTLIBC_API void QGraphicsSvgItem_HoverLeaveEvent(QGraphicsSvgItem* self, QGraphicsSceneHoverEvent* event);
QTLIBC_API void QGraphicsSvgItem_OnHoverLeaveEvent(QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API void QGraphicsSvgItem_QBaseHoverLeaveEvent(QGraphicsSvgItem* self, QGraphicsSceneHoverEvent* event);
QTLIBC_API void QGraphicsSvgItem_KeyPressEvent(QGraphicsSvgItem* self, QKeyEvent* event);
QTLIBC_API void QGraphicsSvgItem_OnKeyPressEvent(QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API void QGraphicsSvgItem_QBaseKeyPressEvent(QGraphicsSvgItem* self, QKeyEvent* event);
QTLIBC_API void QGraphicsSvgItem_KeyReleaseEvent(QGraphicsSvgItem* self, QKeyEvent* event);
QTLIBC_API void QGraphicsSvgItem_OnKeyReleaseEvent(QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API void QGraphicsSvgItem_QBaseKeyReleaseEvent(QGraphicsSvgItem* self, QKeyEvent* event);
QTLIBC_API void QGraphicsSvgItem_MousePressEvent(QGraphicsSvgItem* self, QGraphicsSceneMouseEvent* event);
QTLIBC_API void QGraphicsSvgItem_OnMousePressEvent(QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API void QGraphicsSvgItem_QBaseMousePressEvent(QGraphicsSvgItem* self, QGraphicsSceneMouseEvent* event);
QTLIBC_API void QGraphicsSvgItem_MouseMoveEvent(QGraphicsSvgItem* self, QGraphicsSceneMouseEvent* event);
QTLIBC_API void QGraphicsSvgItem_OnMouseMoveEvent(QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API void QGraphicsSvgItem_QBaseMouseMoveEvent(QGraphicsSvgItem* self, QGraphicsSceneMouseEvent* event);
QTLIBC_API void QGraphicsSvgItem_MouseReleaseEvent(QGraphicsSvgItem* self, QGraphicsSceneMouseEvent* event);
QTLIBC_API void QGraphicsSvgItem_OnMouseReleaseEvent(QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API void QGraphicsSvgItem_QBaseMouseReleaseEvent(QGraphicsSvgItem* self, QGraphicsSceneMouseEvent* event);
QTLIBC_API void QGraphicsSvgItem_MouseDoubleClickEvent(QGraphicsSvgItem* self, QGraphicsSceneMouseEvent* event);
QTLIBC_API void QGraphicsSvgItem_OnMouseDoubleClickEvent(QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API void QGraphicsSvgItem_QBaseMouseDoubleClickEvent(QGraphicsSvgItem* self, QGraphicsSceneMouseEvent* event);
QTLIBC_API void QGraphicsSvgItem_WheelEvent(QGraphicsSvgItem* self, QGraphicsSceneWheelEvent* event);
QTLIBC_API void QGraphicsSvgItem_OnWheelEvent(QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API void QGraphicsSvgItem_QBaseWheelEvent(QGraphicsSvgItem* self, QGraphicsSceneWheelEvent* event);
QTLIBC_API void QGraphicsSvgItem_InputMethodEvent(QGraphicsSvgItem* self, QInputMethodEvent* event);
QTLIBC_API void QGraphicsSvgItem_OnInputMethodEvent(QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API void QGraphicsSvgItem_QBaseInputMethodEvent(QGraphicsSvgItem* self, QInputMethodEvent* event);
QTLIBC_API QVariant* QGraphicsSvgItem_ItemChange(QGraphicsSvgItem* self, int change, QVariant* value);
QTLIBC_API void QGraphicsSvgItem_OnItemChange(QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API QVariant* QGraphicsSvgItem_QBaseItemChange(QGraphicsSvgItem* self, int change, QVariant* value);
QTLIBC_API void QGraphicsSvgItem_SetExtension(QGraphicsSvgItem* self, int extension, QVariant* variant);
QTLIBC_API void QGraphicsSvgItem_OnSetExtension(QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API void QGraphicsSvgItem_QBaseSetExtension(QGraphicsSvgItem* self, int extension, QVariant* variant);
QTLIBC_API QVariant* QGraphicsSvgItem_InputMethodQuery(const QGraphicsSvgItem* self, int query);
QTLIBC_API void QGraphicsSvgItem_OnInputMethodQuery(const QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API QVariant* QGraphicsSvgItem_QBaseInputMethodQuery(const QGraphicsSvgItem* self, int query);
QTLIBC_API bool QGraphicsSvgItem_SupportsExtension(const QGraphicsSvgItem* self, int extension);
QTLIBC_API void QGraphicsSvgItem_OnSupportsExtension(const QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API bool QGraphicsSvgItem_QBaseSupportsExtension(const QGraphicsSvgItem* self, int extension);
QTLIBC_API QVariant* QGraphicsSvgItem_Extension(const QGraphicsSvgItem* self, QVariant* variant);
QTLIBC_API void QGraphicsSvgItem_OnExtension(const QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API QVariant* QGraphicsSvgItem_QBaseExtension(const QGraphicsSvgItem* self, QVariant* variant);
QTLIBC_API void QGraphicsSvgItem_UpdateMicroFocus(QGraphicsSvgItem* self);
QTLIBC_API void QGraphicsSvgItem_OnUpdateMicroFocus(QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API void QGraphicsSvgItem_QBaseUpdateMicroFocus(QGraphicsSvgItem* self);
QTLIBC_API QObject* QGraphicsSvgItem_Sender(const QGraphicsSvgItem* self);
QTLIBC_API void QGraphicsSvgItem_OnSender(const QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API QObject* QGraphicsSvgItem_QBaseSender(const QGraphicsSvgItem* self);
QTLIBC_API int QGraphicsSvgItem_SenderSignalIndex(const QGraphicsSvgItem* self);
QTLIBC_API void QGraphicsSvgItem_OnSenderSignalIndex(const QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API int QGraphicsSvgItem_QBaseSenderSignalIndex(const QGraphicsSvgItem* self);
QTLIBC_API int QGraphicsSvgItem_Receivers(const QGraphicsSvgItem* self, const char* signal);
QTLIBC_API void QGraphicsSvgItem_OnReceivers(const QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API int QGraphicsSvgItem_QBaseReceivers(const QGraphicsSvgItem* self, const char* signal);
QTLIBC_API bool QGraphicsSvgItem_IsSignalConnected(const QGraphicsSvgItem* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsSvgItem_OnIsSignalConnected(const QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API bool QGraphicsSvgItem_QBaseIsSignalConnected(const QGraphicsSvgItem* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsSvgItem_AddToIndex(QGraphicsSvgItem* self);
QTLIBC_API void QGraphicsSvgItem_OnAddToIndex(QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API void QGraphicsSvgItem_QBaseAddToIndex(QGraphicsSvgItem* self);
QTLIBC_API void QGraphicsSvgItem_RemoveFromIndex(QGraphicsSvgItem* self);
QTLIBC_API void QGraphicsSvgItem_OnRemoveFromIndex(QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API void QGraphicsSvgItem_QBaseRemoveFromIndex(QGraphicsSvgItem* self);
QTLIBC_API void QGraphicsSvgItem_PrepareGeometryChange(QGraphicsSvgItem* self);
QTLIBC_API void QGraphicsSvgItem_OnPrepareGeometryChange(QGraphicsSvgItem* self, intptr_t slot);
QTLIBC_API void QGraphicsSvgItem_QBasePrepareGeometryChange(QGraphicsSvgItem* self);
QTLIBC_API void QGraphicsSvgItem_Delete(QGraphicsSvgItem* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
