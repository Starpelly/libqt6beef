using System;
using System.Interop;
namespace Qt;

public interface IQAbstractConcatenable
{
	void* NativePtr { get; }
}
public struct QAbstractConcatenablePtr : IQAbstractConcatenable, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQAbstractConcatenable other)
	{
		return .(CQt.QAbstractConcatenable_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	public void Dispose()
	{
		CQt.QAbstractConcatenable_Delete(this.nativePtr);
	}
}
public class QAbstractConcatenable
{
	public QAbstractConcatenablePtr handle;
	
	public static implicit operator QAbstractConcatenablePtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQAbstractConcatenable other)
	{
		this.handle = QAbstractConcatenablePtr.New(other);
	}
	public ~this()
	{
		this.handle.Dispose();
	}
}
extension CQt
{
	[LinkName("QAbstractConcatenable_new")]
	public static extern void* QAbstractConcatenable_new(void* other);
	[LinkName("QAbstractConcatenable_new2")]
	public static extern void* QAbstractConcatenable_new2(void* other);
	/// Delete this object from C++ memory
	[LinkName("QAbstractConcatenable_Delete")]
	public static extern void QAbstractConcatenable_Delete(void* self);
}