using System;
using System.Interop;
namespace Qt;

public struct QThreadStorageData
{
	[LinkName("QThreadStorageData_new")]
	public static extern void* QThreadStorageData_new(QThreadStorageData param1);
	[LinkName("QThreadStorageData_Get")]
	public static extern void QThreadStorageData_Get(void* c_this);
	[LinkName("QThreadStorageData_Set")]
	public static extern void QThreadStorageData_Set(void* c_this, void p);
	[LinkName("QThreadStorageData_Finish")]
	public static extern void QThreadStorageData_Finish(void param1);
}