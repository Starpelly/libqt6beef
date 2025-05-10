using System;
using System.Interop;
namespace Qt;

public class QParallelAnimationGroup
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QParallelAnimationGroup_new();
	}
	
	public ~this()
	{
		CQt.QParallelAnimationGroup_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QParallelAnimationGroup_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QParallelAnimationGroup_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QParallelAnimationGroup_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QParallelAnimationGroup_Tr(s);
	}
	
	public virtual int32 Duration()
	{
		return CQt.QParallelAnimationGroup_Duration(this.nativePtr);
	}
	
	public virtual bool Event(void* event)
	{
		return CQt.QParallelAnimationGroup_Event(this.nativePtr, event);
	}
	
	public virtual void UpdateCurrentTime(int32 currentTime)
	{
		CQt.QParallelAnimationGroup_UpdateCurrentTime(this.nativePtr, currentTime);
	}
	
	public virtual void UpdateState(int64 newState, int64 oldState)
	{
		CQt.QParallelAnimationGroup_UpdateState(this.nativePtr, newState, oldState);
	}
	
	public virtual void UpdateDirection(int64 direction)
	{
		CQt.QParallelAnimationGroup_UpdateDirection(this.nativePtr, direction);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QParallelAnimationGroup_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QParallelAnimationGroup_Tr3(s, c, n);
	}
	
	public void* AnimationAt(int32 index)
	{
		return CQt.QAnimationGroup_AnimationAt(this.nativePtr, index);
	}
	
	public int32 AnimationCount()
	{
		return CQt.QAnimationGroup_AnimationCount(this.nativePtr);
	}
	
	public int32 IndexOfAnimation(void* animation)
	{
		return CQt.QAnimationGroup_IndexOfAnimation(this.nativePtr, animation);
	}
	
	public void AddAnimation(void* animation)
	{
		CQt.QAnimationGroup_AddAnimation(this.nativePtr, animation);
	}
	
	public void InsertAnimation(int32 index, void* animation)
	{
		CQt.QAnimationGroup_InsertAnimation(this.nativePtr, index, animation);
	}
	
	public void RemoveAnimation(void* animation)
	{
		CQt.QAnimationGroup_RemoveAnimation(this.nativePtr, animation);
	}
	
	public void* TakeAnimation(int32 index)
	{
		return CQt.QAnimationGroup_TakeAnimation(this.nativePtr, index);
	}
	
	public void Clear()
	{
		CQt.QAnimationGroup_Clear(this.nativePtr);
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
	[LinkName("QParallelAnimationGroup_new")]
	public static extern void* QParallelAnimationGroup_new();
	[LinkName("QParallelAnimationGroup_new2")]
	public static extern void* QParallelAnimationGroup_new2(void* parent);
	[LinkName("QParallelAnimationGroup_MetaObject")]
	public static extern void* QParallelAnimationGroup_MetaObject(void* c_this);
	[LinkName("QParallelAnimationGroup_Metacast")]
	public static extern void* QParallelAnimationGroup_Metacast(void* c_this, char8[] param1);
	[LinkName("QParallelAnimationGroup_Metacall")]
	public static extern int32 QParallelAnimationGroup_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QParallelAnimationGroup_Tr")]
	public static extern libqt_string QParallelAnimationGroup_Tr(char8[] s);
	[LinkName("QParallelAnimationGroup_Duration")]
	public static extern int32 QParallelAnimationGroup_Duration(void* c_this);
	[LinkName("QParallelAnimationGroup_Event")]
	public static extern bool QParallelAnimationGroup_Event(void* c_this, void* event);
	[LinkName("QParallelAnimationGroup_UpdateCurrentTime")]
	public static extern void QParallelAnimationGroup_UpdateCurrentTime(void* c_this, int32 currentTime);
	[LinkName("QParallelAnimationGroup_UpdateState")]
	public static extern void QParallelAnimationGroup_UpdateState(void* c_this, int64 newState, int64 oldState);
	[LinkName("QParallelAnimationGroup_UpdateDirection")]
	public static extern void QParallelAnimationGroup_UpdateDirection(void* c_this, int64 direction);
	[LinkName("QParallelAnimationGroup_Tr2")]
	public static extern libqt_string QParallelAnimationGroup_Tr2(char8[] s, char8[] c);
	[LinkName("QParallelAnimationGroup_Tr3")]
	public static extern libqt_string QParallelAnimationGroup_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QParallelAnimationGroup_Delete")]
	public static extern void QParallelAnimationGroup_Delete(void* self);
}