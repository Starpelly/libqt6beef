using System;
using System.Interop;
namespace Qt;

public interface IQCollatorSortKey
{
	void* NativePtr { get; }
}
public class QCollatorSortKey : IQCollatorSortKey
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQCollatorSortKey other)
	{
		this.nativePtr = CQt.QCollatorSortKey_new((other == default) ? default : (void*)other.NativePtr);
	}
	
	public ~this()
	{
		CQt.QCollatorSortKey_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQCollatorSortKey other)
	{
		CQt.QCollatorSortKey_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public void Swap(IQCollatorSortKey other)
	{
		CQt.QCollatorSortKey_Swap(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public int32 Compare(IQCollatorSortKey key)
	{
		return CQt.QCollatorSortKey_Compare(this.nativePtr, (key == default) ? default : (void*)key.NativePtr);
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
public class QCollator : IQCollator
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QCollator_new();
	}
	
	public ~this()
	{
		CQt.QCollator_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQCollator param1)
	{
		CQt.QCollator_OperatorAssign(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void Swap(IQCollator other)
	{
		CQt.QCollator_Swap(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public void SetLocale(IQLocale locale)
	{
		CQt.QCollator_SetLocale(this.nativePtr, (locale == default) ? default : (void*)locale.NativePtr);
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
		CQt.QCollator_SetCaseSensitivity(this.nativePtr, cs);
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
		return CQt.QCollator_Compare2(this.nativePtr, (s1 == null) ? null : (void*)s1.NativePtr, len1, (s2 == null) ? null : (void*)s2.NativePtr, len2);
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