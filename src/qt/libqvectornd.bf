using System;
using System.Interop;
namespace Qt;

public class QVector2D
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QVector2D_new(other);
	}
	
	public ~this()
	{
		CQt.QVector2D_Delete(this.nativePtr);
	}
	
	public bool IsNull()
	{
		return CQt.QVector2D_IsNull(this.nativePtr);
	}
	
	public float X()
	{
		return CQt.QVector2D_X(this.nativePtr);
	}
	
	public float Y()
	{
		return CQt.QVector2D_Y(this.nativePtr);
	}
	
	public void SetX(float x)
	{
		CQt.QVector2D_SetX(this.nativePtr, x);
	}
	
	public void SetY(float y)
	{
		CQt.QVector2D_SetY(this.nativePtr, y);
	}
	
	public float OperatorSubscript(int32 i)
	{
		return CQt.QVector2D_OperatorSubscript(this.nativePtr, i);
	}
	
	public float Length()
	{
		return CQt.QVector2D_Length(this.nativePtr);
	}
	
	public float LengthSquared()
	{
		return CQt.QVector2D_LengthSquared(this.nativePtr);
	}
	
	public void Normalized()
	{
		CQt.QVector2D_Normalized(this.nativePtr);
	}
	
	public void Normalize()
	{
		CQt.QVector2D_Normalize(this.nativePtr);
	}
	
	public float DistanceToPoint(void point)
	{
		return CQt.QVector2D_DistanceToPoint(this.nativePtr, point);
	}
	
	public float DistanceToLine(void point, void direction)
	{
		return CQt.QVector2D_DistanceToLine(this.nativePtr, point, direction);
	}
	
	public void* OperatorPlusAssign(void vector)
	{
		return CQt.QVector2D_OperatorPlusAssign(this.nativePtr, vector);
	}
	
	public void* OperatorMinusAssign(void vector)
	{
		return CQt.QVector2D_OperatorMinusAssign(this.nativePtr, vector);
	}
	
	public void* OperatorMultiplyAssign(float factor)
	{
		return CQt.QVector2D_OperatorMultiplyAssign(this.nativePtr, factor);
	}
	
	public void* OperatorMultiplyAssignWithVector(void vector)
	{
		return CQt.QVector2D_OperatorMultiplyAssignWithVector(this.nativePtr, vector);
	}
	
	public void* OperatorDivideAssign(float divisor)
	{
		return CQt.QVector2D_OperatorDivideAssign(this.nativePtr, divisor);
	}
	
	public void* OperatorDivideAssignWithVector(void vector)
	{
		return CQt.QVector2D_OperatorDivideAssignWithVector(this.nativePtr, vector);
	}
	
	public static float DotProduct(void v1, void v2)
	{
		return CQt.QVector2D_DotProduct(v1, v2);
	}
	
	public void ToVector3D()
	{
		CQt.QVector2D_ToVector3D(this.nativePtr);
	}
	
	public void ToVector4D()
	{
		CQt.QVector2D_ToVector4D(this.nativePtr);
	}
	
	public void ToPoint()
	{
		CQt.QVector2D_ToPoint(this.nativePtr);
	}
	
	public void ToPointF()
	{
		CQt.QVector2D_ToPointF(this.nativePtr);
	}
	
	public void ToQVariant()
	{
		CQt.QVector2D_ToQVariant(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QVector2D_new")]
	public static extern void* QVector2D_new(void* other);
	[LinkName("QVector2D_new2")]
	public static extern void* QVector2D_new2(void* other);
	[LinkName("QVector2D_new3")]
	public static extern void* QVector2D_new3();
	[LinkName("QVector2D_new4")]
	public static extern void* QVector2D_new4(int64 param1);
	[LinkName("QVector2D_new5")]
	public static extern void* QVector2D_new5(float xpos, float ypos);
	[LinkName("QVector2D_new6")]
	public static extern void* QVector2D_new6(void point);
	[LinkName("QVector2D_new7")]
	public static extern void* QVector2D_new7(void point);
	[LinkName("QVector2D_new8")]
	public static extern void* QVector2D_new8(void vector);
	[LinkName("QVector2D_new9")]
	public static extern void* QVector2D_new9(void vector);
	[LinkName("QVector2D_new10")]
	public static extern void* QVector2D_new10(void* param1);
	[LinkName("QVector2D_IsNull")]
	public static extern bool QVector2D_IsNull(void* c_this);
	[LinkName("QVector2D_X")]
	public static extern float QVector2D_X(void* c_this);
	[LinkName("QVector2D_Y")]
	public static extern float QVector2D_Y(void* c_this);
	[LinkName("QVector2D_SetX")]
	public static extern void QVector2D_SetX(void* c_this, float x);
	[LinkName("QVector2D_SetY")]
	public static extern void QVector2D_SetY(void* c_this, float y);
	[LinkName("QVector2D_OperatorSubscript")]
	public static extern float QVector2D_OperatorSubscript(void* c_this, int32 i);
	[LinkName("QVector2D_Length")]
	public static extern float QVector2D_Length(void* c_this);
	[LinkName("QVector2D_LengthSquared")]
	public static extern float QVector2D_LengthSquared(void* c_this);
	[LinkName("QVector2D_Normalized")]
	public static extern void QVector2D_Normalized(void* c_this);
	[LinkName("QVector2D_Normalize")]
	public static extern void QVector2D_Normalize(void* c_this);
	[LinkName("QVector2D_DistanceToPoint")]
	public static extern float QVector2D_DistanceToPoint(void* c_this, void point);
	[LinkName("QVector2D_DistanceToLine")]
	public static extern float QVector2D_DistanceToLine(void* c_this, void point, void direction);
	[LinkName("QVector2D_OperatorPlusAssign")]
	public static extern void* QVector2D_OperatorPlusAssign(void* c_this, void vector);
	[LinkName("QVector2D_OperatorMinusAssign")]
	public static extern void* QVector2D_OperatorMinusAssign(void* c_this, void vector);
	[LinkName("QVector2D_OperatorMultiplyAssign")]
	public static extern void* QVector2D_OperatorMultiplyAssign(void* c_this, float factor);
	[LinkName("QVector2D_OperatorMultiplyAssignWithVector")]
	public static extern void* QVector2D_OperatorMultiplyAssignWithVector(void* c_this, void vector);
	[LinkName("QVector2D_OperatorDivideAssign")]
	public static extern void* QVector2D_OperatorDivideAssign(void* c_this, float divisor);
	[LinkName("QVector2D_OperatorDivideAssignWithVector")]
	public static extern void* QVector2D_OperatorDivideAssignWithVector(void* c_this, void vector);
	[LinkName("QVector2D_DotProduct")]
	public static extern float QVector2D_DotProduct(void v1, void v2);
	[LinkName("QVector2D_ToVector3D")]
	public static extern void QVector2D_ToVector3D(void* c_this);
	[LinkName("QVector2D_ToVector4D")]
	public static extern void QVector2D_ToVector4D(void* c_this);
	[LinkName("QVector2D_ToPoint")]
	public static extern void QVector2D_ToPoint(void* c_this);
	[LinkName("QVector2D_ToPointF")]
	public static extern void QVector2D_ToPointF(void* c_this);
	[LinkName("QVector2D_ToQVariant")]
	public static extern void QVector2D_ToQVariant(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QVector2D_Delete")]
	public static extern void QVector2D_Delete(void* self);
}
public class QVector3D
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QVector3D_new(other);
	}
	
	public ~this()
	{
		CQt.QVector3D_Delete(this.nativePtr);
	}
	
	public bool IsNull()
	{
		return CQt.QVector3D_IsNull(this.nativePtr);
	}
	
	public float X()
	{
		return CQt.QVector3D_X(this.nativePtr);
	}
	
	public float Y()
	{
		return CQt.QVector3D_Y(this.nativePtr);
	}
	
	public float Z()
	{
		return CQt.QVector3D_Z(this.nativePtr);
	}
	
	public void SetX(float x)
	{
		CQt.QVector3D_SetX(this.nativePtr, x);
	}
	
	public void SetY(float y)
	{
		CQt.QVector3D_SetY(this.nativePtr, y);
	}
	
	public void SetZ(float z)
	{
		CQt.QVector3D_SetZ(this.nativePtr, z);
	}
	
	public float OperatorSubscript(int32 i)
	{
		return CQt.QVector3D_OperatorSubscript(this.nativePtr, i);
	}
	
	public float Length()
	{
		return CQt.QVector3D_Length(this.nativePtr);
	}
	
	public float LengthSquared()
	{
		return CQt.QVector3D_LengthSquared(this.nativePtr);
	}
	
	public void Normalized()
	{
		CQt.QVector3D_Normalized(this.nativePtr);
	}
	
	public void Normalize()
	{
		CQt.QVector3D_Normalize(this.nativePtr);
	}
	
	public void* OperatorPlusAssign(void vector)
	{
		return CQt.QVector3D_OperatorPlusAssign(this.nativePtr, vector);
	}
	
	public void* OperatorMinusAssign(void vector)
	{
		return CQt.QVector3D_OperatorMinusAssign(this.nativePtr, vector);
	}
	
	public void* OperatorMultiplyAssign(float factor)
	{
		return CQt.QVector3D_OperatorMultiplyAssign(this.nativePtr, factor);
	}
	
	public void* OperatorMultiplyAssignWithVector(void vector)
	{
		return CQt.QVector3D_OperatorMultiplyAssignWithVector(this.nativePtr, vector);
	}
	
	public void* OperatorDivideAssign(float divisor)
	{
		return CQt.QVector3D_OperatorDivideAssign(this.nativePtr, divisor);
	}
	
	public void* OperatorDivideAssignWithVector(void vector)
	{
		return CQt.QVector3D_OperatorDivideAssignWithVector(this.nativePtr, vector);
	}
	
	public static float DotProduct(void v1, void v2)
	{
		return CQt.QVector3D_DotProduct(v1, v2);
	}
	
	public static void CrossProduct(void v1, void v2)
	{
		CQt.QVector3D_CrossProduct(v1, v2);
	}
	
	public static void Normal(void v1, void v2)
	{
		CQt.QVector3D_Normal(v1, v2);
	}
	
	public static void Normal2(void v1, void v2, void v3)
	{
		CQt.QVector3D_Normal2(v1, v2, v3);
	}
	
	public void Project(void* modelView, void* projection, void* viewport)
	{
		CQt.QVector3D_Project(this.nativePtr, modelView, projection, viewport);
	}
	
	public void Unproject(void* modelView, void* projection, void* viewport)
	{
		CQt.QVector3D_Unproject(this.nativePtr, modelView, projection, viewport);
	}
	
	public float DistanceToPoint(void point)
	{
		return CQt.QVector3D_DistanceToPoint(this.nativePtr, point);
	}
	
	public float DistanceToPlane(void plane, void normal)
	{
		return CQt.QVector3D_DistanceToPlane(this.nativePtr, plane, normal);
	}
	
	public float DistanceToPlane2(void plane1, void plane2, void plane3)
	{
		return CQt.QVector3D_DistanceToPlane2(this.nativePtr, plane1, plane2, plane3);
	}
	
	public float DistanceToLine(void point, void direction)
	{
		return CQt.QVector3D_DistanceToLine(this.nativePtr, point, direction);
	}
	
	public void ToVector2D()
	{
		CQt.QVector3D_ToVector2D(this.nativePtr);
	}
	
	public void ToVector4D()
	{
		CQt.QVector3D_ToVector4D(this.nativePtr);
	}
	
	public void ToPoint()
	{
		CQt.QVector3D_ToPoint(this.nativePtr);
	}
	
	public void ToPointF()
	{
		CQt.QVector3D_ToPointF(this.nativePtr);
	}
	
	public void ToQVariant()
	{
		CQt.QVector3D_ToQVariant(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QVector3D_new")]
	public static extern void* QVector3D_new(void* other);
	[LinkName("QVector3D_new2")]
	public static extern void* QVector3D_new2(void* other);
	[LinkName("QVector3D_new3")]
	public static extern void* QVector3D_new3();
	[LinkName("QVector3D_new4")]
	public static extern void* QVector3D_new4(int64 param1);
	[LinkName("QVector3D_new5")]
	public static extern void* QVector3D_new5(float xpos, float ypos, float zpos);
	[LinkName("QVector3D_new6")]
	public static extern void* QVector3D_new6(void point);
	[LinkName("QVector3D_new7")]
	public static extern void* QVector3D_new7(void point);
	[LinkName("QVector3D_new8")]
	public static extern void* QVector3D_new8(void vector);
	[LinkName("QVector3D_new9")]
	public static extern void* QVector3D_new9(void vector, float zpos);
	[LinkName("QVector3D_new10")]
	public static extern void* QVector3D_new10(void vector);
	[LinkName("QVector3D_new11")]
	public static extern void* QVector3D_new11(void* param1);
	[LinkName("QVector3D_IsNull")]
	public static extern bool QVector3D_IsNull(void* c_this);
	[LinkName("QVector3D_X")]
	public static extern float QVector3D_X(void* c_this);
	[LinkName("QVector3D_Y")]
	public static extern float QVector3D_Y(void* c_this);
	[LinkName("QVector3D_Z")]
	public static extern float QVector3D_Z(void* c_this);
	[LinkName("QVector3D_SetX")]
	public static extern void QVector3D_SetX(void* c_this, float x);
	[LinkName("QVector3D_SetY")]
	public static extern void QVector3D_SetY(void* c_this, float y);
	[LinkName("QVector3D_SetZ")]
	public static extern void QVector3D_SetZ(void* c_this, float z);
	[LinkName("QVector3D_OperatorSubscript")]
	public static extern float QVector3D_OperatorSubscript(void* c_this, int32 i);
	[LinkName("QVector3D_Length")]
	public static extern float QVector3D_Length(void* c_this);
	[LinkName("QVector3D_LengthSquared")]
	public static extern float QVector3D_LengthSquared(void* c_this);
	[LinkName("QVector3D_Normalized")]
	public static extern void QVector3D_Normalized(void* c_this);
	[LinkName("QVector3D_Normalize")]
	public static extern void QVector3D_Normalize(void* c_this);
	[LinkName("QVector3D_OperatorPlusAssign")]
	public static extern void* QVector3D_OperatorPlusAssign(void* c_this, void vector);
	[LinkName("QVector3D_OperatorMinusAssign")]
	public static extern void* QVector3D_OperatorMinusAssign(void* c_this, void vector);
	[LinkName("QVector3D_OperatorMultiplyAssign")]
	public static extern void* QVector3D_OperatorMultiplyAssign(void* c_this, float factor);
	[LinkName("QVector3D_OperatorMultiplyAssignWithVector")]
	public static extern void* QVector3D_OperatorMultiplyAssignWithVector(void* c_this, void vector);
	[LinkName("QVector3D_OperatorDivideAssign")]
	public static extern void* QVector3D_OperatorDivideAssign(void* c_this, float divisor);
	[LinkName("QVector3D_OperatorDivideAssignWithVector")]
	public static extern void* QVector3D_OperatorDivideAssignWithVector(void* c_this, void vector);
	[LinkName("QVector3D_DotProduct")]
	public static extern float QVector3D_DotProduct(void v1, void v2);
	[LinkName("QVector3D_CrossProduct")]
	public static extern void QVector3D_CrossProduct(void v1, void v2);
	[LinkName("QVector3D_Normal")]
	public static extern void QVector3D_Normal(void v1, void v2);
	[LinkName("QVector3D_Normal2")]
	public static extern void QVector3D_Normal2(void v1, void v2, void v3);
	[LinkName("QVector3D_Project")]
	public static extern void QVector3D_Project(void* c_this, void* modelView, void* projection, void* viewport);
	[LinkName("QVector3D_Unproject")]
	public static extern void QVector3D_Unproject(void* c_this, void* modelView, void* projection, void* viewport);
	[LinkName("QVector3D_DistanceToPoint")]
	public static extern float QVector3D_DistanceToPoint(void* c_this, void point);
	[LinkName("QVector3D_DistanceToPlane")]
	public static extern float QVector3D_DistanceToPlane(void* c_this, void plane, void normal);
	[LinkName("QVector3D_DistanceToPlane2")]
	public static extern float QVector3D_DistanceToPlane2(void* c_this, void plane1, void plane2, void plane3);
	[LinkName("QVector3D_DistanceToLine")]
	public static extern float QVector3D_DistanceToLine(void* c_this, void point, void direction);
	[LinkName("QVector3D_ToVector2D")]
	public static extern void QVector3D_ToVector2D(void* c_this);
	[LinkName("QVector3D_ToVector4D")]
	public static extern void QVector3D_ToVector4D(void* c_this);
	[LinkName("QVector3D_ToPoint")]
	public static extern void QVector3D_ToPoint(void* c_this);
	[LinkName("QVector3D_ToPointF")]
	public static extern void QVector3D_ToPointF(void* c_this);
	[LinkName("QVector3D_ToQVariant")]
	public static extern void QVector3D_ToQVariant(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QVector3D_Delete")]
	public static extern void QVector3D_Delete(void* self);
}
public class QVector4D
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QVector4D_new(other);
	}
	
	public ~this()
	{
		CQt.QVector4D_Delete(this.nativePtr);
	}
	
	public bool IsNull()
	{
		return CQt.QVector4D_IsNull(this.nativePtr);
	}
	
	public float X()
	{
		return CQt.QVector4D_X(this.nativePtr);
	}
	
	public float Y()
	{
		return CQt.QVector4D_Y(this.nativePtr);
	}
	
	public float Z()
	{
		return CQt.QVector4D_Z(this.nativePtr);
	}
	
	public float W()
	{
		return CQt.QVector4D_W(this.nativePtr);
	}
	
	public void SetX(float x)
	{
		CQt.QVector4D_SetX(this.nativePtr, x);
	}
	
	public void SetY(float y)
	{
		CQt.QVector4D_SetY(this.nativePtr, y);
	}
	
	public void SetZ(float z)
	{
		CQt.QVector4D_SetZ(this.nativePtr, z);
	}
	
	public void SetW(float w)
	{
		CQt.QVector4D_SetW(this.nativePtr, w);
	}
	
	public float OperatorSubscript(int32 i)
	{
		return CQt.QVector4D_OperatorSubscript(this.nativePtr, i);
	}
	
	public float Length()
	{
		return CQt.QVector4D_Length(this.nativePtr);
	}
	
	public float LengthSquared()
	{
		return CQt.QVector4D_LengthSquared(this.nativePtr);
	}
	
	public void Normalized()
	{
		CQt.QVector4D_Normalized(this.nativePtr);
	}
	
	public void Normalize()
	{
		CQt.QVector4D_Normalize(this.nativePtr);
	}
	
	public void* OperatorPlusAssign(void vector)
	{
		return CQt.QVector4D_OperatorPlusAssign(this.nativePtr, vector);
	}
	
	public void* OperatorMinusAssign(void vector)
	{
		return CQt.QVector4D_OperatorMinusAssign(this.nativePtr, vector);
	}
	
	public void* OperatorMultiplyAssign(float factor)
	{
		return CQt.QVector4D_OperatorMultiplyAssign(this.nativePtr, factor);
	}
	
	public void* OperatorMultiplyAssignWithVector(void vector)
	{
		return CQt.QVector4D_OperatorMultiplyAssignWithVector(this.nativePtr, vector);
	}
	
	public void* OperatorDivideAssign(float divisor)
	{
		return CQt.QVector4D_OperatorDivideAssign(this.nativePtr, divisor);
	}
	
	public void* OperatorDivideAssignWithVector(void vector)
	{
		return CQt.QVector4D_OperatorDivideAssignWithVector(this.nativePtr, vector);
	}
	
	public static float DotProduct(void v1, void v2)
	{
		return CQt.QVector4D_DotProduct(v1, v2);
	}
	
	public void ToVector2D()
	{
		CQt.QVector4D_ToVector2D(this.nativePtr);
	}
	
	public void ToVector2DAffine()
	{
		CQt.QVector4D_ToVector2DAffine(this.nativePtr);
	}
	
	public void ToVector3D()
	{
		CQt.QVector4D_ToVector3D(this.nativePtr);
	}
	
	public void ToVector3DAffine()
	{
		CQt.QVector4D_ToVector3DAffine(this.nativePtr);
	}
	
	public void ToPoint()
	{
		CQt.QVector4D_ToPoint(this.nativePtr);
	}
	
	public void ToPointF()
	{
		CQt.QVector4D_ToPointF(this.nativePtr);
	}
	
	public void ToQVariant()
	{
		CQt.QVector4D_ToQVariant(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QVector4D_new")]
	public static extern void* QVector4D_new(void* other);
	[LinkName("QVector4D_new2")]
	public static extern void* QVector4D_new2(void* other);
	[LinkName("QVector4D_new3")]
	public static extern void* QVector4D_new3();
	[LinkName("QVector4D_new4")]
	public static extern void* QVector4D_new4(int64 param1);
	[LinkName("QVector4D_new5")]
	public static extern void* QVector4D_new5(float xpos, float ypos, float zpos, float wpos);
	[LinkName("QVector4D_new6")]
	public static extern void* QVector4D_new6(void point);
	[LinkName("QVector4D_new7")]
	public static extern void* QVector4D_new7(void point);
	[LinkName("QVector4D_new8")]
	public static extern void* QVector4D_new8(void vector);
	[LinkName("QVector4D_new9")]
	public static extern void* QVector4D_new9(void vector, float zpos, float wpos);
	[LinkName("QVector4D_new10")]
	public static extern void* QVector4D_new10(void vector);
	[LinkName("QVector4D_new11")]
	public static extern void* QVector4D_new11(void vector, float wpos);
	[LinkName("QVector4D_new12")]
	public static extern void* QVector4D_new12(void* param1);
	[LinkName("QVector4D_IsNull")]
	public static extern bool QVector4D_IsNull(void* c_this);
	[LinkName("QVector4D_X")]
	public static extern float QVector4D_X(void* c_this);
	[LinkName("QVector4D_Y")]
	public static extern float QVector4D_Y(void* c_this);
	[LinkName("QVector4D_Z")]
	public static extern float QVector4D_Z(void* c_this);
	[LinkName("QVector4D_W")]
	public static extern float QVector4D_W(void* c_this);
	[LinkName("QVector4D_SetX")]
	public static extern void QVector4D_SetX(void* c_this, float x);
	[LinkName("QVector4D_SetY")]
	public static extern void QVector4D_SetY(void* c_this, float y);
	[LinkName("QVector4D_SetZ")]
	public static extern void QVector4D_SetZ(void* c_this, float z);
	[LinkName("QVector4D_SetW")]
	public static extern void QVector4D_SetW(void* c_this, float w);
	[LinkName("QVector4D_OperatorSubscript")]
	public static extern float QVector4D_OperatorSubscript(void* c_this, int32 i);
	[LinkName("QVector4D_Length")]
	public static extern float QVector4D_Length(void* c_this);
	[LinkName("QVector4D_LengthSquared")]
	public static extern float QVector4D_LengthSquared(void* c_this);
	[LinkName("QVector4D_Normalized")]
	public static extern void QVector4D_Normalized(void* c_this);
	[LinkName("QVector4D_Normalize")]
	public static extern void QVector4D_Normalize(void* c_this);
	[LinkName("QVector4D_OperatorPlusAssign")]
	public static extern void* QVector4D_OperatorPlusAssign(void* c_this, void vector);
	[LinkName("QVector4D_OperatorMinusAssign")]
	public static extern void* QVector4D_OperatorMinusAssign(void* c_this, void vector);
	[LinkName("QVector4D_OperatorMultiplyAssign")]
	public static extern void* QVector4D_OperatorMultiplyAssign(void* c_this, float factor);
	[LinkName("QVector4D_OperatorMultiplyAssignWithVector")]
	public static extern void* QVector4D_OperatorMultiplyAssignWithVector(void* c_this, void vector);
	[LinkName("QVector4D_OperatorDivideAssign")]
	public static extern void* QVector4D_OperatorDivideAssign(void* c_this, float divisor);
	[LinkName("QVector4D_OperatorDivideAssignWithVector")]
	public static extern void* QVector4D_OperatorDivideAssignWithVector(void* c_this, void vector);
	[LinkName("QVector4D_DotProduct")]
	public static extern float QVector4D_DotProduct(void v1, void v2);
	[LinkName("QVector4D_ToVector2D")]
	public static extern void QVector4D_ToVector2D(void* c_this);
	[LinkName("QVector4D_ToVector2DAffine")]
	public static extern void QVector4D_ToVector2DAffine(void* c_this);
	[LinkName("QVector4D_ToVector3D")]
	public static extern void QVector4D_ToVector3D(void* c_this);
	[LinkName("QVector4D_ToVector3DAffine")]
	public static extern void QVector4D_ToVector3DAffine(void* c_this);
	[LinkName("QVector4D_ToPoint")]
	public static extern void QVector4D_ToPoint(void* c_this);
	[LinkName("QVector4D_ToPointF")]
	public static extern void QVector4D_ToPointF(void* c_this);
	[LinkName("QVector4D_ToQVariant")]
	public static extern void QVector4D_ToQVariant(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QVector4D_Delete")]
	public static extern void QVector4D_Delete(void* self);
}