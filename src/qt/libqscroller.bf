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
public class QScroller
{
	protected void* nativePtr;
	
	public virtual void* MetaObject()
	{
		return CQt.QScroller_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QScroller_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QScroller_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QScroller_Tr(s);
	}
	
	public static bool HasScroller(void* target)
	{
		return CQt.QScroller_HasScroller(target);
	}
	
	public static void* Scroller(void* target)
	{
		return CQt.QScroller_Scroller(target);
	}
	
	public static void* ScrollerWithTarget(void* target)
	{
		return CQt.QScroller_ScrollerWithTarget(target);
	}
	
	public static int64 GrabGesture(void* target)
	{
		return CQt.QScroller_GrabGesture(target);
	}
	
	public static int64 GrabbedGesture(void* target)
	{
		return CQt.QScroller_GrabbedGesture(target);
	}
	
	public static void UngrabGesture(void* target)
	{
		CQt.QScroller_UngrabGesture(target);
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
	
	public bool HandleInput(int64 input, void* position)
	{
		return CQt.QScroller_HandleInput(this.nativePtr, input, position);
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
		CQt.QScroller_SetSnapPositionsX(this.nativePtr, positions);
	}
	
	public void SetSnapPositionsX2(double first, double interval)
	{
		CQt.QScroller_SetSnapPositionsX2(this.nativePtr, first, interval);
	}
	
	public void SetSnapPositionsY(double[] positions)
	{
		CQt.QScroller_SetSnapPositionsY(this.nativePtr, positions);
	}
	
	public void SetSnapPositionsY2(double first, double interval)
	{
		CQt.QScroller_SetSnapPositionsY2(this.nativePtr, first, interval);
	}
	
	public void SetScrollerProperties(void* prop)
	{
		CQt.QScroller_SetScrollerProperties(this.nativePtr, prop);
	}
	
	public void ScrollTo(void* pos)
	{
		CQt.QScroller_ScrollTo(this.nativePtr, pos);
	}
	
	public void ScrollTo2(void* pos, int32 scrollTime)
	{
		CQt.QScroller_ScrollTo2(this.nativePtr, pos, scrollTime);
	}
	
	public void EnsureVisible(void* rect, double xmargin, double ymargin)
	{
		CQt.QScroller_EnsureVisible(this.nativePtr, rect, xmargin, ymargin);
	}
	
	public void EnsureVisible2(void* rect, double xmargin, double ymargin, int32 scrollTime)
	{
		CQt.QScroller_EnsureVisible2(this.nativePtr, rect, xmargin, ymargin, scrollTime);
	}
	
	public void ResendPrepareEvent()
	{
		CQt.QScroller_ResendPrepareEvent(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QScroller_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QScroller_Tr3(s, c, n);
	}
	
	public static int64 GrabGesture2(void* target, int64 gestureType)
	{
		return CQt.QScroller_GrabGesture2(target, gestureType);
	}
	
	public bool HandleInput3(int64 input, void* position, int64 timestamp)
	{
		return CQt.QScroller_HandleInput3(this.nativePtr, input, position, timestamp);
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
	[LinkName("QScroller_MetaObject")]
	public static extern void* QScroller_MetaObject(void* c_this);
	[LinkName("QScroller_Metacast")]
	public static extern void* QScroller_Metacast(void* c_this, char8[] param1);
	[LinkName("QScroller_Metacall")]
	public static extern int32 QScroller_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QScroller_Tr")]
	public static extern libqt_string QScroller_Tr(char8[] s);
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
	public static extern libqt_string QScroller_Tr2(char8[] s, char8[] c);
	[LinkName("QScroller_Tr3")]
	public static extern libqt_string QScroller_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QScroller_GrabGesture2")]
	public static extern int64 QScroller_GrabGesture2(void* target, int64 gestureType);
	[LinkName("QScroller_HandleInput3")]
	public static extern bool QScroller_HandleInput3(void* c_this, int64 input, void* position, int64 timestamp);
}