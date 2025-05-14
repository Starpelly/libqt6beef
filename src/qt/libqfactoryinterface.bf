using System;
using System.Interop;
namespace Qt;

public interface IQFactoryInterface
{
	void* NativePtr { get; }
}
public struct QFactoryInterfacePtr : IQFactoryInterface, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public void Dispose()
	{
		CQt.QFactoryInterface_Delete(this.nativePtr);
	}
	
	public libqt_string[] Keys()
	{
		return CQt.QFactoryInterface_Keys(this.nativePtr);
	}
	
}
public class QFactoryInterface
{
	public QFactoryInterfacePtr handle;
	
	public static implicit operator QFactoryInterfacePtr(Self self)
	{
		return self.handle;
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual libqt_string[] Keys()
	{
		return this.handle.Keys();
	}
	
}
extension CQt
{
	[LinkName("QFactoryInterface_Keys")]
	public static extern libqt_string[] QFactoryInterface_Keys(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QFactoryInterface_Delete")]
	public static extern void QFactoryInterface_Delete(void* self);
}