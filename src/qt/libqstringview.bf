using System;
using System.Interop;
namespace Qt;

public class QStringView
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QStringView_new();
	}
	
	public ~this()
	{
		CQt.QStringView_Delete(this.nativePtr);
	}
	
	public libqt_string ToString()
	{
		return CQt.QStringView_ToString(this.nativePtr);
	}
	
	public int32 Size()
	{
		return CQt.QStringView_Size(this.nativePtr);
	}
	
	public void* Data()
	{
		return CQt.QStringView_Data(this.nativePtr);
	}
	
	public void* ConstData()
	{
		return CQt.QStringView_ConstData(this.nativePtr);
	}
	
	public void OperatorSubscript(int32 n)
	{
		CQt.QStringView_OperatorSubscript(this.nativePtr, n);
	}
	
	public libqt_string ToLatin1()
	{
		return CQt.QStringView_ToLatin1(this.nativePtr);
	}
	
	public libqt_string ToUtf8()
	{
		return CQt.QStringView_ToUtf8(this.nativePtr);
	}
	
	public libqt_string ToLocal8Bit()
	{
		return CQt.QStringView_ToLocal8Bit(this.nativePtr);
	}
	
	public uint32[] ToUcs4()
	{
		return CQt.QStringView_ToUcs4(this.nativePtr);
	}
	
	public void At(int32 n)
	{
		CQt.QStringView_At(this.nativePtr, n);
	}
	
	public void Truncate(int32 n)
	{
		CQt.QStringView_Truncate(this.nativePtr, n);
	}
	
	public void Chop(int32 n)
	{
		CQt.QStringView_Chop(this.nativePtr, n);
	}
	
	public int32 CompareWithQChar(void c)
	{
		return CQt.QStringView_CompareWithQChar(this.nativePtr, c);
	}
	
	public int32 Compare2(void c, int64 cs)
	{
		return CQt.QStringView_Compare2(this.nativePtr, c, cs);
	}
	
	public bool StartsWithWithQChar(void c)
	{
		return CQt.QStringView_StartsWithWithQChar(this.nativePtr, c);
	}
	
	public bool StartsWith2(void c, int64 cs)
	{
		return CQt.QStringView_StartsWith2(this.nativePtr, c, cs);
	}
	
	public bool EndsWithWithQChar(void c)
	{
		return CQt.QStringView_EndsWithWithQChar(this.nativePtr, c);
	}
	
	public bool EndsWith2(void c, int64 cs)
	{
		return CQt.QStringView_EndsWith2(this.nativePtr, c, cs);
	}
	
	public int32 IndexOf(void c)
	{
		return CQt.QStringView_IndexOf(this.nativePtr, c);
	}
	
	public bool Contains(void c)
	{
		return CQt.QStringView_Contains(this.nativePtr, c);
	}
	
	public int32 Count(void c)
	{
		return CQt.QStringView_Count(this.nativePtr, c);
	}
	
	public int32 LastIndexOf(void c)
	{
		return CQt.QStringView_LastIndexOf(this.nativePtr, c);
	}
	
	public int32 LastIndexOf2(void c, int32 from)
	{
		return CQt.QStringView_LastIndexOf2(this.nativePtr, c, from);
	}
	
	public int32 IndexOfWithRe(void* re)
	{
		return CQt.QStringView_IndexOfWithRe(this.nativePtr, re);
	}
	
	public int32 LastIndexOf5(void* re, int32 from)
	{
		return CQt.QStringView_LastIndexOf5(this.nativePtr, re, from);
	}
	
	public bool ContainsWithRe(void* re)
	{
		return CQt.QStringView_ContainsWithRe(this.nativePtr, re);
	}
	
	public int32 CountWithRe(void* re)
	{
		return CQt.QStringView_CountWithRe(this.nativePtr, re);
	}
	
	public bool IsRightToLeft()
	{
		return CQt.QStringView_IsRightToLeft(this.nativePtr);
	}
	
	public bool IsValidUtf16()
	{
		return CQt.QStringView_IsValidUtf16(this.nativePtr);
	}
	
	public int16 ToShort()
	{
		return CQt.QStringView_ToShort(this.nativePtr);
	}
	
	public uint16 ToUShort()
	{
		return CQt.QStringView_ToUShort(this.nativePtr);
	}
	
	public int32 ToInt()
	{
		return CQt.QStringView_ToInt(this.nativePtr);
	}
	
	public uint32 ToUInt()
	{
		return CQt.QStringView_ToUInt(this.nativePtr);
	}
	
	public c_long ToLong()
	{
		return CQt.QStringView_ToLong(this.nativePtr);
	}
	
	public c_ulong ToULong()
	{
		return CQt.QStringView_ToULong(this.nativePtr);
	}
	
	public int64 ToLongLong()
	{
		return CQt.QStringView_ToLongLong(this.nativePtr);
	}
	
	public uint64 ToULongLong()
	{
		return CQt.QStringView_ToULongLong(this.nativePtr);
	}
	
	public float ToFloat()
	{
		return CQt.QStringView_ToFloat(this.nativePtr);
	}
	
	public double ToDouble()
	{
		return CQt.QStringView_ToDouble(this.nativePtr);
	}
	
	public void* Begin()
	{
		return CQt.QStringView_Begin(this.nativePtr);
	}
	
	public void* End()
	{
		return CQt.QStringView_End(this.nativePtr);
	}
	
	public void* Cbegin()
	{
		return CQt.QStringView_Cbegin(this.nativePtr);
	}
	
	public void* Cend()
	{
		return CQt.QStringView_Cend(this.nativePtr);
	}
	
	public bool Empty()
	{
		return CQt.QStringView_Empty(this.nativePtr);
	}
	
	public void Front()
	{
		CQt.QStringView_Front(this.nativePtr);
	}
	
	public void Back()
	{
		CQt.QStringView_Back(this.nativePtr);
	}
	
	public void* ConstBegin()
	{
		return CQt.QStringView_ConstBegin(this.nativePtr);
	}
	
	public void* ConstEnd()
	{
		return CQt.QStringView_ConstEnd(this.nativePtr);
	}
	
	public bool IsNull()
	{
		return CQt.QStringView_IsNull(this.nativePtr);
	}
	
	public bool IsEmpty()
	{
		return CQt.QStringView_IsEmpty(this.nativePtr);
	}
	
	public int32 Length()
	{
		return CQt.QStringView_Length(this.nativePtr);
	}
	
	public void First2()
	{
		CQt.QStringView_First2(this.nativePtr);
	}
	
	public void Last2()
	{
		CQt.QStringView_Last2(this.nativePtr);
	}
	
	public int32 IndexOf2(void c, int32 from)
	{
		return CQt.QStringView_IndexOf2(this.nativePtr, c, from);
	}
	
	public int32 IndexOf3(void c, int32 from, int64 cs)
	{
		return CQt.QStringView_IndexOf3(this.nativePtr, c, from, cs);
	}
	
	public bool Contains2(void c, int64 cs)
	{
		return CQt.QStringView_Contains2(this.nativePtr, c, cs);
	}
	
	public int32 Count2(void c, int64 cs)
	{
		return CQt.QStringView_Count2(this.nativePtr, c, cs);
	}
	
	public int32 LastIndexOf22(void c, int64 cs)
	{
		return CQt.QStringView_LastIndexOf22(this.nativePtr, c, cs);
	}
	
	public int32 LastIndexOf32(void c, int32 from, int64 cs)
	{
		return CQt.QStringView_LastIndexOf32(this.nativePtr, c, from, cs);
	}
	
	public int32 IndexOf24(void* re, int32 from)
	{
		return CQt.QStringView_IndexOf24(this.nativePtr, re, from);
	}
	
	public int32 IndexOf34(void* re, int32 from, void* rmatch)
	{
		return CQt.QStringView_IndexOf34(this.nativePtr, re, from, rmatch);
	}
	
	public int32 LastIndexOf35(void* re, int32 from, void* rmatch)
	{
		return CQt.QStringView_LastIndexOf35(this.nativePtr, re, from, rmatch);
	}
	
	public bool Contains24(void* re, void* rmatch)
	{
		return CQt.QStringView_Contains24(this.nativePtr, re, rmatch);
	}
	
	public int16 ToShort1(bool* ok)
	{
		return CQt.QStringView_ToShort1(this.nativePtr, ok);
	}
	
	public int16 ToShort2(bool* ok, int32 _base)
	{
		return CQt.QStringView_ToShort2(this.nativePtr, ok, _base);
	}
	
	public uint16 ToUShort1(bool* ok)
	{
		return CQt.QStringView_ToUShort1(this.nativePtr, ok);
	}
	
	public uint16 ToUShort2(bool* ok, int32 _base)
	{
		return CQt.QStringView_ToUShort2(this.nativePtr, ok, _base);
	}
	
	public int32 ToInt1(bool* ok)
	{
		return CQt.QStringView_ToInt1(this.nativePtr, ok);
	}
	
	public int32 ToInt2(bool* ok, int32 _base)
	{
		return CQt.QStringView_ToInt2(this.nativePtr, ok, _base);
	}
	
	public uint32 ToUInt1(bool* ok)
	{
		return CQt.QStringView_ToUInt1(this.nativePtr, ok);
	}
	
	public uint32 ToUInt2(bool* ok, int32 _base)
	{
		return CQt.QStringView_ToUInt2(this.nativePtr, ok, _base);
	}
	
	public c_long ToLong1(bool* ok)
	{
		return CQt.QStringView_ToLong1(this.nativePtr, ok);
	}
	
	public c_long ToLong2(bool* ok, int32 _base)
	{
		return CQt.QStringView_ToLong2(this.nativePtr, ok, _base);
	}
	
	public c_ulong ToULong1(bool* ok)
	{
		return CQt.QStringView_ToULong1(this.nativePtr, ok);
	}
	
	public c_ulong ToULong2(bool* ok, int32 _base)
	{
		return CQt.QStringView_ToULong2(this.nativePtr, ok, _base);
	}
	
	public int64 ToLongLong1(bool* ok)
	{
		return CQt.QStringView_ToLongLong1(this.nativePtr, ok);
	}
	
	public int64 ToLongLong2(bool* ok, int32 _base)
	{
		return CQt.QStringView_ToLongLong2(this.nativePtr, ok, _base);
	}
	
	public uint64 ToULongLong1(bool* ok)
	{
		return CQt.QStringView_ToULongLong1(this.nativePtr, ok);
	}
	
	public uint64 ToULongLong2(bool* ok, int32 _base)
	{
		return CQt.QStringView_ToULongLong2(this.nativePtr, ok, _base);
	}
	
	public float ToFloat1(bool* ok)
	{
		return CQt.QStringView_ToFloat1(this.nativePtr, ok);
	}
	
	public double ToDouble1(bool* ok)
	{
		return CQt.QStringView_ToDouble1(this.nativePtr, ok);
	}
	
}
extension CQt
{
	[LinkName("QStringView_new")]
	public static extern void* QStringView_new();
	[LinkName("QStringView_ToString")]
	public static extern libqt_string QStringView_ToString(void* c_this);
	[LinkName("QStringView_Size")]
	public static extern int32 QStringView_Size(void* c_this);
	[LinkName("QStringView_Data")]
	public static extern void* QStringView_Data(void* c_this);
	[LinkName("QStringView_ConstData")]
	public static extern void* QStringView_ConstData(void* c_this);
	[LinkName("QStringView_OperatorSubscript")]
	public static extern void QStringView_OperatorSubscript(void* c_this, int32 n);
	[LinkName("QStringView_ToLatin1")]
	public static extern libqt_string QStringView_ToLatin1(void* c_this);
	[LinkName("QStringView_ToUtf8")]
	public static extern libqt_string QStringView_ToUtf8(void* c_this);
	[LinkName("QStringView_ToLocal8Bit")]
	public static extern libqt_string QStringView_ToLocal8Bit(void* c_this);
	[LinkName("QStringView_ToUcs4")]
	public static extern uint32[] QStringView_ToUcs4(void* c_this);
	[LinkName("QStringView_At")]
	public static extern void QStringView_At(void* c_this, int32 n);
	[LinkName("QStringView_Truncate")]
	public static extern void QStringView_Truncate(void* c_this, int32 n);
	[LinkName("QStringView_Chop")]
	public static extern void QStringView_Chop(void* c_this, int32 n);
	[LinkName("QStringView_CompareWithQChar")]
	public static extern int32 QStringView_CompareWithQChar(void* c_this, void c);
	[LinkName("QStringView_Compare2")]
	public static extern int32 QStringView_Compare2(void* c_this, void c, int64 cs);
	[LinkName("QStringView_StartsWithWithQChar")]
	public static extern bool QStringView_StartsWithWithQChar(void* c_this, void c);
	[LinkName("QStringView_StartsWith2")]
	public static extern bool QStringView_StartsWith2(void* c_this, void c, int64 cs);
	[LinkName("QStringView_EndsWithWithQChar")]
	public static extern bool QStringView_EndsWithWithQChar(void* c_this, void c);
	[LinkName("QStringView_EndsWith2")]
	public static extern bool QStringView_EndsWith2(void* c_this, void c, int64 cs);
	[LinkName("QStringView_IndexOf")]
	public static extern int32 QStringView_IndexOf(void* c_this, void c);
	[LinkName("QStringView_Contains")]
	public static extern bool QStringView_Contains(void* c_this, void c);
	[LinkName("QStringView_Count")]
	public static extern int32 QStringView_Count(void* c_this, void c);
	[LinkName("QStringView_LastIndexOf")]
	public static extern int32 QStringView_LastIndexOf(void* c_this, void c);
	[LinkName("QStringView_LastIndexOf2")]
	public static extern int32 QStringView_LastIndexOf2(void* c_this, void c, int32 from);
	[LinkName("QStringView_IndexOfWithRe")]
	public static extern int32 QStringView_IndexOfWithRe(void* c_this, void* re);
	[LinkName("QStringView_LastIndexOf5")]
	public static extern int32 QStringView_LastIndexOf5(void* c_this, void* re, int32 from);
	[LinkName("QStringView_ContainsWithRe")]
	public static extern bool QStringView_ContainsWithRe(void* c_this, void* re);
	[LinkName("QStringView_CountWithRe")]
	public static extern int32 QStringView_CountWithRe(void* c_this, void* re);
	[LinkName("QStringView_IsRightToLeft")]
	public static extern bool QStringView_IsRightToLeft(void* c_this);
	[LinkName("QStringView_IsValidUtf16")]
	public static extern bool QStringView_IsValidUtf16(void* c_this);
	[LinkName("QStringView_ToShort")]
	public static extern int16 QStringView_ToShort(void* c_this);
	[LinkName("QStringView_ToUShort")]
	public static extern uint16 QStringView_ToUShort(void* c_this);
	[LinkName("QStringView_ToInt")]
	public static extern int32 QStringView_ToInt(void* c_this);
	[LinkName("QStringView_ToUInt")]
	public static extern uint32 QStringView_ToUInt(void* c_this);
	[LinkName("QStringView_ToLong")]
	public static extern c_long QStringView_ToLong(void* c_this);
	[LinkName("QStringView_ToULong")]
	public static extern c_ulong QStringView_ToULong(void* c_this);
	[LinkName("QStringView_ToLongLong")]
	public static extern int64 QStringView_ToLongLong(void* c_this);
	[LinkName("QStringView_ToULongLong")]
	public static extern uint64 QStringView_ToULongLong(void* c_this);
	[LinkName("QStringView_ToFloat")]
	public static extern float QStringView_ToFloat(void* c_this);
	[LinkName("QStringView_ToDouble")]
	public static extern double QStringView_ToDouble(void* c_this);
	[LinkName("QStringView_Begin")]
	public static extern void* QStringView_Begin(void* c_this);
	[LinkName("QStringView_End")]
	public static extern void* QStringView_End(void* c_this);
	[LinkName("QStringView_Cbegin")]
	public static extern void* QStringView_Cbegin(void* c_this);
	[LinkName("QStringView_Cend")]
	public static extern void* QStringView_Cend(void* c_this);
	[LinkName("QStringView_Empty")]
	public static extern bool QStringView_Empty(void* c_this);
	[LinkName("QStringView_Front")]
	public static extern void QStringView_Front(void* c_this);
	[LinkName("QStringView_Back")]
	public static extern void QStringView_Back(void* c_this);
	[LinkName("QStringView_ConstBegin")]
	public static extern void* QStringView_ConstBegin(void* c_this);
	[LinkName("QStringView_ConstEnd")]
	public static extern void* QStringView_ConstEnd(void* c_this);
	[LinkName("QStringView_IsNull")]
	public static extern bool QStringView_IsNull(void* c_this);
	[LinkName("QStringView_IsEmpty")]
	public static extern bool QStringView_IsEmpty(void* c_this);
	[LinkName("QStringView_Length")]
	public static extern int32 QStringView_Length(void* c_this);
	[LinkName("QStringView_First2")]
	public static extern void QStringView_First2(void* c_this);
	[LinkName("QStringView_Last2")]
	public static extern void QStringView_Last2(void* c_this);
	[LinkName("QStringView_IndexOf2")]
	public static extern int32 QStringView_IndexOf2(void* c_this, void c, int32 from);
	[LinkName("QStringView_IndexOf3")]
	public static extern int32 QStringView_IndexOf3(void* c_this, void c, int32 from, int64 cs);
	[LinkName("QStringView_Contains2")]
	public static extern bool QStringView_Contains2(void* c_this, void c, int64 cs);
	[LinkName("QStringView_Count2")]
	public static extern int32 QStringView_Count2(void* c_this, void c, int64 cs);
	[LinkName("QStringView_LastIndexOf22")]
	public static extern int32 QStringView_LastIndexOf22(void* c_this, void c, int64 cs);
	[LinkName("QStringView_LastIndexOf32")]
	public static extern int32 QStringView_LastIndexOf32(void* c_this, void c, int32 from, int64 cs);
	[LinkName("QStringView_IndexOf24")]
	public static extern int32 QStringView_IndexOf24(void* c_this, void* re, int32 from);
	[LinkName("QStringView_IndexOf34")]
	public static extern int32 QStringView_IndexOf34(void* c_this, void* re, int32 from, void* rmatch);
	[LinkName("QStringView_LastIndexOf35")]
	public static extern int32 QStringView_LastIndexOf35(void* c_this, void* re, int32 from, void* rmatch);
	[LinkName("QStringView_Contains24")]
	public static extern bool QStringView_Contains24(void* c_this, void* re, void* rmatch);
	[LinkName("QStringView_ToShort1")]
	public static extern int16 QStringView_ToShort1(void* c_this, bool* ok);
	[LinkName("QStringView_ToShort2")]
	public static extern int16 QStringView_ToShort2(void* c_this, bool* ok, int32 _base);
	[LinkName("QStringView_ToUShort1")]
	public static extern uint16 QStringView_ToUShort1(void* c_this, bool* ok);
	[LinkName("QStringView_ToUShort2")]
	public static extern uint16 QStringView_ToUShort2(void* c_this, bool* ok, int32 _base);
	[LinkName("QStringView_ToInt1")]
	public static extern int32 QStringView_ToInt1(void* c_this, bool* ok);
	[LinkName("QStringView_ToInt2")]
	public static extern int32 QStringView_ToInt2(void* c_this, bool* ok, int32 _base);
	[LinkName("QStringView_ToUInt1")]
	public static extern uint32 QStringView_ToUInt1(void* c_this, bool* ok);
	[LinkName("QStringView_ToUInt2")]
	public static extern uint32 QStringView_ToUInt2(void* c_this, bool* ok, int32 _base);
	[LinkName("QStringView_ToLong1")]
	public static extern c_long QStringView_ToLong1(void* c_this, bool* ok);
	[LinkName("QStringView_ToLong2")]
	public static extern c_long QStringView_ToLong2(void* c_this, bool* ok, int32 _base);
	[LinkName("QStringView_ToULong1")]
	public static extern c_ulong QStringView_ToULong1(void* c_this, bool* ok);
	[LinkName("QStringView_ToULong2")]
	public static extern c_ulong QStringView_ToULong2(void* c_this, bool* ok, int32 _base);
	[LinkName("QStringView_ToLongLong1")]
	public static extern int64 QStringView_ToLongLong1(void* c_this, bool* ok);
	[LinkName("QStringView_ToLongLong2")]
	public static extern int64 QStringView_ToLongLong2(void* c_this, bool* ok, int32 _base);
	[LinkName("QStringView_ToULongLong1")]
	public static extern uint64 QStringView_ToULongLong1(void* c_this, bool* ok);
	[LinkName("QStringView_ToULongLong2")]
	public static extern uint64 QStringView_ToULongLong2(void* c_this, bool* ok, int32 _base);
	[LinkName("QStringView_ToFloat1")]
	public static extern float QStringView_ToFloat1(void* c_this, bool* ok);
	[LinkName("QStringView_ToDouble1")]
	public static extern double QStringView_ToDouble1(void* c_this, bool* ok);
	/// Delete this object from C++ memory
	[LinkName("QStringView_Delete")]
	public static extern void QStringView_Delete(void* self);
}