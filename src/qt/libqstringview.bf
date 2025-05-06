using System;
using System.Interop;
namespace Qt;

public struct QStringView
{
	[LinkName("QStringView_new")]
	public static extern QStringView* QStringView_new();
	[LinkName("QStringView_ToString")]
	public static extern libqt_string QStringView_ToString(Self* c_this);
	[LinkName("QStringView_Size")]
	public static extern int32 QStringView_Size(Self* c_this);
	[LinkName("QStringView_Data")]
	public static extern QChar* QStringView_Data(Self* c_this);
	[LinkName("QStringView_ConstData")]
	public static extern QChar* QStringView_ConstData(Self* c_this);
	[LinkName("QStringView_OperatorSubscript")]
	public static extern QChar QStringView_OperatorSubscript(Self* c_this, int32 n);
	[LinkName("QStringView_ToLatin1")]
	public static extern libqt_string QStringView_ToLatin1(Self* c_this);
	[LinkName("QStringView_ToUtf8")]
	public static extern libqt_string QStringView_ToUtf8(Self* c_this);
	[LinkName("QStringView_ToLocal8Bit")]
	public static extern libqt_string QStringView_ToLocal8Bit(Self* c_this);
	[LinkName("QStringView_ToUcs4")]
	public static extern uint32[] QStringView_ToUcs4(Self* c_this);
	[LinkName("QStringView_At")]
	public static extern QChar QStringView_At(Self* c_this, int32 n);
	[LinkName("QStringView_Truncate")]
	public static extern void QStringView_Truncate(Self* c_this, int32 n);
	[LinkName("QStringView_Chop")]
	public static extern void QStringView_Chop(Self* c_this, int32 n);
	[LinkName("QStringView_CompareWithQChar")]
	public static extern int32 QStringView_CompareWithQChar(Self* c_this, QChar c);
	[LinkName("QStringView_Compare2")]
	public static extern int32 QStringView_Compare2(Self* c_this, QChar c, int64 cs);
	[LinkName("QStringView_StartsWithWithQChar")]
	public static extern bool QStringView_StartsWithWithQChar(Self* c_this, QChar c);
	[LinkName("QStringView_StartsWith2")]
	public static extern bool QStringView_StartsWith2(Self* c_this, QChar c, int64 cs);
	[LinkName("QStringView_EndsWithWithQChar")]
	public static extern bool QStringView_EndsWithWithQChar(Self* c_this, QChar c);
	[LinkName("QStringView_EndsWith2")]
	public static extern bool QStringView_EndsWith2(Self* c_this, QChar c, int64 cs);
	[LinkName("QStringView_IndexOf")]
	public static extern int32 QStringView_IndexOf(Self* c_this, QChar c);
	[LinkName("QStringView_Contains")]
	public static extern bool QStringView_Contains(Self* c_this, QChar c);
	[LinkName("QStringView_Count")]
	public static extern int32 QStringView_Count(Self* c_this, QChar c);
	[LinkName("QStringView_LastIndexOf")]
	public static extern int32 QStringView_LastIndexOf(Self* c_this, QChar c);
	[LinkName("QStringView_LastIndexOf2")]
	public static extern int32 QStringView_LastIndexOf2(Self* c_this, QChar c, int32 from);
	[LinkName("QStringView_IndexOfWithRe")]
	public static extern int32 QStringView_IndexOfWithRe(Self* c_this, QRegularExpression* re);
	[LinkName("QStringView_LastIndexOf5")]
	public static extern int32 QStringView_LastIndexOf5(Self* c_this, QRegularExpression* re, int32 from);
	[LinkName("QStringView_ContainsWithRe")]
	public static extern bool QStringView_ContainsWithRe(Self* c_this, QRegularExpression* re);
	[LinkName("QStringView_CountWithRe")]
	public static extern int32 QStringView_CountWithRe(Self* c_this, QRegularExpression* re);
	[LinkName("QStringView_IsRightToLeft")]
	public static extern bool QStringView_IsRightToLeft(Self* c_this);
	[LinkName("QStringView_IsValidUtf16")]
	public static extern bool QStringView_IsValidUtf16(Self* c_this);
	[LinkName("QStringView_ToShort")]
	public static extern int16 QStringView_ToShort(Self* c_this);
	[LinkName("QStringView_ToUShort")]
	public static extern uint16 QStringView_ToUShort(Self* c_this);
	[LinkName("QStringView_ToInt")]
	public static extern int32 QStringView_ToInt(Self* c_this);
	[LinkName("QStringView_ToUInt")]
	public static extern uint32 QStringView_ToUInt(Self* c_this);
	[LinkName("QStringView_ToLong")]
	public static extern c_long QStringView_ToLong(Self* c_this);
	[LinkName("QStringView_ToULong")]
	public static extern c_ulong QStringView_ToULong(Self* c_this);
	[LinkName("QStringView_ToLongLong")]
	public static extern int64 QStringView_ToLongLong(Self* c_this);
	[LinkName("QStringView_ToULongLong")]
	public static extern uint64 QStringView_ToULongLong(Self* c_this);
	[LinkName("QStringView_ToFloat")]
	public static extern float QStringView_ToFloat(Self* c_this);
	[LinkName("QStringView_ToDouble")]
	public static extern double QStringView_ToDouble(Self* c_this);
	[LinkName("QStringView_Begin")]
	public static extern QChar* QStringView_Begin(Self* c_this);
	[LinkName("QStringView_End")]
	public static extern QChar* QStringView_End(Self* c_this);
	[LinkName("QStringView_Cbegin")]
	public static extern QChar* QStringView_Cbegin(Self* c_this);
	[LinkName("QStringView_Cend")]
	public static extern QChar* QStringView_Cend(Self* c_this);
	[LinkName("QStringView_Empty")]
	public static extern bool QStringView_Empty(Self* c_this);
	[LinkName("QStringView_Front")]
	public static extern QChar QStringView_Front(Self* c_this);
	[LinkName("QStringView_Back")]
	public static extern QChar QStringView_Back(Self* c_this);
	[LinkName("QStringView_ConstBegin")]
	public static extern QChar* QStringView_ConstBegin(Self* c_this);
	[LinkName("QStringView_ConstEnd")]
	public static extern QChar* QStringView_ConstEnd(Self* c_this);
	[LinkName("QStringView_IsNull")]
	public static extern bool QStringView_IsNull(Self* c_this);
	[LinkName("QStringView_IsEmpty")]
	public static extern bool QStringView_IsEmpty(Self* c_this);
	[LinkName("QStringView_Length")]
	public static extern int32 QStringView_Length(Self* c_this);
	[LinkName("QStringView_First2")]
	public static extern QChar QStringView_First2(Self* c_this);
	[LinkName("QStringView_Last2")]
	public static extern QChar QStringView_Last2(Self* c_this);
	[LinkName("QStringView_IndexOf2")]
	public static extern int32 QStringView_IndexOf2(Self* c_this, QChar c, int32 from);
	[LinkName("QStringView_IndexOf3")]
	public static extern int32 QStringView_IndexOf3(Self* c_this, QChar c, int32 from, int64 cs);
	[LinkName("QStringView_Contains2")]
	public static extern bool QStringView_Contains2(Self* c_this, QChar c, int64 cs);
	[LinkName("QStringView_Count2")]
	public static extern int32 QStringView_Count2(Self* c_this, QChar c, int64 cs);
	[LinkName("QStringView_LastIndexOf22")]
	public static extern int32 QStringView_LastIndexOf22(Self* c_this, QChar c, int64 cs);
	[LinkName("QStringView_LastIndexOf32")]
	public static extern int32 QStringView_LastIndexOf32(Self* c_this, QChar c, int32 from, int64 cs);
	[LinkName("QStringView_IndexOf24")]
	public static extern int32 QStringView_IndexOf24(Self* c_this, QRegularExpression* re, int32 from);
	[LinkName("QStringView_IndexOf34")]
	public static extern int32 QStringView_IndexOf34(Self* c_this, QRegularExpression* re, int32 from, QRegularExpressionMatch* rmatch);
	[LinkName("QStringView_LastIndexOf35")]
	public static extern int32 QStringView_LastIndexOf35(Self* c_this, QRegularExpression* re, int32 from, QRegularExpressionMatch* rmatch);
	[LinkName("QStringView_Contains24")]
	public static extern bool QStringView_Contains24(Self* c_this, QRegularExpression* re, QRegularExpressionMatch* rmatch);
	[LinkName("QStringView_ToShort1")]
	public static extern int16 QStringView_ToShort1(Self* c_this, bool* ok);
	[LinkName("QStringView_ToShort2")]
	public static extern int16 QStringView_ToShort2(Self* c_this, bool* ok, int32 _base);
	[LinkName("QStringView_ToUShort1")]
	public static extern uint16 QStringView_ToUShort1(Self* c_this, bool* ok);
	[LinkName("QStringView_ToUShort2")]
	public static extern uint16 QStringView_ToUShort2(Self* c_this, bool* ok, int32 _base);
	[LinkName("QStringView_ToInt1")]
	public static extern int32 QStringView_ToInt1(Self* c_this, bool* ok);
	[LinkName("QStringView_ToInt2")]
	public static extern int32 QStringView_ToInt2(Self* c_this, bool* ok, int32 _base);
	[LinkName("QStringView_ToUInt1")]
	public static extern uint32 QStringView_ToUInt1(Self* c_this, bool* ok);
	[LinkName("QStringView_ToUInt2")]
	public static extern uint32 QStringView_ToUInt2(Self* c_this, bool* ok, int32 _base);
	[LinkName("QStringView_ToLong1")]
	public static extern c_long QStringView_ToLong1(Self* c_this, bool* ok);
	[LinkName("QStringView_ToLong2")]
	public static extern c_long QStringView_ToLong2(Self* c_this, bool* ok, int32 _base);
	[LinkName("QStringView_ToULong1")]
	public static extern c_ulong QStringView_ToULong1(Self* c_this, bool* ok);
	[LinkName("QStringView_ToULong2")]
	public static extern c_ulong QStringView_ToULong2(Self* c_this, bool* ok, int32 _base);
	[LinkName("QStringView_ToLongLong1")]
	public static extern int64 QStringView_ToLongLong1(Self* c_this, bool* ok);
	[LinkName("QStringView_ToLongLong2")]
	public static extern int64 QStringView_ToLongLong2(Self* c_this, bool* ok, int32 _base);
	[LinkName("QStringView_ToULongLong1")]
	public static extern uint64 QStringView_ToULongLong1(Self* c_this, bool* ok);
	[LinkName("QStringView_ToULongLong2")]
	public static extern uint64 QStringView_ToULongLong2(Self* c_this, bool* ok, int32 _base);
	[LinkName("QStringView_ToFloat1")]
	public static extern float QStringView_ToFloat1(Self* c_this, bool* ok);
	[LinkName("QStringView_ToDouble1")]
	public static extern double QStringView_ToDouble1(Self* c_this, bool* ok);
}