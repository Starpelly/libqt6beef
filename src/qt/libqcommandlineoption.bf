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
	public static extern QCommandLineOption* QCommandLineOption_new(libqt_string name);
	[LinkName("QCommandLineOption_new2")]
	public static extern QCommandLineOption* QCommandLineOption_new2(libqt_string[] names);
	[LinkName("QCommandLineOption_new3")]
	public static extern QCommandLineOption* QCommandLineOption_new3(libqt_string name, libqt_string description);
	[LinkName("QCommandLineOption_new4")]
	public static extern QCommandLineOption* QCommandLineOption_new4(libqt_string[] names, libqt_string description);
	[LinkName("QCommandLineOption_new5")]
	public static extern QCommandLineOption* QCommandLineOption_new5(QCommandLineOption* other);
	[LinkName("QCommandLineOption_new6")]
	public static extern QCommandLineOption* QCommandLineOption_new6(libqt_string name, libqt_string description, libqt_string valueName);
	[LinkName("QCommandLineOption_new7")]
	public static extern QCommandLineOption* QCommandLineOption_new7(libqt_string name, libqt_string description, libqt_string valueName, libqt_string defaultValue);
	[LinkName("QCommandLineOption_new8")]
	public static extern QCommandLineOption* QCommandLineOption_new8(libqt_string[] names, libqt_string description, libqt_string valueName);
	[LinkName("QCommandLineOption_new9")]
	public static extern QCommandLineOption* QCommandLineOption_new9(libqt_string[] names, libqt_string description, libqt_string valueName, libqt_string defaultValue);
	[LinkName("QCommandLineOption_OperatorAssign")]
	public static extern void QCommandLineOption_OperatorAssign(Self* c_this, QCommandLineOption* other);
	[LinkName("QCommandLineOption_Swap")]
	public static extern void QCommandLineOption_Swap(Self* c_this, QCommandLineOption* other);
	[LinkName("QCommandLineOption_Names")]
	public static extern libqt_string[] QCommandLineOption_Names(Self* c_this);
	[LinkName("QCommandLineOption_SetValueName")]
	public static extern void QCommandLineOption_SetValueName(Self* c_this, libqt_string name);
	[LinkName("QCommandLineOption_ValueName")]
	public static extern libqt_string QCommandLineOption_ValueName(Self* c_this);
	[LinkName("QCommandLineOption_SetDescription")]
	public static extern void QCommandLineOption_SetDescription(Self* c_this, libqt_string description);
	[LinkName("QCommandLineOption_Description")]
	public static extern libqt_string QCommandLineOption_Description(Self* c_this);
	[LinkName("QCommandLineOption_SetDefaultValue")]
	public static extern void QCommandLineOption_SetDefaultValue(Self* c_this, libqt_string defaultValue);
	[LinkName("QCommandLineOption_SetDefaultValues")]
	public static extern void QCommandLineOption_SetDefaultValues(Self* c_this, libqt_string[] defaultValues);
	[LinkName("QCommandLineOption_DefaultValues")]
	public static extern libqt_string[] QCommandLineOption_DefaultValues(Self* c_this);
	[LinkName("QCommandLineOption_Flags")]
	public static extern int64 QCommandLineOption_Flags(Self* c_this);
	[LinkName("QCommandLineOption_SetFlags")]
	public static extern void QCommandLineOption_SetFlags(Self* c_this, int64 aflags);
}