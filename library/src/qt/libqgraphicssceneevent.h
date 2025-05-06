#pragma once
#ifndef SRC_QTC_LIBQGRAPHICSSCENEEVENT_H
#define SRC_QTC_LIBQGRAPHICSSCENEEVENT_H

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
#else
typedef struct QEvent QEvent;
typedef struct QGraphicsSceneContextMenuEvent QGraphicsSceneContextMenuEvent;
typedef struct QGraphicsSceneDragDropEvent QGraphicsSceneDragDropEvent;
typedef struct QGraphicsSceneEvent QGraphicsSceneEvent;
typedef struct QGraphicsSceneHelpEvent QGraphicsSceneHelpEvent;
typedef struct QGraphicsSceneHoverEvent QGraphicsSceneHoverEvent;
typedef struct QGraphicsSceneMouseEvent QGraphicsSceneMouseEvent;
typedef struct QGraphicsSceneMoveEvent QGraphicsSceneMoveEvent;
typedef struct QGraphicsSceneResizeEvent QGraphicsSceneResizeEvent;
typedef struct QGraphicsSceneWheelEvent QGraphicsSceneWheelEvent;
typedef struct QMimeData QMimeData;
typedef struct QPoint QPoint;
typedef struct QPointF QPointF;
typedef struct QSizeF QSizeF;
typedef struct QWidget QWidget;
#endif

#ifdef __cplusplus
typedef QGraphicsSceneContextMenuEvent::Reason Reason; // C++ enum
#else
typedef int Reason; // C ABI enum
#endif

QTLIBC_API QGraphicsSceneEvent* QGraphicsSceneEvent_new(int typeVal);
QTLIBC_API QWidget* QGraphicsSceneEvent_Widget(const QGraphicsSceneEvent* self);
QTLIBC_API void QGraphicsSceneEvent_SetWidget(QGraphicsSceneEvent* self, QWidget* widget);
QTLIBC_API unsigned long long QGraphicsSceneEvent_Timestamp(const QGraphicsSceneEvent* self);
QTLIBC_API void QGraphicsSceneEvent_SetTimestamp(QGraphicsSceneEvent* self, unsigned long long ts);
QTLIBC_API void QGraphicsSceneEvent_SetAccepted(QGraphicsSceneEvent* self, bool accepted);
QTLIBC_API void QGraphicsSceneEvent_OnSetAccepted(QGraphicsSceneEvent* self, intptr_t slot);
QTLIBC_API void QGraphicsSceneEvent_QBaseSetAccepted(QGraphicsSceneEvent* self, bool accepted);
QTLIBC_API QEvent* QGraphicsSceneEvent_Clone(const QGraphicsSceneEvent* self);
QTLIBC_API void QGraphicsSceneEvent_OnClone(const QGraphicsSceneEvent* self, intptr_t slot);
QTLIBC_API QEvent* QGraphicsSceneEvent_QBaseClone(const QGraphicsSceneEvent* self);
QTLIBC_API void QGraphicsSceneEvent_Delete(QGraphicsSceneEvent* self);

QTLIBC_API QGraphicsSceneMouseEvent* QGraphicsSceneMouseEvent_new();
QTLIBC_API QGraphicsSceneMouseEvent* QGraphicsSceneMouseEvent_new2(int typeVal);
QTLIBC_API QPointF* QGraphicsSceneMouseEvent_Pos(const QGraphicsSceneMouseEvent* self);
QTLIBC_API void QGraphicsSceneMouseEvent_SetPos(QGraphicsSceneMouseEvent* self, QPointF* pos);
QTLIBC_API QPointF* QGraphicsSceneMouseEvent_ScenePos(const QGraphicsSceneMouseEvent* self);
QTLIBC_API void QGraphicsSceneMouseEvent_SetScenePos(QGraphicsSceneMouseEvent* self, QPointF* pos);
QTLIBC_API QPoint* QGraphicsSceneMouseEvent_ScreenPos(const QGraphicsSceneMouseEvent* self);
QTLIBC_API void QGraphicsSceneMouseEvent_SetScreenPos(QGraphicsSceneMouseEvent* self, QPoint* pos);
QTLIBC_API QPointF* QGraphicsSceneMouseEvent_ButtonDownPos(const QGraphicsSceneMouseEvent* self, int button);
QTLIBC_API void QGraphicsSceneMouseEvent_SetButtonDownPos(QGraphicsSceneMouseEvent* self, int button, QPointF* pos);
QTLIBC_API QPointF* QGraphicsSceneMouseEvent_ButtonDownScenePos(const QGraphicsSceneMouseEvent* self, int button);
QTLIBC_API void QGraphicsSceneMouseEvent_SetButtonDownScenePos(QGraphicsSceneMouseEvent* self, int button, QPointF* pos);
QTLIBC_API QPoint* QGraphicsSceneMouseEvent_ButtonDownScreenPos(const QGraphicsSceneMouseEvent* self, int button);
QTLIBC_API void QGraphicsSceneMouseEvent_SetButtonDownScreenPos(QGraphicsSceneMouseEvent* self, int button, QPoint* pos);
QTLIBC_API QPointF* QGraphicsSceneMouseEvent_LastPos(const QGraphicsSceneMouseEvent* self);
QTLIBC_API void QGraphicsSceneMouseEvent_SetLastPos(QGraphicsSceneMouseEvent* self, QPointF* pos);
QTLIBC_API QPointF* QGraphicsSceneMouseEvent_LastScenePos(const QGraphicsSceneMouseEvent* self);
QTLIBC_API void QGraphicsSceneMouseEvent_SetLastScenePos(QGraphicsSceneMouseEvent* self, QPointF* pos);
QTLIBC_API QPoint* QGraphicsSceneMouseEvent_LastScreenPos(const QGraphicsSceneMouseEvent* self);
QTLIBC_API void QGraphicsSceneMouseEvent_SetLastScreenPos(QGraphicsSceneMouseEvent* self, QPoint* pos);
QTLIBC_API int QGraphicsSceneMouseEvent_Buttons(const QGraphicsSceneMouseEvent* self);
QTLIBC_API void QGraphicsSceneMouseEvent_SetButtons(QGraphicsSceneMouseEvent* self, int buttons);
QTLIBC_API int QGraphicsSceneMouseEvent_Button(const QGraphicsSceneMouseEvent* self);
QTLIBC_API void QGraphicsSceneMouseEvent_SetButton(QGraphicsSceneMouseEvent* self, int button);
QTLIBC_API int QGraphicsSceneMouseEvent_Modifiers(const QGraphicsSceneMouseEvent* self);
QTLIBC_API void QGraphicsSceneMouseEvent_SetModifiers(QGraphicsSceneMouseEvent* self, int modifiers);
QTLIBC_API int QGraphicsSceneMouseEvent_Source(const QGraphicsSceneMouseEvent* self);
QTLIBC_API void QGraphicsSceneMouseEvent_SetSource(QGraphicsSceneMouseEvent* self, int source);
QTLIBC_API int QGraphicsSceneMouseEvent_Flags(const QGraphicsSceneMouseEvent* self);
QTLIBC_API void QGraphicsSceneMouseEvent_SetFlags(QGraphicsSceneMouseEvent* self, int flags);
QTLIBC_API void QGraphicsSceneMouseEvent_SetAccepted(QGraphicsSceneMouseEvent* self, bool accepted);
QTLIBC_API void QGraphicsSceneMouseEvent_OnSetAccepted(QGraphicsSceneMouseEvent* self, intptr_t slot);
QTLIBC_API void QGraphicsSceneMouseEvent_QBaseSetAccepted(QGraphicsSceneMouseEvent* self, bool accepted);
QTLIBC_API QEvent* QGraphicsSceneMouseEvent_Clone(const QGraphicsSceneMouseEvent* self);
QTLIBC_API void QGraphicsSceneMouseEvent_OnClone(const QGraphicsSceneMouseEvent* self, intptr_t slot);
QTLIBC_API QEvent* QGraphicsSceneMouseEvent_QBaseClone(const QGraphicsSceneMouseEvent* self);
QTLIBC_API void QGraphicsSceneMouseEvent_Delete(QGraphicsSceneMouseEvent* self);

QTLIBC_API QGraphicsSceneWheelEvent* QGraphicsSceneWheelEvent_new();
QTLIBC_API QGraphicsSceneWheelEvent* QGraphicsSceneWheelEvent_new2(int typeVal);
QTLIBC_API QPointF* QGraphicsSceneWheelEvent_Pos(const QGraphicsSceneWheelEvent* self);
QTLIBC_API void QGraphicsSceneWheelEvent_SetPos(QGraphicsSceneWheelEvent* self, QPointF* pos);
QTLIBC_API QPointF* QGraphicsSceneWheelEvent_ScenePos(const QGraphicsSceneWheelEvent* self);
QTLIBC_API void QGraphicsSceneWheelEvent_SetScenePos(QGraphicsSceneWheelEvent* self, QPointF* pos);
QTLIBC_API QPoint* QGraphicsSceneWheelEvent_ScreenPos(const QGraphicsSceneWheelEvent* self);
QTLIBC_API void QGraphicsSceneWheelEvent_SetScreenPos(QGraphicsSceneWheelEvent* self, QPoint* pos);
QTLIBC_API int QGraphicsSceneWheelEvent_Buttons(const QGraphicsSceneWheelEvent* self);
QTLIBC_API void QGraphicsSceneWheelEvent_SetButtons(QGraphicsSceneWheelEvent* self, int buttons);
QTLIBC_API int QGraphicsSceneWheelEvent_Modifiers(const QGraphicsSceneWheelEvent* self);
QTLIBC_API void QGraphicsSceneWheelEvent_SetModifiers(QGraphicsSceneWheelEvent* self, int modifiers);
QTLIBC_API int QGraphicsSceneWheelEvent_Delta(const QGraphicsSceneWheelEvent* self);
QTLIBC_API void QGraphicsSceneWheelEvent_SetDelta(QGraphicsSceneWheelEvent* self, int delta);
QTLIBC_API int QGraphicsSceneWheelEvent_Orientation(const QGraphicsSceneWheelEvent* self);
QTLIBC_API void QGraphicsSceneWheelEvent_SetOrientation(QGraphicsSceneWheelEvent* self, int orientation);
QTLIBC_API int QGraphicsSceneWheelEvent_Phase(const QGraphicsSceneWheelEvent* self);
QTLIBC_API void QGraphicsSceneWheelEvent_SetPhase(QGraphicsSceneWheelEvent* self, int scrollPhase);
QTLIBC_API QPoint* QGraphicsSceneWheelEvent_PixelDelta(const QGraphicsSceneWheelEvent* self);
QTLIBC_API void QGraphicsSceneWheelEvent_SetPixelDelta(QGraphicsSceneWheelEvent* self, QPoint* delta);
QTLIBC_API bool QGraphicsSceneWheelEvent_IsInverted(const QGraphicsSceneWheelEvent* self);
QTLIBC_API void QGraphicsSceneWheelEvent_SetInverted(QGraphicsSceneWheelEvent* self, bool inverted);
QTLIBC_API void QGraphicsSceneWheelEvent_SetAccepted(QGraphicsSceneWheelEvent* self, bool accepted);
QTLIBC_API void QGraphicsSceneWheelEvent_OnSetAccepted(QGraphicsSceneWheelEvent* self, intptr_t slot);
QTLIBC_API void QGraphicsSceneWheelEvent_QBaseSetAccepted(QGraphicsSceneWheelEvent* self, bool accepted);
QTLIBC_API QEvent* QGraphicsSceneWheelEvent_Clone(const QGraphicsSceneWheelEvent* self);
QTLIBC_API void QGraphicsSceneWheelEvent_OnClone(const QGraphicsSceneWheelEvent* self, intptr_t slot);
QTLIBC_API QEvent* QGraphicsSceneWheelEvent_QBaseClone(const QGraphicsSceneWheelEvent* self);
QTLIBC_API void QGraphicsSceneWheelEvent_Delete(QGraphicsSceneWheelEvent* self);

QTLIBC_API QGraphicsSceneContextMenuEvent* QGraphicsSceneContextMenuEvent_new();
QTLIBC_API QGraphicsSceneContextMenuEvent* QGraphicsSceneContextMenuEvent_new2(int typeVal);
QTLIBC_API QPointF* QGraphicsSceneContextMenuEvent_Pos(const QGraphicsSceneContextMenuEvent* self);
QTLIBC_API void QGraphicsSceneContextMenuEvent_SetPos(QGraphicsSceneContextMenuEvent* self, QPointF* pos);
QTLIBC_API QPointF* QGraphicsSceneContextMenuEvent_ScenePos(const QGraphicsSceneContextMenuEvent* self);
QTLIBC_API void QGraphicsSceneContextMenuEvent_SetScenePos(QGraphicsSceneContextMenuEvent* self, QPointF* pos);
QTLIBC_API QPoint* QGraphicsSceneContextMenuEvent_ScreenPos(const QGraphicsSceneContextMenuEvent* self);
QTLIBC_API void QGraphicsSceneContextMenuEvent_SetScreenPos(QGraphicsSceneContextMenuEvent* self, QPoint* pos);
QTLIBC_API int QGraphicsSceneContextMenuEvent_Modifiers(const QGraphicsSceneContextMenuEvent* self);
QTLIBC_API void QGraphicsSceneContextMenuEvent_SetModifiers(QGraphicsSceneContextMenuEvent* self, int modifiers);
QTLIBC_API int QGraphicsSceneContextMenuEvent_Reason(const QGraphicsSceneContextMenuEvent* self);
QTLIBC_API void QGraphicsSceneContextMenuEvent_SetReason(QGraphicsSceneContextMenuEvent* self, int reason);
QTLIBC_API void QGraphicsSceneContextMenuEvent_SetAccepted(QGraphicsSceneContextMenuEvent* self, bool accepted);
QTLIBC_API void QGraphicsSceneContextMenuEvent_OnSetAccepted(QGraphicsSceneContextMenuEvent* self, intptr_t slot);
QTLIBC_API void QGraphicsSceneContextMenuEvent_QBaseSetAccepted(QGraphicsSceneContextMenuEvent* self, bool accepted);
QTLIBC_API QEvent* QGraphicsSceneContextMenuEvent_Clone(const QGraphicsSceneContextMenuEvent* self);
QTLIBC_API void QGraphicsSceneContextMenuEvent_OnClone(const QGraphicsSceneContextMenuEvent* self, intptr_t slot);
QTLIBC_API QEvent* QGraphicsSceneContextMenuEvent_QBaseClone(const QGraphicsSceneContextMenuEvent* self);
QTLIBC_API void QGraphicsSceneContextMenuEvent_Delete(QGraphicsSceneContextMenuEvent* self);

QTLIBC_API QGraphicsSceneHoverEvent* QGraphicsSceneHoverEvent_new();
QTLIBC_API QGraphicsSceneHoverEvent* QGraphicsSceneHoverEvent_new2(int typeVal);
QTLIBC_API QPointF* QGraphicsSceneHoverEvent_Pos(const QGraphicsSceneHoverEvent* self);
QTLIBC_API void QGraphicsSceneHoverEvent_SetPos(QGraphicsSceneHoverEvent* self, QPointF* pos);
QTLIBC_API QPointF* QGraphicsSceneHoverEvent_ScenePos(const QGraphicsSceneHoverEvent* self);
QTLIBC_API void QGraphicsSceneHoverEvent_SetScenePos(QGraphicsSceneHoverEvent* self, QPointF* pos);
QTLIBC_API QPoint* QGraphicsSceneHoverEvent_ScreenPos(const QGraphicsSceneHoverEvent* self);
QTLIBC_API void QGraphicsSceneHoverEvent_SetScreenPos(QGraphicsSceneHoverEvent* self, QPoint* pos);
QTLIBC_API QPointF* QGraphicsSceneHoverEvent_LastPos(const QGraphicsSceneHoverEvent* self);
QTLIBC_API void QGraphicsSceneHoverEvent_SetLastPos(QGraphicsSceneHoverEvent* self, QPointF* pos);
QTLIBC_API QPointF* QGraphicsSceneHoverEvent_LastScenePos(const QGraphicsSceneHoverEvent* self);
QTLIBC_API void QGraphicsSceneHoverEvent_SetLastScenePos(QGraphicsSceneHoverEvent* self, QPointF* pos);
QTLIBC_API QPoint* QGraphicsSceneHoverEvent_LastScreenPos(const QGraphicsSceneHoverEvent* self);
QTLIBC_API void QGraphicsSceneHoverEvent_SetLastScreenPos(QGraphicsSceneHoverEvent* self, QPoint* pos);
QTLIBC_API int QGraphicsSceneHoverEvent_Modifiers(const QGraphicsSceneHoverEvent* self);
QTLIBC_API void QGraphicsSceneHoverEvent_SetModifiers(QGraphicsSceneHoverEvent* self, int modifiers);
QTLIBC_API void QGraphicsSceneHoverEvent_SetAccepted(QGraphicsSceneHoverEvent* self, bool accepted);
QTLIBC_API void QGraphicsSceneHoverEvent_OnSetAccepted(QGraphicsSceneHoverEvent* self, intptr_t slot);
QTLIBC_API void QGraphicsSceneHoverEvent_QBaseSetAccepted(QGraphicsSceneHoverEvent* self, bool accepted);
QTLIBC_API QEvent* QGraphicsSceneHoverEvent_Clone(const QGraphicsSceneHoverEvent* self);
QTLIBC_API void QGraphicsSceneHoverEvent_OnClone(const QGraphicsSceneHoverEvent* self, intptr_t slot);
QTLIBC_API QEvent* QGraphicsSceneHoverEvent_QBaseClone(const QGraphicsSceneHoverEvent* self);
QTLIBC_API void QGraphicsSceneHoverEvent_Delete(QGraphicsSceneHoverEvent* self);

QTLIBC_API QGraphicsSceneHelpEvent* QGraphicsSceneHelpEvent_new();
QTLIBC_API QGraphicsSceneHelpEvent* QGraphicsSceneHelpEvent_new2(int typeVal);
QTLIBC_API QPointF* QGraphicsSceneHelpEvent_ScenePos(const QGraphicsSceneHelpEvent* self);
QTLIBC_API void QGraphicsSceneHelpEvent_SetScenePos(QGraphicsSceneHelpEvent* self, QPointF* pos);
QTLIBC_API QPoint* QGraphicsSceneHelpEvent_ScreenPos(const QGraphicsSceneHelpEvent* self);
QTLIBC_API void QGraphicsSceneHelpEvent_SetScreenPos(QGraphicsSceneHelpEvent* self, QPoint* pos);
QTLIBC_API void QGraphicsSceneHelpEvent_SetAccepted(QGraphicsSceneHelpEvent* self, bool accepted);
QTLIBC_API void QGraphicsSceneHelpEvent_OnSetAccepted(QGraphicsSceneHelpEvent* self, intptr_t slot);
QTLIBC_API void QGraphicsSceneHelpEvent_QBaseSetAccepted(QGraphicsSceneHelpEvent* self, bool accepted);
QTLIBC_API QEvent* QGraphicsSceneHelpEvent_Clone(const QGraphicsSceneHelpEvent* self);
QTLIBC_API void QGraphicsSceneHelpEvent_OnClone(const QGraphicsSceneHelpEvent* self, intptr_t slot);
QTLIBC_API QEvent* QGraphicsSceneHelpEvent_QBaseClone(const QGraphicsSceneHelpEvent* self);
QTLIBC_API void QGraphicsSceneHelpEvent_Delete(QGraphicsSceneHelpEvent* self);

QTLIBC_API QGraphicsSceneDragDropEvent* QGraphicsSceneDragDropEvent_new();
QTLIBC_API QGraphicsSceneDragDropEvent* QGraphicsSceneDragDropEvent_new2(int typeVal);
QTLIBC_API QPointF* QGraphicsSceneDragDropEvent_Pos(const QGraphicsSceneDragDropEvent* self);
QTLIBC_API void QGraphicsSceneDragDropEvent_SetPos(QGraphicsSceneDragDropEvent* self, QPointF* pos);
QTLIBC_API QPointF* QGraphicsSceneDragDropEvent_ScenePos(const QGraphicsSceneDragDropEvent* self);
QTLIBC_API void QGraphicsSceneDragDropEvent_SetScenePos(QGraphicsSceneDragDropEvent* self, QPointF* pos);
QTLIBC_API QPoint* QGraphicsSceneDragDropEvent_ScreenPos(const QGraphicsSceneDragDropEvent* self);
QTLIBC_API void QGraphicsSceneDragDropEvent_SetScreenPos(QGraphicsSceneDragDropEvent* self, QPoint* pos);
QTLIBC_API int QGraphicsSceneDragDropEvent_Buttons(const QGraphicsSceneDragDropEvent* self);
QTLIBC_API void QGraphicsSceneDragDropEvent_SetButtons(QGraphicsSceneDragDropEvent* self, int buttons);
QTLIBC_API int QGraphicsSceneDragDropEvent_Modifiers(const QGraphicsSceneDragDropEvent* self);
QTLIBC_API void QGraphicsSceneDragDropEvent_SetModifiers(QGraphicsSceneDragDropEvent* self, int modifiers);
QTLIBC_API int QGraphicsSceneDragDropEvent_PossibleActions(const QGraphicsSceneDragDropEvent* self);
QTLIBC_API void QGraphicsSceneDragDropEvent_SetPossibleActions(QGraphicsSceneDragDropEvent* self, int actions);
QTLIBC_API int QGraphicsSceneDragDropEvent_ProposedAction(const QGraphicsSceneDragDropEvent* self);
QTLIBC_API void QGraphicsSceneDragDropEvent_SetProposedAction(QGraphicsSceneDragDropEvent* self, int action);
QTLIBC_API void QGraphicsSceneDragDropEvent_AcceptProposedAction(QGraphicsSceneDragDropEvent* self);
QTLIBC_API int QGraphicsSceneDragDropEvent_DropAction(const QGraphicsSceneDragDropEvent* self);
QTLIBC_API void QGraphicsSceneDragDropEvent_SetDropAction(QGraphicsSceneDragDropEvent* self, int action);
QTLIBC_API QWidget* QGraphicsSceneDragDropEvent_Source(const QGraphicsSceneDragDropEvent* self);
QTLIBC_API void QGraphicsSceneDragDropEvent_SetSource(QGraphicsSceneDragDropEvent* self, QWidget* source);
QTLIBC_API QMimeData* QGraphicsSceneDragDropEvent_MimeData(const QGraphicsSceneDragDropEvent* self);
QTLIBC_API void QGraphicsSceneDragDropEvent_SetMimeData(QGraphicsSceneDragDropEvent* self, QMimeData* data);
QTLIBC_API void QGraphicsSceneDragDropEvent_SetAccepted(QGraphicsSceneDragDropEvent* self, bool accepted);
QTLIBC_API void QGraphicsSceneDragDropEvent_OnSetAccepted(QGraphicsSceneDragDropEvent* self, intptr_t slot);
QTLIBC_API void QGraphicsSceneDragDropEvent_QBaseSetAccepted(QGraphicsSceneDragDropEvent* self, bool accepted);
QTLIBC_API QEvent* QGraphicsSceneDragDropEvent_Clone(const QGraphicsSceneDragDropEvent* self);
QTLIBC_API void QGraphicsSceneDragDropEvent_OnClone(const QGraphicsSceneDragDropEvent* self, intptr_t slot);
QTLIBC_API QEvent* QGraphicsSceneDragDropEvent_QBaseClone(const QGraphicsSceneDragDropEvent* self);
QTLIBC_API void QGraphicsSceneDragDropEvent_Delete(QGraphicsSceneDragDropEvent* self);

QTLIBC_API QGraphicsSceneResizeEvent* QGraphicsSceneResizeEvent_new();
QTLIBC_API QSizeF* QGraphicsSceneResizeEvent_OldSize(const QGraphicsSceneResizeEvent* self);
QTLIBC_API void QGraphicsSceneResizeEvent_SetOldSize(QGraphicsSceneResizeEvent* self, QSizeF* size);
QTLIBC_API QSizeF* QGraphicsSceneResizeEvent_NewSize(const QGraphicsSceneResizeEvent* self);
QTLIBC_API void QGraphicsSceneResizeEvent_SetNewSize(QGraphicsSceneResizeEvent* self, QSizeF* size);
QTLIBC_API void QGraphicsSceneResizeEvent_SetAccepted(QGraphicsSceneResizeEvent* self, bool accepted);
QTLIBC_API void QGraphicsSceneResizeEvent_OnSetAccepted(QGraphicsSceneResizeEvent* self, intptr_t slot);
QTLIBC_API void QGraphicsSceneResizeEvent_QBaseSetAccepted(QGraphicsSceneResizeEvent* self, bool accepted);
QTLIBC_API QEvent* QGraphicsSceneResizeEvent_Clone(const QGraphicsSceneResizeEvent* self);
QTLIBC_API void QGraphicsSceneResizeEvent_OnClone(const QGraphicsSceneResizeEvent* self, intptr_t slot);
QTLIBC_API QEvent* QGraphicsSceneResizeEvent_QBaseClone(const QGraphicsSceneResizeEvent* self);
QTLIBC_API void QGraphicsSceneResizeEvent_Delete(QGraphicsSceneResizeEvent* self);

QTLIBC_API QGraphicsSceneMoveEvent* QGraphicsSceneMoveEvent_new();
QTLIBC_API QPointF* QGraphicsSceneMoveEvent_OldPos(const QGraphicsSceneMoveEvent* self);
QTLIBC_API void QGraphicsSceneMoveEvent_SetOldPos(QGraphicsSceneMoveEvent* self, QPointF* pos);
QTLIBC_API QPointF* QGraphicsSceneMoveEvent_NewPos(const QGraphicsSceneMoveEvent* self);
QTLIBC_API void QGraphicsSceneMoveEvent_SetNewPos(QGraphicsSceneMoveEvent* self, QPointF* pos);
QTLIBC_API void QGraphicsSceneMoveEvent_SetAccepted(QGraphicsSceneMoveEvent* self, bool accepted);
QTLIBC_API void QGraphicsSceneMoveEvent_OnSetAccepted(QGraphicsSceneMoveEvent* self, intptr_t slot);
QTLIBC_API void QGraphicsSceneMoveEvent_QBaseSetAccepted(QGraphicsSceneMoveEvent* self, bool accepted);
QTLIBC_API QEvent* QGraphicsSceneMoveEvent_Clone(const QGraphicsSceneMoveEvent* self);
QTLIBC_API void QGraphicsSceneMoveEvent_OnClone(const QGraphicsSceneMoveEvent* self, intptr_t slot);
QTLIBC_API QEvent* QGraphicsSceneMoveEvent_QBaseClone(const QGraphicsSceneMoveEvent* self);
QTLIBC_API void QGraphicsSceneMoveEvent_Delete(QGraphicsSceneMoveEvent* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
