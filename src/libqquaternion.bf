using System;
using System.Interop;
namespace Qt;

public struct QQuaternion
{
	[LinkName("QQuaternion_new")]
	public static extern void* QQuaternion_new(QQuaternion other);
	[LinkName("QQuaternion_new2")]
	public static extern void* QQuaternion_new2(QQuaternion other);
	[LinkName("QQuaternion_new3")]
	public static extern void* QQuaternion_new3();
	[LinkName("QQuaternion_new4")]
	public static extern void* QQuaternion_new4(int64 param1);
	[LinkName("QQuaternion_new5")]
	public static extern void* QQuaternion_new5(float scalar, float xpos, float ypos, float zpos);
	[LinkName("QQuaternion_new6")]
	public static extern void* QQuaternion_new6(float scalar, QVector3D vector);
	[LinkName("QQuaternion_new7")]
	public static extern void* QQuaternion_new7(QVector4D vector);
	[LinkName("QQuaternion_new8")]
	public static extern void* QQuaternion_new8(QQuaternion param1);
	[LinkName("QQuaternion_IsNull")]
	public static extern bool QQuaternion_IsNull(void* c_this);
	[LinkName("QQuaternion_IsIdentity")]
	public static extern bool QQuaternion_IsIdentity(void* c_this);
	[LinkName("QQuaternion_Vector")]
	public static extern QVector3D QQuaternion_Vector(void* c_this);
	[LinkName("QQuaternion_SetVector")]
	public static extern void QQuaternion_SetVector(void* c_this, QVector3D vector);
	[LinkName("QQuaternion_SetVector2")]
	public static extern void QQuaternion_SetVector2(void* c_this, float x, float y, float z);
	[LinkName("QQuaternion_X")]
	public static extern float QQuaternion_X(void* c_this);
	[LinkName("QQuaternion_Y")]
	public static extern float QQuaternion_Y(void* c_this);
	[LinkName("QQuaternion_Z")]
	public static extern float QQuaternion_Z(void* c_this);
	[LinkName("QQuaternion_Scalar")]
	public static extern float QQuaternion_Scalar(void* c_this);
	[LinkName("QQuaternion_SetX")]
	public static extern void QQuaternion_SetX(void* c_this, float x);
	[LinkName("QQuaternion_SetY")]
	public static extern void QQuaternion_SetY(void* c_this, float y);
	[LinkName("QQuaternion_SetZ")]
	public static extern void QQuaternion_SetZ(void* c_this, float z);
	[LinkName("QQuaternion_SetScalar")]
	public static extern void QQuaternion_SetScalar(void* c_this, float scalar);
	[LinkName("QQuaternion_DotProduct")]
	public static extern float QQuaternion_DotProduct(QQuaternion q1, QQuaternion q2);
	[LinkName("QQuaternion_Length")]
	public static extern float QQuaternion_Length(void* c_this);
	[LinkName("QQuaternion_LengthSquared")]
	public static extern float QQuaternion_LengthSquared(void* c_this);
	[LinkName("QQuaternion_Normalized")]
	public static extern QQuaternion QQuaternion_Normalized(void* c_this);
	[LinkName("QQuaternion_Normalize")]
	public static extern void QQuaternion_Normalize(void* c_this);
	[LinkName("QQuaternion_Inverted")]
	public static extern QQuaternion QQuaternion_Inverted(void* c_this);
	[LinkName("QQuaternion_Conjugated")]
	public static extern QQuaternion QQuaternion_Conjugated(void* c_this);
	[LinkName("QQuaternion_RotatedVector")]
	public static extern QVector3D QQuaternion_RotatedVector(void* c_this, QVector3D vector);
	[LinkName("QQuaternion_OperatorPlusAssign")]
	public static extern QQuaternion QQuaternion_OperatorPlusAssign(void* c_this, QQuaternion quaternion);
	[LinkName("QQuaternion_OperatorMinusAssign")]
	public static extern QQuaternion QQuaternion_OperatorMinusAssign(void* c_this, QQuaternion quaternion);
	[LinkName("QQuaternion_OperatorMultiplyAssign")]
	public static extern QQuaternion QQuaternion_OperatorMultiplyAssign(void* c_this, float factor);
	[LinkName("QQuaternion_OperatorMultiplyAssignWithQuaternion")]
	public static extern QQuaternion QQuaternion_OperatorMultiplyAssignWithQuaternion(void* c_this, QQuaternion quaternion);
	[LinkName("QQuaternion_OperatorDivideAssign")]
	public static extern QQuaternion QQuaternion_OperatorDivideAssign(void* c_this, float divisor);
	[LinkName("QQuaternion_ToVector4D")]
	public static extern QVector4D QQuaternion_ToVector4D(void* c_this);
	[LinkName("QQuaternion_ToQVariant")]
	public static extern QVariant QQuaternion_ToQVariant(void* c_this);
	[LinkName("QQuaternion_GetAxisAndAngle")]
	public static extern void QQuaternion_GetAxisAndAngle(void* c_this, QVector3D axis, float angle);
	[LinkName("QQuaternion_FromAxisAndAngle")]
	public static extern QQuaternion QQuaternion_FromAxisAndAngle(QVector3D axis, float angle);
	[LinkName("QQuaternion_GetAxisAndAngle2")]
	public static extern void QQuaternion_GetAxisAndAngle2(void* c_this, float x, float y, float z, float angle);
	[LinkName("QQuaternion_FromAxisAndAngle2")]
	public static extern QQuaternion QQuaternion_FromAxisAndAngle2(float x, float y, float z, float angle);
	[LinkName("QQuaternion_ToEulerAngles")]
	public static extern QVector3D QQuaternion_ToEulerAngles(void* c_this);
	[LinkName("QQuaternion_FromEulerAngles")]
	public static extern QQuaternion QQuaternion_FromEulerAngles(QVector3D eulerAngles);
	[LinkName("QQuaternion_GetEulerAngles")]
	public static extern void QQuaternion_GetEulerAngles(void* c_this, float pitch, float yaw, float roll);
	[LinkName("QQuaternion_FromEulerAngles2")]
	public static extern QQuaternion QQuaternion_FromEulerAngles2(float pitch, float yaw, float roll);
	[LinkName("QQuaternion_GetAxes")]
	public static extern void QQuaternion_GetAxes(void* c_this, QVector3D xAxis, QVector3D yAxis, QVector3D zAxis);
	[LinkName("QQuaternion_FromAxes")]
	public static extern QQuaternion QQuaternion_FromAxes(QVector3D xAxis, QVector3D yAxis, QVector3D zAxis);
	[LinkName("QQuaternion_FromDirection")]
	public static extern QQuaternion QQuaternion_FromDirection(QVector3D direction, QVector3D up);
	[LinkName("QQuaternion_RotationTo")]
	public static extern QQuaternion QQuaternion_RotationTo(QVector3D from, QVector3D to);
	[LinkName("QQuaternion_Slerp")]
	public static extern QQuaternion QQuaternion_Slerp(QQuaternion q1, QQuaternion q2, float t);
	[LinkName("QQuaternion_Nlerp")]
	public static extern QQuaternion QQuaternion_Nlerp(QQuaternion q1, QQuaternion q2, float t);
}