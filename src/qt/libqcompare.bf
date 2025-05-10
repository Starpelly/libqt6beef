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
public class QPartialOrdering
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QPartialOrdering_new(other);
	}
	public ~this()
	{
		CQt.QPartialOrdering_Delete(this.nativePtr);
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