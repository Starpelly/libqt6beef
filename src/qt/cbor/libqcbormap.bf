using System;
using System.Interop;
namespace Qt;

public struct QCborMap
{
	[LinkName("QCborMap_new")]
	public static extern QCborMap* QCborMap_new();
	[LinkName("QCborMap_new2")]
	public static extern QCborMap* QCborMap_new2(QCborMap* other);
	[LinkName("QCborMap_OperatorAssign")]
	public static extern void QCborMap_OperatorAssign(Self* c_this, QCborMap* other);
	[LinkName("QCborMap_Swap")]
	public static extern void QCborMap_Swap(Self* c_this, QCborMap* other);
	[LinkName("QCborMap_ToCborValue")]
	public static extern QCborValue QCborMap_ToCborValue(Self* c_this);
	[LinkName("QCborMap_Size")]
	public static extern int32 QCborMap_Size(Self* c_this);
	[LinkName("QCborMap_IsEmpty")]
	public static extern bool QCborMap_IsEmpty(Self* c_this);
	[LinkName("QCborMap_Clear")]
	public static extern void QCborMap_Clear(Self* c_this);
	[LinkName("QCborMap_Keys")]
	public static extern QCborValue[] QCborMap_Keys(Self* c_this);
	[LinkName("QCborMap_Value")]
	public static extern QCborValue QCborMap_Value(Self* c_this, int64 key);
	[LinkName("QCborMap_Value2")]
	public static extern QCborValue QCborMap_Value2(Self* c_this, libqt_string key);
	[LinkName("QCborMap_Value3")]
	public static extern QCborValue QCborMap_Value3(Self* c_this, QCborValue* key);
	[LinkName("QCborMap_OperatorSubscript")]
	public static extern QCborValue QCborMap_OperatorSubscript(Self* c_this, int64 key);
	[LinkName("QCborMap_OperatorSubscript2")]
	public static extern QCborValue QCborMap_OperatorSubscript2(Self* c_this, libqt_string key);
	[LinkName("QCborMap_OperatorSubscript3")]
	public static extern QCborValue QCborMap_OperatorSubscript3(Self* c_this, QCborValue* key);
	[LinkName("QCborMap_OperatorSubscript4")]
	public static extern QCborValueRef QCborMap_OperatorSubscript4(Self* c_this, int64 key);
	[LinkName("QCborMap_OperatorSubscript6")]
	public static extern QCborValueRef QCborMap_OperatorSubscript6(Self* c_this, libqt_string key);
	[LinkName("QCborMap_OperatorSubscript7")]
	public static extern QCborValueRef QCborMap_OperatorSubscript7(Self* c_this, QCborValue* key);
	[LinkName("QCborMap_Take")]
	public static extern QCborValue QCborMap_Take(Self* c_this, int64 key);
	[LinkName("QCborMap_Take2")]
	public static extern QCborValue QCborMap_Take2(Self* c_this, libqt_string key);
	[LinkName("QCborMap_Take3")]
	public static extern QCborValue QCborMap_Take3(Self* c_this, QCborValue* key);
	[LinkName("QCborMap_Remove")]
	public static extern void QCborMap_Remove(Self* c_this, int64 key);
	[LinkName("QCborMap_Remove2")]
	public static extern void QCborMap_Remove2(Self* c_this, libqt_string key);
	[LinkName("QCborMap_Remove3")]
	public static extern void QCborMap_Remove3(Self* c_this, QCborValue* key);
	[LinkName("QCborMap_Contains")]
	public static extern bool QCborMap_Contains(Self* c_this, int64 key);
	[LinkName("QCborMap_Contains2")]
	public static extern bool QCborMap_Contains2(Self* c_this, libqt_string key);
	[LinkName("QCborMap_Contains3")]
	public static extern bool QCborMap_Contains3(Self* c_this, QCborValue* key);
	[LinkName("QCborMap_Compare")]
	public static extern int32 QCborMap_Compare(Self* c_this, QCborMap* other);
	[LinkName("QCborMap_OperatorEqual")]
	public static extern bool QCborMap_OperatorEqual(Self* c_this, QCborMap* other);
	[LinkName("QCborMap_OperatorNotEqual")]
	public static extern bool QCborMap_OperatorNotEqual(Self* c_this, QCborMap* other);
	[LinkName("QCborMap_OperatorLesser")]
	public static extern bool QCborMap_OperatorLesser(Self* c_this, QCborMap* other);
	[LinkName("QCborMap_Begin")]
	public static extern QCborMap__Iterator QCborMap_Begin(Self* c_this);
	[LinkName("QCborMap_ConstBegin")]
	public static extern QCborMap__ConstIterator QCborMap_ConstBegin(Self* c_this);
	[LinkName("QCborMap_Begin2")]
	public static extern QCborMap__ConstIterator QCborMap_Begin2(Self* c_this);
	[LinkName("QCborMap_Cbegin")]
	public static extern QCborMap__ConstIterator QCborMap_Cbegin(Self* c_this);
	[LinkName("QCborMap_End")]
	public static extern QCborMap__Iterator QCborMap_End(Self* c_this);
	[LinkName("QCborMap_ConstEnd")]
	public static extern QCborMap__ConstIterator QCborMap_ConstEnd(Self* c_this);
	[LinkName("QCborMap_End2")]
	public static extern QCborMap__ConstIterator QCborMap_End2(Self* c_this);
	[LinkName("QCborMap_Cend")]
	public static extern QCborMap__ConstIterator QCborMap_Cend(Self* c_this);
	[LinkName("QCborMap_Erase")]
	public static extern QCborMap__Iterator QCborMap_Erase(Self* c_this, QCborMap__Iterator it);
	[LinkName("QCborMap_EraseWithIt")]
	public static extern QCborMap__Iterator QCborMap_EraseWithIt(Self* c_this, QCborMap__ConstIterator it);
	[LinkName("QCborMap_Extract")]
	public static extern QCborValue QCborMap_Extract(Self* c_this, QCborMap__Iterator it);
	[LinkName("QCborMap_ExtractWithIt")]
	public static extern QCborValue QCborMap_ExtractWithIt(Self* c_this, QCborMap__ConstIterator it);
	[LinkName("QCborMap_Empty")]
	public static extern bool QCborMap_Empty(Self* c_this);
	[LinkName("QCborMap_Find")]
	public static extern QCborMap__Iterator QCborMap_Find(Self* c_this, int64 key);
	[LinkName("QCborMap_Find2")]
	public static extern QCborMap__Iterator QCborMap_Find2(Self* c_this, libqt_string key);
	[LinkName("QCborMap_Find3")]
	public static extern QCborMap__Iterator QCborMap_Find3(Self* c_this, QCborValue* key);
	[LinkName("QCborMap_ConstFind")]
	public static extern QCborMap__ConstIterator QCborMap_ConstFind(Self* c_this, int64 key);
	[LinkName("QCborMap_ConstFind2")]
	public static extern QCborMap__ConstIterator QCborMap_ConstFind2(Self* c_this, libqt_string key);
	[LinkName("QCborMap_ConstFind3")]
	public static extern QCborMap__ConstIterator QCborMap_ConstFind3(Self* c_this, QCborValue* key);
	[LinkName("QCborMap_Find4")]
	public static extern QCborMap__ConstIterator QCborMap_Find4(Self* c_this, int64 key);
	[LinkName("QCborMap_Find6")]
	public static extern QCborMap__ConstIterator QCborMap_Find6(Self* c_this, libqt_string key);
	[LinkName("QCborMap_Find7")]
	public static extern QCborMap__ConstIterator QCborMap_Find7(Self* c_this, QCborValue* key);
	[LinkName("QCborMap_Insert")]
	public static extern QCborMap__Iterator QCborMap_Insert(Self* c_this, int64 key, QCborValue* value_);
	[LinkName("QCborMap_Insert3")]
	public static extern QCborMap__Iterator QCborMap_Insert3(Self* c_this, libqt_string key, QCborValue* value_);
	[LinkName("QCborMap_Insert4")]
	public static extern QCborMap__Iterator QCborMap_Insert4(Self* c_this, QCborValue* key, QCborValue* value_);
	[LinkName("QCborMap_InsertWithQCborMapvalueType")]
	public static extern QCborMap__Iterator QCborMap_InsertWithQCborMapvalueType(Self* c_this, void* v);
	[LinkName("QCborMap_FromVariantMap")]
	public static extern QCborMap QCborMap_FromVariantMap(void* mapVal);
	[LinkName("QCborMap_FromVariantHash")]
	public static extern QCborMap QCborMap_FromVariantHash(void* hash);
	[LinkName("QCborMap_FromJsonObject")]
	public static extern QCborMap QCborMap_FromJsonObject(QJsonObject* o);
	[LinkName("QCborMap_ToVariantMap")]
	public static extern void* QCborMap_ToVariantMap(Self* c_this);
	[LinkName("QCborMap_ToVariantHash")]
	public static extern void* QCborMap_ToVariantHash(Self* c_this);
	[LinkName("QCborMap_ToJsonObject")]
	public static extern QJsonObject QCborMap_ToJsonObject(Self* c_this);
}
public struct QCborMap__Iterator
{
	[LinkName("QCborMap__Iterator_new")]
	public static extern QCborMap__Iterator* QCborMap__Iterator_new(QCborMap__Iterator* other);
	[LinkName("QCborMap__Iterator_new2")]
	public static extern QCborMap__Iterator* QCborMap__Iterator_new2();
	[LinkName("QCborMap__Iterator_new3")]
	public static extern QCborMap__Iterator* QCborMap__Iterator_new3(QCborMap__Iterator* param1);
	[LinkName("QCborMap__Iterator_OperatorAssign")]
	public static extern void QCborMap__Iterator_OperatorAssign(Self* c_this, QCborMap__Iterator* other);
	[LinkName("QCborMap__Iterator_OperatorMultiply")]
	public static extern void* QCborMap__Iterator_OperatorMultiply(Self* c_this);
	[LinkName("QCborMap__Iterator_OperatorSubscript")]
	public static extern void* QCborMap__Iterator_OperatorSubscript(Self* c_this, int32 j);
	[LinkName("QCborMap__Iterator_OperatorMinusGreater")]
	public static extern QCborValueRef* QCborMap__Iterator_OperatorMinusGreater(Self* c_this);
	[LinkName("QCborMap__Iterator_OperatorMinusGreater2")]
	public static extern QCborValueConstRef* QCborMap__Iterator_OperatorMinusGreater2(Self* c_this);
	[LinkName("QCborMap__Iterator_Key")]
	public static extern QCborValue QCborMap__Iterator_Key(Self* c_this);
	[LinkName("QCborMap__Iterator_Value")]
	public static extern QCborValueRef QCborMap__Iterator_Value(Self* c_this);
	[LinkName("QCborMap__Iterator_OperatorEqual")]
	public static extern bool QCborMap__Iterator_OperatorEqual(Self* c_this, QCborMap__Iterator* o);
	[LinkName("QCborMap__Iterator_OperatorNotEqual")]
	public static extern bool QCborMap__Iterator_OperatorNotEqual(Self* c_this, QCborMap__Iterator* o);
	[LinkName("QCborMap__Iterator_OperatorLesser")]
	public static extern bool QCborMap__Iterator_OperatorLesser(Self* c_this, QCborMap__Iterator* other);
	[LinkName("QCborMap__Iterator_OperatorLesserOrEqual")]
	public static extern bool QCborMap__Iterator_OperatorLesserOrEqual(Self* c_this, QCborMap__Iterator* other);
	[LinkName("QCborMap__Iterator_OperatorGreater")]
	public static extern bool QCborMap__Iterator_OperatorGreater(Self* c_this, QCborMap__Iterator* other);
	[LinkName("QCborMap__Iterator_OperatorGreaterOrEqual")]
	public static extern bool QCborMap__Iterator_OperatorGreaterOrEqual(Self* c_this, QCborMap__Iterator* other);
	[LinkName("QCborMap__Iterator_OperatorEqualWithQCborMapConstIterator")]
	public static extern bool QCborMap__Iterator_OperatorEqualWithQCborMapConstIterator(Self* c_this, QCborMap__ConstIterator* o);
	[LinkName("QCborMap__Iterator_OperatorNotEqualWithQCborMapConstIterator")]
	public static extern bool QCborMap__Iterator_OperatorNotEqualWithQCborMapConstIterator(Self* c_this, QCborMap__ConstIterator* o);
	[LinkName("QCborMap__Iterator_OperatorLesserWithOther")]
	public static extern bool QCborMap__Iterator_OperatorLesserWithOther(Self* c_this, QCborMap__ConstIterator* other);
	[LinkName("QCborMap__Iterator_OperatorLesserOrEqualWithOther")]
	public static extern bool QCborMap__Iterator_OperatorLesserOrEqualWithOther(Self* c_this, QCborMap__ConstIterator* other);
	[LinkName("QCborMap__Iterator_OperatorGreaterWithOther")]
	public static extern bool QCborMap__Iterator_OperatorGreaterWithOther(Self* c_this, QCborMap__ConstIterator* other);
	[LinkName("QCborMap__Iterator_OperatorGreaterOrEqualWithOther")]
	public static extern bool QCborMap__Iterator_OperatorGreaterOrEqualWithOther(Self* c_this, QCborMap__ConstIterator* other);
	[LinkName("QCborMap__Iterator_OperatorPlusPlus")]
	public static extern QCborMap__Iterator* QCborMap__Iterator_OperatorPlusPlus(Self* c_this);
	[LinkName("QCborMap__Iterator_OperatorPlusPlusWithInt")]
	public static extern QCborMap__Iterator QCborMap__Iterator_OperatorPlusPlusWithInt(Self* c_this, int32 param1);
	[LinkName("QCborMap__Iterator_OperatorMinusMinus")]
	public static extern QCborMap__Iterator* QCborMap__Iterator_OperatorMinusMinus(Self* c_this);
	[LinkName("QCborMap__Iterator_OperatorMinusMinusWithInt")]
	public static extern QCborMap__Iterator QCborMap__Iterator_OperatorMinusMinusWithInt(Self* c_this, int32 param1);
	[LinkName("QCborMap__Iterator_OperatorPlusAssign")]
	public static extern QCborMap__Iterator* QCborMap__Iterator_OperatorPlusAssign(Self* c_this, int32 j);
	[LinkName("QCborMap__Iterator_OperatorMinusAssign")]
	public static extern QCborMap__Iterator* QCborMap__Iterator_OperatorMinusAssign(Self* c_this, int32 j);
	[LinkName("QCborMap__Iterator_OperatorPlus")]
	public static extern QCborMap__Iterator QCborMap__Iterator_OperatorPlus(Self* c_this, int32 j);
	[LinkName("QCborMap__Iterator_OperatorMinus")]
	public static extern QCborMap__Iterator QCborMap__Iterator_OperatorMinus(Self* c_this, int32 j);
	[LinkName("QCborMap__Iterator_OperatorMinusWithQCborMapIterator")]
	public static extern int32 QCborMap__Iterator_OperatorMinusWithQCborMapIterator(Self* c_this, QCborMap__Iterator j);
}
public struct QCborMap__ConstIterator
{
	[LinkName("QCborMap__ConstIterator_new")]
	public static extern QCborMap__ConstIterator* QCborMap__ConstIterator_new(QCborMap__ConstIterator* other);
	[LinkName("QCborMap__ConstIterator_new2")]
	public static extern QCborMap__ConstIterator* QCborMap__ConstIterator_new2();
	[LinkName("QCborMap__ConstIterator_new3")]
	public static extern QCborMap__ConstIterator* QCborMap__ConstIterator_new3(QCborMap__ConstIterator* param1);
	[LinkName("QCborMap__ConstIterator_OperatorAssign")]
	public static extern void QCborMap__ConstIterator_OperatorAssign(Self* c_this, QCborMap__ConstIterator* other);
	[LinkName("QCborMap__ConstIterator_OperatorMultiply")]
	public static extern void* QCborMap__ConstIterator_OperatorMultiply(Self* c_this);
	[LinkName("QCborMap__ConstIterator_OperatorSubscript")]
	public static extern void* QCborMap__ConstIterator_OperatorSubscript(Self* c_this, int32 j);
	[LinkName("QCborMap__ConstIterator_OperatorMinusGreater")]
	public static extern QCborValueConstRef* QCborMap__ConstIterator_OperatorMinusGreater(Self* c_this);
	[LinkName("QCborMap__ConstIterator_Key")]
	public static extern QCborValue QCborMap__ConstIterator_Key(Self* c_this);
	[LinkName("QCborMap__ConstIterator_Value")]
	public static extern QCborValueConstRef QCborMap__ConstIterator_Value(Self* c_this);
	[LinkName("QCborMap__ConstIterator_OperatorEqual")]
	public static extern bool QCborMap__ConstIterator_OperatorEqual(Self* c_this, QCborMap__Iterator* o);
	[LinkName("QCborMap__ConstIterator_OperatorNotEqual")]
	public static extern bool QCborMap__ConstIterator_OperatorNotEqual(Self* c_this, QCborMap__Iterator* o);
	[LinkName("QCborMap__ConstIterator_OperatorLesser")]
	public static extern bool QCborMap__ConstIterator_OperatorLesser(Self* c_this, QCborMap__Iterator* other);
	[LinkName("QCborMap__ConstIterator_OperatorLesserOrEqual")]
	public static extern bool QCborMap__ConstIterator_OperatorLesserOrEqual(Self* c_this, QCborMap__Iterator* other);
	[LinkName("QCborMap__ConstIterator_OperatorGreater")]
	public static extern bool QCborMap__ConstIterator_OperatorGreater(Self* c_this, QCborMap__Iterator* other);
	[LinkName("QCborMap__ConstIterator_OperatorGreaterOrEqual")]
	public static extern bool QCborMap__ConstIterator_OperatorGreaterOrEqual(Self* c_this, QCborMap__Iterator* other);
	[LinkName("QCborMap__ConstIterator_OperatorEqualWithQCborMapConstIterator")]
	public static extern bool QCborMap__ConstIterator_OperatorEqualWithQCborMapConstIterator(Self* c_this, QCborMap__ConstIterator* o);
	[LinkName("QCborMap__ConstIterator_OperatorNotEqualWithQCborMapConstIterator")]
	public static extern bool QCborMap__ConstIterator_OperatorNotEqualWithQCborMapConstIterator(Self* c_this, QCborMap__ConstIterator* o);
	[LinkName("QCborMap__ConstIterator_OperatorLesserWithOther")]
	public static extern bool QCborMap__ConstIterator_OperatorLesserWithOther(Self* c_this, QCborMap__ConstIterator* other);
	[LinkName("QCborMap__ConstIterator_OperatorLesserOrEqualWithOther")]
	public static extern bool QCborMap__ConstIterator_OperatorLesserOrEqualWithOther(Self* c_this, QCborMap__ConstIterator* other);
	[LinkName("QCborMap__ConstIterator_OperatorGreaterWithOther")]
	public static extern bool QCborMap__ConstIterator_OperatorGreaterWithOther(Self* c_this, QCborMap__ConstIterator* other);
	[LinkName("QCborMap__ConstIterator_OperatorGreaterOrEqualWithOther")]
	public static extern bool QCborMap__ConstIterator_OperatorGreaterOrEqualWithOther(Self* c_this, QCborMap__ConstIterator* other);
	[LinkName("QCborMap__ConstIterator_OperatorPlusPlus")]
	public static extern QCborMap__ConstIterator* QCborMap__ConstIterator_OperatorPlusPlus(Self* c_this);
	[LinkName("QCborMap__ConstIterator_OperatorPlusPlusWithInt")]
	public static extern QCborMap__ConstIterator QCborMap__ConstIterator_OperatorPlusPlusWithInt(Self* c_this, int32 param1);
	[LinkName("QCborMap__ConstIterator_OperatorMinusMinus")]
	public static extern QCborMap__ConstIterator* QCborMap__ConstIterator_OperatorMinusMinus(Self* c_this);
	[LinkName("QCborMap__ConstIterator_OperatorMinusMinusWithInt")]
	public static extern QCborMap__ConstIterator QCborMap__ConstIterator_OperatorMinusMinusWithInt(Self* c_this, int32 param1);
	[LinkName("QCborMap__ConstIterator_OperatorPlusAssign")]
	public static extern QCborMap__ConstIterator* QCborMap__ConstIterator_OperatorPlusAssign(Self* c_this, int32 j);
	[LinkName("QCborMap__ConstIterator_OperatorMinusAssign")]
	public static extern QCborMap__ConstIterator* QCborMap__ConstIterator_OperatorMinusAssign(Self* c_this, int32 j);
	[LinkName("QCborMap__ConstIterator_OperatorPlus")]
	public static extern QCborMap__ConstIterator QCborMap__ConstIterator_OperatorPlus(Self* c_this, int32 j);
	[LinkName("QCborMap__ConstIterator_OperatorMinus")]
	public static extern QCborMap__ConstIterator QCborMap__ConstIterator_OperatorMinus(Self* c_this, int32 j);
	[LinkName("QCborMap__ConstIterator_OperatorMinusWithQCborMapConstIterator")]
	public static extern int32 QCborMap__ConstIterator_OperatorMinusWithQCborMapConstIterator(Self* c_this, QCborMap__ConstIterator j);
}