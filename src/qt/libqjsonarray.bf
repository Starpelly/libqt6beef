using System;
using System.Interop;
namespace Qt;

public struct QJsonArray
{
	[LinkName("QJsonArray_new")]
	public static extern QJsonArray* QJsonArray_new();
	[LinkName("QJsonArray_new2")]
	public static extern QJsonArray* QJsonArray_new2(QJsonArray* other);
	[LinkName("QJsonArray_OperatorAssign")]
	public static extern void QJsonArray_OperatorAssign(Self* c_this, QJsonArray* other);
	[LinkName("QJsonArray_FromStringList")]
	public static extern QJsonArray QJsonArray_FromStringList(libqt_string[] list);
	[LinkName("QJsonArray_Size")]
	public static extern int32 QJsonArray_Size(Self* c_this);
	[LinkName("QJsonArray_Count")]
	public static extern int32 QJsonArray_Count(Self* c_this);
	[LinkName("QJsonArray_IsEmpty")]
	public static extern bool QJsonArray_IsEmpty(Self* c_this);
	[LinkName("QJsonArray_At")]
	public static extern QJsonValue QJsonArray_At(Self* c_this, int32 i);
	[LinkName("QJsonArray_First")]
	public static extern QJsonValue QJsonArray_First(Self* c_this);
	[LinkName("QJsonArray_Last")]
	public static extern QJsonValue QJsonArray_Last(Self* c_this);
	[LinkName("QJsonArray_Prepend")]
	public static extern void QJsonArray_Prepend(Self* c_this, QJsonValue* value);
	[LinkName("QJsonArray_Append")]
	public static extern void QJsonArray_Append(Self* c_this, QJsonValue* value);
	[LinkName("QJsonArray_RemoveAt")]
	public static extern void QJsonArray_RemoveAt(Self* c_this, int32 i);
	[LinkName("QJsonArray_TakeAt")]
	public static extern QJsonValue QJsonArray_TakeAt(Self* c_this, int32 i);
	[LinkName("QJsonArray_RemoveFirst")]
	public static extern void QJsonArray_RemoveFirst(Self* c_this);
	[LinkName("QJsonArray_RemoveLast")]
	public static extern void QJsonArray_RemoveLast(Self* c_this);
	[LinkName("QJsonArray_Insert")]
	public static extern void QJsonArray_Insert(Self* c_this, int32 i, QJsonValue* value);
	[LinkName("QJsonArray_Replace")]
	public static extern void QJsonArray_Replace(Self* c_this, int32 i, QJsonValue* value);
	[LinkName("QJsonArray_Contains")]
	public static extern bool QJsonArray_Contains(Self* c_this, QJsonValue* element);
	[LinkName("QJsonArray_OperatorSubscript")]
	public static extern QJsonValueRef QJsonArray_OperatorSubscript(Self* c_this, int32 i);
	[LinkName("QJsonArray_OperatorSubscriptWithQsizetype")]
	public static extern QJsonValue QJsonArray_OperatorSubscriptWithQsizetype(Self* c_this, int32 i);
	[LinkName("QJsonArray_OperatorEqual")]
	public static extern bool QJsonArray_OperatorEqual(Self* c_this, QJsonArray* other);
	[LinkName("QJsonArray_OperatorNotEqual")]
	public static extern bool QJsonArray_OperatorNotEqual(Self* c_this, QJsonArray* other);
	[LinkName("QJsonArray_Swap")]
	public static extern void QJsonArray_Swap(Self* c_this, QJsonArray* other);
	[LinkName("QJsonArray_Begin")]
	public static extern QJsonArray__iterator QJsonArray_Begin(Self* c_this);
	[LinkName("QJsonArray_Begin2")]
	public static extern QJsonArray__const_iterator QJsonArray_Begin2(Self* c_this);
	[LinkName("QJsonArray_ConstBegin")]
	public static extern QJsonArray__const_iterator QJsonArray_ConstBegin(Self* c_this);
	[LinkName("QJsonArray_Cbegin")]
	public static extern QJsonArray__const_iterator QJsonArray_Cbegin(Self* c_this);
	[LinkName("QJsonArray_End")]
	public static extern QJsonArray__iterator QJsonArray_End(Self* c_this);
	[LinkName("QJsonArray_End2")]
	public static extern QJsonArray__const_iterator QJsonArray_End2(Self* c_this);
	[LinkName("QJsonArray_ConstEnd")]
	public static extern QJsonArray__const_iterator QJsonArray_ConstEnd(Self* c_this);
	[LinkName("QJsonArray_Cend")]
	public static extern QJsonArray__const_iterator QJsonArray_Cend(Self* c_this);
	[LinkName("QJsonArray_Insert2")]
	public static extern QJsonArray__iterator QJsonArray_Insert2(Self* c_this, QJsonArray__iterator before, QJsonValue* value);
	[LinkName("QJsonArray_Erase")]
	public static extern QJsonArray__iterator QJsonArray_Erase(Self* c_this, QJsonArray__iterator it);
	[LinkName("QJsonArray_OperatorPlus")]
	public static extern QJsonArray QJsonArray_OperatorPlus(Self* c_this, QJsonValue* v);
	[LinkName("QJsonArray_OperatorPlusAssign")]
	public static extern QJsonArray* QJsonArray_OperatorPlusAssign(Self* c_this, QJsonValue* v);
	[LinkName("QJsonArray_OperatorShiftLeft")]
	public static extern QJsonArray* QJsonArray_OperatorShiftLeft(Self* c_this, QJsonValue* v);
	[LinkName("QJsonArray_PushBack")]
	public static extern void QJsonArray_PushBack(Self* c_this, QJsonValue* t);
	[LinkName("QJsonArray_PushFront")]
	public static extern void QJsonArray_PushFront(Self* c_this, QJsonValue* t);
	[LinkName("QJsonArray_PopFront")]
	public static extern void QJsonArray_PopFront(Self* c_this);
	[LinkName("QJsonArray_PopBack")]
	public static extern void QJsonArray_PopBack(Self* c_this);
	[LinkName("QJsonArray_Empty")]
	public static extern bool QJsonArray_Empty(Self* c_this);
}
public struct QJsonArray__iterator
{
	[LinkName("QJsonArray__iterator_new")]
	public static extern QJsonArray__iterator* QJsonArray__iterator_new(QJsonArray__iterator* other);
	[LinkName("QJsonArray__iterator_new2")]
	public static extern QJsonArray__iterator* QJsonArray__iterator_new2();
	[LinkName("QJsonArray__iterator_new3")]
	public static extern QJsonArray__iterator* QJsonArray__iterator_new3(QJsonArray* array, int32 index);
	[LinkName("QJsonArray__iterator_new4")]
	public static extern QJsonArray__iterator* QJsonArray__iterator_new4(QJsonArray__iterator* other);
	[LinkName("QJsonArray__iterator_OperatorAssign")]
	public static extern void QJsonArray__iterator_OperatorAssign(Self* c_this, QJsonArray__iterator* other);
	[LinkName("QJsonArray__iterator_OperatorMultiply")]
	public static extern QJsonValueRef QJsonArray__iterator_OperatorMultiply(Self* c_this);
	[LinkName("QJsonArray__iterator_OperatorMinusGreater")]
	public static extern QJsonValueConstRef* QJsonArray__iterator_OperatorMinusGreater(Self* c_this);
	[LinkName("QJsonArray__iterator_OperatorMinusGreater2")]
	public static extern QJsonValueRef* QJsonArray__iterator_OperatorMinusGreater2(Self* c_this);
	[LinkName("QJsonArray__iterator_OperatorSubscript")]
	public static extern QJsonValueRef QJsonArray__iterator_OperatorSubscript(Self* c_this, int32 j);
	[LinkName("QJsonArray__iterator_OperatorEqual")]
	public static extern bool QJsonArray__iterator_OperatorEqual(Self* c_this, QJsonArray__iterator* o);
	[LinkName("QJsonArray__iterator_OperatorNotEqual")]
	public static extern bool QJsonArray__iterator_OperatorNotEqual(Self* c_this, QJsonArray__iterator* o);
	[LinkName("QJsonArray__iterator_OperatorLesser")]
	public static extern bool QJsonArray__iterator_OperatorLesser(Self* c_this, QJsonArray__iterator* other);
	[LinkName("QJsonArray__iterator_OperatorLesserOrEqual")]
	public static extern bool QJsonArray__iterator_OperatorLesserOrEqual(Self* c_this, QJsonArray__iterator* other);
	[LinkName("QJsonArray__iterator_OperatorGreater")]
	public static extern bool QJsonArray__iterator_OperatorGreater(Self* c_this, QJsonArray__iterator* other);
	[LinkName("QJsonArray__iterator_OperatorGreaterOrEqual")]
	public static extern bool QJsonArray__iterator_OperatorGreaterOrEqual(Self* c_this, QJsonArray__iterator* other);
	[LinkName("QJsonArray__iterator_OperatorEqualWithQJsonArrayconstIterator")]
	public static extern bool QJsonArray__iterator_OperatorEqualWithQJsonArrayconstIterator(Self* c_this, QJsonArray__const_iterator* o);
	[LinkName("QJsonArray__iterator_OperatorNotEqualWithQJsonArrayconstIterator")]
	public static extern bool QJsonArray__iterator_OperatorNotEqualWithQJsonArrayconstIterator(Self* c_this, QJsonArray__const_iterator* o);
	[LinkName("QJsonArray__iterator_OperatorLesserWithOther")]
	public static extern bool QJsonArray__iterator_OperatorLesserWithOther(Self* c_this, QJsonArray__const_iterator* other);
	[LinkName("QJsonArray__iterator_OperatorLesserOrEqualWithOther")]
	public static extern bool QJsonArray__iterator_OperatorLesserOrEqualWithOther(Self* c_this, QJsonArray__const_iterator* other);
	[LinkName("QJsonArray__iterator_OperatorGreaterWithOther")]
	public static extern bool QJsonArray__iterator_OperatorGreaterWithOther(Self* c_this, QJsonArray__const_iterator* other);
	[LinkName("QJsonArray__iterator_OperatorGreaterOrEqualWithOther")]
	public static extern bool QJsonArray__iterator_OperatorGreaterOrEqualWithOther(Self* c_this, QJsonArray__const_iterator* other);
	[LinkName("QJsonArray__iterator_OperatorPlusPlus")]
	public static extern QJsonArray__iterator* QJsonArray__iterator_OperatorPlusPlus(Self* c_this);
	[LinkName("QJsonArray__iterator_OperatorPlusPlusWithInt")]
	public static extern QJsonArray__iterator QJsonArray__iterator_OperatorPlusPlusWithInt(Self* c_this, int32 param1);
	[LinkName("QJsonArray__iterator_OperatorMinusMinus")]
	public static extern QJsonArray__iterator* QJsonArray__iterator_OperatorMinusMinus(Self* c_this);
	[LinkName("QJsonArray__iterator_OperatorMinusMinusWithInt")]
	public static extern QJsonArray__iterator QJsonArray__iterator_OperatorMinusMinusWithInt(Self* c_this, int32 param1);
	[LinkName("QJsonArray__iterator_OperatorPlusAssign")]
	public static extern QJsonArray__iterator* QJsonArray__iterator_OperatorPlusAssign(Self* c_this, int32 j);
	[LinkName("QJsonArray__iterator_OperatorMinusAssign")]
	public static extern QJsonArray__iterator* QJsonArray__iterator_OperatorMinusAssign(Self* c_this, int32 j);
	[LinkName("QJsonArray__iterator_OperatorPlus")]
	public static extern QJsonArray__iterator QJsonArray__iterator_OperatorPlus(Self* c_this, int32 j);
	[LinkName("QJsonArray__iterator_OperatorMinus")]
	public static extern QJsonArray__iterator QJsonArray__iterator_OperatorMinus(Self* c_this, int32 j);
	[LinkName("QJsonArray__iterator_OperatorMinusWithQJsonArrayiterator")]
	public static extern int32 QJsonArray__iterator_OperatorMinusWithQJsonArrayiterator(Self* c_this, QJsonArray__iterator j);
}
public struct QJsonArray__const_iterator
{
	[LinkName("QJsonArray__const_iterator_new")]
	public static extern QJsonArray__const_iterator* QJsonArray__const_iterator_new(QJsonArray__const_iterator* other);
	[LinkName("QJsonArray__const_iterator_new2")]
	public static extern QJsonArray__const_iterator* QJsonArray__const_iterator_new2();
	[LinkName("QJsonArray__const_iterator_new3")]
	public static extern QJsonArray__const_iterator* QJsonArray__const_iterator_new3(QJsonArray* array, int32 index);
	[LinkName("QJsonArray__const_iterator_new4")]
	public static extern QJsonArray__const_iterator* QJsonArray__const_iterator_new4(QJsonArray__iterator* o);
	[LinkName("QJsonArray__const_iterator_new5")]
	public static extern QJsonArray__const_iterator* QJsonArray__const_iterator_new5(QJsonArray__const_iterator* other);
	[LinkName("QJsonArray__const_iterator_OperatorAssign")]
	public static extern void QJsonArray__const_iterator_OperatorAssign(Self* c_this, QJsonArray__const_iterator* other);
	[LinkName("QJsonArray__const_iterator_OperatorMultiply")]
	public static extern QJsonValueConstRef QJsonArray__const_iterator_OperatorMultiply(Self* c_this);
	[LinkName("QJsonArray__const_iterator_OperatorMinusGreater")]
	public static extern QJsonValueConstRef* QJsonArray__const_iterator_OperatorMinusGreater(Self* c_this);
	[LinkName("QJsonArray__const_iterator_OperatorSubscript")]
	public static extern QJsonValueConstRef QJsonArray__const_iterator_OperatorSubscript(Self* c_this, int32 j);
	[LinkName("QJsonArray__const_iterator_OperatorEqual")]
	public static extern bool QJsonArray__const_iterator_OperatorEqual(Self* c_this, QJsonArray__const_iterator* o);
	[LinkName("QJsonArray__const_iterator_OperatorNotEqual")]
	public static extern bool QJsonArray__const_iterator_OperatorNotEqual(Self* c_this, QJsonArray__const_iterator* o);
	[LinkName("QJsonArray__const_iterator_OperatorLesser")]
	public static extern bool QJsonArray__const_iterator_OperatorLesser(Self* c_this, QJsonArray__const_iterator* other);
	[LinkName("QJsonArray__const_iterator_OperatorLesserOrEqual")]
	public static extern bool QJsonArray__const_iterator_OperatorLesserOrEqual(Self* c_this, QJsonArray__const_iterator* other);
	[LinkName("QJsonArray__const_iterator_OperatorGreater")]
	public static extern bool QJsonArray__const_iterator_OperatorGreater(Self* c_this, QJsonArray__const_iterator* other);
	[LinkName("QJsonArray__const_iterator_OperatorGreaterOrEqual")]
	public static extern bool QJsonArray__const_iterator_OperatorGreaterOrEqual(Self* c_this, QJsonArray__const_iterator* other);
	[LinkName("QJsonArray__const_iterator_OperatorPlusPlus")]
	public static extern QJsonArray__const_iterator* QJsonArray__const_iterator_OperatorPlusPlus(Self* c_this);
	[LinkName("QJsonArray__const_iterator_OperatorPlusPlusWithInt")]
	public static extern QJsonArray__const_iterator QJsonArray__const_iterator_OperatorPlusPlusWithInt(Self* c_this, int32 param1);
	[LinkName("QJsonArray__const_iterator_OperatorMinusMinus")]
	public static extern QJsonArray__const_iterator* QJsonArray__const_iterator_OperatorMinusMinus(Self* c_this);
	[LinkName("QJsonArray__const_iterator_OperatorMinusMinusWithInt")]
	public static extern QJsonArray__const_iterator QJsonArray__const_iterator_OperatorMinusMinusWithInt(Self* c_this, int32 param1);
	[LinkName("QJsonArray__const_iterator_OperatorPlusAssign")]
	public static extern QJsonArray__const_iterator* QJsonArray__const_iterator_OperatorPlusAssign(Self* c_this, int32 j);
	[LinkName("QJsonArray__const_iterator_OperatorMinusAssign")]
	public static extern QJsonArray__const_iterator* QJsonArray__const_iterator_OperatorMinusAssign(Self* c_this, int32 j);
	[LinkName("QJsonArray__const_iterator_OperatorPlus")]
	public static extern QJsonArray__const_iterator QJsonArray__const_iterator_OperatorPlus(Self* c_this, int32 j);
	[LinkName("QJsonArray__const_iterator_OperatorMinus")]
	public static extern QJsonArray__const_iterator QJsonArray__const_iterator_OperatorMinus(Self* c_this, int32 j);
	[LinkName("QJsonArray__const_iterator_OperatorMinusWithQJsonArrayconstIterator")]
	public static extern int32 QJsonArray__const_iterator_OperatorMinusWithQJsonArrayconstIterator(Self* c_this, QJsonArray__const_iterator j);
}