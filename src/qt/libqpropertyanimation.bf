using System;
using System.Interop;
namespace Qt;

public struct QPropertyAnimation : QVariantAnimation
{
	[LinkName("QPropertyAnimation_new")]
	public static extern QPropertyAnimation* QPropertyAnimation_new();
	[LinkName("QPropertyAnimation_new2")]
	public static extern QPropertyAnimation* QPropertyAnimation_new2(QObject* target, libqt_string propertyName);
	[LinkName("QPropertyAnimation_new3")]
	public static extern QPropertyAnimation* QPropertyAnimation_new3(QObject* parent);
	[LinkName("QPropertyAnimation_new4")]
	public static extern QPropertyAnimation* QPropertyAnimation_new4(QObject* target, libqt_string propertyName, QObject* parent);
	[LinkName("QPropertyAnimation_MetaObject")]
	public static extern QMetaObject* QPropertyAnimation_MetaObject(Self* c_this);
	[LinkName("QPropertyAnimation_Metacast")]
	public static extern void* QPropertyAnimation_Metacast(Self* c_this, char8[] param1);
	[LinkName("QPropertyAnimation_Metacall")]
	public static extern int32 QPropertyAnimation_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QPropertyAnimation_Tr")]
	public static extern libqt_string QPropertyAnimation_Tr(char8[] s);
	[LinkName("QPropertyAnimation_TargetObject")]
	public static extern QObject* QPropertyAnimation_TargetObject(Self* c_this);
	[LinkName("QPropertyAnimation_SetTargetObject")]
	public static extern void QPropertyAnimation_SetTargetObject(Self* c_this, QObject* target);
	[LinkName("QPropertyAnimation_PropertyName")]
	public static extern libqt_string QPropertyAnimation_PropertyName(Self* c_this);
	[LinkName("QPropertyAnimation_SetPropertyName")]
	public static extern void QPropertyAnimation_SetPropertyName(Self* c_this, libqt_string propertyName);
	[LinkName("QPropertyAnimation_Event")]
	public static extern bool QPropertyAnimation_Event(Self* c_this, QEvent* event);
	[LinkName("QPropertyAnimation_UpdateCurrentValue")]
	public static extern void QPropertyAnimation_UpdateCurrentValue(Self* c_this, QVariant* value);
	[LinkName("QPropertyAnimation_UpdateState")]
	public static extern void QPropertyAnimation_UpdateState(Self* c_this, int64 newState, int64 oldState);
	[LinkName("QPropertyAnimation_Tr2")]
	public static extern libqt_string QPropertyAnimation_Tr2(char8[] s, char8[] c);
	[LinkName("QPropertyAnimation_Tr3")]
	public static extern libqt_string QPropertyAnimation_Tr3(char8[] s, char8[] c, int32 n);
}