using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QSessionManager__RestartHint
{
	RestartIfRunning = 0,
	RestartAnyway = 1,
	RestartImmediately = 2,
	RestartNever = 3,
}
public struct QSessionManager : QObject
{
	[LinkName("QSessionManager_MetaObject")]
	public static extern QMetaObject* QSessionManager_MetaObject(Self* c_this);
	[LinkName("QSessionManager_Metacast")]
	public static extern void* QSessionManager_Metacast(Self* c_this, char8[] param1);
	[LinkName("QSessionManager_Metacall")]
	public static extern int32 QSessionManager_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QSessionManager_Tr")]
	public static extern libqt_string QSessionManager_Tr(char8[] s);
	[LinkName("QSessionManager_SessionId")]
	public static extern libqt_string QSessionManager_SessionId(Self* c_this);
	[LinkName("QSessionManager_SessionKey")]
	public static extern libqt_string QSessionManager_SessionKey(Self* c_this);
	[LinkName("QSessionManager_AllowsInteraction")]
	public static extern bool QSessionManager_AllowsInteraction(Self* c_this);
	[LinkName("QSessionManager_AllowsErrorInteraction")]
	public static extern bool QSessionManager_AllowsErrorInteraction(Self* c_this);
	[LinkName("QSessionManager_Release")]
	public static extern void QSessionManager_Release(Self* c_this);
	[LinkName("QSessionManager_Cancel")]
	public static extern void QSessionManager_Cancel(Self* c_this);
	[LinkName("QSessionManager_SetRestartHint")]
	public static extern void QSessionManager_SetRestartHint(Self* c_this, int64 restartHint);
	[LinkName("QSessionManager_RestartHint")]
	public static extern int64 QSessionManager_RestartHint(Self* c_this);
	[LinkName("QSessionManager_SetRestartCommand")]
	public static extern void QSessionManager_SetRestartCommand(Self* c_this, libqt_string[] restartCommand);
	[LinkName("QSessionManager_RestartCommand")]
	public static extern libqt_string[] QSessionManager_RestartCommand(Self* c_this);
	[LinkName("QSessionManager_SetDiscardCommand")]
	public static extern void QSessionManager_SetDiscardCommand(Self* c_this, libqt_string[] discardCommand);
	[LinkName("QSessionManager_DiscardCommand")]
	public static extern libqt_string[] QSessionManager_DiscardCommand(Self* c_this);
	[LinkName("QSessionManager_SetManagerProperty")]
	public static extern void QSessionManager_SetManagerProperty(Self* c_this, libqt_string name, libqt_string value);
	[LinkName("QSessionManager_SetManagerProperty2")]
	public static extern void QSessionManager_SetManagerProperty2(Self* c_this, libqt_string name, libqt_string[] value);
	[LinkName("QSessionManager_IsPhase2")]
	public static extern bool QSessionManager_IsPhase2(Self* c_this);
	[LinkName("QSessionManager_RequestPhase2")]
	public static extern void QSessionManager_RequestPhase2(Self* c_this);
	[LinkName("QSessionManager_Tr2")]
	public static extern libqt_string QSessionManager_Tr2(char8[] s, char8[] c);
	[LinkName("QSessionManager_Tr3")]
	public static extern libqt_string QSessionManager_Tr3(char8[] s, char8[] c, int32 n);
}