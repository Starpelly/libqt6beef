using System;
using System.Interop;
namespace Qt;

public interface IQQuaternion
{
	void* NativePtr { get; }
}
public struct QQuaternionPtr : IQQuaternion, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQQuaternion other)
	{
		return .(CQt.QQuaternion_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QQuaternion_Delete(this.nativePtr);
	}
	
	public bool IsNull()
	{
		return CQt.QQuaternion_IsNull(this.nativePtr);
	}
	
	public bool IsIdentity()
	{
		return CQt.QQuaternion_IsIdentity(this.nativePtr);
	}
	
	public void Vector()
	{
		CQt.QQuaternion_Vector(this.nativePtr);
	}
	
	public void SetVector(IQVector3D vector)
	{
		CQt.QQuaternion_SetVector(this.nativePtr, (vector == default || vector.NativePtr == default) ? default : vector.NativePtr);
	}
	
	public void SetVector2(float x, float y, float z)
	{
		CQt.QQuaternion_SetVector2(this.nativePtr, x, y, z);
	}
	
	public float X()
	{
		return CQt.QQuaternion_X(this.nativePtr);
	}
	
	public float Y()
	{
		return CQt.QQuaternion_Y(this.nativePtr);
	}
	
	public float Z()
	{
		return CQt.QQuaternion_Z(this.nativePtr);
	}
	
	public float Scalar()
	{
		return CQt.QQuaternion_Scalar(this.nativePtr);
	}
	
	public void SetX(float x)
	{
		CQt.QQuaternion_SetX(this.nativePtr, x);
	}
	
	public void SetY(float y)
	{
		CQt.QQuaternion_SetY(this.nativePtr, y);
	}
	
	public void SetZ(float z)
	{
		CQt.QQuaternion_SetZ(this.nativePtr, z);
	}
	
	public void SetScalar(float scalar)
	{
		CQt.QQuaternion_SetScalar(this.nativePtr, scalar);
	}
	
	public static float DotProduct(IQQuaternion q1, IQQuaternion q2)
	{
		return CQt.QQuaternion_DotProduct((q1 == default || q1.NativePtr == default) ? default : q1.NativePtr, (q2 == default || q2.NativePtr == default) ? default : q2.NativePtr);
	}
	
	public float Length()
	{
		return CQt.QQuaternion_Length(this.nativePtr);
	}
	
	public float LengthSquared()
	{
		return CQt.QQuaternion_LengthSquared(this.nativePtr);
	}
	
	public void Normalized()
	{
		CQt.QQuaternion_Normalized(this.nativePtr);
	}
	
	public void Normalize()
	{
		CQt.QQuaternion_Normalize(this.nativePtr);
	}
	
	public void Inverted()
	{
		CQt.QQuaternion_Inverted(this.nativePtr);
	}
	
	public void Conjugated()
	{
		CQt.QQuaternion_Conjugated(this.nativePtr);
	}
	
	public void RotatedVector(IQVector3D vector)
	{
		CQt.QQuaternion_RotatedVector(this.nativePtr, (vector == default || vector.NativePtr == default) ? default : vector.NativePtr);
	}
	
	public void* OperatorPlusAssign(IQQuaternion quaternion)
	{
		return CQt.QQuaternion_OperatorPlusAssign(this.nativePtr, (quaternion == default || quaternion.NativePtr == default) ? default : quaternion.NativePtr);
	}
	
	public void* OperatorMinusAssign(IQQuaternion quaternion)
	{
		return CQt.QQuaternion_OperatorMinusAssign(this.nativePtr, (quaternion == default || quaternion.NativePtr == default) ? default : quaternion.NativePtr);
	}
	
	public void* OperatorMultiplyAssign(float factor)
	{
		return CQt.QQuaternion_OperatorMultiplyAssign(this.nativePtr, factor);
	}
	
	public void* OperatorMultiplyAssignWithQuaternion(IQQuaternion quaternion)
	{
		return CQt.QQuaternion_OperatorMultiplyAssignWithQuaternion(this.nativePtr, (quaternion == default || quaternion.NativePtr == default) ? default : quaternion.NativePtr);
	}
	
	public void* OperatorDivideAssign(float divisor)
	{
		return CQt.QQuaternion_OperatorDivideAssign(this.nativePtr, divisor);
	}
	
	public void ToVector4D()
	{
		CQt.QQuaternion_ToVector4D(this.nativePtr);
	}
	
	public void ToQVariant()
	{
		CQt.QQuaternion_ToQVariant(this.nativePtr);
	}
	
	public void GetAxisAndAngle(IQVector3D axis, float* angle)
	{
		CQt.QQuaternion_GetAxisAndAngle(this.nativePtr, (axis == default || axis.NativePtr == default) ? default : axis.NativePtr, angle);
	}
	
	public static void FromAxisAndAngle(IQVector3D axis, float angle)
	{
		CQt.QQuaternion_FromAxisAndAngle((axis == default || axis.NativePtr == default) ? default : axis.NativePtr, angle);
	}
	
	public void GetAxisAndAngle2(float* x, float* y, float* z, float* angle)
	{
		CQt.QQuaternion_GetAxisAndAngle2(this.nativePtr, x, y, z, angle);
	}
	
	public static void FromAxisAndAngle2(float x, float y, float z, float angle)
	{
		CQt.QQuaternion_FromAxisAndAngle2(x, y, z, angle);
	}
	
	public void ToEulerAngles()
	{
		CQt.QQuaternion_ToEulerAngles(this.nativePtr);
	}
	
	public static void FromEulerAngles(IQVector3D eulerAngles)
	{
		CQt.QQuaternion_FromEulerAngles((eulerAngles == default || eulerAngles.NativePtr == default) ? default : eulerAngles.NativePtr);
	}
	
	public void GetEulerAngles(float* pitch, float* yaw, float* roll)
	{
		CQt.QQuaternion_GetEulerAngles(this.nativePtr, pitch, yaw, roll);
	}
	
	public static void FromEulerAngles2(float pitch, float yaw, float roll)
	{
		CQt.QQuaternion_FromEulerAngles2(pitch, yaw, roll);
	}
	
	public void GetAxes(IQVector3D xAxis, IQVector3D yAxis, IQVector3D zAxis)
	{
		CQt.QQuaternion_GetAxes(this.nativePtr, (xAxis == default || xAxis.NativePtr == default) ? default : xAxis.NativePtr, (yAxis == default || yAxis.NativePtr == default) ? default : yAxis.NativePtr, (zAxis == default || zAxis.NativePtr == default) ? default : zAxis.NativePtr);
	}
	
	public static void FromAxes(IQVector3D xAxis, IQVector3D yAxis, IQVector3D zAxis)
	{
		CQt.QQuaternion_FromAxes((xAxis == default || xAxis.NativePtr == default) ? default : xAxis.NativePtr, (yAxis == default || yAxis.NativePtr == default) ? default : yAxis.NativePtr, (zAxis == default || zAxis.NativePtr == default) ? default : zAxis.NativePtr);
	}
	
	public static void FromDirection(IQVector3D direction, IQVector3D up)
	{
		CQt.QQuaternion_FromDirection((direction == default || direction.NativePtr == default) ? default : direction.NativePtr, (up == default || up.NativePtr == default) ? default : up.NativePtr);
	}
	
	public static void RotationTo(IQVector3D from, IQVector3D to)
	{
		CQt.QQuaternion_RotationTo((from == default || from.NativePtr == default) ? default : from.NativePtr, (to == default || to.NativePtr == default) ? default : to.NativePtr);
	}
	
	public static void Slerp(IQQuaternion q1, IQQuaternion q2, float t)
	{
		CQt.QQuaternion_Slerp((q1 == default || q1.NativePtr == default) ? default : q1.NativePtr, (q2 == default || q2.NativePtr == default) ? default : q2.NativePtr, t);
	}
	
	public static void Nlerp(IQQuaternion q1, IQQuaternion q2, float t)
	{
		CQt.QQuaternion_Nlerp((q1 == default || q1.NativePtr == default) ? default : q1.NativePtr, (q2 == default || q2.NativePtr == default) ? default : q2.NativePtr, t);
	}
	
}
public class QQuaternion
{
	public QQuaternionPtr handle;
	
	public static implicit operator QQuaternionPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQQuaternion other)
	{
		this.handle = QQuaternionPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public bool IsNull()
	{
		return this.handle.IsNull();
	}
	
	public bool IsIdentity()
	{
		return this.handle.IsIdentity();
	}
	
	public void Vector()
	{
		this.handle.Vector();
	}
	
	public void SetVector(IQVector3D vector)
	{
		this.handle.SetVector(vector);
	}
	
	public void SetVector2(float x, float y, float z)
	{
		this.handle.SetVector2(x, y, z);
	}
	
	public float X()
	{
		return this.handle.X();
	}
	
	public float Y()
	{
		return this.handle.Y();
	}
	
	public float Z()
	{
		return this.handle.Z();
	}
	
	public float Scalar()
	{
		return this.handle.Scalar();
	}
	
	public void SetX(float x)
	{
		this.handle.SetX(x);
	}
	
	public void SetY(float y)
	{
		this.handle.SetY(y);
	}
	
	public void SetZ(float z)
	{
		this.handle.SetZ(z);
	}
	
	public void SetScalar(float scalar)
	{
		this.handle.SetScalar(scalar);
	}
	
	public static float DotProduct(IQQuaternion q1, IQQuaternion q2)
	{
		return QQuaternionPtr.DotProduct(q1, q2);
	}
	
	public float Length()
	{
		return this.handle.Length();
	}
	
	public float LengthSquared()
	{
		return this.handle.LengthSquared();
	}
	
	public void Normalized()
	{
		this.handle.Normalized();
	}
	
	public void Normalize()
	{
		this.handle.Normalize();
	}
	
	public void Inverted()
	{
		this.handle.Inverted();
	}
	
	public void Conjugated()
	{
		this.handle.Conjugated();
	}
	
	public void RotatedVector(IQVector3D vector)
	{
		this.handle.RotatedVector(vector);
	}
	
	public void* OperatorPlusAssign(IQQuaternion quaternion)
	{
		return this.handle.OperatorPlusAssign(quaternion);
	}
	
	public void* OperatorMinusAssign(IQQuaternion quaternion)
	{
		return this.handle.OperatorMinusAssign(quaternion);
	}
	
	public void* OperatorMultiplyAssign(float factor)
	{
		return this.handle.OperatorMultiplyAssign(factor);
	}
	
	public void* OperatorMultiplyAssignWithQuaternion(IQQuaternion quaternion)
	{
		return this.handle.OperatorMultiplyAssignWithQuaternion(quaternion);
	}
	
	public void* OperatorDivideAssign(float divisor)
	{
		return this.handle.OperatorDivideAssign(divisor);
	}
	
	public void ToVector4D()
	{
		this.handle.ToVector4D();
	}
	
	public void ToQVariant()
	{
		this.handle.ToQVariant();
	}
	
	public void GetAxisAndAngle(IQVector3D axis, float* angle)
	{
		this.handle.GetAxisAndAngle(axis, angle);
	}
	
	public static void FromAxisAndAngle(IQVector3D axis, float angle)
	{
		QQuaternionPtr.FromAxisAndAngle(axis, angle);
	}
	
	public void GetAxisAndAngle2(float* x, float* y, float* z, float* angle)
	{
		this.handle.GetAxisAndAngle2(x, y, z, angle);
	}
	
	public static void FromAxisAndAngle2(float x, float y, float z, float angle)
	{
		QQuaternionPtr.FromAxisAndAngle2(x, y, z, angle);
	}
	
	public void ToEulerAngles()
	{
		this.handle.ToEulerAngles();
	}
	
	public static void FromEulerAngles(IQVector3D eulerAngles)
	{
		QQuaternionPtr.FromEulerAngles(eulerAngles);
	}
	
	public void GetEulerAngles(float* pitch, float* yaw, float* roll)
	{
		this.handle.GetEulerAngles(pitch, yaw, roll);
	}
	
	public static void FromEulerAngles2(float pitch, float yaw, float roll)
	{
		QQuaternionPtr.FromEulerAngles2(pitch, yaw, roll);
	}
	
	public void GetAxes(IQVector3D xAxis, IQVector3D yAxis, IQVector3D zAxis)
	{
		this.handle.GetAxes(xAxis, yAxis, zAxis);
	}
	
	public static void FromAxes(IQVector3D xAxis, IQVector3D yAxis, IQVector3D zAxis)
	{
		QQuaternionPtr.FromAxes(xAxis, yAxis, zAxis);
	}
	
	public static void FromDirection(IQVector3D direction, IQVector3D up)
	{
		QQuaternionPtr.FromDirection(direction, up);
	}
	
	public static void RotationTo(IQVector3D from, IQVector3D to)
	{
		QQuaternionPtr.RotationTo(from, to);
	}
	
	public static void Slerp(IQQuaternion q1, IQQuaternion q2, float t)
	{
		QQuaternionPtr.Slerp(q1, q2, t);
	}
	
	public static void Nlerp(IQQuaternion q1, IQQuaternion q2, float t)
	{
		QQuaternionPtr.Nlerp(q1, q2, t);
	}
	
}
extension CQt
{
	[LinkName("QQuaternion_new")]
	public static extern void* QQuaternion_new(void* other);
	[LinkName("QQuaternion_new2")]
	public static extern void* QQuaternion_new2(void* other);
	[LinkName("QQuaternion_new3")]
	public static extern void* QQuaternion_new3();
	[LinkName("QQuaternion_new4")]
	public static extern void* QQuaternion_new4(int64 param1);
	[LinkName("QQuaternion_new5")]
	public static extern void* QQuaternion_new5(float scalar, float xpos, float ypos, float zpos);
	[LinkName("QQuaternion_new6")]
	public static extern void* QQuaternion_new6(float scalar, void* vector);
	[LinkName("QQuaternion_new7")]
	public static extern void* QQuaternion_new7(void* vector);
	[LinkName("QQuaternion_new8")]
	public static extern void* QQuaternion_new8(void* param1);
	[LinkName("QQuaternion_IsNull")]
	public static extern bool QQuaternion_IsNull(void* c_this);
	[LinkName("QQuaternion_IsIdentity")]
	public static extern bool QQuaternion_IsIdentity(void* c_this);
	[LinkName("QQuaternion_Vector")]
	public static extern void QQuaternion_Vector(void* c_this);
	[LinkName("QQuaternion_SetVector")]
	public static extern void QQuaternion_SetVector(void* c_this, void* vector);
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
	public static extern float QQuaternion_DotProduct(void* q1, void* q2);
	[LinkName("QQuaternion_Length")]
	public static extern float QQuaternion_Length(void* c_this);
	[LinkName("QQuaternion_LengthSquared")]
	public static extern float QQuaternion_LengthSquared(void* c_this);
	[LinkName("QQuaternion_Normalized")]
	public static extern void QQuaternion_Normalized(void* c_this);
	[LinkName("QQuaternion_Normalize")]
	public static extern void QQuaternion_Normalize(void* c_this);
	[LinkName("QQuaternion_Inverted")]
	public static extern void QQuaternion_Inverted(void* c_this);
	[LinkName("QQuaternion_Conjugated")]
	public static extern void QQuaternion_Conjugated(void* c_this);
	[LinkName("QQuaternion_RotatedVector")]
	public static extern void QQuaternion_RotatedVector(void* c_this, void* vector);
	[LinkName("QQuaternion_OperatorPlusAssign")]
	public static extern void* QQuaternion_OperatorPlusAssign(void* c_this, void* quaternion);
	[LinkName("QQuaternion_OperatorMinusAssign")]
	public static extern void* QQuaternion_OperatorMinusAssign(void* c_this, void* quaternion);
	[LinkName("QQuaternion_OperatorMultiplyAssign")]
	public static extern void* QQuaternion_OperatorMultiplyAssign(void* c_this, float factor);
	[LinkName("QQuaternion_OperatorMultiplyAssignWithQuaternion")]
	public static extern void* QQuaternion_OperatorMultiplyAssignWithQuaternion(void* c_this, void* quaternion);
	[LinkName("QQuaternion_OperatorDivideAssign")]
	public static extern void* QQuaternion_OperatorDivideAssign(void* c_this, float divisor);
	[LinkName("QQuaternion_ToVector4D")]
	public static extern void QQuaternion_ToVector4D(void* c_this);
	[LinkName("QQuaternion_ToQVariant")]
	public static extern void QQuaternion_ToQVariant(void* c_this);
	[LinkName("QQuaternion_GetAxisAndAngle")]
	public static extern void QQuaternion_GetAxisAndAngle(void* c_this, void* axis, float* angle);
	[LinkName("QQuaternion_FromAxisAndAngle")]
	public static extern void QQuaternion_FromAxisAndAngle(void* axis, float angle);
	[LinkName("QQuaternion_GetAxisAndAngle2")]
	public static extern void QQuaternion_GetAxisAndAngle2(void* c_this, float* x, float* y, float* z, float* angle);
	[LinkName("QQuaternion_FromAxisAndAngle2")]
	public static extern void QQuaternion_FromAxisAndAngle2(float x, float y, float z, float angle);
	[LinkName("QQuaternion_ToEulerAngles")]
	public static extern void QQuaternion_ToEulerAngles(void* c_this);
	[LinkName("QQuaternion_FromEulerAngles")]
	public static extern void QQuaternion_FromEulerAngles(void* eulerAngles);
	[LinkName("QQuaternion_GetEulerAngles")]
	public static extern void QQuaternion_GetEulerAngles(void* c_this, float* pitch, float* yaw, float* roll);
	[LinkName("QQuaternion_FromEulerAngles2")]
	public static extern void QQuaternion_FromEulerAngles2(float pitch, float yaw, float roll);
	[LinkName("QQuaternion_GetAxes")]
	public static extern void QQuaternion_GetAxes(void* c_this, void* xAxis, void* yAxis, void* zAxis);
	[LinkName("QQuaternion_FromAxes")]
	public static extern void QQuaternion_FromAxes(void* xAxis, void* yAxis, void* zAxis);
	[LinkName("QQuaternion_FromDirection")]
	public static extern void QQuaternion_FromDirection(void* direction, void* up);
	[LinkName("QQuaternion_RotationTo")]
	public static extern void QQuaternion_RotationTo(void* from, void* to);
	[LinkName("QQuaternion_Slerp")]
	public static extern void QQuaternion_Slerp(void* q1, void* q2, float t);
	[LinkName("QQuaternion_Nlerp")]
	public static extern void QQuaternion_Nlerp(void* q1, void* q2, float t);
	/// Delete this object from C++ memory
	[LinkName("QQuaternion_Delete")]
	public static extern void QQuaternion_Delete(void* self);
}