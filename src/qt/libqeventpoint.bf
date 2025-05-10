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
public interface IQEventPoint
{
	void* NativePtr { get; }
}
public class QEventPoint : IQEventPoint
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QEventPoint_new();
	}
	
	public ~this()
	{
		CQt.QEventPoint_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQEventPoint other)
	{
		CQt.QEventPoint_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public bool OperatorEqual(IQEventPoint other)
	{
		return CQt.QEventPoint_OperatorEqual(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public bool OperatorNotEqual(IQEventPoint other)
	{
		return CQt.QEventPoint_OperatorNotEqual(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public void Swap(IQEventPoint other)
	{
		CQt.QEventPoint_Swap(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public void Position()
	{
		CQt.QEventPoint_Position(this.nativePtr);
	}
	
	public void PressPosition()
	{
		CQt.QEventPoint_PressPosition(this.nativePtr);
	}
	
	public void GrabPosition()
	{
		CQt.QEventPoint_GrabPosition(this.nativePtr);
	}
	
	public void LastPosition()
	{
		CQt.QEventPoint_LastPosition(this.nativePtr);
	}
	
	public void ScenePosition()
	{
		CQt.QEventPoint_ScenePosition(this.nativePtr);
	}
	
	public void ScenePressPosition()
	{
		CQt.QEventPoint_ScenePressPosition(this.nativePtr);
	}
	
	public void SceneGrabPosition()
	{
		CQt.QEventPoint_SceneGrabPosition(this.nativePtr);
	}
	
	public void SceneLastPosition()
	{
		CQt.QEventPoint_SceneLastPosition(this.nativePtr);
	}
	
	public void GlobalPosition()
	{
		CQt.QEventPoint_GlobalPosition(this.nativePtr);
	}
	
	public void GlobalPressPosition()
	{
		CQt.QEventPoint_GlobalPressPosition(this.nativePtr);
	}
	
	public void GlobalGrabPosition()
	{
		CQt.QEventPoint_GlobalGrabPosition(this.nativePtr);
	}
	
	public void GlobalLastPosition()
	{
		CQt.QEventPoint_GlobalLastPosition(this.nativePtr);
	}
	
	public void NormalizedPosition()
	{
		CQt.QEventPoint_NormalizedPosition(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QEventPoint_Pos(this.nativePtr);
	}
	
	public void StartPos()
	{
		CQt.QEventPoint_StartPos(this.nativePtr);
	}
	
	public void ScenePos()
	{
		CQt.QEventPoint_ScenePos(this.nativePtr);
	}
	
	public void StartScenePos()
	{
		CQt.QEventPoint_StartScenePos(this.nativePtr);
	}
	
	public void ScreenPos()
	{
		CQt.QEventPoint_ScreenPos(this.nativePtr);
	}
	
	public void StartScreenPos()
	{
		CQt.QEventPoint_StartScreenPos(this.nativePtr);
	}
	
	public void StartNormalizedPos()
	{
		CQt.QEventPoint_StartNormalizedPos(this.nativePtr);
	}
	
	public void NormalizedPos()
	{
		CQt.QEventPoint_NormalizedPos(this.nativePtr);
	}
	
	public void LastPos()
	{
		CQt.QEventPoint_LastPos(this.nativePtr);
	}
	
	public void LastScenePos()
	{
		CQt.QEventPoint_LastScenePos(this.nativePtr);
	}
	
	public void LastScreenPos()
	{
		CQt.QEventPoint_LastScreenPos(this.nativePtr);
	}
	
	public void LastNormalizedPos()
	{
		CQt.QEventPoint_LastNormalizedPos(this.nativePtr);
	}
	
	public void Velocity()
	{
		CQt.QEventPoint_Velocity(this.nativePtr);
	}
	
	public int64 State()
	{
		return CQt.QEventPoint_State(this.nativePtr);
	}
	
	public void* Device()
	{
		return CQt.QEventPoint_Device(this.nativePtr);
	}
	
	public int32 Id()
	{
		return CQt.QEventPoint_Id(this.nativePtr);
	}
	
	public void UniqueId()
	{
		CQt.QEventPoint_UniqueId(this.nativePtr);
	}
	
	public c_ulong Timestamp()
	{
		return CQt.QEventPoint_Timestamp(this.nativePtr);
	}
	
	public c_ulong LastTimestamp()
	{
		return CQt.QEventPoint_LastTimestamp(this.nativePtr);
	}
	
	public c_ulong PressTimestamp()
	{
		return CQt.QEventPoint_PressTimestamp(this.nativePtr);
	}
	
	public double TimeHeld()
	{
		return CQt.QEventPoint_TimeHeld(this.nativePtr);
	}
	
	public double Pressure()
	{
		return CQt.QEventPoint_Pressure(this.nativePtr);
	}
	
	public double Rotation()
	{
		return CQt.QEventPoint_Rotation(this.nativePtr);
	}
	
	public void EllipseDiameters()
	{
		CQt.QEventPoint_EllipseDiameters(this.nativePtr);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEventPoint_IsAccepted(this.nativePtr);
	}
	
	public void SetAccepted()
	{
		CQt.QEventPoint_SetAccepted(this.nativePtr);
	}
	
	public void SetAccepted1(bool accepted)
	{
		CQt.QEventPoint_SetAccepted1(this.nativePtr, accepted);
	}
	
}
extension CQt
{
	[LinkName("QEventPoint_new")]
	public static extern void* QEventPoint_new();
	[LinkName("QEventPoint_new2")]
	public static extern void* QEventPoint_new2(int32 pointId, int64 state, void* scenePosition, void* globalPosition);
	[LinkName("QEventPoint_new3")]
	public static extern void* QEventPoint_new3(void* other);
	[LinkName("QEventPoint_new4")]
	public static extern void* QEventPoint_new4(int32 id);
	[LinkName("QEventPoint_new5")]
	public static extern void* QEventPoint_new5(int32 id, void* device);
	[LinkName("QEventPoint_OperatorAssign")]
	public static extern void QEventPoint_OperatorAssign(void* c_this, void* other);
	[LinkName("QEventPoint_OperatorEqual")]
	public static extern bool QEventPoint_OperatorEqual(void* c_this, void* other);
	[LinkName("QEventPoint_OperatorNotEqual")]
	public static extern bool QEventPoint_OperatorNotEqual(void* c_this, void* other);
	[LinkName("QEventPoint_Swap")]
	public static extern void QEventPoint_Swap(void* c_this, void* other);
	[LinkName("QEventPoint_Position")]
	public static extern void QEventPoint_Position(void* c_this);
	[LinkName("QEventPoint_PressPosition")]
	public static extern void QEventPoint_PressPosition(void* c_this);
	[LinkName("QEventPoint_GrabPosition")]
	public static extern void QEventPoint_GrabPosition(void* c_this);
	[LinkName("QEventPoint_LastPosition")]
	public static extern void QEventPoint_LastPosition(void* c_this);
	[LinkName("QEventPoint_ScenePosition")]
	public static extern void QEventPoint_ScenePosition(void* c_this);
	[LinkName("QEventPoint_ScenePressPosition")]
	public static extern void QEventPoint_ScenePressPosition(void* c_this);
	[LinkName("QEventPoint_SceneGrabPosition")]
	public static extern void QEventPoint_SceneGrabPosition(void* c_this);
	[LinkName("QEventPoint_SceneLastPosition")]
	public static extern void QEventPoint_SceneLastPosition(void* c_this);
	[LinkName("QEventPoint_GlobalPosition")]
	public static extern void QEventPoint_GlobalPosition(void* c_this);
	[LinkName("QEventPoint_GlobalPressPosition")]
	public static extern void QEventPoint_GlobalPressPosition(void* c_this);
	[LinkName("QEventPoint_GlobalGrabPosition")]
	public static extern void QEventPoint_GlobalGrabPosition(void* c_this);
	[LinkName("QEventPoint_GlobalLastPosition")]
	public static extern void QEventPoint_GlobalLastPosition(void* c_this);
	[LinkName("QEventPoint_NormalizedPosition")]
	public static extern void QEventPoint_NormalizedPosition(void* c_this);
	[LinkName("QEventPoint_Pos")]
	public static extern void QEventPoint_Pos(void* c_this);
	[LinkName("QEventPoint_StartPos")]
	public static extern void QEventPoint_StartPos(void* c_this);
	[LinkName("QEventPoint_ScenePos")]
	public static extern void QEventPoint_ScenePos(void* c_this);
	[LinkName("QEventPoint_StartScenePos")]
	public static extern void QEventPoint_StartScenePos(void* c_this);
	[LinkName("QEventPoint_ScreenPos")]
	public static extern void QEventPoint_ScreenPos(void* c_this);
	[LinkName("QEventPoint_StartScreenPos")]
	public static extern void QEventPoint_StartScreenPos(void* c_this);
	[LinkName("QEventPoint_StartNormalizedPos")]
	public static extern void QEventPoint_StartNormalizedPos(void* c_this);
	[LinkName("QEventPoint_NormalizedPos")]
	public static extern void QEventPoint_NormalizedPos(void* c_this);
	[LinkName("QEventPoint_LastPos")]
	public static extern void QEventPoint_LastPos(void* c_this);
	[LinkName("QEventPoint_LastScenePos")]
	public static extern void QEventPoint_LastScenePos(void* c_this);
	[LinkName("QEventPoint_LastScreenPos")]
	public static extern void QEventPoint_LastScreenPos(void* c_this);
	[LinkName("QEventPoint_LastNormalizedPos")]
	public static extern void QEventPoint_LastNormalizedPos(void* c_this);
	[LinkName("QEventPoint_Velocity")]
	public static extern void QEventPoint_Velocity(void* c_this);
	[LinkName("QEventPoint_State")]
	public static extern int64 QEventPoint_State(void* c_this);
	[LinkName("QEventPoint_Device")]
	public static extern void* QEventPoint_Device(void* c_this);
	[LinkName("QEventPoint_Id")]
	public static extern int32 QEventPoint_Id(void* c_this);
	[LinkName("QEventPoint_UniqueId")]
	public static extern void QEventPoint_UniqueId(void* c_this);
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
	public static extern void QEventPoint_EllipseDiameters(void* c_this);
	[LinkName("QEventPoint_IsAccepted")]
	public static extern bool QEventPoint_IsAccepted(void* c_this);
	[LinkName("QEventPoint_SetAccepted")]
	public static extern void QEventPoint_SetAccepted(void* c_this);
	[LinkName("QEventPoint_SetAccepted1")]
	public static extern void QEventPoint_SetAccepted1(void* c_this, bool accepted);
	/// Delete this object from C++ memory
	[LinkName("QEventPoint_Delete")]
	public static extern void QEventPoint_Delete(void* self);
}