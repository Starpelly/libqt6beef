using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QGraphicsSceneContextMenuEvent__Reason
{
	Mouse = 0,
	Keyboard = 1,
	Other = 2,
}
public struct QGraphicsSceneEvent : QEvent
{
	[LinkName("QGraphicsSceneEvent_new")]
	public static extern QGraphicsSceneEvent* QGraphicsSceneEvent_new(int64 typeVal);
	[LinkName("QGraphicsSceneEvent_Widget")]
	public static extern QWidget* QGraphicsSceneEvent_Widget(Self* c_this);
	[LinkName("QGraphicsSceneEvent_SetWidget")]
	public static extern void QGraphicsSceneEvent_SetWidget(Self* c_this, QWidget* widget);
	[LinkName("QGraphicsSceneEvent_Timestamp")]
	public static extern uint64 QGraphicsSceneEvent_Timestamp(Self* c_this);
	[LinkName("QGraphicsSceneEvent_SetTimestamp")]
	public static extern void QGraphicsSceneEvent_SetTimestamp(Self* c_this, uint64 ts);
}
public struct QGraphicsSceneMouseEvent : QGraphicsSceneEvent
{
	[LinkName("QGraphicsSceneMouseEvent_new")]
	public static extern QGraphicsSceneMouseEvent* QGraphicsSceneMouseEvent_new();
	[LinkName("QGraphicsSceneMouseEvent_new2")]
	public static extern QGraphicsSceneMouseEvent* QGraphicsSceneMouseEvent_new2(int64 typeVal);
	[LinkName("QGraphicsSceneMouseEvent_Pos")]
	public static extern QPointF QGraphicsSceneMouseEvent_Pos(Self* c_this);
	[LinkName("QGraphicsSceneMouseEvent_SetPos")]
	public static extern void QGraphicsSceneMouseEvent_SetPos(Self* c_this, QPointF* pos);
	[LinkName("QGraphicsSceneMouseEvent_ScenePos")]
	public static extern QPointF QGraphicsSceneMouseEvent_ScenePos(Self* c_this);
	[LinkName("QGraphicsSceneMouseEvent_SetScenePos")]
	public static extern void QGraphicsSceneMouseEvent_SetScenePos(Self* c_this, QPointF* pos);
	[LinkName("QGraphicsSceneMouseEvent_ScreenPos")]
	public static extern QPoint QGraphicsSceneMouseEvent_ScreenPos(Self* c_this);
	[LinkName("QGraphicsSceneMouseEvent_SetScreenPos")]
	public static extern void QGraphicsSceneMouseEvent_SetScreenPos(Self* c_this, QPoint* pos);
	[LinkName("QGraphicsSceneMouseEvent_ButtonDownPos")]
	public static extern QPointF QGraphicsSceneMouseEvent_ButtonDownPos(Self* c_this, int64 button);
	[LinkName("QGraphicsSceneMouseEvent_SetButtonDownPos")]
	public static extern void QGraphicsSceneMouseEvent_SetButtonDownPos(Self* c_this, int64 button, QPointF* pos);
	[LinkName("QGraphicsSceneMouseEvent_ButtonDownScenePos")]
	public static extern QPointF QGraphicsSceneMouseEvent_ButtonDownScenePos(Self* c_this, int64 button);
	[LinkName("QGraphicsSceneMouseEvent_SetButtonDownScenePos")]
	public static extern void QGraphicsSceneMouseEvent_SetButtonDownScenePos(Self* c_this, int64 button, QPointF* pos);
	[LinkName("QGraphicsSceneMouseEvent_ButtonDownScreenPos")]
	public static extern QPoint QGraphicsSceneMouseEvent_ButtonDownScreenPos(Self* c_this, int64 button);
	[LinkName("QGraphicsSceneMouseEvent_SetButtonDownScreenPos")]
	public static extern void QGraphicsSceneMouseEvent_SetButtonDownScreenPos(Self* c_this, int64 button, QPoint* pos);
	[LinkName("QGraphicsSceneMouseEvent_LastPos")]
	public static extern QPointF QGraphicsSceneMouseEvent_LastPos(Self* c_this);
	[LinkName("QGraphicsSceneMouseEvent_SetLastPos")]
	public static extern void QGraphicsSceneMouseEvent_SetLastPos(Self* c_this, QPointF* pos);
	[LinkName("QGraphicsSceneMouseEvent_LastScenePos")]
	public static extern QPointF QGraphicsSceneMouseEvent_LastScenePos(Self* c_this);
	[LinkName("QGraphicsSceneMouseEvent_SetLastScenePos")]
	public static extern void QGraphicsSceneMouseEvent_SetLastScenePos(Self* c_this, QPointF* pos);
	[LinkName("QGraphicsSceneMouseEvent_LastScreenPos")]
	public static extern QPoint QGraphicsSceneMouseEvent_LastScreenPos(Self* c_this);
	[LinkName("QGraphicsSceneMouseEvent_SetLastScreenPos")]
	public static extern void QGraphicsSceneMouseEvent_SetLastScreenPos(Self* c_this, QPoint* pos);
	[LinkName("QGraphicsSceneMouseEvent_Buttons")]
	public static extern int64 QGraphicsSceneMouseEvent_Buttons(Self* c_this);
	[LinkName("QGraphicsSceneMouseEvent_SetButtons")]
	public static extern void QGraphicsSceneMouseEvent_SetButtons(Self* c_this, int64 buttons);
	[LinkName("QGraphicsSceneMouseEvent_Button")]
	public static extern int64 QGraphicsSceneMouseEvent_Button(Self* c_this);
	[LinkName("QGraphicsSceneMouseEvent_SetButton")]
	public static extern void QGraphicsSceneMouseEvent_SetButton(Self* c_this, int64 button);
	[LinkName("QGraphicsSceneMouseEvent_Modifiers")]
	public static extern int64 QGraphicsSceneMouseEvent_Modifiers(Self* c_this);
	[LinkName("QGraphicsSceneMouseEvent_SetModifiers")]
	public static extern void QGraphicsSceneMouseEvent_SetModifiers(Self* c_this, int64 modifiers);
	[LinkName("QGraphicsSceneMouseEvent_Source")]
	public static extern int64 QGraphicsSceneMouseEvent_Source(Self* c_this);
	[LinkName("QGraphicsSceneMouseEvent_SetSource")]
	public static extern void QGraphicsSceneMouseEvent_SetSource(Self* c_this, int64 source);
	[LinkName("QGraphicsSceneMouseEvent_Flags")]
	public static extern int64 QGraphicsSceneMouseEvent_Flags(Self* c_this);
	[LinkName("QGraphicsSceneMouseEvent_SetFlags")]
	public static extern void QGraphicsSceneMouseEvent_SetFlags(Self* c_this, int64 flags);
}
public struct QGraphicsSceneWheelEvent : QGraphicsSceneEvent
{
	[LinkName("QGraphicsSceneWheelEvent_new")]
	public static extern QGraphicsSceneWheelEvent* QGraphicsSceneWheelEvent_new();
	[LinkName("QGraphicsSceneWheelEvent_new2")]
	public static extern QGraphicsSceneWheelEvent* QGraphicsSceneWheelEvent_new2(int64 typeVal);
	[LinkName("QGraphicsSceneWheelEvent_Pos")]
	public static extern QPointF QGraphicsSceneWheelEvent_Pos(Self* c_this);
	[LinkName("QGraphicsSceneWheelEvent_SetPos")]
	public static extern void QGraphicsSceneWheelEvent_SetPos(Self* c_this, QPointF* pos);
	[LinkName("QGraphicsSceneWheelEvent_ScenePos")]
	public static extern QPointF QGraphicsSceneWheelEvent_ScenePos(Self* c_this);
	[LinkName("QGraphicsSceneWheelEvent_SetScenePos")]
	public static extern void QGraphicsSceneWheelEvent_SetScenePos(Self* c_this, QPointF* pos);
	[LinkName("QGraphicsSceneWheelEvent_ScreenPos")]
	public static extern QPoint QGraphicsSceneWheelEvent_ScreenPos(Self* c_this);
	[LinkName("QGraphicsSceneWheelEvent_SetScreenPos")]
	public static extern void QGraphicsSceneWheelEvent_SetScreenPos(Self* c_this, QPoint* pos);
	[LinkName("QGraphicsSceneWheelEvent_Buttons")]
	public static extern int64 QGraphicsSceneWheelEvent_Buttons(Self* c_this);
	[LinkName("QGraphicsSceneWheelEvent_SetButtons")]
	public static extern void QGraphicsSceneWheelEvent_SetButtons(Self* c_this, int64 buttons);
	[LinkName("QGraphicsSceneWheelEvent_Modifiers")]
	public static extern int64 QGraphicsSceneWheelEvent_Modifiers(Self* c_this);
	[LinkName("QGraphicsSceneWheelEvent_SetModifiers")]
	public static extern void QGraphicsSceneWheelEvent_SetModifiers(Self* c_this, int64 modifiers);
	[LinkName("QGraphicsSceneWheelEvent_Delta")]
	public static extern int32 QGraphicsSceneWheelEvent_Delta(Self* c_this);
	[LinkName("QGraphicsSceneWheelEvent_SetDelta")]
	public static extern void QGraphicsSceneWheelEvent_SetDelta(Self* c_this, int32 delta);
	[LinkName("QGraphicsSceneWheelEvent_Orientation")]
	public static extern int64 QGraphicsSceneWheelEvent_Orientation(Self* c_this);
	[LinkName("QGraphicsSceneWheelEvent_SetOrientation")]
	public static extern void QGraphicsSceneWheelEvent_SetOrientation(Self* c_this, int64 orientation);
	[LinkName("QGraphicsSceneWheelEvent_Phase")]
	public static extern int64 QGraphicsSceneWheelEvent_Phase(Self* c_this);
	[LinkName("QGraphicsSceneWheelEvent_SetPhase")]
	public static extern void QGraphicsSceneWheelEvent_SetPhase(Self* c_this, int64 scrollPhase);
	[LinkName("QGraphicsSceneWheelEvent_PixelDelta")]
	public static extern QPoint QGraphicsSceneWheelEvent_PixelDelta(Self* c_this);
	[LinkName("QGraphicsSceneWheelEvent_SetPixelDelta")]
	public static extern void QGraphicsSceneWheelEvent_SetPixelDelta(Self* c_this, QPoint delta);
	[LinkName("QGraphicsSceneWheelEvent_IsInverted")]
	public static extern bool QGraphicsSceneWheelEvent_IsInverted(Self* c_this);
	[LinkName("QGraphicsSceneWheelEvent_SetInverted")]
	public static extern void QGraphicsSceneWheelEvent_SetInverted(Self* c_this, bool inverted);
}
public struct QGraphicsSceneContextMenuEvent : QGraphicsSceneEvent
{
	[LinkName("QGraphicsSceneContextMenuEvent_new")]
	public static extern QGraphicsSceneContextMenuEvent* QGraphicsSceneContextMenuEvent_new();
	[LinkName("QGraphicsSceneContextMenuEvent_new2")]
	public static extern QGraphicsSceneContextMenuEvent* QGraphicsSceneContextMenuEvent_new2(int64 typeVal);
	[LinkName("QGraphicsSceneContextMenuEvent_Pos")]
	public static extern QPointF QGraphicsSceneContextMenuEvent_Pos(Self* c_this);
	[LinkName("QGraphicsSceneContextMenuEvent_SetPos")]
	public static extern void QGraphicsSceneContextMenuEvent_SetPos(Self* c_this, QPointF* pos);
	[LinkName("QGraphicsSceneContextMenuEvent_ScenePos")]
	public static extern QPointF QGraphicsSceneContextMenuEvent_ScenePos(Self* c_this);
	[LinkName("QGraphicsSceneContextMenuEvent_SetScenePos")]
	public static extern void QGraphicsSceneContextMenuEvent_SetScenePos(Self* c_this, QPointF* pos);
	[LinkName("QGraphicsSceneContextMenuEvent_ScreenPos")]
	public static extern QPoint QGraphicsSceneContextMenuEvent_ScreenPos(Self* c_this);
	[LinkName("QGraphicsSceneContextMenuEvent_SetScreenPos")]
	public static extern void QGraphicsSceneContextMenuEvent_SetScreenPos(Self* c_this, QPoint* pos);
	[LinkName("QGraphicsSceneContextMenuEvent_Modifiers")]
	public static extern int64 QGraphicsSceneContextMenuEvent_Modifiers(Self* c_this);
	[LinkName("QGraphicsSceneContextMenuEvent_SetModifiers")]
	public static extern void QGraphicsSceneContextMenuEvent_SetModifiers(Self* c_this, int64 modifiers);
	[LinkName("QGraphicsSceneContextMenuEvent_Reason")]
	public static extern int64 QGraphicsSceneContextMenuEvent_Reason(Self* c_this);
	[LinkName("QGraphicsSceneContextMenuEvent_SetReason")]
	public static extern void QGraphicsSceneContextMenuEvent_SetReason(Self* c_this, int64 reason);
}
public struct QGraphicsSceneHoverEvent : QGraphicsSceneEvent
{
	[LinkName("QGraphicsSceneHoverEvent_new")]
	public static extern QGraphicsSceneHoverEvent* QGraphicsSceneHoverEvent_new();
	[LinkName("QGraphicsSceneHoverEvent_new2")]
	public static extern QGraphicsSceneHoverEvent* QGraphicsSceneHoverEvent_new2(int64 typeVal);
	[LinkName("QGraphicsSceneHoverEvent_Pos")]
	public static extern QPointF QGraphicsSceneHoverEvent_Pos(Self* c_this);
	[LinkName("QGraphicsSceneHoverEvent_SetPos")]
	public static extern void QGraphicsSceneHoverEvent_SetPos(Self* c_this, QPointF* pos);
	[LinkName("QGraphicsSceneHoverEvent_ScenePos")]
	public static extern QPointF QGraphicsSceneHoverEvent_ScenePos(Self* c_this);
	[LinkName("QGraphicsSceneHoverEvent_SetScenePos")]
	public static extern void QGraphicsSceneHoverEvent_SetScenePos(Self* c_this, QPointF* pos);
	[LinkName("QGraphicsSceneHoverEvent_ScreenPos")]
	public static extern QPoint QGraphicsSceneHoverEvent_ScreenPos(Self* c_this);
	[LinkName("QGraphicsSceneHoverEvent_SetScreenPos")]
	public static extern void QGraphicsSceneHoverEvent_SetScreenPos(Self* c_this, QPoint* pos);
	[LinkName("QGraphicsSceneHoverEvent_LastPos")]
	public static extern QPointF QGraphicsSceneHoverEvent_LastPos(Self* c_this);
	[LinkName("QGraphicsSceneHoverEvent_SetLastPos")]
	public static extern void QGraphicsSceneHoverEvent_SetLastPos(Self* c_this, QPointF* pos);
	[LinkName("QGraphicsSceneHoverEvent_LastScenePos")]
	public static extern QPointF QGraphicsSceneHoverEvent_LastScenePos(Self* c_this);
	[LinkName("QGraphicsSceneHoverEvent_SetLastScenePos")]
	public static extern void QGraphicsSceneHoverEvent_SetLastScenePos(Self* c_this, QPointF* pos);
	[LinkName("QGraphicsSceneHoverEvent_LastScreenPos")]
	public static extern QPoint QGraphicsSceneHoverEvent_LastScreenPos(Self* c_this);
	[LinkName("QGraphicsSceneHoverEvent_SetLastScreenPos")]
	public static extern void QGraphicsSceneHoverEvent_SetLastScreenPos(Self* c_this, QPoint* pos);
	[LinkName("QGraphicsSceneHoverEvent_Modifiers")]
	public static extern int64 QGraphicsSceneHoverEvent_Modifiers(Self* c_this);
	[LinkName("QGraphicsSceneHoverEvent_SetModifiers")]
	public static extern void QGraphicsSceneHoverEvent_SetModifiers(Self* c_this, int64 modifiers);
}
public struct QGraphicsSceneHelpEvent : QGraphicsSceneEvent
{
	[LinkName("QGraphicsSceneHelpEvent_new")]
	public static extern QGraphicsSceneHelpEvent* QGraphicsSceneHelpEvent_new();
	[LinkName("QGraphicsSceneHelpEvent_new2")]
	public static extern QGraphicsSceneHelpEvent* QGraphicsSceneHelpEvent_new2(int64 typeVal);
	[LinkName("QGraphicsSceneHelpEvent_ScenePos")]
	public static extern QPointF QGraphicsSceneHelpEvent_ScenePos(Self* c_this);
	[LinkName("QGraphicsSceneHelpEvent_SetScenePos")]
	public static extern void QGraphicsSceneHelpEvent_SetScenePos(Self* c_this, QPointF* pos);
	[LinkName("QGraphicsSceneHelpEvent_ScreenPos")]
	public static extern QPoint QGraphicsSceneHelpEvent_ScreenPos(Self* c_this);
	[LinkName("QGraphicsSceneHelpEvent_SetScreenPos")]
	public static extern void QGraphicsSceneHelpEvent_SetScreenPos(Self* c_this, QPoint* pos);
}
public struct QGraphicsSceneDragDropEvent : QGraphicsSceneEvent
{
	[LinkName("QGraphicsSceneDragDropEvent_new")]
	public static extern QGraphicsSceneDragDropEvent* QGraphicsSceneDragDropEvent_new();
	[LinkName("QGraphicsSceneDragDropEvent_new2")]
	public static extern QGraphicsSceneDragDropEvent* QGraphicsSceneDragDropEvent_new2(int64 typeVal);
	[LinkName("QGraphicsSceneDragDropEvent_Pos")]
	public static extern QPointF QGraphicsSceneDragDropEvent_Pos(Self* c_this);
	[LinkName("QGraphicsSceneDragDropEvent_SetPos")]
	public static extern void QGraphicsSceneDragDropEvent_SetPos(Self* c_this, QPointF* pos);
	[LinkName("QGraphicsSceneDragDropEvent_ScenePos")]
	public static extern QPointF QGraphicsSceneDragDropEvent_ScenePos(Self* c_this);
	[LinkName("QGraphicsSceneDragDropEvent_SetScenePos")]
	public static extern void QGraphicsSceneDragDropEvent_SetScenePos(Self* c_this, QPointF* pos);
	[LinkName("QGraphicsSceneDragDropEvent_ScreenPos")]
	public static extern QPoint QGraphicsSceneDragDropEvent_ScreenPos(Self* c_this);
	[LinkName("QGraphicsSceneDragDropEvent_SetScreenPos")]
	public static extern void QGraphicsSceneDragDropEvent_SetScreenPos(Self* c_this, QPoint* pos);
	[LinkName("QGraphicsSceneDragDropEvent_Buttons")]
	public static extern int64 QGraphicsSceneDragDropEvent_Buttons(Self* c_this);
	[LinkName("QGraphicsSceneDragDropEvent_SetButtons")]
	public static extern void QGraphicsSceneDragDropEvent_SetButtons(Self* c_this, int64 buttons);
	[LinkName("QGraphicsSceneDragDropEvent_Modifiers")]
	public static extern int64 QGraphicsSceneDragDropEvent_Modifiers(Self* c_this);
	[LinkName("QGraphicsSceneDragDropEvent_SetModifiers")]
	public static extern void QGraphicsSceneDragDropEvent_SetModifiers(Self* c_this, int64 modifiers);
	[LinkName("QGraphicsSceneDragDropEvent_PossibleActions")]
	public static extern int64 QGraphicsSceneDragDropEvent_PossibleActions(Self* c_this);
	[LinkName("QGraphicsSceneDragDropEvent_SetPossibleActions")]
	public static extern void QGraphicsSceneDragDropEvent_SetPossibleActions(Self* c_this, int64 actions);
	[LinkName("QGraphicsSceneDragDropEvent_ProposedAction")]
	public static extern int64 QGraphicsSceneDragDropEvent_ProposedAction(Self* c_this);
	[LinkName("QGraphicsSceneDragDropEvent_SetProposedAction")]
	public static extern void QGraphicsSceneDragDropEvent_SetProposedAction(Self* c_this, int64 action);
	[LinkName("QGraphicsSceneDragDropEvent_AcceptProposedAction")]
	public static extern void QGraphicsSceneDragDropEvent_AcceptProposedAction(Self* c_this);
	[LinkName("QGraphicsSceneDragDropEvent_DropAction")]
	public static extern int64 QGraphicsSceneDragDropEvent_DropAction(Self* c_this);
	[LinkName("QGraphicsSceneDragDropEvent_SetDropAction")]
	public static extern void QGraphicsSceneDragDropEvent_SetDropAction(Self* c_this, int64 action);
	[LinkName("QGraphicsSceneDragDropEvent_Source")]
	public static extern QWidget* QGraphicsSceneDragDropEvent_Source(Self* c_this);
	[LinkName("QGraphicsSceneDragDropEvent_SetSource")]
	public static extern void QGraphicsSceneDragDropEvent_SetSource(Self* c_this, QWidget* source);
	[LinkName("QGraphicsSceneDragDropEvent_MimeData")]
	public static extern QMimeData* QGraphicsSceneDragDropEvent_MimeData(Self* c_this);
	[LinkName("QGraphicsSceneDragDropEvent_SetMimeData")]
	public static extern void QGraphicsSceneDragDropEvent_SetMimeData(Self* c_this, QMimeData* data);
}
public struct QGraphicsSceneResizeEvent : QGraphicsSceneEvent
{
	[LinkName("QGraphicsSceneResizeEvent_new")]
	public static extern QGraphicsSceneResizeEvent* QGraphicsSceneResizeEvent_new();
	[LinkName("QGraphicsSceneResizeEvent_OldSize")]
	public static extern QSizeF QGraphicsSceneResizeEvent_OldSize(Self* c_this);
	[LinkName("QGraphicsSceneResizeEvent_SetOldSize")]
	public static extern void QGraphicsSceneResizeEvent_SetOldSize(Self* c_this, QSizeF* size);
	[LinkName("QGraphicsSceneResizeEvent_NewSize")]
	public static extern QSizeF QGraphicsSceneResizeEvent_NewSize(Self* c_this);
	[LinkName("QGraphicsSceneResizeEvent_SetNewSize")]
	public static extern void QGraphicsSceneResizeEvent_SetNewSize(Self* c_this, QSizeF* size);
}
public struct QGraphicsSceneMoveEvent : QGraphicsSceneEvent
{
	[LinkName("QGraphicsSceneMoveEvent_new")]
	public static extern QGraphicsSceneMoveEvent* QGraphicsSceneMoveEvent_new();
	[LinkName("QGraphicsSceneMoveEvent_OldPos")]
	public static extern QPointF QGraphicsSceneMoveEvent_OldPos(Self* c_this);
	[LinkName("QGraphicsSceneMoveEvent_SetOldPos")]
	public static extern void QGraphicsSceneMoveEvent_SetOldPos(Self* c_this, QPointF* pos);
	[LinkName("QGraphicsSceneMoveEvent_NewPos")]
	public static extern QPointF QGraphicsSceneMoveEvent_NewPos(Self* c_this);
	[LinkName("QGraphicsSceneMoveEvent_SetNewPos")]
	public static extern void QGraphicsSceneMoveEvent_SetNewPos(Self* c_this, QPointF* pos);
}