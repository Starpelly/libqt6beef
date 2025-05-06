using System;
using System.Interop;
namespace Qt;

public struct QJsonObject
{
	[LinkName("QJsonObject_new")]
	public static extern QJsonObject* QJsonObject_new();
	[LinkName("QJsonObject_new2")]
	public static extern QJsonObject* QJsonObject_new2(QJsonObject* other);
	[LinkName("QJsonObject_OperatorAssign")]
	public static extern void QJsonObject_OperatorAssign(Self* c_this, QJsonObject* other);
	[LinkName("QJsonObject_Swap")]
	public static extern void QJsonObject_Swap(Self* c_this, QJsonObject* other);
	[LinkName("QJsonObject_FromVariantMap")]
	public static extern QJsonObject QJsonObject_FromVariantMap(void* mapVal);
	[LinkName("QJsonObject_ToVariantMap")]
	public static extern void* QJsonObject_ToVariantMap(Self* c_this);
	[LinkName("QJsonObject_FromVariantHash")]
	public static extern QJsonObject QJsonObject_FromVariantHash(void* mapVal);
	[LinkName("QJsonObject_ToVariantHash")]
	public static extern void* QJsonObject_ToVariantHash(Self* c_this);
	[LinkName("QJsonObject_Keys")]
	public static extern libqt_string[] QJsonObject_Keys(Self* c_this);
	[LinkName("QJsonObject_Size")]
	public static extern int32 QJsonObject_Size(Self* c_this);
	[LinkName("QJsonObject_Count")]
	public static extern int32 QJsonObject_Count(Self* c_this);
	[LinkName("QJsonObject_Length")]
	public static extern int32 QJsonObject_Length(Self* c_this);
	[LinkName("QJsonObject_IsEmpty")]
	public static extern bool QJsonObject_IsEmpty(Self* c_this);
	[LinkName("QJsonObject_Value")]
	public static extern QJsonValue QJsonObject_Value(Self* c_this, libqt_string key);
	[LinkName("QJsonObject_OperatorSubscript")]
	public static extern QJsonValue QJsonObject_OperatorSubscript(Self* c_this, libqt_string key);
	[LinkName("QJsonObject_OperatorSubscriptWithKey")]
	public static extern QJsonValueRef QJsonObject_OperatorSubscriptWithKey(Self* c_this, libqt_string key);
	[LinkName("QJsonObject_Remove")]
	public static extern void QJsonObject_Remove(Self* c_this, libqt_string key);
	[LinkName("QJsonObject_Take")]
	public static extern QJsonValue QJsonObject_Take(Self* c_this, libqt_string key);
	[LinkName("QJsonObject_Contains")]
	public static extern bool QJsonObject_Contains(Self* c_this, libqt_string key);
	[LinkName("QJsonObject_OperatorEqual")]
	public static extern bool QJsonObject_OperatorEqual(Self* c_this, QJsonObject* other);
	[LinkName("QJsonObject_OperatorNotEqual")]
	public static extern bool QJsonObject_OperatorNotEqual(Self* c_this, QJsonObject* other);
	[LinkName("QJsonObject_Begin")]
	public static extern QJsonObject__iterator QJsonObject_Begin(Self* c_this);
	[LinkName("QJsonObject_Begin2")]
	public static extern QJsonObject__const_iterator QJsonObject_Begin2(Self* c_this);
	[LinkName("QJsonObject_ConstBegin")]
	public static extern QJsonObject__const_iterator QJsonObject_ConstBegin(Self* c_this);
	[LinkName("QJsonObject_End")]
	public static extern QJsonObject__iterator QJsonObject_End(Self* c_this);
	[LinkName("QJsonObject_End2")]
	public static extern QJsonObject__const_iterator QJsonObject_End2(Self* c_this);
	[LinkName("QJsonObject_ConstEnd")]
	public static extern QJsonObject__const_iterator QJsonObject_ConstEnd(Self* c_this);
	[LinkName("QJsonObject_Erase")]
	public static extern QJsonObject__iterator QJsonObject_Erase(Self* c_this, QJsonObject__iterator it);
	[LinkName("QJsonObject_Find")]
	public static extern QJsonObject__iterator QJsonObject_Find(Self* c_this, libqt_string key);
	[LinkName("QJsonObject_FindWithKey")]
	public static extern QJsonObject__const_iterator QJsonObject_FindWithKey(Self* c_this, libqt_string key);
	[LinkName("QJsonObject_ConstFind")]
	public static extern QJsonObject__const_iterator QJsonObject_ConstFind(Self* c_this, libqt_string key);
	[LinkName("QJsonObject_Insert")]
	public static extern QJsonObject__iterator QJsonObject_Insert(Self* c_this, libqt_string key, QJsonValue* value);
	[LinkName("QJsonObject_Empty")]
	public static extern bool QJsonObject_Empty(Self* c_this);
}
public struct QJsonObject__iterator
{
	[LinkName("QJsonObject__iterator_new")]
	public static extern QJsonObject__iterator* QJsonObject__iterator_new(QJsonObject__iterator* other);
	[LinkName("QJsonObject__iterator_new2")]
	public static extern QJsonObject__iterator* QJsonObject__iterator_new2();
	[LinkName("QJsonObject__iterator_new3")]
	public static extern QJsonObject__iterator* QJsonObject__iterator_new3(QJsonObject* obj, int32 index);
	[LinkName("QJsonObject__iterator_new4")]
	public static extern QJsonObject__iterator* QJsonObject__iterator_new4(QJsonObject__iterator* other);
	[LinkName("QJsonObject__iterator_OperatorAssign")]
	public static extern void QJsonObject__iterator_OperatorAssign(Self* c_this, QJsonObject__iterator* other);
	[LinkName("QJsonObject__iterator_Key")]
	public static extern libqt_string QJsonObject__iterator_Key(Self* c_this);
	[LinkName("QJsonObject__iterator_Value")]
	public static extern QJsonValueRef QJsonObject__iterator_Value(Self* c_this);
	[LinkName("QJsonObject__iterator_OperatorMultiply")]
	public static extern QJsonValueRef QJsonObject__iterator_OperatorMultiply(Self* c_this);
	[LinkName("QJsonObject__iterator_OperatorMinusGreater")]
	public static extern QJsonValueConstRef* QJsonObject__iterator_OperatorMinusGreater(Self* c_this);
	[LinkName("QJsonObject__iterator_OperatorMinusGreater2")]
	public static extern QJsonValueRef* QJsonObject__iterator_OperatorMinusGreater2(Self* c_this);
	[LinkName("QJsonObject__iterator_OperatorSubscript")]
	public static extern QJsonValueRef QJsonObject__iterator_OperatorSubscript(Self* c_this, int32 j);
	[LinkName("QJsonObject__iterator_OperatorEqual")]
	public static extern bool QJsonObject__iterator_OperatorEqual(Self* c_this, QJsonObject__iterator* other);
	[LinkName("QJsonObject__iterator_OperatorNotEqual")]
	public static extern bool QJsonObject__iterator_OperatorNotEqual(Self* c_this, QJsonObject__iterator* other);
	[LinkName("QJsonObject__iterator_OperatorLesser")]
	public static extern bool QJsonObject__iterator_OperatorLesser(Self* c_this, QJsonObject__iterator* other);
	[LinkName("QJsonObject__iterator_OperatorLesserOrEqual")]
	public static extern bool QJsonObject__iterator_OperatorLesserOrEqual(Self* c_this, QJsonObject__iterator* other);
	[LinkName("QJsonObject__iterator_OperatorGreater")]
	public static extern bool QJsonObject__iterator_OperatorGreater(Self* c_this, QJsonObject__iterator* other);
	[LinkName("QJsonObject__iterator_OperatorGreaterOrEqual")]
	public static extern bool QJsonObject__iterator_OperatorGreaterOrEqual(Self* c_this, QJsonObject__iterator* other);
	[LinkName("QJsonObject__iterator_OperatorPlusPlus")]
	public static extern QJsonObject__iterator* QJsonObject__iterator_OperatorPlusPlus(Self* c_this);
	[LinkName("QJsonObject__iterator_OperatorPlusPlusWithInt")]
	public static extern QJsonObject__iterator QJsonObject__iterator_OperatorPlusPlusWithInt(Self* c_this, int32 param1);
	[LinkName("QJsonObject__iterator_OperatorMinusMinus")]
	public static extern QJsonObject__iterator* QJsonObject__iterator_OperatorMinusMinus(Self* c_this);
	[LinkName("QJsonObject__iterator_OperatorMinusMinusWithInt")]
	public static extern QJsonObject__iterator QJsonObject__iterator_OperatorMinusMinusWithInt(Self* c_this, int32 param1);
	[LinkName("QJsonObject__iterator_OperatorPlus")]
	public static extern QJsonObject__iterator QJsonObject__iterator_OperatorPlus(Self* c_this, int32 j);
	[LinkName("QJsonObject__iterator_OperatorMinus")]
	public static extern QJsonObject__iterator QJsonObject__iterator_OperatorMinus(Self* c_this, int32 j);
	[LinkName("QJsonObject__iterator_OperatorPlusAssign")]
	public static extern QJsonObject__iterator* QJsonObject__iterator_OperatorPlusAssign(Self* c_this, int32 j);
	[LinkName("QJsonObject__iterator_OperatorMinusAssign")]
	public static extern QJsonObject__iterator* QJsonObject__iterator_OperatorMinusAssign(Self* c_this, int32 j);
	[LinkName("QJsonObject__iterator_OperatorMinusWithQJsonObjectiterator")]
	public static extern int32 QJsonObject__iterator_OperatorMinusWithQJsonObjectiterator(Self* c_this, QJsonObject__iterator j);
	[LinkName("QJsonObject__iterator_OperatorEqualWithOther")]
	public static extern bool QJsonObject__iterator_OperatorEqualWithOther(Self* c_this, QJsonObject__const_iterator* other);
	[LinkName("QJsonObject__iterator_OperatorNotEqualWithOther")]
	public static extern bool QJsonObject__iterator_OperatorNotEqualWithOther(Self* c_this, QJsonObject__const_iterator* other);
	[LinkName("QJsonObject__iterator_OperatorLesserWithOther")]
	public static extern bool QJsonObject__iterator_OperatorLesserWithOther(Self* c_this, QJsonObject__const_iterator* other);
	[LinkName("QJsonObject__iterator_OperatorLesserOrEqualWithOther")]
	public static extern bool QJsonObject__iterator_OperatorLesserOrEqualWithOther(Self* c_this, QJsonObject__const_iterator* other);
	[LinkName("QJsonObject__iterator_OperatorGreaterWithOther")]
	public static extern bool QJsonObject__iterator_OperatorGreaterWithOther(Self* c_this, QJsonObject__const_iterator* other);
	[LinkName("QJsonObject__iterator_OperatorGreaterOrEqualWithOther")]
	public static extern bool QJsonObject__iterator_OperatorGreaterOrEqualWithOther(Self* c_this, QJsonObject__const_iterator* other);
}
public struct QJsonObject__const_iterator
{
	[LinkName("QJsonObject__const_iterator_new")]
	public static extern QJsonObject__const_iterator* QJsonObject__const_iterator_new(QJsonObject__const_iterator* other);
	[LinkName("QJsonObject__const_iterator_new2")]
	public static extern QJsonObject__const_iterator* QJsonObject__const_iterator_new2();
	[LinkName("QJsonObject__const_iterator_new3")]
	public static extern QJsonObject__const_iterator* QJsonObject__const_iterator_new3(QJsonObject* obj, int32 index);
	[LinkName("QJsonObject__const_iterator_new4")]
	public static extern QJsonObject__const_iterator* QJsonObject__const_iterator_new4(QJsonObject__iterator* other);
	[LinkName("QJsonObject__const_iterator_new5")]
	public static extern QJsonObject__const_iterator* QJsonObject__const_iterator_new5(QJsonObject__const_iterator* other);
	[LinkName("QJsonObject__const_iterator_OperatorAssign")]
	public static extern void QJsonObject__const_iterator_OperatorAssign(Self* c_this, QJsonObject__const_iterator* other);
	[LinkName("QJsonObject__const_iterator_Key")]
	public static extern libqt_string QJsonObject__const_iterator_Key(Self* c_this);
	[LinkName("QJsonObject__const_iterator_Value")]
	public static extern QJsonValueConstRef QJsonObject__const_iterator_Value(Self* c_this);
	[LinkName("QJsonObject__const_iterator_OperatorMultiply")]
	public static extern QJsonValueConstRef QJsonObject__const_iterator_OperatorMultiply(Self* c_this);
	[LinkName("QJsonObject__const_iterator_OperatorMinusGreater")]
	public static extern QJsonValueConstRef* QJsonObject__const_iterator_OperatorMinusGreater(Self* c_this);
	[LinkName("QJsonObject__const_iterator_OperatorSubscript")]
	public static extern QJsonValueConstRef QJsonObject__const_iterator_OperatorSubscript(Self* c_this, int32 j);
	[LinkName("QJsonObject__const_iterator_OperatorEqual")]
	public static extern bool QJsonObject__const_iterator_OperatorEqual(Self* c_this, QJsonObject__const_iterator* other);
	[LinkName("QJsonObject__const_iterator_OperatorNotEqual")]
	public static extern bool QJsonObject__const_iterator_OperatorNotEqual(Self* c_this, QJsonObject__const_iterator* other);
	[LinkName("QJsonObject__const_iterator_OperatorLesser")]
	public static extern bool QJsonObject__const_iterator_OperatorLesser(Self* c_this, QJsonObject__const_iterator* other);
	[LinkName("QJsonObject__const_iterator_OperatorLesserOrEqual")]
	public static extern bool QJsonObject__const_iterator_OperatorLesserOrEqual(Self* c_this, QJsonObject__const_iterator* other);
	[LinkName("QJsonObject__const_iterator_OperatorGreater")]
	public static extern bool QJsonObject__const_iterator_OperatorGreater(Self* c_this, QJsonObject__const_iterator* other);
	[LinkName("QJsonObject__const_iterator_OperatorGreaterOrEqual")]
	public static extern bool QJsonObject__const_iterator_OperatorGreaterOrEqual(Self* c_this, QJsonObject__const_iterator* other);
	[LinkName("QJsonObject__const_iterator_OperatorPlusPlus")]
	public static extern QJsonObject__const_iterator* QJsonObject__const_iterator_OperatorPlusPlus(Self* c_this);
	[LinkName("QJsonObject__const_iterator_OperatorPlusPlusWithInt")]
	public static extern QJsonObject__const_iterator QJsonObject__const_iterator_OperatorPlusPlusWithInt(Self* c_this, int32 param1);
	[LinkName("QJsonObject__const_iterator_OperatorMinusMinus")]
	public static extern QJsonObject__const_iterator* QJsonObject__const_iterator_OperatorMinusMinus(Self* c_this);
	[LinkName("QJsonObject__const_iterator_OperatorMinusMinusWithInt")]
	public static extern QJsonObject__const_iterator QJsonObject__const_iterator_OperatorMinusMinusWithInt(Self* c_this, int32 param1);
	[LinkName("QJsonObject__const_iterator_OperatorPlus")]
	public static extern QJsonObject__const_iterator QJsonObject__const_iterator_OperatorPlus(Self* c_this, int32 j);
	[LinkName("QJsonObject__const_iterator_OperatorMinus")]
	public static extern QJsonObject__const_iterator QJsonObject__const_iterator_OperatorMinus(Self* c_this, int32 j);
	[LinkName("QJsonObject__const_iterator_OperatorPlusAssign")]
	public static extern QJsonObject__const_iterator* QJsonObject__const_iterator_OperatorPlusAssign(Self* c_this, int32 j);
	[LinkName("QJsonObject__const_iterator_OperatorMinusAssign")]
	public static extern QJsonObject__const_iterator* QJsonObject__const_iterator_OperatorMinusAssign(Self* c_this, int32 j);
	[LinkName("QJsonObject__const_iterator_OperatorMinusWithQJsonObjectconstIterator")]
	public static extern int32 QJsonObject__const_iterator_OperatorMinusWithQJsonObjectconstIterator(Self* c_this, QJsonObject__const_iterator j);
	[LinkName("QJsonObject__const_iterator_OperatorEqualWithOther")]
	public static extern bool QJsonObject__const_iterator_OperatorEqualWithOther(Self* c_this, QJsonObject__iterator* other);
	[LinkName("QJsonObject__const_iterator_OperatorNotEqualWithOther")]
	public static extern bool QJsonObject__const_iterator_OperatorNotEqualWithOther(Self* c_this, QJsonObject__iterator* other);
	[LinkName("QJsonObject__const_iterator_OperatorLesserWithOther")]
	public static extern bool QJsonObject__const_iterator_OperatorLesserWithOther(Self* c_this, QJsonObject__iterator* other);
	[LinkName("QJsonObject__const_iterator_OperatorLesserOrEqualWithOther")]
	public static extern bool QJsonObject__const_iterator_OperatorLesserOrEqualWithOther(Self* c_this, QJsonObject__iterator* other);
	[LinkName("QJsonObject__const_iterator_OperatorGreaterWithOther")]
	public static extern bool QJsonObject__const_iterator_OperatorGreaterWithOther(Self* c_this, QJsonObject__iterator* other);
	[LinkName("QJsonObject__const_iterator_OperatorGreaterOrEqualWithOther")]
	public static extern bool QJsonObject__const_iterator_OperatorGreaterOrEqualWithOther(Self* c_this, QJsonObject__iterator* other);
}