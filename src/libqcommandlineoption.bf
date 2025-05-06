using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QCommandLineOption__Flag
{
	HiddenFromHelp = 1,
	ShortOptionStyle = 2,
}
public struct QCommandLineOption
{
	[LinkName("QCommandLineOption_new")]
	public static extern void* QCommandLineOption_new(char8[] name);
	[LinkName("QCommandLineOption_new2")]
	public static extern void* QCommandLineOption_new2(char8[][] names);
	[LinkName("QCommandLineOption_new3")]
	public static extern void* QCommandLineOption_new3(char8[] name, char8[] description);
	[LinkName("QCommandLineOption_new4")]
	public static extern void* QCommandLineOption_new4(char8[][] names, char8[] description);
	[LinkName("QCommandLineOption_new5")]
	public static extern void* QCommandLineOption_new5(QCommandLineOption other);
	[LinkName("QCommandLineOption_new6")]
	public static extern void* QCommandLineOption_new6(char8[] name, char8[] description, char8[] valueName);
	[LinkName("QCommandLineOption_new7")]
	public static extern void* QCommandLineOption_new7(char8[] name, char8[] description, char8[] valueName, char8[] defaultValue);
	[LinkName("QCommandLineOption_new8")]
	public static extern void* QCommandLineOption_new8(char8[][] names, char8[] description, char8[] valueName);
	[LinkName("QCommandLineOption_new9")]
	public static extern void* QCommandLineOption_new9(char8[][] names, char8[] description, char8[] valueName, char8[] defaultValue);
	[LinkName("QCommandLineOption_OperatorAssign")]
	public static extern void QCommandLineOption_OperatorAssign(void* c_this, QCommandLineOption other);
	[LinkName("QCommandLineOption_Swap")]
	public static extern void QCommandLineOption_Swap(void* c_this, QCommandLineOption other);
	[LinkName("QCommandLineOption_Names")]
	public static extern char8[][] QCommandLineOption_Names(void* c_this);
	[LinkName("QCommandLineOption_SetValueName")]
	public static extern void QCommandLineOption_SetValueName(void* c_this, char8[] name);
	[LinkName("QCommandLineOption_ValueName")]
	public static extern char8[] QCommandLineOption_ValueName(void* c_this);
	[LinkName("QCommandLineOption_SetDescription")]
	public static extern void QCommandLineOption_SetDescription(void* c_this, char8[] description);
	[LinkName("QCommandLineOption_Description")]
	public static extern char8[] QCommandLineOption_Description(void* c_this);
	[LinkName("QCommandLineOption_SetDefaultValue")]
	public static extern void QCommandLineOption_SetDefaultValue(void* c_this, char8[] defaultValue);
	[LinkName("QCommandLineOption_SetDefaultValues")]
	public static extern void QCommandLineOption_SetDefaultValues(void* c_this, char8[][] defaultValues);
	[LinkName("QCommandLineOption_DefaultValues")]
	public static extern char8[][] QCommandLineOption_DefaultValues(void* c_this);
	[LinkName("QCommandLineOption_Flags")]
	public static extern int64 QCommandLineOption_Flags(void* c_this);
	[LinkName("QCommandLineOption_SetFlags")]
	public static extern void QCommandLineOption_SetFlags(void* c_this, int64 aflags);
}