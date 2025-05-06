using System;
using System.Interop;
namespace Qt;

public struct QStyleFactory
{
	[LinkName("QStyleFactory_new")]
	public static extern void* QStyleFactory_new(QStyleFactory other);
	[LinkName("QStyleFactory_new2")]
	public static extern void* QStyleFactory_new2(QStyleFactory other);
	[LinkName("QStyleFactory_Keys")]
	public static extern char8[][] QStyleFactory_Keys();
	[LinkName("QStyleFactory_Create")]
	public static extern QStyle QStyleFactory_Create(char8[] param1);
}