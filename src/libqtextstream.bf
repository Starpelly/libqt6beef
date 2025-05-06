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
public struct QTextStream
{
	[LinkName("QTextStream_new")]
	public static extern void* QTextStream_new();
	[LinkName("QTextStream_new2")]
	public static extern void* QTextStream_new2(QIODevice device);
	[LinkName("QTextStream_new3")]
	public static extern void* QTextStream_new3(uint8[] array);
	[LinkName("QTextStream_new4")]
	public static extern void* QTextStream_new4(uint8[] array, int64 openMode);
	[LinkName("QTextStream_SetEncoding")]
	public static extern void QTextStream_SetEncoding(void* c_this, int64 encoding);
	[LinkName("QTextStream_Encoding")]
	public static extern int64 QTextStream_Encoding(void* c_this);
	[LinkName("QTextStream_SetAutoDetectUnicode")]
	public static extern void QTextStream_SetAutoDetectUnicode(void* c_this, bool enabled);
	[LinkName("QTextStream_AutoDetectUnicode")]
	public static extern bool QTextStream_AutoDetectUnicode(void* c_this);
	[LinkName("QTextStream_SetGenerateByteOrderMark")]
	public static extern void QTextStream_SetGenerateByteOrderMark(void* c_this, bool generate);
	[LinkName("QTextStream_GenerateByteOrderMark")]
	public static extern bool QTextStream_GenerateByteOrderMark(void* c_this);
	[LinkName("QTextStream_SetLocale")]
	public static extern void QTextStream_SetLocale(void* c_this, QLocale locale);
	[LinkName("QTextStream_Locale")]
	public static extern QLocale QTextStream_Locale(void* c_this);
	[LinkName("QTextStream_SetDevice")]
	public static extern void QTextStream_SetDevice(void* c_this, QIODevice device);
	[LinkName("QTextStream_Device")]
	public static extern QIODevice QTextStream_Device(void* c_this);
	[LinkName("QTextStream_String")]
	public static extern char8[] QTextStream_String(void* c_this);
	[LinkName("QTextStream_Status")]
	public static extern int64 QTextStream_Status(void* c_this);
	[LinkName("QTextStream_SetStatus")]
	public static extern void QTextStream_SetStatus(void* c_this, int64 status);
	[LinkName("QTextStream_ResetStatus")]
	public static extern void QTextStream_ResetStatus(void* c_this);
	[LinkName("QTextStream_AtEnd")]
	public static extern bool QTextStream_AtEnd(void* c_this);
	[LinkName("QTextStream_Reset")]
	public static extern void QTextStream_Reset(void* c_this);
	[LinkName("QTextStream_Flush")]
	public static extern void QTextStream_Flush(void* c_this);
	[LinkName("QTextStream_Seek")]
	public static extern bool QTextStream_Seek(void* c_this, int64 pos);
	[LinkName("QTextStream_Pos")]
	public static extern int64 QTextStream_Pos(void* c_this);
	[LinkName("QTextStream_SkipWhiteSpace")]
	public static extern void QTextStream_SkipWhiteSpace(void* c_this);
	[LinkName("QTextStream_ReadLine")]
	public static extern char8[] QTextStream_ReadLine(void* c_this);
	[LinkName("QTextStream_ReadAll")]
	public static extern char8[] QTextStream_ReadAll(void* c_this);
	[LinkName("QTextStream_Read")]
	public static extern char8[] QTextStream_Read(void* c_this, int64 maxlen);
	[LinkName("QTextStream_SetFieldAlignment")]
	public static extern void QTextStream_SetFieldAlignment(void* c_this, int64 alignment);
	[LinkName("QTextStream_FieldAlignment")]
	public static extern int64 QTextStream_FieldAlignment(void* c_this);
	[LinkName("QTextStream_SetPadChar")]
	public static extern void QTextStream_SetPadChar(void* c_this, QChar ch);
	[LinkName("QTextStream_PadChar")]
	public static extern QChar QTextStream_PadChar(void* c_this);
	[LinkName("QTextStream_SetFieldWidth")]
	public static extern void QTextStream_SetFieldWidth(void* c_this, int32 width);
	[LinkName("QTextStream_FieldWidth")]
	public static extern int32 QTextStream_FieldWidth(void* c_this);
	[LinkName("QTextStream_SetNumberFlags")]
	public static extern void QTextStream_SetNumberFlags(void* c_this, int64 flags);
	[LinkName("QTextStream_NumberFlags")]
	public static extern int64 QTextStream_NumberFlags(void* c_this);
	[LinkName("QTextStream_SetIntegerBase")]
	public static extern void QTextStream_SetIntegerBase(void* c_this, int32 _base);
	[LinkName("QTextStream_IntegerBase")]
	public static extern int32 QTextStream_IntegerBase(void* c_this);
	[LinkName("QTextStream_SetRealNumberNotation")]
	public static extern void QTextStream_SetRealNumberNotation(void* c_this, int64 notation);
	[LinkName("QTextStream_RealNumberNotation")]
	public static extern int64 QTextStream_RealNumberNotation(void* c_this);
	[LinkName("QTextStream_SetRealNumberPrecision")]
	public static extern void QTextStream_SetRealNumberPrecision(void* c_this, int32 precision);
	[LinkName("QTextStream_RealNumberPrecision")]
	public static extern int32 QTextStream_RealNumberPrecision(void* c_this);
	[LinkName("QTextStream_OperatorShiftRight")]
	public static extern QTextStream QTextStream_OperatorShiftRight(void* c_this, QChar ch);
	[LinkName("QTextStream_OperatorShiftRightWithCh")]
	public static extern QTextStream QTextStream_OperatorShiftRightWithCh(void* c_this, int8 ch);
	[LinkName("QTextStream_OperatorShiftRightWithShort")]
	public static extern QTextStream QTextStream_OperatorShiftRightWithShort(void* c_this, int16 i);
	[LinkName("QTextStream_OperatorShiftRightWithUnsignedshort")]
	public static extern QTextStream QTextStream_OperatorShiftRightWithUnsignedshort(void* c_this, uint16 i);
	[LinkName("QTextStream_OperatorShiftRightWithInt")]
	public static extern QTextStream QTextStream_OperatorShiftRightWithInt(void* c_this, int32 i);
	[LinkName("QTextStream_OperatorShiftRightWithUnsignedint")]
	public static extern QTextStream QTextStream_OperatorShiftRightWithUnsignedint(void* c_this, uint32 i);
	[LinkName("QTextStream_OperatorShiftRightWithLong")]
	public static extern QTextStream QTextStream_OperatorShiftRightWithLong(void* c_this, c_long i);
	[LinkName("QTextStream_OperatorShiftRightWithUnsignedlong")]
	public static extern QTextStream QTextStream_OperatorShiftRightWithUnsignedlong(void* c_this, c_ulong i);
	[LinkName("QTextStream_OperatorShiftRightWithQlonglong")]
	public static extern QTextStream QTextStream_OperatorShiftRightWithQlonglong(void* c_this, int64 i);
	[LinkName("QTextStream_OperatorShiftRightWithQulonglong")]
	public static extern QTextStream QTextStream_OperatorShiftRightWithQulonglong(void* c_this, uint64 i);
	[LinkName("QTextStream_OperatorShiftRightWithFloat")]
	public static extern QTextStream QTextStream_OperatorShiftRightWithFloat(void* c_this, float f);
	[LinkName("QTextStream_OperatorShiftRightWithDouble")]
	public static extern QTextStream QTextStream_OperatorShiftRightWithDouble(void* c_this, double f);
	[LinkName("QTextStream_OperatorShiftRightWithQString")]
	public static extern QTextStream QTextStream_OperatorShiftRightWithQString(void* c_this, char8[] s);
	[LinkName("QTextStream_OperatorShiftRightWithArray")]
	public static extern QTextStream QTextStream_OperatorShiftRightWithArray(void* c_this, uint8[] array);
	[LinkName("QTextStream_OperatorShiftRightWithChar")]
	public static extern QTextStream QTextStream_OperatorShiftRightWithChar(void* c_this, char8[] c);
	[LinkName("QTextStream_OperatorShiftLeft")]
	public static extern QTextStream QTextStream_OperatorShiftLeft(void* c_this, QChar ch);
	[LinkName("QTextStream_OperatorShiftLeftWithCh")]
	public static extern QTextStream QTextStream_OperatorShiftLeftWithCh(void* c_this, int8 ch);
	[LinkName("QTextStream_OperatorShiftLeftWithShort")]
	public static extern QTextStream QTextStream_OperatorShiftLeftWithShort(void* c_this, int16 i);
	[LinkName("QTextStream_OperatorShiftLeftWithUnsignedshort")]
	public static extern QTextStream QTextStream_OperatorShiftLeftWithUnsignedshort(void* c_this, uint16 i);
	[LinkName("QTextStream_OperatorShiftLeftWithInt")]
	public static extern QTextStream QTextStream_OperatorShiftLeftWithInt(void* c_this, int32 i);
	[LinkName("QTextStream_OperatorShiftLeftWithUnsignedint")]
	public static extern QTextStream QTextStream_OperatorShiftLeftWithUnsignedint(void* c_this, uint32 i);
	[LinkName("QTextStream_OperatorShiftLeftWithLong")]
	public static extern QTextStream QTextStream_OperatorShiftLeftWithLong(void* c_this, c_long i);
	[LinkName("QTextStream_OperatorShiftLeftWithUnsignedlong")]
	public static extern QTextStream QTextStream_OperatorShiftLeftWithUnsignedlong(void* c_this, c_ulong i);
	[LinkName("QTextStream_OperatorShiftLeftWithQlonglong")]
	public static extern QTextStream QTextStream_OperatorShiftLeftWithQlonglong(void* c_this, int64 i);
	[LinkName("QTextStream_OperatorShiftLeftWithQulonglong")]
	public static extern QTextStream QTextStream_OperatorShiftLeftWithQulonglong(void* c_this, uint64 i);
	[LinkName("QTextStream_OperatorShiftLeftWithFloat")]
	public static extern QTextStream QTextStream_OperatorShiftLeftWithFloat(void* c_this, float f);
	[LinkName("QTextStream_OperatorShiftLeftWithDouble")]
	public static extern QTextStream QTextStream_OperatorShiftLeftWithDouble(void* c_this, double f);
	[LinkName("QTextStream_OperatorShiftLeftWithQString")]
	public static extern QTextStream QTextStream_OperatorShiftLeftWithQString(void* c_this, char8[] s);
	[LinkName("QTextStream_OperatorShiftLeftWithArray")]
	public static extern QTextStream QTextStream_OperatorShiftLeftWithArray(void* c_this, uint8[] array);
	[LinkName("QTextStream_OperatorShiftLeftWithChar")]
	public static extern QTextStream QTextStream_OperatorShiftLeftWithChar(void* c_this, char8[] c);
	[LinkName("QTextStream_OperatorShiftLeftWithPtr")]
	public static extern QTextStream QTextStream_OperatorShiftLeftWithPtr(void* c_this, void ptr);
	[LinkName("QTextStream_ReadLine1")]
	public static extern char8[] QTextStream_ReadLine1(void* c_this, int64 maxlen);
}