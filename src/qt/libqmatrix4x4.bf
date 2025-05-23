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
public interface IQMatrix4x4
{
	void* NativePtr { get; }
}
public struct QMatrix4x4Ptr : IQMatrix4x4, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQMatrix4x4 other)
	{
		return .(CQt.QMatrix4x4_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QMatrix4x4_Delete(this.nativePtr);
	}
	
	public void Column(int32 index)
	{
		CQt.QMatrix4x4_Column(this.nativePtr, index);
	}
	
	public void SetColumn(int32 index, IQVector4D value)
	{
		CQt.QMatrix4x4_SetColumn(this.nativePtr, index, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public void Row(int32 index)
	{
		CQt.QMatrix4x4_Row(this.nativePtr, index);
	}
	
	public void SetRow(int32 index, IQVector4D value)
	{
		CQt.QMatrix4x4_SetRow(this.nativePtr, index, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public bool IsAffine()
	{
		return CQt.QMatrix4x4_IsAffine(this.nativePtr);
	}
	
	public bool IsIdentity()
	{
		return CQt.QMatrix4x4_IsIdentity(this.nativePtr);
	}
	
	public void SetToIdentity()
	{
		CQt.QMatrix4x4_SetToIdentity(this.nativePtr);
	}
	
	public void Fill(float value)
	{
		CQt.QMatrix4x4_Fill(this.nativePtr, value);
	}
	
	public double Determinant()
	{
		return CQt.QMatrix4x4_Determinant(this.nativePtr);
	}
	
	public void Inverted()
	{
		CQt.QMatrix4x4_Inverted(this.nativePtr);
	}
	
	public void Transposed()
	{
		CQt.QMatrix4x4_Transposed(this.nativePtr);
	}
	
	public void* OperatorPlusAssign(IQMatrix4x4 other)
	{
		return CQt.QMatrix4x4_OperatorPlusAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void* OperatorMinusAssign(IQMatrix4x4 other)
	{
		return CQt.QMatrix4x4_OperatorMinusAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void* OperatorMultiplyAssign(IQMatrix4x4 other)
	{
		return CQt.QMatrix4x4_OperatorMultiplyAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void* OperatorMultiplyAssignWithFactor(float factor)
	{
		return CQt.QMatrix4x4_OperatorMultiplyAssignWithFactor(this.nativePtr, factor);
	}
	
	public void* OperatorDivideAssign(float divisor)
	{
		return CQt.QMatrix4x4_OperatorDivideAssign(this.nativePtr, divisor);
	}
	
	public bool OperatorEqual(IQMatrix4x4 other)
	{
		return CQt.QMatrix4x4_OperatorEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorNotEqual(IQMatrix4x4 other)
	{
		return CQt.QMatrix4x4_OperatorNotEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void Scale(IQVector3D vector)
	{
		CQt.QMatrix4x4_Scale(this.nativePtr, (vector == default || vector.NativePtr == default) ? default : vector.NativePtr);
	}
	
	public void Translate(IQVector3D vector)
	{
		CQt.QMatrix4x4_Translate(this.nativePtr, (vector == default || vector.NativePtr == default) ? default : vector.NativePtr);
	}
	
	public void Rotate(float angle, IQVector3D vector)
	{
		CQt.QMatrix4x4_Rotate(this.nativePtr, angle, (vector == default || vector.NativePtr == default) ? default : vector.NativePtr);
	}
	
	public void Scale2(float x, float y)
	{
		CQt.QMatrix4x4_Scale2(this.nativePtr, x, y);
	}
	
	public void Scale3(float x, float y, float z)
	{
		CQt.QMatrix4x4_Scale3(this.nativePtr, x, y, z);
	}
	
	public void ScaleWithFactor(float factor)
	{
		CQt.QMatrix4x4_ScaleWithFactor(this.nativePtr, factor);
	}
	
	public void Translate2(float x, float y)
	{
		CQt.QMatrix4x4_Translate2(this.nativePtr, x, y);
	}
	
	public void Translate3(float x, float y, float z)
	{
		CQt.QMatrix4x4_Translate3(this.nativePtr, x, y, z);
	}
	
	public void Rotate2(float angle, float x, float y)
	{
		CQt.QMatrix4x4_Rotate2(this.nativePtr, angle, x, y);
	}
	
	public void RotateWithQuaternion(IQQuaternion quaternion)
	{
		CQt.QMatrix4x4_RotateWithQuaternion(this.nativePtr, (quaternion == default || quaternion.NativePtr == default) ? default : quaternion.NativePtr);
	}
	
	public void Ortho(IQRect rect)
	{
		CQt.QMatrix4x4_Ortho(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void OrthoWithRect(IQRectF rect)
	{
		CQt.QMatrix4x4_OrthoWithRect(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void Ortho2(float left, float right, float bottom, float top, float nearPlane, float farPlane)
	{
		CQt.QMatrix4x4_Ortho2(this.nativePtr, left, right, bottom, top, nearPlane, farPlane);
	}
	
	public void Frustum(float left, float right, float bottom, float top, float nearPlane, float farPlane)
	{
		CQt.QMatrix4x4_Frustum(this.nativePtr, left, right, bottom, top, nearPlane, farPlane);
	}
	
	public void Perspective(float verticalAngle, float aspectRatio, float nearPlane, float farPlane)
	{
		CQt.QMatrix4x4_Perspective(this.nativePtr, verticalAngle, aspectRatio, nearPlane, farPlane);
	}
	
	public void LookAt(IQVector3D eye, IQVector3D center, IQVector3D up)
	{
		CQt.QMatrix4x4_LookAt(this.nativePtr, (eye == default || eye.NativePtr == default) ? default : eye.NativePtr, (center == default || center.NativePtr == default) ? default : center.NativePtr, (up == default || up.NativePtr == default) ? default : up.NativePtr);
	}
	
	public void Viewport(IQRectF rect)
	{
		CQt.QMatrix4x4_Viewport(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void Viewport2(float left, float bottom, float width, float height)
	{
		CQt.QMatrix4x4_Viewport2(this.nativePtr, left, bottom, width, height);
	}
	
	public void FlipCoordinates()
	{
		CQt.QMatrix4x4_FlipCoordinates(this.nativePtr);
	}
	
	public void CopyDataTo(float* values)
	{
		CQt.QMatrix4x4_CopyDataTo(this.nativePtr, values);
	}
	
	public void ToTransform()
	{
		CQt.QMatrix4x4_ToTransform(this.nativePtr);
	}
	
	public void ToTransformWithDistanceToPlane(float distanceToPlane)
	{
		CQt.QMatrix4x4_ToTransformWithDistanceToPlane(this.nativePtr, distanceToPlane);
	}
	
	public void Map(IQPoint point)
	{
		CQt.QMatrix4x4_Map(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapWithPoint(IQPointF point)
	{
		CQt.QMatrix4x4_MapWithPoint(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void Map2(IQVector3D point)
	{
		CQt.QMatrix4x4_Map2(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapVector(IQVector3D vector)
	{
		CQt.QMatrix4x4_MapVector(this.nativePtr, (vector == default || vector.NativePtr == default) ? default : vector.NativePtr);
	}
	
	public void Map3(IQVector4D point)
	{
		CQt.QMatrix4x4_Map3(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapRect(IQRect rect)
	{
		CQt.QMatrix4x4_MapRect(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectWithRect(IQRectF rect)
	{
		CQt.QMatrix4x4_MapRectWithRect(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public float* Data()
	{
		return CQt.QMatrix4x4_Data(this.nativePtr);
	}
	
	public float* Data2()
	{
		return CQt.QMatrix4x4_Data2(this.nativePtr);
	}
	
	public float* ConstData()
	{
		return CQt.QMatrix4x4_ConstData(this.nativePtr);
	}
	
	public void Optimize()
	{
		CQt.QMatrix4x4_Optimize(this.nativePtr);
	}
	
	public void ToQVariant()
	{
		CQt.QMatrix4x4_ToQVariant(this.nativePtr);
	}
	
	public void ProjectedRotate(float angle, float x, float y, float z)
	{
		CQt.QMatrix4x4_ProjectedRotate(this.nativePtr, angle, x, y, z);
	}
	
	public int64 Flags()
	{
		return CQt.QMatrix4x4_Flags(this.nativePtr);
	}
	
	public void Inverted1(bool* invertible)
	{
		CQt.QMatrix4x4_Inverted1(this.nativePtr, invertible);
	}
	
	public void Rotate4(float angle, float x, float y, float z)
	{
		CQt.QMatrix4x4_Rotate4(this.nativePtr, angle, x, y, z);
	}
	
	public void Viewport5(float left, float bottom, float width, float height, float nearPlane)
	{
		CQt.QMatrix4x4_Viewport5(this.nativePtr, left, bottom, width, height, nearPlane);
	}
	
	public void Viewport6(float left, float bottom, float width, float height, float nearPlane, float farPlane)
	{
		CQt.QMatrix4x4_Viewport6(this.nativePtr, left, bottom, width, height, nearPlane, farPlane);
	}
	
}
public class QMatrix4x4
{
	public QMatrix4x4Ptr handle;
	
	public static implicit operator QMatrix4x4Ptr(Self self)
	{
		return self.handle;
	}
	
	public this(IQMatrix4x4 other)
	{
		this.handle = QMatrix4x4Ptr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void Column(int32 index)
	{
		this.handle.Column(index);
	}
	
	public void SetColumn(int32 index, IQVector4D value)
	{
		this.handle.SetColumn(index, value);
	}
	
	public void Row(int32 index)
	{
		this.handle.Row(index);
	}
	
	public void SetRow(int32 index, IQVector4D value)
	{
		this.handle.SetRow(index, value);
	}
	
	public bool IsAffine()
	{
		return this.handle.IsAffine();
	}
	
	public bool IsIdentity()
	{
		return this.handle.IsIdentity();
	}
	
	public void SetToIdentity()
	{
		this.handle.SetToIdentity();
	}
	
	public void Fill(float value)
	{
		this.handle.Fill(value);
	}
	
	public double Determinant()
	{
		return this.handle.Determinant();
	}
	
	public void Inverted()
	{
		this.handle.Inverted();
	}
	
	public void Transposed()
	{
		this.handle.Transposed();
	}
	
	public void* OperatorPlusAssign(IQMatrix4x4 other)
	{
		return this.handle.OperatorPlusAssign(other);
	}
	
	public void* OperatorMinusAssign(IQMatrix4x4 other)
	{
		return this.handle.OperatorMinusAssign(other);
	}
	
	public void* OperatorMultiplyAssign(IQMatrix4x4 other)
	{
		return this.handle.OperatorMultiplyAssign(other);
	}
	
	public void* OperatorMultiplyAssignWithFactor(float factor)
	{
		return this.handle.OperatorMultiplyAssignWithFactor(factor);
	}
	
	public void* OperatorDivideAssign(float divisor)
	{
		return this.handle.OperatorDivideAssign(divisor);
	}
	
	public bool OperatorEqual(IQMatrix4x4 other)
	{
		return this.handle.OperatorEqual(other);
	}
	
	public bool OperatorNotEqual(IQMatrix4x4 other)
	{
		return this.handle.OperatorNotEqual(other);
	}
	
	public void Scale(IQVector3D vector)
	{
		this.handle.Scale(vector);
	}
	
	public void Translate(IQVector3D vector)
	{
		this.handle.Translate(vector);
	}
	
	public void Rotate(float angle, IQVector3D vector)
	{
		this.handle.Rotate(angle, vector);
	}
	
	public void Scale2(float x, float y)
	{
		this.handle.Scale2(x, y);
	}
	
	public void Scale3(float x, float y, float z)
	{
		this.handle.Scale3(x, y, z);
	}
	
	public void ScaleWithFactor(float factor)
	{
		this.handle.ScaleWithFactor(factor);
	}
	
	public void Translate2(float x, float y)
	{
		this.handle.Translate2(x, y);
	}
	
	public void Translate3(float x, float y, float z)
	{
		this.handle.Translate3(x, y, z);
	}
	
	public void Rotate2(float angle, float x, float y)
	{
		this.handle.Rotate2(angle, x, y);
	}
	
	public void RotateWithQuaternion(IQQuaternion quaternion)
	{
		this.handle.RotateWithQuaternion(quaternion);
	}
	
	public void Ortho(IQRect rect)
	{
		this.handle.Ortho(rect);
	}
	
	public void OrthoWithRect(IQRectF rect)
	{
		this.handle.OrthoWithRect(rect);
	}
	
	public void Ortho2(float left, float right, float bottom, float top, float nearPlane, float farPlane)
	{
		this.handle.Ortho2(left, right, bottom, top, nearPlane, farPlane);
	}
	
	public void Frustum(float left, float right, float bottom, float top, float nearPlane, float farPlane)
	{
		this.handle.Frustum(left, right, bottom, top, nearPlane, farPlane);
	}
	
	public void Perspective(float verticalAngle, float aspectRatio, float nearPlane, float farPlane)
	{
		this.handle.Perspective(verticalAngle, aspectRatio, nearPlane, farPlane);
	}
	
	public void LookAt(IQVector3D eye, IQVector3D center, IQVector3D up)
	{
		this.handle.LookAt(eye, center, up);
	}
	
	public void Viewport(IQRectF rect)
	{
		this.handle.Viewport(rect);
	}
	
	public void Viewport2(float left, float bottom, float width, float height)
	{
		this.handle.Viewport2(left, bottom, width, height);
	}
	
	public void FlipCoordinates()
	{
		this.handle.FlipCoordinates();
	}
	
	public void CopyDataTo(float* values)
	{
		this.handle.CopyDataTo(values);
	}
	
	public void ToTransform()
	{
		this.handle.ToTransform();
	}
	
	public void ToTransformWithDistanceToPlane(float distanceToPlane)
	{
		this.handle.ToTransformWithDistanceToPlane(distanceToPlane);
	}
	
	public void Map(IQPoint point)
	{
		this.handle.Map(point);
	}
	
	public void MapWithPoint(IQPointF point)
	{
		this.handle.MapWithPoint(point);
	}
	
	public void Map2(IQVector3D point)
	{
		this.handle.Map2(point);
	}
	
	public void MapVector(IQVector3D vector)
	{
		this.handle.MapVector(vector);
	}
	
	public void Map3(IQVector4D point)
	{
		this.handle.Map3(point);
	}
	
	public void MapRect(IQRect rect)
	{
		this.handle.MapRect(rect);
	}
	
	public void MapRectWithRect(IQRectF rect)
	{
		this.handle.MapRectWithRect(rect);
	}
	
	public float* Data()
	{
		return this.handle.Data();
	}
	
	public float* Data2()
	{
		return this.handle.Data2();
	}
	
	public float* ConstData()
	{
		return this.handle.ConstData();
	}
	
	public void Optimize()
	{
		this.handle.Optimize();
	}
	
	public void ToQVariant()
	{
		this.handle.ToQVariant();
	}
	
	public void ProjectedRotate(float angle, float x, float y, float z)
	{
		this.handle.ProjectedRotate(angle, x, y, z);
	}
	
	public int64 Flags()
	{
		return this.handle.Flags();
	}
	
	public void Inverted1(bool* invertible)
	{
		this.handle.Inverted1(invertible);
	}
	
	public void Rotate4(float angle, float x, float y, float z)
	{
		this.handle.Rotate4(angle, x, y, z);
	}
	
	public void Viewport5(float left, float bottom, float width, float height, float nearPlane)
	{
		this.handle.Viewport5(left, bottom, width, height, nearPlane);
	}
	
	public void Viewport6(float left, float bottom, float width, float height, float nearPlane, float farPlane)
	{
		this.handle.Viewport6(left, bottom, width, height, nearPlane, farPlane);
	}
	
}
extension CQt
{
	[LinkName("QMatrix4x4_new")]
	public static extern void* QMatrix4x4_new(void* other);
	[LinkName("QMatrix4x4_new2")]
	public static extern void* QMatrix4x4_new2(void* other);
	[LinkName("QMatrix4x4_new3")]
	public static extern void* QMatrix4x4_new3();
	[LinkName("QMatrix4x4_new4")]
	public static extern void* QMatrix4x4_new4(int64 param1);
	[LinkName("QMatrix4x4_new5")]
	public static extern void* QMatrix4x4_new5(float* values);
	[LinkName("QMatrix4x4_new6")]
	public static extern void* QMatrix4x4_new6(float m11, float m12, float m13, float m14, float m21, float m22, float m23, float m24, float m31, float m32, float m33, float m34, float m41, float m42, float m43, float m44);
	[LinkName("QMatrix4x4_new7")]
	public static extern void* QMatrix4x4_new7(float* values, int32 cols, int32 rows);
	[LinkName("QMatrix4x4_new8")]
	public static extern void* QMatrix4x4_new8(void* transform);
	[LinkName("QMatrix4x4_new9")]
	public static extern void* QMatrix4x4_new9(void* param1);
	[LinkName("QMatrix4x4_Column")]
	public static extern void QMatrix4x4_Column(void* c_this, int32 index);
	[LinkName("QMatrix4x4_SetColumn")]
	public static extern void QMatrix4x4_SetColumn(void* c_this, int32 index, void* value);
	[LinkName("QMatrix4x4_Row")]
	public static extern void QMatrix4x4_Row(void* c_this, int32 index);
	[LinkName("QMatrix4x4_SetRow")]
	public static extern void QMatrix4x4_SetRow(void* c_this, int32 index, void* value);
	[LinkName("QMatrix4x4_IsAffine")]
	public static extern bool QMatrix4x4_IsAffine(void* c_this);
	[LinkName("QMatrix4x4_IsIdentity")]
	public static extern bool QMatrix4x4_IsIdentity(void* c_this);
	[LinkName("QMatrix4x4_SetToIdentity")]
	public static extern void QMatrix4x4_SetToIdentity(void* c_this);
	[LinkName("QMatrix4x4_Fill")]
	public static extern void QMatrix4x4_Fill(void* c_this, float value);
	[LinkName("QMatrix4x4_Determinant")]
	public static extern double QMatrix4x4_Determinant(void* c_this);
	[LinkName("QMatrix4x4_Inverted")]
	public static extern void QMatrix4x4_Inverted(void* c_this);
	[LinkName("QMatrix4x4_Transposed")]
	public static extern void QMatrix4x4_Transposed(void* c_this);
	[LinkName("QMatrix4x4_OperatorPlusAssign")]
	public static extern void* QMatrix4x4_OperatorPlusAssign(void* c_this, void* other);
	[LinkName("QMatrix4x4_OperatorMinusAssign")]
	public static extern void* QMatrix4x4_OperatorMinusAssign(void* c_this, void* other);
	[LinkName("QMatrix4x4_OperatorMultiplyAssign")]
	public static extern void* QMatrix4x4_OperatorMultiplyAssign(void* c_this, void* other);
	[LinkName("QMatrix4x4_OperatorMultiplyAssignWithFactor")]
	public static extern void* QMatrix4x4_OperatorMultiplyAssignWithFactor(void* c_this, float factor);
	[LinkName("QMatrix4x4_OperatorDivideAssign")]
	public static extern void* QMatrix4x4_OperatorDivideAssign(void* c_this, float divisor);
	[LinkName("QMatrix4x4_OperatorEqual")]
	public static extern bool QMatrix4x4_OperatorEqual(void* c_this, void* other);
	[LinkName("QMatrix4x4_OperatorNotEqual")]
	public static extern bool QMatrix4x4_OperatorNotEqual(void* c_this, void* other);
	[LinkName("QMatrix4x4_Scale")]
	public static extern void QMatrix4x4_Scale(void* c_this, void* vector);
	[LinkName("QMatrix4x4_Translate")]
	public static extern void QMatrix4x4_Translate(void* c_this, void* vector);
	[LinkName("QMatrix4x4_Rotate")]
	public static extern void QMatrix4x4_Rotate(void* c_this, float angle, void* vector);
	[LinkName("QMatrix4x4_Scale2")]
	public static extern void QMatrix4x4_Scale2(void* c_this, float x, float y);
	[LinkName("QMatrix4x4_Scale3")]
	public static extern void QMatrix4x4_Scale3(void* c_this, float x, float y, float z);
	[LinkName("QMatrix4x4_ScaleWithFactor")]
	public static extern void QMatrix4x4_ScaleWithFactor(void* c_this, float factor);
	[LinkName("QMatrix4x4_Translate2")]
	public static extern void QMatrix4x4_Translate2(void* c_this, float x, float y);
	[LinkName("QMatrix4x4_Translate3")]
	public static extern void QMatrix4x4_Translate3(void* c_this, float x, float y, float z);
	[LinkName("QMatrix4x4_Rotate2")]
	public static extern void QMatrix4x4_Rotate2(void* c_this, float angle, float x, float y);
	[LinkName("QMatrix4x4_RotateWithQuaternion")]
	public static extern void QMatrix4x4_RotateWithQuaternion(void* c_this, void* quaternion);
	[LinkName("QMatrix4x4_Ortho")]
	public static extern void QMatrix4x4_Ortho(void* c_this, void* rect);
	[LinkName("QMatrix4x4_OrthoWithRect")]
	public static extern void QMatrix4x4_OrthoWithRect(void* c_this, void* rect);
	[LinkName("QMatrix4x4_Ortho2")]
	public static extern void QMatrix4x4_Ortho2(void* c_this, float left, float right, float bottom, float top, float nearPlane, float farPlane);
	[LinkName("QMatrix4x4_Frustum")]
	public static extern void QMatrix4x4_Frustum(void* c_this, float left, float right, float bottom, float top, float nearPlane, float farPlane);
	[LinkName("QMatrix4x4_Perspective")]
	public static extern void QMatrix4x4_Perspective(void* c_this, float verticalAngle, float aspectRatio, float nearPlane, float farPlane);
	[LinkName("QMatrix4x4_LookAt")]
	public static extern void QMatrix4x4_LookAt(void* c_this, void* eye, void* center, void* up);
	[LinkName("QMatrix4x4_Viewport")]
	public static extern void QMatrix4x4_Viewport(void* c_this, void* rect);
	[LinkName("QMatrix4x4_Viewport2")]
	public static extern void QMatrix4x4_Viewport2(void* c_this, float left, float bottom, float width, float height);
	[LinkName("QMatrix4x4_FlipCoordinates")]
	public static extern void QMatrix4x4_FlipCoordinates(void* c_this);
	[LinkName("QMatrix4x4_CopyDataTo")]
	public static extern void QMatrix4x4_CopyDataTo(void* c_this, float* values);
	[LinkName("QMatrix4x4_ToTransform")]
	public static extern void QMatrix4x4_ToTransform(void* c_this);
	[LinkName("QMatrix4x4_ToTransformWithDistanceToPlane")]
	public static extern void QMatrix4x4_ToTransformWithDistanceToPlane(void* c_this, float distanceToPlane);
	[LinkName("QMatrix4x4_Map")]
	public static extern void QMatrix4x4_Map(void* c_this, void* point);
	[LinkName("QMatrix4x4_MapWithPoint")]
	public static extern void QMatrix4x4_MapWithPoint(void* c_this, void* point);
	[LinkName("QMatrix4x4_Map2")]
	public static extern void QMatrix4x4_Map2(void* c_this, void* point);
	[LinkName("QMatrix4x4_MapVector")]
	public static extern void QMatrix4x4_MapVector(void* c_this, void* vector);
	[LinkName("QMatrix4x4_Map3")]
	public static extern void QMatrix4x4_Map3(void* c_this, void* point);
	[LinkName("QMatrix4x4_MapRect")]
	public static extern void QMatrix4x4_MapRect(void* c_this, void* rect);
	[LinkName("QMatrix4x4_MapRectWithRect")]
	public static extern void QMatrix4x4_MapRectWithRect(void* c_this, void* rect);
	[LinkName("QMatrix4x4_Data")]
	public static extern float* QMatrix4x4_Data(void* c_this);
	[LinkName("QMatrix4x4_Data2")]
	public static extern float* QMatrix4x4_Data2(void* c_this);
	[LinkName("QMatrix4x4_ConstData")]
	public static extern float* QMatrix4x4_ConstData(void* c_this);
	[LinkName("QMatrix4x4_Optimize")]
	public static extern void QMatrix4x4_Optimize(void* c_this);
	[LinkName("QMatrix4x4_ToQVariant")]
	public static extern void QMatrix4x4_ToQVariant(void* c_this);
	[LinkName("QMatrix4x4_ProjectedRotate")]
	public static extern void QMatrix4x4_ProjectedRotate(void* c_this, float angle, float x, float y, float z);
	[LinkName("QMatrix4x4_Flags")]
	public static extern int64 QMatrix4x4_Flags(void* c_this);
	[LinkName("QMatrix4x4_Inverted1")]
	public static extern void QMatrix4x4_Inverted1(void* c_this, bool* invertible);
	[LinkName("QMatrix4x4_Rotate4")]
	public static extern void QMatrix4x4_Rotate4(void* c_this, float angle, float x, float y, float z);
	[LinkName("QMatrix4x4_Viewport5")]
	public static extern void QMatrix4x4_Viewport5(void* c_this, float left, float bottom, float width, float height, float nearPlane);
	[LinkName("QMatrix4x4_Viewport6")]
	public static extern void QMatrix4x4_Viewport6(void* c_this, float left, float bottom, float width, float height, float nearPlane, float farPlane);
	/// Delete this object from C++ memory
	[LinkName("QMatrix4x4_Delete")]
	public static extern void QMatrix4x4_Delete(void* self);
}