using System;
using System.Interop;
namespace Qt;

public interface IQRunnable
{
	void* NativePtr { get; }
}
public struct QRunnablePtr : IQRunnable, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QRunnable_new());
	}
	
	public void Dispose()
	{
		CQt.QRunnable_Delete(this.nativePtr);
	}
	
	public void Run()
	{
		CQt.QRunnable_Run(this.nativePtr);
	}
	
	public bool AutoDelete()
	{
		return CQt.QRunnable_AutoDelete(this.nativePtr);
	}
	
	public void SetAutoDelete(bool autoDelete)
	{
		CQt.QRunnable_SetAutoDelete(this.nativePtr, autoDelete);
	}
	
}
public class QRunnable
{
	public QRunnablePtr handle;
	
	public static implicit operator QRunnablePtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QRunnablePtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void Run()
	{
		this.handle.Run();
	}
	
	public bool AutoDelete()
	{
		return this.handle.AutoDelete();
	}
	
	public void SetAutoDelete(bool autoDelete)
	{
		this.handle.SetAutoDelete(autoDelete);
	}
	
}
extension CQt
{
	[LinkName("QRunnable_new")]
	public static extern void* QRunnable_new();
	[LinkName("QRunnable_Run")]
	public static extern void QRunnable_Run(void* c_this);
	[LinkName("QRunnable_AutoDelete")]
	public static extern bool QRunnable_AutoDelete(void* c_this);
	[LinkName("QRunnable_SetAutoDelete")]
	public static extern void QRunnable_SetAutoDelete(void* c_this, bool autoDelete);
	/// Delete this object from C++ memory
	[LinkName("QRunnable_Delete")]
	public static extern void QRunnable_Delete(void* self);
}