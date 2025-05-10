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
public class QEasingCurve
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QEasingCurve_new();
	}
	
	public ~this()
	{
		CQt.QEasingCurve_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* other)
	{
		CQt.QEasingCurve_OperatorAssign(this.nativePtr, other);
	}
	
	public void Swap(void* other)
	{
		CQt.QEasingCurve_Swap(this.nativePtr, other);
	}
	
	public bool OperatorEqual(void* other)
	{
		return CQt.QEasingCurve_OperatorEqual(this.nativePtr, other);
	}
	
	public bool OperatorNotEqual(void* other)
	{
		return CQt.QEasingCurve_OperatorNotEqual(this.nativePtr, other);
	}
	
	public double Amplitude()
	{
		return CQt.QEasingCurve_Amplitude(this.nativePtr);
	}
	
	public void SetAmplitude(double amplitude)
	{
		CQt.QEasingCurve_SetAmplitude(this.nativePtr, amplitude);
	}
	
	public double Period()
	{
		return CQt.QEasingCurve_Period(this.nativePtr);
	}
	
	public void SetPeriod(double period)
	{
		CQt.QEasingCurve_SetPeriod(this.nativePtr, period);
	}
	
	public double Overshoot()
	{
		return CQt.QEasingCurve_Overshoot(this.nativePtr);
	}
	
	public void SetOvershoot(double overshoot)
	{
		CQt.QEasingCurve_SetOvershoot(this.nativePtr, overshoot);
	}
	
	public void AddCubicBezierSegment(void* c1, void* c2, void* endPoint)
	{
		CQt.QEasingCurve_AddCubicBezierSegment(this.nativePtr, c1, c2, endPoint);
	}
	
	public void AddTCBSegment(void* nextPoint, double t, double c, double b)
	{
		CQt.QEasingCurve_AddTCBSegment(this.nativePtr, nextPoint, t, c, b);
	}
	
	public void[] ToCubicSpline()
	{
		return CQt.QEasingCurve_ToCubicSpline(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QEasingCurve_Type(this.nativePtr);
	}
	
	public void SetType(int64 typeVal)
	{
		CQt.QEasingCurve_SetType(this.nativePtr, typeVal);
	}
	
	public double ValueForProgress(double progress)
	{
		return CQt.QEasingCurve_ValueForProgress(this.nativePtr, progress);
	}
	
}
extension CQt
{
	[LinkName("QEasingCurve_new")]
	public static extern void* QEasingCurve_new();
	[LinkName("QEasingCurve_new2")]
	public static extern void* QEasingCurve_new2(void* other);
	[LinkName("QEasingCurve_new3")]
	public static extern void* QEasingCurve_new3(int64 typeVal);
	[LinkName("QEasingCurve_OperatorAssign")]
	public static extern void QEasingCurve_OperatorAssign(void* c_this, void* other);
	[LinkName("QEasingCurve_Swap")]
	public static extern void QEasingCurve_Swap(void* c_this, void* other);
	[LinkName("QEasingCurve_OperatorEqual")]
	public static extern bool QEasingCurve_OperatorEqual(void* c_this, void* other);
	[LinkName("QEasingCurve_OperatorNotEqual")]
	public static extern bool QEasingCurve_OperatorNotEqual(void* c_this, void* other);
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
	public static extern void QEasingCurve_AddCubicBezierSegment(void* c_this, void* c1, void* c2, void* endPoint);
	[LinkName("QEasingCurve_AddTCBSegment")]
	public static extern void QEasingCurve_AddTCBSegment(void* c_this, void* nextPoint, double t, double c, double b);
	[LinkName("QEasingCurve_ToCubicSpline")]
	public static extern void[] QEasingCurve_ToCubicSpline(void* c_this);
	[LinkName("QEasingCurve_Type")]
	public static extern int64 QEasingCurve_Type(void* c_this);
	[LinkName("QEasingCurve_SetType")]
	public static extern void QEasingCurve_SetType(void* c_this, int64 typeVal);
	[LinkName("QEasingCurve_ValueForProgress")]
	public static extern double QEasingCurve_ValueForProgress(void* c_this, double progress);
	/// Delete this object from C++ memory
	[LinkName("QEasingCurve_Delete")]
	public static extern void QEasingCurve_Delete(void* self);
}