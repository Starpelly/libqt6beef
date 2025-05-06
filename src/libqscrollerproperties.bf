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
public struct QScrollerProperties
{
	[LinkName("QScrollerProperties_new")]
	public static extern void* QScrollerProperties_new();
	[LinkName("QScrollerProperties_new2")]
	public static extern void* QScrollerProperties_new2(QScrollerProperties sp);
	[LinkName("QScrollerProperties_OperatorAssign")]
	public static extern void QScrollerProperties_OperatorAssign(void* c_this, QScrollerProperties sp);
	[LinkName("QScrollerProperties_OperatorEqual")]
	public static extern bool QScrollerProperties_OperatorEqual(void* c_this, QScrollerProperties sp);
	[LinkName("QScrollerProperties_OperatorNotEqual")]
	public static extern bool QScrollerProperties_OperatorNotEqual(void* c_this, QScrollerProperties sp);
	[LinkName("QScrollerProperties_SetDefaultScrollerProperties")]
	public static extern void QScrollerProperties_SetDefaultScrollerProperties(QScrollerProperties sp);
	[LinkName("QScrollerProperties_UnsetDefaultScrollerProperties")]
	public static extern void QScrollerProperties_UnsetDefaultScrollerProperties();
	[LinkName("QScrollerProperties_ScrollMetric")]
	public static extern QVariant QScrollerProperties_ScrollMetric(void* c_this, int64 metric);
	[LinkName("QScrollerProperties_SetScrollMetric")]
	public static extern void QScrollerProperties_SetScrollMetric(void* c_this, int64 metric, QVariant value);
}