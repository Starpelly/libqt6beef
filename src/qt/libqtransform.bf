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
public struct QTransform
{
	[LinkName("QTransform_new")]
	public static extern QTransform* QTransform_new(QTransform* other);
	[LinkName("QTransform_new2")]
	public static extern QTransform* QTransform_new2(QTransform* other);
	[LinkName("QTransform_new3")]
	public static extern QTransform* QTransform_new3(int64 param1);
	[LinkName("QTransform_new4")]
	public static extern QTransform* QTransform_new4();
	[LinkName("QTransform_new5")]
	public static extern QTransform* QTransform_new5(double h11, double h12, double h13, double h21, double h22, double h23, double h31, double h32, double h33);
	[LinkName("QTransform_new6")]
	public static extern QTransform* QTransform_new6(double h11, double h12, double h21, double h22, double dx, double dy);
	[LinkName("QTransform_new7")]
	public static extern QTransform* QTransform_new7(QTransform* other);
	[LinkName("QTransform_OperatorAssign")]
	public static extern void QTransform_OperatorAssign(Self* c_this, QTransform* param1);
	[LinkName("QTransform_IsAffine")]
	public static extern bool QTransform_IsAffine(Self* c_this);
	[LinkName("QTransform_IsIdentity")]
	public static extern bool QTransform_IsIdentity(Self* c_this);
	[LinkName("QTransform_IsInvertible")]
	public static extern bool QTransform_IsInvertible(Self* c_this);
	[LinkName("QTransform_IsScaling")]
	public static extern bool QTransform_IsScaling(Self* c_this);
	[LinkName("QTransform_IsRotating")]
	public static extern bool QTransform_IsRotating(Self* c_this);
	[LinkName("QTransform_IsTranslating")]
	public static extern bool QTransform_IsTranslating(Self* c_this);
	[LinkName("QTransform_Type")]
	public static extern int64 QTransform_Type(Self* c_this);
	[LinkName("QTransform_Determinant")]
	public static extern double QTransform_Determinant(Self* c_this);
	[LinkName("QTransform_M11")]
	public static extern double QTransform_M11(Self* c_this);
	[LinkName("QTransform_M12")]
	public static extern double QTransform_M12(Self* c_this);
	[LinkName("QTransform_M13")]
	public static extern double QTransform_M13(Self* c_this);
	[LinkName("QTransform_M21")]
	public static extern double QTransform_M21(Self* c_this);
	[LinkName("QTransform_M22")]
	public static extern double QTransform_M22(Self* c_this);
	[LinkName("QTransform_M23")]
	public static extern double QTransform_M23(Self* c_this);
	[LinkName("QTransform_M31")]
	public static extern double QTransform_M31(Self* c_this);
	[LinkName("QTransform_M32")]
	public static extern double QTransform_M32(Self* c_this);
	[LinkName("QTransform_M33")]
	public static extern double QTransform_M33(Self* c_this);
	[LinkName("QTransform_Dx")]
	public static extern double QTransform_Dx(Self* c_this);
	[LinkName("QTransform_Dy")]
	public static extern double QTransform_Dy(Self* c_this);
	[LinkName("QTransform_SetMatrix")]
	public static extern void QTransform_SetMatrix(Self* c_this, double m11, double m12, double m13, double m21, double m22, double m23, double m31, double m32, double m33);
	[LinkName("QTransform_Inverted")]
	public static extern QTransform QTransform_Inverted(Self* c_this);
	[LinkName("QTransform_Adjoint")]
	public static extern QTransform QTransform_Adjoint(Self* c_this);
	[LinkName("QTransform_Transposed")]
	public static extern QTransform QTransform_Transposed(Self* c_this);
	[LinkName("QTransform_Translate")]
	public static extern QTransform* QTransform_Translate(Self* c_this, double dx, double dy);
	[LinkName("QTransform_Scale")]
	public static extern QTransform* QTransform_Scale(Self* c_this, double sx, double sy);
	[LinkName("QTransform_Shear")]
	public static extern QTransform* QTransform_Shear(Self* c_this, double sh, double sv);
	[LinkName("QTransform_Rotate")]
	public static extern QTransform* QTransform_Rotate(Self* c_this, double a);
	[LinkName("QTransform_RotateRadians")]
	public static extern QTransform* QTransform_RotateRadians(Self* c_this, double a);
	[LinkName("QTransform_OperatorEqual")]
	public static extern bool QTransform_OperatorEqual(Self* c_this, QTransform* param1);
	[LinkName("QTransform_OperatorNotEqual")]
	public static extern bool QTransform_OperatorNotEqual(Self* c_this, QTransform* param1);
	[LinkName("QTransform_OperatorMultiplyAssign")]
	public static extern QTransform* QTransform_OperatorMultiplyAssign(Self* c_this, QTransform* param1);
	[LinkName("QTransform_OperatorMultiply")]
	public static extern QTransform QTransform_OperatorMultiply(Self* c_this, QTransform* o);
	[LinkName("QTransform_ToQVariant")]
	public static extern QVariant QTransform_ToQVariant(Self* c_this);
	[LinkName("QTransform_Reset")]
	public static extern void QTransform_Reset(Self* c_this);
	[LinkName("QTransform_Map")]
	public static extern QPoint QTransform_Map(Self* c_this, QPoint* p);
	[LinkName("QTransform_MapWithQPointF")]
	public static extern QPointF QTransform_MapWithQPointF(Self* c_this, QPointF* p);
	[LinkName("QTransform_MapWithQLine")]
	public static extern QLine QTransform_MapWithQLine(Self* c_this, QLine* l);
	[LinkName("QTransform_MapWithQLineF")]
	public static extern QLineF QTransform_MapWithQLineF(Self* c_this, QLineF* l);
	[LinkName("QTransform_MapWithQRegion")]
	public static extern QRegion QTransform_MapWithQRegion(Self* c_this, QRegion* r);
	[LinkName("QTransform_MapWithQPainterPath")]
	public static extern QPainterPath QTransform_MapWithQPainterPath(Self* c_this, QPainterPath* p);
	[LinkName("QTransform_MapRect")]
	public static extern QRect QTransform_MapRect(Self* c_this, QRect* param1);
	[LinkName("QTransform_MapRectWithQRectF")]
	public static extern QRectF QTransform_MapRectWithQRectF(Self* c_this, QRectF* param1);
	[LinkName("QTransform_Map2")]
	public static extern void QTransform_Map2(Self* c_this, int32 x, int32 y, int32* tx, int32* ty);
	[LinkName("QTransform_Map3")]
	public static extern void QTransform_Map3(Self* c_this, double x, double y, double* tx, double* ty);
	[LinkName("QTransform_OperatorMultiplyAssignWithDiv")]
	public static extern QTransform* QTransform_OperatorMultiplyAssignWithDiv(Self* c_this, double div);
	[LinkName("QTransform_OperatorDivideAssign")]
	public static extern QTransform* QTransform_OperatorDivideAssign(Self* c_this, double div);
	[LinkName("QTransform_OperatorPlusAssign")]
	public static extern QTransform* QTransform_OperatorPlusAssign(Self* c_this, double div);
	[LinkName("QTransform_OperatorMinusAssign")]
	public static extern QTransform* QTransform_OperatorMinusAssign(Self* c_this, double div);
	[LinkName("QTransform_FromTranslate")]
	public static extern QTransform QTransform_FromTranslate(double dx, double dy);
	[LinkName("QTransform_FromScale")]
	public static extern QTransform QTransform_FromScale(double dx, double dy);
	[LinkName("QTransform_Inverted1")]
	public static extern QTransform QTransform_Inverted1(Self* c_this, bool* invertible);
	[LinkName("QTransform_Rotate2")]
	public static extern QTransform* QTransform_Rotate2(Self* c_this, double a, int64 axis);
	[LinkName("QTransform_RotateRadians2")]
	public static extern QTransform* QTransform_RotateRadians2(Self* c_this, double a, int64 axis);
}