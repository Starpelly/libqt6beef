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
public struct QIODeviceBasePtr : IQIODeviceBase
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQIODeviceBase other)
	{
		return .(CQt.QIODeviceBase_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
}
public class QIODeviceBase
{
	public QIODeviceBasePtr handle;
	
	public static implicit operator QIODeviceBasePtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQIODeviceBase other)
	{
		this.handle = QIODeviceBasePtr.New(other);
	}
}
extension CQt
{
	[LinkName("QIODeviceBase_new")]
	public static extern void* QIODeviceBase_new(void* other);
}