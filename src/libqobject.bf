using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QObjectData__
{
	CheckForParentChildLoopsWarnDepth = 4096,
}
public struct QObjectData
{
	[LinkName("QObjectData_DynamicMetaObject")]
	public static extern QMetaObject QObjectData_DynamicMetaObject(void* c_this);
}
public struct QObject
{
	[LinkName("QObject_new")]
	public static extern void* QObject_new();
	[LinkName("QObject_new2")]
	public static extern void* QObject_new2(QObject parent);
	[LinkName("QObject_MetaObject")]
	public static extern QMetaObject QObject_MetaObject(void* c_this);
	[LinkName("QObject_Metacast")]
	public static extern void QObject_Metacast(void* c_this, char8[] param1);
	[LinkName("QObject_Metacall")]
	public static extern int32 QObject_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QObject_Tr")]
	public static extern char8[] QObject_Tr(char8[] s);
	[LinkName("QObject_Event")]
	public static extern bool QObject_Event(void* c_this, QEvent event);
	[LinkName("QObject_EventFilter")]
	public static extern bool QObject_EventFilter(void* c_this, QObject watched, QEvent event);
	[LinkName("QObject_ObjectName")]
	public static extern char8[] QObject_ObjectName(void* c_this);
	[LinkName("QObject_SetObjectName")]
	public static extern void QObject_SetObjectName(void* c_this, char8[] name);
	[LinkName("QObject_IsWidgetType")]
	public static extern bool QObject_IsWidgetType(void* c_this);
	[LinkName("QObject_IsWindowType")]
	public static extern bool QObject_IsWindowType(void* c_this);
	[LinkName("QObject_IsQuickItemType")]
	public static extern bool QObject_IsQuickItemType(void* c_this);
	[LinkName("QObject_SignalsBlocked")]
	public static extern bool QObject_SignalsBlocked(void* c_this);
	[LinkName("QObject_BlockSignals")]
	public static extern bool QObject_BlockSignals(void* c_this, bool b);
	[LinkName("QObject_Thread")]
	public static extern QThread QObject_Thread(void* c_this);
	[LinkName("QObject_MoveToThread")]
	public static extern void QObject_MoveToThread(void* c_this, QThread thread);
	[LinkName("QObject_StartTimer")]
	public static extern int32 QObject_StartTimer(void* c_this, int32 interval);
	[LinkName("QObject_KillTimer")]
	public static extern void QObject_KillTimer(void* c_this, int32 id);
	[LinkName("QObject_Children")]
	public static extern QObject[] QObject_Children(void* c_this);
	[LinkName("QObject_SetParent")]
	public static extern void QObject_SetParent(void* c_this, QObject parent);
	[LinkName("QObject_InstallEventFilter")]
	public static extern void QObject_InstallEventFilter(void* c_this, QObject filterObj);
	[LinkName("QObject_RemoveEventFilter")]
	public static extern void QObject_RemoveEventFilter(void* c_this, QObject obj);
	[LinkName("QObject_Connect")]
	public static extern QMetaObject__Connection QObject_Connect(QObject sender, QMetaMethod signal, QObject receiver, QMetaMethod method);
	[LinkName("QObject_Connect2")]
	public static extern QMetaObject__Connection QObject_Connect2(void* c_this, QObject sender, char8[] signal, char8[] member);
	[LinkName("QObject_Disconnect")]
	public static extern bool QObject_Disconnect(QObject sender, QMetaMethod signal, QObject receiver, QMetaMethod member);
	[LinkName("QObject_DisconnectWithQMetaObjectConnection")]
	public static extern bool QObject_DisconnectWithQMetaObjectConnection(QMetaObject__Connection param1);
	[LinkName("QObject_DumpObjectTree")]
	public static extern void QObject_DumpObjectTree(void* c_this);
	[LinkName("QObject_DumpObjectInfo")]
	public static extern void QObject_DumpObjectInfo(void* c_this);
	[LinkName("QObject_SetProperty")]
	public static extern bool QObject_SetProperty(void* c_this, char8[] name, QVariant value);
	[LinkName("QObject_Property")]
	public static extern QVariant QObject_Property(void* c_this, char8[] name);
	[LinkName("QObject_DynamicPropertyNames")]
	public static extern uint8[][] QObject_DynamicPropertyNames(void* c_this);
	[LinkName("QObject_BindingStorage")]
	public static extern QBindingStorage QObject_BindingStorage(void* c_this);
	[LinkName("QObject_BindingStorage2")]
	public static extern QBindingStorage QObject_BindingStorage2(void* c_this);
	[LinkName("QObject_Destroyed")]
	public static extern void QObject_Destroyed(void* c_this);
	[LinkName("QObject_Parent")]
	public static extern QObject QObject_Parent(void* c_this);
	[LinkName("QObject_Inherits")]
	public static extern bool QObject_Inherits(void* c_this, char8[] classname);
	[LinkName("QObject_DeleteLater")]
	public static extern void QObject_DeleteLater(void* c_this);
	[LinkName("QObject_Sender")]
	public static extern QObject QObject_Sender(void* c_this);
	[LinkName("QObject_SenderSignalIndex")]
	public static extern int32 QObject_SenderSignalIndex(void* c_this);
	[LinkName("QObject_Receivers")]
	public static extern int32 QObject_Receivers(void* c_this, char8[] signal);
	[LinkName("QObject_IsSignalConnected")]
	public static extern bool QObject_IsSignalConnected(void* c_this, QMetaMethod signal);
	[LinkName("QObject_TimerEvent")]
	public static extern void QObject_TimerEvent(void* c_this, QTimerEvent event);
	[LinkName("QObject_ChildEvent")]
	public static extern void QObject_ChildEvent(void* c_this, QChildEvent event);
	[LinkName("QObject_CustomEvent")]
	public static extern void QObject_CustomEvent(void* c_this, QEvent event);
	[LinkName("QObject_ConnectNotify")]
	public static extern void QObject_ConnectNotify(void* c_this, QMetaMethod signal);
	[LinkName("QObject_DisconnectNotify")]
	public static extern void QObject_DisconnectNotify(void* c_this, QMetaMethod signal);
	[LinkName("QObject_Tr2")]
	public static extern char8[] QObject_Tr2(char8[] s, char8[] c);
	[LinkName("QObject_Tr3")]
	public static extern char8[] QObject_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QObject_StartTimer2")]
	public static extern int32 QObject_StartTimer2(void* c_this, int32 interval, int64 timerType);
	[LinkName("QObject_Connect5")]
	public static extern QMetaObject__Connection QObject_Connect5(QObject sender, QMetaMethod signal, QObject receiver, QMetaMethod method, int64 typeVal);
	[LinkName("QObject_Connect4")]
	public static extern QMetaObject__Connection QObject_Connect4(void* c_this, QObject sender, char8[] signal, char8[] member, int64 typeVal);
	[LinkName("QObject_Destroyed1")]
	public static extern void QObject_Destroyed1(void* c_this, QObject param1);
}
public struct QSignalBlocker
{
	[LinkName("QSignalBlocker_new")]
	public static extern void* QSignalBlocker_new(QObject o);
	[LinkName("QSignalBlocker_new2")]
	public static extern void* QSignalBlocker_new2(QObject o);
	[LinkName("QSignalBlocker_Reblock")]
	public static extern void QSignalBlocker_Reblock(void* c_this);
	[LinkName("QSignalBlocker_Unblock")]
	public static extern void QSignalBlocker_Unblock(void* c_this);
}