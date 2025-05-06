using System;
using System.Interop;
namespace Qt;

public struct QAccessibleBridge
{
	[LinkName("QAccessibleBridge_SetRootObject")]
	public static extern void QAccessibleBridge_SetRootObject(Self* c_this, QAccessibleInterface* rootObject);
	[LinkName("QAccessibleBridge_NotifyAccessibilityUpdate")]
	public static extern void QAccessibleBridge_NotifyAccessibilityUpdate(Self* c_this, QAccessibleEvent* event);
	[LinkName("QAccessibleBridge_OperatorAssign")]
	public static extern void QAccessibleBridge_OperatorAssign(Self* c_this, QAccessibleBridge* param1);
}
public struct QAccessibleBridgePlugin : QObject
{
	[LinkName("QAccessibleBridgePlugin_new")]
	public static extern QAccessibleBridgePlugin* QAccessibleBridgePlugin_new();
	[LinkName("QAccessibleBridgePlugin_new2")]
	public static extern QAccessibleBridgePlugin* QAccessibleBridgePlugin_new2(QObject* parent);
	[LinkName("QAccessibleBridgePlugin_MetaObject")]
	public static extern QMetaObject* QAccessibleBridgePlugin_MetaObject(Self* c_this);
	[LinkName("QAccessibleBridgePlugin_Metacast")]
	public static extern void* QAccessibleBridgePlugin_Metacast(Self* c_this, char8[] param1);
	[LinkName("QAccessibleBridgePlugin_Metacall")]
	public static extern int32 QAccessibleBridgePlugin_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QAccessibleBridgePlugin_Tr")]
	public static extern libqt_string QAccessibleBridgePlugin_Tr(char8[] s);
	[LinkName("QAccessibleBridgePlugin_Create")]
	public static extern QAccessibleBridge* QAccessibleBridgePlugin_Create(Self* c_this, libqt_string key);
	[LinkName("QAccessibleBridgePlugin_Tr2")]
	public static extern libqt_string QAccessibleBridgePlugin_Tr2(char8[] s, char8[] c);
	[LinkName("QAccessibleBridgePlugin_Tr3")]
	public static extern libqt_string QAccessibleBridgePlugin_Tr3(char8[] s, char8[] c, int32 n);
}