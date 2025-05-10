using System;
using System.Interop;
namespace Qt;

public interface IQRect
{
	void* NativePtr { get; }
}
public class QRect : IQRect
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQRect other)
	{
		this.nativePtr = CQt.QRect_new((other == default) ? default : (void*)other.NativePtr);
	}
	
	public ~this()
	{
		CQt.QRect_Delete(this.nativePtr);
	}
	
	public bool IsNull()
	{
		return CQt.QRect_IsNull(this.nativePtr);
	}
	
	public bool IsEmpty()
	{
		return CQt.QRect_IsEmpty(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QRect_IsValid(this.nativePtr);
	}
	
	public int32 Left()
	{
		return CQt.QRect_Left(this.nativePtr);
	}
	
	public int32 Top()
	{
		return CQt.QRect_Top(this.nativePtr);
	}
	
	public int32 Right()
	{
		return CQt.QRect_Right(this.nativePtr);
	}
	
	public int32 Bottom()
	{
		return CQt.QRect_Bottom(this.nativePtr);
	}
	
	public void Normalized()
	{
		CQt.QRect_Normalized(this.nativePtr);
	}
	
	public int32 X()
	{
		return CQt.QRect_X(this.nativePtr);
	}
	
	public int32 Y()
	{
		return CQt.QRect_Y(this.nativePtr);
	}
	
	public void SetLeft(int32 pos)
	{
		CQt.QRect_SetLeft(this.nativePtr, pos);
	}
	
	public void SetTop(int32 pos)
	{
		CQt.QRect_SetTop(this.nativePtr, pos);
	}
	
	public void SetRight(int32 pos)
	{
		CQt.QRect_SetRight(this.nativePtr, pos);
	}
	
	public void SetBottom(int32 pos)
	{
		CQt.QRect_SetBottom(this.nativePtr, pos);
	}
	
	public void SetX(int32 x)
	{
		CQt.QRect_SetX(this.nativePtr, x);
	}
	
	public void SetY(int32 y)
	{
		CQt.QRect_SetY(this.nativePtr, y);
	}
	
	public void SetTopLeft(IQPoint p)
	{
		CQt.QRect_SetTopLeft(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
	}
	
	public void SetBottomRight(IQPoint p)
	{
		CQt.QRect_SetBottomRight(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
	}
	
	public void SetTopRight(IQPoint p)
	{
		CQt.QRect_SetTopRight(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
	}
	
	public void SetBottomLeft(IQPoint p)
	{
		CQt.QRect_SetBottomLeft(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
	}
	
	public void TopLeft()
	{
		CQt.QRect_TopLeft(this.nativePtr);
	}
	
	public void BottomRight()
	{
		CQt.QRect_BottomRight(this.nativePtr);
	}
	
	public void TopRight()
	{
		CQt.QRect_TopRight(this.nativePtr);
	}
	
	public void BottomLeft()
	{
		CQt.QRect_BottomLeft(this.nativePtr);
	}
	
	public void Center()
	{
		CQt.QRect_Center(this.nativePtr);
	}
	
	public void MoveLeft(int32 pos)
	{
		CQt.QRect_MoveLeft(this.nativePtr, pos);
	}
	
	public void MoveTop(int32 pos)
	{
		CQt.QRect_MoveTop(this.nativePtr, pos);
	}
	
	public void MoveRight(int32 pos)
	{
		CQt.QRect_MoveRight(this.nativePtr, pos);
	}
	
	public void MoveBottom(int32 pos)
	{
		CQt.QRect_MoveBottom(this.nativePtr, pos);
	}
	
	public void MoveTopLeft(IQPoint p)
	{
		CQt.QRect_MoveTopLeft(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
	}
	
	public void MoveBottomRight(IQPoint p)
	{
		CQt.QRect_MoveBottomRight(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
	}
	
	public void MoveTopRight(IQPoint p)
	{
		CQt.QRect_MoveTopRight(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
	}
	
	public void MoveBottomLeft(IQPoint p)
	{
		CQt.QRect_MoveBottomLeft(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
	}
	
	public void MoveCenter(IQPoint p)
	{
		CQt.QRect_MoveCenter(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
	}
	
	public void Translate(int32 dx, int32 dy)
	{
		CQt.QRect_Translate(this.nativePtr, dx, dy);
	}
	
	public void TranslateWithQPoint(IQPoint p)
	{
		CQt.QRect_TranslateWithQPoint(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
	}
	
	public void Translated(int32 dx, int32 dy)
	{
		CQt.QRect_Translated(this.nativePtr, dx, dy);
	}
	
	public void TranslatedWithQPoint(IQPoint p)
	{
		CQt.QRect_TranslatedWithQPoint(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
	}
	
	public void Transposed()
	{
		CQt.QRect_Transposed(this.nativePtr);
	}
	
	public void MoveTo(int32 x, int32 t)
	{
		CQt.QRect_MoveTo(this.nativePtr, x, t);
	}
	
	public void MoveToWithQPoint(IQPoint p)
	{
		CQt.QRect_MoveToWithQPoint(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
	}
	
	public void SetRect(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QRect_SetRect(this.nativePtr, x, y, w, h);
	}
	
	public void GetRect(int32* x, int32* y, int32* w, int32* h)
	{
		CQt.QRect_GetRect(this.nativePtr, x, y, w, h);
	}
	
	public void SetCoords(int32 x1, int32 y1, int32 x2, int32 y2)
	{
		CQt.QRect_SetCoords(this.nativePtr, x1, y1, x2, y2);
	}
	
	public void GetCoords(int32* x1, int32* y1, int32* x2, int32* y2)
	{
		CQt.QRect_GetCoords(this.nativePtr, x1, y1, x2, y2);
	}
	
	public void Adjust(int32 x1, int32 y1, int32 x2, int32 y2)
	{
		CQt.QRect_Adjust(this.nativePtr, x1, y1, x2, y2);
	}
	
	public void Adjusted(int32 x1, int32 y1, int32 x2, int32 y2)
	{
		CQt.QRect_Adjusted(this.nativePtr, x1, y1, x2, y2);
	}
	
	public void Size()
	{
		CQt.QRect_Size(this.nativePtr);
	}
	
	public int32 Width()
	{
		return CQt.QRect_Width(this.nativePtr);
	}
	
	public int32 Height()
	{
		return CQt.QRect_Height(this.nativePtr);
	}
	
	public void SetWidth(int32 w)
	{
		CQt.QRect_SetWidth(this.nativePtr, w);
	}
	
	public void SetHeight(int32 h)
	{
		CQt.QRect_SetHeight(this.nativePtr, h);
	}
	
	public void SetSize(IQSize s)
	{
		CQt.QRect_SetSize(this.nativePtr, (s == default) ? default : (void*)s.NativePtr);
	}
	
	public void OperatorBitwiseOr(IQRect r)
	{
		CQt.QRect_OperatorBitwiseOr(this.nativePtr, (r == default) ? default : (void*)r.NativePtr);
	}
	
	public void OperatorBitwiseAnd(IQRect r)
	{
		CQt.QRect_OperatorBitwiseAnd(this.nativePtr, (r == default) ? default : (void*)r.NativePtr);
	}
	
	public void OperatorBitwiseOrAssign(IQRect r)
	{
		CQt.QRect_OperatorBitwiseOrAssign(this.nativePtr, (r == default) ? default : (void*)r.NativePtr);
	}
	
	public void OperatorBitwiseAndAssign(IQRect r)
	{
		CQt.QRect_OperatorBitwiseAndAssign(this.nativePtr, (r == default) ? default : (void*)r.NativePtr);
	}
	
	public bool Contains(IQRect r)
	{
		return CQt.QRect_Contains(this.nativePtr, (r == default) ? default : (void*)r.NativePtr);
	}
	
	public bool ContainsWithQPoint(IQPoint p)
	{
		return CQt.QRect_ContainsWithQPoint(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
	}
	
	public bool Contains2(int32 x, int32 y)
	{
		return CQt.QRect_Contains2(this.nativePtr, x, y);
	}
	
	public bool Contains3(int32 x, int32 y, bool proper)
	{
		return CQt.QRect_Contains3(this.nativePtr, x, y, proper);
	}
	
	public void United(IQRect other)
	{
		CQt.QRect_United(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public void Intersected(IQRect other)
	{
		CQt.QRect_Intersected(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public bool Intersects(IQRect r)
	{
		return CQt.QRect_Intersects(this.nativePtr, (r == default) ? default : (void*)r.NativePtr);
	}
	
	public void MarginsAdded(IQMargins margins)
	{
		CQt.QRect_MarginsAdded(this.nativePtr, (margins == default) ? default : (void*)margins.NativePtr);
	}
	
	public void MarginsRemoved(IQMargins margins)
	{
		CQt.QRect_MarginsRemoved(this.nativePtr, (margins == default) ? default : (void*)margins.NativePtr);
	}
	
	public void* OperatorPlusAssign(IQMargins margins)
	{
		return CQt.QRect_OperatorPlusAssign(this.nativePtr, (margins == default) ? default : (void*)margins.NativePtr);
	}
	
	public void* OperatorMinusAssign(IQMargins margins)
	{
		return CQt.QRect_OperatorMinusAssign(this.nativePtr, (margins == default) ? default : (void*)margins.NativePtr);
	}
	
	public static void Span(IQPoint p1, IQPoint p2)
	{
		CQt.QRect_Span((p1 == default) ? default : (void*)p1.NativePtr, (p2 == default) ? default : (void*)p2.NativePtr);
	}
	
	public void ToRectF()
	{
		CQt.QRect_ToRectF(this.nativePtr);
	}
	
	public bool Contains22(IQRect r, bool proper)
	{
		return CQt.QRect_Contains22(this.nativePtr, (r == default) ? default : (void*)r.NativePtr, proper);
	}
	
	public bool Contains23(IQPoint p, bool proper)
	{
		return CQt.QRect_Contains23(this.nativePtr, (p == default) ? default : (void*)p.NativePtr, proper);
	}
	
}
extension CQt
{
	[LinkName("QRect_new")]
	public static extern void* QRect_new(void* other);
	[LinkName("QRect_new2")]
	public static extern void* QRect_new2(void* other);
	[LinkName("QRect_new3")]
	public static extern void* QRect_new3();
	[LinkName("QRect_new4")]
	public static extern void* QRect_new4(void* topleft, void* bottomright);
	[LinkName("QRect_new5")]
	public static extern void* QRect_new5(void* topleft, void* size);
	[LinkName("QRect_new6")]
	public static extern void* QRect_new6(int32 left, int32 top, int32 width, int32 height);
	[LinkName("QRect_new7")]
	public static extern void* QRect_new7(void* param1);
	[LinkName("QRect_IsNull")]
	public static extern bool QRect_IsNull(void* c_this);
	[LinkName("QRect_IsEmpty")]
	public static extern bool QRect_IsEmpty(void* c_this);
	[LinkName("QRect_IsValid")]
	public static extern bool QRect_IsValid(void* c_this);
	[LinkName("QRect_Left")]
	public static extern int32 QRect_Left(void* c_this);
	[LinkName("QRect_Top")]
	public static extern int32 QRect_Top(void* c_this);
	[LinkName("QRect_Right")]
	public static extern int32 QRect_Right(void* c_this);
	[LinkName("QRect_Bottom")]
	public static extern int32 QRect_Bottom(void* c_this);
	[LinkName("QRect_Normalized")]
	public static extern void QRect_Normalized(void* c_this);
	[LinkName("QRect_X")]
	public static extern int32 QRect_X(void* c_this);
	[LinkName("QRect_Y")]
	public static extern int32 QRect_Y(void* c_this);
	[LinkName("QRect_SetLeft")]
	public static extern void QRect_SetLeft(void* c_this, int32 pos);
	[LinkName("QRect_SetTop")]
	public static extern void QRect_SetTop(void* c_this, int32 pos);
	[LinkName("QRect_SetRight")]
	public static extern void QRect_SetRight(void* c_this, int32 pos);
	[LinkName("QRect_SetBottom")]
	public static extern void QRect_SetBottom(void* c_this, int32 pos);
	[LinkName("QRect_SetX")]
	public static extern void QRect_SetX(void* c_this, int32 x);
	[LinkName("QRect_SetY")]
	public static extern void QRect_SetY(void* c_this, int32 y);
	[LinkName("QRect_SetTopLeft")]
	public static extern void QRect_SetTopLeft(void* c_this, void* p);
	[LinkName("QRect_SetBottomRight")]
	public static extern void QRect_SetBottomRight(void* c_this, void* p);
	[LinkName("QRect_SetTopRight")]
	public static extern void QRect_SetTopRight(void* c_this, void* p);
	[LinkName("QRect_SetBottomLeft")]
	public static extern void QRect_SetBottomLeft(void* c_this, void* p);
	[LinkName("QRect_TopLeft")]
	public static extern void QRect_TopLeft(void* c_this);
	[LinkName("QRect_BottomRight")]
	public static extern void QRect_BottomRight(void* c_this);
	[LinkName("QRect_TopRight")]
	public static extern void QRect_TopRight(void* c_this);
	[LinkName("QRect_BottomLeft")]
	public static extern void QRect_BottomLeft(void* c_this);
	[LinkName("QRect_Center")]
	public static extern void QRect_Center(void* c_this);
	[LinkName("QRect_MoveLeft")]
	public static extern void QRect_MoveLeft(void* c_this, int32 pos);
	[LinkName("QRect_MoveTop")]
	public static extern void QRect_MoveTop(void* c_this, int32 pos);
	[LinkName("QRect_MoveRight")]
	public static extern void QRect_MoveRight(void* c_this, int32 pos);
	[LinkName("QRect_MoveBottom")]
	public static extern void QRect_MoveBottom(void* c_this, int32 pos);
	[LinkName("QRect_MoveTopLeft")]
	public static extern void QRect_MoveTopLeft(void* c_this, void* p);
	[LinkName("QRect_MoveBottomRight")]
	public static extern void QRect_MoveBottomRight(void* c_this, void* p);
	[LinkName("QRect_MoveTopRight")]
	public static extern void QRect_MoveTopRight(void* c_this, void* p);
	[LinkName("QRect_MoveBottomLeft")]
	public static extern void QRect_MoveBottomLeft(void* c_this, void* p);
	[LinkName("QRect_MoveCenter")]
	public static extern void QRect_MoveCenter(void* c_this, void* p);
	[LinkName("QRect_Translate")]
	public static extern void QRect_Translate(void* c_this, int32 dx, int32 dy);
	[LinkName("QRect_TranslateWithQPoint")]
	public static extern void QRect_TranslateWithQPoint(void* c_this, void* p);
	[LinkName("QRect_Translated")]
	public static extern void QRect_Translated(void* c_this, int32 dx, int32 dy);
	[LinkName("QRect_TranslatedWithQPoint")]
	public static extern void QRect_TranslatedWithQPoint(void* c_this, void* p);
	[LinkName("QRect_Transposed")]
	public static extern void QRect_Transposed(void* c_this);
	[LinkName("QRect_MoveTo")]
	public static extern void QRect_MoveTo(void* c_this, int32 x, int32 t);
	[LinkName("QRect_MoveToWithQPoint")]
	public static extern void QRect_MoveToWithQPoint(void* c_this, void* p);
	[LinkName("QRect_SetRect")]
	public static extern void QRect_SetRect(void* c_this, int32 x, int32 y, int32 w, int32 h);
	[LinkName("QRect_GetRect")]
	public static extern void QRect_GetRect(void* c_this, int32* x, int32* y, int32* w, int32* h);
	[LinkName("QRect_SetCoords")]
	public static extern void QRect_SetCoords(void* c_this, int32 x1, int32 y1, int32 x2, int32 y2);
	[LinkName("QRect_GetCoords")]
	public static extern void QRect_GetCoords(void* c_this, int32* x1, int32* y1, int32* x2, int32* y2);
	[LinkName("QRect_Adjust")]
	public static extern void QRect_Adjust(void* c_this, int32 x1, int32 y1, int32 x2, int32 y2);
	[LinkName("QRect_Adjusted")]
	public static extern void QRect_Adjusted(void* c_this, int32 x1, int32 y1, int32 x2, int32 y2);
	[LinkName("QRect_Size")]
	public static extern void QRect_Size(void* c_this);
	[LinkName("QRect_Width")]
	public static extern int32 QRect_Width(void* c_this);
	[LinkName("QRect_Height")]
	public static extern int32 QRect_Height(void* c_this);
	[LinkName("QRect_SetWidth")]
	public static extern void QRect_SetWidth(void* c_this, int32 w);
	[LinkName("QRect_SetHeight")]
	public static extern void QRect_SetHeight(void* c_this, int32 h);
	[LinkName("QRect_SetSize")]
	public static extern void QRect_SetSize(void* c_this, void* s);
	[LinkName("QRect_OperatorBitwiseOr")]
	public static extern void QRect_OperatorBitwiseOr(void* c_this, void* r);
	[LinkName("QRect_OperatorBitwiseAnd")]
	public static extern void QRect_OperatorBitwiseAnd(void* c_this, void* r);
	[LinkName("QRect_OperatorBitwiseOrAssign")]
	public static extern void QRect_OperatorBitwiseOrAssign(void* c_this, void* r);
	[LinkName("QRect_OperatorBitwiseAndAssign")]
	public static extern void QRect_OperatorBitwiseAndAssign(void* c_this, void* r);
	[LinkName("QRect_Contains")]
	public static extern bool QRect_Contains(void* c_this, void* r);
	[LinkName("QRect_ContainsWithQPoint")]
	public static extern bool QRect_ContainsWithQPoint(void* c_this, void* p);
	[LinkName("QRect_Contains2")]
	public static extern bool QRect_Contains2(void* c_this, int32 x, int32 y);
	[LinkName("QRect_Contains3")]
	public static extern bool QRect_Contains3(void* c_this, int32 x, int32 y, bool proper);
	[LinkName("QRect_United")]
	public static extern void QRect_United(void* c_this, void* other);
	[LinkName("QRect_Intersected")]
	public static extern void QRect_Intersected(void* c_this, void* other);
	[LinkName("QRect_Intersects")]
	public static extern bool QRect_Intersects(void* c_this, void* r);
	[LinkName("QRect_MarginsAdded")]
	public static extern void QRect_MarginsAdded(void* c_this, void* margins);
	[LinkName("QRect_MarginsRemoved")]
	public static extern void QRect_MarginsRemoved(void* c_this, void* margins);
	[LinkName("QRect_OperatorPlusAssign")]
	public static extern void* QRect_OperatorPlusAssign(void* c_this, void* margins);
	[LinkName("QRect_OperatorMinusAssign")]
	public static extern void* QRect_OperatorMinusAssign(void* c_this, void* margins);
	[LinkName("QRect_Span")]
	public static extern void QRect_Span(void* p1, void* p2);
	[LinkName("QRect_ToRectF")]
	public static extern void QRect_ToRectF(void* c_this);
	[LinkName("QRect_Contains22")]
	public static extern bool QRect_Contains22(void* c_this, void* r, bool proper);
	[LinkName("QRect_Contains23")]
	public static extern bool QRect_Contains23(void* c_this, void* p, bool proper);
	/// Delete this object from C++ memory
	[LinkName("QRect_Delete")]
	public static extern void QRect_Delete(void* self);
}
public interface IQRectF
{
	void* NativePtr { get; }
}
public class QRectF : IQRectF
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQRectF other)
	{
		this.nativePtr = CQt.QRectF_new((other == default) ? default : (void*)other.NativePtr);
	}
	
	public ~this()
	{
		CQt.QRectF_Delete(this.nativePtr);
	}
	
	public bool IsNull()
	{
		return CQt.QRectF_IsNull(this.nativePtr);
	}
	
	public bool IsEmpty()
	{
		return CQt.QRectF_IsEmpty(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QRectF_IsValid(this.nativePtr);
	}
	
	public void Normalized()
	{
		CQt.QRectF_Normalized(this.nativePtr);
	}
	
	public double Left()
	{
		return CQt.QRectF_Left(this.nativePtr);
	}
	
	public double Top()
	{
		return CQt.QRectF_Top(this.nativePtr);
	}
	
	public double Right()
	{
		return CQt.QRectF_Right(this.nativePtr);
	}
	
	public double Bottom()
	{
		return CQt.QRectF_Bottom(this.nativePtr);
	}
	
	public double X()
	{
		return CQt.QRectF_X(this.nativePtr);
	}
	
	public double Y()
	{
		return CQt.QRectF_Y(this.nativePtr);
	}
	
	public void SetLeft(double pos)
	{
		CQt.QRectF_SetLeft(this.nativePtr, pos);
	}
	
	public void SetTop(double pos)
	{
		CQt.QRectF_SetTop(this.nativePtr, pos);
	}
	
	public void SetRight(double pos)
	{
		CQt.QRectF_SetRight(this.nativePtr, pos);
	}
	
	public void SetBottom(double pos)
	{
		CQt.QRectF_SetBottom(this.nativePtr, pos);
	}
	
	public void SetX(double pos)
	{
		CQt.QRectF_SetX(this.nativePtr, pos);
	}
	
	public void SetY(double pos)
	{
		CQt.QRectF_SetY(this.nativePtr, pos);
	}
	
	public void TopLeft()
	{
		CQt.QRectF_TopLeft(this.nativePtr);
	}
	
	public void BottomRight()
	{
		CQt.QRectF_BottomRight(this.nativePtr);
	}
	
	public void TopRight()
	{
		CQt.QRectF_TopRight(this.nativePtr);
	}
	
	public void BottomLeft()
	{
		CQt.QRectF_BottomLeft(this.nativePtr);
	}
	
	public void Center()
	{
		CQt.QRectF_Center(this.nativePtr);
	}
	
	public void SetTopLeft(IQPointF p)
	{
		CQt.QRectF_SetTopLeft(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
	}
	
	public void SetBottomRight(IQPointF p)
	{
		CQt.QRectF_SetBottomRight(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
	}
	
	public void SetTopRight(IQPointF p)
	{
		CQt.QRectF_SetTopRight(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
	}
	
	public void SetBottomLeft(IQPointF p)
	{
		CQt.QRectF_SetBottomLeft(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
	}
	
	public void MoveLeft(double pos)
	{
		CQt.QRectF_MoveLeft(this.nativePtr, pos);
	}
	
	public void MoveTop(double pos)
	{
		CQt.QRectF_MoveTop(this.nativePtr, pos);
	}
	
	public void MoveRight(double pos)
	{
		CQt.QRectF_MoveRight(this.nativePtr, pos);
	}
	
	public void MoveBottom(double pos)
	{
		CQt.QRectF_MoveBottom(this.nativePtr, pos);
	}
	
	public void MoveTopLeft(IQPointF p)
	{
		CQt.QRectF_MoveTopLeft(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
	}
	
	public void MoveBottomRight(IQPointF p)
	{
		CQt.QRectF_MoveBottomRight(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
	}
	
	public void MoveTopRight(IQPointF p)
	{
		CQt.QRectF_MoveTopRight(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
	}
	
	public void MoveBottomLeft(IQPointF p)
	{
		CQt.QRectF_MoveBottomLeft(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
	}
	
	public void MoveCenter(IQPointF p)
	{
		CQt.QRectF_MoveCenter(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
	}
	
	public void Translate(double dx, double dy)
	{
		CQt.QRectF_Translate(this.nativePtr, dx, dy);
	}
	
	public void TranslateWithQPointF(IQPointF p)
	{
		CQt.QRectF_TranslateWithQPointF(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
	}
	
	public void Translated(double dx, double dy)
	{
		CQt.QRectF_Translated(this.nativePtr, dx, dy);
	}
	
	public void TranslatedWithQPointF(IQPointF p)
	{
		CQt.QRectF_TranslatedWithQPointF(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
	}
	
	public void Transposed()
	{
		CQt.QRectF_Transposed(this.nativePtr);
	}
	
	public void MoveTo(double x, double y)
	{
		CQt.QRectF_MoveTo(this.nativePtr, x, y);
	}
	
	public void MoveToWithQPointF(IQPointF p)
	{
		CQt.QRectF_MoveToWithQPointF(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
	}
	
	public void SetRect(double x, double y, double w, double h)
	{
		CQt.QRectF_SetRect(this.nativePtr, x, y, w, h);
	}
	
	public void GetRect(double* x, double* y, double* w, double* h)
	{
		CQt.QRectF_GetRect(this.nativePtr, x, y, w, h);
	}
	
	public void SetCoords(double x1, double y1, double x2, double y2)
	{
		CQt.QRectF_SetCoords(this.nativePtr, x1, y1, x2, y2);
	}
	
	public void GetCoords(double* x1, double* y1, double* x2, double* y2)
	{
		CQt.QRectF_GetCoords(this.nativePtr, x1, y1, x2, y2);
	}
	
	public void Adjust(double x1, double y1, double x2, double y2)
	{
		CQt.QRectF_Adjust(this.nativePtr, x1, y1, x2, y2);
	}
	
	public void Adjusted(double x1, double y1, double x2, double y2)
	{
		CQt.QRectF_Adjusted(this.nativePtr, x1, y1, x2, y2);
	}
	
	public void Size()
	{
		CQt.QRectF_Size(this.nativePtr);
	}
	
	public double Width()
	{
		return CQt.QRectF_Width(this.nativePtr);
	}
	
	public double Height()
	{
		return CQt.QRectF_Height(this.nativePtr);
	}
	
	public void SetWidth(double w)
	{
		CQt.QRectF_SetWidth(this.nativePtr, w);
	}
	
	public void SetHeight(double h)
	{
		CQt.QRectF_SetHeight(this.nativePtr, h);
	}
	
	public void SetSize(IQSizeF s)
	{
		CQt.QRectF_SetSize(this.nativePtr, (s == default) ? default : (void*)s.NativePtr);
	}
	
	public void OperatorBitwiseOr(IQRectF r)
	{
		CQt.QRectF_OperatorBitwiseOr(this.nativePtr, (r == default) ? default : (void*)r.NativePtr);
	}
	
	public void OperatorBitwiseAnd(IQRectF r)
	{
		CQt.QRectF_OperatorBitwiseAnd(this.nativePtr, (r == default) ? default : (void*)r.NativePtr);
	}
	
	public void OperatorBitwiseOrAssign(IQRectF r)
	{
		CQt.QRectF_OperatorBitwiseOrAssign(this.nativePtr, (r == default) ? default : (void*)r.NativePtr);
	}
	
	public void OperatorBitwiseAndAssign(IQRectF r)
	{
		CQt.QRectF_OperatorBitwiseAndAssign(this.nativePtr, (r == default) ? default : (void*)r.NativePtr);
	}
	
	public bool Contains(IQRectF r)
	{
		return CQt.QRectF_Contains(this.nativePtr, (r == default) ? default : (void*)r.NativePtr);
	}
	
	public bool ContainsWithQPointF(IQPointF p)
	{
		return CQt.QRectF_ContainsWithQPointF(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
	}
	
	public bool Contains2(double x, double y)
	{
		return CQt.QRectF_Contains2(this.nativePtr, x, y);
	}
	
	public void United(IQRectF other)
	{
		CQt.QRectF_United(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public void Intersected(IQRectF other)
	{
		CQt.QRectF_Intersected(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public bool Intersects(IQRectF r)
	{
		return CQt.QRectF_Intersects(this.nativePtr, (r == default) ? default : (void*)r.NativePtr);
	}
	
	public void MarginsAdded(IQMarginsF margins)
	{
		CQt.QRectF_MarginsAdded(this.nativePtr, (margins == default) ? default : (void*)margins.NativePtr);
	}
	
	public void MarginsRemoved(IQMarginsF margins)
	{
		CQt.QRectF_MarginsRemoved(this.nativePtr, (margins == default) ? default : (void*)margins.NativePtr);
	}
	
	public void* OperatorPlusAssign(IQMarginsF margins)
	{
		return CQt.QRectF_OperatorPlusAssign(this.nativePtr, (margins == default) ? default : (void*)margins.NativePtr);
	}
	
	public void* OperatorMinusAssign(IQMarginsF margins)
	{
		return CQt.QRectF_OperatorMinusAssign(this.nativePtr, (margins == default) ? default : (void*)margins.NativePtr);
	}
	
	public void ToRect()
	{
		CQt.QRectF_ToRect(this.nativePtr);
	}
	
	public void ToAlignedRect()
	{
		CQt.QRectF_ToAlignedRect(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QRectF_new")]
	public static extern void* QRectF_new(void* other);
	[LinkName("QRectF_new2")]
	public static extern void* QRectF_new2(void* other);
	[LinkName("QRectF_new3")]
	public static extern void* QRectF_new3();
	[LinkName("QRectF_new4")]
	public static extern void* QRectF_new4(void* topleft, void* size);
	[LinkName("QRectF_new5")]
	public static extern void* QRectF_new5(void* topleft, void* bottomRight);
	[LinkName("QRectF_new6")]
	public static extern void* QRectF_new6(double left, double top, double width, double height);
	[LinkName("QRectF_new7")]
	public static extern void* QRectF_new7(void* rect);
	[LinkName("QRectF_new8")]
	public static extern void* QRectF_new8(void* param1);
	[LinkName("QRectF_IsNull")]
	public static extern bool QRectF_IsNull(void* c_this);
	[LinkName("QRectF_IsEmpty")]
	public static extern bool QRectF_IsEmpty(void* c_this);
	[LinkName("QRectF_IsValid")]
	public static extern bool QRectF_IsValid(void* c_this);
	[LinkName("QRectF_Normalized")]
	public static extern void QRectF_Normalized(void* c_this);
	[LinkName("QRectF_Left")]
	public static extern double QRectF_Left(void* c_this);
	[LinkName("QRectF_Top")]
	public static extern double QRectF_Top(void* c_this);
	[LinkName("QRectF_Right")]
	public static extern double QRectF_Right(void* c_this);
	[LinkName("QRectF_Bottom")]
	public static extern double QRectF_Bottom(void* c_this);
	[LinkName("QRectF_X")]
	public static extern double QRectF_X(void* c_this);
	[LinkName("QRectF_Y")]
	public static extern double QRectF_Y(void* c_this);
	[LinkName("QRectF_SetLeft")]
	public static extern void QRectF_SetLeft(void* c_this, double pos);
	[LinkName("QRectF_SetTop")]
	public static extern void QRectF_SetTop(void* c_this, double pos);
	[LinkName("QRectF_SetRight")]
	public static extern void QRectF_SetRight(void* c_this, double pos);
	[LinkName("QRectF_SetBottom")]
	public static extern void QRectF_SetBottom(void* c_this, double pos);
	[LinkName("QRectF_SetX")]
	public static extern void QRectF_SetX(void* c_this, double pos);
	[LinkName("QRectF_SetY")]
	public static extern void QRectF_SetY(void* c_this, double pos);
	[LinkName("QRectF_TopLeft")]
	public static extern void QRectF_TopLeft(void* c_this);
	[LinkName("QRectF_BottomRight")]
	public static extern void QRectF_BottomRight(void* c_this);
	[LinkName("QRectF_TopRight")]
	public static extern void QRectF_TopRight(void* c_this);
	[LinkName("QRectF_BottomLeft")]
	public static extern void QRectF_BottomLeft(void* c_this);
	[LinkName("QRectF_Center")]
	public static extern void QRectF_Center(void* c_this);
	[LinkName("QRectF_SetTopLeft")]
	public static extern void QRectF_SetTopLeft(void* c_this, void* p);
	[LinkName("QRectF_SetBottomRight")]
	public static extern void QRectF_SetBottomRight(void* c_this, void* p);
	[LinkName("QRectF_SetTopRight")]
	public static extern void QRectF_SetTopRight(void* c_this, void* p);
	[LinkName("QRectF_SetBottomLeft")]
	public static extern void QRectF_SetBottomLeft(void* c_this, void* p);
	[LinkName("QRectF_MoveLeft")]
	public static extern void QRectF_MoveLeft(void* c_this, double pos);
	[LinkName("QRectF_MoveTop")]
	public static extern void QRectF_MoveTop(void* c_this, double pos);
	[LinkName("QRectF_MoveRight")]
	public static extern void QRectF_MoveRight(void* c_this, double pos);
	[LinkName("QRectF_MoveBottom")]
	public static extern void QRectF_MoveBottom(void* c_this, double pos);
	[LinkName("QRectF_MoveTopLeft")]
	public static extern void QRectF_MoveTopLeft(void* c_this, void* p);
	[LinkName("QRectF_MoveBottomRight")]
	public static extern void QRectF_MoveBottomRight(void* c_this, void* p);
	[LinkName("QRectF_MoveTopRight")]
	public static extern void QRectF_MoveTopRight(void* c_this, void* p);
	[LinkName("QRectF_MoveBottomLeft")]
	public static extern void QRectF_MoveBottomLeft(void* c_this, void* p);
	[LinkName("QRectF_MoveCenter")]
	public static extern void QRectF_MoveCenter(void* c_this, void* p);
	[LinkName("QRectF_Translate")]
	public static extern void QRectF_Translate(void* c_this, double dx, double dy);
	[LinkName("QRectF_TranslateWithQPointF")]
	public static extern void QRectF_TranslateWithQPointF(void* c_this, void* p);
	[LinkName("QRectF_Translated")]
	public static extern void QRectF_Translated(void* c_this, double dx, double dy);
	[LinkName("QRectF_TranslatedWithQPointF")]
	public static extern void QRectF_TranslatedWithQPointF(void* c_this, void* p);
	[LinkName("QRectF_Transposed")]
	public static extern void QRectF_Transposed(void* c_this);
	[LinkName("QRectF_MoveTo")]
	public static extern void QRectF_MoveTo(void* c_this, double x, double y);
	[LinkName("QRectF_MoveToWithQPointF")]
	public static extern void QRectF_MoveToWithQPointF(void* c_this, void* p);
	[LinkName("QRectF_SetRect")]
	public static extern void QRectF_SetRect(void* c_this, double x, double y, double w, double h);
	[LinkName("QRectF_GetRect")]
	public static extern void QRectF_GetRect(void* c_this, double* x, double* y, double* w, double* h);
	[LinkName("QRectF_SetCoords")]
	public static extern void QRectF_SetCoords(void* c_this, double x1, double y1, double x2, double y2);
	[LinkName("QRectF_GetCoords")]
	public static extern void QRectF_GetCoords(void* c_this, double* x1, double* y1, double* x2, double* y2);
	[LinkName("QRectF_Adjust")]
	public static extern void QRectF_Adjust(void* c_this, double x1, double y1, double x2, double y2);
	[LinkName("QRectF_Adjusted")]
	public static extern void QRectF_Adjusted(void* c_this, double x1, double y1, double x2, double y2);
	[LinkName("QRectF_Size")]
	public static extern void QRectF_Size(void* c_this);
	[LinkName("QRectF_Width")]
	public static extern double QRectF_Width(void* c_this);
	[LinkName("QRectF_Height")]
	public static extern double QRectF_Height(void* c_this);
	[LinkName("QRectF_SetWidth")]
	public static extern void QRectF_SetWidth(void* c_this, double w);
	[LinkName("QRectF_SetHeight")]
	public static extern void QRectF_SetHeight(void* c_this, double h);
	[LinkName("QRectF_SetSize")]
	public static extern void QRectF_SetSize(void* c_this, void* s);
	[LinkName("QRectF_OperatorBitwiseOr")]
	public static extern void QRectF_OperatorBitwiseOr(void* c_this, void* r);
	[LinkName("QRectF_OperatorBitwiseAnd")]
	public static extern void QRectF_OperatorBitwiseAnd(void* c_this, void* r);
	[LinkName("QRectF_OperatorBitwiseOrAssign")]
	public static extern void QRectF_OperatorBitwiseOrAssign(void* c_this, void* r);
	[LinkName("QRectF_OperatorBitwiseAndAssign")]
	public static extern void QRectF_OperatorBitwiseAndAssign(void* c_this, void* r);
	[LinkName("QRectF_Contains")]
	public static extern bool QRectF_Contains(void* c_this, void* r);
	[LinkName("QRectF_ContainsWithQPointF")]
	public static extern bool QRectF_ContainsWithQPointF(void* c_this, void* p);
	[LinkName("QRectF_Contains2")]
	public static extern bool QRectF_Contains2(void* c_this, double x, double y);
	[LinkName("QRectF_United")]
	public static extern void QRectF_United(void* c_this, void* other);
	[LinkName("QRectF_Intersected")]
	public static extern void QRectF_Intersected(void* c_this, void* other);
	[LinkName("QRectF_Intersects")]
	public static extern bool QRectF_Intersects(void* c_this, void* r);
	[LinkName("QRectF_MarginsAdded")]
	public static extern void QRectF_MarginsAdded(void* c_this, void* margins);
	[LinkName("QRectF_MarginsRemoved")]
	public static extern void QRectF_MarginsRemoved(void* c_this, void* margins);
	[LinkName("QRectF_OperatorPlusAssign")]
	public static extern void* QRectF_OperatorPlusAssign(void* c_this, void* margins);
	[LinkName("QRectF_OperatorMinusAssign")]
	public static extern void* QRectF_OperatorMinusAssign(void* c_this, void* margins);
	[LinkName("QRectF_ToRect")]
	public static extern void QRectF_ToRect(void* c_this);
	[LinkName("QRectF_ToAlignedRect")]
	public static extern void QRectF_ToAlignedRect(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QRectF_Delete")]
	public static extern void QRectF_Delete(void* self);
}