using System;
using System.Interop;
namespace Qt;

public struct QCollatorSortKey
{
	[LinkName("QCollatorSortKey_new")]
	public static extern QCollatorSortKey* QCollatorSortKey_new(QCollatorSortKey* other);
	[LinkName("QCollatorSortKey_OperatorAssign")]
	public static extern void QCollatorSortKey_OperatorAssign(Self* c_this, QCollatorSortKey* other);
	[LinkName("QCollatorSortKey_Swap")]
	public static extern void QCollatorSortKey_Swap(Self* c_this, QCollatorSortKey* other);
	[LinkName("QCollatorSortKey_Compare")]
	public static extern int32 QCollatorSortKey_Compare(Self* c_this, QCollatorSortKey* key);
}
public struct QCollator
{
	[LinkName("QCollator_new")]
	public static extern QCollator* QCollator_new();
	[LinkName("QCollator_new2")]
	public static extern QCollator* QCollator_new2(QLocale* locale);
	[LinkName("QCollator_new3")]
	public static extern QCollator* QCollator_new3(QCollator* param1);
	[LinkName("QCollator_OperatorAssign")]
	public static extern void QCollator_OperatorAssign(Self* c_this, QCollator* param1);
	[LinkName("QCollator_Swap")]
	public static extern void QCollator_Swap(Self* c_this, QCollator* other);
	[LinkName("QCollator_SetLocale")]
	public static extern void QCollator_SetLocale(Self* c_this, QLocale* locale);
	[LinkName("QCollator_Locale")]
	public static extern QLocale QCollator_Locale(Self* c_this);
	[LinkName("QCollator_CaseSensitivity")]
	public static extern int64 QCollator_CaseSensitivity(Self* c_this);
	[LinkName("QCollator_SetCaseSensitivity")]
	public static extern void QCollator_SetCaseSensitivity(Self* c_this, int64 cs);
	[LinkName("QCollator_SetNumericMode")]
	public static extern void QCollator_SetNumericMode(Self* c_this, bool on);
	[LinkName("QCollator_NumericMode")]
	public static extern bool QCollator_NumericMode(Self* c_this);
	[LinkName("QCollator_SetIgnorePunctuation")]
	public static extern void QCollator_SetIgnorePunctuation(Self* c_this, bool on);
	[LinkName("QCollator_IgnorePunctuation")]
	public static extern bool QCollator_IgnorePunctuation(Self* c_this);
	[LinkName("QCollator_Compare")]
	public static extern int32 QCollator_Compare(Self* c_this, libqt_string s1, libqt_string s2);
	[LinkName("QCollator_Compare2")]
	public static extern int32 QCollator_Compare2(Self* c_this, QChar* s1, int32 len1, QChar* s2, int32 len2);
	[LinkName("QCollator_OperatorCall")]
	public static extern bool QCollator_OperatorCall(Self* c_this, libqt_string s1, libqt_string s2);
	[LinkName("QCollator_SortKey")]
	public static extern QCollatorSortKey QCollator_SortKey(Self* c_this, libqt_string stringVal);
}