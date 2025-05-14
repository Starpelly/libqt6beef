using System;
using System.Interop;
namespace Qt;

public interface IQScopedPointerPodDeleter
{
	void* NativePtr { get; }
}
public struct QScopedPointerPodDeleterPtr : IQScopedPointerPodDeleter, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQScopedPointerPodDeleter other)
	{
		return .(CQt.QScopedPointerPodDeleter_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QScopedPointerPodDeleter_Delete(this.nativePtr);
	}
	
	public static void Cleanup(void* pointer)
	{
		CQt.QScopedPointerPodDeleter_Cleanup(pointer);
	}
	
	public void OperatorCall(void* pointer)
	{
		CQt.QScopedPointerPodDeleter_OperatorCall(this.nativePtr, pointer);
	}
	
}
public class QScopedPointerPodDeleter
{
	public QScopedPointerPodDeleterPtr handle;
	
	public static implicit operator QScopedPointerPodDeleterPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQScopedPointerPodDeleter other)
	{
		this.handle = QScopedPointerPodDeleterPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public static void Cleanup(void* pointer)
	{
		QScopedPointerPodDeleterPtr.Cleanup(pointer);
	}
	
	public void OperatorCall(void* pointer)
	{
		this.handle.OperatorCall(pointer);
	}
	
}
extension CQt
{
	[LinkName("QScopedPointerPodDeleter_new")]
	public static extern void* QScopedPointerPodDeleter_new(void* other);
	[LinkName("QScopedPointerPodDeleter_new2")]
	public static extern void* QScopedPointerPodDeleter_new2(void* other);
	[LinkName("QScopedPointerPodDeleter_Cleanup")]
	public static extern void QScopedPointerPodDeleter_Cleanup(void* pointer);
	[LinkName("QScopedPointerPodDeleter_OperatorCall")]
	public static extern void QScopedPointerPodDeleter_OperatorCall(void* c_this, void* pointer);
	/// Delete this object from C++ memory
	[LinkName("QScopedPointerPodDeleter_Delete")]
	public static extern void QScopedPointerPodDeleter_Delete(void* self);
}