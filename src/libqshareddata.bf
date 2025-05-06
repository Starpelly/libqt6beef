using System;
using System.Interop;
namespace Qt;

public struct QSharedData
{
	[LinkName("QSharedData_new")]
	public static extern void* QSharedData_new();
	[LinkName("QSharedData_new2")]
	public static extern void* QSharedData_new2(QSharedData param1);
}
public struct QAdoptSharedDataTag
{
	[LinkName("QAdoptSharedDataTag_new")]
	public static extern void* QAdoptSharedDataTag_new(QAdoptSharedDataTag other);
	[LinkName("QAdoptSharedDataTag_new2")]
	public static extern void* QAdoptSharedDataTag_new2(QAdoptSharedDataTag other);
	[LinkName("QAdoptSharedDataTag_new3")]
	public static extern void* QAdoptSharedDataTag_new3();
}