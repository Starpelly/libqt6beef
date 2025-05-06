using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QSettings__Status
{
	NoError = 0,
	AccessError = 1,
	FormatError = 2,
}
[AllowDuplicates]
public enum QSettings__Format
{
	NativeFormat = 0,
	IniFormat = 1,
	InvalidFormat = 16,
	CustomFormat1 = 17,
	CustomFormat2 = 18,
	CustomFormat3 = 19,
	CustomFormat4 = 20,
	CustomFormat5 = 21,
	CustomFormat6 = 22,
	CustomFormat7 = 23,
	CustomFormat8 = 24,
	CustomFormat9 = 25,
	CustomFormat10 = 26,
	CustomFormat11 = 27,
	CustomFormat12 = 28,
	CustomFormat13 = 29,
	CustomFormat14 = 30,
	CustomFormat15 = 31,
	CustomFormat16 = 32,
}
[AllowDuplicates]
public enum QSettings__Scope
{
	UserScope = 0,
	SystemScope = 1,
}
public struct QSettings
{
	[LinkName("QSettings_new")]
	public static extern void* QSettings_new(char8[] organization);
	[LinkName("QSettings_new2")]
	public static extern void* QSettings_new2(int64 _scope, char8[] organization);
	[LinkName("QSettings_new3")]
	public static extern void* QSettings_new3(int64 format, int64 _scope, char8[] organization);
	[LinkName("QSettings_new4")]
	public static extern void* QSettings_new4(char8[] fileName, int64 format);
	[LinkName("QSettings_new5")]
	public static extern void* QSettings_new5();
	[LinkName("QSettings_new6")]
	public static extern void* QSettings_new6(int64 _scope);
	[LinkName("QSettings_new7")]
	public static extern void* QSettings_new7(char8[] organization, char8[] application);
	[LinkName("QSettings_new8")]
	public static extern void* QSettings_new8(char8[] organization, char8[] application, QObject parent);
	[LinkName("QSettings_new9")]
	public static extern void* QSettings_new9(int64 _scope, char8[] organization, char8[] application);
	[LinkName("QSettings_new10")]
	public static extern void* QSettings_new10(int64 _scope, char8[] organization, char8[] application, QObject parent);
	[LinkName("QSettings_new11")]
	public static extern void* QSettings_new11(int64 format, int64 _scope, char8[] organization, char8[] application);
	[LinkName("QSettings_new12")]
	public static extern void* QSettings_new12(int64 format, int64 _scope, char8[] organization, char8[] application, QObject parent);
	[LinkName("QSettings_new13")]
	public static extern void* QSettings_new13(char8[] fileName, int64 format, QObject parent);
	[LinkName("QSettings_new14")]
	public static extern void* QSettings_new14(QObject parent);
	[LinkName("QSettings_new15")]
	public static extern void* QSettings_new15(int64 _scope, QObject parent);
	[LinkName("QSettings_MetaObject")]
	public static extern QMetaObject QSettings_MetaObject(void* c_this);
	[LinkName("QSettings_Metacast")]
	public static extern void QSettings_Metacast(void* c_this, char8[] param1);
	[LinkName("QSettings_Metacall")]
	public static extern int32 QSettings_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QSettings_Tr")]
	public static extern char8[] QSettings_Tr(char8[] s);
	[LinkName("QSettings_Clear")]
	public static extern void QSettings_Clear(void* c_this);
	[LinkName("QSettings_Sync")]
	public static extern void QSettings_Sync(void* c_this);
	[LinkName("QSettings_Status")]
	public static extern int64 QSettings_Status(void* c_this);
	[LinkName("QSettings_IsAtomicSyncRequired")]
	public static extern bool QSettings_IsAtomicSyncRequired(void* c_this);
	[LinkName("QSettings_SetAtomicSyncRequired")]
	public static extern void QSettings_SetAtomicSyncRequired(void* c_this, bool enable);
	[LinkName("QSettings_BeginGroup")]
	public static extern void QSettings_BeginGroup(void* c_this, char8[] prefix);
	[LinkName("QSettings_EndGroup")]
	public static extern void QSettings_EndGroup(void* c_this);
	[LinkName("QSettings_Group")]
	public static extern char8[] QSettings_Group(void* c_this);
	[LinkName("QSettings_BeginReadArray")]
	public static extern int32 QSettings_BeginReadArray(void* c_this, char8[] prefix);
	[LinkName("QSettings_BeginWriteArray")]
	public static extern void QSettings_BeginWriteArray(void* c_this, char8[] prefix);
	[LinkName("QSettings_EndArray")]
	public static extern void QSettings_EndArray(void* c_this);
	[LinkName("QSettings_SetArrayIndex")]
	public static extern void QSettings_SetArrayIndex(void* c_this, int32 i);
	[LinkName("QSettings_AllKeys")]
	public static extern char8[][] QSettings_AllKeys(void* c_this);
	[LinkName("QSettings_ChildKeys")]
	public static extern char8[][] QSettings_ChildKeys(void* c_this);
	[LinkName("QSettings_ChildGroups")]
	public static extern char8[][] QSettings_ChildGroups(void* c_this);
	[LinkName("QSettings_IsWritable")]
	public static extern bool QSettings_IsWritable(void* c_this);
	[LinkName("QSettings_SetValue")]
	public static extern void QSettings_SetValue(void* c_this, char8[] key, QVariant value);
	[LinkName("QSettings_Value")]
	public static extern QVariant QSettings_Value(void* c_this, char8[] key, QVariant defaultValue);
	[LinkName("QSettings_ValueWithKey")]
	public static extern QVariant QSettings_ValueWithKey(void* c_this, char8[] key);
	[LinkName("QSettings_Remove")]
	public static extern void QSettings_Remove(void* c_this, char8[] key);
	[LinkName("QSettings_Contains")]
	public static extern bool QSettings_Contains(void* c_this, char8[] key);
	[LinkName("QSettings_SetFallbacksEnabled")]
	public static extern void QSettings_SetFallbacksEnabled(void* c_this, bool b);
	[LinkName("QSettings_FallbacksEnabled")]
	public static extern bool QSettings_FallbacksEnabled(void* c_this);
	[LinkName("QSettings_FileName")]
	public static extern char8[] QSettings_FileName(void* c_this);
	[LinkName("QSettings_Format")]
	public static extern int64 QSettings_Format(void* c_this);
	[LinkName("QSettings_Scope")]
	public static extern int64 QSettings_Scope(void* c_this);
	[LinkName("QSettings_OrganizationName")]
	public static extern char8[] QSettings_OrganizationName(void* c_this);
	[LinkName("QSettings_ApplicationName")]
	public static extern char8[] QSettings_ApplicationName(void* c_this);
	[LinkName("QSettings_SetDefaultFormat")]
	public static extern void QSettings_SetDefaultFormat(int64 format);
	[LinkName("QSettings_DefaultFormat")]
	public static extern int64 QSettings_DefaultFormat();
	[LinkName("QSettings_SetPath")]
	public static extern void QSettings_SetPath(int64 format, int64 _scope, char8[] path);
	[LinkName("QSettings_Event")]
	public static extern bool QSettings_Event(void* c_this, QEvent event);
	[LinkName("QSettings_Tr2")]
	public static extern char8[] QSettings_Tr2(char8[] s, char8[] c);
	[LinkName("QSettings_Tr3")]
	public static extern char8[] QSettings_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QSettings_BeginWriteArray2")]
	public static extern void QSettings_BeginWriteArray2(void* c_this, char8[] prefix, int32 size);
}