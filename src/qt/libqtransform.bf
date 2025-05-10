using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QTransform__TransformationType
{
	TxNone = 0,
	TxTranslate = 1,
	TxScale = 2,
	TxRotate = 4,
	TxShear = 8,
	TxProject = 16,
}
public class QTransform
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QTransform_new(other);
	}
	
	public ~this()
	{
		CQt.QTransform_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* param1)
	{
		CQt.QTransform_OperatorAssign(this.nativePtr, param1);
	}
	
	public bool IsAffine()
	{
		return CQt.QTransform_IsAffine(this.nativePtr);
	}
	
	public bool IsIdentity()
	{
		return CQt.QTransform_IsIdentity(this.nativePtr);
	}
	
	public bool IsInvertible()
	{
		return CQt.QTransform_IsInvertible(this.nativePtr);
	}
	
	public bool IsScaling()
	{
		return CQt.QTransform_IsScaling(this.nativePtr);
	}
	
	public bool IsRotating()
	{
		return CQt.QTransform_IsRotating(this.nativePtr);
	}
	
	public bool IsTranslating()
	{
		return CQt.QTransform_IsTranslating(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QTransform_Type(this.nativePtr);
	}
	
	public double Determinant()
	{
		return CQt.QTransform_Determinant(this.nativePtr);
	}
	
	public double M11()
	{
		return CQt.QTransform_M11(this.nativePtr);
	}
	
	public double M12()
	{
		return CQt.QTransform_M12(this.nativePtr);
	}
	
	public double M13()
	{
		return CQt.QTransform_M13(this.nativePtr);
	}
	
	public double M21()
	{
		return CQt.QTransform_M21(this.nativePtr);
	}
	
	public double M22()
	{
		return CQt.QTransform_M22(this.nativePtr);
	}
	
	public double M23()
	{
		return CQt.QTransform_M23(this.nativePtr);
	}
	
	public double M31()
	{
		return CQt.QTransform_M31(this.nativePtr);
	}
	
	public double M32()
	{
		return CQt.QTransform_M32(this.nativePtr);
	}
	
	public double M33()
	{
		return CQt.QTransform_M33(this.nativePtr);
	}
	
	public double Dx()
	{
		return CQt.QTransform_Dx(this.nativePtr);
	}
	
	public double Dy()
	{
		return CQt.QTransform_Dy(this.nativePtr);
	}
	
	public void SetMatrix(double m11, double m12, double m13, double m21, double m22, double m23, double m31, double m32, double m33)
	{
		CQt.QTransform_SetMatrix(this.nativePtr, m11, m12, m13, m21, m22, m23, m31, m32, m33);
	}
	
	public void Inverted()
	{
		CQt.QTransform_Inverted(this.nativePtr);
	}
	
	public void Adjoint()
	{
		CQt.QTransform_Adjoint(this.nativePtr);
	}
	
	public void Transposed()
	{
		CQt.QTransform_Transposed(this.nativePtr);
	}
	
	public void* Translate(double dx, double dy)
	{
		return CQt.QTransform_Translate(this.nativePtr, dx, dy);
	}
	
	public void* Scale(double sx, double sy)
	{
		return CQt.QTransform_Scale(this.nativePtr, sx, sy);
	}
	
	public void* Shear(double sh, double sv)
	{
		return CQt.QTransform_Shear(this.nativePtr, sh, sv);
	}
	
	public void* Rotate(double a)
	{
		return CQt.QTransform_Rotate(this.nativePtr, a);
	}
	
	public void* RotateRadians(double a)
	{
		return CQt.QTransform_RotateRadians(this.nativePtr, a);
	}
	
	public bool OperatorEqual(void* param1)
	{
		return CQt.QTransform_OperatorEqual(this.nativePtr, param1);
	}
	
	public bool OperatorNotEqual(void* param1)
	{
		return CQt.QTransform_OperatorNotEqual(this.nativePtr, param1);
	}
	
	public void* OperatorMultiplyAssign(void* param1)
	{
		return CQt.QTransform_OperatorMultiplyAssign(this.nativePtr, param1);
	}
	
	public void OperatorMultiply(void* o)
	{
		CQt.QTransform_OperatorMultiply(this.nativePtr, o);
	}
	
	public void ToQVariant()
	{
		CQt.QTransform_ToQVariant(this.nativePtr);
	}
	
	public void Reset()
	{
		CQt.QTransform_Reset(this.nativePtr);
	}
	
	public void Map(void* p)
	{
		CQt.QTransform_Map(this.nativePtr, p);
	}
	
	public void MapWithQPointF(void* p)
	{
		CQt.QTransform_MapWithQPointF(this.nativePtr, p);
	}
	
	public void MapWithQLine(void* l)
	{
		CQt.QTransform_MapWithQLine(this.nativePtr, l);
	}
	
	public void MapWithQLineF(void* l)
	{
		CQt.QTransform_MapWithQLineF(this.nativePtr, l);
	}
	
	public void MapWithQRegion(void* r)
	{
		CQt.QTransform_MapWithQRegion(this.nativePtr, r);
	}
	
	public void MapWithQPainterPath(void* p)
	{
		CQt.QTransform_MapWithQPainterPath(this.nativePtr, p);
	}
	
	public void MapRect(void* param1)
	{
		CQt.QTransform_MapRect(this.nativePtr, param1);
	}
	
	public void MapRectWithQRectF(void* param1)
	{
		CQt.QTransform_MapRectWithQRectF(this.nativePtr, param1);
	}
	
	public void Map2(int32 x, int32 y, int32* tx, int32* ty)
	{
		CQt.QTransform_Map2(this.nativePtr, x, y, tx, ty);
	}
	
	public void Map3(double x, double y, double* tx, double* ty)
	{
		CQt.QTransform_Map3(this.nativePtr, x, y, tx, ty);
	}
	
	public void* OperatorMultiplyAssignWithDiv(double div)
	{
		return CQt.QTransform_OperatorMultiplyAssignWithDiv(this.nativePtr, div);
	}
	
	public void* OperatorDivideAssign(double div)
	{
		return CQt.QTransform_OperatorDivideAssign(this.nativePtr, div);
	}
	
	public void* OperatorPlusAssign(double div)
	{
		return CQt.QTransform_OperatorPlusAssign(this.nativePtr, div);
	}
	
	public void* OperatorMinusAssign(double div)
	{
		return CQt.QTransform_OperatorMinusAssign(this.nativePtr, div);
	}
	
	public static void FromTranslate(double dx, double dy)
	{
		CQt.QTransform_FromTranslate(dx, dy);
	}
	
	public static void FromScale(double dx, double dy)
	{
		CQt.QTransform_FromScale(dx, dy);
	}
	
	public void Inverted1(bool* invertible)
	{
		CQt.QTransform_Inverted1(this.nativePtr, invertible);
	}
	
	public void* Rotate2(double a, int64 axis)
	{
		return CQt.QTransform_Rotate2(this.nativePtr, a, axis);
	}
	
	public void* RotateRadians2(double a, int64 axis)
	{
		return CQt.QTransform_RotateRadians2(this.nativePtr, a, axis);
	}
	
}
extension CQt
{
	[LinkName("QTransform_new")]
	public static extern void* QTransform_new(void* other);
	[LinkName("QTransform_new2")]
	public static extern void* QTransform_new2(void* other);
	[LinkName("QTransform_new3")]
	public static extern void* QTransform_new3(int64 param1);
	[LinkName("QTransform_new4")]
	public static extern void* QTransform_new4();
	[LinkName("QTransform_new5")]
	public static extern void* QTransform_new5(double h11, double h12, double h13, double h21, double h22, double h23, double h31, double h32, double h33);
	[LinkName("QTransform_new6")]
	public static extern void* QTransform_new6(double h11, double h12, double h21, double h22, double dx, double dy);
	[LinkName("QTransform_new7")]
	public static extern void* QTransform_new7(void* other);
	[LinkName("QTransform_OperatorAssign")]
	public static extern void QTransform_OperatorAssign(void* c_this, void* param1);
	[LinkName("QTransform_IsAffine")]
	public static extern bool QTransform_IsAffine(void* c_this);
	[LinkName("QTransform_IsIdentity")]
	public static extern bool QTransform_IsIdentity(void* c_this);
	[LinkName("QTransform_IsInvertible")]
	public static extern bool QTransform_IsInvertible(void* c_this);
	[LinkName("QTransform_IsScaling")]
	public static extern bool QTransform_IsScaling(void* c_this);
	[LinkName("QTransform_IsRotating")]
	public static extern bool QTransform_IsRotating(void* c_this);
	[LinkName("QTransform_IsTranslating")]
	public static extern bool QTransform_IsTranslating(void* c_this);
	[LinkName("QTransform_Type")]
	public static extern int64 QTransform_Type(void* c_this);
	[LinkName("QTransform_Determinant")]
	public static extern double QTransform_Determinant(void* c_this);
	[LinkName("QTransform_M11")]
	public static extern double QTransform_M11(void* c_this);
	[LinkName("QTransform_M12")]
	public static extern double QTransform_M12(void* c_this);
	[LinkName("QTransform_M13")]
	public static extern double QTransform_M13(void* c_this);
	[LinkName("QTransform_M21")]
	public static extern double QTransform_M21(void* c_this);
	[LinkName("QTransform_M22")]
	public static extern double QTransform_M22(void* c_this);
	[LinkName("QTransform_M23")]
	public static extern double QTransform_M23(void* c_this);
	[LinkName("QTransform_M31")]
	public static extern double QTransform_M31(void* c_this);
	[LinkName("QTransform_M32")]
	public static extern double QTransform_M32(void* c_this);
	[LinkName("QTransform_M33")]
	public static extern double QTransform_M33(void* c_this);
	[LinkName("QTransform_Dx")]
	public static extern double QTransform_Dx(void* c_this);
	[LinkName("QTransform_Dy")]
	public static extern double QTransform_Dy(void* c_this);
	[LinkName("QTransform_SetMatrix")]
	public static extern void QTransform_SetMatrix(void* c_this, double m11, double m12, double m13, double m21, double m22, double m23, double m31, double m32, double m33);
	[LinkName("QTransform_Inverted")]
	public static extern void QTransform_Inverted(void* c_this);
	[LinkName("QTransform_Adjoint")]
	public static extern void QTransform_Adjoint(void* c_this);
	[LinkName("QTransform_Transposed")]
	public static extern void QTransform_Transposed(void* c_this);
	[LinkName("QTransform_Translate")]
	public static extern void* QTransform_Translate(void* c_this, double dx, double dy);
	[LinkName("QTransform_Scale")]
	public static extern void* QTransform_Scale(void* c_this, double sx, double sy);
	[LinkName("QTransform_Shear")]
	public static extern void* QTransform_Shear(void* c_this, double sh, double sv);
	[LinkName("QTransform_Rotate")]
	public static extern void* QTransform_Rotate(void* c_this, double a);
	[LinkName("QTransform_RotateRadians")]
	public static extern void* QTransform_RotateRadians(void* c_this, double a);
	[LinkName("QTransform_OperatorEqual")]
	public static extern bool QTransform_OperatorEqual(void* c_this, void* param1);
	[LinkName("QTransform_OperatorNotEqual")]
	public static extern bool QTransform_OperatorNotEqual(void* c_this, void* param1);
	[LinkName("QTransform_OperatorMultiplyAssign")]
	public static extern void* QTransform_OperatorMultiplyAssign(void* c_this, void* param1);
	[LinkName("QTransform_OperatorMultiply")]
	public static extern void QTransform_OperatorMultiply(void* c_this, void* o);
	[LinkName("QTransform_ToQVariant")]
	public static extern void QTransform_ToQVariant(void* c_this);
	[LinkName("QTransform_Reset")]
	public static extern void QTransform_Reset(void* c_this);
	[LinkName("QTransform_Map")]
	public static extern void QTransform_Map(void* c_this, void* p);
	[LinkName("QTransform_MapWithQPointF")]
	public static extern void QTransform_MapWithQPointF(void* c_this, void* p);
	[LinkName("QTransform_MapWithQLine")]
	public static extern void QTransform_MapWithQLine(void* c_this, void* l);
	[LinkName("QTransform_MapWithQLineF")]
	public static extern void QTransform_MapWithQLineF(void* c_this, void* l);
	[LinkName("QTransform_MapWithQRegion")]
	public static extern void QTransform_MapWithQRegion(void* c_this, void* r);
	[LinkName("QTransform_MapWithQPainterPath")]
	public static extern void QTransform_MapWithQPainterPath(void* c_this, void* p);
	[LinkName("QTransform_MapRect")]
	public static extern void QTransform_MapRect(void* c_this, void* param1);
	[LinkName("QTransform_MapRectWithQRectF")]
	public static extern void QTransform_MapRectWithQRectF(void* c_this, void* param1);
	[LinkName("QTransform_Map2")]
	public static extern void QTransform_Map2(void* c_this, int32 x, int32 y, int32* tx, int32* ty);
	[LinkName("QTransform_Map3")]
	public static extern void QTransform_Map3(void* c_this, double x, double y, double* tx, double* ty);
	[LinkName("QTransform_OperatorMultiplyAssignWithDiv")]
	public static extern void* QTransform_OperatorMultiplyAssignWithDiv(void* c_this, double div);
	[LinkName("QTransform_OperatorDivideAssign")]
	public static extern void* QTransform_OperatorDivideAssign(void* c_this, double div);
	[LinkName("QTransform_OperatorPlusAssign")]
	public static extern void* QTransform_OperatorPlusAssign(void* c_this, double div);
	[LinkName("QTransform_OperatorMinusAssign")]
	public static extern void* QTransform_OperatorMinusAssign(void* c_this, double div);
	[LinkName("QTransform_FromTranslate")]
	public static extern void QTransform_FromTranslate(double dx, double dy);
	[LinkName("QTransform_FromScale")]
	public static extern void QTransform_FromScale(double dx, double dy);
	[LinkName("QTransform_Inverted1")]
	public static extern void QTransform_Inverted1(void* c_this, bool* invertible);
	[LinkName("QTransform_Rotate2")]
	public static extern void* QTransform_Rotate2(void* c_this, double a, int64 axis);
	[LinkName("QTransform_RotateRadians2")]
	public static extern void* QTransform_RotateRadians2(void* c_this, double a, int64 axis);
	/// Delete this object from C++ memory
	[LinkName("QTransform_Delete")]
	public static extern void QTransform_Delete(void* self);
}