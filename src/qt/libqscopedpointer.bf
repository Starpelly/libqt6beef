using System;
using System.Interop;
namespace Qt;

public struct QScopedPointerPodDeleter
{
	[LinkName("QScopedPointerPodDeleter_new")]
	public static extern QScopedPointerPodDeleter* QScopedPointerPodDeleter_new(QScopedPointerPodDeleter* other);
	[LinkName("QScopedPointerPodDeleter_new2")]
	public static extern QScopedPointerPodDeleter* QScopedPointerPodDeleter_new2(QScopedPointerPodDeleter* other);
	[LinkName("QScopedPointerPodDeleter_Cleanup")]
	public static extern void QScopedPointerPodDeleter_Cleanup(void* pointer);
	[LinkName("QScopedPointerPodDeleter_OperatorCall")]
	public static extern void QScopedPointerPodDeleter_OperatorCall(Self* c_this, void* pointer);
}