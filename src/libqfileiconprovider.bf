using System;
using System.Interop;
namespace Qt;

public struct QFileIconProvider
{
	[LinkName("QFileIconProvider_new")]
	public static extern void* QFileIconProvider_new();
	[LinkName("QFileIconProvider_Icon")]
	public static extern QIcon QFileIconProvider_Icon(void* c_this, int64 typeVal);
	[LinkName("QFileIconProvider_IconWithInfo")]
	public static extern QIcon QFileIconProvider_IconWithInfo(void* c_this, QFileInfo info);
}