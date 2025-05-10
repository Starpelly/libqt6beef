using System;
using System.Interop;
namespace Qt;

public interface IQAbstractConcatenable
{
	void* NativePtr { get; }
}
public class QAbstractConcatenable : IQAbstractConcatenable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQAbstractConcatenable other)
	{
		this.nativePtr = CQt.QAbstractConcatenable_new((other == default) ? default : (void*)other.NativePtr);
	}
	public ~this()
	{
		CQt.QAbstractConcatenable_Delete(this.nativePtr);
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