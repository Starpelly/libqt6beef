using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QLineF__IntersectionType
{
	NoIntersection = 0,
	BoundedIntersection = 1,
	UnboundedIntersection = 2,
}
public interface IQLine
{
	void* NativePtr { get; }
}
public class QLine : IQLine
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQLine other)
	{
		this.nativePtr = CQt.QLine_new((other == default) ? default : (void*)other.NativePtr);
	}
	
	public ~this()
	{
		CQt.QLine_Delete(this.nativePtr);
	}
	
	public bool IsNull()
	{
		return CQt.QLine_IsNull(this.nativePtr);
	}
	
	public void P1()
	{
		CQt.QLine_P1(this.nativePtr);
	}
	
	public void P2()
	{
		CQt.QLine_P2(this.nativePtr);
	}
	
	public int32 X1()
	{
		return CQt.QLine_X1(this.nativePtr);
	}
	
	public int32 Y1()
	{
		return CQt.QLine_Y1(this.nativePtr);
	}
	
	public int32 X2()
	{
		return CQt.QLine_X2(this.nativePtr);
	}
	
	public int32 Y2()
	{
		return CQt.QLine_Y2(this.nativePtr);
	}
	
	public int32 Dx()
	{
		return CQt.QLine_Dx(this.nativePtr);
	}
	
	public int32 Dy()
	{
		return CQt.QLine_Dy(this.nativePtr);
	}
	
	public void Translate(IQPoint p)
	{
		CQt.QLine_Translate(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
	}
	
	public void Translate2(int32 dx, int32 dy)
	{
		CQt.QLine_Translate2(this.nativePtr, dx, dy);
	}
	
	public void Translated(IQPoint p)
	{
		CQt.QLine_Translated(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
	}
	
	public void Translated2(int32 dx, int32 dy)
	{
		CQt.QLine_Translated2(this.nativePtr, dx, dy);
	}
	
	public void Center()
	{
		CQt.QLine_Center(this.nativePtr);
	}
	
	public void SetP1(IQPoint p1)
	{
		CQt.QLine_SetP1(this.nativePtr, (p1 == default) ? default : (void*)p1.NativePtr);
	}
	
	public void SetP2(IQPoint p2)
	{
		CQt.QLine_SetP2(this.nativePtr, (p2 == default) ? default : (void*)p2.NativePtr);
	}
	
	public void SetPoints(IQPoint p1, IQPoint p2)
	{
		CQt.QLine_SetPoints(this.nativePtr, (p1 == default) ? default : (void*)p1.NativePtr, (p2 == default) ? default : (void*)p2.NativePtr);
	}
	
	public void SetLine(int32 x1, int32 y1, int32 x2, int32 y2)
	{
		CQt.QLine_SetLine(this.nativePtr, x1, y1, x2, y2);
	}
	
	public bool OperatorEqual(IQLine d)
	{
		return CQt.QLine_OperatorEqual(this.nativePtr, (d == default) ? default : (void*)d.NativePtr);
	}
	
	public bool OperatorNotEqual(IQLine d)
	{
		return CQt.QLine_OperatorNotEqual(this.nativePtr, (d == default) ? default : (void*)d.NativePtr);
	}
	
	public void ToLineF()
	{
		CQt.QLine_ToLineF(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QLine_new")]
	public static extern void* QLine_new(void* other);
	[LinkName("QLine_new2")]
	public static extern void* QLine_new2(void* other);
	[LinkName("QLine_new3")]
	public static extern void* QLine_new3();
	[LinkName("QLine_new4")]
	public static extern void* QLine_new4(void* pt1, void* pt2);
	[LinkName("QLine_new5")]
	public static extern void* QLine_new5(int32 x1, int32 y1, int32 x2, int32 y2);
	[LinkName("QLine_new6")]
	public static extern void* QLine_new6(void* param1);
	[LinkName("QLine_IsNull")]
	public static extern bool QLine_IsNull(void* c_this);
	[LinkName("QLine_P1")]
	public static extern void QLine_P1(void* c_this);
	[LinkName("QLine_P2")]
	public static extern void QLine_P2(void* c_this);
	[LinkName("QLine_X1")]
	public static extern int32 QLine_X1(void* c_this);
	[LinkName("QLine_Y1")]
	public static extern int32 QLine_Y1(void* c_this);
	[LinkName("QLine_X2")]
	public static extern int32 QLine_X2(void* c_this);
	[LinkName("QLine_Y2")]
	public static extern int32 QLine_Y2(void* c_this);
	[LinkName("QLine_Dx")]
	public static extern int32 QLine_Dx(void* c_this);
	[LinkName("QLine_Dy")]
	public static extern int32 QLine_Dy(void* c_this);
	[LinkName("QLine_Translate")]
	public static extern void QLine_Translate(void* c_this, void* p);
	[LinkName("QLine_Translate2")]
	public static extern void QLine_Translate2(void* c_this, int32 dx, int32 dy);
	[LinkName("QLine_Translated")]
	public static extern void QLine_Translated(void* c_this, void* p);
	[LinkName("QLine_Translated2")]
	public static extern void QLine_Translated2(void* c_this, int32 dx, int32 dy);
	[LinkName("QLine_Center")]
	public static extern void QLine_Center(void* c_this);
	[LinkName("QLine_SetP1")]
	public static extern void QLine_SetP1(void* c_this, void* p1);
	[LinkName("QLine_SetP2")]
	public static extern void QLine_SetP2(void* c_this, void* p2);
	[LinkName("QLine_SetPoints")]
	public static extern void QLine_SetPoints(void* c_this, void* p1, void* p2);
	[LinkName("QLine_SetLine")]
	public static extern void QLine_SetLine(void* c_this, int32 x1, int32 y1, int32 x2, int32 y2);
	[LinkName("QLine_OperatorEqual")]
	public static extern bool QLine_OperatorEqual(void* c_this, void* d);
	[LinkName("QLine_OperatorNotEqual")]
	public static extern bool QLine_OperatorNotEqual(void* c_this, void* d);
	[LinkName("QLine_ToLineF")]
	public static extern void QLine_ToLineF(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QLine_Delete")]
	public static extern void QLine_Delete(void* self);
}
public interface IQLineF
{
	void* NativePtr { get; }
}
public class QLineF : IQLineF
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQLineF other)
	{
		this.nativePtr = CQt.QLineF_new((other == default) ? default : (void*)other.NativePtr);
	}
	
	public ~this()
	{
		CQt.QLineF_Delete(this.nativePtr);
	}
	
	public static void FromPolar(double length, double angle)
	{
		CQt.QLineF_FromPolar(length, angle);
	}
	
	public bool IsNull()
	{
		return CQt.QLineF_IsNull(this.nativePtr);
	}
	
	public void P1()
	{
		CQt.QLineF_P1(this.nativePtr);
	}
	
	public void P2()
	{
		CQt.QLineF_P2(this.nativePtr);
	}
	
	public double X1()
	{
		return CQt.QLineF_X1(this.nativePtr);
	}
	
	public double Y1()
	{
		return CQt.QLineF_Y1(this.nativePtr);
	}
	
	public double X2()
	{
		return CQt.QLineF_X2(this.nativePtr);
	}
	
	public double Y2()
	{
		return CQt.QLineF_Y2(this.nativePtr);
	}
	
	public double Dx()
	{
		return CQt.QLineF_Dx(this.nativePtr);
	}
	
	public double Dy()
	{
		return CQt.QLineF_Dy(this.nativePtr);
	}
	
	public double Length()
	{
		return CQt.QLineF_Length(this.nativePtr);
	}
	
	public void SetLength(double lenVal)
	{
		CQt.QLineF_SetLength(this.nativePtr, lenVal);
	}
	
	public double Angle()
	{
		return CQt.QLineF_Angle(this.nativePtr);
	}
	
	public void SetAngle(double angle)
	{
		CQt.QLineF_SetAngle(this.nativePtr, angle);
	}
	
	public double AngleTo(IQLineF l)
	{
		return CQt.QLineF_AngleTo(this.nativePtr, (l == default) ? default : (void*)l.NativePtr);
	}
	
	public void UnitVector()
	{
		CQt.QLineF_UnitVector(this.nativePtr);
	}
	
	public void NormalVector()
	{
		CQt.QLineF_NormalVector(this.nativePtr);
	}
	
	public int64 Intersects(IQLineF l)
	{
		return CQt.QLineF_Intersects(this.nativePtr, (l == default) ? default : (void*)l.NativePtr);
	}
	
	public void PointAt(double t)
	{
		CQt.QLineF_PointAt(this.nativePtr, t);
	}
	
	public void Translate(IQPointF p)
	{
		CQt.QLineF_Translate(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
	}
	
	public void Translate2(double dx, double dy)
	{
		CQt.QLineF_Translate2(this.nativePtr, dx, dy);
	}
	
	public void Translated(IQPointF p)
	{
		CQt.QLineF_Translated(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
	}
	
	public void Translated2(double dx, double dy)
	{
		CQt.QLineF_Translated2(this.nativePtr, dx, dy);
	}
	
	public void Center()
	{
		CQt.QLineF_Center(this.nativePtr);
	}
	
	public void SetP1(IQPointF p1)
	{
		CQt.QLineF_SetP1(this.nativePtr, (p1 == default) ? default : (void*)p1.NativePtr);
	}
	
	public void SetP2(IQPointF p2)
	{
		CQt.QLineF_SetP2(this.nativePtr, (p2 == default) ? default : (void*)p2.NativePtr);
	}
	
	public void SetPoints(IQPointF p1, IQPointF p2)
	{
		CQt.QLineF_SetPoints(this.nativePtr, (p1 == default) ? default : (void*)p1.NativePtr, (p2 == default) ? default : (void*)p2.NativePtr);
	}
	
	public void SetLine(double x1, double y1, double x2, double y2)
	{
		CQt.QLineF_SetLine(this.nativePtr, x1, y1, x2, y2);
	}
	
	public bool OperatorEqual(IQLineF d)
	{
		return CQt.QLineF_OperatorEqual(this.nativePtr, (d == default) ? default : (void*)d.NativePtr);
	}
	
	public bool OperatorNotEqual(IQLineF d)
	{
		return CQt.QLineF_OperatorNotEqual(this.nativePtr, (d == default) ? default : (void*)d.NativePtr);
	}
	
	public void ToLine()
	{
		CQt.QLineF_ToLine(this.nativePtr);
	}
	
	public int64 Intersects2(IQLineF l, IQPointF intersectionPoint)
	{
		return CQt.QLineF_Intersects2(this.nativePtr, (l == default) ? default : (void*)l.NativePtr, (intersectionPoint == null) ? null : (void*)intersectionPoint.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QLineF_new")]
	public static extern void* QLineF_new(void* other);
	[LinkName("QLineF_new2")]
	public static extern void* QLineF_new2(void* other);
	[LinkName("QLineF_new3")]
	public static extern void* QLineF_new3();
	[LinkName("QLineF_new4")]
	public static extern void* QLineF_new4(void* pt1, void* pt2);
	[LinkName("QLineF_new5")]
	public static extern void* QLineF_new5(double x1, double y1, double x2, double y2);
	[LinkName("QLineF_new6")]
	public static extern void* QLineF_new6(void* line);
	[LinkName("QLineF_new7")]
	public static extern void* QLineF_new7(void* param1);
	[LinkName("QLineF_FromPolar")]
	public static extern void QLineF_FromPolar(double length, double angle);
	[LinkName("QLineF_IsNull")]
	public static extern bool QLineF_IsNull(void* c_this);
	[LinkName("QLineF_P1")]
	public static extern void QLineF_P1(void* c_this);
	[LinkName("QLineF_P2")]
	public static extern void QLineF_P2(void* c_this);
	[LinkName("QLineF_X1")]
	public static extern double QLineF_X1(void* c_this);
	[LinkName("QLineF_Y1")]
	public static extern double QLineF_Y1(void* c_this);
	[LinkName("QLineF_X2")]
	public static extern double QLineF_X2(void* c_this);
	[LinkName("QLineF_Y2")]
	public static extern double QLineF_Y2(void* c_this);
	[LinkName("QLineF_Dx")]
	public static extern double QLineF_Dx(void* c_this);
	[LinkName("QLineF_Dy")]
	public static extern double QLineF_Dy(void* c_this);
	[LinkName("QLineF_Length")]
	public static extern double QLineF_Length(void* c_this);
	[LinkName("QLineF_SetLength")]
	public static extern void QLineF_SetLength(void* c_this, double lenVal);
	[LinkName("QLineF_Angle")]
	public static extern double QLineF_Angle(void* c_this);
	[LinkName("QLineF_SetAngle")]
	public static extern void QLineF_SetAngle(void* c_this, double angle);
	[LinkName("QLineF_AngleTo")]
	public static extern double QLineF_AngleTo(void* c_this, void* l);
	[LinkName("QLineF_UnitVector")]
	public static extern void QLineF_UnitVector(void* c_this);
	[LinkName("QLineF_NormalVector")]
	public static extern void QLineF_NormalVector(void* c_this);
	[LinkName("QLineF_Intersects")]
	public static extern int64 QLineF_Intersects(void* c_this, void* l);
	[LinkName("QLineF_PointAt")]
	public static extern void QLineF_PointAt(void* c_this, double t);
	[LinkName("QLineF_Translate")]
	public static extern void QLineF_Translate(void* c_this, void* p);
	[LinkName("QLineF_Translate2")]
	public static extern void QLineF_Translate2(void* c_this, double dx, double dy);
	[LinkName("QLineF_Translated")]
	public static extern void QLineF_Translated(void* c_this, void* p);
	[LinkName("QLineF_Translated2")]
	public static extern void QLineF_Translated2(void* c_this, double dx, double dy);
	[LinkName("QLineF_Center")]
	public static extern void QLineF_Center(void* c_this);
	[LinkName("QLineF_SetP1")]
	public static extern void QLineF_SetP1(void* c_this, void* p1);
	[LinkName("QLineF_SetP2")]
	public static extern void QLineF_SetP2(void* c_this, void* p2);
	[LinkName("QLineF_SetPoints")]
	public static extern void QLineF_SetPoints(void* c_this, void* p1, void* p2);
	[LinkName("QLineF_SetLine")]
	public static extern void QLineF_SetLine(void* c_this, double x1, double y1, double x2, double y2);
	[LinkName("QLineF_OperatorEqual")]
	public static extern bool QLineF_OperatorEqual(void* c_this, void* d);
	[LinkName("QLineF_OperatorNotEqual")]
	public static extern bool QLineF_OperatorNotEqual(void* c_this, void* d);
	[LinkName("QLineF_ToLine")]
	public static extern void QLineF_ToLine(void* c_this);
	[LinkName("QLineF_Intersects2")]
	public static extern int64 QLineF_Intersects2(void* c_this, void* l, void* intersectionPoint);
	/// Delete this object from C++ memory
	[LinkName("QLineF_Delete")]
	public static extern void QLineF_Delete(void* self);
}