using System;
using System.Interop;
namespace Qt;

public class QStringMatcher
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QStringMatcher_new();
	}
	
	public ~this()
	{
		CQt.QStringMatcher_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* other)
	{
		CQt.QStringMatcher_OperatorAssign(this.nativePtr, other);
	}
	
	public void SetPattern(libqt_string pattern)
	{
		CQt.QStringMatcher_SetPattern(this.nativePtr, pattern);
	}
	
	public void SetCaseSensitivity(int64 cs)
	{
		CQt.QStringMatcher_SetCaseSensitivity(this.nativePtr, cs);
	}
	
	public int32 IndexIn(libqt_string str)
	{
		return CQt.QStringMatcher_IndexIn(this.nativePtr, str);
	}
	
	public int32 IndexIn2(void* str, int32 length)
	{
		return CQt.QStringMatcher_IndexIn2(this.nativePtr, str, length);
	}
	
	public libqt_string Pattern()
	{
		return CQt.QStringMatcher_Pattern(this.nativePtr);
	}
	
	public int64 CaseSensitivity()
	{
		return CQt.QStringMatcher_CaseSensitivity(this.nativePtr);
	}
	
	public int32 IndexIn22(libqt_string str, int32 from)
	{
		return CQt.QStringMatcher_IndexIn22(this.nativePtr, str, from);
	}
	
	public int32 IndexIn3(void* str, int32 length, int32 from)
	{
		return CQt.QStringMatcher_IndexIn3(this.nativePtr, str, length, from);
	}
	
}
extension CQt
{
	[LinkName("QStringMatcher_new")]
	public static extern void* QStringMatcher_new();
	[LinkName("QStringMatcher_new2")]
	public static extern void* QStringMatcher_new2(libqt_string pattern);
	[LinkName("QStringMatcher_new3")]
	public static extern void* QStringMatcher_new3(void* uc, int32 lenVal);
	[LinkName("QStringMatcher_new4")]
	public static extern void* QStringMatcher_new4(void* other);
	[LinkName("QStringMatcher_new5")]
	public static extern void* QStringMatcher_new5(libqt_string pattern, int64 cs);
	[LinkName("QStringMatcher_new6")]
	public static extern void* QStringMatcher_new6(void* uc, int32 lenVal, int64 cs);
	[LinkName("QStringMatcher_OperatorAssign")]
	public static extern void QStringMatcher_OperatorAssign(void* c_this, void* other);
	[LinkName("QStringMatcher_SetPattern")]
	public static extern void QStringMatcher_SetPattern(void* c_this, libqt_string pattern);
	[LinkName("QStringMatcher_SetCaseSensitivity")]
	public static extern void QStringMatcher_SetCaseSensitivity(void* c_this, int64 cs);
	[LinkName("QStringMatcher_IndexIn")]
	public static extern int32 QStringMatcher_IndexIn(void* c_this, libqt_string str);
	[LinkName("QStringMatcher_IndexIn2")]
	public static extern int32 QStringMatcher_IndexIn2(void* c_this, void* str, int32 length);
	[LinkName("QStringMatcher_Pattern")]
	public static extern libqt_string QStringMatcher_Pattern(void* c_this);
	[LinkName("QStringMatcher_CaseSensitivity")]
	public static extern int64 QStringMatcher_CaseSensitivity(void* c_this);
	[LinkName("QStringMatcher_IndexIn22")]
	public static extern int32 QStringMatcher_IndexIn22(void* c_this, libqt_string str, int32 from);
	[LinkName("QStringMatcher_IndexIn3")]
	public static extern int32 QStringMatcher_IndexIn3(void* c_this, void* str, int32 length, int32 from);
	/// Delete this object from C++ memory
	[LinkName("QStringMatcher_Delete")]
	public static extern void QStringMatcher_Delete(void* self);
}