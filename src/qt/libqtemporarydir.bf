using System;
using System.Interop;
namespace Qt;

public struct QTemporaryDir
{
	[LinkName("QTemporaryDir_new")]
	public static extern QTemporaryDir* QTemporaryDir_new();
	[LinkName("QTemporaryDir_new2")]
	public static extern QTemporaryDir* QTemporaryDir_new2(libqt_string templateName);
	[LinkName("QTemporaryDir_Swap")]
	public static extern void QTemporaryDir_Swap(Self* c_this, QTemporaryDir* other);
	[LinkName("QTemporaryDir_IsValid")]
	public static extern bool QTemporaryDir_IsValid(Self* c_this);
	[LinkName("QTemporaryDir_ErrorString")]
	public static extern libqt_string QTemporaryDir_ErrorString(Self* c_this);
	[LinkName("QTemporaryDir_AutoRemove")]
	public static extern bool QTemporaryDir_AutoRemove(Self* c_this);
	[LinkName("QTemporaryDir_SetAutoRemove")]
	public static extern void QTemporaryDir_SetAutoRemove(Self* c_this, bool b);
	[LinkName("QTemporaryDir_Remove")]
	public static extern bool QTemporaryDir_Remove(Self* c_this);
	[LinkName("QTemporaryDir_Path")]
	public static extern libqt_string QTemporaryDir_Path(Self* c_this);
	[LinkName("QTemporaryDir_FilePath")]
	public static extern libqt_string QTemporaryDir_FilePath(Self* c_this, libqt_string fileName);
}