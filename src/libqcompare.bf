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
public struct QPartialOrdering
{
	[LinkName("QPartialOrdering_new")]
	public static extern void* QPartialOrdering_new(QPartialOrdering other);
	[LinkName("QPartialOrdering_new2")]
	public static extern void* QPartialOrdering_new2(QPartialOrdering other);
	[LinkName("QPartialOrdering_new3")]
	public static extern void* QPartialOrdering_new3(QPartialOrdering param1);
}