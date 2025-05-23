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
public interface IQEasingCurve
{
	void* NativePtr { get; }
}
public struct QEasingCurvePtr : IQEasingCurve, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QEasingCurve_new());
	}
	
	public void Dispose()
	{
		CQt.QEasingCurve_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQEasingCurve other)
	{
		CQt.QEasingCurve_OperatorAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void Swap(IQEasingCurve other)
	{
		CQt.QEasingCurve_Swap(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorEqual(IQEasingCurve other)
	{
		return CQt.QEasingCurve_OperatorEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorNotEqual(IQEasingCurve other)
	{
		return CQt.QEasingCurve_OperatorNotEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
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
	
	public void AddCubicBezierSegment(IQPointF c1, IQPointF c2, IQPointF endPoint)
	{
		CQt.QEasingCurve_AddCubicBezierSegment(this.nativePtr, (c1 == default || c1.NativePtr == default) ? default : c1.NativePtr, (c2 == default || c2.NativePtr == default) ? default : c2.NativePtr, (endPoint == default || endPoint.NativePtr == default) ? default : endPoint.NativePtr);
	}
	
	public void AddTCBSegment(IQPointF nextPoint, double t, double c, double b)
	{
		CQt.QEasingCurve_AddTCBSegment(this.nativePtr, (nextPoint == default || nextPoint.NativePtr == default) ? default : nextPoint.NativePtr, t, c, b);
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
		CQt.QEasingCurve_SetType(this.nativePtr, (int64)typeVal);
	}
	
	public double ValueForProgress(double progress)
	{
		return CQt.QEasingCurve_ValueForProgress(this.nativePtr, progress);
	}
	
}
public class QEasingCurve
{
	public QEasingCurvePtr handle;
	
	public static implicit operator QEasingCurvePtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QEasingCurvePtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQEasingCurve other)
	{
		this.handle.OperatorAssign(other);
	}
	
	public void Swap(IQEasingCurve other)
	{
		this.handle.Swap(other);
	}
	
	public bool OperatorEqual(IQEasingCurve other)
	{
		return this.handle.OperatorEqual(other);
	}
	
	public bool OperatorNotEqual(IQEasingCurve other)
	{
		return this.handle.OperatorNotEqual(other);
	}
	
	public double Amplitude()
	{
		return this.handle.Amplitude();
	}
	
	public void SetAmplitude(double amplitude)
	{
		this.handle.SetAmplitude(amplitude);
	}
	
	public double Period()
	{
		return this.handle.Period();
	}
	
	public void SetPeriod(double period)
	{
		this.handle.SetPeriod(period);
	}
	
	public double Overshoot()
	{
		return this.handle.Overshoot();
	}
	
	public void SetOvershoot(double overshoot)
	{
		this.handle.SetOvershoot(overshoot);
	}
	
	public void AddCubicBezierSegment(IQPointF c1, IQPointF c2, IQPointF endPoint)
	{
		this.handle.AddCubicBezierSegment(c1, c2, endPoint);
	}
	
	public void AddTCBSegment(IQPointF nextPoint, double t, double c, double b)
	{
		this.handle.AddTCBSegment(nextPoint, t, c, b);
	}
	
	public void[] ToCubicSpline()
	{
		return this.handle.ToCubicSpline();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public void SetType(int64 typeVal)
	{
		this.handle.SetType(typeVal);
	}
	
	public double ValueForProgress(double progress)
	{
		return this.handle.ValueForProgress(progress);
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