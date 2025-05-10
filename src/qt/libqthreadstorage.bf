using System;
using System.Interop;
namespace Qt;

public interface IQThreadStorageData
{
	void* NativePtr { get; }
}
public class QThreadStorageData : IQThreadStorageData
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQThreadStorageData param1)
	{
		this.nativePtr = CQt.QThreadStorageData_new((param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public ~this()
	{
		CQt.QThreadStorageData_Delete(this.nativePtr);
	}
	
	public void* Get()
	{
		return CQt.QThreadStorageData_Get(this.nativePtr);
	}
	
	public void* Set(void* p)
	{
		return CQt.QThreadStorageData_Set(this.nativePtr, p);
	}
	
	public static void Finish(void** param1)
	{
		CQt.QThreadStorageData_Finish(param1);
	}
	
}
extension CQt
{
	[LinkName("QThreadStorageData_new")]
	public static extern void* QThreadStorageData_new(void* param1);
	[LinkName("QThreadStorageData_Get")]
	public static extern void* QThreadStorageData_Get(void* c_this);
	[LinkName("QThreadStorageData_Set")]
	public static extern void* QThreadStorageData_Set(void* c_this, void* p);
	[LinkName("QThreadStorageData_Finish")]
	public static extern void QThreadStorageData_Finish(void* param1);
	/// Delete this object from C++ memory
	[LinkName("QThreadStorageData_Delete")]
	public static extern void QThreadStorageData_Delete(void* self);
}