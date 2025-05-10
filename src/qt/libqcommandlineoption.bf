using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QCommandLineOption__Flag
{
	HiddenFromHelp = 1,
	ShortOptionStyle = 2,
}
public class QCommandLineOption
{
	protected void* nativePtr;
	
	public this(libqt_string name)
	{
		this.nativePtr = CQt.QCommandLineOption_new(name);
	}
	
	public ~this()
	{
		CQt.QCommandLineOption_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* other)
	{
		CQt.QCommandLineOption_OperatorAssign(this.nativePtr, other);
	}
	
	public void Swap(void* other)
	{
		CQt.QCommandLineOption_Swap(this.nativePtr, other);
	}
	
	public libqt_string[] Names()
	{
		return CQt.QCommandLineOption_Names(this.nativePtr);
	}
	
	public void SetValueName(libqt_string name)
	{
		CQt.QCommandLineOption_SetValueName(this.nativePtr, name);
	}
	
	public libqt_string ValueName()
	{
		return CQt.QCommandLineOption_ValueName(this.nativePtr);
	}
	
	public void SetDescription(libqt_string description)
	{
		CQt.QCommandLineOption_SetDescription(this.nativePtr, description);
	}
	
	public libqt_string Description()
	{
		return CQt.QCommandLineOption_Description(this.nativePtr);
	}
	
	public void SetDefaultValue(libqt_string defaultValue)
	{
		CQt.QCommandLineOption_SetDefaultValue(this.nativePtr, defaultValue);
	}
	
	public void SetDefaultValues(libqt_string[] defaultValues)
	{
		CQt.QCommandLineOption_SetDefaultValues(this.nativePtr, defaultValues);
	}
	
	public libqt_string[] DefaultValues()
	{
		return CQt.QCommandLineOption_DefaultValues(this.nativePtr);
	}
	
	public int64 Flags()
	{
		return CQt.QCommandLineOption_Flags(this.nativePtr);
	}
	
	public void SetFlags(int64 aflags)
	{
		CQt.QCommandLineOption_SetFlags(this.nativePtr, aflags);
	}
	
}
extension CQt
{
	[LinkName("QCommandLineOption_new")]
	public static extern void* QCommandLineOption_new(libqt_string name);
	[LinkName("QCommandLineOption_new2")]
	public static extern void* QCommandLineOption_new2(libqt_string[] names);
	[LinkName("QCommandLineOption_new3")]
	public static extern void* QCommandLineOption_new3(libqt_string name, libqt_string description);
	[LinkName("QCommandLineOption_new4")]
	public static extern void* QCommandLineOption_new4(libqt_string[] names, libqt_string description);
	[LinkName("QCommandLineOption_new5")]
	public static extern void* QCommandLineOption_new5(void* other);
	[LinkName("QCommandLineOption_new6")]
	public static extern void* QCommandLineOption_new6(libqt_string name, libqt_string description, libqt_string valueName);
	[LinkName("QCommandLineOption_new7")]
	public static extern void* QCommandLineOption_new7(libqt_string name, libqt_string description, libqt_string valueName, libqt_string defaultValue);
	[LinkName("QCommandLineOption_new8")]
	public static extern void* QCommandLineOption_new8(libqt_string[] names, libqt_string description, libqt_string valueName);
	[LinkName("QCommandLineOption_new9")]
	public static extern void* QCommandLineOption_new9(libqt_string[] names, libqt_string description, libqt_string valueName, libqt_string defaultValue);
	[LinkName("QCommandLineOption_OperatorAssign")]
	public static extern void QCommandLineOption_OperatorAssign(void* c_this, void* other);
	[LinkName("QCommandLineOption_Swap")]
	public static extern void QCommandLineOption_Swap(void* c_this, void* other);
	[LinkName("QCommandLineOption_Names")]
	public static extern libqt_string[] QCommandLineOption_Names(void* c_this);
	[LinkName("QCommandLineOption_SetValueName")]
	public static extern void QCommandLineOption_SetValueName(void* c_this, libqt_string name);
	[LinkName("QCommandLineOption_ValueName")]
	public static extern libqt_string QCommandLineOption_ValueName(void* c_this);
	[LinkName("QCommandLineOption_SetDescription")]
	public static extern void QCommandLineOption_SetDescription(void* c_this, libqt_string description);
	[LinkName("QCommandLineOption_Description")]
	public static extern libqt_string QCommandLineOption_Description(void* c_this);
	[LinkName("QCommandLineOption_SetDefaultValue")]
	public static extern void QCommandLineOption_SetDefaultValue(void* c_this, libqt_string defaultValue);
	[LinkName("QCommandLineOption_SetDefaultValues")]
	public static extern void QCommandLineOption_SetDefaultValues(void* c_this, libqt_string[] defaultValues);
	[LinkName("QCommandLineOption_DefaultValues")]
	public static extern libqt_string[] QCommandLineOption_DefaultValues(void* c_this);
	[LinkName("QCommandLineOption_Flags")]
	public static extern int64 QCommandLineOption_Flags(void* c_this);
	[LinkName("QCommandLineOption_SetFlags")]
	public static extern void QCommandLineOption_SetFlags(void* c_this, int64 aflags);
	/// Delete this object from C++ memory
	[LinkName("QCommandLineOption_Delete")]
	public static extern void QCommandLineOption_Delete(void* self);
}