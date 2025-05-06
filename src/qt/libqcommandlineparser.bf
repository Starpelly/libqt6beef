using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QCommandLineParser__SingleDashWordOptionMode
{
	ParseAsCompactedShortOptions = 0,
	ParseAsLongOptions = 1,
}
[AllowDuplicates]
public enum QCommandLineParser__OptionsAfterPositionalArgumentsMode
{
	ParseAsOptions = 0,
	ParseAsPositionalArguments = 1,
}
public struct QCommandLineParser
{
	[LinkName("QCommandLineParser_new")]
	public static extern QCommandLineParser* QCommandLineParser_new();
	[LinkName("QCommandLineParser_Tr")]
	public static extern libqt_string QCommandLineParser_Tr(char8[] sourceText);
	[LinkName("QCommandLineParser_SetSingleDashWordOptionMode")]
	public static extern void QCommandLineParser_SetSingleDashWordOptionMode(Self* c_this, int64 parsingMode);
	[LinkName("QCommandLineParser_SetOptionsAfterPositionalArgumentsMode")]
	public static extern void QCommandLineParser_SetOptionsAfterPositionalArgumentsMode(Self* c_this, int64 mode);
	[LinkName("QCommandLineParser_AddOption")]
	public static extern bool QCommandLineParser_AddOption(Self* c_this, QCommandLineOption* commandLineOption);
	[LinkName("QCommandLineParser_AddOptions")]
	public static extern bool QCommandLineParser_AddOptions(Self* c_this, QCommandLineOption[] options);
	[LinkName("QCommandLineParser_AddVersionOption")]
	public static extern QCommandLineOption QCommandLineParser_AddVersionOption(Self* c_this);
	[LinkName("QCommandLineParser_AddHelpOption")]
	public static extern QCommandLineOption QCommandLineParser_AddHelpOption(Self* c_this);
	[LinkName("QCommandLineParser_SetApplicationDescription")]
	public static extern void QCommandLineParser_SetApplicationDescription(Self* c_this, libqt_string description);
	[LinkName("QCommandLineParser_ApplicationDescription")]
	public static extern libqt_string QCommandLineParser_ApplicationDescription(Self* c_this);
	[LinkName("QCommandLineParser_AddPositionalArgument")]
	public static extern void QCommandLineParser_AddPositionalArgument(Self* c_this, libqt_string name, libqt_string description);
	[LinkName("QCommandLineParser_ClearPositionalArguments")]
	public static extern void QCommandLineParser_ClearPositionalArguments(Self* c_this);
	[LinkName("QCommandLineParser_Process")]
	public static extern void QCommandLineParser_Process(Self* c_this, libqt_string[] arguments);
	[LinkName("QCommandLineParser_ProcessWithApp")]
	public static extern void QCommandLineParser_ProcessWithApp(Self* c_this, QCoreApplication* app);
	[LinkName("QCommandLineParser_Parse")]
	public static extern bool QCommandLineParser_Parse(Self* c_this, libqt_string[] arguments);
	[LinkName("QCommandLineParser_ErrorText")]
	public static extern libqt_string QCommandLineParser_ErrorText(Self* c_this);
	[LinkName("QCommandLineParser_IsSet")]
	public static extern bool QCommandLineParser_IsSet(Self* c_this, libqt_string name);
	[LinkName("QCommandLineParser_Value")]
	public static extern libqt_string QCommandLineParser_Value(Self* c_this, libqt_string name);
	[LinkName("QCommandLineParser_Values")]
	public static extern libqt_string[] QCommandLineParser_Values(Self* c_this, libqt_string name);
	[LinkName("QCommandLineParser_IsSetWithOption")]
	public static extern bool QCommandLineParser_IsSetWithOption(Self* c_this, QCommandLineOption* option);
	[LinkName("QCommandLineParser_ValueWithOption")]
	public static extern libqt_string QCommandLineParser_ValueWithOption(Self* c_this, QCommandLineOption* option);
	[LinkName("QCommandLineParser_ValuesWithOption")]
	public static extern libqt_string[] QCommandLineParser_ValuesWithOption(Self* c_this, QCommandLineOption* option);
	[LinkName("QCommandLineParser_PositionalArguments")]
	public static extern libqt_string[] QCommandLineParser_PositionalArguments(Self* c_this);
	[LinkName("QCommandLineParser_OptionNames")]
	public static extern libqt_string[] QCommandLineParser_OptionNames(Self* c_this);
	[LinkName("QCommandLineParser_UnknownOptionNames")]
	public static extern libqt_string[] QCommandLineParser_UnknownOptionNames(Self* c_this);
	[LinkName("QCommandLineParser_ShowVersion")]
	public static extern void QCommandLineParser_ShowVersion(Self* c_this);
	[LinkName("QCommandLineParser_ShowHelp")]
	public static extern void QCommandLineParser_ShowHelp(Self* c_this);
	[LinkName("QCommandLineParser_HelpText")]
	public static extern libqt_string QCommandLineParser_HelpText(Self* c_this);
	[LinkName("QCommandLineParser_Tr2")]
	public static extern libqt_string QCommandLineParser_Tr2(char8[] sourceText, char8[] disambiguation);
	[LinkName("QCommandLineParser_Tr3")]
	public static extern libqt_string QCommandLineParser_Tr3(char8[] sourceText, char8[] disambiguation, int32 n);
	[LinkName("QCommandLineParser_AddPositionalArgument3")]
	public static extern void QCommandLineParser_AddPositionalArgument3(Self* c_this, libqt_string name, libqt_string description, libqt_string syntax);
	[LinkName("QCommandLineParser_ShowHelp1")]
	public static extern void QCommandLineParser_ShowHelp1(Self* c_this, int32 exitCode);
}