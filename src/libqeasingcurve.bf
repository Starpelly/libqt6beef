using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QEasingCurve__Type
{
	Linear = 0,
	InQuad = 1,
	OutQuad = 2,
	InOutQuad = 3,
	OutInQuad = 4,
	InCubic = 5,
	OutCubic = 6,
	InOutCubic = 7,
	OutInCubic = 8,
	InQuart = 9,
	OutQuart = 10,
	InOutQuart = 11,
	OutInQuart = 12,
	InQuint = 13,
	OutQuint = 14,
	InOutQuint = 15,
	OutInQuint = 16,
	InSine = 17,
	OutSine = 18,
	InOutSine = 19,
	OutInSine = 20,
	InExpo = 21,
	OutExpo = 22,
	InOutExpo = 23,
	OutInExpo = 24,
	InCirc = 25,
	OutCirc = 26,
	InOutCirc = 27,
	OutInCirc = 28,
	InElastic = 29,
	OutElastic = 30,
	InOutElastic = 31,
	OutInElastic = 32,
	InBack = 33,
	OutBack = 34,
	InOutBack = 35,
	OutInBack = 36,
	InBounce = 37,
	OutBounce = 38,
	InOutBounce = 39,
	OutInBounce = 40,
	InCurve = 41,
	OutCurve = 42,
	SineCurve = 43,
	CosineCurve = 44,
	BezierSpline = 45,
	TCBSpline = 46,
	Custom = 47,
	NCurveTypes = 48,
}
public struct QEasingCurve
{
	[LinkName("QEasingCurve_new")]
	public static extern void* QEasingCurve_new();
	[LinkName("QEasingCurve_new2")]
	public static extern void* QEasingCurve_new2(QEasingCurve other);
	[LinkName("QEasingCurve_new3")]
	public static extern void* QEasingCurve_new3(int64 typeVal);
	[LinkName("QEasingCurve_OperatorAssign")]
	public static extern void QEasingCurve_OperatorAssign(void* c_this, QEasingCurve other);
	[LinkName("QEasingCurve_Swap")]
	public static extern void QEasingCurve_Swap(void* c_this, QEasingCurve other);
	[LinkName("QEasingCurve_OperatorEqual")]
	public static extern bool QEasingCurve_OperatorEqual(void* c_this, QEasingCurve other);
	[LinkName("QEasingCurve_OperatorNotEqual")]
	public static extern bool QEasingCurve_OperatorNotEqual(void* c_this, QEasingCurve other);
	[LinkName("QEasingCurve_Amplitude")]
	public static extern double QEasingCurve_Amplitude(void* c_this);
	[LinkName("QEasingCurve_SetAmplitude")]
	public static extern void QEasingCurve_SetAmplitude(void* c_this, double amplitude);
	[LinkName("QEasingCurve_Period")]
	public static extern double QEasingCurve_Period(void* c_this);
	[LinkName("QEasingCurve_SetPeriod")]
	public static extern void QEasingCurve_SetPeriod(void* c_this, double period);
	[LinkName("QEasingCurve_Overshoot")]
	public static extern double QEasingCurve_Overshoot(void* c_this);
	[LinkName("QEasingCurve_SetOvershoot")]
	public static extern void QEasingCurve_SetOvershoot(void* c_this, double overshoot);
	[LinkName("QEasingCurve_AddCubicBezierSegment")]
	public static extern void QEasingCurve_AddCubicBezierSegment(void* c_this, QPointF c1, QPointF c2, QPointF endPoint);
	[LinkName("QEasingCurve_AddTCBSegment")]
	public static extern void QEasingCurve_AddTCBSegment(void* c_this, QPointF nextPoint, double t, double c, double b);
	[LinkName("QEasingCurve_ToCubicSpline")]
	public static extern QPointF[] QEasingCurve_ToCubicSpline(void* c_this);
	[LinkName("QEasingCurve_Type")]
	public static extern int64 QEasingCurve_Type(void* c_this);
	[LinkName("QEasingCurve_SetType")]
	public static extern void QEasingCurve_SetType(void* c_this, int64 typeVal);
	[LinkName("QEasingCurve_ValueForProgress")]
	public static extern double QEasingCurve_ValueForProgress(void* c_this, double progress);
}