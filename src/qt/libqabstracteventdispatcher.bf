using System;
using System.Interop;
namespace Qt;

public struct QAbstractEventDispatcher : QObject
{
	[LinkName("QAbstractEventDispatcher_MetaObject")]
	public static extern QMetaObject* QAbstractEventDispatcher_MetaObject(Self* c_this);
	[LinkName("QAbstractEventDispatcher_Metacast")]
	public static extern void* QAbstractEventDispatcher_Metacast(Self* c_this, char8[] param1);
	[LinkName("QAbstractEventDispatcher_Metacall")]
	public static extern int32 QAbstractEventDispatcher_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QAbstractEventDispatcher_Tr")]
	public static extern libqt_string QAbstractEventDispatcher_Tr(char8[] s);
	[LinkName("QAbstractEventDispatcher_Instance")]
	public static extern QAbstractEventDispatcher* QAbstractEventDispatcher_Instance();
	[LinkName("QAbstractEventDispatcher_ProcessEvents")]
	public static extern bool QAbstractEventDispatcher_ProcessEvents(Self* c_this, int64 flags);
	[LinkName("QAbstractEventDispatcher_RegisterSocketNotifier")]
	public static extern void QAbstractEventDispatcher_RegisterSocketNotifier(Self* c_this, QSocketNotifier* notifier);
	[LinkName("QAbstractEventDispatcher_UnregisterSocketNotifier")]
	public static extern void QAbstractEventDispatcher_UnregisterSocketNotifier(Self* c_this, QSocketNotifier* notifier);
	[LinkName("QAbstractEventDispatcher_RegisterTimer")]
	public static extern int32 QAbstractEventDispatcher_RegisterTimer(Self* c_this, int64 interval, int64 timerType, QObject* object);
	[LinkName("QAbstractEventDispatcher_RegisterTimer2")]
	public static extern void QAbstractEventDispatcher_RegisterTimer2(Self* c_this, int32 timerId, int64 interval, int64 timerType, QObject* object);
	[LinkName("QAbstractEventDispatcher_UnregisterTimer")]
	public static extern bool QAbstractEventDispatcher_UnregisterTimer(Self* c_this, int32 timerId);
	[LinkName("QAbstractEventDispatcher_UnregisterTimers")]
	public static extern bool QAbstractEventDispatcher_UnregisterTimers(Self* c_this, QObject* object);
	[LinkName("QAbstractEventDispatcher_RegisteredTimers")]
	public static extern QAbstractEventDispatcher__TimerInfo[] QAbstractEventDispatcher_RegisteredTimers(Self* c_this, QObject* object);
	[LinkName("QAbstractEventDispatcher_RemainingTime")]
	public static extern int32 QAbstractEventDispatcher_RemainingTime(Self* c_this, int32 timerId);
	[LinkName("QAbstractEventDispatcher_WakeUp")]
	public static extern void QAbstractEventDispatcher_WakeUp(Self* c_this);
	[LinkName("QAbstractEventDispatcher_Interrupt")]
	public static extern void QAbstractEventDispatcher_Interrupt(Self* c_this);
	[LinkName("QAbstractEventDispatcher_StartingUp")]
	public static extern void QAbstractEventDispatcher_StartingUp(Self* c_this);
	[LinkName("QAbstractEventDispatcher_ClosingDown")]
	public static extern void QAbstractEventDispatcher_ClosingDown(Self* c_this);
	[LinkName("QAbstractEventDispatcher_InstallNativeEventFilter")]
	public static extern void QAbstractEventDispatcher_InstallNativeEventFilter(Self* c_this, QAbstractNativeEventFilter* filterObj);
	[LinkName("QAbstractEventDispatcher_RemoveNativeEventFilter")]
	public static extern void QAbstractEventDispatcher_RemoveNativeEventFilter(Self* c_this, QAbstractNativeEventFilter* filterObj);
	[LinkName("QAbstractEventDispatcher_FilterNativeEvent")]
	public static extern bool QAbstractEventDispatcher_FilterNativeEvent(Self* c_this, libqt_string eventType, void* message, c_uintptr* result);
	[LinkName("QAbstractEventDispatcher_AboutToBlock")]
	public static extern void QAbstractEventDispatcher_AboutToBlock(Self* c_this);
	[LinkName("QAbstractEventDispatcher_Awake")]
	public static extern void QAbstractEventDispatcher_Awake(Self* c_this);
	[LinkName("QAbstractEventDispatcher_Tr2")]
	public static extern libqt_string QAbstractEventDispatcher_Tr2(char8[] s, char8[] c);
	[LinkName("QAbstractEventDispatcher_Tr3")]
	public static extern libqt_string QAbstractEventDispatcher_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QAbstractEventDispatcher_Instance1")]
	public static extern QAbstractEventDispatcher* QAbstractEventDispatcher_Instance1(QThread* thread);
}
public struct QAbstractEventDispatcher__TimerInfo
{
	[LinkName("QAbstractEventDispatcher__TimerInfo_new")]
	public static extern QAbstractEventDispatcher__TimerInfo* QAbstractEventDispatcher__TimerInfo_new(QAbstractEventDispatcher__TimerInfo* other);
	[LinkName("QAbstractEventDispatcher__TimerInfo_new2")]
	public static extern QAbstractEventDispatcher__TimerInfo* QAbstractEventDispatcher__TimerInfo_new2(QAbstractEventDispatcher__TimerInfo* other);
	[LinkName("QAbstractEventDispatcher__TimerInfo_new3")]
	public static extern QAbstractEventDispatcher__TimerInfo* QAbstractEventDispatcher__TimerInfo_new3(int32 id, int32 i, int64 t);
}