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
public class QSessionManager
{
	protected void* nativePtr;
	
	public virtual void* MetaObject()
	{
		return CQt.QSessionManager_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QSessionManager_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QSessionManager_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QSessionManager_Tr(s);
	}
	
	public libqt_string SessionId()
	{
		return CQt.QSessionManager_SessionId(this.nativePtr);
	}
	
	public libqt_string SessionKey()
	{
		return CQt.QSessionManager_SessionKey(this.nativePtr);
	}
	
	public bool AllowsInteraction()
	{
		return CQt.QSessionManager_AllowsInteraction(this.nativePtr);
	}
	
	public bool AllowsErrorInteraction()
	{
		return CQt.QSessionManager_AllowsErrorInteraction(this.nativePtr);
	}
	
	public void Release()
	{
		CQt.QSessionManager_Release(this.nativePtr);
	}
	
	public void Cancel()
	{
		CQt.QSessionManager_Cancel(this.nativePtr);
	}
	
	public void SetRestartHint(int64 restartHint)
	{
		CQt.QSessionManager_SetRestartHint(this.nativePtr, restartHint);
	}
	
	public int64 RestartHint()
	{
		return CQt.QSessionManager_RestartHint(this.nativePtr);
	}
	
	public void SetRestartCommand(libqt_string[] restartCommand)
	{
		CQt.QSessionManager_SetRestartCommand(this.nativePtr, restartCommand);
	}
	
	public libqt_string[] RestartCommand()
	{
		return CQt.QSessionManager_RestartCommand(this.nativePtr);
	}
	
	public void SetDiscardCommand(libqt_string[] discardCommand)
	{
		CQt.QSessionManager_SetDiscardCommand(this.nativePtr, discardCommand);
	}
	
	public libqt_string[] DiscardCommand()
	{
		return CQt.QSessionManager_DiscardCommand(this.nativePtr);
	}
	
	public void SetManagerProperty(libqt_string name, libqt_string value)
	{
		CQt.QSessionManager_SetManagerProperty(this.nativePtr, name, value);
	}
	
	public void SetManagerProperty2(libqt_string name, libqt_string[] value)
	{
		CQt.QSessionManager_SetManagerProperty2(this.nativePtr, name, value);
	}
	
	public bool IsPhase2()
	{
		return CQt.QSessionManager_IsPhase2(this.nativePtr);
	}
	
	public void RequestPhase2()
	{
		CQt.QSessionManager_RequestPhase2(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QSessionManager_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QSessionManager_Tr3(s, c, n);
	}
	
	public virtual bool Event(void* event)
	{
		return CQt.QObject_Event(this.nativePtr, event);
	}
	
	public virtual bool EventFilter(void* watched, void* event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, watched, event);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(void name)
	{
		CQt.QObject_SetObjectName(this.nativePtr, name);
	}
	
	public bool IsWidgetType()
	{
		return CQt.QObject_IsWidgetType(this.nativePtr);
	}
	
	public bool IsWindowType()
	{
		return CQt.QObject_IsWindowType(this.nativePtr);
	}
	
	public bool IsQuickItemType()
	{
		return CQt.QObject_IsQuickItemType(this.nativePtr);
	}
	
	public bool SignalsBlocked()
	{
		return CQt.QObject_SignalsBlocked(this.nativePtr);
	}
	
	public bool BlockSignals(bool b)
	{
		return CQt.QObject_BlockSignals(this.nativePtr, b);
	}
	
	public void* Thread()
	{
		return CQt.QObject_Thread(this.nativePtr);
	}
	
	public void MoveToThread(void* thread)
	{
		CQt.QObject_MoveToThread(this.nativePtr, thread);
	}
	
	public int32 StartTimer(int32 interval)
	{
		return CQt.QObject_StartTimer(this.nativePtr, interval);
	}
	
	public void KillTimer(int32 id)
	{
		CQt.QObject_KillTimer(this.nativePtr, id);
	}
	
	public void*[] Children()
	{
		return CQt.QObject_Children(this.nativePtr);
	}
	
	public void SetParent(void* parent)
	{
		CQt.QObject_SetParent(this.nativePtr, parent);
	}
	
	public void InstallEventFilter(void* filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, filterObj);
	}
	
	public void RemoveEventFilter(void* obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, obj);
	}
	
	public static QMetaObject__Connection Connect(void* sender, void* signal, void* receiver, void* method)
	{
		return CQt.QObject_Connect(sender, signal, receiver, method);
	}
	
	public QMetaObject__Connection Connect2(void* sender, char8[] signal, char8[] member)
	{
		return CQt.QObject_Connect2(this.nativePtr, sender, signal, member);
	}
	
	public static bool Disconnect(void* sender, void* signal, void* receiver, void* member)
	{
		return CQt.QObject_Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__Connection* param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection(param1);
	}
	
	public void DumpObjectTree()
	{
		CQt.QObject_DumpObjectTree(this.nativePtr);
	}
	
	public void DumpObjectInfo()
	{
		CQt.QObject_DumpObjectInfo(this.nativePtr);
	}
	
	public bool SetProperty(char8[] name, void* value)
	{
		return CQt.QObject_SetProperty(this.nativePtr, name, value);
	}
	
	public void Property(char8[] name)
	{
		CQt.QObject_Property(this.nativePtr, name);
	}
	
	public libqt_string[] DynamicPropertyNames()
	{
		return CQt.QObject_DynamicPropertyNames(this.nativePtr);
	}
	
	public void* BindingStorage()
	{
		return CQt.QObject_BindingStorage(this.nativePtr);
	}
	
	public void* BindingStorage2()
	{
		return CQt.QObject_BindingStorage2(this.nativePtr);
	}
	
	public void* Parent()
	{
		return CQt.QObject_Parent(this.nativePtr);
	}
	
	public bool Inherits(char8[] classname)
	{
		return CQt.QObject_Inherits(this.nativePtr, classname);
	}
	
	public void DeleteLater()
	{
		CQt.QObject_DeleteLater(this.nativePtr);
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return CQt.QObject_StartTimer2(this.nativePtr, interval, timerType);
	}
	
	public static QMetaObject__Connection Connect5(void* sender, void* signal, void* receiver, void* method, int64 typeVal)
	{
		return CQt.QObject_Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public QMetaObject__Connection Connect4(void* sender, char8[] signal, char8[] member, int64 typeVal)
	{
		return CQt.QObject_Connect4(this.nativePtr, sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QSessionManager_MetaObject")]
	public static extern void* QSessionManager_MetaObject(void* c_this);
	[LinkName("QSessionManager_Metacast")]
	public static extern void* QSessionManager_Metacast(void* c_this, char8[] param1);
	[LinkName("QSessionManager_Metacall")]
	public static extern int32 QSessionManager_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QSessionManager_Tr")]
	public static extern libqt_string QSessionManager_Tr(char8[] s);
	[LinkName("QSessionManager_SessionId")]
	public static extern libqt_string QSessionManager_SessionId(void* c_this);
	[LinkName("QSessionManager_SessionKey")]
	public static extern libqt_string QSessionManager_SessionKey(void* c_this);
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
	public static extern void QSessionManager_SetRestartCommand(void* c_this, libqt_string[] restartCommand);
	[LinkName("QSessionManager_RestartCommand")]
	public static extern libqt_string[] QSessionManager_RestartCommand(void* c_this);
	[LinkName("QSessionManager_SetDiscardCommand")]
	public static extern void QSessionManager_SetDiscardCommand(void* c_this, libqt_string[] discardCommand);
	[LinkName("QSessionManager_DiscardCommand")]
	public static extern libqt_string[] QSessionManager_DiscardCommand(void* c_this);
	[LinkName("QSessionManager_SetManagerProperty")]
	public static extern void QSessionManager_SetManagerProperty(void* c_this, libqt_string name, libqt_string value);
	[LinkName("QSessionManager_SetManagerProperty2")]
	public static extern void QSessionManager_SetManagerProperty2(void* c_this, libqt_string name, libqt_string[] value);
	[LinkName("QSessionManager_IsPhase2")]
	public static extern bool QSessionManager_IsPhase2(void* c_this);
	[LinkName("QSessionManager_RequestPhase2")]
	public static extern void QSessionManager_RequestPhase2(void* c_this);
	[LinkName("QSessionManager_Tr2")]
	public static extern libqt_string QSessionManager_Tr2(char8[] s, char8[] c);
	[LinkName("QSessionManager_Tr3")]
	public static extern libqt_string QSessionManager_Tr3(char8[] s, char8[] c, int32 n);
}