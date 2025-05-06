using System;
using System.Interop;
namespace Qt;

public struct QByteArrayView
{
	[LinkName("QByteArrayView_new")]
	public static extern void* QByteArrayView_new(char8[] other);
	[LinkName("QByteArrayView_new2")]
	public static extern void* QByteArrayView_new2(char8[] other);
	[LinkName("QByteArrayView_new3")]
	public static extern void* QByteArrayView_new3();
	[LinkName("QByteArrayView_new4")]
	public static extern void* QByteArrayView_new4(char8[] param1);
	[LinkName("QByteArrayView_ToByteArray")]
	public static extern uint8[] QByteArrayView_ToByteArray(void* c_this);
	[LinkName("QByteArrayView_Size")]
	public static extern int32 QByteArrayView_Size(void* c_this);
	[LinkName("QByteArrayView_Data")]
	public static extern char8[] QByteArrayView_Data(void* c_this);
	[LinkName("QByteArrayView_ConstData")]
	public static extern char8[] QByteArrayView_ConstData(void* c_this);
	[LinkName("QByteArrayView_OperatorSubscript")]
	public static extern int8 QByteArrayView_OperatorSubscript(void* c_this, int32 n);
	[LinkName("QByteArrayView_At")]
	public static extern int8 QByteArrayView_At(void* c_this, int32 n);
	[LinkName("QByteArrayView_First")]
	public static extern char8[] QByteArrayView_First(void* c_this, int32 n);
	[LinkName("QByteArrayView_Last")]
	public static extern char8[] QByteArrayView_Last(void* c_this, int32 n);
	[LinkName("QByteArrayView_Sliced")]
	public static extern char8[] QByteArrayView_Sliced(void* c_this, int32 pos);
	[LinkName("QByteArrayView_Sliced2")]
	public static extern char8[] QByteArrayView_Sliced2(void* c_this, int32 pos, int32 n);
	[LinkName("QByteArrayView_Chopped")]
	public static extern char8[] QByteArrayView_Chopped(void* c_this, int32 lenVal);
	[LinkName("QByteArrayView_Truncate")]
	public static extern void QByteArrayView_Truncate(void* c_this, int32 n);
	[LinkName("QByteArrayView_Chop")]
	public static extern void QByteArrayView_Chop(void* c_this, int32 n);
	[LinkName("QByteArrayView_Trimmed")]
	public static extern char8[] QByteArrayView_Trimmed(void* c_this);
	[LinkName("QByteArrayView_ToShort")]
	public static extern int16 QByteArrayView_ToShort(void* c_this);
	[LinkName("QByteArrayView_ToUShort")]
	public static extern uint16 QByteArrayView_ToUShort(void* c_this);
	[LinkName("QByteArrayView_ToInt")]
	public static extern int32 QByteArrayView_ToInt(void* c_this);
	[LinkName("QByteArrayView_ToUInt")]
	public static extern uint32 QByteArrayView_ToUInt(void* c_this);
	[LinkName("QByteArrayView_ToLong")]
	public static extern c_long QByteArrayView_ToLong(void* c_this);
	[LinkName("QByteArrayView_ToULong")]
	public static extern c_ulong QByteArrayView_ToULong(void* c_this);
	[LinkName("QByteArrayView_ToLongLong")]
	public static extern int64 QByteArrayView_ToLongLong(void* c_this);
	[LinkName("QByteArrayView_ToULongLong")]
	public static extern uint64 QByteArrayView_ToULongLong(void* c_this);
	[LinkName("QByteArrayView_ToFloat")]
	public static extern float QByteArrayView_ToFloat(void* c_this);
	[LinkName("QByteArrayView_ToDouble")]
	public static extern double QByteArrayView_ToDouble(void* c_this);
	[LinkName("QByteArrayView_StartsWith")]
	public static extern bool QByteArrayView_StartsWith(void* c_this, char8[] other);
	[LinkName("QByteArrayView_StartsWithWithChar")]
	public static extern bool QByteArrayView_StartsWithWithChar(void* c_this, int8 c);
	[LinkName("QByteArrayView_EndsWith")]
	public static extern bool QByteArrayView_EndsWith(void* c_this, char8[] other);
	[LinkName("QByteArrayView_EndsWithWithChar")]
	public static extern bool QByteArrayView_EndsWithWithChar(void* c_this, int8 c);
	[LinkName("QByteArrayView_IndexOf")]
	public static extern int32 QByteArrayView_IndexOf(void* c_this, char8[] a);
	[LinkName("QByteArrayView_IndexOfWithCh")]
	public static extern int32 QByteArrayView_IndexOfWithCh(void* c_this, int8 ch);
	[LinkName("QByteArrayView_Contains")]
	public static extern bool QByteArrayView_Contains(void* c_this, char8[] a);
	[LinkName("QByteArrayView_ContainsWithChar")]
	public static extern bool QByteArrayView_ContainsWithChar(void* c_this, int8 c);
	[LinkName("QByteArrayView_LastIndexOf")]
	public static extern int32 QByteArrayView_LastIndexOf(void* c_this, char8[] a);
	[LinkName("QByteArrayView_LastIndexOf2")]
	public static extern int32 QByteArrayView_LastIndexOf2(void* c_this, char8[] a, int32 from);
	[LinkName("QByteArrayView_LastIndexOfWithCh")]
	public static extern int32 QByteArrayView_LastIndexOfWithCh(void* c_this, int8 ch);
	[LinkName("QByteArrayView_Count")]
	public static extern int32 QByteArrayView_Count(void* c_this, char8[] a);
	[LinkName("QByteArrayView_CountWithCh")]
	public static extern int32 QByteArrayView_CountWithCh(void* c_this, int8 ch);
	[LinkName("QByteArrayView_Compare")]
	public static extern int32 QByteArrayView_Compare(void* c_this, char8[] a);
	[LinkName("QByteArrayView_IsValidUtf8")]
	public static extern bool QByteArrayView_IsValidUtf8(void* c_this);
	[LinkName("QByteArrayView_Begin")]
	public static extern char8[] QByteArrayView_Begin(void* c_this);
	[LinkName("QByteArrayView_End")]
	public static extern char8[] QByteArrayView_End(void* c_this);
	[LinkName("QByteArrayView_Cbegin")]
	public static extern char8[] QByteArrayView_Cbegin(void* c_this);
	[LinkName("QByteArrayView_Cend")]
	public static extern char8[] QByteArrayView_Cend(void* c_this);
	[LinkName("QByteArrayView_Empty")]
	public static extern bool QByteArrayView_Empty(void* c_this);
	[LinkName("QByteArrayView_Front")]
	public static extern int8 QByteArrayView_Front(void* c_this);
	[LinkName("QByteArrayView_Back")]
	public static extern int8 QByteArrayView_Back(void* c_this);
	[LinkName("QByteArrayView_IsNull")]
	public static extern bool QByteArrayView_IsNull(void* c_this);
	[LinkName("QByteArrayView_IsEmpty")]
	public static extern bool QByteArrayView_IsEmpty(void* c_this);
	[LinkName("QByteArrayView_Length")]
	public static extern int32 QByteArrayView_Length(void* c_this);
	[LinkName("QByteArrayView_First2")]
	public static extern int8 QByteArrayView_First2(void* c_this);
	[LinkName("QByteArrayView_Last2")]
	public static extern int8 QByteArrayView_Last2(void* c_this);
	[LinkName("QByteArrayView_ToShort1")]
	public static extern int16 QByteArrayView_ToShort1(void* c_this, bool ok);
	[LinkName("QByteArrayView_ToShort2")]
	public static extern int16 QByteArrayView_ToShort2(void* c_this, bool ok, int32 _base);
	[LinkName("QByteArrayView_ToUShort1")]
	public static extern uint16 QByteArrayView_ToUShort1(void* c_this, bool ok);
	[LinkName("QByteArrayView_ToUShort2")]
	public static extern uint16 QByteArrayView_ToUShort2(void* c_this, bool ok, int32 _base);
	[LinkName("QByteArrayView_ToInt1")]
	public static extern int32 QByteArrayView_ToInt1(void* c_this, bool ok);
	[LinkName("QByteArrayView_ToInt2")]
	public static extern int32 QByteArrayView_ToInt2(void* c_this, bool ok, int32 _base);
	[LinkName("QByteArrayView_ToUInt1")]
	public static extern uint32 QByteArrayView_ToUInt1(void* c_this, bool ok);
	[LinkName("QByteArrayView_ToUInt2")]
	public static extern uint32 QByteArrayView_ToUInt2(void* c_this, bool ok, int32 _base);
	[LinkName("QByteArrayView_ToLong1")]
	public static extern c_long QByteArrayView_ToLong1(void* c_this, bool ok);
	[LinkName("QByteArrayView_ToLong2")]
	public static extern c_long QByteArrayView_ToLong2(void* c_this, bool ok, int32 _base);
	[LinkName("QByteArrayView_ToULong1")]
	public static extern c_ulong QByteArrayView_ToULong1(void* c_this, bool ok);
	[LinkName("QByteArrayView_ToULong2")]
	public static extern c_ulong QByteArrayView_ToULong2(void* c_this, bool ok, int32 _base);
	[LinkName("QByteArrayView_ToLongLong1")]
	public static extern int64 QByteArrayView_ToLongLong1(void* c_this, bool ok);
	[LinkName("QByteArrayView_ToLongLong2")]
	public static extern int64 QByteArrayView_ToLongLong2(void* c_this, bool ok, int32 _base);
	[LinkName("QByteArrayView_ToULongLong1")]
	public static extern uint64 QByteArrayView_ToULongLong1(void* c_this, bool ok);
	[LinkName("QByteArrayView_ToULongLong2")]
	public static extern uint64 QByteArrayView_ToULongLong2(void* c_this, bool ok, int32 _base);
	[LinkName("QByteArrayView_ToFloat1")]
	public static extern float QByteArrayView_ToFloat1(void* c_this, bool ok);
	[LinkName("QByteArrayView_ToDouble1")]
	public static extern double QByteArrayView_ToDouble1(void* c_this, bool ok);
	[LinkName("QByteArrayView_IndexOf2")]
	public static extern int32 QByteArrayView_IndexOf2(void* c_this, char8[] a, int32 from);
	[LinkName("QByteArrayView_IndexOf22")]
	public static extern int32 QByteArrayView_IndexOf22(void* c_this, int8 ch, int32 from);
	[LinkName("QByteArrayView_LastIndexOf22")]
	public static extern int32 QByteArrayView_LastIndexOf22(void* c_this, int8 ch, int32 from);
	[LinkName("QByteArrayView_Compare2")]
	public static extern int32 QByteArrayView_Compare2(void* c_this, char8[] a, int64 cs);
}