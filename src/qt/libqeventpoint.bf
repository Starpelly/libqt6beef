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
	public static extern QEventPoint* QEventPoint_new();
	[LinkName("QEventPoint_new2")]
	public static extern QEventPoint* QEventPoint_new2(int32 pointId, int64 state, QPointF* scenePosition, QPointF* globalPosition);
	[LinkName("QEventPoint_new3")]
	public static extern QEventPoint* QEventPoint_new3(QEventPoint* other);
	[LinkName("QEventPoint_new4")]
	public static extern QEventPoint* QEventPoint_new4(int32 id);
	[LinkName("QEventPoint_new5")]
	public static extern QEventPoint* QEventPoint_new5(int32 id, QPointingDevice* device);
	[LinkName("QEventPoint_OperatorAssign")]
	public static extern void QEventPoint_OperatorAssign(Self* c_this, QEventPoint* other);
	[LinkName("QEventPoint_OperatorEqual")]
	public static extern bool QEventPoint_OperatorEqual(Self* c_this, QEventPoint* other);
	[LinkName("QEventPoint_OperatorNotEqual")]
	public static extern bool QEventPoint_OperatorNotEqual(Self* c_this, QEventPoint* other);
	[LinkName("QEventPoint_Swap")]
	public static extern void QEventPoint_Swap(Self* c_this, QEventPoint* other);
	[LinkName("QEventPoint_Position")]
	public static extern QPointF QEventPoint_Position(Self* c_this);
	[LinkName("QEventPoint_PressPosition")]
	public static extern QPointF QEventPoint_PressPosition(Self* c_this);
	[LinkName("QEventPoint_GrabPosition")]
	public static extern QPointF QEventPoint_GrabPosition(Self* c_this);
	[LinkName("QEventPoint_LastPosition")]
	public static extern QPointF QEventPoint_LastPosition(Self* c_this);
	[LinkName("QEventPoint_ScenePosition")]
	public static extern QPointF QEventPoint_ScenePosition(Self* c_this);
	[LinkName("QEventPoint_ScenePressPosition")]
	public static extern QPointF QEventPoint_ScenePressPosition(Self* c_this);
	[LinkName("QEventPoint_SceneGrabPosition")]
	public static extern QPointF QEventPoint_SceneGrabPosition(Self* c_this);
	[LinkName("QEventPoint_SceneLastPosition")]
	public static extern QPointF QEventPoint_SceneLastPosition(Self* c_this);
	[LinkName("QEventPoint_GlobalPosition")]
	public static extern QPointF QEventPoint_GlobalPosition(Self* c_this);
	[LinkName("QEventPoint_GlobalPressPosition")]
	public static extern QPointF QEventPoint_GlobalPressPosition(Self* c_this);
	[LinkName("QEventPoint_GlobalGrabPosition")]
	public static extern QPointF QEventPoint_GlobalGrabPosition(Self* c_this);
	[LinkName("QEventPoint_GlobalLastPosition")]
	public static extern QPointF QEventPoint_GlobalLastPosition(Self* c_this);
	[LinkName("QEventPoint_NormalizedPosition")]
	public static extern QPointF QEventPoint_NormalizedPosition(Self* c_this);
	[LinkName("QEventPoint_Pos")]
	public static extern QPointF QEventPoint_Pos(Self* c_this);
	[LinkName("QEventPoint_StartPos")]
	public static extern QPointF QEventPoint_StartPos(Self* c_this);
	[LinkName("QEventPoint_ScenePos")]
	public static extern QPointF QEventPoint_ScenePos(Self* c_this);
	[LinkName("QEventPoint_StartScenePos")]
	public static extern QPointF QEventPoint_StartScenePos(Self* c_this);
	[LinkName("QEventPoint_ScreenPos")]
	public static extern QPointF QEventPoint_ScreenPos(Self* c_this);
	[LinkName("QEventPoint_StartScreenPos")]
	public static extern QPointF QEventPoint_StartScreenPos(Self* c_this);
	[LinkName("QEventPoint_StartNormalizedPos")]
	public static extern QPointF QEventPoint_StartNormalizedPos(Self* c_this);
	[LinkName("QEventPoint_NormalizedPos")]
	public static extern QPointF QEventPoint_NormalizedPos(Self* c_this);
	[LinkName("QEventPoint_LastPos")]
	public static extern QPointF QEventPoint_LastPos(Self* c_this);
	[LinkName("QEventPoint_LastScenePos")]
	public static extern QPointF QEventPoint_LastScenePos(Self* c_this);
	[LinkName("QEventPoint_LastScreenPos")]
	public static extern QPointF QEventPoint_LastScreenPos(Self* c_this);
	[LinkName("QEventPoint_LastNormalizedPos")]
	public static extern QPointF QEventPoint_LastNormalizedPos(Self* c_this);
	[LinkName("QEventPoint_Velocity")]
	public static extern QVector2D QEventPoint_Velocity(Self* c_this);
	[LinkName("QEventPoint_State")]
	public static extern int64 QEventPoint_State(Self* c_this);
	[LinkName("QEventPoint_Device")]
	public static extern QPointingDevice* QEventPoint_Device(Self* c_this);
	[LinkName("QEventPoint_Id")]
	public static extern int32 QEventPoint_Id(Self* c_this);
	[LinkName("QEventPoint_UniqueId")]
	public static extern QPointingDeviceUniqueId QEventPoint_UniqueId(Self* c_this);
	[LinkName("QEventPoint_Timestamp")]
	public static extern c_ulong QEventPoint_Timestamp(Self* c_this);
	[LinkName("QEventPoint_LastTimestamp")]
	public static extern c_ulong QEventPoint_LastTimestamp(Self* c_this);
	[LinkName("QEventPoint_PressTimestamp")]
	public static extern c_ulong QEventPoint_PressTimestamp(Self* c_this);
	[LinkName("QEventPoint_TimeHeld")]
	public static extern double QEventPoint_TimeHeld(Self* c_this);
	[LinkName("QEventPoint_Pressure")]
	public static extern double QEventPoint_Pressure(Self* c_this);
	[LinkName("QEventPoint_Rotation")]
	public static extern double QEventPoint_Rotation(Self* c_this);
	[LinkName("QEventPoint_EllipseDiameters")]
	public static extern QSizeF QEventPoint_EllipseDiameters(Self* c_this);
	[LinkName("QEventPoint_IsAccepted")]
	public static extern bool QEventPoint_IsAccepted(Self* c_this);
	[LinkName("QEventPoint_SetAccepted")]
	public static extern void QEventPoint_SetAccepted(Self* c_this);
	[LinkName("QEventPoint_SetAccepted1")]
	public static extern void QEventPoint_SetAccepted1(Self* c_this, bool accepted);
}