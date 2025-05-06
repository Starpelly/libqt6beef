using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QTextStream__RealNumberNotation
{
	SmartNotation = 0,
	FixedNotation = 1,
	ScientificNotation = 2,
}
[AllowDuplicates]
public enum QTextStream__FieldAlignment
{
	AlignLeft = 0,
	AlignRight = 1,
	AlignCenter = 2,
	AlignAccountingStyle = 3,
}
[AllowDuplicates]
public enum QTextStream__Status
{
	Ok = 0,
	ReadPastEnd = 1,
	ReadCorruptData = 2,
	WriteFailed = 3,
}
[AllowDuplicates]
public enum QTextStream__NumberFlag
{
	ShowBase = 1,
	ForcePoint = 2,
	ForceSign = 4,
	UppercaseBase = 8,
	UppercaseDigits = 16,
}
public struct QTextStream : QIODeviceBase
{
	[LinkName("QTextStream_new")]
	public static extern QTextStream* QTextStream_new();
	[LinkName("QTextStream_new2")]
	public static extern QTextStream* QTextStream_new2(QIODevice* device);
	[LinkName("QTextStream_new3")]
	public static extern QTextStream* QTextStream_new3(libqt_string array);
	[LinkName("QTextStream_new4")]
	public static extern QTextStream* QTextStream_new4(libqt_string array, int64 openMode);
	[LinkName("QTextStream_SetEncoding")]
	public static extern void QTextStream_SetEncoding(Self* c_this, int64 encoding);
	[LinkName("QTextStream_Encoding")]
	public static extern int64 QTextStream_Encoding(Self* c_this);
	[LinkName("QTextStream_SetAutoDetectUnicode")]
	public static extern void QTextStream_SetAutoDetectUnicode(Self* c_this, bool enabled);
	[LinkName("QTextStream_AutoDetectUnicode")]
	public static extern bool QTextStream_AutoDetectUnicode(Self* c_this);
	[LinkName("QTextStream_SetGenerateByteOrderMark")]
	public static extern void QTextStream_SetGenerateByteOrderMark(Self* c_this, bool generate);
	[LinkName("QTextStream_GenerateByteOrderMark")]
	public static extern bool QTextStream_GenerateByteOrderMark(Self* c_this);
	[LinkName("QTextStream_SetLocale")]
	public static extern void QTextStream_SetLocale(Self* c_this, QLocale* locale);
	[LinkName("QTextStream_Locale")]
	public static extern QLocale QTextStream_Locale(Self* c_this);
	[LinkName("QTextStream_SetDevice")]
	public static extern void QTextStream_SetDevice(Self* c_this, QIODevice* device);
	[LinkName("QTextStream_Device")]
	public static extern QIODevice* QTextStream_Device(Self* c_this);
	[LinkName("QTextStream_String")]
	public static extern libqt_string QTextStream_String(Self* c_this);
	[LinkName("QTextStream_Status")]
	public static extern int64 QTextStream_Status(Self* c_this);
	[LinkName("QTextStream_SetStatus")]
	public static extern void QTextStream_SetStatus(Self* c_this, int64 status);
	[LinkName("QTextStream_ResetStatus")]
	public static extern void QTextStream_ResetStatus(Self* c_this);
	[LinkName("QTextStream_AtEnd")]
	public static extern bool QTextStream_AtEnd(Self* c_this);
	[LinkName("QTextStream_Reset")]
	public static extern void QTextStream_Reset(Self* c_this);
	[LinkName("QTextStream_Flush")]
	public static extern void QTextStream_Flush(Self* c_this);
	[LinkName("QTextStream_Seek")]
	public static extern bool QTextStream_Seek(Self* c_this, int64 pos);
	[LinkName("QTextStream_Pos")]
	public static extern int64 QTextStream_Pos(Self* c_this);
	[LinkName("QTextStream_SkipWhiteSpace")]
	public static extern void QTextStream_SkipWhiteSpace(Self* c_this);
	[LinkName("QTextStream_ReadLine")]
	public static extern libqt_string QTextStream_ReadLine(Self* c_this);
	[LinkName("QTextStream_ReadAll")]
	public static extern libqt_string QTextStream_ReadAll(Self* c_this);
	[LinkName("QTextStream_Read")]
	public static extern libqt_string QTextStream_Read(Self* c_this, int64 maxlen);
	[LinkName("QTextStream_SetFieldAlignment")]
	public static extern void QTextStream_SetFieldAlignment(Self* c_this, int64 alignment);
	[LinkName("QTextStream_FieldAlignment")]
	public static extern int64 QTextStream_FieldAlignment(Self* c_this);
	[LinkName("QTextStream_SetPadChar")]
	public static extern void QTextStream_SetPadChar(Self* c_this, QChar ch);
	[LinkName("QTextStream_PadChar")]
	public static extern QChar QTextStream_PadChar(Self* c_this);
	[LinkName("QTextStream_SetFieldWidth")]
	public static extern void QTextStream_SetFieldWidth(Self* c_this, int32 width);
	[LinkName("QTextStream_FieldWidth")]
	public static extern int32 QTextStream_FieldWidth(Self* c_this);
	[LinkName("QTextStream_SetNumberFlags")]
	public static extern void QTextStream_SetNumberFlags(Self* c_this, int64 flags);
	[LinkName("QTextStream_NumberFlags")]
	public static extern int64 QTextStream_NumberFlags(Self* c_this);
	[LinkName("QTextStream_SetIntegerBase")]
	public static extern void QTextStream_SetIntegerBase(Self* c_this, int32 _base);
	[LinkName("QTextStream_IntegerBase")]
	public static extern int32 QTextStream_IntegerBase(Self* c_this);
	[LinkName("QTextStream_SetRealNumberNotation")]
	public static extern void QTextStream_SetRealNumberNotation(Self* c_this, int64 notation);
	[LinkName("QTextStream_RealNumberNotation")]
	public static extern int64 QTextStream_RealNumberNotation(Self* c_this);
	[LinkName("QTextStream_SetRealNumberPrecision")]
	public static extern void QTextStream_SetRealNumberPrecision(Self* c_this, int32 precision);
	[LinkName("QTextStream_RealNumberPrecision")]
	public static extern int32 QTextStream_RealNumberPrecision(Self* c_this);
	[LinkName("QTextStream_OperatorShiftRight")]
	public static extern QTextStream* QTextStream_OperatorShiftRight(Self* c_this, QChar* ch);
	[LinkName("QTextStream_OperatorShiftRightWithCh")]
	public static extern QTextStream* QTextStream_OperatorShiftRightWithCh(Self* c_this, int8* ch);
	[LinkName("QTextStream_OperatorShiftRightWithShort")]
	public static extern QTextStream* QTextStream_OperatorShiftRightWithShort(Self* c_this, int16* i);
	[LinkName("QTextStream_OperatorShiftRightWithUnsignedshort")]
	public static extern QTextStream* QTextStream_OperatorShiftRightWithUnsignedshort(Self* c_this, uint16* i);
	[LinkName("QTextStream_OperatorShiftRightWithInt")]
	public static extern QTextStream* QTextStream_OperatorShiftRightWithInt(Self* c_this, int32* i);
	[LinkName("QTextStream_OperatorShiftRightWithUnsignedint")]
	public static extern QTextStream* QTextStream_OperatorShiftRightWithUnsignedint(Self* c_this, uint32* i);
	[LinkName("QTextStream_OperatorShiftRightWithLong")]
	public static extern QTextStream* QTextStream_OperatorShiftRightWithLong(Self* c_this, c_long* i);
	[LinkName("QTextStream_OperatorShiftRightWithUnsignedlong")]
	public static extern QTextStream* QTextStream_OperatorShiftRightWithUnsignedlong(Self* c_this, c_ulong* i);
	[LinkName("QTextStream_OperatorShiftRightWithQlonglong")]
	public static extern QTextStream* QTextStream_OperatorShiftRightWithQlonglong(Self* c_this, int64* i);
	[LinkName("QTextStream_OperatorShiftRightWithQulonglong")]
	public static extern QTextStream* QTextStream_OperatorShiftRightWithQulonglong(Self* c_this, uint64* i);
	[LinkName("QTextStream_OperatorShiftRightWithFloat")]
	public static extern QTextStream* QTextStream_OperatorShiftRightWithFloat(Self* c_this, float* f);
	[LinkName("QTextStream_OperatorShiftRightWithDouble")]
	public static extern QTextStream* QTextStream_OperatorShiftRightWithDouble(Self* c_this, double* f);
	[LinkName("QTextStream_OperatorShiftRightWithQString")]
	public static extern QTextStream* QTextStream_OperatorShiftRightWithQString(Self* c_this, libqt_string s);
	[LinkName("QTextStream_OperatorShiftRightWithArray")]
	public static extern QTextStream* QTextStream_OperatorShiftRightWithArray(Self* c_this, libqt_string array);
	[LinkName("QTextStream_OperatorShiftRightWithChar")]
	public static extern QTextStream* QTextStream_OperatorShiftRightWithChar(Self* c_this, char8[] c);
	[LinkName("QTextStream_OperatorShiftLeft")]
	public static extern QTextStream* QTextStream_OperatorShiftLeft(Self* c_this, QChar ch);
	[LinkName("QTextStream_OperatorShiftLeftWithCh")]
	public static extern QTextStream* QTextStream_OperatorShiftLeftWithCh(Self* c_this, int8 ch);
	[LinkName("QTextStream_OperatorShiftLeftWithShort")]
	public static extern QTextStream* QTextStream_OperatorShiftLeftWithShort(Self* c_this, int16 i);
	[LinkName("QTextStream_OperatorShiftLeftWithUnsignedshort")]
	public static extern QTextStream* QTextStream_OperatorShiftLeftWithUnsignedshort(Self* c_this, uint16 i);
	[LinkName("QTextStream_OperatorShiftLeftWithInt")]
	public static extern QTextStream* QTextStream_OperatorShiftLeftWithInt(Self* c_this, int32 i);
	[LinkName("QTextStream_OperatorShiftLeftWithUnsignedint")]
	public static extern QTextStream* QTextStream_OperatorShiftLeftWithUnsignedint(Self* c_this, uint32 i);
	[LinkName("QTextStream_OperatorShiftLeftWithLong")]
	public static extern QTextStream* QTextStream_OperatorShiftLeftWithLong(Self* c_this, c_long i);
	[LinkName("QTextStream_OperatorShiftLeftWithUnsignedlong")]
	public static extern QTextStream* QTextStream_OperatorShiftLeftWithUnsignedlong(Self* c_this, c_ulong i);
	[LinkName("QTextStream_OperatorShiftLeftWithQlonglong")]
	public static extern QTextStream* QTextStream_OperatorShiftLeftWithQlonglong(Self* c_this, int64 i);
	[LinkName("QTextStream_OperatorShiftLeftWithQulonglong")]
	public static extern QTextStream* QTextStream_OperatorShiftLeftWithQulonglong(Self* c_this, uint64 i);
	[LinkName("QTextStream_OperatorShiftLeftWithFloat")]
	public static extern QTextStream* QTextStream_OperatorShiftLeftWithFloat(Self* c_this, float f);
	[LinkName("QTextStream_OperatorShiftLeftWithDouble")]
	public static extern QTextStream* QTextStream_OperatorShiftLeftWithDouble(Self* c_this, double f);
	[LinkName("QTextStream_OperatorShiftLeftWithQString")]
	public static extern QTextStream* QTextStream_OperatorShiftLeftWithQString(Self* c_this, libqt_string s);
	[LinkName("QTextStream_OperatorShiftLeftWithArray")]
	public static extern QTextStream* QTextStream_OperatorShiftLeftWithArray(Self* c_this, libqt_string array);
	[LinkName("QTextStream_OperatorShiftLeftWithChar")]
	public static extern QTextStream* QTextStream_OperatorShiftLeftWithChar(Self* c_this, char8[] c);
	[LinkName("QTextStream_OperatorShiftLeftWithPtr")]
	public static extern QTextStream* QTextStream_OperatorShiftLeftWithPtr(Self* c_this, void* ptr);
	[LinkName("QTextStream_ReadLine1")]
	public static extern libqt_string QTextStream_ReadLine1(Self* c_this, int64 maxlen);
}