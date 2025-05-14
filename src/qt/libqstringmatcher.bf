using System;
using System.Interop;
namespace Qt;

public interface IQStringMatcher
{
	void* NativePtr { get; }
}
public struct QStringMatcherPtr : IQStringMatcher, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QStringMatcher_new());
	}
	
	public void Dispose()
	{
		CQt.QStringMatcher_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQStringMatcher other)
	{
		CQt.QStringMatcher_OperatorAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void SetPattern(String pattern)
	{
		CQt.QStringMatcher_SetPattern(this.nativePtr, libqt_string(pattern));
	}
	
	public void SetCaseSensitivity(int64 cs)
	{
		CQt.QStringMatcher_SetCaseSensitivity(this.nativePtr, (int64)cs);
	}
	
	public int32 IndexIn(String str)
	{
		return CQt.QStringMatcher_IndexIn(this.nativePtr, libqt_string(str));
	}
	
	public int32 IndexIn2(IQChar str, int32 length)
	{
		return CQt.QStringMatcher_IndexIn2(this.nativePtr, (str == default || str.NativePtr == default) ? default : str.NativePtr, length);
	}
	
	public libqt_string Pattern()
	{
		return CQt.QStringMatcher_Pattern(this.nativePtr);
	}
	
	public int64 CaseSensitivity()
	{
		return CQt.QStringMatcher_CaseSensitivity(this.nativePtr);
	}
	
	public int32 IndexIn22(String str, int32 from)
	{
		return CQt.QStringMatcher_IndexIn22(this.nativePtr, libqt_string(str), from);
	}
	
	public int32 IndexIn3(IQChar str, int32 length, int32 from)
	{
		return CQt.QStringMatcher_IndexIn3(this.nativePtr, (str == default || str.NativePtr == default) ? default : str.NativePtr, length, from);
	}
	
}
public class QStringMatcher
{
	public QStringMatcherPtr handle;
	
	public static implicit operator QStringMatcherPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QStringMatcherPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQStringMatcher other)
	{
		this.handle.OperatorAssign(other);
	}
	
	public void SetPattern(String pattern)
	{
		this.handle.SetPattern(pattern);
	}
	
	public void SetCaseSensitivity(int64 cs)
	{
		this.handle.SetCaseSensitivity(cs);
	}
	
	public int32 IndexIn(String str)
	{
		return this.handle.IndexIn(str);
	}
	
	public int32 IndexIn2(IQChar str, int32 length)
	{
		return this.handle.IndexIn2(str, length);
	}
	
	public libqt_string Pattern()
	{
		return this.handle.Pattern();
	}
	
	public int64 CaseSensitivity()
	{
		return this.handle.CaseSensitivity();
	}
	
	public int32 IndexIn22(String str, int32 from)
	{
		return this.handle.IndexIn22(str, from);
	}
	
	public int32 IndexIn3(IQChar str, int32 length, int32 from)
	{
		return this.handle.IndexIn3(str, length, from);
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