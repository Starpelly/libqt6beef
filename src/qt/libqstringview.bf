using System;
using System.Interop;
namespace Qt;

public interface IQStringView
{
	void* NativePtr { get; }
}
public struct QStringViewPtr : IQStringView, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QStringView_new());
	}
	
	public void Dispose()
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
	
	public int32 CompareWithQChar(IQChar c)
	{
		return CQt.QStringView_CompareWithQChar(this.nativePtr, default);
	}
	
	public int32 Compare2(IQChar c, int64 cs)
	{
		return CQt.QStringView_Compare2(this.nativePtr, default, (int64)cs);
	}
	
	public bool StartsWithWithQChar(IQChar c)
	{
		return CQt.QStringView_StartsWithWithQChar(this.nativePtr, default);
	}
	
	public bool StartsWith2(IQChar c, int64 cs)
	{
		return CQt.QStringView_StartsWith2(this.nativePtr, default, (int64)cs);
	}
	
	public bool EndsWithWithQChar(IQChar c)
	{
		return CQt.QStringView_EndsWithWithQChar(this.nativePtr, default);
	}
	
	public bool EndsWith2(IQChar c, int64 cs)
	{
		return CQt.QStringView_EndsWith2(this.nativePtr, default, (int64)cs);
	}
	
	public int32 IndexOf(IQChar c)
	{
		return CQt.QStringView_IndexOf(this.nativePtr, default);
	}
	
	public bool Contains(IQChar c)
	{
		return CQt.QStringView_Contains(this.nativePtr, default);
	}
	
	public int32 Count(IQChar c)
	{
		return CQt.QStringView_Count(this.nativePtr, default);
	}
	
	public int32 LastIndexOf(IQChar c)
	{
		return CQt.QStringView_LastIndexOf(this.nativePtr, default);
	}
	
	public int32 LastIndexOf2(IQChar c, int32 from)
	{
		return CQt.QStringView_LastIndexOf2(this.nativePtr, default, from);
	}
	
	public int32 IndexOfWithRe(IQRegularExpression re)
	{
		return CQt.QStringView_IndexOfWithRe(this.nativePtr, (re == default || re.NativePtr == default) ? default : re.NativePtr);
	}
	
	public int32 LastIndexOf5(IQRegularExpression re, int32 from)
	{
		return CQt.QStringView_LastIndexOf5(this.nativePtr, (re == default || re.NativePtr == default) ? default : re.NativePtr, from);
	}
	
	public bool ContainsWithRe(IQRegularExpression re)
	{
		return CQt.QStringView_ContainsWithRe(this.nativePtr, (re == default || re.NativePtr == default) ? default : re.NativePtr);
	}
	
	public int32 CountWithRe(IQRegularExpression re)
	{
		return CQt.QStringView_CountWithRe(this.nativePtr, (re == default || re.NativePtr == default) ? default : re.NativePtr);
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
	
	public int32 IndexOf2(IQChar c, int32 from)
	{
		return CQt.QStringView_IndexOf2(this.nativePtr, default, from);
	}
	
	public int32 IndexOf3(IQChar c, int32 from, int64 cs)
	{
		return CQt.QStringView_IndexOf3(this.nativePtr, default, from, (int64)cs);
	}
	
	public bool Contains2(IQChar c, int64 cs)
	{
		return CQt.QStringView_Contains2(this.nativePtr, default, (int64)cs);
	}
	
	public int32 Count2(IQChar c, int64 cs)
	{
		return CQt.QStringView_Count2(this.nativePtr, default, (int64)cs);
	}
	
	public int32 LastIndexOf22(IQChar c, int64 cs)
	{
		return CQt.QStringView_LastIndexOf22(this.nativePtr, default, (int64)cs);
	}
	
	public int32 LastIndexOf32(IQChar c, int32 from, int64 cs)
	{
		return CQt.QStringView_LastIndexOf32(this.nativePtr, default, from, (int64)cs);
	}
	
	public int32 IndexOf24(IQRegularExpression re, int32 from)
	{
		return CQt.QStringView_IndexOf24(this.nativePtr, (re == default || re.NativePtr == default) ? default : re.NativePtr, from);
	}
	
	public int32 IndexOf34(IQRegularExpression re, int32 from, IQRegularExpressionMatch rmatch)
	{
		return CQt.QStringView_IndexOf34(this.nativePtr, (re == default || re.NativePtr == default) ? default : re.NativePtr, from, (rmatch == default || rmatch.NativePtr == default) ? default : rmatch.NativePtr);
	}
	
	public int32 LastIndexOf35(IQRegularExpression re, int32 from, IQRegularExpressionMatch rmatch)
	{
		return CQt.QStringView_LastIndexOf35(this.nativePtr, (re == default || re.NativePtr == default) ? default : re.NativePtr, from, (rmatch == default || rmatch.NativePtr == default) ? default : rmatch.NativePtr);
	}
	
	public bool Contains24(IQRegularExpression re, IQRegularExpressionMatch rmatch)
	{
		return CQt.QStringView_Contains24(this.nativePtr, (re == default || re.NativePtr == default) ? default : re.NativePtr, (rmatch == default || rmatch.NativePtr == default) ? default : rmatch.NativePtr);
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
public class QStringView
{
	public QStringViewPtr handle;
	
	public static implicit operator QStringViewPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QStringViewPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public libqt_string ToString()
	{
		return this.handle.ToString();
	}
	
	public int32 Size()
	{
		return this.handle.Size();
	}
	
	public void* Data()
	{
		return this.handle.Data();
	}
	
	public void* ConstData()
	{
		return this.handle.ConstData();
	}
	
	public void OperatorSubscript(int32 n)
	{
		this.handle.OperatorSubscript(n);
	}
	
	public libqt_string ToLatin1()
	{
		return this.handle.ToLatin1();
	}
	
	public libqt_string ToUtf8()
	{
		return this.handle.ToUtf8();
	}
	
	public libqt_string ToLocal8Bit()
	{
		return this.handle.ToLocal8Bit();
	}
	
	public uint32[] ToUcs4()
	{
		return this.handle.ToUcs4();
	}
	
	public void At(int32 n)
	{
		this.handle.At(n);
	}
	
	public void Truncate(int32 n)
	{
		this.handle.Truncate(n);
	}
	
	public void Chop(int32 n)
	{
		this.handle.Chop(n);
	}
	
	public int32 CompareWithQChar(IQChar c)
	{
		return this.handle.CompareWithQChar(default);
	}
	
	public int32 Compare2(IQChar c, int64 cs)
	{
		return this.handle.Compare2(default, cs);
	}
	
	public bool StartsWithWithQChar(IQChar c)
	{
		return this.handle.StartsWithWithQChar(default);
	}
	
	public bool StartsWith2(IQChar c, int64 cs)
	{
		return this.handle.StartsWith2(default, cs);
	}
	
	public bool EndsWithWithQChar(IQChar c)
	{
		return this.handle.EndsWithWithQChar(default);
	}
	
	public bool EndsWith2(IQChar c, int64 cs)
	{
		return this.handle.EndsWith2(default, cs);
	}
	
	public int32 IndexOf(IQChar c)
	{
		return this.handle.IndexOf(default);
	}
	
	public bool Contains(IQChar c)
	{
		return this.handle.Contains(default);
	}
	
	public int32 Count(IQChar c)
	{
		return this.handle.Count(default);
	}
	
	public int32 LastIndexOf(IQChar c)
	{
		return this.handle.LastIndexOf(default);
	}
	
	public int32 LastIndexOf2(IQChar c, int32 from)
	{
		return this.handle.LastIndexOf2(default, from);
	}
	
	public int32 IndexOfWithRe(IQRegularExpression re)
	{
		return this.handle.IndexOfWithRe(re);
	}
	
	public int32 LastIndexOf5(IQRegularExpression re, int32 from)
	{
		return this.handle.LastIndexOf5(re, from);
	}
	
	public bool ContainsWithRe(IQRegularExpression re)
	{
		return this.handle.ContainsWithRe(re);
	}
	
	public int32 CountWithRe(IQRegularExpression re)
	{
		return this.handle.CountWithRe(re);
	}
	
	public bool IsRightToLeft()
	{
		return this.handle.IsRightToLeft();
	}
	
	public bool IsValidUtf16()
	{
		return this.handle.IsValidUtf16();
	}
	
	public int16 ToShort()
	{
		return this.handle.ToShort();
	}
	
	public uint16 ToUShort()
	{
		return this.handle.ToUShort();
	}
	
	public int32 ToInt()
	{
		return this.handle.ToInt();
	}
	
	public uint32 ToUInt()
	{
		return this.handle.ToUInt();
	}
	
	public c_long ToLong()
	{
		return this.handle.ToLong();
	}
	
	public c_ulong ToULong()
	{
		return this.handle.ToULong();
	}
	
	public int64 ToLongLong()
	{
		return this.handle.ToLongLong();
	}
	
	public uint64 ToULongLong()
	{
		return this.handle.ToULongLong();
	}
	
	public float ToFloat()
	{
		return this.handle.ToFloat();
	}
	
	public double ToDouble()
	{
		return this.handle.ToDouble();
	}
	
	public void* Begin()
	{
		return this.handle.Begin();
	}
	
	public void* End()
	{
		return this.handle.End();
	}
	
	public void* Cbegin()
	{
		return this.handle.Cbegin();
	}
	
	public void* Cend()
	{
		return this.handle.Cend();
	}
	
	public bool Empty()
	{
		return this.handle.Empty();
	}
	
	public void Front()
	{
		this.handle.Front();
	}
	
	public void Back()
	{
		this.handle.Back();
	}
	
	public void* ConstBegin()
	{
		return this.handle.ConstBegin();
	}
	
	public void* ConstEnd()
	{
		return this.handle.ConstEnd();
	}
	
	public bool IsNull()
	{
		return this.handle.IsNull();
	}
	
	public bool IsEmpty()
	{
		return this.handle.IsEmpty();
	}
	
	public int32 Length()
	{
		return this.handle.Length();
	}
	
	public void First2()
	{
		this.handle.First2();
	}
	
	public void Last2()
	{
		this.handle.Last2();
	}
	
	public int32 IndexOf2(IQChar c, int32 from)
	{
		return this.handle.IndexOf2(default, from);
	}
	
	public int32 IndexOf3(IQChar c, int32 from, int64 cs)
	{
		return this.handle.IndexOf3(default, from, cs);
	}
	
	public bool Contains2(IQChar c, int64 cs)
	{
		return this.handle.Contains2(default, cs);
	}
	
	public int32 Count2(IQChar c, int64 cs)
	{
		return this.handle.Count2(default, cs);
	}
	
	public int32 LastIndexOf22(IQChar c, int64 cs)
	{
		return this.handle.LastIndexOf22(default, cs);
	}
	
	public int32 LastIndexOf32(IQChar c, int32 from, int64 cs)
	{
		return this.handle.LastIndexOf32(default, from, cs);
	}
	
	public int32 IndexOf24(IQRegularExpression re, int32 from)
	{
		return this.handle.IndexOf24(re, from);
	}
	
	public int32 IndexOf34(IQRegularExpression re, int32 from, IQRegularExpressionMatch rmatch)
	{
		return this.handle.IndexOf34(re, from, rmatch);
	}
	
	public int32 LastIndexOf35(IQRegularExpression re, int32 from, IQRegularExpressionMatch rmatch)
	{
		return this.handle.LastIndexOf35(re, from, rmatch);
	}
	
	public bool Contains24(IQRegularExpression re, IQRegularExpressionMatch rmatch)
	{
		return this.handle.Contains24(re, rmatch);
	}
	
	public int16 ToShort1(bool* ok)
	{
		return this.handle.ToShort1(ok);
	}
	
	public int16 ToShort2(bool* ok, int32 _base)
	{
		return this.handle.ToShort2(ok, _base);
	}
	
	public uint16 ToUShort1(bool* ok)
	{
		return this.handle.ToUShort1(ok);
	}
	
	public uint16 ToUShort2(bool* ok, int32 _base)
	{
		return this.handle.ToUShort2(ok, _base);
	}
	
	public int32 ToInt1(bool* ok)
	{
		return this.handle.ToInt1(ok);
	}
	
	public int32 ToInt2(bool* ok, int32 _base)
	{
		return this.handle.ToInt2(ok, _base);
	}
	
	public uint32 ToUInt1(bool* ok)
	{
		return this.handle.ToUInt1(ok);
	}
	
	public uint32 ToUInt2(bool* ok, int32 _base)
	{
		return this.handle.ToUInt2(ok, _base);
	}
	
	public c_long ToLong1(bool* ok)
	{
		return this.handle.ToLong1(ok);
	}
	
	public c_long ToLong2(bool* ok, int32 _base)
	{
		return this.handle.ToLong2(ok, _base);
	}
	
	public c_ulong ToULong1(bool* ok)
	{
		return this.handle.ToULong1(ok);
	}
	
	public c_ulong ToULong2(bool* ok, int32 _base)
	{
		return this.handle.ToULong2(ok, _base);
	}
	
	public int64 ToLongLong1(bool* ok)
	{
		return this.handle.ToLongLong1(ok);
	}
	
	public int64 ToLongLong2(bool* ok, int32 _base)
	{
		return this.handle.ToLongLong2(ok, _base);
	}
	
	public uint64 ToULongLong1(bool* ok)
	{
		return this.handle.ToULongLong1(ok);
	}
	
	public uint64 ToULongLong2(bool* ok, int32 _base)
	{
		return this.handle.ToULongLong2(ok, _base);
	}
	
	public float ToFloat1(bool* ok)
	{
		return this.handle.ToFloat1(ok);
	}
	
	public double ToDouble1(bool* ok)
	{
		return this.handle.ToDouble1(ok);
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