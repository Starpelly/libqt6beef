using System;
using System.Interop;
namespace Qt;

public struct QCollatorSortKey
{
	[LinkName("QCollatorSortKey_new")]
	public static extern void* QCollatorSortKey_new(QCollatorSortKey other);
	[LinkName("QCollatorSortKey_OperatorAssign")]
	public static extern void QCollatorSortKey_OperatorAssign(void* c_this, QCollatorSortKey other);
	[LinkName("QCollatorSortKey_Swap")]
	public static extern void QCollatorSortKey_Swap(void* c_this, QCollatorSortKey other);
	[LinkName("QCollatorSortKey_Compare")]
	public static extern int32 QCollatorSortKey_Compare(void* c_this, QCollatorSortKey key);
}
public struct QCollator
{
	[LinkName("QCollator_new")]
	public static extern void* QCollator_new();
	[LinkName("QCollator_new2")]
	public static extern void* QCollator_new2(QLocale locale);
	[LinkName("QCollator_new3")]
	public static extern void* QCollator_new3(QCollator param1);
	[LinkName("QCollator_OperatorAssign")]
	public static extern void QCollator_OperatorAssign(void* c_this, QCollator param1);
	[LinkName("QCollator_Swap")]
	public static extern void QCollator_Swap(void* c_this, QCollator other);
	[LinkName("QCollator_SetLocale")]
	public static extern void QCollator_SetLocale(void* c_this, QLocale locale);
	[LinkName("QCollator_Locale")]
	public static extern QLocale QCollator_Locale(void* c_this);
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
	public static extern int32 QCollator_Compare(void* c_this, char8[] s1, char8[] s2);
	[LinkName("QCollator_Compare2")]
	public static extern int32 QCollator_Compare2(void* c_this, QChar s1, int32 len1, QChar s2, int32 len2);
	[LinkName("QCollator_OperatorCall")]
	public static extern bool QCollator_OperatorCall(void* c_this, char8[] s1, char8[] s2);
	[LinkName("QCollator_SortKey")]
	public static extern QCollatorSortKey QCollator_SortKey(void* c_this, char8[] stringVal);
}