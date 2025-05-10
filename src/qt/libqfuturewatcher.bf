using System;
using System.Interop;
namespace Qt;

public interface IQFutureWatcherBase
{
	void* NativePtr { get; }
}
public class QFutureWatcherBase : IQFutureWatcherBase, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public ~this()
	{
		CQt.QFutureWatcherBase_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QFutureWatcherBase_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QFutureWatcherBase_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QFutureWatcherBase_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QFutureWatcherBase_Tr(s);
	}
	
	public int32 ProgressValue()
	{
		return CQt.QFutureWatcherBase_ProgressValue(this.nativePtr);
	}
	
	public int32 ProgressMinimum()
	{
		return CQt.QFutureWatcherBase_ProgressMinimum(this.nativePtr);
	}
	
	public int32 ProgressMaximum()
	{
		return CQt.QFutureWatcherBase_ProgressMaximum(this.nativePtr);
	}
	
	public libqt_string ProgressText()
	{
		return CQt.QFutureWatcherBase_ProgressText(this.nativePtr);
	}
	
	public bool IsStarted()
	{
		return CQt.QFutureWatcherBase_IsStarted(this.nativePtr);
	}
	
	public bool IsFinished()
	{
		return CQt.QFutureWatcherBase_IsFinished(this.nativePtr);
	}
	
	public bool IsRunning()
	{
		return CQt.QFutureWatcherBase_IsRunning(this.nativePtr);
	}
	
	public bool IsCanceled()
	{
		return CQt.QFutureWatcherBase_IsCanceled(this.nativePtr);
	}
	
	public bool IsPaused()
	{
		return CQt.QFutureWatcherBase_IsPaused(this.nativePtr);
	}
	
	public bool IsSuspending()
	{
		return CQt.QFutureWatcherBase_IsSuspending(this.nativePtr);
	}
	
	public bool IsSuspended()
	{
		return CQt.QFutureWatcherBase_IsSuspended(this.nativePtr);
	}
	
	public void WaitForFinished()
	{
		CQt.QFutureWatcherBase_WaitForFinished(this.nativePtr);
	}
	
	public void SetPendingResultsLimit(int32 limit)
	{
		CQt.QFutureWatcherBase_SetPendingResultsLimit(this.nativePtr, limit);
	}
	
	public virtual bool Event(IQEvent event)
	{
		return CQt.QFutureWatcherBase_Event(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public void Cancel()
	{
		CQt.QFutureWatcherBase_Cancel(this.nativePtr);
	}
	
	public void SetSuspended(bool suspendVal)
	{
		CQt.QFutureWatcherBase_SetSuspended(this.nativePtr, suspendVal);
	}
	
	public void Suspend()
	{
		CQt.QFutureWatcherBase_Suspend(this.nativePtr);
	}
	
	public void Resume()
	{
		CQt.QFutureWatcherBase_Resume(this.nativePtr);
	}
	
	public void ToggleSuspended()
	{
		CQt.QFutureWatcherBase_ToggleSuspended(this.nativePtr);
	}
	
	public void SetPaused(bool paused)
	{
		CQt.QFutureWatcherBase_SetPaused(this.nativePtr, paused);
	}
	
	public void Pause()
	{
		CQt.QFutureWatcherBase_Pause(this.nativePtr);
	}
	
	public void TogglePaused()
	{
		CQt.QFutureWatcherBase_TogglePaused(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QFutureWatcherBase_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QFutureWatcherBase_Tr3(s, c, n);
	}
	
	public virtual bool EventFilter(IQObject watched, IQEvent event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, (watched == null) ? null : (void*)watched.NativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(IQAnyStringView name)
	{
		CQt.QObject_SetObjectName(this.nativePtr, (name == default) ? default : (char8*)name.NativePtr);
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
		CQt.QObject_MoveToThread(this.nativePtr, (thread == null) ? null : (void*)thread.NativePtr);
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
		CQt.QObject_SetParent(this.nativePtr, (parent == null) ? null : (void*)parent.NativePtr);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, (filterObj == null) ? null : (void*)filterObj.NativePtr);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, (obj == null) ? null : (void*)obj.NativePtr);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		CQt.QObject_Connect((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (method == default) ? default : (void*)method.NativePtr);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		CQt.QObject_Connect2(this.nativePtr, (sender == null) ? null : (void*)sender.NativePtr, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return CQt.QObject_Disconnect((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (member == default) ? default : (void*)member.NativePtr);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__Connection param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection((param1 == default) ? default : (void*)param1.NativePtr);
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
		return CQt.QObject_SetProperty(this.nativePtr, name, (value == default) ? default : (void*)value.NativePtr);
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
		return CQt.QObject_StartTimer2(this.nativePtr, interval, timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		CQt.QObject_Connect5((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (method == default) ? default : (void*)method.NativePtr, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		CQt.QObject_Connect4(this.nativePtr, (sender == null) ? null : (void*)sender.NativePtr, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QFutureWatcherBase_MetaObject")]
	public static extern void* QFutureWatcherBase_MetaObject(void* c_this);
	[LinkName("QFutureWatcherBase_Metacast")]
	public static extern void* QFutureWatcherBase_Metacast(void* c_this, char8* param1);
	[LinkName("QFutureWatcherBase_Metacall")]
	public static extern int32 QFutureWatcherBase_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QFutureWatcherBase_Tr")]
	public static extern libqt_string QFutureWatcherBase_Tr(char8* s);
	[LinkName("QFutureWatcherBase_ProgressValue")]
	public static extern int32 QFutureWatcherBase_ProgressValue(void* c_this);
	[LinkName("QFutureWatcherBase_ProgressMinimum")]
	public static extern int32 QFutureWatcherBase_ProgressMinimum(void* c_this);
	[LinkName("QFutureWatcherBase_ProgressMaximum")]
	public static extern int32 QFutureWatcherBase_ProgressMaximum(void* c_this);
	[LinkName("QFutureWatcherBase_ProgressText")]
	public static extern libqt_string QFutureWatcherBase_ProgressText(void* c_this);
	[LinkName("QFutureWatcherBase_IsStarted")]
	public static extern bool QFutureWatcherBase_IsStarted(void* c_this);
	[LinkName("QFutureWatcherBase_IsFinished")]
	public static extern bool QFutureWatcherBase_IsFinished(void* c_this);
	[LinkName("QFutureWatcherBase_IsRunning")]
	public static extern bool QFutureWatcherBase_IsRunning(void* c_this);
	[LinkName("QFutureWatcherBase_IsCanceled")]
	public static extern bool QFutureWatcherBase_IsCanceled(void* c_this);
	[LinkName("QFutureWatcherBase_IsPaused")]
	public static extern bool QFutureWatcherBase_IsPaused(void* c_this);
	[LinkName("QFutureWatcherBase_IsSuspending")]
	public static extern bool QFutureWatcherBase_IsSuspending(void* c_this);
	[LinkName("QFutureWatcherBase_IsSuspended")]
	public static extern bool QFutureWatcherBase_IsSuspended(void* c_this);
	[LinkName("QFutureWatcherBase_WaitForFinished")]
	public static extern void QFutureWatcherBase_WaitForFinished(void* c_this);
	[LinkName("QFutureWatcherBase_SetPendingResultsLimit")]
	public static extern void QFutureWatcherBase_SetPendingResultsLimit(void* c_this, int32 limit);
	[LinkName("QFutureWatcherBase_Event")]
	public static extern bool QFutureWatcherBase_Event(void* c_this, void* event);
	[LinkName("QFutureWatcherBase_Connect_Started")]
	public static extern void QFutureWatcherBase_Connect_Started(void* c_this, c_intptr slot);
	[LinkName("QFutureWatcherBase_Connect_Finished")]
	public static extern void QFutureWatcherBase_Connect_Finished(void* c_this, c_intptr slot);
	[LinkName("QFutureWatcherBase_Connect_Canceled")]
	public static extern void QFutureWatcherBase_Connect_Canceled(void* c_this, c_intptr slot);
	[LinkName("QFutureWatcherBase_Connect_Paused")]
	public static extern void QFutureWatcherBase_Connect_Paused(void* c_this, c_intptr slot);
	[LinkName("QFutureWatcherBase_Connect_Suspending")]
	public static extern void QFutureWatcherBase_Connect_Suspending(void* c_this, c_intptr slot);
	[LinkName("QFutureWatcherBase_Connect_Suspended")]
	public static extern void QFutureWatcherBase_Connect_Suspended(void* c_this, c_intptr slot);
	[LinkName("QFutureWatcherBase_Connect_Resumed")]
	public static extern void QFutureWatcherBase_Connect_Resumed(void* c_this, c_intptr slot);
	[LinkName("QFutureWatcherBase_Connect_ResultReadyAt")]
	public static extern void QFutureWatcherBase_Connect_ResultReadyAt(void* c_this, c_intptr slot);
	[LinkName("QFutureWatcherBase_Connect_ResultsReadyAt")]
	public static extern void QFutureWatcherBase_Connect_ResultsReadyAt(void* c_this, c_intptr slot);
	[LinkName("QFutureWatcherBase_Connect_ProgressRangeChanged")]
	public static extern void QFutureWatcherBase_Connect_ProgressRangeChanged(void* c_this, c_intptr slot);
	[LinkName("QFutureWatcherBase_Connect_ProgressValueChanged")]
	public static extern void QFutureWatcherBase_Connect_ProgressValueChanged(void* c_this, c_intptr slot);
	[LinkName("QFutureWatcherBase_Connect_ProgressTextChanged")]
	public static extern void QFutureWatcherBase_Connect_ProgressTextChanged(void* c_this, c_intptr slot);
	[LinkName("QFutureWatcherBase_Cancel")]
	public static extern void QFutureWatcherBase_Cancel(void* c_this);
	[LinkName("QFutureWatcherBase_SetSuspended")]
	public static extern void QFutureWatcherBase_SetSuspended(void* c_this, bool suspendVal);
	[LinkName("QFutureWatcherBase_Suspend")]
	public static extern void QFutureWatcherBase_Suspend(void* c_this);
	[LinkName("QFutureWatcherBase_Resume")]
	public static extern void QFutureWatcherBase_Resume(void* c_this);
	[LinkName("QFutureWatcherBase_ToggleSuspended")]
	public static extern void QFutureWatcherBase_ToggleSuspended(void* c_this);
	[LinkName("QFutureWatcherBase_SetPaused")]
	public static extern void QFutureWatcherBase_SetPaused(void* c_this, bool paused);
	[LinkName("QFutureWatcherBase_Pause")]
	public static extern void QFutureWatcherBase_Pause(void* c_this);
	[LinkName("QFutureWatcherBase_TogglePaused")]
	public static extern void QFutureWatcherBase_TogglePaused(void* c_this);
	[LinkName("QFutureWatcherBase_ConnectNotify")]
	public static extern void QFutureWatcherBase_ConnectNotify(void* c_this, void* signal);
	[LinkName("QFutureWatcherBase_DisconnectNotify")]
	public static extern void QFutureWatcherBase_DisconnectNotify(void* c_this, void* signal);
	[LinkName("QFutureWatcherBase_ConnectOutputInterface")]
	public static extern void QFutureWatcherBase_ConnectOutputInterface(void* c_this);
	[LinkName("QFutureWatcherBase_DisconnectOutputInterface")]
	public static extern void QFutureWatcherBase_DisconnectOutputInterface(void* c_this);
	[LinkName("QFutureWatcherBase_Tr2")]
	public static extern libqt_string QFutureWatcherBase_Tr2(char8* s, char8* c);
	[LinkName("QFutureWatcherBase_Tr3")]
	public static extern libqt_string QFutureWatcherBase_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QFutureWatcherBase_DisconnectOutputInterface1")]
	public static extern void QFutureWatcherBase_DisconnectOutputInterface1(void* c_this, bool pendingAssignment);
	/// Delete this object from C++ memory
	[LinkName("QFutureWatcherBase_Delete")]
	public static extern void QFutureWatcherBase_Delete(void* self);
}