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
public class QTextStream
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QTextStream_new();
	}
	
	public ~this()
	{
		CQt.QTextStream_Delete(this.nativePtr);
	}
	
	public void SetEncoding(int64 encoding)
	{
		CQt.QTextStream_SetEncoding(this.nativePtr, encoding);
	}
	
	public int64 Encoding()
	{
		return CQt.QTextStream_Encoding(this.nativePtr);
	}
	
	public void SetAutoDetectUnicode(bool enabled)
	{
		CQt.QTextStream_SetAutoDetectUnicode(this.nativePtr, enabled);
	}
	
	public bool AutoDetectUnicode()
	{
		return CQt.QTextStream_AutoDetectUnicode(this.nativePtr);
	}
	
	public void SetGenerateByteOrderMark(bool generate)
	{
		CQt.QTextStream_SetGenerateByteOrderMark(this.nativePtr, generate);
	}
	
	public bool GenerateByteOrderMark()
	{
		return CQt.QTextStream_GenerateByteOrderMark(this.nativePtr);
	}
	
	public void SetLocale(void* locale)
	{
		CQt.QTextStream_SetLocale(this.nativePtr, locale);
	}
	
	public void Locale()
	{
		CQt.QTextStream_Locale(this.nativePtr);
	}
	
	public void SetDevice(void* device)
	{
		CQt.QTextStream_SetDevice(this.nativePtr, device);
	}
	
	public void* Device()
	{
		return CQt.QTextStream_Device(this.nativePtr);
	}
	
	public libqt_string String()
	{
		return CQt.QTextStream_String(this.nativePtr);
	}
	
	public int64 Status()
	{
		return CQt.QTextStream_Status(this.nativePtr);
	}
	
	public void SetStatus(int64 status)
	{
		CQt.QTextStream_SetStatus(this.nativePtr, status);
	}
	
	public void ResetStatus()
	{
		CQt.QTextStream_ResetStatus(this.nativePtr);
	}
	
	public bool AtEnd()
	{
		return CQt.QTextStream_AtEnd(this.nativePtr);
	}
	
	public void Reset()
	{
		CQt.QTextStream_Reset(this.nativePtr);
	}
	
	public void Flush()
	{
		CQt.QTextStream_Flush(this.nativePtr);
	}
	
	public bool Seek(int64 pos)
	{
		return CQt.QTextStream_Seek(this.nativePtr, pos);
	}
	
	public int64 Pos()
	{
		return CQt.QTextStream_Pos(this.nativePtr);
	}
	
	public void SkipWhiteSpace()
	{
		CQt.QTextStream_SkipWhiteSpace(this.nativePtr);
	}
	
	public libqt_string ReadLine()
	{
		return CQt.QTextStream_ReadLine(this.nativePtr);
	}
	
	public libqt_string ReadAll()
	{
		return CQt.QTextStream_ReadAll(this.nativePtr);
	}
	
	public libqt_string Read(int64 maxlen)
	{
		return CQt.QTextStream_Read(this.nativePtr, maxlen);
	}
	
	public void SetFieldAlignment(int64 alignment)
	{
		CQt.QTextStream_SetFieldAlignment(this.nativePtr, alignment);
	}
	
	public int64 FieldAlignment()
	{
		return CQt.QTextStream_FieldAlignment(this.nativePtr);
	}
	
	public void SetPadChar(void ch)
	{
		CQt.QTextStream_SetPadChar(this.nativePtr, ch);
	}
	
	public void PadChar()
	{
		CQt.QTextStream_PadChar(this.nativePtr);
	}
	
	public void SetFieldWidth(int32 width)
	{
		CQt.QTextStream_SetFieldWidth(this.nativePtr, width);
	}
	
	public int32 FieldWidth()
	{
		return CQt.QTextStream_FieldWidth(this.nativePtr);
	}
	
	public void SetNumberFlags(int64 flags)
	{
		CQt.QTextStream_SetNumberFlags(this.nativePtr, flags);
	}
	
	public int64 NumberFlags()
	{
		return CQt.QTextStream_NumberFlags(this.nativePtr);
	}
	
	public void SetIntegerBase(int32 _base)
	{
		CQt.QTextStream_SetIntegerBase(this.nativePtr, _base);
	}
	
	public int32 IntegerBase()
	{
		return CQt.QTextStream_IntegerBase(this.nativePtr);
	}
	
	public void SetRealNumberNotation(int64 notation)
	{
		CQt.QTextStream_SetRealNumberNotation(this.nativePtr, notation);
	}
	
	public int64 RealNumberNotation()
	{
		return CQt.QTextStream_RealNumberNotation(this.nativePtr);
	}
	
	public void SetRealNumberPrecision(int32 precision)
	{
		CQt.QTextStream_SetRealNumberPrecision(this.nativePtr, precision);
	}
	
	public int32 RealNumberPrecision()
	{
		return CQt.QTextStream_RealNumberPrecision(this.nativePtr);
	}
	
	public void* OperatorShiftRight(void* ch)
	{
		return CQt.QTextStream_OperatorShiftRight(this.nativePtr, ch);
	}
	
	public void* OperatorShiftRightWithCh(int8* ch)
	{
		return CQt.QTextStream_OperatorShiftRightWithCh(this.nativePtr, ch);
	}
	
	public void* OperatorShiftRightWithShort(int16* i)
	{
		return CQt.QTextStream_OperatorShiftRightWithShort(this.nativePtr, i);
	}
	
	public void* OperatorShiftRightWithUnsignedshort(uint16* i)
	{
		return CQt.QTextStream_OperatorShiftRightWithUnsignedshort(this.nativePtr, i);
	}
	
	public void* OperatorShiftRightWithInt(int32* i)
	{
		return CQt.QTextStream_OperatorShiftRightWithInt(this.nativePtr, i);
	}
	
	public void* OperatorShiftRightWithUnsignedint(uint32* i)
	{
		return CQt.QTextStream_OperatorShiftRightWithUnsignedint(this.nativePtr, i);
	}
	
	public void* OperatorShiftRightWithLong(c_long* i)
	{
		return CQt.QTextStream_OperatorShiftRightWithLong(this.nativePtr, i);
	}
	
	public void* OperatorShiftRightWithUnsignedlong(c_ulong* i)
	{
		return CQt.QTextStream_OperatorShiftRightWithUnsignedlong(this.nativePtr, i);
	}
	
	public void* OperatorShiftRightWithQlonglong(int64* i)
	{
		return CQt.QTextStream_OperatorShiftRightWithQlonglong(this.nativePtr, i);
	}
	
	public void* OperatorShiftRightWithQulonglong(uint64* i)
	{
		return CQt.QTextStream_OperatorShiftRightWithQulonglong(this.nativePtr, i);
	}
	
	public void* OperatorShiftRightWithFloat(float* f)
	{
		return CQt.QTextStream_OperatorShiftRightWithFloat(this.nativePtr, f);
	}
	
	public void* OperatorShiftRightWithDouble(double* f)
	{
		return CQt.QTextStream_OperatorShiftRightWithDouble(this.nativePtr, f);
	}
	
	public void* OperatorShiftRightWithQString(libqt_string s)
	{
		return CQt.QTextStream_OperatorShiftRightWithQString(this.nativePtr, s);
	}
	
	public void* OperatorShiftRightWithArray(libqt_string array)
	{
		return CQt.QTextStream_OperatorShiftRightWithArray(this.nativePtr, array);
	}
	
	public void* OperatorShiftRightWithChar(char8[] c)
	{
		return CQt.QTextStream_OperatorShiftRightWithChar(this.nativePtr, c);
	}
	
	public void* OperatorShiftLeft(void ch)
	{
		return CQt.QTextStream_OperatorShiftLeft(this.nativePtr, ch);
	}
	
	public void* OperatorShiftLeftWithCh(int8 ch)
	{
		return CQt.QTextStream_OperatorShiftLeftWithCh(this.nativePtr, ch);
	}
	
	public void* OperatorShiftLeftWithShort(int16 i)
	{
		return CQt.QTextStream_OperatorShiftLeftWithShort(this.nativePtr, i);
	}
	
	public void* OperatorShiftLeftWithUnsignedshort(uint16 i)
	{
		return CQt.QTextStream_OperatorShiftLeftWithUnsignedshort(this.nativePtr, i);
	}
	
	public void* OperatorShiftLeftWithInt(int32 i)
	{
		return CQt.QTextStream_OperatorShiftLeftWithInt(this.nativePtr, i);
	}
	
	public void* OperatorShiftLeftWithUnsignedint(uint32 i)
	{
		return CQt.QTextStream_OperatorShiftLeftWithUnsignedint(this.nativePtr, i);
	}
	
	public void* OperatorShiftLeftWithLong(c_long i)
	{
		return CQt.QTextStream_OperatorShiftLeftWithLong(this.nativePtr, i);
	}
	
	public void* OperatorShiftLeftWithUnsignedlong(c_ulong i)
	{
		return CQt.QTextStream_OperatorShiftLeftWithUnsignedlong(this.nativePtr, i);
	}
	
	public void* OperatorShiftLeftWithQlonglong(int64 i)
	{
		return CQt.QTextStream_OperatorShiftLeftWithQlonglong(this.nativePtr, i);
	}
	
	public void* OperatorShiftLeftWithQulonglong(uint64 i)
	{
		return CQt.QTextStream_OperatorShiftLeftWithQulonglong(this.nativePtr, i);
	}
	
	public void* OperatorShiftLeftWithFloat(float f)
	{
		return CQt.QTextStream_OperatorShiftLeftWithFloat(this.nativePtr, f);
	}
	
	public void* OperatorShiftLeftWithDouble(double f)
	{
		return CQt.QTextStream_OperatorShiftLeftWithDouble(this.nativePtr, f);
	}
	
	public void* OperatorShiftLeftWithQString(libqt_string s)
	{
		return CQt.QTextStream_OperatorShiftLeftWithQString(this.nativePtr, s);
	}
	
	public void* OperatorShiftLeftWithArray(libqt_string array)
	{
		return CQt.QTextStream_OperatorShiftLeftWithArray(this.nativePtr, array);
	}
	
	public void* OperatorShiftLeftWithChar(char8[] c)
	{
		return CQt.QTextStream_OperatorShiftLeftWithChar(this.nativePtr, c);
	}
	
	public void* OperatorShiftLeftWithPtr(void* ptr)
	{
		return CQt.QTextStream_OperatorShiftLeftWithPtr(this.nativePtr, ptr);
	}
	
	public libqt_string ReadLine1(int64 maxlen)
	{
		return CQt.QTextStream_ReadLine1(this.nativePtr, maxlen);
	}
	
}
extension CQt
{
	[LinkName("QTextStream_new")]
	public static extern void* QTextStream_new();
	[LinkName("QTextStream_new2")]
	public static extern void* QTextStream_new2(void* device);
	[LinkName("QTextStream_new3")]
	public static extern void* QTextStream_new3(libqt_string array);
	[LinkName("QTextStream_new4")]
	public static extern void* QTextStream_new4(libqt_string array, int64 openMode);
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
	public static extern void QTextStream_SetLocale(void* c_this, void* locale);
	[LinkName("QTextStream_Locale")]
	public static extern void QTextStream_Locale(void* c_this);
	[LinkName("QTextStream_SetDevice")]
	public static extern void QTextStream_SetDevice(void* c_this, void* device);
	[LinkName("QTextStream_Device")]
	public static extern void* QTextStream_Device(void* c_this);
	[LinkName("QTextStream_String")]
	public static extern libqt_string QTextStream_String(void* c_this);
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
	public static extern libqt_string QTextStream_ReadLine(void* c_this);
	[LinkName("QTextStream_ReadAll")]
	public static extern libqt_string QTextStream_ReadAll(void* c_this);
	[LinkName("QTextStream_Read")]
	public static extern libqt_string QTextStream_Read(void* c_this, int64 maxlen);
	[LinkName("QTextStream_SetFieldAlignment")]
	public static extern void QTextStream_SetFieldAlignment(void* c_this, int64 alignment);
	[LinkName("QTextStream_FieldAlignment")]
	public static extern int64 QTextStream_FieldAlignment(void* c_this);
	[LinkName("QTextStream_SetPadChar")]
	public static extern void QTextStream_SetPadChar(void* c_this, void ch);
	[LinkName("QTextStream_PadChar")]
	public static extern void QTextStream_PadChar(void* c_this);
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
	public static extern void* QTextStream_OperatorShiftRight(void* c_this, void* ch);
	[LinkName("QTextStream_OperatorShiftRightWithCh")]
	public static extern void* QTextStream_OperatorShiftRightWithCh(void* c_this, int8* ch);
	[LinkName("QTextStream_OperatorShiftRightWithShort")]
	public static extern void* QTextStream_OperatorShiftRightWithShort(void* c_this, int16* i);
	[LinkName("QTextStream_OperatorShiftRightWithUnsignedshort")]
	public static extern void* QTextStream_OperatorShiftRightWithUnsignedshort(void* c_this, uint16* i);
	[LinkName("QTextStream_OperatorShiftRightWithInt")]
	public static extern void* QTextStream_OperatorShiftRightWithInt(void* c_this, int32* i);
	[LinkName("QTextStream_OperatorShiftRightWithUnsignedint")]
	public static extern void* QTextStream_OperatorShiftRightWithUnsignedint(void* c_this, uint32* i);
	[LinkName("QTextStream_OperatorShiftRightWithLong")]
	public static extern void* QTextStream_OperatorShiftRightWithLong(void* c_this, c_long* i);
	[LinkName("QTextStream_OperatorShiftRightWithUnsignedlong")]
	public static extern void* QTextStream_OperatorShiftRightWithUnsignedlong(void* c_this, c_ulong* i);
	[LinkName("QTextStream_OperatorShiftRightWithQlonglong")]
	public static extern void* QTextStream_OperatorShiftRightWithQlonglong(void* c_this, int64* i);
	[LinkName("QTextStream_OperatorShiftRightWithQulonglong")]
	public static extern void* QTextStream_OperatorShiftRightWithQulonglong(void* c_this, uint64* i);
	[LinkName("QTextStream_OperatorShiftRightWithFloat")]
	public static extern void* QTextStream_OperatorShiftRightWithFloat(void* c_this, float* f);
	[LinkName("QTextStream_OperatorShiftRightWithDouble")]
	public static extern void* QTextStream_OperatorShiftRightWithDouble(void* c_this, double* f);
	[LinkName("QTextStream_OperatorShiftRightWithQString")]
	public static extern void* QTextStream_OperatorShiftRightWithQString(void* c_this, libqt_string s);
	[LinkName("QTextStream_OperatorShiftRightWithArray")]
	public static extern void* QTextStream_OperatorShiftRightWithArray(void* c_this, libqt_string array);
	[LinkName("QTextStream_OperatorShiftRightWithChar")]
	public static extern void* QTextStream_OperatorShiftRightWithChar(void* c_this, char8[] c);
	[LinkName("QTextStream_OperatorShiftLeft")]
	public static extern void* QTextStream_OperatorShiftLeft(void* c_this, void ch);
	[LinkName("QTextStream_OperatorShiftLeftWithCh")]
	public static extern void* QTextStream_OperatorShiftLeftWithCh(void* c_this, int8 ch);
	[LinkName("QTextStream_OperatorShiftLeftWithShort")]
	public static extern void* QTextStream_OperatorShiftLeftWithShort(void* c_this, int16 i);
	[LinkName("QTextStream_OperatorShiftLeftWithUnsignedshort")]
	public static extern void* QTextStream_OperatorShiftLeftWithUnsignedshort(void* c_this, uint16 i);
	[LinkName("QTextStream_OperatorShiftLeftWithInt")]
	public static extern void* QTextStream_OperatorShiftLeftWithInt(void* c_this, int32 i);
	[LinkName("QTextStream_OperatorShiftLeftWithUnsignedint")]
	public static extern void* QTextStream_OperatorShiftLeftWithUnsignedint(void* c_this, uint32 i);
	[LinkName("QTextStream_OperatorShiftLeftWithLong")]
	public static extern void* QTextStream_OperatorShiftLeftWithLong(void* c_this, c_long i);
	[LinkName("QTextStream_OperatorShiftLeftWithUnsignedlong")]
	public static extern void* QTextStream_OperatorShiftLeftWithUnsignedlong(void* c_this, c_ulong i);
	[LinkName("QTextStream_OperatorShiftLeftWithQlonglong")]
	public static extern void* QTextStream_OperatorShiftLeftWithQlonglong(void* c_this, int64 i);
	[LinkName("QTextStream_OperatorShiftLeftWithQulonglong")]
	public static extern void* QTextStream_OperatorShiftLeftWithQulonglong(void* c_this, uint64 i);
	[LinkName("QTextStream_OperatorShiftLeftWithFloat")]
	public static extern void* QTextStream_OperatorShiftLeftWithFloat(void* c_this, float f);
	[LinkName("QTextStream_OperatorShiftLeftWithDouble")]
	public static extern void* QTextStream_OperatorShiftLeftWithDouble(void* c_this, double f);
	[LinkName("QTextStream_OperatorShiftLeftWithQString")]
	public static extern void* QTextStream_OperatorShiftLeftWithQString(void* c_this, libqt_string s);
	[LinkName("QTextStream_OperatorShiftLeftWithArray")]
	public static extern void* QTextStream_OperatorShiftLeftWithArray(void* c_this, libqt_string array);
	[LinkName("QTextStream_OperatorShiftLeftWithChar")]
	public static extern void* QTextStream_OperatorShiftLeftWithChar(void* c_this, char8[] c);
	[LinkName("QTextStream_OperatorShiftLeftWithPtr")]
	public static extern void* QTextStream_OperatorShiftLeftWithPtr(void* c_this, void* ptr);
	[LinkName("QTextStream_ReadLine1")]
	public static extern libqt_string QTextStream_ReadLine1(void* c_this, int64 maxlen);
	/// Delete this object from C++ memory
	[LinkName("QTextStream_Delete")]
	public static extern void QTextStream_Delete(void* self);
}