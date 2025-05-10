using System;
using System.Interop;
namespace Qt;

public class QByteArrayView
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QByteArrayView_new(other);
	}
	
	public ~this()
	{
		CQt.QByteArrayView_Delete(this.nativePtr);
	}
	
	public libqt_string ToByteArray()
	{
		return CQt.QByteArrayView_ToByteArray(this.nativePtr);
	}
	
	public int32 Size()
	{
		return CQt.QByteArrayView_Size(this.nativePtr);
	}
	
	public char8[] Data()
	{
		return CQt.QByteArrayView_Data(this.nativePtr);
	}
	
	public char8[] ConstData()
	{
		return CQt.QByteArrayView_ConstData(this.nativePtr);
	}
	
	public int8 OperatorSubscript(int32 n)
	{
		return CQt.QByteArrayView_OperatorSubscript(this.nativePtr, n);
	}
	
	public int8 At(int32 n)
	{
		return CQt.QByteArrayView_At(this.nativePtr, n);
	}
	
	public void First(int32 n)
	{
		CQt.QByteArrayView_First(this.nativePtr, n);
	}
	
	public void Last(int32 n)
	{
		CQt.QByteArrayView_Last(this.nativePtr, n);
	}
	
	public void Sliced(int32 pos)
	{
		CQt.QByteArrayView_Sliced(this.nativePtr, pos);
	}
	
	public void Sliced2(int32 pos, int32 n)
	{
		CQt.QByteArrayView_Sliced2(this.nativePtr, pos, n);
	}
	
	public void Chopped(int32 lenVal)
	{
		CQt.QByteArrayView_Chopped(this.nativePtr, lenVal);
	}
	
	public void Truncate(int32 n)
	{
		CQt.QByteArrayView_Truncate(this.nativePtr, n);
	}
	
	public void Chop(int32 n)
	{
		CQt.QByteArrayView_Chop(this.nativePtr, n);
	}
	
	public void Trimmed()
	{
		CQt.QByteArrayView_Trimmed(this.nativePtr);
	}
	
	public int16 ToShort()
	{
		return CQt.QByteArrayView_ToShort(this.nativePtr);
	}
	
	public uint16 ToUShort()
	{
		return CQt.QByteArrayView_ToUShort(this.nativePtr);
	}
	
	public int32 ToInt()
	{
		return CQt.QByteArrayView_ToInt(this.nativePtr);
	}
	
	public uint32 ToUInt()
	{
		return CQt.QByteArrayView_ToUInt(this.nativePtr);
	}
	
	public c_long ToLong()
	{
		return CQt.QByteArrayView_ToLong(this.nativePtr);
	}
	
	public c_ulong ToULong()
	{
		return CQt.QByteArrayView_ToULong(this.nativePtr);
	}
	
	public int64 ToLongLong()
	{
		return CQt.QByteArrayView_ToLongLong(this.nativePtr);
	}
	
	public uint64 ToULongLong()
	{
		return CQt.QByteArrayView_ToULongLong(this.nativePtr);
	}
	
	public float ToFloat()
	{
		return CQt.QByteArrayView_ToFloat(this.nativePtr);
	}
	
	public double ToDouble()
	{
		return CQt.QByteArrayView_ToDouble(this.nativePtr);
	}
	
	public bool StartsWith(void other)
	{
		return CQt.QByteArrayView_StartsWith(this.nativePtr, other);
	}
	
	public bool StartsWithWithChar(int8 c)
	{
		return CQt.QByteArrayView_StartsWithWithChar(this.nativePtr, c);
	}
	
	public bool EndsWith(void other)
	{
		return CQt.QByteArrayView_EndsWith(this.nativePtr, other);
	}
	
	public bool EndsWithWithChar(int8 c)
	{
		return CQt.QByteArrayView_EndsWithWithChar(this.nativePtr, c);
	}
	
	public int32 IndexOf(void a)
	{
		return CQt.QByteArrayView_IndexOf(this.nativePtr, a);
	}
	
	public int32 IndexOfWithCh(int8 ch)
	{
		return CQt.QByteArrayView_IndexOfWithCh(this.nativePtr, ch);
	}
	
	public bool Contains(void a)
	{
		return CQt.QByteArrayView_Contains(this.nativePtr, a);
	}
	
	public bool ContainsWithChar(int8 c)
	{
		return CQt.QByteArrayView_ContainsWithChar(this.nativePtr, c);
	}
	
	public int32 LastIndexOf(void a)
	{
		return CQt.QByteArrayView_LastIndexOf(this.nativePtr, a);
	}
	
	public int32 LastIndexOf2(void a, int32 from)
	{
		return CQt.QByteArrayView_LastIndexOf2(this.nativePtr, a, from);
	}
	
	public int32 LastIndexOfWithCh(int8 ch)
	{
		return CQt.QByteArrayView_LastIndexOfWithCh(this.nativePtr, ch);
	}
	
	public int32 Count(void a)
	{
		return CQt.QByteArrayView_Count(this.nativePtr, a);
	}
	
	public int32 CountWithCh(int8 ch)
	{
		return CQt.QByteArrayView_CountWithCh(this.nativePtr, ch);
	}
	
	public int32 Compare(void a)
	{
		return CQt.QByteArrayView_Compare(this.nativePtr, a);
	}
	
	public bool IsValidUtf8()
	{
		return CQt.QByteArrayView_IsValidUtf8(this.nativePtr);
	}
	
	public char8[] Begin()
	{
		return CQt.QByteArrayView_Begin(this.nativePtr);
	}
	
	public char8[] End()
	{
		return CQt.QByteArrayView_End(this.nativePtr);
	}
	
	public char8[] Cbegin()
	{
		return CQt.QByteArrayView_Cbegin(this.nativePtr);
	}
	
	public char8[] Cend()
	{
		return CQt.QByteArrayView_Cend(this.nativePtr);
	}
	
	public bool Empty()
	{
		return CQt.QByteArrayView_Empty(this.nativePtr);
	}
	
	public int8 Front()
	{
		return CQt.QByteArrayView_Front(this.nativePtr);
	}
	
	public int8 Back()
	{
		return CQt.QByteArrayView_Back(this.nativePtr);
	}
	
	public bool IsNull()
	{
		return CQt.QByteArrayView_IsNull(this.nativePtr);
	}
	
	public bool IsEmpty()
	{
		return CQt.QByteArrayView_IsEmpty(this.nativePtr);
	}
	
	public int32 Length()
	{
		return CQt.QByteArrayView_Length(this.nativePtr);
	}
	
	public int8 First2()
	{
		return CQt.QByteArrayView_First2(this.nativePtr);
	}
	
	public int8 Last2()
	{
		return CQt.QByteArrayView_Last2(this.nativePtr);
	}
	
	public int16 ToShort1(bool* ok)
	{
		return CQt.QByteArrayView_ToShort1(this.nativePtr, ok);
	}
	
	public int16 ToShort2(bool* ok, int32 _base)
	{
		return CQt.QByteArrayView_ToShort2(this.nativePtr, ok, _base);
	}
	
	public uint16 ToUShort1(bool* ok)
	{
		return CQt.QByteArrayView_ToUShort1(this.nativePtr, ok);
	}
	
	public uint16 ToUShort2(bool* ok, int32 _base)
	{
		return CQt.QByteArrayView_ToUShort2(this.nativePtr, ok, _base);
	}
	
	public int32 ToInt1(bool* ok)
	{
		return CQt.QByteArrayView_ToInt1(this.nativePtr, ok);
	}
	
	public int32 ToInt2(bool* ok, int32 _base)
	{
		return CQt.QByteArrayView_ToInt2(this.nativePtr, ok, _base);
	}
	
	public uint32 ToUInt1(bool* ok)
	{
		return CQt.QByteArrayView_ToUInt1(this.nativePtr, ok);
	}
	
	public uint32 ToUInt2(bool* ok, int32 _base)
	{
		return CQt.QByteArrayView_ToUInt2(this.nativePtr, ok, _base);
	}
	
	public c_long ToLong1(bool* ok)
	{
		return CQt.QByteArrayView_ToLong1(this.nativePtr, ok);
	}
	
	public c_long ToLong2(bool* ok, int32 _base)
	{
		return CQt.QByteArrayView_ToLong2(this.nativePtr, ok, _base);
	}
	
	public c_ulong ToULong1(bool* ok)
	{
		return CQt.QByteArrayView_ToULong1(this.nativePtr, ok);
	}
	
	public c_ulong ToULong2(bool* ok, int32 _base)
	{
		return CQt.QByteArrayView_ToULong2(this.nativePtr, ok, _base);
	}
	
	public int64 ToLongLong1(bool* ok)
	{
		return CQt.QByteArrayView_ToLongLong1(this.nativePtr, ok);
	}
	
	public int64 ToLongLong2(bool* ok, int32 _base)
	{
		return CQt.QByteArrayView_ToLongLong2(this.nativePtr, ok, _base);
	}
	
	public uint64 ToULongLong1(bool* ok)
	{
		return CQt.QByteArrayView_ToULongLong1(this.nativePtr, ok);
	}
	
	public uint64 ToULongLong2(bool* ok, int32 _base)
	{
		return CQt.QByteArrayView_ToULongLong2(this.nativePtr, ok, _base);
	}
	
	public float ToFloat1(bool* ok)
	{
		return CQt.QByteArrayView_ToFloat1(this.nativePtr, ok);
	}
	
	public double ToDouble1(bool* ok)
	{
		return CQt.QByteArrayView_ToDouble1(this.nativePtr, ok);
	}
	
	public int32 IndexOf2(void a, int32 from)
	{
		return CQt.QByteArrayView_IndexOf2(this.nativePtr, a, from);
	}
	
	public int32 IndexOf22(int8 ch, int32 from)
	{
		return CQt.QByteArrayView_IndexOf22(this.nativePtr, ch, from);
	}
	
	public int32 LastIndexOf22(int8 ch, int32 from)
	{
		return CQt.QByteArrayView_LastIndexOf22(this.nativePtr, ch, from);
	}
	
	public int32 Compare2(void a, int64 cs)
	{
		return CQt.QByteArrayView_Compare2(this.nativePtr, a, cs);
	}
	
}
extension CQt
{
	[LinkName("QByteArrayView_new")]
	public static extern void* QByteArrayView_new(void* other);
	[LinkName("QByteArrayView_new2")]
	public static extern void* QByteArrayView_new2(void* other);
	[LinkName("QByteArrayView_new3")]
	public static extern void* QByteArrayView_new3();
	[LinkName("QByteArrayView_new4")]
	public static extern void* QByteArrayView_new4(void* param1);
	[LinkName("QByteArrayView_ToByteArray")]
	public static extern libqt_string QByteArrayView_ToByteArray(void* c_this);
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
	public static extern void QByteArrayView_First(void* c_this, int32 n);
	[LinkName("QByteArrayView_Last")]
	public static extern void QByteArrayView_Last(void* c_this, int32 n);
	[LinkName("QByteArrayView_Sliced")]
	public static extern void QByteArrayView_Sliced(void* c_this, int32 pos);
	[LinkName("QByteArrayView_Sliced2")]
	public static extern void QByteArrayView_Sliced2(void* c_this, int32 pos, int32 n);
	[LinkName("QByteArrayView_Chopped")]
	public static extern void QByteArrayView_Chopped(void* c_this, int32 lenVal);
	[LinkName("QByteArrayView_Truncate")]
	public static extern void QByteArrayView_Truncate(void* c_this, int32 n);
	[LinkName("QByteArrayView_Chop")]
	public static extern void QByteArrayView_Chop(void* c_this, int32 n);
	[LinkName("QByteArrayView_Trimmed")]
	public static extern void QByteArrayView_Trimmed(void* c_this);
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
	public static extern bool QByteArrayView_StartsWith(void* c_this, void other);
	[LinkName("QByteArrayView_StartsWithWithChar")]
	public static extern bool QByteArrayView_StartsWithWithChar(void* c_this, int8 c);
	[LinkName("QByteArrayView_EndsWith")]
	public static extern bool QByteArrayView_EndsWith(void* c_this, void other);
	[LinkName("QByteArrayView_EndsWithWithChar")]
	public static extern bool QByteArrayView_EndsWithWithChar(void* c_this, int8 c);
	[LinkName("QByteArrayView_IndexOf")]
	public static extern int32 QByteArrayView_IndexOf(void* c_this, void a);
	[LinkName("QByteArrayView_IndexOfWithCh")]
	public static extern int32 QByteArrayView_IndexOfWithCh(void* c_this, int8 ch);
	[LinkName("QByteArrayView_Contains")]
	public static extern bool QByteArrayView_Contains(void* c_this, void a);
	[LinkName("QByteArrayView_ContainsWithChar")]
	public static extern bool QByteArrayView_ContainsWithChar(void* c_this, int8 c);
	[LinkName("QByteArrayView_LastIndexOf")]
	public static extern int32 QByteArrayView_LastIndexOf(void* c_this, void a);
	[LinkName("QByteArrayView_LastIndexOf2")]
	public static extern int32 QByteArrayView_LastIndexOf2(void* c_this, void a, int32 from);
	[LinkName("QByteArrayView_LastIndexOfWithCh")]
	public static extern int32 QByteArrayView_LastIndexOfWithCh(void* c_this, int8 ch);
	[LinkName("QByteArrayView_Count")]
	public static extern int32 QByteArrayView_Count(void* c_this, void a);
	[LinkName("QByteArrayView_CountWithCh")]
	public static extern int32 QByteArrayView_CountWithCh(void* c_this, int8 ch);
	[LinkName("QByteArrayView_Compare")]
	public static extern int32 QByteArrayView_Compare(void* c_this, void a);
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
	public static extern int16 QByteArrayView_ToShort1(void* c_this, bool* ok);
	[LinkName("QByteArrayView_ToShort2")]
	public static extern int16 QByteArrayView_ToShort2(void* c_this, bool* ok, int32 _base);
	[LinkName("QByteArrayView_ToUShort1")]
	public static extern uint16 QByteArrayView_ToUShort1(void* c_this, bool* ok);
	[LinkName("QByteArrayView_ToUShort2")]
	public static extern uint16 QByteArrayView_ToUShort2(void* c_this, bool* ok, int32 _base);
	[LinkName("QByteArrayView_ToInt1")]
	public static extern int32 QByteArrayView_ToInt1(void* c_this, bool* ok);
	[LinkName("QByteArrayView_ToInt2")]
	public static extern int32 QByteArrayView_ToInt2(void* c_this, bool* ok, int32 _base);
	[LinkName("QByteArrayView_ToUInt1")]
	public static extern uint32 QByteArrayView_ToUInt1(void* c_this, bool* ok);
	[LinkName("QByteArrayView_ToUInt2")]
	public static extern uint32 QByteArrayView_ToUInt2(void* c_this, bool* ok, int32 _base);
	[LinkName("QByteArrayView_ToLong1")]
	public static extern c_long QByteArrayView_ToLong1(void* c_this, bool* ok);
	[LinkName("QByteArrayView_ToLong2")]
	public static extern c_long QByteArrayView_ToLong2(void* c_this, bool* ok, int32 _base);
	[LinkName("QByteArrayView_ToULong1")]
	public static extern c_ulong QByteArrayView_ToULong1(void* c_this, bool* ok);
	[LinkName("QByteArrayView_ToULong2")]
	public static extern c_ulong QByteArrayView_ToULong2(void* c_this, bool* ok, int32 _base);
	[LinkName("QByteArrayView_ToLongLong1")]
	public static extern int64 QByteArrayView_ToLongLong1(void* c_this, bool* ok);
	[LinkName("QByteArrayView_ToLongLong2")]
	public static extern int64 QByteArrayView_ToLongLong2(void* c_this, bool* ok, int32 _base);
	[LinkName("QByteArrayView_ToULongLong1")]
	public static extern uint64 QByteArrayView_ToULongLong1(void* c_this, bool* ok);
	[LinkName("QByteArrayView_ToULongLong2")]
	public static extern uint64 QByteArrayView_ToULongLong2(void* c_this, bool* ok, int32 _base);
	[LinkName("QByteArrayView_ToFloat1")]
	public static extern float QByteArrayView_ToFloat1(void* c_this, bool* ok);
	[LinkName("QByteArrayView_ToDouble1")]
	public static extern double QByteArrayView_ToDouble1(void* c_this, bool* ok);
	[LinkName("QByteArrayView_IndexOf2")]
	public static extern int32 QByteArrayView_IndexOf2(void* c_this, void a, int32 from);
	[LinkName("QByteArrayView_IndexOf22")]
	public static extern int32 QByteArrayView_IndexOf22(void* c_this, int8 ch, int32 from);
	[LinkName("QByteArrayView_LastIndexOf22")]
	public static extern int32 QByteArrayView_LastIndexOf22(void* c_this, int8 ch, int32 from);
	[LinkName("QByteArrayView_Compare2")]
	public static extern int32 QByteArrayView_Compare2(void* c_this, void a, int64 cs);
	/// Delete this object from C++ memory
	[LinkName("QByteArrayView_Delete")]
	public static extern void QByteArrayView_Delete(void* self);
}