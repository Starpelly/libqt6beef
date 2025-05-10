using System;
using System.Interop;
namespace Qt;

public interface IQContiguousCacheData
{
	void* NativePtr { get; }
}
public class QContiguousCacheData : IQContiguousCacheData
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public ~this()
	{
		CQt.QContiguousCacheData_Delete(this.nativePtr);
	}
	
	public static void* AllocateData(int32 size, int32 alignment)
	{
		return CQt.QContiguousCacheData_AllocateData(size, alignment);
	}
	
	public static void FreeData(IQContiguousCacheData data)
	{
		CQt.QContiguousCacheData_FreeData((data == null) ? null : (void*)data.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QContiguousCacheData_AllocateData")]
	public static extern void* QContiguousCacheData_AllocateData(int32 size, int32 alignment);
	[LinkName("QContiguousCacheData_FreeData")]
	public static extern void QContiguousCacheData_FreeData(void* data);
	/// Delete this object from C++ memory
	[LinkName("QContiguousCacheData_Delete")]
	public static extern void QContiguousCacheData_Delete(void* self);
}