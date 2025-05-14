using System;
using System.Interop;
namespace Qt;

public interface IQCollatorSortKey
{
	void* NativePtr { get; }
}
public struct QCollatorSortKeyPtr : IQCollatorSortKey, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQCollatorSortKey other)
	{
		return .(CQt.QCollatorSortKey_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QCollatorSortKey_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQCollatorSortKey other)
	{
		CQt.QCollatorSortKey_OperatorAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void Swap(IQCollatorSortKey other)
	{
		CQt.QCollatorSortKey_Swap(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public int32 Compare(IQCollatorSortKey key)
	{
		return CQt.QCollatorSortKey_Compare(this.nativePtr, (key == default || key.NativePtr == default) ? default : key.NativePtr);
	}
	
}
public class QCollatorSortKey
{
	public QCollatorSortKeyPtr handle;
	
	public static implicit operator QCollatorSortKeyPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQCollatorSortKey other)
	{
		this.handle = QCollatorSortKeyPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQCollatorSortKey other)
	{
		this.handle.OperatorAssign(other);
	}
	
	public void Swap(IQCollatorSortKey other)
	{
		this.handle.Swap(other);
	}
	
	public int32 Compare(IQCollatorSortKey key)
	{
		return this.handle.Compare(key);
	}
	
}
extension CQt
{
	[LinkName("QCollatorSortKey_new")]
	public static extern void* QCollatorSortKey_new(void* other);
	[LinkName("QCollatorSortKey_OperatorAssign")]
	public static extern void QCollatorSortKey_OperatorAssign(void* c_this, void* other);
	[LinkName("QCollatorSortKey_Swap")]
	public static extern void QCollatorSortKey_Swap(void* c_this, void* other);
	[LinkName("QCollatorSortKey_Compare")]
	public static extern int32 QCollatorSortKey_Compare(void* c_this, void* key);
	/// Delete this object from C++ memory
	[LinkName("QCollatorSortKey_Delete")]
	public static extern void QCollatorSortKey_Delete(void* self);
}
public interface IQCollator
{
	void* NativePtr { get; }
}
public struct QCollatorPtr : IQCollator, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QCollator_new());
	}
	
	public void Dispose()
	{
		CQt.QCollator_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQCollator param1)
	{
		CQt.QCollator_OperatorAssign(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void Swap(IQCollator other)
	{
		CQt.QCollator_Swap(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void SetLocale(IQLocale locale)
	{
		CQt.QCollator_SetLocale(this.nativePtr, (locale == default || locale.NativePtr == default) ? default : locale.NativePtr);
	}
	
	public void Locale()
	{
		CQt.QCollator_Locale(this.nativePtr);
	}
	
	public int64 CaseSensitivity()
	{
		return CQt.QCollator_CaseSensitivity(this.nativePtr);
	}
	
	public void SetCaseSensitivity(int64 cs)
	{
		CQt.QCollator_SetCaseSensitivity(this.nativePtr, (int64)cs);
	}
	
	public void SetNumericMode(bool on)
	{
		CQt.QCollator_SetNumericMode(this.nativePtr, on);
	}
	
	public bool NumericMode()
	{
		return CQt.QCollator_NumericMode(this.nativePtr);
	}
	
	public void SetIgnorePunctuation(bool on)
	{
		CQt.QCollator_SetIgnorePunctuation(this.nativePtr, on);
	}
	
	public bool IgnorePunctuation()
	{
		return CQt.QCollator_IgnorePunctuation(this.nativePtr);
	}
	
	public int32 Compare(String s1, String s2)
	{
		return CQt.QCollator_Compare(this.nativePtr, libqt_string(s1), libqt_string(s2));
	}
	
	public int32 Compare2(IQChar s1, int32 len1, IQChar s2, int32 len2)
	{
		return CQt.QCollator_Compare2(this.nativePtr, (s1 == default || s1.NativePtr == default) ? default : s1.NativePtr, len1, (s2 == default || s2.NativePtr == default) ? default : s2.NativePtr, len2);
	}
	
	public bool OperatorCall(String s1, String s2)
	{
		return CQt.QCollator_OperatorCall(this.nativePtr, libqt_string(s1), libqt_string(s2));
	}
	
	public void SortKey(String stringVal)
	{
		CQt.QCollator_SortKey(this.nativePtr, libqt_string(stringVal));
	}
	
}
public class QCollator
{
	public QCollatorPtr handle;
	
	public static implicit operator QCollatorPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QCollatorPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQCollator param1)
	{
		this.handle.OperatorAssign(param1);
	}
	
	public void Swap(IQCollator other)
	{
		this.handle.Swap(other);
	}
	
	public void SetLocale(IQLocale locale)
	{
		this.handle.SetLocale(locale);
	}
	
	public void Locale()
	{
		this.handle.Locale();
	}
	
	public int64 CaseSensitivity()
	{
		return this.handle.CaseSensitivity();
	}
	
	public void SetCaseSensitivity(int64 cs)
	{
		this.handle.SetCaseSensitivity(cs);
	}
	
	public void SetNumericMode(bool on)
	{
		this.handle.SetNumericMode(on);
	}
	
	public bool NumericMode()
	{
		return this.handle.NumericMode();
	}
	
	public void SetIgnorePunctuation(bool on)
	{
		this.handle.SetIgnorePunctuation(on);
	}
	
	public bool IgnorePunctuation()
	{
		return this.handle.IgnorePunctuation();
	}
	
	public int32 Compare(String s1, String s2)
	{
		return this.handle.Compare(s1, s2);
	}
	
	public int32 Compare2(IQChar s1, int32 len1, IQChar s2, int32 len2)
	{
		return this.handle.Compare2(s1, len1, s2, len2);
	}
	
	public bool OperatorCall(String s1, String s2)
	{
		return this.handle.OperatorCall(s1, s2);
	}
	
	public void SortKey(String stringVal)
	{
		this.handle.SortKey(stringVal);
	}
	
}
extension CQt
{
	[LinkName("QCollator_new")]
	public static extern void* QCollator_new();
	[LinkName("QCollator_new2")]
	public static extern void* QCollator_new2(void* locale);
	[LinkName("QCollator_new3")]
	public static extern void* QCollator_new3(void* param1);
	[LinkName("QCollator_OperatorAssign")]
	public static extern void QCollator_OperatorAssign(void* c_this, void* param1);
	[LinkName("QCollator_Swap")]
	public static extern void QCollator_Swap(void* c_this, void* other);
	[LinkName("QCollator_SetLocale")]
	public static extern void QCollator_SetLocale(void* c_this, void* locale);
	[LinkName("QCollator_Locale")]
	public static extern void QCollator_Locale(void* c_this);
	[LinkName("QCollator_CaseSensitivity")]
	public static extern int64 QCollator_CaseSensitivity(void* c_this);
	[LinkName("QCollator_SetCaseSensitivity")]
	public static extern void QCollator_SetCaseSensitivity(void* c_this, int64 cs);
	[LinkName("QCollator_SetNumericMode")]
	public static extern void QCollator_SetNumericMode(void* c_this, bool on);
	[LinkName("QCollator_NumericMode")]
	public static extern bool QCollator_NumericMode(void* c_this);
	[LinkName("QCollator_SetIgnorePunctuation")]
	public static extern void QCollator_SetIgnorePunctuation(void* c_this, bool on);
	[LinkName("QCollator_IgnorePunctuation")]
	public static extern bool QCollator_IgnorePunctuation(void* c_this);
	[LinkName("QCollator_Compare")]
	public static extern int32 QCollator_Compare(void* c_this, libqt_string s1, libqt_string s2);
	[LinkName("QCollator_Compare2")]
	public static extern int32 QCollator_Compare2(void* c_this, void* s1, int32 len1, void* s2, int32 len2);
	[LinkName("QCollator_OperatorCall")]
	public static extern bool QCollator_OperatorCall(void* c_this, libqt_string s1, libqt_string s2);
	[LinkName("QCollator_SortKey")]
	public static extern void QCollator_SortKey(void* c_this, libqt_string stringVal);
	/// Delete this object from C++ memory
	[LinkName("QCollator_Delete")]
	public static extern void QCollator_Delete(void* self);
}