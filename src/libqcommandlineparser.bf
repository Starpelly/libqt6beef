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
	public static extern void* QCommandLineParser_new();
	[LinkName("QCommandLineParser_Tr")]
	public static extern char8[] QCommandLineParser_Tr(char8[] sourceText);
	[LinkName("QCommandLineParser_SetSingleDashWordOptionMode")]
	public static extern void QCommandLineParser_SetSingleDashWordOptionMode(void* c_this, int64 parsingMode);
	[LinkName("QCommandLineParser_SetOptionsAfterPositionalArgumentsMode")]
	public static extern void QCommandLineParser_SetOptionsAfterPositionalArgumentsMode(void* c_this, int64 mode);
	[LinkName("QCommandLineParser_AddOption")]
	public static extern bool QCommandLineParser_AddOption(void* c_this, QCommandLineOption commandLineOption);
	[LinkName("QCommandLineParser_AddOptions")]
	public static extern bool QCommandLineParser_AddOptions(void* c_this, QCommandLineOption[] options);
	[LinkName("QCommandLineParser_AddVersionOption")]
	public static extern QCommandLineOption QCommandLineParser_AddVersionOption(void* c_this);
	[LinkName("QCommandLineParser_AddHelpOption")]
	public static extern QCommandLineOption QCommandLineParser_AddHelpOption(void* c_this);
	[LinkName("QCommandLineParser_SetApplicationDescription")]
	public static extern void QCommandLineParser_SetApplicationDescription(void* c_this, char8[] description);
	[LinkName("QCommandLineParser_ApplicationDescription")]
	public static extern char8[] QCommandLineParser_ApplicationDescription(void* c_this);
	[LinkName("QCommandLineParser_AddPositionalArgument")]
	public static extern void QCommandLineParser_AddPositionalArgument(void* c_this, char8[] name, char8[] description);
	[LinkName("QCommandLineParser_ClearPositionalArguments")]
	public static extern void QCommandLineParser_ClearPositionalArguments(void* c_this);
	[LinkName("QCommandLineParser_Process")]
	public static extern void QCommandLineParser_Process(void* c_this, char8[][] arguments);
	[LinkName("QCommandLineParser_ProcessWithApp")]
	public static extern void QCommandLineParser_ProcessWithApp(void* c_this, QCoreApplication app);
	[LinkName("QCommandLineParser_Parse")]
	public static extern bool QCommandLineParser_Parse(void* c_this, char8[][] arguments);
	[LinkName("QCommandLineParser_ErrorText")]
	public static extern char8[] QCommandLineParser_ErrorText(void* c_this);
	[LinkName("QCommandLineParser_IsSet")]
	public static extern bool QCommandLineParser_IsSet(void* c_this, char8[] name);
	[LinkName("QCommandLineParser_Value")]
	public static extern char8[] QCommandLineParser_Value(void* c_this, char8[] name);
	[LinkName("QCommandLineParser_Values")]
	public static extern char8[][] QCommandLineParser_Values(void* c_this, char8[] name);
	[LinkName("QCommandLineParser_IsSetWithOption")]
	public static extern bool QCommandLineParser_IsSetWithOption(void* c_this, QCommandLineOption option);
	[LinkName("QCommandLineParser_ValueWithOption")]
	public static extern char8[] QCommandLineParser_ValueWithOption(void* c_this, QCommandLineOption option);
	[LinkName("QCommandLineParser_ValuesWithOption")]
	public static extern char8[][] QCommandLineParser_ValuesWithOption(void* c_this, QCommandLineOption option);
	[LinkName("QCommandLineParser_PositionalArguments")]
	public static extern char8[][] QCommandLineParser_PositionalArguments(void* c_this);
	[LinkName("QCommandLineParser_OptionNames")]
	public static extern char8[][] QCommandLineParser_OptionNames(void* c_this);
	[LinkName("QCommandLineParser_UnknownOptionNames")]
	public static extern char8[][] QCommandLineParser_UnknownOptionNames(void* c_this);
	[LinkName("QCommandLineParser_ShowVersion")]
	public static extern void QCommandLineParser_ShowVersion(void* c_this);
	[LinkName("QCommandLineParser_ShowHelp")]
	public static extern void QCommandLineParser_ShowHelp(void* c_this);
	[LinkName("QCommandLineParser_HelpText")]
	public static extern char8[] QCommandLineParser_HelpText(void* c_this);
	[LinkName("QCommandLineParser_Tr2")]
	public static extern char8[] QCommandLineParser_Tr2(char8[] sourceText, char8[] disambiguation);
	[LinkName("QCommandLineParser_Tr3")]
	public static extern char8[] QCommandLineParser_Tr3(char8[] sourceText, char8[] disambiguation, int32 n);
	[LinkName("QCommandLineParser_AddPositionalArgument3")]
	public static extern void QCommandLineParser_AddPositionalArgument3(void* c_this, char8[] name, char8[] description, char8[] syntax);
	[LinkName("QCommandLineParser_ShowHelp1")]
	public static extern void QCommandLineParser_ShowHelp1(void* c_this, int32 exitCode);
}