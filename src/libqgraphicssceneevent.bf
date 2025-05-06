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
public struct QGraphicsSceneEvent
{
	[LinkName("QGraphicsSceneEvent_new")]
	public static extern void* QGraphicsSceneEvent_new(int64 typeVal);
	[LinkName("QGraphicsSceneEvent_Widget")]
	public static extern QWidget QGraphicsSceneEvent_Widget(void* c_this);
	[LinkName("QGraphicsSceneEvent_SetWidget")]
	public static extern void QGraphicsSceneEvent_SetWidget(void* c_this, QWidget widget);
	[LinkName("QGraphicsSceneEvent_Timestamp")]
	public static extern uint64 QGraphicsSceneEvent_Timestamp(void* c_this);
	[LinkName("QGraphicsSceneEvent_SetTimestamp")]
	public static extern void QGraphicsSceneEvent_SetTimestamp(void* c_this, uint64 ts);
}
public struct QGraphicsSceneMouseEvent
{
	[LinkName("QGraphicsSceneMouseEvent_new")]
	public static extern void* QGraphicsSceneMouseEvent_new();
	[LinkName("QGraphicsSceneMouseEvent_new2")]
	public static extern void* QGraphicsSceneMouseEvent_new2(int64 typeVal);
	[LinkName("QGraphicsSceneMouseEvent_Pos")]
	public static extern QPointF QGraphicsSceneMouseEvent_Pos(void* c_this);
	[LinkName("QGraphicsSceneMouseEvent_SetPos")]
	public static extern void QGraphicsSceneMouseEvent_SetPos(void* c_this, QPointF pos);
	[LinkName("QGraphicsSceneMouseEvent_ScenePos")]
	public static extern QPointF QGraphicsSceneMouseEvent_ScenePos(void* c_this);
	[LinkName("QGraphicsSceneMouseEvent_SetScenePos")]
	public static extern void QGraphicsSceneMouseEvent_SetScenePos(void* c_this, QPointF pos);
	[LinkName("QGraphicsSceneMouseEvent_ScreenPos")]
	public static extern QPoint QGraphicsSceneMouseEvent_ScreenPos(void* c_this);
	[LinkName("QGraphicsSceneMouseEvent_SetScreenPos")]
	public static extern void QGraphicsSceneMouseEvent_SetScreenPos(void* c_this, QPoint pos);
	[LinkName("QGraphicsSceneMouseEvent_ButtonDownPos")]
	public static extern QPointF QGraphicsSceneMouseEvent_ButtonDownPos(void* c_this, int64 button);
	[LinkName("QGraphicsSceneMouseEvent_SetButtonDownPos")]
	public static extern void QGraphicsSceneMouseEvent_SetButtonDownPos(void* c_this, int64 button, QPointF pos);
	[LinkName("QGraphicsSceneMouseEvent_ButtonDownScenePos")]
	public static extern QPointF QGraphicsSceneMouseEvent_ButtonDownScenePos(void* c_this, int64 button);
	[LinkName("QGraphicsSceneMouseEvent_SetButtonDownScenePos")]
	public static extern void QGraphicsSceneMouseEvent_SetButtonDownScenePos(void* c_this, int64 button, QPointF pos);
	[LinkName("QGraphicsSceneMouseEvent_ButtonDownScreenPos")]
	public static extern QPoint QGraphicsSceneMouseEvent_ButtonDownScreenPos(void* c_this, int64 button);
	[LinkName("QGraphicsSceneMouseEvent_SetButtonDownScreenPos")]
	public static extern void QGraphicsSceneMouseEvent_SetButtonDownScreenPos(void* c_this, int64 button, QPoint pos);
	[LinkName("QGraphicsSceneMouseEvent_LastPos")]
	public static extern QPointF QGraphicsSceneMouseEvent_LastPos(void* c_this);
	[LinkName("QGraphicsSceneMouseEvent_SetLastPos")]
	public static extern void QGraphicsSceneMouseEvent_SetLastPos(void* c_this, QPointF pos);
	[LinkName("QGraphicsSceneMouseEvent_LastScenePos")]
	public static extern QPointF QGraphicsSceneMouseEvent_LastScenePos(void* c_this);
	[LinkName("QGraphicsSceneMouseEvent_SetLastScenePos")]
	public static extern void QGraphicsSceneMouseEvent_SetLastScenePos(void* c_this, QPointF pos);
	[LinkName("QGraphicsSceneMouseEvent_LastScreenPos")]
	public static extern QPoint QGraphicsSceneMouseEvent_LastScreenPos(void* c_this);
	[LinkName("QGraphicsSceneMouseEvent_SetLastScreenPos")]
	public static extern void QGraphicsSceneMouseEvent_SetLastScreenPos(void* c_this, QPoint pos);
	[LinkName("QGraphicsSceneMouseEvent_Buttons")]
	public static extern int64 QGraphicsSceneMouseEvent_Buttons(void* c_this);
	[LinkName("QGraphicsSceneMouseEvent_SetButtons")]
	public static extern void QGraphicsSceneMouseEvent_SetButtons(void* c_this, int64 buttons);
	[LinkName("QGraphicsSceneMouseEvent_Button")]
	public static extern int64 QGraphicsSceneMouseEvent_Button(void* c_this);
	[LinkName("QGraphicsSceneMouseEvent_SetButton")]
	public static extern void QGraphicsSceneMouseEvent_SetButton(void* c_this, int64 button);
	[LinkName("QGraphicsSceneMouseEvent_Modifiers")]
	public static extern int64 QGraphicsSceneMouseEvent_Modifiers(void* c_this);
	[LinkName("QGraphicsSceneMouseEvent_SetModifiers")]
	public static extern void QGraphicsSceneMouseEvent_SetModifiers(void* c_this, int64 modifiers);
	[LinkName("QGraphicsSceneMouseEvent_Source")]
	public static extern int64 QGraphicsSceneMouseEvent_Source(void* c_this);
	[LinkName("QGraphicsSceneMouseEvent_SetSource")]
	public static extern void QGraphicsSceneMouseEvent_SetSource(void* c_this, int64 source);
	[LinkName("QGraphicsSceneMouseEvent_Flags")]
	public static extern int64 QGraphicsSceneMouseEvent_Flags(void* c_this);
	[LinkName("QGraphicsSceneMouseEvent_SetFlags")]
	public static extern void QGraphicsSceneMouseEvent_SetFlags(void* c_this, int64 flags);
}
public struct QGraphicsSceneWheelEvent
{
	[LinkName("QGraphicsSceneWheelEvent_new")]
	public static extern void* QGraphicsSceneWheelEvent_new();
	[LinkName("QGraphicsSceneWheelEvent_new2")]
	public static extern void* QGraphicsSceneWheelEvent_new2(int64 typeVal);
	[LinkName("QGraphicsSceneWheelEvent_Pos")]
	public static extern QPointF QGraphicsSceneWheelEvent_Pos(void* c_this);
	[LinkName("QGraphicsSceneWheelEvent_SetPos")]
	public static extern void QGraphicsSceneWheelEvent_SetPos(void* c_this, QPointF pos);
	[LinkName("QGraphicsSceneWheelEvent_ScenePos")]
	public static extern QPointF QGraphicsSceneWheelEvent_ScenePos(void* c_this);
	[LinkName("QGraphicsSceneWheelEvent_SetScenePos")]
	public static extern void QGraphicsSceneWheelEvent_SetScenePos(void* c_this, QPointF pos);
	[LinkName("QGraphicsSceneWheelEvent_ScreenPos")]
	public static extern QPoint QGraphicsSceneWheelEvent_ScreenPos(void* c_this);
	[LinkName("QGraphicsSceneWheelEvent_SetScreenPos")]
	public static extern void QGraphicsSceneWheelEvent_SetScreenPos(void* c_this, QPoint pos);
	[LinkName("QGraphicsSceneWheelEvent_Buttons")]
	public static extern int64 QGraphicsSceneWheelEvent_Buttons(void* c_this);
	[LinkName("QGraphicsSceneWheelEvent_SetButtons")]
	public static extern void QGraphicsSceneWheelEvent_SetButtons(void* c_this, int64 buttons);
	[LinkName("QGraphicsSceneWheelEvent_Modifiers")]
	public static extern int64 QGraphicsSceneWheelEvent_Modifiers(void* c_this);
	[LinkName("QGraphicsSceneWheelEvent_SetModifiers")]
	public static extern void QGraphicsSceneWheelEvent_SetModifiers(void* c_this, int64 modifiers);
	[LinkName("QGraphicsSceneWheelEvent_Delta")]
	public static extern int32 QGraphicsSceneWheelEvent_Delta(void* c_this);
	[LinkName("QGraphicsSceneWheelEvent_SetDelta")]
	public static extern void QGraphicsSceneWheelEvent_SetDelta(void* c_this, int32 delta);
	[LinkName("QGraphicsSceneWheelEvent_Orientation")]
	public static extern int64 QGraphicsSceneWheelEvent_Orientation(void* c_this);
	[LinkName("QGraphicsSceneWheelEvent_SetOrientation")]
	public static extern void QGraphicsSceneWheelEvent_SetOrientation(void* c_this, int64 orientation);
	[LinkName("QGraphicsSceneWheelEvent_Phase")]
	public static extern int64 QGraphicsSceneWheelEvent_Phase(void* c_this);
	[LinkName("QGraphicsSceneWheelEvent_SetPhase")]
	public static extern void QGraphicsSceneWheelEvent_SetPhase(void* c_this, int64 scrollPhase);
	[LinkName("QGraphicsSceneWheelEvent_PixelDelta")]
	public static extern QPoint QGraphicsSceneWheelEvent_PixelDelta(void* c_this);
	[LinkName("QGraphicsSceneWheelEvent_SetPixelDelta")]
	public static extern void QGraphicsSceneWheelEvent_SetPixelDelta(void* c_this, QPoint delta);
	[LinkName("QGraphicsSceneWheelEvent_IsInverted")]
	public static extern bool QGraphicsSceneWheelEvent_IsInverted(void* c_this);
	[LinkName("QGraphicsSceneWheelEvent_SetInverted")]
	public static extern void QGraphicsSceneWheelEvent_SetInverted(void* c_this, bool inverted);
}
public struct QGraphicsSceneContextMenuEvent
{
	[LinkName("QGraphicsSceneContextMenuEvent_new")]
	public static extern void* QGraphicsSceneContextMenuEvent_new();
	[LinkName("QGraphicsSceneContextMenuEvent_new2")]
	public static extern void* QGraphicsSceneContextMenuEvent_new2(int64 typeVal);
	[LinkName("QGraphicsSceneContextMenuEvent_Pos")]
	public static extern QPointF QGraphicsSceneContextMenuEvent_Pos(void* c_this);
	[LinkName("QGraphicsSceneContextMenuEvent_SetPos")]
	public static extern void QGraphicsSceneContextMenuEvent_SetPos(void* c_this, QPointF pos);
	[LinkName("QGraphicsSceneContextMenuEvent_ScenePos")]
	public static extern QPointF QGraphicsSceneContextMenuEvent_ScenePos(void* c_this);
	[LinkName("QGraphicsSceneContextMenuEvent_SetScenePos")]
	public static extern void QGraphicsSceneContextMenuEvent_SetScenePos(void* c_this, QPointF pos);
	[LinkName("QGraphicsSceneContextMenuEvent_ScreenPos")]
	public static extern QPoint QGraphicsSceneContextMenuEvent_ScreenPos(void* c_this);
	[LinkName("QGraphicsSceneContextMenuEvent_SetScreenPos")]
	public static extern void QGraphicsSceneContextMenuEvent_SetScreenPos(void* c_this, QPoint pos);
	[LinkName("QGraphicsSceneContextMenuEvent_Modifiers")]
	public static extern int64 QGraphicsSceneContextMenuEvent_Modifiers(void* c_this);
	[LinkName("QGraphicsSceneContextMenuEvent_SetModifiers")]
	public static extern void QGraphicsSceneContextMenuEvent_SetModifiers(void* c_this, int64 modifiers);
	[LinkName("QGraphicsSceneContextMenuEvent_Reason")]
	public static extern int64 QGraphicsSceneContextMenuEvent_Reason(void* c_this);
	[LinkName("QGraphicsSceneContextMenuEvent_SetReason")]
	public static extern void QGraphicsSceneContextMenuEvent_SetReason(void* c_this, int64 reason);
}
public struct QGraphicsSceneHoverEvent
{
	[LinkName("QGraphicsSceneHoverEvent_new")]
	public static extern void* QGraphicsSceneHoverEvent_new();
	[LinkName("QGraphicsSceneHoverEvent_new2")]
	public static extern void* QGraphicsSceneHoverEvent_new2(int64 typeVal);
	[LinkName("QGraphicsSceneHoverEvent_Pos")]
	public static extern QPointF QGraphicsSceneHoverEvent_Pos(void* c_this);
	[LinkName("QGraphicsSceneHoverEvent_SetPos")]
	public static extern void QGraphicsSceneHoverEvent_SetPos(void* c_this, QPointF pos);
	[LinkName("QGraphicsSceneHoverEvent_ScenePos")]
	public static extern QPointF QGraphicsSceneHoverEvent_ScenePos(void* c_this);
	[LinkName("QGraphicsSceneHoverEvent_SetScenePos")]
	public static extern void QGraphicsSceneHoverEvent_SetScenePos(void* c_this, QPointF pos);
	[LinkName("QGraphicsSceneHoverEvent_ScreenPos")]
	public static extern QPoint QGraphicsSceneHoverEvent_ScreenPos(void* c_this);
	[LinkName("QGraphicsSceneHoverEvent_SetScreenPos")]
	public static extern void QGraphicsSceneHoverEvent_SetScreenPos(void* c_this, QPoint pos);
	[LinkName("QGraphicsSceneHoverEvent_LastPos")]
	public static extern QPointF QGraphicsSceneHoverEvent_LastPos(void* c_this);
	[LinkName("QGraphicsSceneHoverEvent_SetLastPos")]
	public static extern void QGraphicsSceneHoverEvent_SetLastPos(void* c_this, QPointF pos);
	[LinkName("QGraphicsSceneHoverEvent_LastScenePos")]
	public static extern QPointF QGraphicsSceneHoverEvent_LastScenePos(void* c_this);
	[LinkName("QGraphicsSceneHoverEvent_SetLastScenePos")]
	public static extern void QGraphicsSceneHoverEvent_SetLastScenePos(void* c_this, QPointF pos);
	[LinkName("QGraphicsSceneHoverEvent_LastScreenPos")]
	public static extern QPoint QGraphicsSceneHoverEvent_LastScreenPos(void* c_this);
	[LinkName("QGraphicsSceneHoverEvent_SetLastScreenPos")]
	public static extern void QGraphicsSceneHoverEvent_SetLastScreenPos(void* c_this, QPoint pos);
	[LinkName("QGraphicsSceneHoverEvent_Modifiers")]
	public static extern int64 QGraphicsSceneHoverEvent_Modifiers(void* c_this);
	[LinkName("QGraphicsSceneHoverEvent_SetModifiers")]
	public static extern void QGraphicsSceneHoverEvent_SetModifiers(void* c_this, int64 modifiers);
}
public struct QGraphicsSceneHelpEvent
{
	[LinkName("QGraphicsSceneHelpEvent_new")]
	public static extern void* QGraphicsSceneHelpEvent_new();
	[LinkName("QGraphicsSceneHelpEvent_new2")]
	public static extern void* QGraphicsSceneHelpEvent_new2(int64 typeVal);
	[LinkName("QGraphicsSceneHelpEvent_ScenePos")]
	public static extern QPointF QGraphicsSceneHelpEvent_ScenePos(void* c_this);
	[LinkName("QGraphicsSceneHelpEvent_SetScenePos")]
	public static extern void QGraphicsSceneHelpEvent_SetScenePos(void* c_this, QPointF pos);
	[LinkName("QGraphicsSceneHelpEvent_ScreenPos")]
	public static extern QPoint QGraphicsSceneHelpEvent_ScreenPos(void* c_this);
	[LinkName("QGraphicsSceneHelpEvent_SetScreenPos")]
	public static extern void QGraphicsSceneHelpEvent_SetScreenPos(void* c_this, QPoint pos);
}
public struct QGraphicsSceneDragDropEvent
{
	[LinkName("QGraphicsSceneDragDropEvent_new")]
	public static extern void* QGraphicsSceneDragDropEvent_new();
	[LinkName("QGraphicsSceneDragDropEvent_new2")]
	public static extern void* QGraphicsSceneDragDropEvent_new2(int64 typeVal);
	[LinkName("QGraphicsSceneDragDropEvent_Pos")]
	public static extern QPointF QGraphicsSceneDragDropEvent_Pos(void* c_this);
	[LinkName("QGraphicsSceneDragDropEvent_SetPos")]
	public static extern void QGraphicsSceneDragDropEvent_SetPos(void* c_this, QPointF pos);
	[LinkName("QGraphicsSceneDragDropEvent_ScenePos")]
	public static extern QPointF QGraphicsSceneDragDropEvent_ScenePos(void* c_this);
	[LinkName("QGraphicsSceneDragDropEvent_SetScenePos")]
	public static extern void QGraphicsSceneDragDropEvent_SetScenePos(void* c_this, QPointF pos);
	[LinkName("QGraphicsSceneDragDropEvent_ScreenPos")]
	public static extern QPoint QGraphicsSceneDragDropEvent_ScreenPos(void* c_this);
	[LinkName("QGraphicsSceneDragDropEvent_SetScreenPos")]
	public static extern void QGraphicsSceneDragDropEvent_SetScreenPos(void* c_this, QPoint pos);
	[LinkName("QGraphicsSceneDragDropEvent_Buttons")]
	public static extern int64 QGraphicsSceneDragDropEvent_Buttons(void* c_this);
	[LinkName("QGraphicsSceneDragDropEvent_SetButtons")]
	public static extern void QGraphicsSceneDragDropEvent_SetButtons(void* c_this, int64 buttons);
	[LinkName("QGraphicsSceneDragDropEvent_Modifiers")]
	public static extern int64 QGraphicsSceneDragDropEvent_Modifiers(void* c_this);
	[LinkName("QGraphicsSceneDragDropEvent_SetModifiers")]
	public static extern void QGraphicsSceneDragDropEvent_SetModifiers(void* c_this, int64 modifiers);
	[LinkName("QGraphicsSceneDragDropEvent_PossibleActions")]
	public static extern int64 QGraphicsSceneDragDropEvent_PossibleActions(void* c_this);
	[LinkName("QGraphicsSceneDragDropEvent_SetPossibleActions")]
	public static extern void QGraphicsSceneDragDropEvent_SetPossibleActions(void* c_this, int64 actions);
	[LinkName("QGraphicsSceneDragDropEvent_ProposedAction")]
	public static extern int64 QGraphicsSceneDragDropEvent_ProposedAction(void* c_this);
	[LinkName("QGraphicsSceneDragDropEvent_SetProposedAction")]
	public static extern void QGraphicsSceneDragDropEvent_SetProposedAction(void* c_this, int64 action);
	[LinkName("QGraphicsSceneDragDropEvent_AcceptProposedAction")]
	public static extern void QGraphicsSceneDragDropEvent_AcceptProposedAction(void* c_this);
	[LinkName("QGraphicsSceneDragDropEvent_DropAction")]
	public static extern int64 QGraphicsSceneDragDropEvent_DropAction(void* c_this);
	[LinkName("QGraphicsSceneDragDropEvent_SetDropAction")]
	public static extern void QGraphicsSceneDragDropEvent_SetDropAction(void* c_this, int64 action);
	[LinkName("QGraphicsSceneDragDropEvent_Source")]
	public static extern QWidget QGraphicsSceneDragDropEvent_Source(void* c_this);
	[LinkName("QGraphicsSceneDragDropEvent_SetSource")]
	public static extern void QGraphicsSceneDragDropEvent_SetSource(void* c_this, QWidget source);
	[LinkName("QGraphicsSceneDragDropEvent_MimeData")]
	public static extern QMimeData QGraphicsSceneDragDropEvent_MimeData(void* c_this);
	[LinkName("QGraphicsSceneDragDropEvent_SetMimeData")]
	public static extern void QGraphicsSceneDragDropEvent_SetMimeData(void* c_this, QMimeData data);
}
public struct QGraphicsSceneResizeEvent
{
	[LinkName("QGraphicsSceneResizeEvent_new")]
	public static extern void* QGraphicsSceneResizeEvent_new();
	[LinkName("QGraphicsSceneResizeEvent_OldSize")]
	public static extern QSizeF QGraphicsSceneResizeEvent_OldSize(void* c_this);
	[LinkName("QGraphicsSceneResizeEvent_SetOldSize")]
	public static extern void QGraphicsSceneResizeEvent_SetOldSize(void* c_this, QSizeF size);
	[LinkName("QGraphicsSceneResizeEvent_NewSize")]
	public static extern QSizeF QGraphicsSceneResizeEvent_NewSize(void* c_this);
	[LinkName("QGraphicsSceneResizeEvent_SetNewSize")]
	public static extern void QGraphicsSceneResizeEvent_SetNewSize(void* c_this, QSizeF size);
}
public struct QGraphicsSceneMoveEvent
{
	[LinkName("QGraphicsSceneMoveEvent_new")]
	public static extern void* QGraphicsSceneMoveEvent_new();
	[LinkName("QGraphicsSceneMoveEvent_OldPos")]
	public static extern QPointF QGraphicsSceneMoveEvent_OldPos(void* c_this);
	[LinkName("QGraphicsSceneMoveEvent_SetOldPos")]
	public static extern void QGraphicsSceneMoveEvent_SetOldPos(void* c_this, QPointF pos);
	[LinkName("QGraphicsSceneMoveEvent_NewPos")]
	public static extern QPointF QGraphicsSceneMoveEvent_NewPos(void* c_this);
	[LinkName("QGraphicsSceneMoveEvent_SetNewPos")]
	public static extern void QGraphicsSceneMoveEvent_SetNewPos(void* c_this, QPointF pos);
}