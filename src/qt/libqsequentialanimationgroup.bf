using System;
using System.Interop;
namespace Qt;

public interface IQSequentialAnimationGroup
{
	void* NativePtr { get; }
}
public struct QSequentialAnimationGroupPtr : IQSequentialAnimationGroup, IDisposable, IQAnimationGroup
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QSequentialAnimationGroup_new());
	}
	
	public void Dispose()
	{
		CQt.QSequentialAnimationGroup_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QSequentialAnimationGroup_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QSequentialAnimationGroup_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QSequentialAnimationGroup_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QSequentialAnimationGroup_Tr(s);
	}
	
	public void* AddPause(int32 msecs)
	{
		return CQt.QSequentialAnimationGroup_AddPause(this.nativePtr, msecs);
	}
	
	public void* InsertPause(int32 index, int32 msecs)
	{
		return CQt.QSequentialAnimationGroup_InsertPause(this.nativePtr, index, msecs);
	}
	
	public void* CurrentAnimation()
	{
		return CQt.QSequentialAnimationGroup_CurrentAnimation(this.nativePtr);
	}
	
	public int32 Duration()
	{
		return CQt.QSequentialAnimationGroup_Duration(this.nativePtr);
	}
	
	public bool Event(IQEvent event)
	{
		return CQt.QSequentialAnimationGroup_Event(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void UpdateCurrentTime(int32 param1)
	{
		CQt.QSequentialAnimationGroup_UpdateCurrentTime(this.nativePtr, param1);
	}
	
	public void UpdateState(int64 newState, int64 oldState)
	{
		CQt.QSequentialAnimationGroup_UpdateState(this.nativePtr, (int64)newState, (int64)oldState);
	}
	
	public void UpdateDirection(int64 direction)
	{
		CQt.QSequentialAnimationGroup_UpdateDirection(this.nativePtr, (int64)direction);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QSequentialAnimationGroup_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QSequentialAnimationGroup_Tr3(s, c, n);
	}
	
	public void* AnimationAt(int32 index)
	{
		return CQt.QAnimationGroup_AnimationAt(this.nativePtr, index);
	}
	
	public int32 AnimationCount()
	{
		return CQt.QAnimationGroup_AnimationCount(this.nativePtr);
	}
	
	public int32 IndexOfAnimation(IQAbstractAnimation animation)
	{
		return CQt.QAnimationGroup_IndexOfAnimation(this.nativePtr, (animation == default || animation.NativePtr == default) ? default : animation.NativePtr);
	}
	
	public void AddAnimation(IQAbstractAnimation animation)
	{
		CQt.QAnimationGroup_AddAnimation(this.nativePtr, (animation == default || animation.NativePtr == default) ? default : animation.NativePtr);
	}
	
	public void InsertAnimation(int32 index, IQAbstractAnimation animation)
	{
		CQt.QAnimationGroup_InsertAnimation(this.nativePtr, index, (animation == default || animation.NativePtr == default) ? default : animation.NativePtr);
	}
	
	public void RemoveAnimation(IQAbstractAnimation animation)
	{
		CQt.QAnimationGroup_RemoveAnimation(this.nativePtr, (animation == default || animation.NativePtr == default) ? default : animation.NativePtr);
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
		CQt.QAbstractAnimation_SetDirection(this.nativePtr, (int64)direction);
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
		CQt.QAbstractAnimation_Start1(this.nativePtr, (int64)policy);
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
public class QSequentialAnimationGroup
{
	public QSequentialAnimationGroupPtr handle;
	
	public static implicit operator QSequentialAnimationGroupPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QSequentialAnimationGroupPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
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
		return QSequentialAnimationGroupPtr.Tr(s);
	}
	
	public void* AddPause(int32 msecs)
	{
		return this.handle.AddPause(msecs);
	}
	
	public void* InsertPause(int32 index, int32 msecs)
	{
		return this.handle.InsertPause(index, msecs);
	}
	
	public void* CurrentAnimation()
	{
		return this.handle.CurrentAnimation();
	}
	
	public virtual int32 Duration()
	{
		return this.handle.Duration();
	}
	
	public virtual bool Event(IQEvent event)
	{
		return this.handle.Event(event);
	}
	
	public virtual void UpdateCurrentTime(int32 param1)
	{
		this.handle.UpdateCurrentTime(param1);
	}
	
	public virtual void UpdateState(int64 newState, int64 oldState)
	{
		this.handle.UpdateState(newState, oldState);
	}
	
	public virtual void UpdateDirection(int64 direction)
	{
		this.handle.UpdateDirection(direction);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QSequentialAnimationGroupPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QSequentialAnimationGroupPtr.Tr3(s, c, n);
	}
	
	public void* AnimationAt(int32 index)
	{
		return this.handle.AnimationAt(index);
	}
	
	public int32 AnimationCount()
	{
		return this.handle.AnimationCount();
	}
	
	public int32 IndexOfAnimation(IQAbstractAnimation animation)
	{
		return this.handle.IndexOfAnimation(animation);
	}
	
	public void AddAnimation(IQAbstractAnimation animation)
	{
		this.handle.AddAnimation(animation);
	}
	
	public void InsertAnimation(int32 index, IQAbstractAnimation animation)
	{
		this.handle.InsertAnimation(index, animation);
	}
	
	public void RemoveAnimation(IQAbstractAnimation animation)
	{
		this.handle.RemoveAnimation(animation);
	}
	
	public void* TakeAnimation(int32 index)
	{
		return this.handle.TakeAnimation(index);
	}
	
	public void Clear()
	{
		this.handle.Clear();
	}
	
	public int64 State()
	{
		return this.handle.State();
	}
	
	public void* Group()
	{
		return this.handle.Group();
	}
	
	public int64 Direction()
	{
		return this.handle.Direction();
	}
	
	public void SetDirection(int64 direction)
	{
		this.handle.SetDirection(direction);
	}
	
	public int32 CurrentTime()
	{
		return this.handle.CurrentTime();
	}
	
	public int32 CurrentLoopTime()
	{
		return this.handle.CurrentLoopTime();
	}
	
	public int32 LoopCount()
	{
		return this.handle.LoopCount();
	}
	
	public void SetLoopCount(int32 loopCount)
	{
		this.handle.SetLoopCount(loopCount);
	}
	
	public int32 CurrentLoop()
	{
		return this.handle.CurrentLoop();
	}
	
	public int32 TotalDuration()
	{
		return this.handle.TotalDuration();
	}
	
	public void Start()
	{
		this.handle.Start();
	}
	
	public void Pause()
	{
		this.handle.Pause();
	}
	
	public void Resume()
	{
		this.handle.Resume();
	}
	
	public void SetPaused(bool paused)
	{
		this.handle.SetPaused(paused);
	}
	
	public void Stop()
	{
		this.handle.Stop();
	}
	
	public void SetCurrentTime(int32 msecs)
	{
		this.handle.SetCurrentTime(msecs);
	}
	
	public void Start1(int64 policy)
	{
		this.handle.Start1(policy);
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
		QSequentialAnimationGroupPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QSequentialAnimationGroupPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QSequentialAnimationGroupPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QSequentialAnimationGroupPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QSequentialAnimationGroup_new")]
	public static extern void* QSequentialAnimationGroup_new();
	[LinkName("QSequentialAnimationGroup_new2")]
	public static extern void* QSequentialAnimationGroup_new2(void* parent);
	[LinkName("QSequentialAnimationGroup_MetaObject")]
	public static extern void* QSequentialAnimationGroup_MetaObject(void* c_this);
	[LinkName("QSequentialAnimationGroup_Metacast")]
	public static extern void* QSequentialAnimationGroup_Metacast(void* c_this, char8* param1);
	[LinkName("QSequentialAnimationGroup_Metacall")]
	public static extern int32 QSequentialAnimationGroup_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QSequentialAnimationGroup_Tr")]
	public static extern libqt_string QSequentialAnimationGroup_Tr(char8* s);
	[LinkName("QSequentialAnimationGroup_AddPause")]
	public static extern void* QSequentialAnimationGroup_AddPause(void* c_this, int32 msecs);
	[LinkName("QSequentialAnimationGroup_InsertPause")]
	public static extern void* QSequentialAnimationGroup_InsertPause(void* c_this, int32 index, int32 msecs);
	[LinkName("QSequentialAnimationGroup_CurrentAnimation")]
	public static extern void* QSequentialAnimationGroup_CurrentAnimation(void* c_this);
	[LinkName("QSequentialAnimationGroup_Duration")]
	public static extern int32 QSequentialAnimationGroup_Duration(void* c_this);
	[LinkName("QSequentialAnimationGroup_Connect_CurrentAnimationChanged")]
	public static extern void QSequentialAnimationGroup_Connect_CurrentAnimationChanged(void* c_this, c_intptr slot);
	[LinkName("QSequentialAnimationGroup_Event")]
	public static extern bool QSequentialAnimationGroup_Event(void* c_this, void* event);
	[LinkName("QSequentialAnimationGroup_UpdateCurrentTime")]
	public static extern void QSequentialAnimationGroup_UpdateCurrentTime(void* c_this, int32 param1);
	[LinkName("QSequentialAnimationGroup_UpdateState")]
	public static extern void QSequentialAnimationGroup_UpdateState(void* c_this, int64 newState, int64 oldState);
	[LinkName("QSequentialAnimationGroup_UpdateDirection")]
	public static extern void QSequentialAnimationGroup_UpdateDirection(void* c_this, int64 direction);
	[LinkName("QSequentialAnimationGroup_Tr2")]
	public static extern libqt_string QSequentialAnimationGroup_Tr2(char8* s, char8* c);
	[LinkName("QSequentialAnimationGroup_Tr3")]
	public static extern libqt_string QSequentialAnimationGroup_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QSequentialAnimationGroup_Delete")]
	public static extern void QSequentialAnimationGroup_Delete(void* self);
}