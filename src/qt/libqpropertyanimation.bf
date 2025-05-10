using System;
using System.Interop;
namespace Qt;

public interface IQPropertyAnimation
{
	void* NativePtr { get; }
}
public class QPropertyAnimation : IQPropertyAnimation, IQVariantAnimation
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QPropertyAnimation_new();
	}
	
	public ~this()
	{
		CQt.QPropertyAnimation_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QPropertyAnimation_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QPropertyAnimation_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QPropertyAnimation_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QPropertyAnimation_Tr(s);
	}
	
	public void* TargetObject()
	{
		return CQt.QPropertyAnimation_TargetObject(this.nativePtr);
	}
	
	public void SetTargetObject(IQObject target)
	{
		CQt.QPropertyAnimation_SetTargetObject(this.nativePtr, (target == null) ? null : (void*)target.NativePtr);
	}
	
	public libqt_string PropertyName()
	{
		return CQt.QPropertyAnimation_PropertyName(this.nativePtr);
	}
	
	public void SetPropertyName(String propertyName)
	{
		CQt.QPropertyAnimation_SetPropertyName(this.nativePtr, libqt_string(propertyName));
	}
	
	public virtual bool Event(IQEvent event)
	{
		return CQt.QPropertyAnimation_Event(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void UpdateCurrentValue(IQVariant value)
	{
		CQt.QPropertyAnimation_UpdateCurrentValue(this.nativePtr, (value == default) ? default : (void*)value.NativePtr);
	}
	
	public virtual void UpdateState(int64 newState, int64 oldState)
	{
		CQt.QPropertyAnimation_UpdateState(this.nativePtr, newState, oldState);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QPropertyAnimation_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QPropertyAnimation_Tr3(s, c, n);
	}
	
	public void StartValue()
	{
		CQt.QVariantAnimation_StartValue(this.nativePtr);
	}
	
	public void SetStartValue(IQVariant value)
	{
		CQt.QVariantAnimation_SetStartValue(this.nativePtr, (value == default) ? default : (void*)value.NativePtr);
	}
	
	public void EndValue()
	{
		CQt.QVariantAnimation_EndValue(this.nativePtr);
	}
	
	public void SetEndValue(IQVariant value)
	{
		CQt.QVariantAnimation_SetEndValue(this.nativePtr, (value == default) ? default : (void*)value.NativePtr);
	}
	
	public void KeyValueAt(double step)
	{
		CQt.QVariantAnimation_KeyValueAt(this.nativePtr, step);
	}
	
	public void SetKeyValueAt(double step, IQVariant value)
	{
		CQt.QVariantAnimation_SetKeyValueAt(this.nativePtr, step, (value == default) ? default : (void*)value.NativePtr);
	}
	
	public void*[] KeyValues()
	{
		return CQt.QVariantAnimation_KeyValues(this.nativePtr);
	}
	
	public void SetKeyValues(void*[] values)
	{
		CQt.QVariantAnimation_SetKeyValues(this.nativePtr, null);
	}
	
	public void CurrentValue()
	{
		CQt.QVariantAnimation_CurrentValue(this.nativePtr);
	}
	
	public virtual int32 Duration()
	{
		return CQt.QVariantAnimation_Duration(this.nativePtr);
	}
	
	public void SetDuration(int32 msecs)
	{
		CQt.QVariantAnimation_SetDuration(this.nativePtr, msecs);
	}
	
	public void EasingCurve()
	{
		CQt.QVariantAnimation_EasingCurve(this.nativePtr);
	}
	
	public void SetEasingCurve(IQEasingCurve easing)
	{
		CQt.QVariantAnimation_SetEasingCurve(this.nativePtr, (easing == default) ? default : (void*)easing.NativePtr);
	}
	
	public int64 State()
	{
		return CQt.QAbstractAnimation_State(this.nativePtr);
	}
	
	public void* Group()
	{
		return CQt.QAbstractAnimation_Group(this.nativePtr);
	}
	
	public int64 Direction()
	{
		return CQt.QAbstractAnimation_Direction(this.nativePtr);
	}
	
	public void SetDirection(int64 direction)
	{
		CQt.QAbstractAnimation_SetDirection(this.nativePtr, direction);
	}
	
	public int32 CurrentTime()
	{
		return CQt.QAbstractAnimation_CurrentTime(this.nativePtr);
	}
	
	public int32 CurrentLoopTime()
	{
		return CQt.QAbstractAnimation_CurrentLoopTime(this.nativePtr);
	}
	
	public int32 LoopCount()
	{
		return CQt.QAbstractAnimation_LoopCount(this.nativePtr);
	}
	
	public void SetLoopCount(int32 loopCount)
	{
		CQt.QAbstractAnimation_SetLoopCount(this.nativePtr, loopCount);
	}
	
	public int32 CurrentLoop()
	{
		return CQt.QAbstractAnimation_CurrentLoop(this.nativePtr);
	}
	
	public int32 TotalDuration()
	{
		return CQt.QAbstractAnimation_TotalDuration(this.nativePtr);
	}
	
	public void Start()
	{
		CQt.QAbstractAnimation_Start(this.nativePtr);
	}
	
	public void Pause()
	{
		CQt.QAbstractAnimation_Pause(this.nativePtr);
	}
	
	public void Resume()
	{
		CQt.QAbstractAnimation_Resume(this.nativePtr);
	}
	
	public void SetPaused(bool paused)
	{
		CQt.QAbstractAnimation_SetPaused(this.nativePtr, paused);
	}
	
	public void Stop()
	{
		CQt.QAbstractAnimation_Stop(this.nativePtr);
	}
	
	public void SetCurrentTime(int32 msecs)
	{
		CQt.QAbstractAnimation_SetCurrentTime(this.nativePtr, msecs);
	}
	
	public void Start1(int64 policy)
	{
		CQt.QAbstractAnimation_Start1(this.nativePtr, policy);
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
	[LinkName("QPropertyAnimation_new")]
	public static extern void* QPropertyAnimation_new();
	[LinkName("QPropertyAnimation_new2")]
	public static extern void* QPropertyAnimation_new2(void* target, libqt_string propertyName);
	[LinkName("QPropertyAnimation_new3")]
	public static extern void* QPropertyAnimation_new3(void* parent);
	[LinkName("QPropertyAnimation_new4")]
	public static extern void* QPropertyAnimation_new4(void* target, libqt_string propertyName, void* parent);
	[LinkName("QPropertyAnimation_MetaObject")]
	public static extern void* QPropertyAnimation_MetaObject(void* c_this);
	[LinkName("QPropertyAnimation_Metacast")]
	public static extern void* QPropertyAnimation_Metacast(void* c_this, char8* param1);
	[LinkName("QPropertyAnimation_Metacall")]
	public static extern int32 QPropertyAnimation_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QPropertyAnimation_Tr")]
	public static extern libqt_string QPropertyAnimation_Tr(char8* s);
	[LinkName("QPropertyAnimation_TargetObject")]
	public static extern void* QPropertyAnimation_TargetObject(void* c_this);
	[LinkName("QPropertyAnimation_SetTargetObject")]
	public static extern void QPropertyAnimation_SetTargetObject(void* c_this, void* target);
	[LinkName("QPropertyAnimation_PropertyName")]
	public static extern libqt_string QPropertyAnimation_PropertyName(void* c_this);
	[LinkName("QPropertyAnimation_SetPropertyName")]
	public static extern void QPropertyAnimation_SetPropertyName(void* c_this, libqt_string propertyName);
	[LinkName("QPropertyAnimation_Event")]
	public static extern bool QPropertyAnimation_Event(void* c_this, void* event);
	[LinkName("QPropertyAnimation_UpdateCurrentValue")]
	public static extern void QPropertyAnimation_UpdateCurrentValue(void* c_this, void* value);
	[LinkName("QPropertyAnimation_UpdateState")]
	public static extern void QPropertyAnimation_UpdateState(void* c_this, int64 newState, int64 oldState);
	[LinkName("QPropertyAnimation_Tr2")]
	public static extern libqt_string QPropertyAnimation_Tr2(char8* s, char8* c);
	[LinkName("QPropertyAnimation_Tr3")]
	public static extern libqt_string QPropertyAnimation_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QPropertyAnimation_Delete")]
	public static extern void QPropertyAnimation_Delete(void* self);
}