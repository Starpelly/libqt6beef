using System;
using System.Interop;
namespace Qt;

public class QPoint
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QPoint_new(other);
	}
	
	public ~this()
	{
		CQt.QPoint_Delete(this.nativePtr);
	}
	
	public bool IsNull()
	{
		return CQt.QPoint_IsNull(this.nativePtr);
	}
	
	public int32 X()
	{
		return CQt.QPoint_X(this.nativePtr);
	}
	
	public int32 Y()
	{
		return CQt.QPoint_Y(this.nativePtr);
	}
	
	public void SetX(int32 x)
	{
		CQt.QPoint_SetX(this.nativePtr, x);
	}
	
	public void SetY(int32 y)
	{
		CQt.QPoint_SetY(this.nativePtr, y);
	}
	
	public int32 ManhattanLength()
	{
		return CQt.QPoint_ManhattanLength(this.nativePtr);
	}
	
	public void Transposed()
	{
		CQt.QPoint_Transposed(this.nativePtr);
	}
	
	public void* OperatorPlusAssign(void* p)
	{
		return CQt.QPoint_OperatorPlusAssign(this.nativePtr, p);
	}
	
	public void* OperatorMinusAssign(void* p)
	{
		return CQt.QPoint_OperatorMinusAssign(this.nativePtr, p);
	}
	
	public void* OperatorMultiplyAssign(float factor)
	{
		return CQt.QPoint_OperatorMultiplyAssign(this.nativePtr, factor);
	}
	
	public void* OperatorMultiplyAssignWithFactor(double factor)
	{
		return CQt.QPoint_OperatorMultiplyAssignWithFactor(this.nativePtr, factor);
	}
	
	public void* OperatorMultiplyAssign2(int32 factor)
	{
		return CQt.QPoint_OperatorMultiplyAssign2(this.nativePtr, factor);
	}
	
	public void* OperatorDivideAssign(double divisor)
	{
		return CQt.QPoint_OperatorDivideAssign(this.nativePtr, divisor);
	}
	
	public static int32 DotProduct(void* p1, void* p2)
	{
		return CQt.QPoint_DotProduct(p1, p2);
	}
	
	public void ToPointF()
	{
		CQt.QPoint_ToPointF(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QPoint_new")]
	public static extern void* QPoint_new(void* other);
	[LinkName("QPoint_new2")]
	public static extern void* QPoint_new2(void* other);
	[LinkName("QPoint_new3")]
	public static extern void* QPoint_new3();
	[LinkName("QPoint_new4")]
	public static extern void* QPoint_new4(int32 xpos, int32 ypos);
	[LinkName("QPoint_new5")]
	public static extern void* QPoint_new5(void* param1);
	[LinkName("QPoint_IsNull")]
	public static extern bool QPoint_IsNull(void* c_this);
	[LinkName("QPoint_X")]
	public static extern int32 QPoint_X(void* c_this);
	[LinkName("QPoint_Y")]
	public static extern int32 QPoint_Y(void* c_this);
	[LinkName("QPoint_SetX")]
	public static extern void QPoint_SetX(void* c_this, int32 x);
	[LinkName("QPoint_SetY")]
	public static extern void QPoint_SetY(void* c_this, int32 y);
	[LinkName("QPoint_ManhattanLength")]
	public static extern int32 QPoint_ManhattanLength(void* c_this);
	[LinkName("QPoint_Transposed")]
	public static extern void QPoint_Transposed(void* c_this);
	[LinkName("QPoint_OperatorPlusAssign")]
	public static extern void* QPoint_OperatorPlusAssign(void* c_this, void* p);
	[LinkName("QPoint_OperatorMinusAssign")]
	public static extern void* QPoint_OperatorMinusAssign(void* c_this, void* p);
	[LinkName("QPoint_OperatorMultiplyAssign")]
	public static extern void* QPoint_OperatorMultiplyAssign(void* c_this, float factor);
	[LinkName("QPoint_OperatorMultiplyAssignWithFactor")]
	public static extern void* QPoint_OperatorMultiplyAssignWithFactor(void* c_this, double factor);
	[LinkName("QPoint_OperatorMultiplyAssign2")]
	public static extern void* QPoint_OperatorMultiplyAssign2(void* c_this, int32 factor);
	[LinkName("QPoint_OperatorDivideAssign")]
	public static extern void* QPoint_OperatorDivideAssign(void* c_this, double divisor);
	[LinkName("QPoint_DotProduct")]
	public static extern int32 QPoint_DotProduct(void* p1, void* p2);
	[LinkName("QPoint_ToPointF")]
	public static extern void QPoint_ToPointF(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QPoint_Delete")]
	public static extern void QPoint_Delete(void* self);
}
public class QPointF
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QPointF_new(other);
	}
	
	public ~this()
	{
		CQt.QPointF_Delete(this.nativePtr);
	}
	
	public double ManhattanLength()
	{
		return CQt.QPointF_ManhattanLength(this.nativePtr);
	}
	
	public bool IsNull()
	{
		return CQt.QPointF_IsNull(this.nativePtr);
	}
	
	public double X()
	{
		return CQt.QPointF_X(this.nativePtr);
	}
	
	public double Y()
	{
		return CQt.QPointF_Y(this.nativePtr);
	}
	
	public void SetX(double x)
	{
		CQt.QPointF_SetX(this.nativePtr, x);
	}
	
	public void SetY(double y)
	{
		CQt.QPointF_SetY(this.nativePtr, y);
	}
	
	public void Transposed()
	{
		CQt.QPointF_Transposed(this.nativePtr);
	}
	
	public void* OperatorPlusAssign(void* p)
	{
		return CQt.QPointF_OperatorPlusAssign(this.nativePtr, p);
	}
	
	public void* OperatorMinusAssign(void* p)
	{
		return CQt.QPointF_OperatorMinusAssign(this.nativePtr, p);
	}
	
	public void* OperatorMultiplyAssign(double c)
	{
		return CQt.QPointF_OperatorMultiplyAssign(this.nativePtr, c);
	}
	
	public void* OperatorDivideAssign(double c)
	{
		return CQt.QPointF_OperatorDivideAssign(this.nativePtr, c);
	}
	
	public static double DotProduct(void* p1, void* p2)
	{
		return CQt.QPointF_DotProduct(p1, p2);
	}
	
	public void ToPoint()
	{
		CQt.QPointF_ToPoint(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QPointF_new")]
	public static extern void* QPointF_new(void* other);
	[LinkName("QPointF_new2")]
	public static extern void* QPointF_new2(void* other);
	[LinkName("QPointF_new3")]
	public static extern void* QPointF_new3();
	[LinkName("QPointF_new4")]
	public static extern void* QPointF_new4(void* p);
	[LinkName("QPointF_new5")]
	public static extern void* QPointF_new5(double xpos, double ypos);
	[LinkName("QPointF_new6")]
	public static extern void* QPointF_new6(void* param1);
	[LinkName("QPointF_ManhattanLength")]
	public static extern double QPointF_ManhattanLength(void* c_this);
	[LinkName("QPointF_IsNull")]
	public static extern bool QPointF_IsNull(void* c_this);
	[LinkName("QPointF_X")]
	public static extern double QPointF_X(void* c_this);
	[LinkName("QPointF_Y")]
	public static extern double QPointF_Y(void* c_this);
	[LinkName("QPointF_SetX")]
	public static extern void QPointF_SetX(void* c_this, double x);
	[LinkName("QPointF_SetY")]
	public static extern void QPointF_SetY(void* c_this, double y);
	[LinkName("QPointF_Transposed")]
	public static extern void QPointF_Transposed(void* c_this);
	[LinkName("QPointF_OperatorPlusAssign")]
	public static extern void* QPointF_OperatorPlusAssign(void* c_this, void* p);
	[LinkName("QPointF_OperatorMinusAssign")]
	public static extern void* QPointF_OperatorMinusAssign(void* c_this, void* p);
	[LinkName("QPointF_OperatorMultiplyAssign")]
	public static extern void* QPointF_OperatorMultiplyAssign(void* c_this, double c);
	[LinkName("QPointF_OperatorDivideAssign")]
	public static extern void* QPointF_OperatorDivideAssign(void* c_this, double c);
	[LinkName("QPointF_DotProduct")]
	public static extern double QPointF_DotProduct(void* p1, void* p2);
	[LinkName("QPointF_ToPoint")]
	public static extern void QPointF_ToPoint(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QPointF_Delete")]
	public static extern void QPointF_Delete(void* self);
}