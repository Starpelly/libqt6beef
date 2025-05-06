using System;
using System.Interop;
namespace Qt;

public struct QCborArray
{
	[LinkName("QCborArray_new")]
	public static extern QCborArray* QCborArray_new();
	[LinkName("QCborArray_new2")]
	public static extern QCborArray* QCborArray_new2(QCborArray* other);
	[LinkName("QCborArray_OperatorAssign")]
	public static extern void QCborArray_OperatorAssign(Self* c_this, QCborArray* other);
	[LinkName("QCborArray_Swap")]
	public static extern void QCborArray_Swap(Self* c_this, QCborArray* other);
	[LinkName("QCborArray_ToCborValue")]
	public static extern QCborValue QCborArray_ToCborValue(Self* c_this);
	[LinkName("QCborArray_Size")]
	public static extern int32 QCborArray_Size(Self* c_this);
	[LinkName("QCborArray_IsEmpty")]
	public static extern bool QCborArray_IsEmpty(Self* c_this);
	[LinkName("QCborArray_Clear")]
	public static extern void QCborArray_Clear(Self* c_this);
	[LinkName("QCborArray_At")]
	public static extern QCborValue QCborArray_At(Self* c_this, int32 i);
	[LinkName("QCborArray_First")]
	public static extern QCborValue QCborArray_First(Self* c_this);
	[LinkName("QCborArray_Last")]
	public static extern QCborValue QCborArray_Last(Self* c_this);
	[LinkName("QCborArray_OperatorSubscript")]
	public static extern QCborValue QCborArray_OperatorSubscript(Self* c_this, int32 i);
	[LinkName("QCborArray_First2")]
	public static extern QCborValueRef QCborArray_First2(Self* c_this);
	[LinkName("QCborArray_Last2")]
	public static extern QCborValueRef QCborArray_Last2(Self* c_this);
	[LinkName("QCborArray_OperatorSubscriptWithQsizetype")]
	public static extern QCborValueRef QCborArray_OperatorSubscriptWithQsizetype(Self* c_this, int32 i);
	[LinkName("QCborArray_Insert")]
	public static extern void QCborArray_Insert(Self* c_this, int32 i, QCborValue* value);
	[LinkName("QCborArray_Prepend")]
	public static extern void QCborArray_Prepend(Self* c_this, QCborValue* value);
	[LinkName("QCborArray_Append")]
	public static extern void QCborArray_Append(Self* c_this, QCborValue* value);
	[LinkName("QCborArray_Extract")]
	public static extern QCborValue QCborArray_Extract(Self* c_this, QCborArray__ConstIterator it);
	[LinkName("QCborArray_ExtractWithIt")]
	public static extern QCborValue QCborArray_ExtractWithIt(Self* c_this, QCborArray__Iterator it);
	[LinkName("QCborArray_RemoveAt")]
	public static extern void QCborArray_RemoveAt(Self* c_this, int32 i);
	[LinkName("QCborArray_TakeAt")]
	public static extern QCborValue QCborArray_TakeAt(Self* c_this, int32 i);
	[LinkName("QCborArray_RemoveFirst")]
	public static extern void QCborArray_RemoveFirst(Self* c_this);
	[LinkName("QCborArray_RemoveLast")]
	public static extern void QCborArray_RemoveLast(Self* c_this);
	[LinkName("QCborArray_TakeFirst")]
	public static extern QCborValue QCborArray_TakeFirst(Self* c_this);
	[LinkName("QCborArray_TakeLast")]
	public static extern QCborValue QCborArray_TakeLast(Self* c_this);
	[LinkName("QCborArray_Contains")]
	public static extern bool QCborArray_Contains(Self* c_this, QCborValue* value);
	[LinkName("QCborArray_Compare")]
	public static extern int32 QCborArray_Compare(Self* c_this, QCborArray* other);
	[LinkName("QCborArray_OperatorEqual")]
	public static extern bool QCborArray_OperatorEqual(Self* c_this, QCborArray* other);
	[LinkName("QCborArray_OperatorNotEqual")]
	public static extern bool QCborArray_OperatorNotEqual(Self* c_this, QCborArray* other);
	[LinkName("QCborArray_OperatorLesser")]
	public static extern bool QCborArray_OperatorLesser(Self* c_this, QCborArray* other);
	[LinkName("QCborArray_Begin")]
	public static extern QCborArray__Iterator QCborArray_Begin(Self* c_this);
	[LinkName("QCborArray_ConstBegin")]
	public static extern QCborArray__ConstIterator QCborArray_ConstBegin(Self* c_this);
	[LinkName("QCborArray_Begin2")]
	public static extern QCborArray__ConstIterator QCborArray_Begin2(Self* c_this);
	[LinkName("QCborArray_Cbegin")]
	public static extern QCborArray__ConstIterator QCborArray_Cbegin(Self* c_this);
	[LinkName("QCborArray_End")]
	public static extern QCborArray__Iterator QCborArray_End(Self* c_this);
	[LinkName("QCborArray_ConstEnd")]
	public static extern QCborArray__ConstIterator QCborArray_ConstEnd(Self* c_this);
	[LinkName("QCborArray_End2")]
	public static extern QCborArray__ConstIterator QCborArray_End2(Self* c_this);
	[LinkName("QCborArray_Cend")]
	public static extern QCborArray__ConstIterator QCborArray_Cend(Self* c_this);
	[LinkName("QCborArray_Insert2")]
	public static extern QCborArray__Iterator QCborArray_Insert2(Self* c_this, QCborArray__Iterator before, QCborValue* value);
	[LinkName("QCborArray_Insert3")]
	public static extern QCborArray__Iterator QCborArray_Insert3(Self* c_this, QCborArray__ConstIterator before, QCborValue* value);
	[LinkName("QCborArray_Erase")]
	public static extern QCborArray__Iterator QCborArray_Erase(Self* c_this, QCborArray__Iterator it);
	[LinkName("QCborArray_EraseWithIt")]
	public static extern QCborArray__Iterator QCborArray_EraseWithIt(Self* c_this, QCborArray__ConstIterator it);
	[LinkName("QCborArray_PushBack")]
	public static extern void QCborArray_PushBack(Self* c_this, QCborValue* t);
	[LinkName("QCborArray_PushFront")]
	public static extern void QCborArray_PushFront(Self* c_this, QCborValue* t);
	[LinkName("QCborArray_PopFront")]
	public static extern void QCborArray_PopFront(Self* c_this);
	[LinkName("QCborArray_PopBack")]
	public static extern void QCborArray_PopBack(Self* c_this);
	[LinkName("QCborArray_Empty")]
	public static extern bool QCborArray_Empty(Self* c_this);
	[LinkName("QCborArray_OperatorPlus")]
	public static extern QCborArray QCborArray_OperatorPlus(Self* c_this, QCborValue* v);
	[LinkName("QCborArray_OperatorPlusAssign")]
	public static extern QCborArray* QCborArray_OperatorPlusAssign(Self* c_this, QCborValue* v);
	[LinkName("QCborArray_OperatorShiftLeft")]
	public static extern QCborArray* QCborArray_OperatorShiftLeft(Self* c_this, QCborValue* v);
	[LinkName("QCborArray_FromStringList")]
	public static extern QCborArray QCborArray_FromStringList(libqt_string[] list);
	[LinkName("QCborArray_FromJsonArray")]
	public static extern QCborArray QCborArray_FromJsonArray(QJsonArray* array);
	[LinkName("QCborArray_ToJsonArray")]
	public static extern QJsonArray QCborArray_ToJsonArray(Self* c_this);
}
public struct QCborArray__Iterator
{
	[LinkName("QCborArray__Iterator_new")]
	public static extern QCborArray__Iterator* QCborArray__Iterator_new(QCborArray__Iterator* other);
	[LinkName("QCborArray__Iterator_new2")]
	public static extern QCborArray__Iterator* QCborArray__Iterator_new2();
	[LinkName("QCborArray__Iterator_new3")]
	public static extern QCborArray__Iterator* QCborArray__Iterator_new3(QCborArray__Iterator* param1);
	[LinkName("QCborArray__Iterator_OperatorAssign")]
	public static extern void QCborArray__Iterator_OperatorAssign(Self* c_this, QCborArray__Iterator* other);
	[LinkName("QCborArray__Iterator_OperatorMultiply")]
	public static extern QCborValueRef QCborArray__Iterator_OperatorMultiply(Self* c_this);
	[LinkName("QCborArray__Iterator_OperatorMinusGreater")]
	public static extern QCborValueRef* QCborArray__Iterator_OperatorMinusGreater(Self* c_this);
	[LinkName("QCborArray__Iterator_OperatorMinusGreater2")]
	public static extern QCborValueConstRef* QCborArray__Iterator_OperatorMinusGreater2(Self* c_this);
	[LinkName("QCborArray__Iterator_OperatorSubscript")]
	public static extern QCborValueRef QCborArray__Iterator_OperatorSubscript(Self* c_this, int32 j);
	[LinkName("QCborArray__Iterator_OperatorEqual")]
	public static extern bool QCborArray__Iterator_OperatorEqual(Self* c_this, QCborArray__Iterator* o);
	[LinkName("QCborArray__Iterator_OperatorNotEqual")]
	public static extern bool QCborArray__Iterator_OperatorNotEqual(Self* c_this, QCborArray__Iterator* o);
	[LinkName("QCborArray__Iterator_OperatorLesser")]
	public static extern bool QCborArray__Iterator_OperatorLesser(Self* c_this, QCborArray__Iterator* other);
	[LinkName("QCborArray__Iterator_OperatorLesserOrEqual")]
	public static extern bool QCborArray__Iterator_OperatorLesserOrEqual(Self* c_this, QCborArray__Iterator* other);
	[LinkName("QCborArray__Iterator_OperatorGreater")]
	public static extern bool QCborArray__Iterator_OperatorGreater(Self* c_this, QCborArray__Iterator* other);
	[LinkName("QCborArray__Iterator_OperatorGreaterOrEqual")]
	public static extern bool QCborArray__Iterator_OperatorGreaterOrEqual(Self* c_this, QCborArray__Iterator* other);
	[LinkName("QCborArray__Iterator_OperatorEqualWithQCborArrayConstIterator")]
	public static extern bool QCborArray__Iterator_OperatorEqualWithQCborArrayConstIterator(Self* c_this, QCborArray__ConstIterator* o);
	[LinkName("QCborArray__Iterator_OperatorNotEqualWithQCborArrayConstIterator")]
	public static extern bool QCborArray__Iterator_OperatorNotEqualWithQCborArrayConstIterator(Self* c_this, QCborArray__ConstIterator* o);
	[LinkName("QCborArray__Iterator_OperatorLesserWithOther")]
	public static extern bool QCborArray__Iterator_OperatorLesserWithOther(Self* c_this, QCborArray__ConstIterator* other);
	[LinkName("QCborArray__Iterator_OperatorLesserOrEqualWithOther")]
	public static extern bool QCborArray__Iterator_OperatorLesserOrEqualWithOther(Self* c_this, QCborArray__ConstIterator* other);
	[LinkName("QCborArray__Iterator_OperatorGreaterWithOther")]
	public static extern bool QCborArray__Iterator_OperatorGreaterWithOther(Self* c_this, QCborArray__ConstIterator* other);
	[LinkName("QCborArray__Iterator_OperatorGreaterOrEqualWithOther")]
	public static extern bool QCborArray__Iterator_OperatorGreaterOrEqualWithOther(Self* c_this, QCborArray__ConstIterator* other);
	[LinkName("QCborArray__Iterator_OperatorPlusPlus")]
	public static extern QCborArray__Iterator* QCborArray__Iterator_OperatorPlusPlus(Self* c_this);
	[LinkName("QCborArray__Iterator_OperatorPlusPlusWithInt")]
	public static extern QCborArray__Iterator QCborArray__Iterator_OperatorPlusPlusWithInt(Self* c_this, int32 param1);
	[LinkName("QCborArray__Iterator_OperatorMinusMinus")]
	public static extern QCborArray__Iterator* QCborArray__Iterator_OperatorMinusMinus(Self* c_this);
	[LinkName("QCborArray__Iterator_OperatorMinusMinusWithInt")]
	public static extern QCborArray__Iterator QCborArray__Iterator_OperatorMinusMinusWithInt(Self* c_this, int32 param1);
	[LinkName("QCborArray__Iterator_OperatorPlusAssign")]
	public static extern QCborArray__Iterator* QCborArray__Iterator_OperatorPlusAssign(Self* c_this, int32 j);
	[LinkName("QCborArray__Iterator_OperatorMinusAssign")]
	public static extern QCborArray__Iterator* QCborArray__Iterator_OperatorMinusAssign(Self* c_this, int32 j);
	[LinkName("QCborArray__Iterator_OperatorPlus")]
	public static extern QCborArray__Iterator QCborArray__Iterator_OperatorPlus(Self* c_this, int32 j);
	[LinkName("QCborArray__Iterator_OperatorMinus")]
	public static extern QCborArray__Iterator QCborArray__Iterator_OperatorMinus(Self* c_this, int32 j);
	[LinkName("QCborArray__Iterator_OperatorMinusWithQCborArrayIterator")]
	public static extern int32 QCborArray__Iterator_OperatorMinusWithQCborArrayIterator(Self* c_this, QCborArray__Iterator j);
}
public struct QCborArray__ConstIterator
{
	[LinkName("QCborArray__ConstIterator_new")]
	public static extern QCborArray__ConstIterator* QCborArray__ConstIterator_new(QCborArray__ConstIterator* other);
	[LinkName("QCborArray__ConstIterator_new2")]
	public static extern QCborArray__ConstIterator* QCborArray__ConstIterator_new2();
	[LinkName("QCborArray__ConstIterator_new3")]
	public static extern QCborArray__ConstIterator* QCborArray__ConstIterator_new3(QCborArray__ConstIterator* param1);
	[LinkName("QCborArray__ConstIterator_OperatorAssign")]
	public static extern void QCborArray__ConstIterator_OperatorAssign(Self* c_this, QCborArray__ConstIterator* other);
	[LinkName("QCborArray__ConstIterator_OperatorMultiply")]
	public static extern QCborValueConstRef QCborArray__ConstIterator_OperatorMultiply(Self* c_this);
	[LinkName("QCborArray__ConstIterator_OperatorMinusGreater")]
	public static extern QCborValueConstRef* QCborArray__ConstIterator_OperatorMinusGreater(Self* c_this);
	[LinkName("QCborArray__ConstIterator_OperatorSubscript")]
	public static extern QCborValueConstRef QCborArray__ConstIterator_OperatorSubscript(Self* c_this, int32 j);
	[LinkName("QCborArray__ConstIterator_OperatorEqual")]
	public static extern bool QCborArray__ConstIterator_OperatorEqual(Self* c_this, QCborArray__Iterator* o);
	[LinkName("QCborArray__ConstIterator_OperatorNotEqual")]
	public static extern bool QCborArray__ConstIterator_OperatorNotEqual(Self* c_this, QCborArray__Iterator* o);
	[LinkName("QCborArray__ConstIterator_OperatorLesser")]
	public static extern bool QCborArray__ConstIterator_OperatorLesser(Self* c_this, QCborArray__Iterator* other);
	[LinkName("QCborArray__ConstIterator_OperatorLesserOrEqual")]
	public static extern bool QCborArray__ConstIterator_OperatorLesserOrEqual(Self* c_this, QCborArray__Iterator* other);
	[LinkName("QCborArray__ConstIterator_OperatorGreater")]
	public static extern bool QCborArray__ConstIterator_OperatorGreater(Self* c_this, QCborArray__Iterator* other);
	[LinkName("QCborArray__ConstIterator_OperatorGreaterOrEqual")]
	public static extern bool QCborArray__ConstIterator_OperatorGreaterOrEqual(Self* c_this, QCborArray__Iterator* other);
	[LinkName("QCborArray__ConstIterator_OperatorEqualWithQCborArrayConstIterator")]
	public static extern bool QCborArray__ConstIterator_OperatorEqualWithQCborArrayConstIterator(Self* c_this, QCborArray__ConstIterator* o);
	[LinkName("QCborArray__ConstIterator_OperatorNotEqualWithQCborArrayConstIterator")]
	public static extern bool QCborArray__ConstIterator_OperatorNotEqualWithQCborArrayConstIterator(Self* c_this, QCborArray__ConstIterator* o);
	[LinkName("QCborArray__ConstIterator_OperatorLesserWithOther")]
	public static extern bool QCborArray__ConstIterator_OperatorLesserWithOther(Self* c_this, QCborArray__ConstIterator* other);
	[LinkName("QCborArray__ConstIterator_OperatorLesserOrEqualWithOther")]
	public static extern bool QCborArray__ConstIterator_OperatorLesserOrEqualWithOther(Self* c_this, QCborArray__ConstIterator* other);
	[LinkName("QCborArray__ConstIterator_OperatorGreaterWithOther")]
	public static extern bool QCborArray__ConstIterator_OperatorGreaterWithOther(Self* c_this, QCborArray__ConstIterator* other);
	[LinkName("QCborArray__ConstIterator_OperatorGreaterOrEqualWithOther")]
	public static extern bool QCborArray__ConstIterator_OperatorGreaterOrEqualWithOther(Self* c_this, QCborArray__ConstIterator* other);
	[LinkName("QCborArray__ConstIterator_OperatorPlusPlus")]
	public static extern QCborArray__ConstIterator* QCborArray__ConstIterator_OperatorPlusPlus(Self* c_this);
	[LinkName("QCborArray__ConstIterator_OperatorPlusPlusWithInt")]
	public static extern QCborArray__ConstIterator QCborArray__ConstIterator_OperatorPlusPlusWithInt(Self* c_this, int32 param1);
	[LinkName("QCborArray__ConstIterator_OperatorMinusMinus")]
	public static extern QCborArray__ConstIterator* QCborArray__ConstIterator_OperatorMinusMinus(Self* c_this);
	[LinkName("QCborArray__ConstIterator_OperatorMinusMinusWithInt")]
	public static extern QCborArray__ConstIterator QCborArray__ConstIterator_OperatorMinusMinusWithInt(Self* c_this, int32 param1);
	[LinkName("QCborArray__ConstIterator_OperatorPlusAssign")]
	public static extern QCborArray__ConstIterator* QCborArray__ConstIterator_OperatorPlusAssign(Self* c_this, int32 j);
	[LinkName("QCborArray__ConstIterator_OperatorMinusAssign")]
	public static extern QCborArray__ConstIterator* QCborArray__ConstIterator_OperatorMinusAssign(Self* c_this, int32 j);
	[LinkName("QCborArray__ConstIterator_OperatorPlus")]
	public static extern QCborArray__ConstIterator QCborArray__ConstIterator_OperatorPlus(Self* c_this, int32 j);
	[LinkName("QCborArray__ConstIterator_OperatorMinus")]
	public static extern QCborArray__ConstIterator QCborArray__ConstIterator_OperatorMinus(Self* c_this, int32 j);
	[LinkName("QCborArray__ConstIterator_OperatorMinusWithQCborArrayConstIterator")]
	public static extern int32 QCborArray__ConstIterator_OperatorMinusWithQCborArrayConstIterator(Self* c_this, QCborArray__ConstIterator j);
}