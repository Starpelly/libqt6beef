using System;
using System.Interop;
namespace Qt;

public struct QAccessibleBridge
{
	[LinkName("QAccessibleBridge_SetRootObject")]
	public static extern void QAccessibleBridge_SetRootObject(void* c_this, QAccessibleInterface rootObject);
	[LinkName("QAccessibleBridge_NotifyAccessibilityUpdate")]
	public static extern void QAccessibleBridge_NotifyAccessibilityUpdate(void* c_this, QAccessibleEvent event);
	[LinkName("QAccessibleBridge_OperatorAssign")]
	public static extern void QAccessibleBridge_OperatorAssign(void* c_this, QAccessibleBridge param1);
}
public struct QAccessibleBridgePlugin
{
	[LinkName("QAccessibleBridgePlugin_new")]
	public static extern void* QAccessibleBridgePlugin_new();
	[LinkName("QAccessibleBridgePlugin_new2")]
	public static extern void* QAccessibleBridgePlugin_new2(QObject parent);
	[LinkName("QAccessibleBridgePlugin_MetaObject")]
	public static extern QMetaObject QAccessibleBridgePlugin_MetaObject(void* c_this);
	[LinkName("QAccessibleBridgePlugin_Metacast")]
	public static extern void QAccessibleBridgePlugin_Metacast(void* c_this, char8[] param1);
	[LinkName("QAccessibleBridgePlugin_Metacall")]
	public static extern int32 QAccessibleBridgePlugin_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QAccessibleBridgePlugin_Tr")]
	public static extern char8[] QAccessibleBridgePlugin_Tr(char8[] s);
	[LinkName("QAccessibleBridgePlugin_Create")]
	public static extern QAccessibleBridge QAccessibleBridgePlugin_Create(void* c_this, char8[] key);
	[LinkName("QAccessibleBridgePlugin_Tr2")]
	public static extern char8[] QAccessibleBridgePlugin_Tr2(char8[] s, char8[] c);
	[LinkName("QAccessibleBridgePlugin_Tr3")]
	public static extern char8[] QAccessibleBridgePlugin_Tr3(char8[] s, char8[] c, int32 n);
}