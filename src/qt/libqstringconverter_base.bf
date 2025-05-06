using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QStringConverterBase__Flag
{
	Default = 0,
	Stateless = 1,
	ConvertInvalidToNull = 2,
	WriteBom = 4,
	ConvertInitialBom = 8,
	UsesIcu = 16,
}
[AllowDuplicates]
public enum QStringConverter__Encoding
{
	Utf8 = 0,
	Utf16 = 1,
	Utf16LE = 2,
	Utf16BE = 3,
	Utf32 = 4,
	Utf32LE = 5,
	Utf32BE = 6,
	Latin1 = 7,
	System = 8,
	LastEncoding = 8,
}
public struct QStringConverterBase
{
}
public struct QStringConverter : QStringConverterBase
{
	[LinkName("QStringConverter_IsValid")]
	public static extern bool QStringConverter_IsValid(Self* c_this);
	[LinkName("QStringConverter_ResetState")]
	public static extern void QStringConverter_ResetState(Self* c_this);
	[LinkName("QStringConverter_HasError")]
	public static extern bool QStringConverter_HasError(Self* c_this);
	[LinkName("QStringConverter_Name")]
	public static extern char8[] QStringConverter_Name(Self* c_this);
	[LinkName("QStringConverter_NameForEncoding")]
	public static extern char8[] QStringConverter_NameForEncoding(int64 e);
}
public struct QStringConverterBase__State
{
	[LinkName("QStringConverterBase__State_new")]
	public static extern QStringConverterBase__State* QStringConverterBase__State_new();
	[LinkName("QStringConverterBase__State_new2")]
	public static extern QStringConverterBase__State* QStringConverterBase__State_new2(int64 f);
	[LinkName("QStringConverterBase__State_Clear")]
	public static extern void QStringConverterBase__State_Clear(Self* c_this);
	[LinkName("QStringConverterBase__State_Reset")]
	public static extern void QStringConverterBase__State_Reset(Self* c_this);
}