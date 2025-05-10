using System;
using System.Interop;
namespace Qt;

public interface IQRunnable
{
	void* NativePtr { get; }
}
public class QRunnable : IQRunnable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QRunnable_new();
	}
	
	public ~this()
	{
		CQt.QRunnable_Delete(this.nativePtr);
	}
	
	public virtual void Run()
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