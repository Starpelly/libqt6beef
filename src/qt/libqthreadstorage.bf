using System;
using System.Interop;
namespace Qt;

public interface IQThreadStorageData
{
	void* NativePtr { get; }
}
public struct QThreadStorageDataPtr : IQThreadStorageData, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQThreadStorageData param1)
	{
		return .(CQt.QThreadStorageData_new((param1 == default || param1.NativePtr == default) ? default : param1.NativePtr));
	}
	
	public void Dispose()
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
	
	public static void Finish(void* param1)
	{
		CQt.QThreadStorageData_Finish(param1);
	}
	
}
public class QThreadStorageData
{
	public QThreadStorageDataPtr handle;
	
	public static implicit operator QThreadStorageDataPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQThreadStorageData param1)
	{
		this.handle = QThreadStorageDataPtr.New(param1);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void* Get()
	{
		return this.handle.Get();
	}
	
	public void* Set(void* p)
	{
		return this.handle.Set(p);
	}
	
	public static void Finish(void* param1)
	{
		QThreadStorageDataPtr.Finish(param1);
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