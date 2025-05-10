using System;
using System.Interop;
namespace Qt;

public class QContiguousCacheData
{
	protected void* nativePtr;
	
	public ~this()
	{
		CQt.QContiguousCacheData_Delete(this.nativePtr);
	}
	
	public static void* AllocateData(int32 size, int32 alignment)
	{
		return CQt.QContiguousCacheData_AllocateData(size, alignment);
	}
	
	public static void FreeData(void* data)
	{
		CQt.QContiguousCacheData_FreeData(data);
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