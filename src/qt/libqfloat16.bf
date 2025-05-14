using System;
using System.Interop;
namespace Qt;

public interface Iqfloat16
{
	void* NativePtr { get; }
}
public struct qfloat16Ptr : Iqfloat16, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.qfloat16_new());
	}
	
	public void Dispose()
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
public class qfloat16
{
	public qfloat16Ptr handle;
	
	public static implicit operator qfloat16Ptr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = qfloat16Ptr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public float ToFloat()
	{
		return this.handle.ToFloat();
	}
	
	public bool IsInf()
	{
		return this.handle.IsInf();
	}
	
	public bool IsNaN()
	{
		return this.handle.IsNaN();
	}
	
	public bool IsFinite()
	{
		return this.handle.IsFinite();
	}
	
	public int32 FpClassify()
	{
		return this.handle.FpClassify();
	}
	
	public bool IsNormal()
	{
		return this.handle.IsNormal();
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