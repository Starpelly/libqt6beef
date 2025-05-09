using System;
using System.Interop;
namespace Qt;

public class QScopedPointerPodDeleter
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QScopedPointerPodDeleter_new(other);
	}
	
	public ~this()
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