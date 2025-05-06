using System;
using System.Interop;
namespace Qt;

public struct QFileIconProvider : QAbstractFileIconProvider
{
	[LinkName("QFileIconProvider_new")]
	public static extern QFileIconProvider* QFileIconProvider_new();
	[LinkName("QFileIconProvider_Icon")]
	public static extern QIcon QFileIconProvider_Icon(Self* c_this, int64 typeVal);
	[LinkName("QFileIconProvider_IconWithInfo")]
	public static extern QIcon QFileIconProvider_IconWithInfo(Self* c_this, QFileInfo* info);
}