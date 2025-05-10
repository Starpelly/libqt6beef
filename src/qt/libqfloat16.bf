using System;
using System.Interop;
namespace Qt;

public class qfloat16
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.qfloat16_new();
	}
	
	public ~this()
	{
		CQt.qfloat16_Delete(this.nativePtr);
	}
	
	public float ToFloat()
	{
		return CQt.qfloat16_ToFloat(this.nativePtr);
	}
	
	public bool IsInf()
	{
		return CQt.qfloat16_IsInf(this.nativePtr);
	}
	
	public bool IsNaN()
	{
		return CQt.qfloat16_IsNaN(this.nativePtr);
	}
	
	public bool IsFinite()
	{
		return CQt.qfloat16_IsFinite(this.nativePtr);
	}
	
	public int32 FpClassify()
	{
		return CQt.qfloat16_FpClassify(this.nativePtr);
	}
	
	public bool IsNormal()
	{
		return CQt.qfloat16_IsNormal(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("qfloat16_new")]
	public static extern void* qfloat16_new();
	[LinkName("qfloat16_new2")]
	public static extern void* qfloat16_new2(int64 param1);
	[LinkName("qfloat16_new3")]
	public static extern void* qfloat16_new3(float f);
	[LinkName("qfloat16_ToFloat")]
	public static extern float qfloat16_ToFloat(void* c_this);
	[LinkName("qfloat16_IsInf")]
	public static extern bool qfloat16_IsInf(void* c_this);
	[LinkName("qfloat16_IsNaN")]
	public static extern bool qfloat16_IsNaN(void* c_this);
	[LinkName("qfloat16_IsFinite")]
	public static extern bool qfloat16_IsFinite(void* c_this);
	[LinkName("qfloat16_FpClassify")]
	public static extern int32 qfloat16_FpClassify(void* c_this);
	[LinkName("qfloat16_IsNormal")]
	public static extern bool qfloat16_IsNormal(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("qfloat16_Delete")]
	public static extern void qfloat16_Delete(void* self);
}