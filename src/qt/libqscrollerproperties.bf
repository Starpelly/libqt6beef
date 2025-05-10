using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QScrollerProperties__OvershootPolicy
{
	OvershootWhenScrollable = 0,
	OvershootAlwaysOff = 1,
	OvershootAlwaysOn = 2,
}
[AllowDuplicates]
public enum QScrollerProperties__FrameRates
{
	Standard = 0,
	Fps60 = 1,
	Fps30 = 2,
	Fps20 = 3,
}
[AllowDuplicates]
public enum QScrollerProperties__ScrollMetric
{
	MousePressEventDelay = 0,
	DragStartDistance = 1,
	DragVelocitySmoothingFactor = 2,
	AxisLockThreshold = 3,
	ScrollingCurve = 4,
	DecelerationFactor = 5,
	MinimumVelocity = 6,
	MaximumVelocity = 7,
	MaximumClickThroughVelocity = 8,
	AcceleratingFlickMaximumTime = 9,
	AcceleratingFlickSpeedupFactor = 10,
	SnapPositionRatio = 11,
	SnapTime = 12,
	OvershootDragResistanceFactor = 13,
	OvershootDragDistanceFactor = 14,
	OvershootScrollDistanceFactor = 15,
	OvershootScrollTime = 16,
	HorizontalOvershootPolicy = 17,
	VerticalOvershootPolicy = 18,
	FrameRate = 19,
	ScrollMetricCount = 20,
}
public class QScrollerProperties
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QScrollerProperties_new();
	}
	
	public ~this()
	{
		CQt.QScrollerProperties_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* sp)
	{
		CQt.QScrollerProperties_OperatorAssign(this.nativePtr, sp);
	}
	
	public bool OperatorEqual(void* sp)
	{
		return CQt.QScrollerProperties_OperatorEqual(this.nativePtr, sp);
	}
	
	public bool OperatorNotEqual(void* sp)
	{
		return CQt.QScrollerProperties_OperatorNotEqual(this.nativePtr, sp);
	}
	
	public static void SetDefaultScrollerProperties(void* sp)
	{
		CQt.QScrollerProperties_SetDefaultScrollerProperties(sp);
	}
	
	public static void UnsetDefaultScrollerProperties()
	{
		CQt.QScrollerProperties_UnsetDefaultScrollerProperties();
	}
	
	public void ScrollMetric(int64 metric)
	{
		CQt.QScrollerProperties_ScrollMetric(this.nativePtr, metric);
	}
	
	public void SetScrollMetric(int64 metric, void* value)
	{
		CQt.QScrollerProperties_SetScrollMetric(this.nativePtr, metric, value);
	}
	
}
extension CQt
{
	[LinkName("QScrollerProperties_new")]
	public static extern void* QScrollerProperties_new();
	[LinkName("QScrollerProperties_new2")]
	public static extern void* QScrollerProperties_new2(void* sp);
	[LinkName("QScrollerProperties_OperatorAssign")]
	public static extern void QScrollerProperties_OperatorAssign(void* c_this, void* sp);
	[LinkName("QScrollerProperties_OperatorEqual")]
	public static extern bool QScrollerProperties_OperatorEqual(void* c_this, void* sp);
	[LinkName("QScrollerProperties_OperatorNotEqual")]
	public static extern bool QScrollerProperties_OperatorNotEqual(void* c_this, void* sp);
	[LinkName("QScrollerProperties_SetDefaultScrollerProperties")]
	public static extern void QScrollerProperties_SetDefaultScrollerProperties(void* sp);
	[LinkName("QScrollerProperties_UnsetDefaultScrollerProperties")]
	public static extern void QScrollerProperties_UnsetDefaultScrollerProperties();
	[LinkName("QScrollerProperties_ScrollMetric")]
	public static extern void QScrollerProperties_ScrollMetric(void* c_this, int64 metric);
	[LinkName("QScrollerProperties_SetScrollMetric")]
	public static extern void QScrollerProperties_SetScrollMetric(void* c_this, int64 metric, void* value);
	/// Delete this object from C++ memory
	[LinkName("QScrollerProperties_Delete")]
	public static extern void QScrollerProperties_Delete(void* self);
}