using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QScroller__State
{
	Inactive = 0,
	Pressed = 1,
	Dragging = 2,
	Scrolling = 3,
}
[AllowDuplicates]
public enum QScroller__ScrollerGestureType
{
	TouchGesture = 0,
	LeftMouseButtonGesture = 1,
	RightMouseButtonGesture = 2,
	MiddleMouseButtonGesture = 3,
}
[AllowDuplicates]
public enum QScroller__Input
{
	InputPress = 1,
	InputMove = 2,
	InputRelease = 3,
}
public interface IQScroller
{
	void* NativePtr { get; }
}
public struct QScrollerPtr : IQScroller, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public void* MetaObject()
	{
		return CQt.QScroller_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QScroller_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QScroller_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QScroller_Tr(s);
	}
	
	public static bool HasScroller(IQObject target)
	{
		return CQt.QScroller_HasScroller((target == default || target.NativePtr == default) ? default : target.NativePtr);
	}
	
	public static void* Scroller(IQObject target)
	{
		return CQt.QScroller_Scroller((target == default || target.NativePtr == default) ? default : target.NativePtr);
	}
	
	public static void* ScrollerWithTarget(IQObject target)
	{
		return CQt.QScroller_ScrollerWithTarget((target == default || target.NativePtr == default) ? default : target.NativePtr);
	}
	
	public static int64 GrabGesture(IQObject target)
	{
		return CQt.QScroller_GrabGesture((target == default || target.NativePtr == default) ? default : target.NativePtr);
	}
	
	public static int64 GrabbedGesture(IQObject target)
	{
		return CQt.QScroller_GrabbedGesture((target == default || target.NativePtr == default) ? default : target.NativePtr);
	}
	
	public static void UngrabGesture(IQObject target)
	{
		CQt.QScroller_UngrabGesture((target == default || target.NativePtr == default) ? default : target.NativePtr);
	}
	
	public static void*[] ActiveScrollers()
	{
		return CQt.QScroller_ActiveScrollers();
	}
	
	public void* Target()
	{
		return CQt.QScroller_Target(this.nativePtr);
	}
	
	public int64 State()
	{
		return CQt.QScroller_State(this.nativePtr);
	}
	
	public bool HandleInput(int64 input, IQPointF position)
	{
		return CQt.QScroller_HandleInput(this.nativePtr, (int64)input, (position == default || position.NativePtr == default) ? default : position.NativePtr);
	}
	
	public void Stop()
	{
		CQt.QScroller_Stop(this.nativePtr);
	}
	
	public void Velocity()
	{
		CQt.QScroller_Velocity(this.nativePtr);
	}
	
	public void FinalPosition()
	{
		CQt.QScroller_FinalPosition(this.nativePtr);
	}
	
	public void PixelPerMeter()
	{
		CQt.QScroller_PixelPerMeter(this.nativePtr);
	}
	
	public void ScrollerProperties()
	{
		CQt.QScroller_ScrollerProperties(this.nativePtr);
	}
	
	public void SetSnapPositionsX(double[] positions)
	{
		CQt.QScroller_SetSnapPositionsX(this.nativePtr, null);
	}
	
	public void SetSnapPositionsX2(double first, double interval)
	{
		CQt.QScroller_SetSnapPositionsX2(this.nativePtr, first, interval);
	}
	
	public void SetSnapPositionsY(double[] positions)
	{
		CQt.QScroller_SetSnapPositionsY(this.nativePtr, null);
	}
	
	public void SetSnapPositionsY2(double first, double interval)
	{
		CQt.QScroller_SetSnapPositionsY2(this.nativePtr, first, interval);
	}
	
	public void SetScrollerProperties(IQScrollerProperties prop)
	{
		CQt.QScroller_SetScrollerProperties(this.nativePtr, (prop == default || prop.NativePtr == default) ? default : prop.NativePtr);
	}
	
	public void ScrollTo(IQPointF pos)
	{
		CQt.QScroller_ScrollTo(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void ScrollTo2(IQPointF pos, int32 scrollTime)
	{
		CQt.QScroller_ScrollTo2(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr, scrollTime);
	}
	
	public void EnsureVisible(IQRectF rect, double xmargin, double ymargin)
	{
		CQt.QScroller_EnsureVisible(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, xmargin, ymargin);
	}
	
	public void EnsureVisible2(IQRectF rect, double xmargin, double ymargin, int32 scrollTime)
	{
		CQt.QScroller_EnsureVisible2(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, xmargin, ymargin, scrollTime);
	}
	
	public void ResendPrepareEvent()
	{
		CQt.QScroller_ResendPrepareEvent(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QScroller_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QScroller_Tr3(s, c, n);
	}
	
	public static int64 GrabGesture2(IQObject target, int64 gestureType)
	{
		return CQt.QScroller_GrabGesture2((target == default || target.NativePtr == default) ? default : target.NativePtr, (int64)gestureType);
	}
	
	public bool HandleInput3(int64 input, IQPointF position, int64 timestamp)
	{
		return CQt.QScroller_HandleInput3(this.nativePtr, (int64)input, (position == default || position.NativePtr == default) ? default : position.NativePtr, timestamp);
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
public class QScroller
{
	public QScrollerPtr handle;
	
	public static implicit operator QScrollerPtr(Self self)
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
		return QScrollerPtr.Tr(s);
	}
	
	public static bool HasScroller(IQObject target)
	{
		return QScrollerPtr.HasScroller(target);
	}
	
	public static void* Scroller(IQObject target)
	{
		return QScrollerPtr.Scroller(target);
	}
	
	public static void* ScrollerWithTarget(IQObject target)
	{
		return QScrollerPtr.ScrollerWithTarget(target);
	}
	
	public static int64 GrabGesture(IQObject target)
	{
		return QScrollerPtr.GrabGesture(target);
	}
	
	public static int64 GrabbedGesture(IQObject target)
	{
		return QScrollerPtr.GrabbedGesture(target);
	}
	
	public static void UngrabGesture(IQObject target)
	{
		QScrollerPtr.UngrabGesture(target);
	}
	
	public static void*[] ActiveScrollers()
	{
		return QScrollerPtr.ActiveScrollers();
	}
	
	public void* Target()
	{
		return this.handle.Target();
	}
	
	public int64 State()
	{
		return this.handle.State();
	}
	
	public bool HandleInput(int64 input, IQPointF position)
	{
		return this.handle.HandleInput(input, position);
	}
	
	public void Stop()
	{
		this.handle.Stop();
	}
	
	public void Velocity()
	{
		this.handle.Velocity();
	}
	
	public void FinalPosition()
	{
		this.handle.FinalPosition();
	}
	
	public void PixelPerMeter()
	{
		this.handle.PixelPerMeter();
	}
	
	public void ScrollerProperties()
	{
		this.handle.ScrollerProperties();
	}
	
	public void SetSnapPositionsX(double[] positions)
	{
		this.handle.SetSnapPositionsX(null);
	}
	
	public void SetSnapPositionsX2(double first, double interval)
	{
		this.handle.SetSnapPositionsX2(first, interval);
	}
	
	public void SetSnapPositionsY(double[] positions)
	{
		this.handle.SetSnapPositionsY(null);
	}
	
	public void SetSnapPositionsY2(double first, double interval)
	{
		this.handle.SetSnapPositionsY2(first, interval);
	}
	
	public void SetScrollerProperties(IQScrollerProperties prop)
	{
		this.handle.SetScrollerProperties(prop);
	}
	
	public void ScrollTo(IQPointF pos)
	{
		this.handle.ScrollTo(pos);
	}
	
	public void ScrollTo2(IQPointF pos, int32 scrollTime)
	{
		this.handle.ScrollTo2(pos, scrollTime);
	}
	
	public void EnsureVisible(IQRectF rect, double xmargin, double ymargin)
	{
		this.handle.EnsureVisible(rect, xmargin, ymargin);
	}
	
	public void EnsureVisible2(IQRectF rect, double xmargin, double ymargin, int32 scrollTime)
	{
		this.handle.EnsureVisible2(rect, xmargin, ymargin, scrollTime);
	}
	
	public void ResendPrepareEvent()
	{
		this.handle.ResendPrepareEvent();
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QScrollerPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QScrollerPtr.Tr3(s, c, n);
	}
	
	public static int64 GrabGesture2(IQObject target, int64 gestureType)
	{
		return QScrollerPtr.GrabGesture2(target, gestureType);
	}
	
	public bool HandleInput3(int64 input, IQPointF position, int64 timestamp)
	{
		return this.handle.HandleInput3(input, position, timestamp);
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
		QScrollerPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QScrollerPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QScrollerPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QScrollerPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QScroller_MetaObject")]
	public static extern void* QScroller_MetaObject(void* c_this);
	[LinkName("QScroller_Metacast")]
	public static extern void* QScroller_Metacast(void* c_this, char8* param1);
	[LinkName("QScroller_Metacall")]
	public static extern int32 QScroller_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QScroller_Tr")]
	public static extern libqt_string QScroller_Tr(char8* s);
	[LinkName("QScroller_HasScroller")]
	public static extern bool QScroller_HasScroller(void* target);
	[LinkName("QScroller_Scroller")]
	public static extern void* QScroller_Scroller(void* target);
	[LinkName("QScroller_ScrollerWithTarget")]
	public static extern void* QScroller_ScrollerWithTarget(void* target);
	[LinkName("QScroller_GrabGesture")]
	public static extern int64 QScroller_GrabGesture(void* target);
	[LinkName("QScroller_GrabbedGesture")]
	public static extern int64 QScroller_GrabbedGesture(void* target);
	[LinkName("QScroller_UngrabGesture")]
	public static extern void QScroller_UngrabGesture(void* target);
	[LinkName("QScroller_ActiveScrollers")]
	public static extern void*[] QScroller_ActiveScrollers();
	[LinkName("QScroller_Target")]
	public static extern void* QScroller_Target(void* c_this);
	[LinkName("QScroller_State")]
	public static extern int64 QScroller_State(void* c_this);
	[LinkName("QScroller_HandleInput")]
	public static extern bool QScroller_HandleInput(void* c_this, int64 input, void* position);
	[LinkName("QScroller_Stop")]
	public static extern void QScroller_Stop(void* c_this);
	[LinkName("QScroller_Velocity")]
	public static extern void QScroller_Velocity(void* c_this);
	[LinkName("QScroller_FinalPosition")]
	public static extern void QScroller_FinalPosition(void* c_this);
	[LinkName("QScroller_PixelPerMeter")]
	public static extern void QScroller_PixelPerMeter(void* c_this);
	[LinkName("QScroller_ScrollerProperties")]
	public static extern void QScroller_ScrollerProperties(void* c_this);
	[LinkName("QScroller_SetSnapPositionsX")]
	public static extern void QScroller_SetSnapPositionsX(void* c_this, double[] positions);
	[LinkName("QScroller_SetSnapPositionsX2")]
	public static extern void QScroller_SetSnapPositionsX2(void* c_this, double first, double interval);
	[LinkName("QScroller_SetSnapPositionsY")]
	public static extern void QScroller_SetSnapPositionsY(void* c_this, double[] positions);
	[LinkName("QScroller_SetSnapPositionsY2")]
	public static extern void QScroller_SetSnapPositionsY2(void* c_this, double first, double interval);
	[LinkName("QScroller_SetScrollerProperties")]
	public static extern void QScroller_SetScrollerProperties(void* c_this, void* prop);
	[LinkName("QScroller_ScrollTo")]
	public static extern void QScroller_ScrollTo(void* c_this, void* pos);
	[LinkName("QScroller_ScrollTo2")]
	public static extern void QScroller_ScrollTo2(void* c_this, void* pos, int32 scrollTime);
	[LinkName("QScroller_EnsureVisible")]
	public static extern void QScroller_EnsureVisible(void* c_this, void* rect, double xmargin, double ymargin);
	[LinkName("QScroller_EnsureVisible2")]
	public static extern void QScroller_EnsureVisible2(void* c_this, void* rect, double xmargin, double ymargin, int32 scrollTime);
	[LinkName("QScroller_ResendPrepareEvent")]
	public static extern void QScroller_ResendPrepareEvent(void* c_this);
	[LinkName("QScroller_Connect_StateChanged")]
	public static extern void QScroller_Connect_StateChanged(void* c_this, c_intptr slot);
	[LinkName("QScroller_Connect_ScrollerPropertiesChanged")]
	public static extern void QScroller_Connect_ScrollerPropertiesChanged(void* c_this, c_intptr slot);
	[LinkName("QScroller_Tr2")]
	public static extern libqt_string QScroller_Tr2(char8* s, char8* c);
	[LinkName("QScroller_Tr3")]
	public static extern libqt_string QScroller_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QScroller_GrabGesture2")]
	public static extern int64 QScroller_GrabGesture2(void* target, int64 gestureType);
	[LinkName("QScroller_HandleInput3")]
	public static extern bool QScroller_HandleInput3(void* c_this, int64 input, void* position, int64 timestamp);
}