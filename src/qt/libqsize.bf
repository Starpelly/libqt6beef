using System;
using System.Interop;
namespace Qt;

public interface IQSize
{
	void* NativePtr { get; }
}
public class QSize : IQSize
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQSize other)
	{
		this.nativePtr = CQt.QSize_new((other == default) ? default : (void*)other.NativePtr);
	}
	
	public ~this()
	{
		CQt.QSize_Delete(this.nativePtr);
	}
	
	public bool IsNull()
	{
		return CQt.QSize_IsNull(this.nativePtr);
	}
	
	public bool IsEmpty()
	{
		return CQt.QSize_IsEmpty(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QSize_IsValid(this.nativePtr);
	}
	
	public int32 Width()
	{
		return CQt.QSize_Width(this.nativePtr);
	}
	
	public int32 Height()
	{
		return CQt.QSize_Height(this.nativePtr);
	}
	
	public void SetWidth(int32 w)
	{
		CQt.QSize_SetWidth(this.nativePtr, w);
	}
	
	public void SetHeight(int32 h)
	{
		CQt.QSize_SetHeight(this.nativePtr, h);
	}
	
	public void Transpose()
	{
		CQt.QSize_Transpose(this.nativePtr);
	}
	
	public void Transposed()
	{
		CQt.QSize_Transposed(this.nativePtr);
	}
	
	public void Scale(int32 w, int32 h, int64 mode)
	{
		CQt.QSize_Scale(this.nativePtr, w, h, mode);
	}
	
	public void Scale2(IQSize s, int64 mode)
	{
		CQt.QSize_Scale2(this.nativePtr, (s == default) ? default : (void*)s.NativePtr, mode);
	}
	
	public void Scaled(int32 w, int32 h, int64 mode)
	{
		CQt.QSize_Scaled(this.nativePtr, w, h, mode);
	}
	
	public void Scaled2(IQSize s, int64 mode)
	{
		CQt.QSize_Scaled2(this.nativePtr, (s == default) ? default : (void*)s.NativePtr, mode);
	}
	
	public void ExpandedTo(IQSize param1)
	{
		CQt.QSize_ExpandedTo(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void BoundedTo(IQSize param1)
	{
		CQt.QSize_BoundedTo(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void GrownBy(IQMargins m)
	{
		CQt.QSize_GrownBy(this.nativePtr, (m == default) ? default : (void)m.NativePtr);
	}
	
	public void ShrunkBy(IQMargins m)
	{
		CQt.QSize_ShrunkBy(this.nativePtr, (m == default) ? default : (void)m.NativePtr);
	}
	
	public void* OperatorPlusAssign(IQSize param1)
	{
		return CQt.QSize_OperatorPlusAssign(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void* OperatorMinusAssign(IQSize param1)
	{
		return CQt.QSize_OperatorMinusAssign(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void* OperatorMultiplyAssign(double c)
	{
		return CQt.QSize_OperatorMultiplyAssign(this.nativePtr, c);
	}
	
	public void* OperatorDivideAssign(double c)
	{
		return CQt.QSize_OperatorDivideAssign(this.nativePtr, c);
	}
	
	public void ToSizeF()
	{
		CQt.QSize_ToSizeF(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QSize_new")]
	public static extern void* QSize_new(void* other);
	[LinkName("QSize_new2")]
	public static extern void* QSize_new2(void* other);
	[LinkName("QSize_new3")]
	public static extern void* QSize_new3();
	[LinkName("QSize_new4")]
	public static extern void* QSize_new4(int32 w, int32 h);
	[LinkName("QSize_new5")]
	public static extern void* QSize_new5(void* param1);
	[LinkName("QSize_IsNull")]
	public static extern bool QSize_IsNull(void* c_this);
	[LinkName("QSize_IsEmpty")]
	public static extern bool QSize_IsEmpty(void* c_this);
	[LinkName("QSize_IsValid")]
	public static extern bool QSize_IsValid(void* c_this);
	[LinkName("QSize_Width")]
	public static extern int32 QSize_Width(void* c_this);
	[LinkName("QSize_Height")]
	public static extern int32 QSize_Height(void* c_this);
	[LinkName("QSize_SetWidth")]
	public static extern void QSize_SetWidth(void* c_this, int32 w);
	[LinkName("QSize_SetHeight")]
	public static extern void QSize_SetHeight(void* c_this, int32 h);
	[LinkName("QSize_Transpose")]
	public static extern void QSize_Transpose(void* c_this);
	[LinkName("QSize_Transposed")]
	public static extern void QSize_Transposed(void* c_this);
	[LinkName("QSize_Scale")]
	public static extern void QSize_Scale(void* c_this, int32 w, int32 h, int64 mode);
	[LinkName("QSize_Scale2")]
	public static extern void QSize_Scale2(void* c_this, void* s, int64 mode);
	[LinkName("QSize_Scaled")]
	public static extern void QSize_Scaled(void* c_this, int32 w, int32 h, int64 mode);
	[LinkName("QSize_Scaled2")]
	public static extern void QSize_Scaled2(void* c_this, void* s, int64 mode);
	[LinkName("QSize_ExpandedTo")]
	public static extern void QSize_ExpandedTo(void* c_this, void* param1);
	[LinkName("QSize_BoundedTo")]
	public static extern void QSize_BoundedTo(void* c_this, void* param1);
	[LinkName("QSize_GrownBy")]
	public static extern void QSize_GrownBy(void* c_this, void m);
	[LinkName("QSize_ShrunkBy")]
	public static extern void QSize_ShrunkBy(void* c_this, void m);
	[LinkName("QSize_OperatorPlusAssign")]
	public static extern void* QSize_OperatorPlusAssign(void* c_this, void* param1);
	[LinkName("QSize_OperatorMinusAssign")]
	public static extern void* QSize_OperatorMinusAssign(void* c_this, void* param1);
	[LinkName("QSize_OperatorMultiplyAssign")]
	public static extern void* QSize_OperatorMultiplyAssign(void* c_this, double c);
	[LinkName("QSize_OperatorDivideAssign")]
	public static extern void* QSize_OperatorDivideAssign(void* c_this, double c);
	[LinkName("QSize_ToSizeF")]
	public static extern void QSize_ToSizeF(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QSize_Delete")]
	public static extern void QSize_Delete(void* self);
}
public interface IQSizeF
{
	void* NativePtr { get; }
}
public class QSizeF : IQSizeF
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQSizeF other)
	{
		this.nativePtr = CQt.QSizeF_new((other == default) ? default : (void*)other.NativePtr);
	}
	
	public ~this()
	{
		CQt.QSizeF_Delete(this.nativePtr);
	}
	
	public bool IsNull()
	{
		return CQt.QSizeF_IsNull(this.nativePtr);
	}
	
	public bool IsEmpty()
	{
		return CQt.QSizeF_IsEmpty(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QSizeF_IsValid(this.nativePtr);
	}
	
	public double Width()
	{
		return CQt.QSizeF_Width(this.nativePtr);
	}
	
	public double Height()
	{
		return CQt.QSizeF_Height(this.nativePtr);
	}
	
	public void SetWidth(double w)
	{
		CQt.QSizeF_SetWidth(this.nativePtr, w);
	}
	
	public void SetHeight(double h)
	{
		CQt.QSizeF_SetHeight(this.nativePtr, h);
	}
	
	public void Transpose()
	{
		CQt.QSizeF_Transpose(this.nativePtr);
	}
	
	public void Transposed()
	{
		CQt.QSizeF_Transposed(this.nativePtr);
	}
	
	public void Scale(double w, double h, int64 mode)
	{
		CQt.QSizeF_Scale(this.nativePtr, w, h, mode);
	}
	
	public void Scale2(IQSizeF s, int64 mode)
	{
		CQt.QSizeF_Scale2(this.nativePtr, (s == default) ? default : (void*)s.NativePtr, mode);
	}
	
	public void Scaled(double w, double h, int64 mode)
	{
		CQt.QSizeF_Scaled(this.nativePtr, w, h, mode);
	}
	
	public void Scaled2(IQSizeF s, int64 mode)
	{
		CQt.QSizeF_Scaled2(this.nativePtr, (s == default) ? default : (void*)s.NativePtr, mode);
	}
	
	public void ExpandedTo(IQSizeF param1)
	{
		CQt.QSizeF_ExpandedTo(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void BoundedTo(IQSizeF param1)
	{
		CQt.QSizeF_BoundedTo(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void GrownBy(IQMarginsF m)
	{
		CQt.QSizeF_GrownBy(this.nativePtr, (m == default) ? default : (void)m.NativePtr);
	}
	
	public void ShrunkBy(IQMarginsF m)
	{
		CQt.QSizeF_ShrunkBy(this.nativePtr, (m == default) ? default : (void)m.NativePtr);
	}
	
	public void* OperatorPlusAssign(IQSizeF param1)
	{
		return CQt.QSizeF_OperatorPlusAssign(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void* OperatorMinusAssign(IQSizeF param1)
	{
		return CQt.QSizeF_OperatorMinusAssign(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void* OperatorMultiplyAssign(double c)
	{
		return CQt.QSizeF_OperatorMultiplyAssign(this.nativePtr, c);
	}
	
	public void* OperatorDivideAssign(double c)
	{
		return CQt.QSizeF_OperatorDivideAssign(this.nativePtr, c);
	}
	
	public void ToSize()
	{
		CQt.QSizeF_ToSize(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QSizeF_new")]
	public static extern void* QSizeF_new(void* other);
	[LinkName("QSizeF_new2")]
	public static extern void* QSizeF_new2(void* other);
	[LinkName("QSizeF_new3")]
	public static extern void* QSizeF_new3();
	[LinkName("QSizeF_new4")]
	public static extern void* QSizeF_new4(void* sz);
	[LinkName("QSizeF_new5")]
	public static extern void* QSizeF_new5(double w, double h);
	[LinkName("QSizeF_new6")]
	public static extern void* QSizeF_new6(void* param1);
	[LinkName("QSizeF_IsNull")]
	public static extern bool QSizeF_IsNull(void* c_this);
	[LinkName("QSizeF_IsEmpty")]
	public static extern bool QSizeF_IsEmpty(void* c_this);
	[LinkName("QSizeF_IsValid")]
	public static extern bool QSizeF_IsValid(void* c_this);
	[LinkName("QSizeF_Width")]
	public static extern double QSizeF_Width(void* c_this);
	[LinkName("QSizeF_Height")]
	public static extern double QSizeF_Height(void* c_this);
	[LinkName("QSizeF_SetWidth")]
	public static extern void QSizeF_SetWidth(void* c_this, double w);
	[LinkName("QSizeF_SetHeight")]
	public static extern void QSizeF_SetHeight(void* c_this, double h);
	[LinkName("QSizeF_Transpose")]
	public static extern void QSizeF_Transpose(void* c_this);
	[LinkName("QSizeF_Transposed")]
	public static extern void QSizeF_Transposed(void* c_this);
	[LinkName("QSizeF_Scale")]
	public static extern void QSizeF_Scale(void* c_this, double w, double h, int64 mode);
	[LinkName("QSizeF_Scale2")]
	public static extern void QSizeF_Scale2(void* c_this, void* s, int64 mode);
	[LinkName("QSizeF_Scaled")]
	public static extern void QSizeF_Scaled(void* c_this, double w, double h, int64 mode);
	[LinkName("QSizeF_Scaled2")]
	public static extern void QSizeF_Scaled2(void* c_this, void* s, int64 mode);
	[LinkName("QSizeF_ExpandedTo")]
	public static extern void QSizeF_ExpandedTo(void* c_this, void* param1);
	[LinkName("QSizeF_BoundedTo")]
	public static extern void QSizeF_BoundedTo(void* c_this, void* param1);
	[LinkName("QSizeF_GrownBy")]
	public static extern void QSizeF_GrownBy(void* c_this, void m);
	[LinkName("QSizeF_ShrunkBy")]
	public static extern void QSizeF_ShrunkBy(void* c_this, void m);
	[LinkName("QSizeF_OperatorPlusAssign")]
	public static extern void* QSizeF_OperatorPlusAssign(void* c_this, void* param1);
	[LinkName("QSizeF_OperatorMinusAssign")]
	public static extern void* QSizeF_OperatorMinusAssign(void* c_this, void* param1);
	[LinkName("QSizeF_OperatorMultiplyAssign")]
	public static extern void* QSizeF_OperatorMultiplyAssign(void* c_this, double c);
	[LinkName("QSizeF_OperatorDivideAssign")]
	public static extern void* QSizeF_OperatorDivideAssign(void* c_this, double c);
	[LinkName("QSizeF_ToSize")]
	public static extern void QSizeF_ToSize(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QSizeF_Delete")]
	public static extern void QSizeF_Delete(void* self);
}