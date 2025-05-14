using System;
using System.Interop;
namespace Qt;

public interface IQContiguousCacheData
{
	void* NativePtr { get; }
}
public struct QContiguousCacheDataPtr : IQContiguousCacheData, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public void Dispose()
	{
		CQt.QContiguousCacheData_Delete(this.nativePtr);
	}
	
	public static void* AllocateData(int32 size, int32 alignment)
	{
		return CQt.QContiguousCacheData_AllocateData(size, alignment);
	}
	
	public static void FreeData(IQContiguousCacheData data)
	{
		CQt.QContiguousCacheData_FreeData((data == default || data.NativePtr == default) ? default : data.NativePtr);
	}
	
}
public class QContiguousCacheData
{
	public QContiguousCacheDataPtr handle;
	
	public static implicit operator QContiguousCacheDataPtr(Self self)
	{
		return self.handle;
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public static void* AllocateData(int32 size, int32 alignment)
	{
		return QContiguousCacheDataPtr.AllocateData(size, alignment);
	}
	
	public static void FreeData(IQContiguousCacheData data)
	{
		QContiguousCacheDataPtr.FreeData(data);
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