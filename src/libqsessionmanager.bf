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
public struct QSessionManager
{
	[LinkName("QSessionManager_MetaObject")]
	public static extern QMetaObject QSessionManager_MetaObject(void* c_this);
	[LinkName("QSessionManager_Metacast")]
	public static extern void QSessionManager_Metacast(void* c_this, char8[] param1);
	[LinkName("QSessionManager_Metacall")]
	public static extern int32 QSessionManager_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QSessionManager_Tr")]
	public static extern char8[] QSessionManager_Tr(char8[] s);
	[LinkName("QSessionManager_SessionId")]
	public static extern char8[] QSessionManager_SessionId(void* c_this);
	[LinkName("QSessionManager_SessionKey")]
	public static extern char8[] QSessionManager_SessionKey(void* c_this);
	[LinkName("QSessionManager_AllowsInteraction")]
	public static extern bool QSessionManager_AllowsInteraction(void* c_this);
	[LinkName("QSessionManager_AllowsErrorInteraction")]
	public static extern bool QSessionManager_AllowsErrorInteraction(void* c_this);
	[LinkName("QSessionManager_Release")]
	public static extern void QSessionManager_Release(void* c_this);
	[LinkName("QSessionManager_Cancel")]
	public static extern void QSessionManager_Cancel(void* c_this);
	[LinkName("QSessionManager_SetRestartHint")]
	public static extern void QSessionManager_SetRestartHint(void* c_this, int64 restartHint);
	[LinkName("QSessionManager_RestartHint")]
	public static extern int64 QSessionManager_RestartHint(void* c_this);
	[LinkName("QSessionManager_SetRestartCommand")]
	public static extern void QSessionManager_SetRestartCommand(void* c_this, char8[][] restartCommand);
	[LinkName("QSessionManager_RestartCommand")]
	public static extern char8[][] QSessionManager_RestartCommand(void* c_this);
	[LinkName("QSessionManager_SetDiscardCommand")]
	public static extern void QSessionManager_SetDiscardCommand(void* c_this, char8[][] discardCommand);
	[LinkName("QSessionManager_DiscardCommand")]
	public static extern char8[][] QSessionManager_DiscardCommand(void* c_this);
	[LinkName("QSessionManager_SetManagerProperty")]
	public static extern void QSessionManager_SetManagerProperty(void* c_this, char8[] name, char8[] value);
	[LinkName("QSessionManager_SetManagerProperty2")]
	public static extern void QSessionManager_SetManagerProperty2(void* c_this, char8[] name, char8[][] value);
	[LinkName("QSessionManager_IsPhase2")]
	public static extern bool QSessionManager_IsPhase2(void* c_this);
	[LinkName("QSessionManager_RequestPhase2")]
	public static extern void QSessionManager_RequestPhase2(void* c_this);
	[LinkName("QSessionManager_Tr2")]
	public static extern char8[] QSessionManager_Tr2(char8[] s, char8[] c);
	[LinkName("QSessionManager_Tr3")]
	public static extern char8[] QSessionManager_Tr3(char8[] s, char8[] c, int32 n);
}