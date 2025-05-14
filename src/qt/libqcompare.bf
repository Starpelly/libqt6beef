using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QtPrivate__Ordering
{
	Equal = 0,
	Equivalent = 0,
	Less = -1,
	Greater = 1,
}
[AllowDuplicates]
public enum QtPrivate__Uncomparable
{
	Unordered = -127,
}
public interface IQPartialOrdering
{
	void* NativePtr { get; }
}
public struct QPartialOrderingPtr : IQPartialOrdering, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQPartialOrdering other)
	{
		return .(CQt.QPartialOrdering_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	public void Dispose()
	{
		CQt.QPartialOrdering_Delete(this.nativePtr);
	}
}
public class QPartialOrdering
{
	public QPartialOrderingPtr handle;
	
	public static implicit operator QPartialOrderingPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQPartialOrdering other)
	{
		this.handle = QPartialOrderingPtr.New(other);
	}
	public ~this()
	{
		this.handle.Dispose();
	}
}
extension CQt
{
	[LinkName("QPartialOrdering_new")]
	public static extern void* QPartialOrdering_new(void* other);
	[LinkName("QPartialOrdering_new2")]
	public static extern void* QPartialOrdering_new2(void* other);
	[LinkName("QPartialOrdering_new3")]
	public static extern void* QPartialOrdering_new3(void* param1);
	/// Delete this object from C++ memory
	[LinkName("QPartialOrdering_Delete")]
	public static extern void QPartialOrdering_Delete(void* self);
}