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
public interface IQSessionManager
{
	void* NativePtr { get; }
}
public struct QSessionManagerPtr : IQSessionManager, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public void* MetaObject()
	{
		return CQt.QSessionManager_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QSessionManager_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QSessionManager_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
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
		CQt.QSessionManager_SetRestartHint(this.nativePtr, (int64)restartHint);
	}
	
	public int64 RestartHint()
	{
		return CQt.QSessionManager_RestartHint(this.nativePtr);
	}
	
	public void SetRestartCommand(String[] restartCommand)
	{
		CQt.QSessionManager_SetRestartCommand(this.nativePtr, null);
	}
	
	public libqt_string[] RestartCommand()
	{
		return CQt.QSessionManager_RestartCommand(this.nativePtr);
	}
	
	public void SetDiscardCommand(String[] discardCommand)
	{
		CQt.QSessionManager_SetDiscardCommand(this.nativePtr, null);
	}
	
	public libqt_string[] DiscardCommand()
	{
		return CQt.QSessionManager_DiscardCommand(this.nativePtr);
	}
	
	public void SetManagerProperty(String name, String value)
	{
		CQt.QSessionManager_SetManagerProperty(this.nativePtr, libqt_string(name), libqt_string(value));
	}
	
	public void SetManagerProperty2(String name, String[] value)
	{
		CQt.QSessionManager_SetManagerProperty2(this.nativePtr, libqt_string(name), null);
	}
	
	public bool IsPhase2()
	{
		return CQt.QSessionManager_IsPhase2(this.nativePtr);
	}
	
	public void RequestPhase2()
	{
		CQt.QSessionManager_RequestPhase2(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QSessionManager_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QSessionManager_Tr3(s, c, n);
	}
	
	public bool Event(IQEvent event)
	{
		return CQt.QObject_Event(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public bool EventFilter(IQObject watched, IQEvent event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, (watched == default || watched.NativePtr == default) ? default : watched.NativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(char8* name)
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
	
	public void MoveToThread(IQThread thread)
	{
		CQt.QObject_MoveToThread(this.nativePtr, (thread == default || thread.NativePtr == default) ? default : thread.NativePtr);
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
	
	public void SetParent(IQObject parent)
	{
		CQt.QObject_SetParent(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, (filterObj == default || filterObj.NativePtr == default) ? default : filterObj.NativePtr);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, (obj == default || obj.NativePtr == default) ? default : obj.NativePtr);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		CQt.QObject_Connect((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (method == default || method.NativePtr == default) ? default : method.NativePtr);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		CQt.QObject_Connect2(this.nativePtr, (sender == default || sender.NativePtr == default) ? default : sender.NativePtr, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return CQt.QObject_Disconnect((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (member == default || member.NativePtr == default) ? default : member.NativePtr);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection((param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void DumpObjectTree()
	{
		CQt.QObject_DumpObjectTree(this.nativePtr);
	}
	
	public void DumpObjectInfo()
	{
		CQt.QObject_DumpObjectInfo(this.nativePtr);
	}
	
	public bool SetProperty(char8* name, IQVariant value)
	{
		return CQt.QObject_SetProperty(this.nativePtr, name, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public void Property(char8* name)
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
	
	public bool Inherits(char8* classname)
	{
		return CQt.QObject_Inherits(this.nativePtr, classname);
	}
	
	public void DeleteLater()
	{
		CQt.QObject_DeleteLater(this.nativePtr);
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return CQt.QObject_StartTimer2(this.nativePtr, interval, (int64)timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		CQt.QObject_Connect5((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (method == default || method.NativePtr == default) ? default : method.NativePtr, (int64)typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		CQt.QObject_Connect4(this.nativePtr, (sender == default || sender.NativePtr == default) ? default : sender.NativePtr, signal, member, (int64)typeVal);
	}
	
}
public class QSessionManager
{
	public QSessionManagerPtr handle;
	
	public static implicit operator QSessionManagerPtr(Self self)
	{
		return self.handle;
	}
	
	public virtual void* MetaObject()
	{
		return this.handle.MetaObject();
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return this.handle.Metacast(param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return this.handle.Metacall(param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return QSessionManagerPtr.Tr(s);
	}
	
	public libqt_string SessionId()
	{
		return this.handle.SessionId();
	}
	
	public libqt_string SessionKey()
	{
		return this.handle.SessionKey();
	}
	
	public bool AllowsInteraction()
	{
		return this.handle.AllowsInteraction();
	}
	
	public bool AllowsErrorInteraction()
	{
		return this.handle.AllowsErrorInteraction();
	}
	
	public void Release()
	{
		this.handle.Release();
	}
	
	public void Cancel()
	{
		this.handle.Cancel();
	}
	
	public void SetRestartHint(int64 restartHint)
	{
		this.handle.SetRestartHint(restartHint);
	}
	
	public int64 RestartHint()
	{
		return this.handle.RestartHint();
	}
	
	public void SetRestartCommand(String[] restartCommand)
	{
		this.handle.SetRestartCommand(null);
	}
	
	public libqt_string[] RestartCommand()
	{
		return this.handle.RestartCommand();
	}
	
	public void SetDiscardCommand(String[] discardCommand)
	{
		this.handle.SetDiscardCommand(null);
	}
	
	public libqt_string[] DiscardCommand()
	{
		return this.handle.DiscardCommand();
	}
	
	public void SetManagerProperty(String name, String value)
	{
		this.handle.SetManagerProperty(name, value);
	}
	
	public void SetManagerProperty2(String name, String[] value)
	{
		this.handle.SetManagerProperty2(name, null);
	}
	
	public bool IsPhase2()
	{
		return this.handle.IsPhase2();
	}
	
	public void RequestPhase2()
	{
		this.handle.RequestPhase2();
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QSessionManagerPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QSessionManagerPtr.Tr3(s, c, n);
	}
	
	public virtual bool Event(IQEvent event)
	{
		return this.handle.Event(event);
	}
	
	public virtual bool EventFilter(IQObject watched, IQEvent event)
	{
		return this.handle.EventFilter(watched, event);
	}
	
	public libqt_string ObjectName()
	{
		return this.handle.ObjectName();
	}
	
	public void SetObjectName(char8* name)
	{
		this.handle.SetObjectName(name);
	}
	
	public bool IsWidgetType()
	{
		return this.handle.IsWidgetType();
	}
	
	public bool IsWindowType()
	{
		return this.handle.IsWindowType();
	}
	
	public bool IsQuickItemType()
	{
		return this.handle.IsQuickItemType();
	}
	
	public bool SignalsBlocked()
	{
		return this.handle.SignalsBlocked();
	}
	
	public bool BlockSignals(bool b)
	{
		return this.handle.BlockSignals(b);
	}
	
	public void* Thread()
	{
		return this.handle.Thread();
	}
	
	public void MoveToThread(IQThread thread)
	{
		this.handle.MoveToThread(thread);
	}
	
	public int32 StartTimer(int32 interval)
	{
		return this.handle.StartTimer(interval);
	}
	
	public void KillTimer(int32 id)
	{
		this.handle.KillTimer(id);
	}
	
	public void*[] Children()
	{
		return this.handle.Children();
	}
	
	public void SetParent(IQObject parent)
	{
		this.handle.SetParent(parent);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		this.handle.InstallEventFilter(filterObj);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		this.handle.RemoveEventFilter(obj);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		QSessionManagerPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QSessionManagerPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QSessionManagerPtr.DisconnectWithQMetaObjectConnection(param1);
	}
	
	public void DumpObjectTree()
	{
		this.handle.DumpObjectTree();
	}
	
	public void DumpObjectInfo()
	{
		this.handle.DumpObjectInfo();
	}
	
	public bool SetProperty(char8* name, IQVariant value)
	{
		return this.handle.SetProperty(name, value);
	}
	
	public void Property(char8* name)
	{
		this.handle.Property(name);
	}
	
	public libqt_string[] DynamicPropertyNames()
	{
		return this.handle.DynamicPropertyNames();
	}
	
	public void* BindingStorage()
	{
		return this.handle.BindingStorage();
	}
	
	public void* BindingStorage2()
	{
		return this.handle.BindingStorage2();
	}
	
	public void* Parent()
	{
		return this.handle.Parent();
	}
	
	public bool Inherits(char8* classname)
	{
		return this.handle.Inherits(classname);
	}
	
	public void DeleteLater()
	{
		this.handle.DeleteLater();
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return this.handle.StartTimer2(interval, timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		QSessionManagerPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QSessionManager_MetaObject")]
	public static extern void* QSessionManager_MetaObject(void* c_this);
	[LinkName("QSessionManager_Metacast")]
	public static extern void* QSessionManager_Metacast(void* c_this, char8* param1);
	[LinkName("QSessionManager_Metacall")]
	public static extern int32 QSessionManager_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QSessionManager_Tr")]
	public static extern libqt_string QSessionManager_Tr(char8* s);
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
	public static extern libqt_string QSessionManager_Tr2(char8* s, char8* c);
	[LinkName("QSessionManager_Tr3")]
	public static extern libqt_string QSessionManager_Tr3(char8* s, char8* c, int32 n);
}