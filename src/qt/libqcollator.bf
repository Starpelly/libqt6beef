using System;
using System.Interop;
namespace Qt;

public class QCollatorSortKey
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QCollatorSortKey_new(other);
	}
	
	public ~this()
	{
		CQt.QCollatorSortKey_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* other)
	{
		CQt.QCollatorSortKey_OperatorAssign(this.nativePtr, other);
	}
	
	public void Swap(void* other)
	{
		CQt.QCollatorSortKey_Swap(this.nativePtr, other);
	}
	
	public int32 Compare(void* key)
	{
		return CQt.QCollatorSortKey_Compare(this.nativePtr, key);
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
public class QCollator
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QCollator_new();
	}
	
	public ~this()
	{
		CQt.QCollator_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* param1)
	{
		CQt.QCollator_OperatorAssign(this.nativePtr, param1);
	}
	
	public void Swap(void* other)
	{
		CQt.QCollator_Swap(this.nativePtr, other);
	}
	
	public void SetLocale(void* locale)
	{
		CQt.QCollator_SetLocale(this.nativePtr, locale);
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
	
	public int32 Compare(libqt_string s1, libqt_string s2)
	{
		return CQt.QCollator_Compare(this.nativePtr, s1, s2);
	}
	
	public int32 Compare2(void* s1, int32 len1, void* s2, int32 len2)
	{
		return CQt.QCollator_Compare2(this.nativePtr, s1, len1, s2, len2);
	}
	
	public bool OperatorCall(libqt_string s1, libqt_string s2)
	{
		return CQt.QCollator_OperatorCall(this.nativePtr, s1, s2);
	}
	
	public void SortKey(libqt_string stringVal)
	{
		CQt.QCollator_SortKey(this.nativePtr, stringVal);
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