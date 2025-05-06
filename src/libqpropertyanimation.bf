using System;
using System.Interop;
namespace Qt;

public struct QPropertyAnimation
{
	[LinkName("QPropertyAnimation_new")]
	public static extern void* QPropertyAnimation_new();
	[LinkName("QPropertyAnimation_new2")]
	public static extern void* QPropertyAnimation_new2(QObject target, uint8[] propertyName);
	[LinkName("QPropertyAnimation_new3")]
	public static extern void* QPropertyAnimation_new3(QObject parent);
	[LinkName("QPropertyAnimation_new4")]
	public static extern void* QPropertyAnimation_new4(QObject target, uint8[] propertyName, QObject parent);
	[LinkName("QPropertyAnimation_MetaObject")]
	public static extern QMetaObject QPropertyAnimation_MetaObject(void* c_this);
	[LinkName("QPropertyAnimation_Metacast")]
	public static extern void QPropertyAnimation_Metacast(void* c_this, char8[] param1);
	[LinkName("QPropertyAnimation_Metacall")]
	public static extern int32 QPropertyAnimation_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QPropertyAnimation_Tr")]
	public static extern char8[] QPropertyAnimation_Tr(char8[] s);
	[LinkName("QPropertyAnimation_TargetObject")]
	public static extern QObject QPropertyAnimation_TargetObject(void* c_this);
	[LinkName("QPropertyAnimation_SetTargetObject")]
	public static extern void QPropertyAnimation_SetTargetObject(void* c_this, QObject target);
	[LinkName("QPropertyAnimation_PropertyName")]
	public static extern uint8[] QPropertyAnimation_PropertyName(void* c_this);
	[LinkName("QPropertyAnimation_SetPropertyName")]
	public static extern void QPropertyAnimation_SetPropertyName(void* c_this, uint8[] propertyName);
	[LinkName("QPropertyAnimation_Event")]
	public static extern bool QPropertyAnimation_Event(void* c_this, QEvent event);
	[LinkName("QPropertyAnimation_UpdateCurrentValue")]
	public static extern void QPropertyAnimation_UpdateCurrentValue(void* c_this, QVariant value);
	[LinkName("QPropertyAnimation_UpdateState")]
	public static extern void QPropertyAnimation_UpdateState(void* c_this, int64 newState, int64 oldState);
	[LinkName("QPropertyAnimation_Tr2")]
	public static extern char8[] QPropertyAnimation_Tr2(char8[] s, char8[] c);
	[LinkName("QPropertyAnimation_Tr3")]
	public static extern char8[] QPropertyAnimation_Tr3(char8[] s, char8[] c, int32 n);
}