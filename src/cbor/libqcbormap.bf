using System;
using System.Interop;
namespace Qt;

public struct QCborMap
{
	[LinkName("QCborMap_new")]
	public static extern void* QCborMap_new();
	[LinkName("QCborMap_new2")]
	public static extern void* QCborMap_new2(QCborMap other);
	[LinkName("QCborMap_OperatorAssign")]
	public static extern void QCborMap_OperatorAssign(void* c_this, QCborMap other);
	[LinkName("QCborMap_Swap")]
	public static extern void QCborMap_Swap(void* c_this, QCborMap other);
	[LinkName("QCborMap_ToCborValue")]
	public static extern QCborValue QCborMap_ToCborValue(void* c_this);
	[LinkName("QCborMap_Size")]
	public static extern int32 QCborMap_Size(void* c_this);
	[LinkName("QCborMap_IsEmpty")]
	public static extern bool QCborMap_IsEmpty(void* c_this);
	[LinkName("QCborMap_Clear")]
	public static extern void QCborMap_Clear(void* c_this);
	[LinkName("QCborMap_Keys")]
	public static extern QCborValue[] QCborMap_Keys(void* c_this);
	[LinkName("QCborMap_Value")]
	public static extern QCborValue QCborMap_Value(void* c_this, int64 key);
	[LinkName("QCborMap_Value2")]
	public static extern QCborValue QCborMap_Value2(void* c_this, char8[] key);
	[LinkName("QCborMap_Value3")]
	public static extern QCborValue QCborMap_Value3(void* c_this, QCborValue key);
	[LinkName("QCborMap_OperatorSubscript")]
	public static extern QCborValue QCborMap_OperatorSubscript(void* c_this, int64 key);
	[LinkName("QCborMap_OperatorSubscript2")]
	public static extern QCborValue QCborMap_OperatorSubscript2(void* c_this, char8[] key);
	[LinkName("QCborMap_OperatorSubscript3")]
	public static extern QCborValue QCborMap_OperatorSubscript3(void* c_this, QCborValue key);
	[LinkName("QCborMap_OperatorSubscript4")]
	public static extern QCborValueRef QCborMap_OperatorSubscript4(void* c_this, int64 key);
	[LinkName("QCborMap_OperatorSubscript6")]
	public static extern QCborValueRef QCborMap_OperatorSubscript6(void* c_this, char8[] key);
	[LinkName("QCborMap_OperatorSubscript7")]
	public static extern QCborValueRef QCborMap_OperatorSubscript7(void* c_this, QCborValue key);
	[LinkName("QCborMap_Take")]
	public static extern QCborValue QCborMap_Take(void* c_this, int64 key);
	[LinkName("QCborMap_Take2")]
	public static extern QCborValue QCborMap_Take2(void* c_this, char8[] key);
	[LinkName("QCborMap_Take3")]
	public static extern QCborValue QCborMap_Take3(void* c_this, QCborValue key);
	[LinkName("QCborMap_Remove")]
	public static extern void QCborMap_Remove(void* c_this, int64 key);
	[LinkName("QCborMap_Remove2")]
	public static extern void QCborMap_Remove2(void* c_this, char8[] key);
	[LinkName("QCborMap_Remove3")]
	public static extern void QCborMap_Remove3(void* c_this, QCborValue key);
	[LinkName("QCborMap_Contains")]
	public static extern bool QCborMap_Contains(void* c_this, int64 key);
	[LinkName("QCborMap_Contains2")]
	public static extern bool QCborMap_Contains2(void* c_this, char8[] key);
	[LinkName("QCborMap_Contains3")]
	public static extern bool QCborMap_Contains3(void* c_this, QCborValue key);
	[LinkName("QCborMap_Compare")]
	public static extern int32 QCborMap_Compare(void* c_this, QCborMap other);
	[LinkName("QCborMap_OperatorEqual")]
	public static extern bool QCborMap_OperatorEqual(void* c_this, QCborMap other);
	[LinkName("QCborMap_OperatorNotEqual")]
	public static extern bool QCborMap_OperatorNotEqual(void* c_this, QCborMap other);
	[LinkName("QCborMap_OperatorLesser")]
	public static extern bool QCborMap_OperatorLesser(void* c_this, QCborMap other);
	[LinkName("QCborMap_Begin")]
	public static extern QCborMap__Iterator QCborMap_Begin(void* c_this);
	[LinkName("QCborMap_ConstBegin")]
	public static extern QCborMap__ConstIterator QCborMap_ConstBegin(void* c_this);
	[LinkName("QCborMap_Begin2")]
	public static extern QCborMap__ConstIterator QCborMap_Begin2(void* c_this);
	[LinkName("QCborMap_Cbegin")]
	public static extern QCborMap__ConstIterator QCborMap_Cbegin(void* c_this);
	[LinkName("QCborMap_End")]
	public static extern QCborMap__Iterator QCborMap_End(void* c_this);
	[LinkName("QCborMap_ConstEnd")]
	public static extern QCborMap__ConstIterator QCborMap_ConstEnd(void* c_this);
	[LinkName("QCborMap_End2")]
	public static extern QCborMap__ConstIterator QCborMap_End2(void* c_this);
	[LinkName("QCborMap_Cend")]
	public static extern QCborMap__ConstIterator QCborMap_Cend(void* c_this);
	[LinkName("QCborMap_Erase")]
	public static extern QCborMap__Iterator QCborMap_Erase(void* c_this, QCborMap__Iterator it);
	[LinkName("QCborMap_EraseWithIt")]
	public static extern QCborMap__Iterator QCborMap_EraseWithIt(void* c_this, QCborMap__ConstIterator it);
	[LinkName("QCborMap_Extract")]
	public static extern QCborValue QCborMap_Extract(void* c_this, QCborMap__Iterator it);
	[LinkName("QCborMap_ExtractWithIt")]
	public static extern QCborValue QCborMap_ExtractWithIt(void* c_this, QCborMap__ConstIterator it);
	[LinkName("QCborMap_Empty")]
	public static extern bool QCborMap_Empty(void* c_this);
	[LinkName("QCborMap_Find")]
	public static extern QCborMap__Iterator QCborMap_Find(void* c_this, int64 key);
	[LinkName("QCborMap_Find2")]
	public static extern QCborMap__Iterator QCborMap_Find2(void* c_this, char8[] key);
	[LinkName("QCborMap_Find3")]
	public static extern QCborMap__Iterator QCborMap_Find3(void* c_this, QCborValue key);
	[LinkName("QCborMap_ConstFind")]
	public static extern QCborMap__ConstIterator QCborMap_ConstFind(void* c_this, int64 key);
	[LinkName("QCborMap_ConstFind2")]
	public static extern QCborMap__ConstIterator QCborMap_ConstFind2(void* c_this, char8[] key);
	[LinkName("QCborMap_ConstFind3")]
	public static extern QCborMap__ConstIterator QCborMap_ConstFind3(void* c_this, QCborValue key);
	[LinkName("QCborMap_Find4")]
	public static extern QCborMap__ConstIterator QCborMap_Find4(void* c_this, int64 key);
	[LinkName("QCborMap_Find6")]
	public static extern QCborMap__ConstIterator QCborMap_Find6(void* c_this, char8[] key);
	[LinkName("QCborMap_Find7")]
	public static extern QCborMap__ConstIterator QCborMap_Find7(void* c_this, QCborValue key);
	[LinkName("QCborMap_Insert")]
	public static extern QCborMap__Iterator QCborMap_Insert(void* c_this, int64 key, QCborValue value_);
	[LinkName("QCborMap_Insert3")]
	public static extern QCborMap__Iterator QCborMap_Insert3(void* c_this, char8[] key, QCborValue value_);
	[LinkName("QCborMap_Insert4")]
	public static extern QCborMap__Iterator QCborMap_Insert4(void* c_this, QCborValue key, QCborValue value_);
	[LinkName("QCborMap_InsertWithQCborMapvalueType")]
	public static extern QCborMap__Iterator QCborMap_InsertWithQCborMapvalueType(void* c_this, void* v);
	[LinkName("QCborMap_FromVariantMap")]
	public static extern QCborMap QCborMap_FromVariantMap(void* mapVal);
	[LinkName("QCborMap_FromVariantHash")]
	public static extern QCborMap QCborMap_FromVariantHash(void* hash);
	[LinkName("QCborMap_FromJsonObject")]
	public static extern QCborMap QCborMap_FromJsonObject(QJsonObject o);
	[LinkName("QCborMap_ToVariantMap")]
	public static extern void* QCborMap_ToVariantMap(void* c_this);
	[LinkName("QCborMap_ToVariantHash")]
	public static extern void* QCborMap_ToVariantHash(void* c_this);
	[LinkName("QCborMap_ToJsonObject")]
	public static extern QJsonObject QCborMap_ToJsonObject(void* c_this);
}
public struct QCborMap__Iterator
{
	[LinkName("QCborMap__Iterator_new")]
	public static extern void* QCborMap__Iterator_new(QCborMap__Iterator other);
	[LinkName("QCborMap__Iterator_new2")]
	public static extern void* QCborMap__Iterator_new2();
	[LinkName("QCborMap__Iterator_new3")]
	public static extern void* QCborMap__Iterator_new3(QCborMap__Iterator param1);
	[LinkName("QCborMap__Iterator_OperatorAssign")]
	public static extern void QCborMap__Iterator_OperatorAssign(void* c_this, QCborMap__Iterator other);
	[LinkName("QCborMap__Iterator_OperatorMultiply")]
	public static extern void* QCborMap__Iterator_OperatorMultiply(void* c_this);
	[LinkName("QCborMap__Iterator_OperatorSubscript")]
	public static extern void* QCborMap__Iterator_OperatorSubscript(void* c_this, int32 j);
	[LinkName("QCborMap__Iterator_OperatorMinusGreater")]
	public static extern QCborValueRef QCborMap__Iterator_OperatorMinusGreater(void* c_this);
	[LinkName("QCborMap__Iterator_OperatorMinusGreater2")]
	public static extern QCborValueConstRef QCborMap__Iterator_OperatorMinusGreater2(void* c_this);
	[LinkName("QCborMap__Iterator_Key")]
	public static extern QCborValue QCborMap__Iterator_Key(void* c_this);
	[LinkName("QCborMap__Iterator_Value")]
	public static extern QCborValueRef QCborMap__Iterator_Value(void* c_this);
	[LinkName("QCborMap__Iterator_OperatorEqual")]
	public static extern bool QCborMap__Iterator_OperatorEqual(void* c_this, QCborMap__Iterator o);
	[LinkName("QCborMap__Iterator_OperatorNotEqual")]
	public static extern bool QCborMap__Iterator_OperatorNotEqual(void* c_this, QCborMap__Iterator o);
	[LinkName("QCborMap__Iterator_OperatorLesser")]
	public static extern bool QCborMap__Iterator_OperatorLesser(void* c_this, QCborMap__Iterator other);
	[LinkName("QCborMap__Iterator_OperatorLesserOrEqual")]
	public static extern bool QCborMap__Iterator_OperatorLesserOrEqual(void* c_this, QCborMap__Iterator other);
	[LinkName("QCborMap__Iterator_OperatorGreater")]
	public static extern bool QCborMap__Iterator_OperatorGreater(void* c_this, QCborMap__Iterator other);
	[LinkName("QCborMap__Iterator_OperatorGreaterOrEqual")]
	public static extern bool QCborMap__Iterator_OperatorGreaterOrEqual(void* c_this, QCborMap__Iterator other);
	[LinkName("QCborMap__Iterator_OperatorEqualWithQCborMapConstIterator")]
	public static extern bool QCborMap__Iterator_OperatorEqualWithQCborMapConstIterator(void* c_this, QCborMap__ConstIterator o);
	[LinkName("QCborMap__Iterator_OperatorNotEqualWithQCborMapConstIterator")]
	public static extern bool QCborMap__Iterator_OperatorNotEqualWithQCborMapConstIterator(void* c_this, QCborMap__ConstIterator o);
	[LinkName("QCborMap__Iterator_OperatorLesserWithOther")]
	public static extern bool QCborMap__Iterator_OperatorLesserWithOther(void* c_this, QCborMap__ConstIterator other);
	[LinkName("QCborMap__Iterator_OperatorLesserOrEqualWithOther")]
	public static extern bool QCborMap__Iterator_OperatorLesserOrEqualWithOther(void* c_this, QCborMap__ConstIterator other);
	[LinkName("QCborMap__Iterator_OperatorGreaterWithOther")]
	public static extern bool QCborMap__Iterator_OperatorGreaterWithOther(void* c_this, QCborMap__ConstIterator other);
	[LinkName("QCborMap__Iterator_OperatorGreaterOrEqualWithOther")]
	public static extern bool QCborMap__Iterator_OperatorGreaterOrEqualWithOther(void* c_this, QCborMap__ConstIterator other);
	[LinkName("QCborMap__Iterator_OperatorPlusPlus")]
	public static extern QCborMap__Iterator QCborMap__Iterator_OperatorPlusPlus(void* c_this);
	[LinkName("QCborMap__Iterator_OperatorPlusPlusWithInt")]
	public static extern QCborMap__Iterator QCborMap__Iterator_OperatorPlusPlusWithInt(void* c_this, int32 param1);
	[LinkName("QCborMap__Iterator_OperatorMinusMinus")]
	public static extern QCborMap__Iterator QCborMap__Iterator_OperatorMinusMinus(void* c_this);
	[LinkName("QCborMap__Iterator_OperatorMinusMinusWithInt")]
	public static extern QCborMap__Iterator QCborMap__Iterator_OperatorMinusMinusWithInt(void* c_this, int32 param1);
	[LinkName("QCborMap__Iterator_OperatorPlusAssign")]
	public static extern QCborMap__Iterator QCborMap__Iterator_OperatorPlusAssign(void* c_this, int32 j);
	[LinkName("QCborMap__Iterator_OperatorMinusAssign")]
	public static extern QCborMap__Iterator QCborMap__Iterator_OperatorMinusAssign(void* c_this, int32 j);
	[LinkName("QCborMap__Iterator_OperatorPlus")]
	public static extern QCborMap__Iterator QCborMap__Iterator_OperatorPlus(void* c_this, int32 j);
	[LinkName("QCborMap__Iterator_OperatorMinus")]
	public static extern QCborMap__Iterator QCborMap__Iterator_OperatorMinus(void* c_this, int32 j);
	[LinkName("QCborMap__Iterator_OperatorMinusWithQCborMapIterator")]
	public static extern int32 QCborMap__Iterator_OperatorMinusWithQCborMapIterator(void* c_this, QCborMap__Iterator j);
}
public struct QCborMap__ConstIterator
{
	[LinkName("QCborMap__ConstIterator_new")]
	public static extern void* QCborMap__ConstIterator_new(QCborMap__ConstIterator other);
	[LinkName("QCborMap__ConstIterator_new2")]
	public static extern void* QCborMap__ConstIterator_new2();
	[LinkName("QCborMap__ConstIterator_new3")]
	public static extern void* QCborMap__ConstIterator_new3(QCborMap__ConstIterator param1);
	[LinkName("QCborMap__ConstIterator_OperatorAssign")]
	public static extern void QCborMap__ConstIterator_OperatorAssign(void* c_this, QCborMap__ConstIterator other);
	[LinkName("QCborMap__ConstIterator_OperatorMultiply")]
	public static extern void* QCborMap__ConstIterator_OperatorMultiply(void* c_this);
	[LinkName("QCborMap__ConstIterator_OperatorSubscript")]
	public static extern void* QCborMap__ConstIterator_OperatorSubscript(void* c_this, int32 j);
	[LinkName("QCborMap__ConstIterator_OperatorMinusGreater")]
	public static extern QCborValueConstRef QCborMap__ConstIterator_OperatorMinusGreater(void* c_this);
	[LinkName("QCborMap__ConstIterator_Key")]
	public static extern QCborValue QCborMap__ConstIterator_Key(void* c_this);
	[LinkName("QCborMap__ConstIterator_Value")]
	public static extern QCborValueConstRef QCborMap__ConstIterator_Value(void* c_this);
	[LinkName("QCborMap__ConstIterator_OperatorEqual")]
	public static extern bool QCborMap__ConstIterator_OperatorEqual(void* c_this, QCborMap__Iterator o);
	[LinkName("QCborMap__ConstIterator_OperatorNotEqual")]
	public static extern bool QCborMap__ConstIterator_OperatorNotEqual(void* c_this, QCborMap__Iterator o);
	[LinkName("QCborMap__ConstIterator_OperatorLesser")]
	public static extern bool QCborMap__ConstIterator_OperatorLesser(void* c_this, QCborMap__Iterator other);
	[LinkName("QCborMap__ConstIterator_OperatorLesserOrEqual")]
	public static extern bool QCborMap__ConstIterator_OperatorLesserOrEqual(void* c_this, QCborMap__Iterator other);
	[LinkName("QCborMap__ConstIterator_OperatorGreater")]
	public static extern bool QCborMap__ConstIterator_OperatorGreater(void* c_this, QCborMap__Iterator other);
	[LinkName("QCborMap__ConstIterator_OperatorGreaterOrEqual")]
	public static extern bool QCborMap__ConstIterator_OperatorGreaterOrEqual(void* c_this, QCborMap__Iterator other);
	[LinkName("QCborMap__ConstIterator_OperatorEqualWithQCborMapConstIterator")]
	public static extern bool QCborMap__ConstIterator_OperatorEqualWithQCborMapConstIterator(void* c_this, QCborMap__ConstIterator o);
	[LinkName("QCborMap__ConstIterator_OperatorNotEqualWithQCborMapConstIterator")]
	public static extern bool QCborMap__ConstIterator_OperatorNotEqualWithQCborMapConstIterator(void* c_this, QCborMap__ConstIterator o);
	[LinkName("QCborMap__ConstIterator_OperatorLesserWithOther")]
	public static extern bool QCborMap__ConstIterator_OperatorLesserWithOther(void* c_this, QCborMap__ConstIterator other);
	[LinkName("QCborMap__ConstIterator_OperatorLesserOrEqualWithOther")]
	public static extern bool QCborMap__ConstIterator_OperatorLesserOrEqualWithOther(void* c_this, QCborMap__ConstIterator other);
	[LinkName("QCborMap__ConstIterator_OperatorGreaterWithOther")]
	public static extern bool QCborMap__ConstIterator_OperatorGreaterWithOther(void* c_this, QCborMap__ConstIterator other);
	[LinkName("QCborMap__ConstIterator_OperatorGreaterOrEqualWithOther")]
	public static extern bool QCborMap__ConstIterator_OperatorGreaterOrEqualWithOther(void* c_this, QCborMap__ConstIterator other);
	[LinkName("QCborMap__ConstIterator_OperatorPlusPlus")]
	public static extern QCborMap__ConstIterator QCborMap__ConstIterator_OperatorPlusPlus(void* c_this);
	[LinkName("QCborMap__ConstIterator_OperatorPlusPlusWithInt")]
	public static extern QCborMap__ConstIterator QCborMap__ConstIterator_OperatorPlusPlusWithInt(void* c_this, int32 param1);
	[LinkName("QCborMap__ConstIterator_OperatorMinusMinus")]
	public static extern QCborMap__ConstIterator QCborMap__ConstIterator_OperatorMinusMinus(void* c_this);
	[LinkName("QCborMap__ConstIterator_OperatorMinusMinusWithInt")]
	public static extern QCborMap__ConstIterator QCborMap__ConstIterator_OperatorMinusMinusWithInt(void* c_this, int32 param1);
	[LinkName("QCborMap__ConstIterator_OperatorPlusAssign")]
	public static extern QCborMap__ConstIterator QCborMap__ConstIterator_OperatorPlusAssign(void* c_this, int32 j);
	[LinkName("QCborMap__ConstIterator_OperatorMinusAssign")]
	public static extern QCborMap__ConstIterator QCborMap__ConstIterator_OperatorMinusAssign(void* c_this, int32 j);
	[LinkName("QCborMap__ConstIterator_OperatorPlus")]
	public static extern QCborMap__ConstIterator QCborMap__ConstIterator_OperatorPlus(void* c_this, int32 j);
	[LinkName("QCborMap__ConstIterator_OperatorMinus")]
	public static extern QCborMap__ConstIterator QCborMap__ConstIterator_OperatorMinus(void* c_this, int32 j);
	[LinkName("QCborMap__ConstIterator_OperatorMinusWithQCborMapConstIterator")]
	public static extern int32 QCborMap__ConstIterator_OperatorMinusWithQCborMapConstIterator(void* c_this, QCborMap__ConstIterator j);
}