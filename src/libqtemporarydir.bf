using System;
using System.Interop;
namespace Qt;

public struct QTemporaryDir
{
	[LinkName("QTemporaryDir_new")]
	public static extern void* QTemporaryDir_new();
	[LinkName("QTemporaryDir_new2")]
	public static extern void* QTemporaryDir_new2(char8[] templateName);
	[LinkName("QTemporaryDir_Swap")]
	public static extern void QTemporaryDir_Swap(void* c_this, QTemporaryDir other);
	[LinkName("QTemporaryDir_IsValid")]
	public static extern bool QTemporaryDir_IsValid(void* c_this);
	[LinkName("QTemporaryDir_ErrorString")]
	public static extern char8[] QTemporaryDir_ErrorString(void* c_this);
	[LinkName("QTemporaryDir_AutoRemove")]
	public static extern bool QTemporaryDir_AutoRemove(void* c_this);
	[LinkName("QTemporaryDir_SetAutoRemove")]
	public static extern void QTemporaryDir_SetAutoRemove(void* c_this, bool b);
	[LinkName("QTemporaryDir_Remove")]
	public static extern bool QTemporaryDir_Remove(void* c_this);
	[LinkName("QTemporaryDir_Path")]
	public static extern char8[] QTemporaryDir_Path(void* c_this);
	[LinkName("QTemporaryDir_FilePath")]
	public static extern char8[] QTemporaryDir_FilePath(void* c_this, char8[] fileName);
}