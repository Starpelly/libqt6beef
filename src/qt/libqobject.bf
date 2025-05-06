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
	public static extern QMetaObject* QObjectData_DynamicMetaObject(Self* c_this);
}
public struct QObject
{
	[LinkName("QObject_new")]
	public static extern QObject* QObject_new();
	[LinkName("QObject_new2")]
	public static extern QObject* QObject_new2(QObject* parent);
	[LinkName("QObject_MetaObject")]
	public static extern QMetaObject* QObject_MetaObject(Self* c_this);
	[LinkName("QObject_Metacast")]
	public static extern void* QObject_Metacast(Self* c_this, char8[] param1);
	[LinkName("QObject_Metacall")]
	public static extern int32 QObject_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QObject_Tr")]
	public static extern libqt_string QObject_Tr(char8[] s);
	[LinkName("QObject_Event")]
	public static extern bool QObject_Event(Self* c_this, QEvent* event);
	[LinkName("QObject_EventFilter")]
	public static extern bool QObject_EventFilter(Self* c_this, QObject* watched, QEvent* event);
	[LinkName("QObject_ObjectName")]
	public static extern libqt_string QObject_ObjectName(Self* c_this);
	[LinkName("QObject_SetObjectName")]
	public static extern void QObject_SetObjectName(Self* c_this, QAnyStringView name);
	[LinkName("QObject_IsWidgetType")]
	public static extern bool QObject_IsWidgetType(Self* c_this);
	[LinkName("QObject_IsWindowType")]
	public static extern bool QObject_IsWindowType(Self* c_this);
	[LinkName("QObject_IsQuickItemType")]
	public static extern bool QObject_IsQuickItemType(Self* c_this);
	[LinkName("QObject_SignalsBlocked")]
	public static extern bool QObject_SignalsBlocked(Self* c_this);
	[LinkName("QObject_BlockSignals")]
	public static extern bool QObject_BlockSignals(Self* c_this, bool b);
	[LinkName("QObject_Thread")]
	public static extern QThread* QObject_Thread(Self* c_this);
	[LinkName("QObject_MoveToThread")]
	public static extern void QObject_MoveToThread(Self* c_this, QThread* thread);
	[LinkName("QObject_StartTimer")]
	public static extern int32 QObject_StartTimer(Self* c_this, int32 interval);
	[LinkName("QObject_KillTimer")]
	public static extern void QObject_KillTimer(Self* c_this, int32 id);
	[LinkName("QObject_Children")]
	public static extern QObject*[] QObject_Children(Self* c_this);
	[LinkName("QObject_SetParent")]
	public static extern void QObject_SetParent(Self* c_this, QObject* parent);
	[LinkName("QObject_InstallEventFilter")]
	public static extern void QObject_InstallEventFilter(Self* c_this, QObject* filterObj);
	[LinkName("QObject_RemoveEventFilter")]
	public static extern void QObject_RemoveEventFilter(Self* c_this, QObject* obj);
	[LinkName("QObject_Connect")]
	public static extern QMetaObject__Connection QObject_Connect(QObject* sender, QMetaMethod* signal, QObject* receiver, QMetaMethod* method);
	[LinkName("QObject_Connect2")]
	public static extern QMetaObject__Connection QObject_Connect2(Self* c_this, QObject* sender, char8[] signal, char8[] member);
	[LinkName("QObject_Disconnect")]
	public static extern bool QObject_Disconnect(QObject* sender, QMetaMethod* signal, QObject* receiver, QMetaMethod* member);
	[LinkName("QObject_DisconnectWithQMetaObjectConnection")]
	public static extern bool QObject_DisconnectWithQMetaObjectConnection(QMetaObject__Connection* param1);
	[LinkName("QObject_DumpObjectTree")]
	public static extern void QObject_DumpObjectTree(Self* c_this);
	[LinkName("QObject_DumpObjectInfo")]
	public static extern void QObject_DumpObjectInfo(Self* c_this);
	[LinkName("QObject_SetProperty")]
	public static extern bool QObject_SetProperty(Self* c_this, char8[] name, QVariant* value);
	[LinkName("QObject_Property")]
	public static extern QVariant QObject_Property(Self* c_this, char8[] name);
	[LinkName("QObject_DynamicPropertyNames")]
	public static extern libqt_string[] QObject_DynamicPropertyNames(Self* c_this);
	[LinkName("QObject_BindingStorage")]
	public static extern QBindingStorage* QObject_BindingStorage(Self* c_this);
	[LinkName("QObject_BindingStorage2")]
	public static extern QBindingStorage* QObject_BindingStorage2(Self* c_this);
	[LinkName("QObject_Destroyed")]
	public static extern void QObject_Destroyed(Self* c_this);
	[LinkName("QObject_Parent")]
	public static extern QObject* QObject_Parent(Self* c_this);
	[LinkName("QObject_Inherits")]
	public static extern bool QObject_Inherits(Self* c_this, char8[] classname);
	[LinkName("QObject_DeleteLater")]
	public static extern void QObject_DeleteLater(Self* c_this);
	[LinkName("QObject_Sender")]
	public static extern QObject* QObject_Sender(Self* c_this);
	[LinkName("QObject_SenderSignalIndex")]
	public static extern int32 QObject_SenderSignalIndex(Self* c_this);
	[LinkName("QObject_Receivers")]
	public static extern int32 QObject_Receivers(Self* c_this, char8[] signal);
	[LinkName("QObject_IsSignalConnected")]
	public static extern bool QObject_IsSignalConnected(Self* c_this, QMetaMethod* signal);
	[LinkName("QObject_TimerEvent")]
	public static extern void QObject_TimerEvent(Self* c_this, QTimerEvent* event);
	[LinkName("QObject_ChildEvent")]
	public static extern void QObject_ChildEvent(Self* c_this, QChildEvent* event);
	[LinkName("QObject_CustomEvent")]
	public static extern void QObject_CustomEvent(Self* c_this, QEvent* event);
	[LinkName("QObject_ConnectNotify")]
	public static extern void QObject_ConnectNotify(Self* c_this, QMetaMethod* signal);
	[LinkName("QObject_DisconnectNotify")]
	public static extern void QObject_DisconnectNotify(Self* c_this, QMetaMethod* signal);
	[LinkName("QObject_Tr2")]
	public static extern libqt_string QObject_Tr2(char8[] s, char8[] c);
	[LinkName("QObject_Tr3")]
	public static extern libqt_string QObject_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QObject_StartTimer2")]
	public static extern int32 QObject_StartTimer2(Self* c_this, int32 interval, int64 timerType);
	[LinkName("QObject_Connect5")]
	public static extern QMetaObject__Connection QObject_Connect5(QObject* sender, QMetaMethod* signal, QObject* receiver, QMetaMethod* method, int64 typeVal);
	[LinkName("QObject_Connect4")]
	public static extern QMetaObject__Connection QObject_Connect4(Self* c_this, QObject* sender, char8[] signal, char8[] member, int64 typeVal);
	[LinkName("QObject_Destroyed1")]
	public static extern void QObject_Destroyed1(Self* c_this, QObject* param1);
}
public struct QSignalBlocker
{
	[LinkName("QSignalBlocker_new")]
	public static extern QSignalBlocker* QSignalBlocker_new(QObject* o);
	[LinkName("QSignalBlocker_new2")]
	public static extern QSignalBlocker* QSignalBlocker_new2(QObject* o);
	[LinkName("QSignalBlocker_Reblock")]
	public static extern void QSignalBlocker_Reblock(Self* c_this);
	[LinkName("QSignalBlocker_Unblock")]
	public static extern void QSignalBlocker_Unblock(Self* c_this);
}