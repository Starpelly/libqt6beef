using System;
using System.Interop;
namespace Qt;

public struct QContiguousCacheData
{
	[LinkName("QContiguousCacheData_AllocateData")]
	public static extern QContiguousCacheData QContiguousCacheData_AllocateData(int32 size, int32 alignment);
	[LinkName("QContiguousCacheData_FreeData")]
	public static extern void QContiguousCacheData_FreeData(QContiguousCacheData data);
}