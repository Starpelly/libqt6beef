using System;
using System.Interop;
namespace Qt;

public struct QUntypedPropertyData
{
	[LinkName("QUntypedPropertyData_new")]
	public static extern void* QUntypedPropertyData_new(QUntypedPropertyData other);
	[LinkName("QUntypedPropertyData_new2")]
	public static extern void* QUntypedPropertyData_new2(QUntypedPropertyData other);
}
public struct QPropertyProxyBindingData
{
}