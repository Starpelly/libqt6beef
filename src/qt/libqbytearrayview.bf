using System;
using System.Interop;
namespace Qt;

public struct QByteArrayView
{
	[LinkName("QByteArrayView_new")]
	public static extern QByteArrayView* QByteArrayView_new(QByteArrayView* other);
	[LinkName("QByteArrayView_new2")]
	public static extern QByteArrayView* QByteArrayView_new2(QByteArrayView* other);
	[LinkName("QByteArrayView_new3")]
	public static extern QByteArrayView* QByteArrayView_new3();
	[LinkName("QByteArrayView_new4")]
	public static extern QByteArrayView* QByteArrayView_new4(QByteArrayView* param1);
	[LinkName("QByteArrayView_ToByteArray")]
	public static extern libqt_string QByteArrayView_ToByteArray(Self* c_this);
	[LinkName("QByteArrayView_Size")]
	public static extern int32 QByteArrayView_Size(Self* c_this);
	[LinkName("QByteArrayView_Data")]
	public static extern char8[] QByteArrayView_Data(Self* c_this);
	[LinkName("QByteArrayView_ConstData")]
	public static extern char8[] QByteArrayView_ConstData(Self* c_this);
	[LinkName("QByteArrayView_OperatorSubscript")]
	public static extern int8 QByteArrayView_OperatorSubscript(Self* c_this, int32 n);
	[LinkName("QByteArrayView_At")]
	public static extern int8 QByteArrayView_At(Self* c_this, int32 n);
	[LinkName("QByteArrayView_First")]
	public static extern QByteArrayView QByteArrayView_First(Self* c_this, int32 n);
	[LinkName("QByteArrayView_Last")]
	public static extern QByteArrayView QByteArrayView_Last(Self* c_this, int32 n);
	[LinkName("QByteArrayView_Sliced")]
	public static extern QByteArrayView QByteArrayView_Sliced(Self* c_this, int32 pos);
	[LinkName("QByteArrayView_Sliced2")]
	public static extern QByteArrayView QByteArrayView_Sliced2(Self* c_this, int32 pos, int32 n);
	[LinkName("QByteArrayView_Chopped")]
	public static extern QByteArrayView QByteArrayView_Chopped(Self* c_this, int32 lenVal);
	[LinkName("QByteArrayView_Truncate")]
	public static extern void QByteArrayView_Truncate(Self* c_this, int32 n);
	[LinkName("QByteArrayView_Chop")]
	public static extern void QByteArrayView_Chop(Self* c_this, int32 n);
	[LinkName("QByteArrayView_Trimmed")]
	public static extern QByteArrayView QByteArrayView_Trimmed(Self* c_this);
	[LinkName("QByteArrayView_ToShort")]
	public static extern int16 QByteArrayView_ToShort(Self* c_this);
	[LinkName("QByteArrayView_ToUShort")]
	public static extern uint16 QByteArrayView_ToUShort(Self* c_this);
	[LinkName("QByteArrayView_ToInt")]
	public static extern int32 QByteArrayView_ToInt(Self* c_this);
	[LinkName("QByteArrayView_ToUInt")]
	public static extern uint32 QByteArrayView_ToUInt(Self* c_this);
	[LinkName("QByteArrayView_ToLong")]
	public static extern c_long QByteArrayView_ToLong(Self* c_this);
	[LinkName("QByteArrayView_ToULong")]
	public static extern c_ulong QByteArrayView_ToULong(Self* c_this);
	[LinkName("QByteArrayView_ToLongLong")]
	public static extern int64 QByteArrayView_ToLongLong(Self* c_this);
	[LinkName("QByteArrayView_ToULongLong")]
	public static extern uint64 QByteArrayView_ToULongLong(Self* c_this);
	[LinkName("QByteArrayView_ToFloat")]
	public static extern float QByteArrayView_ToFloat(Self* c_this);
	[LinkName("QByteArrayView_ToDouble")]
	public static extern double QByteArrayView_ToDouble(Self* c_this);
	[LinkName("QByteArrayView_StartsWith")]
	public static extern bool QByteArrayView_StartsWith(Self* c_this, QByteArrayView other);
	[LinkName("QByteArrayView_StartsWithWithChar")]
	public static extern bool QByteArrayView_StartsWithWithChar(Self* c_this, int8 c);
	[LinkName("QByteArrayView_EndsWith")]
	public static extern bool QByteArrayView_EndsWith(Self* c_this, QByteArrayView other);
	[LinkName("QByteArrayView_EndsWithWithChar")]
	public static extern bool QByteArrayView_EndsWithWithChar(Self* c_this, int8 c);
	[LinkName("QByteArrayView_IndexOf")]
	public static extern int32 QByteArrayView_IndexOf(Self* c_this, QByteArrayView a);
	[LinkName("QByteArrayView_IndexOfWithCh")]
	public static extern int32 QByteArrayView_IndexOfWithCh(Self* c_this, int8 ch);
	[LinkName("QByteArrayView_Contains")]
	public static extern bool QByteArrayView_Contains(Self* c_this, QByteArrayView a);
	[LinkName("QByteArrayView_ContainsWithChar")]
	public static extern bool QByteArrayView_ContainsWithChar(Self* c_this, int8 c);
	[LinkName("QByteArrayView_LastIndexOf")]
	public static extern int32 QByteArrayView_LastIndexOf(Self* c_this, QByteArrayView a);
	[LinkName("QByteArrayView_LastIndexOf2")]
	public static extern int32 QByteArrayView_LastIndexOf2(Self* c_this, QByteArrayView a, int32 from);
	[LinkName("QByteArrayView_LastIndexOfWithCh")]
	public static extern int32 QByteArrayView_LastIndexOfWithCh(Self* c_this, int8 ch);
	[LinkName("QByteArrayView_Count")]
	public static extern int32 QByteArrayView_Count(Self* c_this, QByteArrayView a);
	[LinkName("QByteArrayView_CountWithCh")]
	public static extern int32 QByteArrayView_CountWithCh(Self* c_this, int8 ch);
	[LinkName("QByteArrayView_Compare")]
	public static extern int32 QByteArrayView_Compare(Self* c_this, QByteArrayView a);
	[LinkName("QByteArrayView_IsValidUtf8")]
	public static extern bool QByteArrayView_IsValidUtf8(Self* c_this);
	[LinkName("QByteArrayView_Begin")]
	public static extern char8[] QByteArrayView_Begin(Self* c_this);
	[LinkName("QByteArrayView_End")]
	public static extern char8[] QByteArrayView_End(Self* c_this);
	[LinkName("QByteArrayView_Cbegin")]
	public static extern char8[] QByteArrayView_Cbegin(Self* c_this);
	[LinkName("QByteArrayView_Cend")]
	public static extern char8[] QByteArrayView_Cend(Self* c_this);
	[LinkName("QByteArrayView_Empty")]
	public static extern bool QByteArrayView_Empty(Self* c_this);
	[LinkName("QByteArrayView_Front")]
	public static extern int8 QByteArrayView_Front(Self* c_this);
	[LinkName("QByteArrayView_Back")]
	public static extern int8 QByteArrayView_Back(Self* c_this);
	[LinkName("QByteArrayView_IsNull")]
	public static extern bool QByteArrayView_IsNull(Self* c_this);
	[LinkName("QByteArrayView_IsEmpty")]
	public static extern bool QByteArrayView_IsEmpty(Self* c_this);
	[LinkName("QByteArrayView_Length")]
	public static extern int32 QByteArrayView_Length(Self* c_this);
	[LinkName("QByteArrayView_First2")]
	public static extern int8 QByteArrayView_First2(Self* c_this);
	[LinkName("QByteArrayView_Last2")]
	public static extern int8 QByteArrayView_Last2(Self* c_this);
	[LinkName("QByteArrayView_ToShort1")]
	public static extern int16 QByteArrayView_ToShort1(Self* c_this, bool* ok);
	[LinkName("QByteArrayView_ToShort2")]
	public static extern int16 QByteArrayView_ToShort2(Self* c_this, bool* ok, int32 _base);
	[LinkName("QByteArrayView_ToUShort1")]
	public static extern uint16 QByteArrayView_ToUShort1(Self* c_this, bool* ok);
	[LinkName("QByteArrayView_ToUShort2")]
	public static extern uint16 QByteArrayView_ToUShort2(Self* c_this, bool* ok, int32 _base);
	[LinkName("QByteArrayView_ToInt1")]
	public static extern int32 QByteArrayView_ToInt1(Self* c_this, bool* ok);
	[LinkName("QByteArrayView_ToInt2")]
	public static extern int32 QByteArrayView_ToInt2(Self* c_this, bool* ok, int32 _base);
	[LinkName("QByteArrayView_ToUInt1")]
	public static extern uint32 QByteArrayView_ToUInt1(Self* c_this, bool* ok);
	[LinkName("QByteArrayView_ToUInt2")]
	public static extern uint32 QByteArrayView_ToUInt2(Self* c_this, bool* ok, int32 _base);
	[LinkName("QByteArrayView_ToLong1")]
	public static extern c_long QByteArrayView_ToLong1(Self* c_this, bool* ok);
	[LinkName("QByteArrayView_ToLong2")]
	public static extern c_long QByteArrayView_ToLong2(Self* c_this, bool* ok, int32 _base);
	[LinkName("QByteArrayView_ToULong1")]
	public static extern c_ulong QByteArrayView_ToULong1(Self* c_this, bool* ok);
	[LinkName("QByteArrayView_ToULong2")]
	public static extern c_ulong QByteArrayView_ToULong2(Self* c_this, bool* ok, int32 _base);
	[LinkName("QByteArrayView_ToLongLong1")]
	public static extern int64 QByteArrayView_ToLongLong1(Self* c_this, bool* ok);
	[LinkName("QByteArrayView_ToLongLong2")]
	public static extern int64 QByteArrayView_ToLongLong2(Self* c_this, bool* ok, int32 _base);
	[LinkName("QByteArrayView_ToULongLong1")]
	public static extern uint64 QByteArrayView_ToULongLong1(Self* c_this, bool* ok);
	[LinkName("QByteArrayView_ToULongLong2")]
	public static extern uint64 QByteArrayView_ToULongLong2(Self* c_this, bool* ok, int32 _base);
	[LinkName("QByteArrayView_ToFloat1")]
	public static extern float QByteArrayView_ToFloat1(Self* c_this, bool* ok);
	[LinkName("QByteArrayView_ToDouble1")]
	public static extern double QByteArrayView_ToDouble1(Self* c_this, bool* ok);
	[LinkName("QByteArrayView_IndexOf2")]
	public static extern int32 QByteArrayView_IndexOf2(Self* c_this, QByteArrayView a, int32 from);
	[LinkName("QByteArrayView_IndexOf22")]
	public static extern int32 QByteArrayView_IndexOf22(Self* c_this, int8 ch, int32 from);
	[LinkName("QByteArrayView_LastIndexOf22")]
	public static extern int32 QByteArrayView_LastIndexOf22(Self* c_this, int8 ch, int32 from);
	[LinkName("QByteArrayView_Compare2")]
	public static extern int32 QByteArrayView_Compare2(Self* c_this, QByteArrayView a, int64 cs);
}