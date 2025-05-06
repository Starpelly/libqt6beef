using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QDebug__VerbosityLevel
{
	MinimumVerbosity = 0,
	DefaultVerbosity = 2,
	MaximumVerbosity = 7,
}
public struct QDebug
{
	[LinkName("QDebug_new")]
	public static extern void* QDebug_new(QIODevice device);
	[LinkName("QDebug_new2")]
	public static extern void* QDebug_new2(QDebug o);
	[LinkName("QDebug_OperatorAssign")]
	public static extern void QDebug_OperatorAssign(void* c_this, QDebug other);
	[LinkName("QDebug_Swap")]
	public static extern void QDebug_Swap(void* c_this, QDebug other);
	[LinkName("QDebug_ResetFormat")]
	public static extern QDebug QDebug_ResetFormat(void* c_this);
	[LinkName("QDebug_Space")]
	public static extern QDebug QDebug_Space(void* c_this);
	[LinkName("QDebug_Nospace")]
	public static extern QDebug QDebug_Nospace(void* c_this);
	[LinkName("QDebug_MaybeSpace")]
	public static extern QDebug QDebug_MaybeSpace(void* c_this);
	[LinkName("QDebug_Verbosity")]
	public static extern QDebug QDebug_Verbosity(void* c_this, int32 verbosityLevel);
	[LinkName("QDebug_Verbosity2")]
	public static extern int32 QDebug_Verbosity2(void* c_this);
	[LinkName("QDebug_SetVerbosity")]
	public static extern void QDebug_SetVerbosity(void* c_this, int32 verbosityLevel);
	[LinkName("QDebug_AutoInsertSpaces")]
	public static extern bool QDebug_AutoInsertSpaces(void* c_this);
	[LinkName("QDebug_SetAutoInsertSpaces")]
	public static extern void QDebug_SetAutoInsertSpaces(void* c_this, bool b);
	[LinkName("QDebug_Quote")]
	public static extern QDebug QDebug_Quote(void* c_this);
	[LinkName("QDebug_Noquote")]
	public static extern QDebug QDebug_Noquote(void* c_this);
	[LinkName("QDebug_MaybeQuote")]
	public static extern QDebug QDebug_MaybeQuote(void* c_this);
	[LinkName("QDebug_OperatorShiftLeft")]
	public static extern QDebug QDebug_OperatorShiftLeft(void* c_this, QChar t);
	[LinkName("QDebug_OperatorShiftLeftWithBool")]
	public static extern QDebug QDebug_OperatorShiftLeftWithBool(void* c_this, bool t);
	[LinkName("QDebug_OperatorShiftLeftWithChar")]
	public static extern QDebug QDebug_OperatorShiftLeftWithChar(void* c_this, int8 t);
	[LinkName("QDebug_OperatorShiftLeftWithShort")]
	public static extern QDebug QDebug_OperatorShiftLeftWithShort(void* c_this, int16 t);
	[LinkName("QDebug_OperatorShiftLeftWithUnsignedshort")]
	public static extern QDebug QDebug_OperatorShiftLeftWithUnsignedshort(void* c_this, uint16 t);
	[LinkName("QDebug_OperatorShiftLeftWithInt")]
	public static extern QDebug QDebug_OperatorShiftLeftWithInt(void* c_this, int32 t);
	[LinkName("QDebug_OperatorShiftLeftWithUnsignedint")]
	public static extern QDebug QDebug_OperatorShiftLeftWithUnsignedint(void* c_this, uint32 t);
	[LinkName("QDebug_OperatorShiftLeftWithLong")]
	public static extern QDebug QDebug_OperatorShiftLeftWithLong(void* c_this, c_long t);
	[LinkName("QDebug_OperatorShiftLeftWithUnsignedlong")]
	public static extern QDebug QDebug_OperatorShiftLeftWithUnsignedlong(void* c_this, c_ulong t);
	[LinkName("QDebug_OperatorShiftLeftWithQint64")]
	public static extern QDebug QDebug_OperatorShiftLeftWithQint64(void* c_this, int64 t);
	[LinkName("QDebug_OperatorShiftLeftWithQuint64")]
	public static extern QDebug QDebug_OperatorShiftLeftWithQuint64(void* c_this, uint64 t);
	[LinkName("QDebug_OperatorShiftLeftWithFloat")]
	public static extern QDebug QDebug_OperatorShiftLeftWithFloat(void* c_this, float t);
	[LinkName("QDebug_OperatorShiftLeftWithDouble")]
	public static extern QDebug QDebug_OperatorShiftLeftWithDouble(void* c_this, double t);
	[LinkName("QDebug_OperatorShiftLeft2")]
	public static extern QDebug QDebug_OperatorShiftLeft2(void* c_this, char8[] t);
	[LinkName("QDebug_OperatorShiftLeftWithQString")]
	public static extern QDebug QDebug_OperatorShiftLeftWithQString(void* c_this, char8[] t);
	[LinkName("QDebug_OperatorShiftLeftWithQByteArray")]
	public static extern QDebug QDebug_OperatorShiftLeftWithQByteArray(void* c_this, uint8[] t);
	[LinkName("QDebug_OperatorShiftLeftWithQByteArrayView")]
	public static extern QDebug QDebug_OperatorShiftLeftWithQByteArrayView(void* c_this, char8[] t);
	[LinkName("QDebug_OperatorShiftLeftWithVoid")]
	public static extern QDebug QDebug_OperatorShiftLeftWithVoid(void* c_this, void t);
	[LinkName("QDebug_MaybeQuote1")]
	public static extern QDebug QDebug_MaybeQuote1(void* c_this, int8 c);
}
public struct QDebugStateSaver
{
	[LinkName("QDebugStateSaver_new")]
	public static extern void* QDebugStateSaver_new(QDebug dbg);
}
public struct QNoDebug
{
	[LinkName("QNoDebug_new")]
	public static extern void* QNoDebug_new(QNoDebug other);
	[LinkName("QNoDebug_new2")]
	public static extern void* QNoDebug_new2(QNoDebug other);
	[LinkName("QNoDebug_Space")]
	public static extern QNoDebug QNoDebug_Space(void* c_this);
	[LinkName("QNoDebug_Nospace")]
	public static extern QNoDebug QNoDebug_Nospace(void* c_this);
	[LinkName("QNoDebug_MaybeSpace")]
	public static extern QNoDebug QNoDebug_MaybeSpace(void* c_this);
	[LinkName("QNoDebug_Quote")]
	public static extern QNoDebug QNoDebug_Quote(void* c_this);
	[LinkName("QNoDebug_Noquote")]
	public static extern QNoDebug QNoDebug_Noquote(void* c_this);
	[LinkName("QNoDebug_MaybeQuote")]
	public static extern QNoDebug QNoDebug_MaybeQuote(void* c_this);
	[LinkName("QNoDebug_Verbosity")]
	public static extern QNoDebug QNoDebug_Verbosity(void* c_this, int32 param1);
	[LinkName("QNoDebug_MaybeQuote1")]
	public static extern QNoDebug QNoDebug_MaybeQuote1(void* c_this, int8 param1);
}