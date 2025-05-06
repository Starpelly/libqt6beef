using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QMatrix4x4__Flag
{
	Identity = 0,
	Translation = 1,
	Scale = 2,
	Rotation2D = 4,
	Rotation = 8,
	Perspective = 16,
	General = 31,
}
public struct QMatrix4x4
{
	[LinkName("QMatrix4x4_new")]
	public static extern QMatrix4x4* QMatrix4x4_new(QMatrix4x4* other);
	[LinkName("QMatrix4x4_new2")]
	public static extern QMatrix4x4* QMatrix4x4_new2(QMatrix4x4* other);
	[LinkName("QMatrix4x4_new3")]
	public static extern QMatrix4x4* QMatrix4x4_new3();
	[LinkName("QMatrix4x4_new4")]
	public static extern QMatrix4x4* QMatrix4x4_new4(int64 param1);
	[LinkName("QMatrix4x4_new5")]
	public static extern QMatrix4x4* QMatrix4x4_new5(float* values);
	[LinkName("QMatrix4x4_new6")]
	public static extern QMatrix4x4* QMatrix4x4_new6(float m11, float m12, float m13, float m14, float m21, float m22, float m23, float m24, float m31, float m32, float m33, float m34, float m41, float m42, float m43, float m44);
	[LinkName("QMatrix4x4_new7")]
	public static extern QMatrix4x4* QMatrix4x4_new7(float* values, int32 cols, int32 rows);
	[LinkName("QMatrix4x4_new8")]
	public static extern QMatrix4x4* QMatrix4x4_new8(QTransform* transform);
	[LinkName("QMatrix4x4_new9")]
	public static extern QMatrix4x4* QMatrix4x4_new9(QMatrix4x4* param1);
	[LinkName("QMatrix4x4_Column")]
	public static extern QVector4D QMatrix4x4_Column(Self* c_this, int32 index);
	[LinkName("QMatrix4x4_SetColumn")]
	public static extern void QMatrix4x4_SetColumn(Self* c_this, int32 index, QVector4D* value);
	[LinkName("QMatrix4x4_Row")]
	public static extern QVector4D QMatrix4x4_Row(Self* c_this, int32 index);
	[LinkName("QMatrix4x4_SetRow")]
	public static extern void QMatrix4x4_SetRow(Self* c_this, int32 index, QVector4D* value);
	[LinkName("QMatrix4x4_IsAffine")]
	public static extern bool QMatrix4x4_IsAffine(Self* c_this);
	[LinkName("QMatrix4x4_IsIdentity")]
	public static extern bool QMatrix4x4_IsIdentity(Self* c_this);
	[LinkName("QMatrix4x4_SetToIdentity")]
	public static extern void QMatrix4x4_SetToIdentity(Self* c_this);
	[LinkName("QMatrix4x4_Fill")]
	public static extern void QMatrix4x4_Fill(Self* c_this, float value);
	[LinkName("QMatrix4x4_Determinant")]
	public static extern double QMatrix4x4_Determinant(Self* c_this);
	[LinkName("QMatrix4x4_Inverted")]
	public static extern QMatrix4x4 QMatrix4x4_Inverted(Self* c_this);
	[LinkName("QMatrix4x4_Transposed")]
	public static extern QMatrix4x4 QMatrix4x4_Transposed(Self* c_this);
	[LinkName("QMatrix4x4_OperatorPlusAssign")]
	public static extern QMatrix4x4* QMatrix4x4_OperatorPlusAssign(Self* c_this, QMatrix4x4* other);
	[LinkName("QMatrix4x4_OperatorMinusAssign")]
	public static extern QMatrix4x4* QMatrix4x4_OperatorMinusAssign(Self* c_this, QMatrix4x4* other);
	[LinkName("QMatrix4x4_OperatorMultiplyAssign")]
	public static extern QMatrix4x4* QMatrix4x4_OperatorMultiplyAssign(Self* c_this, QMatrix4x4* other);
	[LinkName("QMatrix4x4_OperatorMultiplyAssignWithFactor")]
	public static extern QMatrix4x4* QMatrix4x4_OperatorMultiplyAssignWithFactor(Self* c_this, float factor);
	[LinkName("QMatrix4x4_OperatorDivideAssign")]
	public static extern QMatrix4x4* QMatrix4x4_OperatorDivideAssign(Self* c_this, float divisor);
	[LinkName("QMatrix4x4_OperatorEqual")]
	public static extern bool QMatrix4x4_OperatorEqual(Self* c_this, QMatrix4x4* other);
	[LinkName("QMatrix4x4_OperatorNotEqual")]
	public static extern bool QMatrix4x4_OperatorNotEqual(Self* c_this, QMatrix4x4* other);
	[LinkName("QMatrix4x4_Scale")]
	public static extern void QMatrix4x4_Scale(Self* c_this, QVector3D* vector);
	[LinkName("QMatrix4x4_Translate")]
	public static extern void QMatrix4x4_Translate(Self* c_this, QVector3D* vector);
	[LinkName("QMatrix4x4_Rotate")]
	public static extern void QMatrix4x4_Rotate(Self* c_this, float angle, QVector3D* vector);
	[LinkName("QMatrix4x4_Scale2")]
	public static extern void QMatrix4x4_Scale2(Self* c_this, float x, float y);
	[LinkName("QMatrix4x4_Scale3")]
	public static extern void QMatrix4x4_Scale3(Self* c_this, float x, float y, float z);
	[LinkName("QMatrix4x4_ScaleWithFactor")]
	public static extern void QMatrix4x4_ScaleWithFactor(Self* c_this, float factor);
	[LinkName("QMatrix4x4_Translate2")]
	public static extern void QMatrix4x4_Translate2(Self* c_this, float x, float y);
	[LinkName("QMatrix4x4_Translate3")]
	public static extern void QMatrix4x4_Translate3(Self* c_this, float x, float y, float z);
	[LinkName("QMatrix4x4_Rotate2")]
	public static extern void QMatrix4x4_Rotate2(Self* c_this, float angle, float x, float y);
	[LinkName("QMatrix4x4_RotateWithQuaternion")]
	public static extern void QMatrix4x4_RotateWithQuaternion(Self* c_this, QQuaternion* quaternion);
	[LinkName("QMatrix4x4_Ortho")]
	public static extern void QMatrix4x4_Ortho(Self* c_this, QRect* rect);
	[LinkName("QMatrix4x4_OrthoWithRect")]
	public static extern void QMatrix4x4_OrthoWithRect(Self* c_this, QRectF* rect);
	[LinkName("QMatrix4x4_Ortho2")]
	public static extern void QMatrix4x4_Ortho2(Self* c_this, float left, float right, float bottom, float top, float nearPlane, float farPlane);
	[LinkName("QMatrix4x4_Frustum")]
	public static extern void QMatrix4x4_Frustum(Self* c_this, float left, float right, float bottom, float top, float nearPlane, float farPlane);
	[LinkName("QMatrix4x4_Perspective")]
	public static extern void QMatrix4x4_Perspective(Self* c_this, float verticalAngle, float aspectRatio, float nearPlane, float farPlane);
	[LinkName("QMatrix4x4_LookAt")]
	public static extern void QMatrix4x4_LookAt(Self* c_this, QVector3D* eye, QVector3D* center, QVector3D* up);
	[LinkName("QMatrix4x4_Viewport")]
	public static extern void QMatrix4x4_Viewport(Self* c_this, QRectF* rect);
	[LinkName("QMatrix4x4_Viewport2")]
	public static extern void QMatrix4x4_Viewport2(Self* c_this, float left, float bottom, float width, float height);
	[LinkName("QMatrix4x4_FlipCoordinates")]
	public static extern void QMatrix4x4_FlipCoordinates(Self* c_this);
	[LinkName("QMatrix4x4_CopyDataTo")]
	public static extern void QMatrix4x4_CopyDataTo(Self* c_this, float* values);
	[LinkName("QMatrix4x4_ToTransform")]
	public static extern QTransform QMatrix4x4_ToTransform(Self* c_this);
	[LinkName("QMatrix4x4_ToTransformWithDistanceToPlane")]
	public static extern QTransform QMatrix4x4_ToTransformWithDistanceToPlane(Self* c_this, float distanceToPlane);
	[LinkName("QMatrix4x4_Map")]
	public static extern QPoint QMatrix4x4_Map(Self* c_this, QPoint* point);
	[LinkName("QMatrix4x4_MapWithPoint")]
	public static extern QPointF QMatrix4x4_MapWithPoint(Self* c_this, QPointF* point);
	[LinkName("QMatrix4x4_Map2")]
	public static extern QVector3D QMatrix4x4_Map2(Self* c_this, QVector3D* point);
	[LinkName("QMatrix4x4_MapVector")]
	public static extern QVector3D QMatrix4x4_MapVector(Self* c_this, QVector3D* vector);
	[LinkName("QMatrix4x4_Map3")]
	public static extern QVector4D QMatrix4x4_Map3(Self* c_this, QVector4D* point);
	[LinkName("QMatrix4x4_MapRect")]
	public static extern QRect QMatrix4x4_MapRect(Self* c_this, QRect* rect);
	[LinkName("QMatrix4x4_MapRectWithRect")]
	public static extern QRectF QMatrix4x4_MapRectWithRect(Self* c_this, QRectF* rect);
	[LinkName("QMatrix4x4_Data")]
	public static extern float* QMatrix4x4_Data(Self* c_this);
	[LinkName("QMatrix4x4_Data2")]
	public static extern float* QMatrix4x4_Data2(Self* c_this);
	[LinkName("QMatrix4x4_ConstData")]
	public static extern float* QMatrix4x4_ConstData(Self* c_this);
	[LinkName("QMatrix4x4_Optimize")]
	public static extern void QMatrix4x4_Optimize(Self* c_this);
	[LinkName("QMatrix4x4_ToQVariant")]
	public static extern QVariant QMatrix4x4_ToQVariant(Self* c_this);
	[LinkName("QMatrix4x4_ProjectedRotate")]
	public static extern void QMatrix4x4_ProjectedRotate(Self* c_this, float angle, float x, float y, float z);
	[LinkName("QMatrix4x4_Flags")]
	public static extern int64 QMatrix4x4_Flags(Self* c_this);
	[LinkName("QMatrix4x4_Inverted1")]
	public static extern QMatrix4x4 QMatrix4x4_Inverted1(Self* c_this, bool* invertible);
	[LinkName("QMatrix4x4_Rotate4")]
	public static extern void QMatrix4x4_Rotate4(Self* c_this, float angle, float x, float y, float z);
	[LinkName("QMatrix4x4_Viewport5")]
	public static extern void QMatrix4x4_Viewport5(Self* c_this, float left, float bottom, float width, float height, float nearPlane);
	[LinkName("QMatrix4x4_Viewport6")]
	public static extern void QMatrix4x4_Viewport6(Self* c_this, float left, float bottom, float width, float height, float nearPlane, float farPlane);
}