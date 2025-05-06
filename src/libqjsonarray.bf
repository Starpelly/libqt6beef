using System;
using System.Interop;
namespace Qt;

public struct QJsonArray
{
	[LinkName("QJsonArray_new")]
	public static extern void* QJsonArray_new();
	[LinkName("QJsonArray_new2")]
	public static extern void* QJsonArray_new2(QJsonArray other);
	[LinkName("QJsonArray_OperatorAssign")]
	public static extern void QJsonArray_OperatorAssign(void* c_this, QJsonArray other);
	[LinkName("QJsonArray_FromStringList")]
	public static extern QJsonArray QJsonArray_FromStringList(char8[][] list);
	[LinkName("QJsonArray_Size")]
	public static extern int32 QJsonArray_Size(void* c_this);
	[LinkName("QJsonArray_Count")]
	public static extern int32 QJsonArray_Count(void* c_this);
	[LinkName("QJsonArray_IsEmpty")]
	public static extern bool QJsonArray_IsEmpty(void* c_this);
	[LinkName("QJsonArray_At")]
	public static extern QJsonValue QJsonArray_At(void* c_this, int32 i);
	[LinkName("QJsonArray_First")]
	public static extern QJsonValue QJsonArray_First(void* c_this);
	[LinkName("QJsonArray_Last")]
	public static extern QJsonValue QJsonArray_Last(void* c_this);
	[LinkName("QJsonArray_Prepend")]
	public static extern void QJsonArray_Prepend(void* c_this, QJsonValue value);
	[LinkName("QJsonArray_Append")]
	public static extern void QJsonArray_Append(void* c_this, QJsonValue value);
	[LinkName("QJsonArray_RemoveAt")]
	public static extern void QJsonArray_RemoveAt(void* c_this, int32 i);
	[LinkName("QJsonArray_TakeAt")]
	public static extern QJsonValue QJsonArray_TakeAt(void* c_this, int32 i);
	[LinkName("QJsonArray_RemoveFirst")]
	public static extern void QJsonArray_RemoveFirst(void* c_this);
	[LinkName("QJsonArray_RemoveLast")]
	public static extern void QJsonArray_RemoveLast(void* c_this);
	[LinkName("QJsonArray_Insert")]
	public static extern void QJsonArray_Insert(void* c_this, int32 i, QJsonValue value);
	[LinkName("QJsonArray_Replace")]
	public static extern void QJsonArray_Replace(void* c_this, int32 i, QJsonValue value);
	[LinkName("QJsonArray_Contains")]
	public static extern bool QJsonArray_Contains(void* c_this, QJsonValue element);
	[LinkName("QJsonArray_OperatorSubscript")]
	public static extern QJsonValueRef QJsonArray_OperatorSubscript(void* c_this, int32 i);
	[LinkName("QJsonArray_OperatorSubscriptWithQsizetype")]
	public static extern QJsonValue QJsonArray_OperatorSubscriptWithQsizetype(void* c_this, int32 i);
	[LinkName("QJsonArray_OperatorEqual")]
	public static extern bool QJsonArray_OperatorEqual(void* c_this, QJsonArray other);
	[LinkName("QJsonArray_OperatorNotEqual")]
	public static extern bool QJsonArray_OperatorNotEqual(void* c_this, QJsonArray other);
	[LinkName("QJsonArray_Swap")]
	public static extern void QJsonArray_Swap(void* c_this, QJsonArray other);
	[LinkName("QJsonArray_Begin")]
	public static extern QJsonArray__iterator QJsonArray_Begin(void* c_this);
	[LinkName("QJsonArray_Begin2")]
	public static extern QJsonArray__const_iterator QJsonArray_Begin2(void* c_this);
	[LinkName("QJsonArray_ConstBegin")]
	public static extern QJsonArray__const_iterator QJsonArray_ConstBegin(void* c_this);
	[LinkName("QJsonArray_Cbegin")]
	public static extern QJsonArray__const_iterator QJsonArray_Cbegin(void* c_this);
	[LinkName("QJsonArray_End")]
	public static extern QJsonArray__iterator QJsonArray_End(void* c_this);
	[LinkName("QJsonArray_End2")]
	public static extern QJsonArray__const_iterator QJsonArray_End2(void* c_this);
	[LinkName("QJsonArray_ConstEnd")]
	public static extern QJsonArray__const_iterator QJsonArray_ConstEnd(void* c_this);
	[LinkName("QJsonArray_Cend")]
	public static extern QJsonArray__const_iterator QJsonArray_Cend(void* c_this);
	[LinkName("QJsonArray_Insert2")]
	public static extern QJsonArray__iterator QJsonArray_Insert2(void* c_this, QJsonArray__iterator before, QJsonValue value);
	[LinkName("QJsonArray_Erase")]
	public static extern QJsonArray__iterator QJsonArray_Erase(void* c_this, QJsonArray__iterator it);
	[LinkName("QJsonArray_OperatorPlus")]
	public static extern QJsonArray QJsonArray_OperatorPlus(void* c_this, QJsonValue v);
	[LinkName("QJsonArray_OperatorPlusAssign")]
	public static extern QJsonArray QJsonArray_OperatorPlusAssign(void* c_this, QJsonValue v);
	[LinkName("QJsonArray_OperatorShiftLeft")]
	public static extern QJsonArray QJsonArray_OperatorShiftLeft(void* c_this, QJsonValue v);
	[LinkName("QJsonArray_PushBack")]
	public static extern void QJsonArray_PushBack(void* c_this, QJsonValue t);
	[LinkName("QJsonArray_PushFront")]
	public static extern void QJsonArray_PushFront(void* c_this, QJsonValue t);
	[LinkName("QJsonArray_PopFront")]
	public static extern void QJsonArray_PopFront(void* c_this);
	[LinkName("QJsonArray_PopBack")]
	public static extern void QJsonArray_PopBack(void* c_this);
	[LinkName("QJsonArray_Empty")]
	public static extern bool QJsonArray_Empty(void* c_this);
}
public struct QJsonArray__iterator
{
	[LinkName("QJsonArray__iterator_new")]
	public static extern void* QJsonArray__iterator_new(QJsonArray__iterator other);
	[LinkName("QJsonArray__iterator_new2")]
	public static extern void* QJsonArray__iterator_new2();
	[LinkName("QJsonArray__iterator_new3")]
	public static extern void* QJsonArray__iterator_new3(QJsonArray array, int32 index);
	[LinkName("QJsonArray__iterator_new4")]
	public static extern void* QJsonArray__iterator_new4(QJsonArray__iterator other);
	[LinkName("QJsonArray__iterator_OperatorAssign")]
	public static extern void QJsonArray__iterator_OperatorAssign(void* c_this, QJsonArray__iterator other);
	[LinkName("QJsonArray__iterator_OperatorMultiply")]
	public static extern QJsonValueRef QJsonArray__iterator_OperatorMultiply(void* c_this);
	[LinkName("QJsonArray__iterator_OperatorMinusGreater")]
	public static extern QJsonValueConstRef QJsonArray__iterator_OperatorMinusGreater(void* c_this);
	[LinkName("QJsonArray__iterator_OperatorMinusGreater2")]
	public static extern QJsonValueRef QJsonArray__iterator_OperatorMinusGreater2(void* c_this);
	[LinkName("QJsonArray__iterator_OperatorSubscript")]
	public static extern QJsonValueRef QJsonArray__iterator_OperatorSubscript(void* c_this, int32 j);
	[LinkName("QJsonArray__iterator_OperatorEqual")]
	public static extern bool QJsonArray__iterator_OperatorEqual(void* c_this, QJsonArray__iterator o);
	[LinkName("QJsonArray__iterator_OperatorNotEqual")]
	public static extern bool QJsonArray__iterator_OperatorNotEqual(void* c_this, QJsonArray__iterator o);
	[LinkName("QJsonArray__iterator_OperatorLesser")]
	public static extern bool QJsonArray__iterator_OperatorLesser(void* c_this, QJsonArray__iterator other);
	[LinkName("QJsonArray__iterator_OperatorLesserOrEqual")]
	public static extern bool QJsonArray__iterator_OperatorLesserOrEqual(void* c_this, QJsonArray__iterator other);
	[LinkName("QJsonArray__iterator_OperatorGreater")]
	public static extern bool QJsonArray__iterator_OperatorGreater(void* c_this, QJsonArray__iterator other);
	[LinkName("QJsonArray__iterator_OperatorGreaterOrEqual")]
	public static extern bool QJsonArray__iterator_OperatorGreaterOrEqual(void* c_this, QJsonArray__iterator other);
	[LinkName("QJsonArray__iterator_OperatorEqualWithQJsonArrayconstIterator")]
	public static extern bool QJsonArray__iterator_OperatorEqualWithQJsonArrayconstIterator(void* c_this, QJsonArray__const_iterator o);
	[LinkName("QJsonArray__iterator_OperatorNotEqualWithQJsonArrayconstIterator")]
	public static extern bool QJsonArray__iterator_OperatorNotEqualWithQJsonArrayconstIterator(void* c_this, QJsonArray__const_iterator o);
	[LinkName("QJsonArray__iterator_OperatorLesserWithOther")]
	public static extern bool QJsonArray__iterator_OperatorLesserWithOther(void* c_this, QJsonArray__const_iterator other);
	[LinkName("QJsonArray__iterator_OperatorLesserOrEqualWithOther")]
	public static extern bool QJsonArray__iterator_OperatorLesserOrEqualWithOther(void* c_this, QJsonArray__const_iterator other);
	[LinkName("QJsonArray__iterator_OperatorGreaterWithOther")]
	public static extern bool QJsonArray__iterator_OperatorGreaterWithOther(void* c_this, QJsonArray__const_iterator other);
	[LinkName("QJsonArray__iterator_OperatorGreaterOrEqualWithOther")]
	public static extern bool QJsonArray__iterator_OperatorGreaterOrEqualWithOther(void* c_this, QJsonArray__const_iterator other);
	[LinkName("QJsonArray__iterator_OperatorPlusPlus")]
	public static extern QJsonArray__iterator QJsonArray__iterator_OperatorPlusPlus(void* c_this);
	[LinkName("QJsonArray__iterator_OperatorPlusPlusWithInt")]
	public static extern QJsonArray__iterator QJsonArray__iterator_OperatorPlusPlusWithInt(void* c_this, int32 param1);
	[LinkName("QJsonArray__iterator_OperatorMinusMinus")]
	public static extern QJsonArray__iterator QJsonArray__iterator_OperatorMinusMinus(void* c_this);
	[LinkName("QJsonArray__iterator_OperatorMinusMinusWithInt")]
	public static extern QJsonArray__iterator QJsonArray__iterator_OperatorMinusMinusWithInt(void* c_this, int32 param1);
	[LinkName("QJsonArray__iterator_OperatorPlusAssign")]
	public static extern QJsonArray__iterator QJsonArray__iterator_OperatorPlusAssign(void* c_this, int32 j);
	[LinkName("QJsonArray__iterator_OperatorMinusAssign")]
	public static extern QJsonArray__iterator QJsonArray__iterator_OperatorMinusAssign(void* c_this, int32 j);
	[LinkName("QJsonArray__iterator_OperatorPlus")]
	public static extern QJsonArray__iterator QJsonArray__iterator_OperatorPlus(void* c_this, int32 j);
	[LinkName("QJsonArray__iterator_OperatorMinus")]
	public static extern QJsonArray__iterator QJsonArray__iterator_OperatorMinus(void* c_this, int32 j);
	[LinkName("QJsonArray__iterator_OperatorMinusWithQJsonArrayiterator")]
	public static extern int32 QJsonArray__iterator_OperatorMinusWithQJsonArrayiterator(void* c_this, QJsonArray__iterator j);
}
public struct QJsonArray__const_iterator
{
	[LinkName("QJsonArray__const_iterator_new")]
	public static extern void* QJsonArray__const_iterator_new(QJsonArray__const_iterator other);
	[LinkName("QJsonArray__const_iterator_new2")]
	public static extern void* QJsonArray__const_iterator_new2();
	[LinkName("QJsonArray__const_iterator_new3")]
	public static extern void* QJsonArray__const_iterator_new3(QJsonArray array, int32 index);
	[LinkName("QJsonArray__const_iterator_new4")]
	public static extern void* QJsonArray__const_iterator_new4(QJsonArray__iterator o);
	[LinkName("QJsonArray__const_iterator_new5")]
	public static extern void* QJsonArray__const_iterator_new5(QJsonArray__const_iterator other);
	[LinkName("QJsonArray__const_iterator_OperatorAssign")]
	public static extern void QJsonArray__const_iterator_OperatorAssign(void* c_this, QJsonArray__const_iterator other);
	[LinkName("QJsonArray__const_iterator_OperatorMultiply")]
	public static extern QJsonValueConstRef QJsonArray__const_iterator_OperatorMultiply(void* c_this);
	[LinkName("QJsonArray__const_iterator_OperatorMinusGreater")]
	public static extern QJsonValueConstRef QJsonArray__const_iterator_OperatorMinusGreater(void* c_this);
	[LinkName("QJsonArray__const_iterator_OperatorSubscript")]
	public static extern QJsonValueConstRef QJsonArray__const_iterator_OperatorSubscript(void* c_this, int32 j);
	[LinkName("QJsonArray__const_iterator_OperatorEqual")]
	public static extern bool QJsonArray__const_iterator_OperatorEqual(void* c_this, QJsonArray__const_iterator o);
	[LinkName("QJsonArray__const_iterator_OperatorNotEqual")]
	public static extern bool QJsonArray__const_iterator_OperatorNotEqual(void* c_this, QJsonArray__const_iterator o);
	[LinkName("QJsonArray__const_iterator_OperatorLesser")]
	public static extern bool QJsonArray__const_iterator_OperatorLesser(void* c_this, QJsonArray__const_iterator other);
	[LinkName("QJsonArray__const_iterator_OperatorLesserOrEqual")]
	public static extern bool QJsonArray__const_iterator_OperatorLesserOrEqual(void* c_this, QJsonArray__const_iterator other);
	[LinkName("QJsonArray__const_iterator_OperatorGreater")]
	public static extern bool QJsonArray__const_iterator_OperatorGreater(void* c_this, QJsonArray__const_iterator other);
	[LinkName("QJsonArray__const_iterator_OperatorGreaterOrEqual")]
	public static extern bool QJsonArray__const_iterator_OperatorGreaterOrEqual(void* c_this, QJsonArray__const_iterator other);
	[LinkName("QJsonArray__const_iterator_OperatorPlusPlus")]
	public static extern QJsonArray__const_iterator QJsonArray__const_iterator_OperatorPlusPlus(void* c_this);
	[LinkName("QJsonArray__const_iterator_OperatorPlusPlusWithInt")]
	public static extern QJsonArray__const_iterator QJsonArray__const_iterator_OperatorPlusPlusWithInt(void* c_this, int32 param1);
	[LinkName("QJsonArray__const_iterator_OperatorMinusMinus")]
	public static extern QJsonArray__const_iterator QJsonArray__const_iterator_OperatorMinusMinus(void* c_this);
	[LinkName("QJsonArray__const_iterator_OperatorMinusMinusWithInt")]
	public static extern QJsonArray__const_iterator QJsonArray__const_iterator_OperatorMinusMinusWithInt(void* c_this, int32 param1);
	[LinkName("QJsonArray__const_iterator_OperatorPlusAssign")]
	public static extern QJsonArray__const_iterator QJsonArray__const_iterator_OperatorPlusAssign(void* c_this, int32 j);
	[LinkName("QJsonArray__const_iterator_OperatorMinusAssign")]
	public static extern QJsonArray__const_iterator QJsonArray__const_iterator_OperatorMinusAssign(void* c_this, int32 j);
	[LinkName("QJsonArray__const_iterator_OperatorPlus")]
	public static extern QJsonArray__const_iterator QJsonArray__const_iterator_OperatorPlus(void* c_this, int32 j);
	[LinkName("QJsonArray__const_iterator_OperatorMinus")]
	public static extern QJsonArray__const_iterator QJsonArray__const_iterator_OperatorMinus(void* c_this, int32 j);
	[LinkName("QJsonArray__const_iterator_OperatorMinusWithQJsonArrayconstIterator")]
	public static extern int32 QJsonArray__const_iterator_OperatorMinusWithQJsonArrayconstIterator(void* c_this, QJsonArray__const_iterator j);
}