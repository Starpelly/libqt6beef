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
public interface IQCommandLineParser
{
	void* NativePtr { get; }
}
public class QCommandLineParser : IQCommandLineParser
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QCommandLineParser_new();
	}
	
	public ~this()
	{
		CQt.QCommandLineParser_Delete(this.nativePtr);
	}
	
	public static libqt_string Tr(char8* sourceText)
	{
		return CQt.QCommandLineParser_Tr(sourceText);
	}
	
	public void SetSingleDashWordOptionMode(int64 parsingMode)
	{
		CQt.QCommandLineParser_SetSingleDashWordOptionMode(this.nativePtr, parsingMode);
	}
	
	public void SetOptionsAfterPositionalArgumentsMode(int64 mode)
	{
		CQt.QCommandLineParser_SetOptionsAfterPositionalArgumentsMode(this.nativePtr, mode);
	}
	
	public bool AddOption(IQCommandLineOption commandLineOption)
	{
		return CQt.QCommandLineParser_AddOption(this.nativePtr, (commandLineOption == default) ? default : (void*)commandLineOption.NativePtr);
	}
	
	public bool AddOptions(IQCommandLineOption[] options)
	{
		return CQt.QCommandLineParser_AddOptions(this.nativePtr, null);
	}
	
	public void AddVersionOption()
	{
		CQt.QCommandLineParser_AddVersionOption(this.nativePtr);
	}
	
	public void AddHelpOption()
	{
		CQt.QCommandLineParser_AddHelpOption(this.nativePtr);
	}
	
	public void SetApplicationDescription(String description)
	{
		CQt.QCommandLineParser_SetApplicationDescription(this.nativePtr, libqt_string(description));
	}
	
	public libqt_string ApplicationDescription()
	{
		return CQt.QCommandLineParser_ApplicationDescription(this.nativePtr);
	}
	
	public void AddPositionalArgument(String name, String description)
	{
		CQt.QCommandLineParser_AddPositionalArgument(this.nativePtr, libqt_string(name), libqt_string(description));
	}
	
	public void ClearPositionalArguments()
	{
		CQt.QCommandLineParser_ClearPositionalArguments(this.nativePtr);
	}
	
	public void Process(String[] arguments)
	{
		CQt.QCommandLineParser_Process(this.nativePtr, null);
	}
	
	public void ProcessWithApp(IQCoreApplication app)
	{
		CQt.QCommandLineParser_ProcessWithApp(this.nativePtr, (app == default) ? default : (void*)app.NativePtr);
	}
	
	public bool Parse(String[] arguments)
	{
		return CQt.QCommandLineParser_Parse(this.nativePtr, null);
	}
	
	public libqt_string ErrorText()
	{
		return CQt.QCommandLineParser_ErrorText(this.nativePtr);
	}
	
	public bool IsSet(String name)
	{
		return CQt.QCommandLineParser_IsSet(this.nativePtr, libqt_string(name));
	}
	
	public libqt_string Value(String name)
	{
		return CQt.QCommandLineParser_Value(this.nativePtr, libqt_string(name));
	}
	
	public libqt_string[] Values(String name)
	{
		return CQt.QCommandLineParser_Values(this.nativePtr, libqt_string(name));
	}
	
	public bool IsSetWithOption(IQCommandLineOption option)
	{
		return CQt.QCommandLineParser_IsSetWithOption(this.nativePtr, (option == default) ? default : (void*)option.NativePtr);
	}
	
	public libqt_string ValueWithOption(IQCommandLineOption option)
	{
		return CQt.QCommandLineParser_ValueWithOption(this.nativePtr, (option == default) ? default : (void*)option.NativePtr);
	}
	
	public libqt_string[] ValuesWithOption(IQCommandLineOption option)
	{
		return CQt.QCommandLineParser_ValuesWithOption(this.nativePtr, (option == default) ? default : (void*)option.NativePtr);
	}
	
	public libqt_string[] PositionalArguments()
	{
		return CQt.QCommandLineParser_PositionalArguments(this.nativePtr);
	}
	
	public libqt_string[] OptionNames()
	{
		return CQt.QCommandLineParser_OptionNames(this.nativePtr);
	}
	
	public libqt_string[] UnknownOptionNames()
	{
		return CQt.QCommandLineParser_UnknownOptionNames(this.nativePtr);
	}
	
	public void ShowVersion()
	{
		CQt.QCommandLineParser_ShowVersion(this.nativePtr);
	}
	
	public void ShowHelp()
	{
		CQt.QCommandLineParser_ShowHelp(this.nativePtr);
	}
	
	public libqt_string HelpText()
	{
		return CQt.QCommandLineParser_HelpText(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8* sourceText, char8* disambiguation)
	{
		return CQt.QCommandLineParser_Tr2(sourceText, disambiguation);
	}
	
	public static libqt_string Tr3(char8* sourceText, char8* disambiguation, int32 n)
	{
		return CQt.QCommandLineParser_Tr3(sourceText, disambiguation, n);
	}
	
	public void AddPositionalArgument3(String name, String description, String syntax)
	{
		CQt.QCommandLineParser_AddPositionalArgument3(this.nativePtr, libqt_string(name), libqt_string(description), libqt_string(syntax));
	}
	
	public void ShowHelp1(int32 exitCode)
	{
		CQt.QCommandLineParser_ShowHelp1(this.nativePtr, exitCode);
	}
	
}
extension CQt
{
	[LinkName("QCommandLineParser_new")]
	public static extern void* QCommandLineParser_new();
	[LinkName("QCommandLineParser_Tr")]
	public static extern libqt_string QCommandLineParser_Tr(char8* sourceText);
	[LinkName("QCommandLineParser_SetSingleDashWordOptionMode")]
	public static extern void QCommandLineParser_SetSingleDashWordOptionMode(void* c_this, int64 parsingMode);
	[LinkName("QCommandLineParser_SetOptionsAfterPositionalArgumentsMode")]
	public static extern void QCommandLineParser_SetOptionsAfterPositionalArgumentsMode(void* c_this, int64 mode);
	[LinkName("QCommandLineParser_AddOption")]
	public static extern bool QCommandLineParser_AddOption(void* c_this, void* commandLineOption);
	[LinkName("QCommandLineParser_AddOptions")]
	public static extern bool QCommandLineParser_AddOptions(void* c_this, void[] options);
	[LinkName("QCommandLineParser_AddVersionOption")]
	public static extern void QCommandLineParser_AddVersionOption(void* c_this);
	[LinkName("QCommandLineParser_AddHelpOption")]
	public static extern void QCommandLineParser_AddHelpOption(void* c_this);
	[LinkName("QCommandLineParser_SetApplicationDescription")]
	public static extern void QCommandLineParser_SetApplicationDescription(void* c_this, libqt_string description);
	[LinkName("QCommandLineParser_ApplicationDescription")]
	public static extern libqt_string QCommandLineParser_ApplicationDescription(void* c_this);
	[LinkName("QCommandLineParser_AddPositionalArgument")]
	public static extern void QCommandLineParser_AddPositionalArgument(void* c_this, libqt_string name, libqt_string description);
	[LinkName("QCommandLineParser_ClearPositionalArguments")]
	public static extern void QCommandLineParser_ClearPositionalArguments(void* c_this);
	[LinkName("QCommandLineParser_Process")]
	public static extern void QCommandLineParser_Process(void* c_this, libqt_string[] arguments);
	[LinkName("QCommandLineParser_ProcessWithApp")]
	public static extern void QCommandLineParser_ProcessWithApp(void* c_this, void* app);
	[LinkName("QCommandLineParser_Parse")]
	public static extern bool QCommandLineParser_Parse(void* c_this, libqt_string[] arguments);
	[LinkName("QCommandLineParser_ErrorText")]
	public static extern libqt_string QCommandLineParser_ErrorText(void* c_this);
	[LinkName("QCommandLineParser_IsSet")]
	public static extern bool QCommandLineParser_IsSet(void* c_this, libqt_string name);
	[LinkName("QCommandLineParser_Value")]
	public static extern libqt_string QCommandLineParser_Value(void* c_this, libqt_string name);
	[LinkName("QCommandLineParser_Values")]
	public static extern libqt_string[] QCommandLineParser_Values(void* c_this, libqt_string name);
	[LinkName("QCommandLineParser_IsSetWithOption")]
	public static extern bool QCommandLineParser_IsSetWithOption(void* c_this, void* option);
	[LinkName("QCommandLineParser_ValueWithOption")]
	public static extern libqt_string QCommandLineParser_ValueWithOption(void* c_this, void* option);
	[LinkName("QCommandLineParser_ValuesWithOption")]
	public static extern libqt_string[] QCommandLineParser_ValuesWithOption(void* c_this, void* option);
	[LinkName("QCommandLineParser_PositionalArguments")]
	public static extern libqt_string[] QCommandLineParser_PositionalArguments(void* c_this);
	[LinkName("QCommandLineParser_OptionNames")]
	public static extern libqt_string[] QCommandLineParser_OptionNames(void* c_this);
	[LinkName("QCommandLineParser_UnknownOptionNames")]
	public static extern libqt_string[] QCommandLineParser_UnknownOptionNames(void* c_this);
	[LinkName("QCommandLineParser_ShowVersion")]
	public static extern void QCommandLineParser_ShowVersion(void* c_this);
	[LinkName("QCommandLineParser_ShowHelp")]
	public static extern void QCommandLineParser_ShowHelp(void* c_this);
	[LinkName("QCommandLineParser_HelpText")]
	public static extern libqt_string QCommandLineParser_HelpText(void* c_this);
	[LinkName("QCommandLineParser_Tr2")]
	public static extern libqt_string QCommandLineParser_Tr2(char8* sourceText, char8* disambiguation);
	[LinkName("QCommandLineParser_Tr3")]
	public static extern libqt_string QCommandLineParser_Tr3(char8* sourceText, char8* disambiguation, int32 n);
	[LinkName("QCommandLineParser_AddPositionalArgument3")]
	public static extern void QCommandLineParser_AddPositionalArgument3(void* c_this, libqt_string name, libqt_string description, libqt_string syntax);
	[LinkName("QCommandLineParser_ShowHelp1")]
	public static extern void QCommandLineParser_ShowHelp1(void* c_this, int32 exitCode);
	/// Delete this object from C++ memory
	[LinkName("QCommandLineParser_Delete")]
	public static extern void QCommandLineParser_Delete(void* self);
}