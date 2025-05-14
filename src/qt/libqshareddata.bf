using System;
using System.Interop;
namespace Qt;

public interface IQSharedData
{
	void* NativePtr { get; }
}
public struct QSharedDataPtr : IQSharedData, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QSharedData_new());
	}
	public void Dispose()
	{
		CQt.QSharedData_Delete(this.nativePtr);
	}
}
public class QSharedData
{
	public QSharedDataPtr handle;
	
	public static implicit operator QSharedDataPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QSharedDataPtr.New();
	}
	public ~this()
	{
		this.handle.Dispose();
	}
}
extension CQt
{
	[LinkName("QSharedData_new")]
	public static extern void* QSharedData_new();
	[LinkName("QSharedData_new2")]
	public static extern void* QSharedData_new2(void* param1);
	/// Delete this object from C++ memory
	[LinkName("QSharedData_Delete")]
	public static extern void QSharedData_Delete(void* self);
}
public interface IQAdoptSharedDataTag
{
	void* NativePtr { get; }
}
public struct QAdoptSharedDataTagPtr : IQAdoptSharedDataTag, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQAdoptSharedDataTag other)
	{
		return .(CQt.QAdoptSharedDataTag_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	public void Dispose()
	{
		CQt.QAdoptSharedDataTag_Delete(this.nativePtr);
	}
}
public class QAdoptSharedDataTag
{
	public QAdoptSharedDataTagPtr handle;
	
	public static implicit operator QAdoptSharedDataTagPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQAdoptSharedDataTag other)
	{
		this.handle = QAdoptSharedDataTagPtr.New(other);
	}
	public ~this()
	{
		this.handle.Dispose();
	}
}
extension CQt
{
	[LinkName("QAdoptSharedDataTag_new")]
	public static extern void* QAdoptSharedDataTag_new(void* other);
	[LinkName("QAdoptSharedDataTag_new2")]
	public static extern void* QAdoptSharedDataTag_new2(void* other);
	[LinkName("QAdoptSharedDataTag_new3")]
	public static extern void* QAdoptSharedDataTag_new3();
	/// Delete this object from C++ memory
	[LinkName("QAdoptSharedDataTag_Delete")]
	public static extern void QAdoptSharedDataTag_Delete(void* self);
}