using System;
using System.Interop;
namespace Qt;

public struct QTimer : QObject
{
	[LinkName("QTimer_new")]
	public static extern QTimer* QTimer_new();
	[LinkName("QTimer_new2")]
	public static extern QTimer* QTimer_new2(QObject* parent);
	[LinkName("QTimer_MetaObject")]
	public static extern QMetaObject* QTimer_MetaObject(Self* c_this);
	[LinkName("QTimer_Metacast")]
	public static extern void* QTimer_Metacast(Self* c_this, char8[] param1);
	[LinkName("QTimer_Metacall")]
	public static extern int32 QTimer_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QTimer_Tr")]
	public static extern libqt_string QTimer_Tr(char8[] s);
	[LinkName("QTimer_IsActive")]
	public static extern bool QTimer_IsActive(Self* c_this);
	[LinkName("QTimer_TimerId")]
	public static extern int32 QTimer_TimerId(Self* c_this);
	[LinkName("QTimer_SetInterval")]
	public static extern void QTimer_SetInterval(Self* c_this, int32 msec);
	[LinkName("QTimer_Interval")]
	public static extern int32 QTimer_Interval(Self* c_this);
	[LinkName("QTimer_RemainingTime")]
	public static extern int32 QTimer_RemainingTime(Self* c_this);
	[LinkName("QTimer_SetTimerType")]
	public static extern void QTimer_SetTimerType(Self* c_this, int64 atype);
	[LinkName("QTimer_TimerType")]
	public static extern int64 QTimer_TimerType(Self* c_this);
	[LinkName("QTimer_SetSingleShot")]
	public static extern void QTimer_SetSingleShot(Self* c_this, bool singleShot);
	[LinkName("QTimer_IsSingleShot")]
	public static extern bool QTimer_IsSingleShot(Self* c_this);
	[LinkName("QTimer_Start")]
	public static extern void QTimer_Start(Self* c_this, int32 msec);
	[LinkName("QTimer_Start2")]
	public static extern void QTimer_Start2(Self* c_this);
	[LinkName("QTimer_Stop")]
	public static extern void QTimer_Stop(Self* c_this);
	[LinkName("QTimer_TimerEvent")]
	public static extern void QTimer_TimerEvent(Self* c_this, QTimerEvent* param1);
	[LinkName("QTimer_Tr2")]
	public static extern libqt_string QTimer_Tr2(char8[] s, char8[] c);
	[LinkName("QTimer_Tr3")]
	public static extern libqt_string QTimer_Tr3(char8[] s, char8[] c, int32 n);
}