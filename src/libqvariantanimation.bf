using System;
using System.Interop;
namespace Qt;

public struct QVariantAnimation
{
	[LinkName("QVariantAnimation_new")]
	public static extern void* QVariantAnimation_new();
	[LinkName("QVariantAnimation_new2")]
	public static extern void* QVariantAnimation_new2(QObject parent);
	[LinkName("QVariantAnimation_MetaObject")]
	public static extern QMetaObject QVariantAnimation_MetaObject(void* c_this);
	[LinkName("QVariantAnimation_Metacast")]
	public static extern void QVariantAnimation_Metacast(void* c_this, char8[] param1);
	[LinkName("QVariantAnimation_Metacall")]
	public static extern int32 QVariantAnimation_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QVariantAnimation_Tr")]
	public static extern char8[] QVariantAnimation_Tr(char8[] s);
	[LinkName("QVariantAnimation_StartValue")]
	public static extern QVariant QVariantAnimation_StartValue(void* c_this);
	[LinkName("QVariantAnimation_SetStartValue")]
	public static extern void QVariantAnimation_SetStartValue(void* c_this, QVariant value);
	[LinkName("QVariantAnimation_EndValue")]
	public static extern QVariant QVariantAnimation_EndValue(void* c_this);
	[LinkName("QVariantAnimation_SetEndValue")]
	public static extern void QVariantAnimation_SetEndValue(void* c_this, QVariant value);
	[LinkName("QVariantAnimation_KeyValueAt")]
	public static extern QVariant QVariantAnimation_KeyValueAt(void* c_this, double step);
	[LinkName("QVariantAnimation_SetKeyValueAt")]
	public static extern void QVariantAnimation_SetKeyValueAt(void* c_this, double step, QVariant value);
	[LinkName("QVariantAnimation_KeyValues")]
	public static extern void*[] QVariantAnimation_KeyValues(void* c_this);
	[LinkName("QVariantAnimation_SetKeyValues")]
	public static extern void QVariantAnimation_SetKeyValues(void* c_this, void*[] values);
	[LinkName("QVariantAnimation_CurrentValue")]
	public static extern QVariant QVariantAnimation_CurrentValue(void* c_this);
	[LinkName("QVariantAnimation_Duration")]
	public static extern int32 QVariantAnimation_Duration(void* c_this);
	[LinkName("QVariantAnimation_SetDuration")]
	public static extern void QVariantAnimation_SetDuration(void* c_this, int32 msecs);
	[LinkName("QVariantAnimation_EasingCurve")]
	public static extern QEasingCurve QVariantAnimation_EasingCurve(void* c_this);
	[LinkName("QVariantAnimation_SetEasingCurve")]
	public static extern void QVariantAnimation_SetEasingCurve(void* c_this, QEasingCurve easing);
	[LinkName("QVariantAnimation_ValueChanged")]
	public static extern void QVariantAnimation_ValueChanged(void* c_this, QVariant value);
	[LinkName("QVariantAnimation_Event")]
	public static extern bool QVariantAnimation_Event(void* c_this, QEvent event);
	[LinkName("QVariantAnimation_UpdateCurrentTime")]
	public static extern void QVariantAnimation_UpdateCurrentTime(void* c_this, int32 param1);
	[LinkName("QVariantAnimation_UpdateState")]
	public static extern void QVariantAnimation_UpdateState(void* c_this, int64 newState, int64 oldState);
	[LinkName("QVariantAnimation_UpdateCurrentValue")]
	public static extern void QVariantAnimation_UpdateCurrentValue(void* c_this, QVariant value);
	[LinkName("QVariantAnimation_Interpolated")]
	public static extern QVariant QVariantAnimation_Interpolated(void* c_this, QVariant from, QVariant to, double progress);
	[LinkName("QVariantAnimation_Tr2")]
	public static extern char8[] QVariantAnimation_Tr2(char8[] s, char8[] c);
	[LinkName("QVariantAnimation_Tr3")]
	public static extern char8[] QVariantAnimation_Tr3(char8[] s, char8[] c, int32 n);
}