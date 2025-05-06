using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QSocketNotifier__Type
{
	Read = 0,
	Write = 1,
	Exception = 2,
}
public struct QSocketNotifier : QObject
{
	[LinkName("QSocketNotifier_new")]
	public static extern QSocketNotifier* QSocketNotifier_new(int64 param1);
	[LinkName("QSocketNotifier_new2")]
	public static extern QSocketNotifier* QSocketNotifier_new2(c_uintptr socket, int64 param2);
	[LinkName("QSocketNotifier_new3")]
	public static extern QSocketNotifier* QSocketNotifier_new3(int64 param1, QObject* parent);
	[LinkName("QSocketNotifier_new4")]
	public static extern QSocketNotifier* QSocketNotifier_new4(c_uintptr socket, int64 param2, QObject* parent);
	[LinkName("QSocketNotifier_MetaObject")]
	public static extern QMetaObject* QSocketNotifier_MetaObject(Self* c_this);
	[LinkName("QSocketNotifier_Metacast")]
	public static extern void* QSocketNotifier_Metacast(Self* c_this, char8[] param1);
	[LinkName("QSocketNotifier_Metacall")]
	public static extern int32 QSocketNotifier_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QSocketNotifier_Tr")]
	public static extern libqt_string QSocketNotifier_Tr(char8[] s);
	[LinkName("QSocketNotifier_SetSocket")]
	public static extern void QSocketNotifier_SetSocket(Self* c_this, c_uintptr socket);
	[LinkName("QSocketNotifier_Socket")]
	public static extern c_uintptr QSocketNotifier_Socket(Self* c_this);
	[LinkName("QSocketNotifier_Type")]
	public static extern int64 QSocketNotifier_Type(Self* c_this);
	[LinkName("QSocketNotifier_IsValid")]
	public static extern bool QSocketNotifier_IsValid(Self* c_this);
	[LinkName("QSocketNotifier_IsEnabled")]
	public static extern bool QSocketNotifier_IsEnabled(Self* c_this);
	[LinkName("QSocketNotifier_SetEnabled")]
	public static extern void QSocketNotifier_SetEnabled(Self* c_this, bool enabled);
	[LinkName("QSocketNotifier_Event")]
	public static extern bool QSocketNotifier_Event(Self* c_this, QEvent* param1);
	[LinkName("QSocketNotifier_Tr2")]
	public static extern libqt_string QSocketNotifier_Tr2(char8[] s, char8[] c);
	[LinkName("QSocketNotifier_Tr3")]
	public static extern libqt_string QSocketNotifier_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QSocketDescriptor
{
	[LinkName("QSocketDescriptor_new")]
	public static extern QSocketDescriptor* QSocketDescriptor_new(QSocketDescriptor* other);
	[LinkName("QSocketDescriptor_new2")]
	public static extern QSocketDescriptor* QSocketDescriptor_new2(QSocketDescriptor* other);
	[LinkName("QSocketDescriptor_new3")]
	public static extern QSocketDescriptor* QSocketDescriptor_new3();
	[LinkName("QSocketDescriptor_new4")]
	public static extern QSocketDescriptor* QSocketDescriptor_new4(QSocketDescriptor* param1);
	[LinkName("QSocketDescriptor_new5")]
	public static extern QSocketDescriptor* QSocketDescriptor_new5(int32 descriptor);
	[LinkName("QSocketDescriptor_ToInt")]
	public static extern int32 QSocketDescriptor_ToInt(Self* c_this);
	[LinkName("QSocketDescriptor_IsValid")]
	public static extern bool QSocketDescriptor_IsValid(Self* c_this);
}