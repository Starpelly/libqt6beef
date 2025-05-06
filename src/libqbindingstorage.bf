using System;
using System.Interop;
namespace Qt;

public struct QBindingStatus
{
	[LinkName("QBindingStatus_new")]
	public static extern void* QBindingStatus_new(QBindingStatus other);
	[LinkName("QBindingStatus_new2")]
	public static extern void* QBindingStatus_new2(QBindingStatus other);
}
public struct QBindingStorage
{
	[LinkName("QBindingStorage_new")]
	public static extern void* QBindingStorage_new();
	[LinkName("QBindingStorage_IsEmpty")]
	public static extern bool QBindingStorage_IsEmpty(void* c_this);
	[LinkName("QBindingStorage_IsValid")]
	public static extern bool QBindingStorage_IsValid(void* c_this);
	[LinkName("QBindingStorage_RegisterDependency")]
	public static extern void QBindingStorage_RegisterDependency(void* c_this, QUntypedPropertyData data);
}