using System;
using System.Interop;
namespace Qt;

public struct QVector2D
{
	[LinkName("QVector2D_new")]
	public static extern QVector2D* QVector2D_new(QVector2D* other);
	[LinkName("QVector2D_new2")]
	public static extern QVector2D* QVector2D_new2(QVector2D* other);
	[LinkName("QVector2D_new3")]
	public static extern QVector2D* QVector2D_new3();
	[LinkName("QVector2D_new4")]
	public static extern QVector2D* QVector2D_new4(int64 param1);
	[LinkName("QVector2D_new5")]
	public static extern QVector2D* QVector2D_new5(float xpos, float ypos);
	[LinkName("QVector2D_new6")]
	public static extern QVector2D* QVector2D_new6(QPoint point);
	[LinkName("QVector2D_new7")]
	public static extern QVector2D* QVector2D_new7(QPointF point);
	[LinkName("QVector2D_new8")]
	public static extern QVector2D* QVector2D_new8(QVector3D vector);
	[LinkName("QVector2D_new9")]
	public static extern QVector2D* QVector2D_new9(QVector4D vector);
	[LinkName("QVector2D_new10")]
	public static extern QVector2D* QVector2D_new10(QVector2D* param1);
	[LinkName("QVector2D_IsNull")]
	public static extern bool QVector2D_IsNull(Self* c_this);
	[LinkName("QVector2D_X")]
	public static extern float QVector2D_X(Self* c_this);
	[LinkName("QVector2D_Y")]
	public static extern float QVector2D_Y(Self* c_this);
	[LinkName("QVector2D_SetX")]
	public static extern void QVector2D_SetX(Self* c_this, float x);
	[LinkName("QVector2D_SetY")]
	public static extern void QVector2D_SetY(Self* c_this, float y);
	[LinkName("QVector2D_OperatorSubscript")]
	public static extern float QVector2D_OperatorSubscript(Self* c_this, int32 i);
	[LinkName("QVector2D_Length")]
	public static extern float QVector2D_Length(Self* c_this);
	[LinkName("QVector2D_LengthSquared")]
	public static extern float QVector2D_LengthSquared(Self* c_this);
	[LinkName("QVector2D_Normalized")]
	public static extern QVector2D QVector2D_Normalized(Self* c_this);
	[LinkName("QVector2D_Normalize")]
	public static extern void QVector2D_Normalize(Self* c_this);
	[LinkName("QVector2D_DistanceToPoint")]
	public static extern float QVector2D_DistanceToPoint(Self* c_this, QVector2D point);
	[LinkName("QVector2D_DistanceToLine")]
	public static extern float QVector2D_DistanceToLine(Self* c_this, QVector2D point, QVector2D direction);
	[LinkName("QVector2D_OperatorPlusAssign")]
	public static extern QVector2D* QVector2D_OperatorPlusAssign(Self* c_this, QVector2D vector);
	[LinkName("QVector2D_OperatorMinusAssign")]
	public static extern QVector2D* QVector2D_OperatorMinusAssign(Self* c_this, QVector2D vector);
	[LinkName("QVector2D_OperatorMultiplyAssign")]
	public static extern QVector2D* QVector2D_OperatorMultiplyAssign(Self* c_this, float factor);
	[LinkName("QVector2D_OperatorMultiplyAssignWithVector")]
	public static extern QVector2D* QVector2D_OperatorMultiplyAssignWithVector(Self* c_this, QVector2D vector);
	[LinkName("QVector2D_OperatorDivideAssign")]
	public static extern QVector2D* QVector2D_OperatorDivideAssign(Self* c_this, float divisor);
	[LinkName("QVector2D_OperatorDivideAssignWithVector")]
	public static extern QVector2D* QVector2D_OperatorDivideAssignWithVector(Self* c_this, QVector2D vector);
	[LinkName("QVector2D_DotProduct")]
	public static extern float QVector2D_DotProduct(QVector2D v1, QVector2D v2);
	[LinkName("QVector2D_ToVector3D")]
	public static extern QVector3D QVector2D_ToVector3D(Self* c_this);
	[LinkName("QVector2D_ToVector4D")]
	public static extern QVector4D QVector2D_ToVector4D(Self* c_this);
	[LinkName("QVector2D_ToPoint")]
	public static extern QPoint QVector2D_ToPoint(Self* c_this);
	[LinkName("QVector2D_ToPointF")]
	public static extern QPointF QVector2D_ToPointF(Self* c_this);
	[LinkName("QVector2D_ToQVariant")]
	public static extern QVariant QVector2D_ToQVariant(Self* c_this);
}
public struct QVector3D
{
	[LinkName("QVector3D_new")]
	public static extern QVector3D* QVector3D_new(QVector3D* other);
	[LinkName("QVector3D_new2")]
	public static extern QVector3D* QVector3D_new2(QVector3D* other);
	[LinkName("QVector3D_new3")]
	public static extern QVector3D* QVector3D_new3();
	[LinkName("QVector3D_new4")]
	public static extern QVector3D* QVector3D_new4(int64 param1);
	[LinkName("QVector3D_new5")]
	public static extern QVector3D* QVector3D_new5(float xpos, float ypos, float zpos);
	[LinkName("QVector3D_new6")]
	public static extern QVector3D* QVector3D_new6(QPoint point);
	[LinkName("QVector3D_new7")]
	public static extern QVector3D* QVector3D_new7(QPointF point);
	[LinkName("QVector3D_new8")]
	public static extern QVector3D* QVector3D_new8(QVector2D vector);
	[LinkName("QVector3D_new9")]
	public static extern QVector3D* QVector3D_new9(QVector2D vector, float zpos);
	[LinkName("QVector3D_new10")]
	public static extern QVector3D* QVector3D_new10(QVector4D vector);
	[LinkName("QVector3D_new11")]
	public static extern QVector3D* QVector3D_new11(QVector3D* param1);
	[LinkName("QVector3D_IsNull")]
	public static extern bool QVector3D_IsNull(Self* c_this);
	[LinkName("QVector3D_X")]
	public static extern float QVector3D_X(Self* c_this);
	[LinkName("QVector3D_Y")]
	public static extern float QVector3D_Y(Self* c_this);
	[LinkName("QVector3D_Z")]
	public static extern float QVector3D_Z(Self* c_this);
	[LinkName("QVector3D_SetX")]
	public static extern void QVector3D_SetX(Self* c_this, float x);
	[LinkName("QVector3D_SetY")]
	public static extern void QVector3D_SetY(Self* c_this, float y);
	[LinkName("QVector3D_SetZ")]
	public static extern void QVector3D_SetZ(Self* c_this, float z);
	[LinkName("QVector3D_OperatorSubscript")]
	public static extern float QVector3D_OperatorSubscript(Self* c_this, int32 i);
	[LinkName("QVector3D_Length")]
	public static extern float QVector3D_Length(Self* c_this);
	[LinkName("QVector3D_LengthSquared")]
	public static extern float QVector3D_LengthSquared(Self* c_this);
	[LinkName("QVector3D_Normalized")]
	public static extern QVector3D QVector3D_Normalized(Self* c_this);
	[LinkName("QVector3D_Normalize")]
	public static extern void QVector3D_Normalize(Self* c_this);
	[LinkName("QVector3D_OperatorPlusAssign")]
	public static extern QVector3D* QVector3D_OperatorPlusAssign(Self* c_this, QVector3D vector);
	[LinkName("QVector3D_OperatorMinusAssign")]
	public static extern QVector3D* QVector3D_OperatorMinusAssign(Self* c_this, QVector3D vector);
	[LinkName("QVector3D_OperatorMultiplyAssign")]
	public static extern QVector3D* QVector3D_OperatorMultiplyAssign(Self* c_this, float factor);
	[LinkName("QVector3D_OperatorMultiplyAssignWithVector")]
	public static extern QVector3D* QVector3D_OperatorMultiplyAssignWithVector(Self* c_this, QVector3D vector);
	[LinkName("QVector3D_OperatorDivideAssign")]
	public static extern QVector3D* QVector3D_OperatorDivideAssign(Self* c_this, float divisor);
	[LinkName("QVector3D_OperatorDivideAssignWithVector")]
	public static extern QVector3D* QVector3D_OperatorDivideAssignWithVector(Self* c_this, QVector3D vector);
	[LinkName("QVector3D_DotProduct")]
	public static extern float QVector3D_DotProduct(QVector3D v1, QVector3D v2);
	[LinkName("QVector3D_CrossProduct")]
	public static extern QVector3D QVector3D_CrossProduct(QVector3D v1, QVector3D v2);
	[LinkName("QVector3D_Normal")]
	public static extern QVector3D QVector3D_Normal(QVector3D v1, QVector3D v2);
	[LinkName("QVector3D_Normal2")]
	public static extern QVector3D QVector3D_Normal2(QVector3D v1, QVector3D v2, QVector3D v3);
	[LinkName("QVector3D_Project")]
	public static extern QVector3D QVector3D_Project(Self* c_this, QMatrix4x4* modelView, QMatrix4x4* projection, QRect* viewport);
	[LinkName("QVector3D_Unproject")]
	public static extern QVector3D QVector3D_Unproject(Self* c_this, QMatrix4x4* modelView, QMatrix4x4* projection, QRect* viewport);
	[LinkName("QVector3D_DistanceToPoint")]
	public static extern float QVector3D_DistanceToPoint(Self* c_this, QVector3D point);
	[LinkName("QVector3D_DistanceToPlane")]
	public static extern float QVector3D_DistanceToPlane(Self* c_this, QVector3D plane, QVector3D normal);
	[LinkName("QVector3D_DistanceToPlane2")]
	public static extern float QVector3D_DistanceToPlane2(Self* c_this, QVector3D plane1, QVector3D plane2, QVector3D plane3);
	[LinkName("QVector3D_DistanceToLine")]
	public static extern float QVector3D_DistanceToLine(Self* c_this, QVector3D point, QVector3D direction);
	[LinkName("QVector3D_ToVector2D")]
	public static extern QVector2D QVector3D_ToVector2D(Self* c_this);
	[LinkName("QVector3D_ToVector4D")]
	public static extern QVector4D QVector3D_ToVector4D(Self* c_this);
	[LinkName("QVector3D_ToPoint")]
	public static extern QPoint QVector3D_ToPoint(Self* c_this);
	[LinkName("QVector3D_ToPointF")]
	public static extern QPointF QVector3D_ToPointF(Self* c_this);
	[LinkName("QVector3D_ToQVariant")]
	public static extern QVariant QVector3D_ToQVariant(Self* c_this);
}
public struct QVector4D
{
	[LinkName("QVector4D_new")]
	public static extern QVector4D* QVector4D_new(QVector4D* other);
	[LinkName("QVector4D_new2")]
	public static extern QVector4D* QVector4D_new2(QVector4D* other);
	[LinkName("QVector4D_new3")]
	public static extern QVector4D* QVector4D_new3();
	[LinkName("QVector4D_new4")]
	public static extern QVector4D* QVector4D_new4(int64 param1);
	[LinkName("QVector4D_new5")]
	public static extern QVector4D* QVector4D_new5(float xpos, float ypos, float zpos, float wpos);
	[LinkName("QVector4D_new6")]
	public static extern QVector4D* QVector4D_new6(QPoint point);
	[LinkName("QVector4D_new7")]
	public static extern QVector4D* QVector4D_new7(QPointF point);
	[LinkName("QVector4D_new8")]
	public static extern QVector4D* QVector4D_new8(QVector2D vector);
	[LinkName("QVector4D_new9")]
	public static extern QVector4D* QVector4D_new9(QVector2D vector, float zpos, float wpos);
	[LinkName("QVector4D_new10")]
	public static extern QVector4D* QVector4D_new10(QVector3D vector);
	[LinkName("QVector4D_new11")]
	public static extern QVector4D* QVector4D_new11(QVector3D vector, float wpos);
	[LinkName("QVector4D_new12")]
	public static extern QVector4D* QVector4D_new12(QVector4D* param1);
	[LinkName("QVector4D_IsNull")]
	public static extern bool QVector4D_IsNull(Self* c_this);
	[LinkName("QVector4D_X")]
	public static extern float QVector4D_X(Self* c_this);
	[LinkName("QVector4D_Y")]
	public static extern float QVector4D_Y(Self* c_this);
	[LinkName("QVector4D_Z")]
	public static extern float QVector4D_Z(Self* c_this);
	[LinkName("QVector4D_W")]
	public static extern float QVector4D_W(Self* c_this);
	[LinkName("QVector4D_SetX")]
	public static extern void QVector4D_SetX(Self* c_this, float x);
	[LinkName("QVector4D_SetY")]
	public static extern void QVector4D_SetY(Self* c_this, float y);
	[LinkName("QVector4D_SetZ")]
	public static extern void QVector4D_SetZ(Self* c_this, float z);
	[LinkName("QVector4D_SetW")]
	public static extern void QVector4D_SetW(Self* c_this, float w);
	[LinkName("QVector4D_OperatorSubscript")]
	public static extern float QVector4D_OperatorSubscript(Self* c_this, int32 i);
	[LinkName("QVector4D_Length")]
	public static extern float QVector4D_Length(Self* c_this);
	[LinkName("QVector4D_LengthSquared")]
	public static extern float QVector4D_LengthSquared(Self* c_this);
	[LinkName("QVector4D_Normalized")]
	public static extern QVector4D QVector4D_Normalized(Self* c_this);
	[LinkName("QVector4D_Normalize")]
	public static extern void QVector4D_Normalize(Self* c_this);
	[LinkName("QVector4D_OperatorPlusAssign")]
	public static extern QVector4D* QVector4D_OperatorPlusAssign(Self* c_this, QVector4D vector);
	[LinkName("QVector4D_OperatorMinusAssign")]
	public static extern QVector4D* QVector4D_OperatorMinusAssign(Self* c_this, QVector4D vector);
	[LinkName("QVector4D_OperatorMultiplyAssign")]
	public static extern QVector4D* QVector4D_OperatorMultiplyAssign(Self* c_this, float factor);
	[LinkName("QVector4D_OperatorMultiplyAssignWithVector")]
	public static extern QVector4D* QVector4D_OperatorMultiplyAssignWithVector(Self* c_this, QVector4D vector);
	[LinkName("QVector4D_OperatorDivideAssign")]
	public static extern QVector4D* QVector4D_OperatorDivideAssign(Self* c_this, float divisor);
	[LinkName("QVector4D_OperatorDivideAssignWithVector")]
	public static extern QVector4D* QVector4D_OperatorDivideAssignWithVector(Self* c_this, QVector4D vector);
	[LinkName("QVector4D_DotProduct")]
	public static extern float QVector4D_DotProduct(QVector4D v1, QVector4D v2);
	[LinkName("QVector4D_ToVector2D")]
	public static extern QVector2D QVector4D_ToVector2D(Self* c_this);
	[LinkName("QVector4D_ToVector2DAffine")]
	public static extern QVector2D QVector4D_ToVector2DAffine(Self* c_this);
	[LinkName("QVector4D_ToVector3D")]
	public static extern QVector3D QVector4D_ToVector3D(Self* c_this);
	[LinkName("QVector4D_ToVector3DAffine")]
	public static extern QVector3D QVector4D_ToVector3DAffine(Self* c_this);
	[LinkName("QVector4D_ToPoint")]
	public static extern QPoint QVector4D_ToPoint(Self* c_this);
	[LinkName("QVector4D_ToPointF")]
	public static extern QPointF QVector4D_ToPointF(Self* c_this);
	[LinkName("QVector4D_ToQVariant")]
	public static extern QVariant QVector4D_ToQVariant(Self* c_this);
}