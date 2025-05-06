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
public struct QSettings : QObject
{
	[LinkName("QSettings_new")]
	public static extern QSettings* QSettings_new(libqt_string organization);
	[LinkName("QSettings_new2")]
	public static extern QSettings* QSettings_new2(int64 _scope, libqt_string organization);
	[LinkName("QSettings_new3")]
	public static extern QSettings* QSettings_new3(int64 format, int64 _scope, libqt_string organization);
	[LinkName("QSettings_new4")]
	public static extern QSettings* QSettings_new4(libqt_string fileName, int64 format);
	[LinkName("QSettings_new5")]
	public static extern QSettings* QSettings_new5();
	[LinkName("QSettings_new6")]
	public static extern QSettings* QSettings_new6(int64 _scope);
	[LinkName("QSettings_new7")]
	public static extern QSettings* QSettings_new7(libqt_string organization, libqt_string application);
	[LinkName("QSettings_new8")]
	public static extern QSettings* QSettings_new8(libqt_string organization, libqt_string application, QObject* parent);
	[LinkName("QSettings_new9")]
	public static extern QSettings* QSettings_new9(int64 _scope, libqt_string organization, libqt_string application);
	[LinkName("QSettings_new10")]
	public static extern QSettings* QSettings_new10(int64 _scope, libqt_string organization, libqt_string application, QObject* parent);
	[LinkName("QSettings_new11")]
	public static extern QSettings* QSettings_new11(int64 format, int64 _scope, libqt_string organization, libqt_string application);
	[LinkName("QSettings_new12")]
	public static extern QSettings* QSettings_new12(int64 format, int64 _scope, libqt_string organization, libqt_string application, QObject* parent);
	[LinkName("QSettings_new13")]
	public static extern QSettings* QSettings_new13(libqt_string fileName, int64 format, QObject* parent);
	[LinkName("QSettings_new14")]
	public static extern QSettings* QSettings_new14(QObject* parent);
	[LinkName("QSettings_new15")]
	public static extern QSettings* QSettings_new15(int64 _scope, QObject* parent);
	[LinkName("QSettings_MetaObject")]
	public static extern QMetaObject* QSettings_MetaObject(Self* c_this);
	[LinkName("QSettings_Metacast")]
	public static extern void* QSettings_Metacast(Self* c_this, char8[] param1);
	[LinkName("QSettings_Metacall")]
	public static extern int32 QSettings_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QSettings_Tr")]
	public static extern libqt_string QSettings_Tr(char8[] s);
	[LinkName("QSettings_Clear")]
	public static extern void QSettings_Clear(Self* c_this);
	[LinkName("QSettings_Sync")]
	public static extern void QSettings_Sync(Self* c_this);
	[LinkName("QSettings_Status")]
	public static extern int64 QSettings_Status(Self* c_this);
	[LinkName("QSettings_IsAtomicSyncRequired")]
	public static extern bool QSettings_IsAtomicSyncRequired(Self* c_this);
	[LinkName("QSettings_SetAtomicSyncRequired")]
	public static extern void QSettings_SetAtomicSyncRequired(Self* c_this, bool enable);
	[LinkName("QSettings_BeginGroup")]
	public static extern void QSettings_BeginGroup(Self* c_this, QAnyStringView prefix);
	[LinkName("QSettings_EndGroup")]
	public static extern void QSettings_EndGroup(Self* c_this);
	[LinkName("QSettings_Group")]
	public static extern libqt_string QSettings_Group(Self* c_this);
	[LinkName("QSettings_BeginReadArray")]
	public static extern int32 QSettings_BeginReadArray(Self* c_this, QAnyStringView prefix);
	[LinkName("QSettings_BeginWriteArray")]
	public static extern void QSettings_BeginWriteArray(Self* c_this, QAnyStringView prefix);
	[LinkName("QSettings_EndArray")]
	public static extern void QSettings_EndArray(Self* c_this);
	[LinkName("QSettings_SetArrayIndex")]
	public static extern void QSettings_SetArrayIndex(Self* c_this, int32 i);
	[LinkName("QSettings_AllKeys")]
	public static extern libqt_string[] QSettings_AllKeys(Self* c_this);
	[LinkName("QSettings_ChildKeys")]
	public static extern libqt_string[] QSettings_ChildKeys(Self* c_this);
	[LinkName("QSettings_ChildGroups")]
	public static extern libqt_string[] QSettings_ChildGroups(Self* c_this);
	[LinkName("QSettings_IsWritable")]
	public static extern bool QSettings_IsWritable(Self* c_this);
	[LinkName("QSettings_SetValue")]
	public static extern void QSettings_SetValue(Self* c_this, QAnyStringView key, QVariant* value);
	[LinkName("QSettings_Value")]
	public static extern QVariant QSettings_Value(Self* c_this, QAnyStringView key, QVariant* defaultValue);
	[LinkName("QSettings_ValueWithKey")]
	public static extern QVariant QSettings_ValueWithKey(Self* c_this, QAnyStringView key);
	[LinkName("QSettings_Remove")]
	public static extern void QSettings_Remove(Self* c_this, QAnyStringView key);
	[LinkName("QSettings_Contains")]
	public static extern bool QSettings_Contains(Self* c_this, QAnyStringView key);
	[LinkName("QSettings_SetFallbacksEnabled")]
	public static extern void QSettings_SetFallbacksEnabled(Self* c_this, bool b);
	[LinkName("QSettings_FallbacksEnabled")]
	public static extern bool QSettings_FallbacksEnabled(Self* c_this);
	[LinkName("QSettings_FileName")]
	public static extern libqt_string QSettings_FileName(Self* c_this);
	[LinkName("QSettings_Format")]
	public static extern int64 QSettings_Format(Self* c_this);
	[LinkName("QSettings_Scope")]
	public static extern int64 QSettings_Scope(Self* c_this);
	[LinkName("QSettings_OrganizationName")]
	public static extern libqt_string QSettings_OrganizationName(Self* c_this);
	[LinkName("QSettings_ApplicationName")]
	public static extern libqt_string QSettings_ApplicationName(Self* c_this);
	[LinkName("QSettings_SetDefaultFormat")]
	public static extern void QSettings_SetDefaultFormat(int64 format);
	[LinkName("QSettings_DefaultFormat")]
	public static extern int64 QSettings_DefaultFormat();
	[LinkName("QSettings_SetPath")]
	public static extern void QSettings_SetPath(int64 format, int64 _scope, libqt_string path);
	[LinkName("QSettings_Event")]
	public static extern bool QSettings_Event(Self* c_this, QEvent* event);
	[LinkName("QSettings_Tr2")]
	public static extern libqt_string QSettings_Tr2(char8[] s, char8[] c);
	[LinkName("QSettings_Tr3")]
	public static extern libqt_string QSettings_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QSettings_BeginWriteArray2")]
	public static extern void QSettings_BeginWriteArray2(Self* c_this, QAnyStringView prefix, int32 size);
}