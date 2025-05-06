using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QEventPoint__State
{
	Unknown = 0,
	Stationary = 4,
	Pressed = 1,
	Updated = 2,
	Released = 8,
}
public struct QEventPoint
{
	[LinkName("QEventPoint_new")]
	public static extern void* QEventPoint_new();
	[LinkName("QEventPoint_new2")]
	public static extern void* QEventPoint_new2(int32 pointId, int64 state, QPointF scenePosition, QPointF globalPosition);
	[LinkName("QEventPoint_new3")]
	public static extern void* QEventPoint_new3(QEventPoint other);
	[LinkName("QEventPoint_new4")]
	public static extern void* QEventPoint_new4(int32 id);
	[LinkName("QEventPoint_new5")]
	public static extern void* QEventPoint_new5(int32 id, QPointingDevice device);
	[LinkName("QEventPoint_OperatorAssign")]
	public static extern void QEventPoint_OperatorAssign(void* c_this, QEventPoint other);
	[LinkName("QEventPoint_OperatorEqual")]
	public static extern bool QEventPoint_OperatorEqual(void* c_this, QEventPoint other);
	[LinkName("QEventPoint_OperatorNotEqual")]
	public static extern bool QEventPoint_OperatorNotEqual(void* c_this, QEventPoint other);
	[LinkName("QEventPoint_Swap")]
	public static extern void QEventPoint_Swap(void* c_this, QEventPoint other);
	[LinkName("QEventPoint_Position")]
	public static extern QPointF QEventPoint_Position(void* c_this);
	[LinkName("QEventPoint_PressPosition")]
	public static extern QPointF QEventPoint_PressPosition(void* c_this);
	[LinkName("QEventPoint_GrabPosition")]
	public static extern QPointF QEventPoint_GrabPosition(void* c_this);
	[LinkName("QEventPoint_LastPosition")]
	public static extern QPointF QEventPoint_LastPosition(void* c_this);
	[LinkName("QEventPoint_ScenePosition")]
	public static extern QPointF QEventPoint_ScenePosition(void* c_this);
	[LinkName("QEventPoint_ScenePressPosition")]
	public static extern QPointF QEventPoint_ScenePressPosition(void* c_this);
	[LinkName("QEventPoint_SceneGrabPosition")]
	public static extern QPointF QEventPoint_SceneGrabPosition(void* c_this);
	[LinkName("QEventPoint_SceneLastPosition")]
	public static extern QPointF QEventPoint_SceneLastPosition(void* c_this);
	[LinkName("QEventPoint_GlobalPosition")]
	public static extern QPointF QEventPoint_GlobalPosition(void* c_this);
	[LinkName("QEventPoint_GlobalPressPosition")]
	public static extern QPointF QEventPoint_GlobalPressPosition(void* c_this);
	[LinkName("QEventPoint_GlobalGrabPosition")]
	public static extern QPointF QEventPoint_GlobalGrabPosition(void* c_this);
	[LinkName("QEventPoint_GlobalLastPosition")]
	public static extern QPointF QEventPoint_GlobalLastPosition(void* c_this);
	[LinkName("QEventPoint_NormalizedPosition")]
	public static extern QPointF QEventPoint_NormalizedPosition(void* c_this);
	[LinkName("QEventPoint_Pos")]
	public static extern QPointF QEventPoint_Pos(void* c_this);
	[LinkName("QEventPoint_StartPos")]
	public static extern QPointF QEventPoint_StartPos(void* c_this);
	[LinkName("QEventPoint_ScenePos")]
	public static extern QPointF QEventPoint_ScenePos(void* c_this);
	[LinkName("QEventPoint_StartScenePos")]
	public static extern QPointF QEventPoint_StartScenePos(void* c_this);
	[LinkName("QEventPoint_ScreenPos")]
	public static extern QPointF QEventPoint_ScreenPos(void* c_this);
	[LinkName("QEventPoint_StartScreenPos")]
	public static extern QPointF QEventPoint_StartScreenPos(void* c_this);
	[LinkName("QEventPoint_StartNormalizedPos")]
	public static extern QPointF QEventPoint_StartNormalizedPos(void* c_this);
	[LinkName("QEventPoint_NormalizedPos")]
	public static extern QPointF QEventPoint_NormalizedPos(void* c_this);
	[LinkName("QEventPoint_LastPos")]
	public static extern QPointF QEventPoint_LastPos(void* c_this);
	[LinkName("QEventPoint_LastScenePos")]
	public static extern QPointF QEventPoint_LastScenePos(void* c_this);
	[LinkName("QEventPoint_LastScreenPos")]
	public static extern QPointF QEventPoint_LastScreenPos(void* c_this);
	[LinkName("QEventPoint_LastNormalizedPos")]
	public static extern QPointF QEventPoint_LastNormalizedPos(void* c_this);
	[LinkName("QEventPoint_Velocity")]
	public static extern QVector2D QEventPoint_Velocity(void* c_this);
	[LinkName("QEventPoint_State")]
	public static extern int64 QEventPoint_State(void* c_this);
	[LinkName("QEventPoint_Device")]
	public static extern QPointingDevice QEventPoint_Device(void* c_this);
	[LinkName("QEventPoint_Id")]
	public static extern int32 QEventPoint_Id(void* c_this);
	[LinkName("QEventPoint_UniqueId")]
	public static extern QPointingDeviceUniqueId QEventPoint_UniqueId(void* c_this);
	[LinkName("QEventPoint_Timestamp")]
	public static extern c_ulong QEventPoint_Timestamp(void* c_this);
	[LinkName("QEventPoint_LastTimestamp")]
	public static extern c_ulong QEventPoint_LastTimestamp(void* c_this);
	[LinkName("QEventPoint_PressTimestamp")]
	public static extern c_ulong QEventPoint_PressTimestamp(void* c_this);
	[LinkName("QEventPoint_TimeHeld")]
	public static extern double QEventPoint_TimeHeld(void* c_this);
	[LinkName("QEventPoint_Pressure")]
	public static extern double QEventPoint_Pressure(void* c_this);
	[LinkName("QEventPoint_Rotation")]
	public static extern double QEventPoint_Rotation(void* c_this);
	[LinkName("QEventPoint_EllipseDiameters")]
	public static extern QSizeF QEventPoint_EllipseDiameters(void* c_this);
	[LinkName("QEventPoint_IsAccepted")]
	public static extern bool QEventPoint_IsAccepted(void* c_this);
	[LinkName("QEventPoint_SetAccepted")]
	public static extern void QEventPoint_SetAccepted(void* c_this);
	[LinkName("QEventPoint_SetAccepted1")]
	public static extern void QEventPoint_SetAccepted1(void* c_this, bool accepted);
}