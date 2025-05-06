using System;
using System.Interop;
namespace Qt;

public struct QCborArray
{
	[LinkName("QCborArray_new")]
	public static extern void* QCborArray_new();
	[LinkName("QCborArray_new2")]
	public static extern void* QCborArray_new2(QCborArray other);
	[LinkName("QCborArray_OperatorAssign")]
	public static extern void QCborArray_OperatorAssign(void* c_this, QCborArray other);
	[LinkName("QCborArray_Swap")]
	public static extern void QCborArray_Swap(void* c_this, QCborArray other);
	[LinkName("QCborArray_ToCborValue")]
	public static extern QCborValue QCborArray_ToCborValue(void* c_this);
	[LinkName("QCborArray_Size")]
	public static extern int32 QCborArray_Size(void* c_this);
	[LinkName("QCborArray_IsEmpty")]
	public static extern bool QCborArray_IsEmpty(void* c_this);
	[LinkName("QCborArray_Clear")]
	public static extern void QCborArray_Clear(void* c_this);
	[LinkName("QCborArray_At")]
	public static extern QCborValue QCborArray_At(void* c_this, int32 i);
	[LinkName("QCborArray_First")]
	public static extern QCborValue QCborArray_First(void* c_this);
	[LinkName("QCborArray_Last")]
	public static extern QCborValue QCborArray_Last(void* c_this);
	[LinkName("QCborArray_OperatorSubscript")]
	public static extern QCborValue QCborArray_OperatorSubscript(void* c_this, int32 i);
	[LinkName("QCborArray_First2")]
	public static extern QCborValueRef QCborArray_First2(void* c_this);
	[LinkName("QCborArray_Last2")]
	public static extern QCborValueRef QCborArray_Last2(void* c_this);
	[LinkName("QCborArray_OperatorSubscriptWithQsizetype")]
	public static extern QCborValueRef QCborArray_OperatorSubscriptWithQsizetype(void* c_this, int32 i);
	[LinkName("QCborArray_Insert")]
	public static extern void QCborArray_Insert(void* c_this, int32 i, QCborValue value);
	[LinkName("QCborArray_Prepend")]
	public static extern void QCborArray_Prepend(void* c_this, QCborValue value);
	[LinkName("QCborArray_Append")]
	public static extern void QCborArray_Append(void* c_this, QCborValue value);
	[LinkName("QCborArray_Extract")]
	public static extern QCborValue QCborArray_Extract(void* c_this, QCborArray__ConstIterator it);
	[LinkName("QCborArray_ExtractWithIt")]
	public static extern QCborValue QCborArray_ExtractWithIt(void* c_this, QCborArray__Iterator it);
	[LinkName("QCborArray_RemoveAt")]
	public static extern void QCborArray_RemoveAt(void* c_this, int32 i);
	[LinkName("QCborArray_TakeAt")]
	public static extern QCborValue QCborArray_TakeAt(void* c_this, int32 i);
	[LinkName("QCborArray_RemoveFirst")]
	public static extern void QCborArray_RemoveFirst(void* c_this);
	[LinkName("QCborArray_RemoveLast")]
	public static extern void QCborArray_RemoveLast(void* c_this);
	[LinkName("QCborArray_TakeFirst")]
	public static extern QCborValue QCborArray_TakeFirst(void* c_this);
	[LinkName("QCborArray_TakeLast")]
	public static extern QCborValue QCborArray_TakeLast(void* c_this);
	[LinkName("QCborArray_Contains")]
	public static extern bool QCborArray_Contains(void* c_this, QCborValue value);
	[LinkName("QCborArray_Compare")]
	public static extern int32 QCborArray_Compare(void* c_this, QCborArray other);
	[LinkName("QCborArray_OperatorEqual")]
	public static extern bool QCborArray_OperatorEqual(void* c_this, QCborArray other);
	[LinkName("QCborArray_OperatorNotEqual")]
	public static extern bool QCborArray_OperatorNotEqual(void* c_this, QCborArray other);
	[LinkName("QCborArray_OperatorLesser")]
	public static extern bool QCborArray_OperatorLesser(void* c_this, QCborArray other);
	[LinkName("QCborArray_Begin")]
	public static extern QCborArray__Iterator QCborArray_Begin(void* c_this);
	[LinkName("QCborArray_ConstBegin")]
	public static extern QCborArray__ConstIterator QCborArray_ConstBegin(void* c_this);
	[LinkName("QCborArray_Begin2")]
	public static extern QCborArray__ConstIterator QCborArray_Begin2(void* c_this);
	[LinkName("QCborArray_Cbegin")]
	public static extern QCborArray__ConstIterator QCborArray_Cbegin(void* c_this);
	[LinkName("QCborArray_End")]
	public static extern QCborArray__Iterator QCborArray_End(void* c_this);
	[LinkName("QCborArray_ConstEnd")]
	public static extern QCborArray__ConstIterator QCborArray_ConstEnd(void* c_this);
	[LinkName("QCborArray_End2")]
	public static extern QCborArray__ConstIterator QCborArray_End2(void* c_this);
	[LinkName("QCborArray_Cend")]
	public static extern QCborArray__ConstIterator QCborArray_Cend(void* c_this);
	[LinkName("QCborArray_Insert2")]
	public static extern QCborArray__Iterator QCborArray_Insert2(void* c_this, QCborArray__Iterator before, QCborValue value);
	[LinkName("QCborArray_Insert3")]
	public static extern QCborArray__Iterator QCborArray_Insert3(void* c_this, QCborArray__ConstIterator before, QCborValue value);
	[LinkName("QCborArray_Erase")]
	public static extern QCborArray__Iterator QCborArray_Erase(void* c_this, QCborArray__Iterator it);
	[LinkName("QCborArray_EraseWithIt")]
	public static extern QCborArray__Iterator QCborArray_EraseWithIt(void* c_this, QCborArray__ConstIterator it);
	[LinkName("QCborArray_PushBack")]
	public static extern void QCborArray_PushBack(void* c_this, QCborValue t);
	[LinkName("QCborArray_PushFront")]
	public static extern void QCborArray_PushFront(void* c_this, QCborValue t);
	[LinkName("QCborArray_PopFront")]
	public static extern void QCborArray_PopFront(void* c_this);
	[LinkName("QCborArray_PopBack")]
	public static extern void QCborArray_PopBack(void* c_this);
	[LinkName("QCborArray_Empty")]
	public static extern bool QCborArray_Empty(void* c_this);
	[LinkName("QCborArray_OperatorPlus")]
	public static extern QCborArray QCborArray_OperatorPlus(void* c_this, QCborValue v);
	[LinkName("QCborArray_OperatorPlusAssign")]
	public static extern QCborArray QCborArray_OperatorPlusAssign(void* c_this, QCborValue v);
	[LinkName("QCborArray_OperatorShiftLeft")]
	public static extern QCborArray QCborArray_OperatorShiftLeft(void* c_this, QCborValue v);
	[LinkName("QCborArray_FromStringList")]
	public static extern QCborArray QCborArray_FromStringList(char8[][] list);
	[LinkName("QCborArray_FromJsonArray")]
	public static extern QCborArray QCborArray_FromJsonArray(QJsonArray array);
	[LinkName("QCborArray_ToJsonArray")]
	public static extern QJsonArray QCborArray_ToJsonArray(void* c_this);
}
public struct QCborArray__Iterator
{
	[LinkName("QCborArray__Iterator_new")]
	public static extern void* QCborArray__Iterator_new(QCborArray__Iterator other);
	[LinkName("QCborArray__Iterator_new2")]
	public static extern void* QCborArray__Iterator_new2();
	[LinkName("QCborArray__Iterator_new3")]
	public static extern void* QCborArray__Iterator_new3(QCborArray__Iterator param1);
	[LinkName("QCborArray__Iterator_OperatorAssign")]
	public static extern void QCborArray__Iterator_OperatorAssign(void* c_this, QCborArray__Iterator other);
	[LinkName("QCborArray__Iterator_OperatorMultiply")]
	public static extern QCborValueRef QCborArray__Iterator_OperatorMultiply(void* c_this);
	[LinkName("QCborArray__Iterator_OperatorMinusGreater")]
	public static extern QCborValueRef QCborArray__Iterator_OperatorMinusGreater(void* c_this);
	[LinkName("QCborArray__Iterator_OperatorMinusGreater2")]
	public static extern QCborValueConstRef QCborArray__Iterator_OperatorMinusGreater2(void* c_this);
	[LinkName("QCborArray__Iterator_OperatorSubscript")]
	public static extern QCborValueRef QCborArray__Iterator_OperatorSubscript(void* c_this, int32 j);
	[LinkName("QCborArray__Iterator_OperatorEqual")]
	public static extern bool QCborArray__Iterator_OperatorEqual(void* c_this, QCborArray__Iterator o);
	[LinkName("QCborArray__Iterator_OperatorNotEqual")]
	public static extern bool QCborArray__Iterator_OperatorNotEqual(void* c_this, QCborArray__Iterator o);
	[LinkName("QCborArray__Iterator_OperatorLesser")]
	public static extern bool QCborArray__Iterator_OperatorLesser(void* c_this, QCborArray__Iterator other);
	[LinkName("QCborArray__Iterator_OperatorLesserOrEqual")]
	public static extern bool QCborArray__Iterator_OperatorLesserOrEqual(void* c_this, QCborArray__Iterator other);
	[LinkName("QCborArray__Iterator_OperatorGreater")]
	public static extern bool QCborArray__Iterator_OperatorGreater(void* c_this, QCborArray__Iterator other);
	[LinkName("QCborArray__Iterator_OperatorGreaterOrEqual")]
	public static extern bool QCborArray__Iterator_OperatorGreaterOrEqual(void* c_this, QCborArray__Iterator other);
	[LinkName("QCborArray__Iterator_OperatorEqualWithQCborArrayConstIterator")]
	public static extern bool QCborArray__Iterator_OperatorEqualWithQCborArrayConstIterator(void* c_this, QCborArray__ConstIterator o);
	[LinkName("QCborArray__Iterator_OperatorNotEqualWithQCborArrayConstIterator")]
	public static extern bool QCborArray__Iterator_OperatorNotEqualWithQCborArrayConstIterator(void* c_this, QCborArray__ConstIterator o);
	[LinkName("QCborArray__Iterator_OperatorLesserWithOther")]
	public static extern bool QCborArray__Iterator_OperatorLesserWithOther(void* c_this, QCborArray__ConstIterator other);
	[LinkName("QCborArray__Iterator_OperatorLesserOrEqualWithOther")]
	public static extern bool QCborArray__Iterator_OperatorLesserOrEqualWithOther(void* c_this, QCborArray__ConstIterator other);
	[LinkName("QCborArray__Iterator_OperatorGreaterWithOther")]
	public static extern bool QCborArray__Iterator_OperatorGreaterWithOther(void* c_this, QCborArray__ConstIterator other);
	[LinkName("QCborArray__Iterator_OperatorGreaterOrEqualWithOther")]
	public static extern bool QCborArray__Iterator_OperatorGreaterOrEqualWithOther(void* c_this, QCborArray__ConstIterator other);
	[LinkName("QCborArray__Iterator_OperatorPlusPlus")]
	public static extern QCborArray__Iterator QCborArray__Iterator_OperatorPlusPlus(void* c_this);
	[LinkName("QCborArray__Iterator_OperatorPlusPlusWithInt")]
	public static extern QCborArray__Iterator QCborArray__Iterator_OperatorPlusPlusWithInt(void* c_this, int32 param1);
	[LinkName("QCborArray__Iterator_OperatorMinusMinus")]
	public static extern QCborArray__Iterator QCborArray__Iterator_OperatorMinusMinus(void* c_this);
	[LinkName("QCborArray__Iterator_OperatorMinusMinusWithInt")]
	public static extern QCborArray__Iterator QCborArray__Iterator_OperatorMinusMinusWithInt(void* c_this, int32 param1);
	[LinkName("QCborArray__Iterator_OperatorPlusAssign")]
	public static extern QCborArray__Iterator QCborArray__Iterator_OperatorPlusAssign(void* c_this, int32 j);
	[LinkName("QCborArray__Iterator_OperatorMinusAssign")]
	public static extern QCborArray__Iterator QCborArray__Iterator_OperatorMinusAssign(void* c_this, int32 j);
	[LinkName("QCborArray__Iterator_OperatorPlus")]
	public static extern QCborArray__Iterator QCborArray__Iterator_OperatorPlus(void* c_this, int32 j);
	[LinkName("QCborArray__Iterator_OperatorMinus")]
	public static extern QCborArray__Iterator QCborArray__Iterator_OperatorMinus(void* c_this, int32 j);
	[LinkName("QCborArray__Iterator_OperatorMinusWithQCborArrayIterator")]
	public static extern int32 QCborArray__Iterator_OperatorMinusWithQCborArrayIterator(void* c_this, QCborArray__Iterator j);
}
public struct QCborArray__ConstIterator
{
	[LinkName("QCborArray__ConstIterator_new")]
	public static extern void* QCborArray__ConstIterator_new(QCborArray__ConstIterator other);
	[LinkName("QCborArray__ConstIterator_new2")]
	public static extern void* QCborArray__ConstIterator_new2();
	[LinkName("QCborArray__ConstIterator_new3")]
	public static extern void* QCborArray__ConstIterator_new3(QCborArray__ConstIterator param1);
	[LinkName("QCborArray__ConstIterator_OperatorAssign")]
	public static extern void QCborArray__ConstIterator_OperatorAssign(void* c_this, QCborArray__ConstIterator other);
	[LinkName("QCborArray__ConstIterator_OperatorMultiply")]
	public static extern QCborValueConstRef QCborArray__ConstIterator_OperatorMultiply(void* c_this);
	[LinkName("QCborArray__ConstIterator_OperatorMinusGreater")]
	public static extern QCborValueConstRef QCborArray__ConstIterator_OperatorMinusGreater(void* c_this);
	[LinkName("QCborArray__ConstIterator_OperatorSubscript")]
	public static extern QCborValueConstRef QCborArray__ConstIterator_OperatorSubscript(void* c_this, int32 j);
	[LinkName("QCborArray__ConstIterator_OperatorEqual")]
	public static extern bool QCborArray__ConstIterator_OperatorEqual(void* c_this, QCborArray__Iterator o);
	[LinkName("QCborArray__ConstIterator_OperatorNotEqual")]
	public static extern bool QCborArray__ConstIterator_OperatorNotEqual(void* c_this, QCborArray__Iterator o);
	[LinkName("QCborArray__ConstIterator_OperatorLesser")]
	public static extern bool QCborArray__ConstIterator_OperatorLesser(void* c_this, QCborArray__Iterator other);
	[LinkName("QCborArray__ConstIterator_OperatorLesserOrEqual")]
	public static extern bool QCborArray__ConstIterator_OperatorLesserOrEqual(void* c_this, QCborArray__Iterator other);
	[LinkName("QCborArray__ConstIterator_OperatorGreater")]
	public static extern bool QCborArray__ConstIterator_OperatorGreater(void* c_this, QCborArray__Iterator other);
	[LinkName("QCborArray__ConstIterator_OperatorGreaterOrEqual")]
	public static extern bool QCborArray__ConstIterator_OperatorGreaterOrEqual(void* c_this, QCborArray__Iterator other);
	[LinkName("QCborArray__ConstIterator_OperatorEqualWithQCborArrayConstIterator")]
	public static extern bool QCborArray__ConstIterator_OperatorEqualWithQCborArrayConstIterator(void* c_this, QCborArray__ConstIterator o);
	[LinkName("QCborArray__ConstIterator_OperatorNotEqualWithQCborArrayConstIterator")]
	public static extern bool QCborArray__ConstIterator_OperatorNotEqualWithQCborArrayConstIterator(void* c_this, QCborArray__ConstIterator o);
	[LinkName("QCborArray__ConstIterator_OperatorLesserWithOther")]
	public static extern bool QCborArray__ConstIterator_OperatorLesserWithOther(void* c_this, QCborArray__ConstIterator other);
	[LinkName("QCborArray__ConstIterator_OperatorLesserOrEqualWithOther")]
	public static extern bool QCborArray__ConstIterator_OperatorLesserOrEqualWithOther(void* c_this, QCborArray__ConstIterator other);
	[LinkName("QCborArray__ConstIterator_OperatorGreaterWithOther")]
	public static extern bool QCborArray__ConstIterator_OperatorGreaterWithOther(void* c_this, QCborArray__ConstIterator other);
	[LinkName("QCborArray__ConstIterator_OperatorGreaterOrEqualWithOther")]
	public static extern bool QCborArray__ConstIterator_OperatorGreaterOrEqualWithOther(void* c_this, QCborArray__ConstIterator other);
	[LinkName("QCborArray__ConstIterator_OperatorPlusPlus")]
	public static extern QCborArray__ConstIterator QCborArray__ConstIterator_OperatorPlusPlus(void* c_this);
	[LinkName("QCborArray__ConstIterator_OperatorPlusPlusWithInt")]
	public static extern QCborArray__ConstIterator QCborArray__ConstIterator_OperatorPlusPlusWithInt(void* c_this, int32 param1);
	[LinkName("QCborArray__ConstIterator_OperatorMinusMinus")]
	public static extern QCborArray__ConstIterator QCborArray__ConstIterator_OperatorMinusMinus(void* c_this);
	[LinkName("QCborArray__ConstIterator_OperatorMinusMinusWithInt")]
	public static extern QCborArray__ConstIterator QCborArray__ConstIterator_OperatorMinusMinusWithInt(void* c_this, int32 param1);
	[LinkName("QCborArray__ConstIterator_OperatorPlusAssign")]
	public static extern QCborArray__ConstIterator QCborArray__ConstIterator_OperatorPlusAssign(void* c_this, int32 j);
	[LinkName("QCborArray__ConstIterator_OperatorMinusAssign")]
	public static extern QCborArray__ConstIterator QCborArray__ConstIterator_OperatorMinusAssign(void* c_this, int32 j);
	[LinkName("QCborArray__ConstIterator_OperatorPlus")]
	public static extern QCborArray__ConstIterator QCborArray__ConstIterator_OperatorPlus(void* c_this, int32 j);
	[LinkName("QCborArray__ConstIterator_OperatorMinus")]
	public static extern QCborArray__ConstIterator QCborArray__ConstIterator_OperatorMinus(void* c_this, int32 j);
	[LinkName("QCborArray__ConstIterator_OperatorMinusWithQCborArrayConstIterator")]
	public static extern int32 QCborArray__ConstIterator_OperatorMinusWithQCborArrayConstIterator(void* c_this, QCborArray__ConstIterator j);
}