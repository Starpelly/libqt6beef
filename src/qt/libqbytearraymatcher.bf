using System;
using System.Interop;
namespace Qt;

public class QByteArrayMatcher
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QByteArrayMatcher_new();
	}
	
	public ~this()
	{
		CQt.QByteArrayMatcher_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* other)
	{
		CQt.QByteArrayMatcher_OperatorAssign(this.nativePtr, other);
	}
	
	public void SetPattern(libqt_string pattern)
	{
		CQt.QByteArrayMatcher_SetPattern(this.nativePtr, pattern);
	}
	
	public int32 IndexIn(char8[] str, int32 lenVal)
	{
		return CQt.QByteArrayMatcher_IndexIn(this.nativePtr, str, lenVal);
	}
	
	public int32 IndexInWithData(void data)
	{
		return CQt.QByteArrayMatcher_IndexInWithData(this.nativePtr, data);
	}
	
	public libqt_string Pattern()
	{
		return CQt.QByteArrayMatcher_Pattern(this.nativePtr);
	}
	
	public int32 IndexIn3(char8[] str, int32 lenVal, int32 from)
	{
		return CQt.QByteArrayMatcher_IndexIn3(this.nativePtr, str, lenVal, from);
	}
	
	public int32 IndexIn2(void data, int32 from)
	{
		return CQt.QByteArrayMatcher_IndexIn2(this.nativePtr, data, from);
	}
	
}
extension CQt
{
	[LinkName("QByteArrayMatcher_new")]
	public static extern void* QByteArrayMatcher_new();
	[LinkName("QByteArrayMatcher_new2")]
	public static extern void* QByteArrayMatcher_new2(libqt_string pattern);
	[LinkName("QByteArrayMatcher_new3")]
	public static extern void* QByteArrayMatcher_new3(void pattern);
	[LinkName("QByteArrayMatcher_new4")]
	public static extern void* QByteArrayMatcher_new4(char8[] pattern);
	[LinkName("QByteArrayMatcher_new5")]
	public static extern void* QByteArrayMatcher_new5(void* other);
	[LinkName("QByteArrayMatcher_new6")]
	public static extern void* QByteArrayMatcher_new6(char8[] pattern, int32 length);
	[LinkName("QByteArrayMatcher_OperatorAssign")]
	public static extern void QByteArrayMatcher_OperatorAssign(void* c_this, void* other);
	[LinkName("QByteArrayMatcher_SetPattern")]
	public static extern void QByteArrayMatcher_SetPattern(void* c_this, libqt_string pattern);
	[LinkName("QByteArrayMatcher_IndexIn")]
	public static extern int32 QByteArrayMatcher_IndexIn(void* c_this, char8[] str, int32 lenVal);
	[LinkName("QByteArrayMatcher_IndexInWithData")]
	public static extern int32 QByteArrayMatcher_IndexInWithData(void* c_this, void data);
	[LinkName("QByteArrayMatcher_Pattern")]
	public static extern libqt_string QByteArrayMatcher_Pattern(void* c_this);
	[LinkName("QByteArrayMatcher_IndexIn3")]
	public static extern int32 QByteArrayMatcher_IndexIn3(void* c_this, char8[] str, int32 lenVal, int32 from);
	[LinkName("QByteArrayMatcher_IndexIn2")]
	public static extern int32 QByteArrayMatcher_IndexIn2(void* c_this, void data, int32 from);
	/// Delete this object from C++ memory
	[LinkName("QByteArrayMatcher_Delete")]
	public static extern void QByteArrayMatcher_Delete(void* self);
}
public class QStaticByteArrayMatcherBase
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QStaticByteArrayMatcherBase_new(other);
	}
}
extension CQt
{
	[LinkName("QStaticByteArrayMatcherBase_new")]
	public static extern void* QStaticByteArrayMatcherBase_new(void* other);
}