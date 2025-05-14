using System;
using System.Interop;
namespace Qt;

public interface IQUntypedPropertyData
{
	void* NativePtr { get; }
}
public struct QUntypedPropertyDataPtr : IQUntypedPropertyData, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQUntypedPropertyData other)
	{
		return .(CQt.QUntypedPropertyData_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	public void Dispose()
	{
		CQt.QUntypedPropertyData_Delete(this.nativePtr);
	}
}
public class QUntypedPropertyData
{
	public QUntypedPropertyDataPtr handle;
	
	public static implicit operator QUntypedPropertyDataPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQUntypedPropertyData other)
	{
		this.handle = QUntypedPropertyDataPtr.New(other);
	}
	public ~this()
	{
		this.handle.Dispose();
	}
}
extension CQt
{
	[LinkName("QUntypedPropertyData_new")]
	public static extern void* QUntypedPropertyData_new(void* other);
	[LinkName("QUntypedPropertyData_new2")]
	public static extern void* QUntypedPropertyData_new2(void* other);
	/// Delete this object from C++ memory
	[LinkName("QUntypedPropertyData_Delete")]
	public static extern void QUntypedPropertyData_Delete(void* self);
}
public interface IQPropertyProxyBindingData
{
	void* NativePtr { get; }
}
public struct QPropertyProxyBindingDataPtr : IQPropertyProxyBindingData
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
}
public class QPropertyProxyBindingData
{
	public QPropertyProxyBindingDataPtr handle;
	
	public static implicit operator QPropertyProxyBindingDataPtr(Self self)
	{
		return self.handle;
	}
}
extension CQt
{
}