using System;
using System.Interop;
namespace Qt;

public interface IQMargins
{
	void* NativePtr { get; }
}
public struct QMarginsPtr : IQMargins, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQMargins other)
	{
		return .(CQt.QMargins_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QMargins_Delete(this.nativePtr);
	}
	
	public bool IsNull()
	{
		return CQt.QMargins_IsNull(this.nativePtr);
	}
	
	public int32 Left()
	{
		return CQt.QMargins_Left(this.nativePtr);
	}
	
	public int32 Top()
	{
		return CQt.QMargins_Top(this.nativePtr);
	}
	
	public int32 Right()
	{
		return CQt.QMargins_Right(this.nativePtr);
	}
	
	public int32 Bottom()
	{
		return CQt.QMargins_Bottom(this.nativePtr);
	}
	
	public void SetLeft(int32 left)
	{
		CQt.QMargins_SetLeft(this.nativePtr, left);
	}
	
	public void SetTop(int32 top)
	{
		CQt.QMargins_SetTop(this.nativePtr, top);
	}
	
	public void SetRight(int32 right)
	{
		CQt.QMargins_SetRight(this.nativePtr, right);
	}
	
	public void SetBottom(int32 bottom)
	{
		CQt.QMargins_SetBottom(this.nativePtr, bottom);
	}
	
	public void* OperatorPlusAssign(IQMargins margins)
	{
		return CQt.QMargins_OperatorPlusAssign(this.nativePtr, (margins == default || margins.NativePtr == default) ? default : margins.NativePtr);
	}
	
	public void* OperatorMinusAssign(IQMargins margins)
	{
		return CQt.QMargins_OperatorMinusAssign(this.nativePtr, (margins == default || margins.NativePtr == default) ? default : margins.NativePtr);
	}
	
	public void* OperatorPlusAssignWithInt(int32 param1)
	{
		return CQt.QMargins_OperatorPlusAssignWithInt(this.nativePtr, param1);
	}
	
	public void* OperatorMinusAssignWithInt(int32 param1)
	{
		return CQt.QMargins_OperatorMinusAssignWithInt(this.nativePtr, param1);
	}
	
	public void* OperatorMultiplyAssign(int32 param1)
	{
		return CQt.QMargins_OperatorMultiplyAssign(this.nativePtr, param1);
	}
	
	public void* OperatorDivideAssign(int32 param1)
	{
		return CQt.QMargins_OperatorDivideAssign(this.nativePtr, param1);
	}
	
	public void* OperatorMultiplyAssignWithDouble(double param1)
	{
		return CQt.QMargins_OperatorMultiplyAssignWithDouble(this.nativePtr, param1);
	}
	
	public void* OperatorDivideAssignWithDouble(double param1)
	{
		return CQt.QMargins_OperatorDivideAssignWithDouble(this.nativePtr, param1);
	}
	
	public void ToMarginsF()
	{
		CQt.QMargins_ToMarginsF(this.nativePtr);
	}
	
}
public class QMargins
{
	public QMarginsPtr handle;
	
	public static implicit operator QMarginsPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQMargins other)
	{
		this.handle = QMarginsPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public bool IsNull()
	{
		return this.handle.IsNull();
	}
	
	public int32 Left()
	{
		return this.handle.Left();
	}
	
	public int32 Top()
	{
		return this.handle.Top();
	}
	
	public int32 Right()
	{
		return this.handle.Right();
	}
	
	public int32 Bottom()
	{
		return this.handle.Bottom();
	}
	
	public void SetLeft(int32 left)
	{
		this.handle.SetLeft(left);
	}
	
	public void SetTop(int32 top)
	{
		this.handle.SetTop(top);
	}
	
	public void SetRight(int32 right)
	{
		this.handle.SetRight(right);
	}
	
	public void SetBottom(int32 bottom)
	{
		this.handle.SetBottom(bottom);
	}
	
	public void* OperatorPlusAssign(IQMargins margins)
	{
		return this.handle.OperatorPlusAssign(margins);
	}
	
	public void* OperatorMinusAssign(IQMargins margins)
	{
		return this.handle.OperatorMinusAssign(margins);
	}
	
	public void* OperatorPlusAssignWithInt(int32 param1)
	{
		return this.handle.OperatorPlusAssignWithInt(param1);
	}
	
	public void* OperatorMinusAssignWithInt(int32 param1)
	{
		return this.handle.OperatorMinusAssignWithInt(param1);
	}
	
	public void* OperatorMultiplyAssign(int32 param1)
	{
		return this.handle.OperatorMultiplyAssign(param1);
	}
	
	public void* OperatorDivideAssign(int32 param1)
	{
		return this.handle.OperatorDivideAssign(param1);
	}
	
	public void* OperatorMultiplyAssignWithDouble(double param1)
	{
		return this.handle.OperatorMultiplyAssignWithDouble(param1);
	}
	
	public void* OperatorDivideAssignWithDouble(double param1)
	{
		return this.handle.OperatorDivideAssignWithDouble(param1);
	}
	
	public void ToMarginsF()
	{
		this.handle.ToMarginsF();
	}
	
}
extension CQt
{
	[LinkName("QMargins_new")]
	public static extern void* QMargins_new(void* other);
	[LinkName("QMargins_new2")]
	public static extern void* QMargins_new2(void* other);
	[LinkName("QMargins_new3")]
	public static extern void* QMargins_new3();
	[LinkName("QMargins_new4")]
	public static extern void* QMargins_new4(int32 left, int32 top, int32 right, int32 bottom);
	[LinkName("QMargins_new5")]
	public static extern void* QMargins_new5(void* param1);
	[LinkName("QMargins_IsNull")]
	public static extern bool QMargins_IsNull(void* c_this);
	[LinkName("QMargins_Left")]
	public static extern int32 QMargins_Left(void* c_this);
	[LinkName("QMargins_Top")]
	public static extern int32 QMargins_Top(void* c_this);
	[LinkName("QMargins_Right")]
	public static extern int32 QMargins_Right(void* c_this);
	[LinkName("QMargins_Bottom")]
	public static extern int32 QMargins_Bottom(void* c_this);
	[LinkName("QMargins_SetLeft")]
	public static extern void QMargins_SetLeft(void* c_this, int32 left);
	[LinkName("QMargins_SetTop")]
	public static extern void QMargins_SetTop(void* c_this, int32 top);
	[LinkName("QMargins_SetRight")]
	public static extern void QMargins_SetRight(void* c_this, int32 right);
	[LinkName("QMargins_SetBottom")]
	public static extern void QMargins_SetBottom(void* c_this, int32 bottom);
	[LinkName("QMargins_OperatorPlusAssign")]
	public static extern void* QMargins_OperatorPlusAssign(void* c_this, void* margins);
	[LinkName("QMargins_OperatorMinusAssign")]
	public static extern void* QMargins_OperatorMinusAssign(void* c_this, void* margins);
	[LinkName("QMargins_OperatorPlusAssignWithInt")]
	public static extern void* QMargins_OperatorPlusAssignWithInt(void* c_this, int32 param1);
	[LinkName("QMargins_OperatorMinusAssignWithInt")]
	public static extern void* QMargins_OperatorMinusAssignWithInt(void* c_this, int32 param1);
	[LinkName("QMargins_OperatorMultiplyAssign")]
	public static extern void* QMargins_OperatorMultiplyAssign(void* c_this, int32 param1);
	[LinkName("QMargins_OperatorDivideAssign")]
	public static extern void* QMargins_OperatorDivideAssign(void* c_this, int32 param1);
	[LinkName("QMargins_OperatorMultiplyAssignWithDouble")]
	public static extern void* QMargins_OperatorMultiplyAssignWithDouble(void* c_this, double param1);
	[LinkName("QMargins_OperatorDivideAssignWithDouble")]
	public static extern void* QMargins_OperatorDivideAssignWithDouble(void* c_this, double param1);
	[LinkName("QMargins_ToMarginsF")]
	public static extern void QMargins_ToMarginsF(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QMargins_Delete")]
	public static extern void QMargins_Delete(void* self);
}
public interface IQMarginsF
{
	void* NativePtr { get; }
}
public struct QMarginsFPtr : IQMarginsF, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQMarginsF other)
	{
		return .(CQt.QMarginsF_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QMarginsF_Delete(this.nativePtr);
	}
	
	public bool IsNull()
	{
		return CQt.QMarginsF_IsNull(this.nativePtr);
	}
	
	public double Left()
	{
		return CQt.QMarginsF_Left(this.nativePtr);
	}
	
	public double Top()
	{
		return CQt.QMarginsF_Top(this.nativePtr);
	}
	
	public double Right()
	{
		return CQt.QMarginsF_Right(this.nativePtr);
	}
	
	public double Bottom()
	{
		return CQt.QMarginsF_Bottom(this.nativePtr);
	}
	
	public void SetLeft(double aleft)
	{
		CQt.QMarginsF_SetLeft(this.nativePtr, aleft);
	}
	
	public void SetTop(double atop)
	{
		CQt.QMarginsF_SetTop(this.nativePtr, atop);
	}
	
	public void SetRight(double aright)
	{
		CQt.QMarginsF_SetRight(this.nativePtr, aright);
	}
	
	public void SetBottom(double abottom)
	{
		CQt.QMarginsF_SetBottom(this.nativePtr, abottom);
	}
	
	public void* OperatorPlusAssign(IQMarginsF margins)
	{
		return CQt.QMarginsF_OperatorPlusAssign(this.nativePtr, (margins == default || margins.NativePtr == default) ? default : margins.NativePtr);
	}
	
	public void* OperatorMinusAssign(IQMarginsF margins)
	{
		return CQt.QMarginsF_OperatorMinusAssign(this.nativePtr, (margins == default || margins.NativePtr == default) ? default : margins.NativePtr);
	}
	
	public void* OperatorPlusAssignWithAddend(double addend)
	{
		return CQt.QMarginsF_OperatorPlusAssignWithAddend(this.nativePtr, addend);
	}
	
	public void* OperatorMinusAssignWithSubtrahend(double subtrahend)
	{
		return CQt.QMarginsF_OperatorMinusAssignWithSubtrahend(this.nativePtr, subtrahend);
	}
	
	public void* OperatorMultiplyAssign(double factor)
	{
		return CQt.QMarginsF_OperatorMultiplyAssign(this.nativePtr, factor);
	}
	
	public void* OperatorDivideAssign(double divisor)
	{
		return CQt.QMarginsF_OperatorDivideAssign(this.nativePtr, divisor);
	}
	
	public void ToMargins()
	{
		CQt.QMarginsF_ToMargins(this.nativePtr);
	}
	
}
public class QMarginsF
{
	public QMarginsFPtr handle;
	
	public static implicit operator QMarginsFPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQMarginsF other)
	{
		this.handle = QMarginsFPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public bool IsNull()
	{
		return this.handle.IsNull();
	}
	
	public double Left()
	{
		return this.handle.Left();
	}
	
	public double Top()
	{
		return this.handle.Top();
	}
	
	public double Right()
	{
		return this.handle.Right();
	}
	
	public double Bottom()
	{
		return this.handle.Bottom();
	}
	
	public void SetLeft(double aleft)
	{
		this.handle.SetLeft(aleft);
	}
	
	public void SetTop(double atop)
	{
		this.handle.SetTop(atop);
	}
	
	public void SetRight(double aright)
	{
		this.handle.SetRight(aright);
	}
	
	public void SetBottom(double abottom)
	{
		this.handle.SetBottom(abottom);
	}
	
	public void* OperatorPlusAssign(IQMarginsF margins)
	{
		return this.handle.OperatorPlusAssign(margins);
	}
	
	public void* OperatorMinusAssign(IQMarginsF margins)
	{
		return this.handle.OperatorMinusAssign(margins);
	}
	
	public void* OperatorPlusAssignWithAddend(double addend)
	{
		return this.handle.OperatorPlusAssignWithAddend(addend);
	}
	
	public void* OperatorMinusAssignWithSubtrahend(double subtrahend)
	{
		return this.handle.OperatorMinusAssignWithSubtrahend(subtrahend);
	}
	
	public void* OperatorMultiplyAssign(double factor)
	{
		return this.handle.OperatorMultiplyAssign(factor);
	}
	
	public void* OperatorDivideAssign(double divisor)
	{
		return this.handle.OperatorDivideAssign(divisor);
	}
	
	public void ToMargins()
	{
		this.handle.ToMargins();
	}
	
}
extension CQt
{
	[LinkName("QMarginsF_new")]
	public static extern void* QMarginsF_new(void* other);
	[LinkName("QMarginsF_new2")]
	public static extern void* QMarginsF_new2(void* other);
	[LinkName("QMarginsF_new3")]
	public static extern void* QMarginsF_new3();
	[LinkName("QMarginsF_new4")]
	public static extern void* QMarginsF_new4(double left, double top, double right, double bottom);
	[LinkName("QMarginsF_new5")]
	public static extern void* QMarginsF_new5(void* margins);
	[LinkName("QMarginsF_new6")]
	public static extern void* QMarginsF_new6(void* param1);
	[LinkName("QMarginsF_IsNull")]
	public static extern bool QMarginsF_IsNull(void* c_this);
	[LinkName("QMarginsF_Left")]
	public static extern double QMarginsF_Left(void* c_this);
	[LinkName("QMarginsF_Top")]
	public static extern double QMarginsF_Top(void* c_this);
	[LinkName("QMarginsF_Right")]
	public static extern double QMarginsF_Right(void* c_this);
	[LinkName("QMarginsF_Bottom")]
	public static extern double QMarginsF_Bottom(void* c_this);
	[LinkName("QMarginsF_SetLeft")]
	public static extern void QMarginsF_SetLeft(void* c_this, double aleft);
	[LinkName("QMarginsF_SetTop")]
	public static extern void QMarginsF_SetTop(void* c_this, double atop);
	[LinkName("QMarginsF_SetRight")]
	public static extern void QMarginsF_SetRight(void* c_this, double aright);
	[LinkName("QMarginsF_SetBottom")]
	public static extern void QMarginsF_SetBottom(void* c_this, double abottom);
	[LinkName("QMarginsF_OperatorPlusAssign")]
	public static extern void* QMarginsF_OperatorPlusAssign(void* c_this, void* margins);
	[LinkName("QMarginsF_OperatorMinusAssign")]
	public static extern void* QMarginsF_OperatorMinusAssign(void* c_this, void* margins);
	[LinkName("QMarginsF_OperatorPlusAssignWithAddend")]
	public static extern void* QMarginsF_OperatorPlusAssignWithAddend(void* c_this, double addend);
	[LinkName("QMarginsF_OperatorMinusAssignWithSubtrahend")]
	public static extern void* QMarginsF_OperatorMinusAssignWithSubtrahend(void* c_this, double subtrahend);
	[LinkName("QMarginsF_OperatorMultiplyAssign")]
	public static extern void* QMarginsF_OperatorMultiplyAssign(void* c_this, double factor);
	[LinkName("QMarginsF_OperatorDivideAssign")]
	public static extern void* QMarginsF_OperatorDivideAssign(void* c_this, double divisor);
	[LinkName("QMarginsF_ToMargins")]
	public static extern void QMarginsF_ToMargins(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QMarginsF_Delete")]
	public static extern void QMarginsF_Delete(void* self);
}