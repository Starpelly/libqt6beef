using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QIODeviceBase__OpenModeFlag
{
	NotOpen = 0,
	ReadOnly = 1,
	WriteOnly = 2,
	ReadWrite = 3,
	Append = 4,
	Truncate = 8,
	Text = 16,
	Unbuffered = 32,
	NewOnly = 64,
	ExistingOnly = 128,
}
public interface IQIODeviceBase
{
	void* NativePtr { get; }
}
public class QIODeviceBase : IQIODeviceBase
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQIODeviceBase other)
	{
		this.nativePtr = CQt.QIODeviceBase_new((other == default) ? default : (void*)other.NativePtr);
	}
}
extension CQt
{
	[LinkName("QIODeviceBase_new")]
	public static extern void* QIODeviceBase_new(void* other);
}