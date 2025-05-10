using System;
using System.Interop;
namespace Qt;

public class QCborMap
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QCborMap_new();
	}
	
	public ~this()
	{
		CQt.QCborMap_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* other)
	{
		CQt.QCborMap_OperatorAssign(this.nativePtr, other);
	}
	
	public void Swap(void* other)
	{
		CQt.QCborMap_Swap(this.nativePtr, other);
	}
	
	public void ToCborValue()
	{
		CQt.QCborMap_ToCborValue(this.nativePtr);
	}
	
	public int32 Size()
	{
		return CQt.QCborMap_Size(this.nativePtr);
	}
	
	public bool IsEmpty()
	{
		return CQt.QCborMap_IsEmpty(this.nativePtr);
	}
	
	public void Clear()
	{
		CQt.QCborMap_Clear(this.nativePtr);
	}
	
	public void[] Keys()
	{
		return CQt.QCborMap_Keys(this.nativePtr);
	}
	
	public void Value(int64 key)
	{
		CQt.QCborMap_Value(this.nativePtr, key);
	}
	
	public void Value2(libqt_string key)
	{
		CQt.QCborMap_Value2(this.nativePtr, key);
	}
	
	public void Value3(void* key)
	{
		CQt.QCborMap_Value3(this.nativePtr, key);
	}
	
	public void OperatorSubscript(int64 key)
	{
		CQt.QCborMap_OperatorSubscript(this.nativePtr, key);
	}
	
	public void OperatorSubscript2(libqt_string key)
	{
		CQt.QCborMap_OperatorSubscript2(this.nativePtr, key);
	}
	
	public void OperatorSubscript3(void* key)
	{
		CQt.QCborMap_OperatorSubscript3(this.nativePtr, key);
	}
	
	public void OperatorSubscript4(int64 key)
	{
		CQt.QCborMap_OperatorSubscript4(this.nativePtr, key);
	}
	
	public void OperatorSubscript6(libqt_string key)
	{
		CQt.QCborMap_OperatorSubscript6(this.nativePtr, key);
	}
	
	public void OperatorSubscript7(void* key)
	{
		CQt.QCborMap_OperatorSubscript7(this.nativePtr, key);
	}
	
	public void Take(int64 key)
	{
		CQt.QCborMap_Take(this.nativePtr, key);
	}
	
	public void Take2(libqt_string key)
	{
		CQt.QCborMap_Take2(this.nativePtr, key);
	}
	
	public void Take3(void* key)
	{
		CQt.QCborMap_Take3(this.nativePtr, key);
	}
	
	public void Remove(int64 key)
	{
		CQt.QCborMap_Remove(this.nativePtr, key);
	}
	
	public void Remove2(libqt_string key)
	{
		CQt.QCborMap_Remove2(this.nativePtr, key);
	}
	
	public void Remove3(void* key)
	{
		CQt.QCborMap_Remove3(this.nativePtr, key);
	}
	
	public bool Contains(int64 key)
	{
		return CQt.QCborMap_Contains(this.nativePtr, key);
	}
	
	public bool Contains2(libqt_string key)
	{
		return CQt.QCborMap_Contains2(this.nativePtr, key);
	}
	
	public bool Contains3(void* key)
	{
		return CQt.QCborMap_Contains3(this.nativePtr, key);
	}
	
	public int32 Compare(void* other)
	{
		return CQt.QCborMap_Compare(this.nativePtr, other);
	}
	
	public bool OperatorEqual(void* other)
	{
		return CQt.QCborMap_OperatorEqual(this.nativePtr, other);
	}
	
	public bool OperatorNotEqual(void* other)
	{
		return CQt.QCborMap_OperatorNotEqual(this.nativePtr, other);
	}
	
	public bool OperatorLesser(void* other)
	{
		return CQt.QCborMap_OperatorLesser(this.nativePtr, other);
	}
	
	public QCborMap__Iterator Begin()
	{
		return CQt.QCborMap_Begin(this.nativePtr);
	}
	
	public QCborMap__ConstIterator ConstBegin()
	{
		return CQt.QCborMap_ConstBegin(this.nativePtr);
	}
	
	public QCborMap__ConstIterator Begin2()
	{
		return CQt.QCborMap_Begin2(this.nativePtr);
	}
	
	public QCborMap__ConstIterator Cbegin()
	{
		return CQt.QCborMap_Cbegin(this.nativePtr);
	}
	
	public QCborMap__Iterator End()
	{
		return CQt.QCborMap_End(this.nativePtr);
	}
	
	public QCborMap__ConstIterator ConstEnd()
	{
		return CQt.QCborMap_ConstEnd(this.nativePtr);
	}
	
	public QCborMap__ConstIterator End2()
	{
		return CQt.QCborMap_End2(this.nativePtr);
	}
	
	public QCborMap__ConstIterator Cend()
	{
		return CQt.QCborMap_Cend(this.nativePtr);
	}
	
	public QCborMap__Iterator Erase(QCborMap__Iterator it)
	{
		return CQt.QCborMap_Erase(this.nativePtr, it);
	}
	
	public QCborMap__Iterator EraseWithIt(QCborMap__ConstIterator it)
	{
		return CQt.QCborMap_EraseWithIt(this.nativePtr, it);
	}
	
	public void Extract(QCborMap__Iterator it)
	{
		CQt.QCborMap_Extract(this.nativePtr, it);
	}
	
	public void ExtractWithIt(QCborMap__ConstIterator it)
	{
		CQt.QCborMap_ExtractWithIt(this.nativePtr, it);
	}
	
	public bool Empty()
	{
		return CQt.QCborMap_Empty(this.nativePtr);
	}
	
	public QCborMap__Iterator Find(int64 key)
	{
		return CQt.QCborMap_Find(this.nativePtr, key);
	}
	
	public QCborMap__Iterator Find2(libqt_string key)
	{
		return CQt.QCborMap_Find2(this.nativePtr, key);
	}
	
	public QCborMap__Iterator Find3(void* key)
	{
		return CQt.QCborMap_Find3(this.nativePtr, key);
	}
	
	public QCborMap__ConstIterator ConstFind(int64 key)
	{
		return CQt.QCborMap_ConstFind(this.nativePtr, key);
	}
	
	public QCborMap__ConstIterator ConstFind2(libqt_string key)
	{
		return CQt.QCborMap_ConstFind2(this.nativePtr, key);
	}
	
	public QCborMap__ConstIterator ConstFind3(void* key)
	{
		return CQt.QCborMap_ConstFind3(this.nativePtr, key);
	}
	
	public QCborMap__ConstIterator Find4(int64 key)
	{
		return CQt.QCborMap_Find4(this.nativePtr, key);
	}
	
	public QCborMap__ConstIterator Find6(libqt_string key)
	{
		return CQt.QCborMap_Find6(this.nativePtr, key);
	}
	
	public QCborMap__ConstIterator Find7(void* key)
	{
		return CQt.QCborMap_Find7(this.nativePtr, key);
	}
	
	public QCborMap__Iterator Insert(int64 key, void* value_)
	{
		return CQt.QCborMap_Insert(this.nativePtr, key, value_);
	}
	
	public QCborMap__Iterator Insert3(libqt_string key, void* value_)
	{
		return CQt.QCborMap_Insert3(this.nativePtr, key, value_);
	}
	
	public QCborMap__Iterator Insert4(void* key, void* value_)
	{
		return CQt.QCborMap_Insert4(this.nativePtr, key, value_);
	}
	
	public QCborMap__Iterator InsertWithQCborMapvalueType(void* v)
	{
		return CQt.QCborMap_InsertWithQCborMapvalueType(this.nativePtr, v);
	}
	
	public static void FromVariantMap(void* mapVal)
	{
		CQt.QCborMap_FromVariantMap(mapVal);
	}
	
	public static void FromVariantHash(void* hash)
	{
		CQt.QCborMap_FromVariantHash(hash);
	}
	
	public static void FromJsonObject(void* o)
	{
		CQt.QCborMap_FromJsonObject(o);
	}
	
	public void* ToVariantMap()
	{
		return CQt.QCborMap_ToVariantMap(this.nativePtr);
	}
	
	public void* ToVariantHash()
	{
		return CQt.QCborMap_ToVariantHash(this.nativePtr);
	}
	
	public void ToJsonObject()
	{
		CQt.QCborMap_ToJsonObject(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QCborMap_new")]
	public static extern void* QCborMap_new();
	[LinkName("QCborMap_new2")]
	public static extern void* QCborMap_new2(void* other);
	[LinkName("QCborMap_OperatorAssign")]
	public static extern void QCborMap_OperatorAssign(void* c_this, void* other);
	[LinkName("QCborMap_Swap")]
	public static extern void QCborMap_Swap(void* c_this, void* other);
	[LinkName("QCborMap_ToCborValue")]
	public static extern void QCborMap_ToCborValue(void* c_this);
	[LinkName("QCborMap_Size")]
	public static extern int32 QCborMap_Size(void* c_this);
	[LinkName("QCborMap_IsEmpty")]
	public static extern bool QCborMap_IsEmpty(void* c_this);
	[LinkName("QCborMap_Clear")]
	public static extern void QCborMap_Clear(void* c_this);
	[LinkName("QCborMap_Keys")]
	public static extern void[] QCborMap_Keys(void* c_this);
	[LinkName("QCborMap_Value")]
	public static extern void QCborMap_Value(void* c_this, int64 key);
	[LinkName("QCborMap_Value2")]
	public static extern void QCborMap_Value2(void* c_this, libqt_string key);
	[LinkName("QCborMap_Value3")]
	public static extern void QCborMap_Value3(void* c_this, void* key);
	[LinkName("QCborMap_OperatorSubscript")]
	public static extern void QCborMap_OperatorSubscript(void* c_this, int64 key);
	[LinkName("QCborMap_OperatorSubscript2")]
	public static extern void QCborMap_OperatorSubscript2(void* c_this, libqt_string key);
	[LinkName("QCborMap_OperatorSubscript3")]
	public static extern void QCborMap_OperatorSubscript3(void* c_this, void* key);
	[LinkName("QCborMap_OperatorSubscript4")]
	public static extern void QCborMap_OperatorSubscript4(void* c_this, int64 key);
	[LinkName("QCborMap_OperatorSubscript6")]
	public static extern void QCborMap_OperatorSubscript6(void* c_this, libqt_string key);
	[LinkName("QCborMap_OperatorSubscript7")]
	public static extern void QCborMap_OperatorSubscript7(void* c_this, void* key);
	[LinkName("QCborMap_Take")]
	public static extern void QCborMap_Take(void* c_this, int64 key);
	[LinkName("QCborMap_Take2")]
	public static extern void QCborMap_Take2(void* c_this, libqt_string key);
	[LinkName("QCborMap_Take3")]
	public static extern void QCborMap_Take3(void* c_this, void* key);
	[LinkName("QCborMap_Remove")]
	public static extern void QCborMap_Remove(void* c_this, int64 key);
	[LinkName("QCborMap_Remove2")]
	public static extern void QCborMap_Remove2(void* c_this, libqt_string key);
	[LinkName("QCborMap_Remove3")]
	public static extern void QCborMap_Remove3(void* c_this, void* key);
	[LinkName("QCborMap_Contains")]
	public static extern bool QCborMap_Contains(void* c_this, int64 key);
	[LinkName("QCborMap_Contains2")]
	public static extern bool QCborMap_Contains2(void* c_this, libqt_string key);
	[LinkName("QCborMap_Contains3")]
	public static extern bool QCborMap_Contains3(void* c_this, void* key);
	[LinkName("QCborMap_Compare")]
	public static extern int32 QCborMap_Compare(void* c_this, void* other);
	[LinkName("QCborMap_OperatorEqual")]
	public static extern bool QCborMap_OperatorEqual(void* c_this, void* other);
	[LinkName("QCborMap_OperatorNotEqual")]
	public static extern bool QCborMap_OperatorNotEqual(void* c_this, void* other);
	[LinkName("QCborMap_OperatorLesser")]
	public static extern bool QCborMap_OperatorLesser(void* c_this, void* other);
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
	public static extern void QCborMap_Extract(void* c_this, QCborMap__Iterator it);
	[LinkName("QCborMap_ExtractWithIt")]
	public static extern void QCborMap_ExtractWithIt(void* c_this, QCborMap__ConstIterator it);
	[LinkName("QCborMap_Empty")]
	public static extern bool QCborMap_Empty(void* c_this);
	[LinkName("QCborMap_Find")]
	public static extern QCborMap__Iterator QCborMap_Find(void* c_this, int64 key);
	[LinkName("QCborMap_Find2")]
	public static extern QCborMap__Iterator QCborMap_Find2(void* c_this, libqt_string key);
	[LinkName("QCborMap_Find3")]
	public static extern QCborMap__Iterator QCborMap_Find3(void* c_this, void* key);
	[LinkName("QCborMap_ConstFind")]
	public static extern QCborMap__ConstIterator QCborMap_ConstFind(void* c_this, int64 key);
	[LinkName("QCborMap_ConstFind2")]
	public static extern QCborMap__ConstIterator QCborMap_ConstFind2(void* c_this, libqt_string key);
	[LinkName("QCborMap_ConstFind3")]
	public static extern QCborMap__ConstIterator QCborMap_ConstFind3(void* c_this, void* key);
	[LinkName("QCborMap_Find4")]
	public static extern QCborMap__ConstIterator QCborMap_Find4(void* c_this, int64 key);
	[LinkName("QCborMap_Find6")]
	public static extern QCborMap__ConstIterator QCborMap_Find6(void* c_this, libqt_string key);
	[LinkName("QCborMap_Find7")]
	public static extern QCborMap__ConstIterator QCborMap_Find7(void* c_this, void* key);
	[LinkName("QCborMap_Insert")]
	public static extern QCborMap__Iterator QCborMap_Insert(void* c_this, int64 key, void* value_);
	[LinkName("QCborMap_Insert3")]
	public static extern QCborMap__Iterator QCborMap_Insert3(void* c_this, libqt_string key, void* value_);
	[LinkName("QCborMap_Insert4")]
	public static extern QCborMap__Iterator QCborMap_Insert4(void* c_this, void* key, void* value_);
	[LinkName("QCborMap_InsertWithQCborMapvalueType")]
	public static extern QCborMap__Iterator QCborMap_InsertWithQCborMapvalueType(void* c_this, void* v);
	[LinkName("QCborMap_FromVariantMap")]
	public static extern void QCborMap_FromVariantMap(void* mapVal);
	[LinkName("QCborMap_FromVariantHash")]
	public static extern void QCborMap_FromVariantHash(void* hash);
	[LinkName("QCborMap_FromJsonObject")]
	public static extern void QCborMap_FromJsonObject(void* o);
	[LinkName("QCborMap_ToVariantMap")]
	public static extern void* QCborMap_ToVariantMap(void* c_this);
	[LinkName("QCborMap_ToVariantHash")]
	public static extern void* QCborMap_ToVariantHash(void* c_this);
	[LinkName("QCborMap_ToJsonObject")]
	public static extern void QCborMap_ToJsonObject(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QCborMap_Delete")]
	public static extern void QCborMap_Delete(void* self);
}
public class QCborMap__Iterator
{
	protected void* nativePtr;
	
	public this(QCborMap__Iterator* other)
	{
		this.nativePtr = CQt.QCborMap__Iterator_new(other);
	}
	
	public ~this()
	{
		CQt.QCborMap__Iterator_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(QCborMap__Iterator* other)
	{
		CQt.QCborMap__Iterator_OperatorAssign(this.nativePtr, other);
	}
	
	public void* OperatorMultiply()
	{
		return CQt.QCborMap__Iterator_OperatorMultiply(this.nativePtr);
	}
	
	public void* OperatorSubscript(int32 j)
	{
		return CQt.QCborMap__Iterator_OperatorSubscript(this.nativePtr, j);
	}
	
	public void* OperatorMinusGreater()
	{
		return CQt.QCborMap__Iterator_OperatorMinusGreater(this.nativePtr);
	}
	
	public void* OperatorMinusGreater2()
	{
		return CQt.QCborMap__Iterator_OperatorMinusGreater2(this.nativePtr);
	}
	
	public void Key()
	{
		CQt.QCborMap__Iterator_Key(this.nativePtr);
	}
	
	public void Value()
	{
		CQt.QCborMap__Iterator_Value(this.nativePtr);
	}
	
	public bool OperatorEqual(QCborMap__Iterator* o)
	{
		return CQt.QCborMap__Iterator_OperatorEqual(this.nativePtr, o);
	}
	
	public bool OperatorNotEqual(QCborMap__Iterator* o)
	{
		return CQt.QCborMap__Iterator_OperatorNotEqual(this.nativePtr, o);
	}
	
	public bool OperatorLesser(QCborMap__Iterator* other)
	{
		return CQt.QCborMap__Iterator_OperatorLesser(this.nativePtr, other);
	}
	
	public bool OperatorLesserOrEqual(QCborMap__Iterator* other)
	{
		return CQt.QCborMap__Iterator_OperatorLesserOrEqual(this.nativePtr, other);
	}
	
	public bool OperatorGreater(QCborMap__Iterator* other)
	{
		return CQt.QCborMap__Iterator_OperatorGreater(this.nativePtr, other);
	}
	
	public bool OperatorGreaterOrEqual(QCborMap__Iterator* other)
	{
		return CQt.QCborMap__Iterator_OperatorGreaterOrEqual(this.nativePtr, other);
	}
	
	public bool OperatorEqualWithQCborMapConstIterator(QCborMap__ConstIterator* o)
	{
		return CQt.QCborMap__Iterator_OperatorEqualWithQCborMapConstIterator(this.nativePtr, o);
	}
	
	public bool OperatorNotEqualWithQCborMapConstIterator(QCborMap__ConstIterator* o)
	{
		return CQt.QCborMap__Iterator_OperatorNotEqualWithQCborMapConstIterator(this.nativePtr, o);
	}
	
	public bool OperatorLesserWithOther(QCborMap__ConstIterator* other)
	{
		return CQt.QCborMap__Iterator_OperatorLesserWithOther(this.nativePtr, other);
	}
	
	public bool OperatorLesserOrEqualWithOther(QCborMap__ConstIterator* other)
	{
		return CQt.QCborMap__Iterator_OperatorLesserOrEqualWithOther(this.nativePtr, other);
	}
	
	public bool OperatorGreaterWithOther(QCborMap__ConstIterator* other)
	{
		return CQt.QCborMap__Iterator_OperatorGreaterWithOther(this.nativePtr, other);
	}
	
	public bool OperatorGreaterOrEqualWithOther(QCborMap__ConstIterator* other)
	{
		return CQt.QCborMap__Iterator_OperatorGreaterOrEqualWithOther(this.nativePtr, other);
	}
	
	public QCborMap__Iterator* OperatorPlusPlus()
	{
		return CQt.QCborMap__Iterator_OperatorPlusPlus(this.nativePtr);
	}
	
	public QCborMap__Iterator OperatorPlusPlusWithInt(int32 param1)
	{
		return CQt.QCborMap__Iterator_OperatorPlusPlusWithInt(this.nativePtr, param1);
	}
	
	public QCborMap__Iterator* OperatorMinusMinus()
	{
		return CQt.QCborMap__Iterator_OperatorMinusMinus(this.nativePtr);
	}
	
	public QCborMap__Iterator OperatorMinusMinusWithInt(int32 param1)
	{
		return CQt.QCborMap__Iterator_OperatorMinusMinusWithInt(this.nativePtr, param1);
	}
	
	public QCborMap__Iterator* OperatorPlusAssign(int32 j)
	{
		return CQt.QCborMap__Iterator_OperatorPlusAssign(this.nativePtr, j);
	}
	
	public QCborMap__Iterator* OperatorMinusAssign(int32 j)
	{
		return CQt.QCborMap__Iterator_OperatorMinusAssign(this.nativePtr, j);
	}
	
	public QCborMap__Iterator OperatorPlus(int32 j)
	{
		return CQt.QCborMap__Iterator_OperatorPlus(this.nativePtr, j);
	}
	
	public QCborMap__Iterator OperatorMinus(int32 j)
	{
		return CQt.QCborMap__Iterator_OperatorMinus(this.nativePtr, j);
	}
	
	public int32 OperatorMinusWithQCborMapIterator(QCborMap__Iterator j)
	{
		return CQt.QCborMap__Iterator_OperatorMinusWithQCborMapIterator(this.nativePtr, j);
	}
	
}
extension CQt
{
	[LinkName("QCborMap__Iterator_new")]
	public static extern void* QCborMap__Iterator_new(QCborMap__Iterator* other);
	[LinkName("QCborMap__Iterator_new2")]
	public static extern void* QCborMap__Iterator_new2();
	[LinkName("QCborMap__Iterator_new3")]
	public static extern void* QCborMap__Iterator_new3(QCborMap__Iterator* param1);
	[LinkName("QCborMap__Iterator_OperatorAssign")]
	public static extern void QCborMap__Iterator_OperatorAssign(void* c_this, QCborMap__Iterator* other);
	[LinkName("QCborMap__Iterator_OperatorMultiply")]
	public static extern void* QCborMap__Iterator_OperatorMultiply(void* c_this);
	[LinkName("QCborMap__Iterator_OperatorSubscript")]
	public static extern void* QCborMap__Iterator_OperatorSubscript(void* c_this, int32 j);
	[LinkName("QCborMap__Iterator_OperatorMinusGreater")]
	public static extern void* QCborMap__Iterator_OperatorMinusGreater(void* c_this);
	[LinkName("QCborMap__Iterator_OperatorMinusGreater2")]
	public static extern void* QCborMap__Iterator_OperatorMinusGreater2(void* c_this);
	[LinkName("QCborMap__Iterator_Key")]
	public static extern void QCborMap__Iterator_Key(void* c_this);
	[LinkName("QCborMap__Iterator_Value")]
	public static extern void QCborMap__Iterator_Value(void* c_this);
	[LinkName("QCborMap__Iterator_OperatorEqual")]
	public static extern bool QCborMap__Iterator_OperatorEqual(void* c_this, QCborMap__Iterator* o);
	[LinkName("QCborMap__Iterator_OperatorNotEqual")]
	public static extern bool QCborMap__Iterator_OperatorNotEqual(void* c_this, QCborMap__Iterator* o);
	[LinkName("QCborMap__Iterator_OperatorLesser")]
	public static extern bool QCborMap__Iterator_OperatorLesser(void* c_this, QCborMap__Iterator* other);
	[LinkName("QCborMap__Iterator_OperatorLesserOrEqual")]
	public static extern bool QCborMap__Iterator_OperatorLesserOrEqual(void* c_this, QCborMap__Iterator* other);
	[LinkName("QCborMap__Iterator_OperatorGreater")]
	public static extern bool QCborMap__Iterator_OperatorGreater(void* c_this, QCborMap__Iterator* other);
	[LinkName("QCborMap__Iterator_OperatorGreaterOrEqual")]
	public static extern bool QCborMap__Iterator_OperatorGreaterOrEqual(void* c_this, QCborMap__Iterator* other);
	[LinkName("QCborMap__Iterator_OperatorEqualWithQCborMapConstIterator")]
	public static extern bool QCborMap__Iterator_OperatorEqualWithQCborMapConstIterator(void* c_this, QCborMap__ConstIterator* o);
	[LinkName("QCborMap__Iterator_OperatorNotEqualWithQCborMapConstIterator")]
	public static extern bool QCborMap__Iterator_OperatorNotEqualWithQCborMapConstIterator(void* c_this, QCborMap__ConstIterator* o);
	[LinkName("QCborMap__Iterator_OperatorLesserWithOther")]
	public static extern bool QCborMap__Iterator_OperatorLesserWithOther(void* c_this, QCborMap__ConstIterator* other);
	[LinkName("QCborMap__Iterator_OperatorLesserOrEqualWithOther")]
	public static extern bool QCborMap__Iterator_OperatorLesserOrEqualWithOther(void* c_this, QCborMap__ConstIterator* other);
	[LinkName("QCborMap__Iterator_OperatorGreaterWithOther")]
	public static extern bool QCborMap__Iterator_OperatorGreaterWithOther(void* c_this, QCborMap__ConstIterator* other);
	[LinkName("QCborMap__Iterator_OperatorGreaterOrEqualWithOther")]
	public static extern bool QCborMap__Iterator_OperatorGreaterOrEqualWithOther(void* c_this, QCborMap__ConstIterator* other);
	[LinkName("QCborMap__Iterator_OperatorPlusPlus")]
	public static extern QCborMap__Iterator* QCborMap__Iterator_OperatorPlusPlus(void* c_this);
	[LinkName("QCborMap__Iterator_OperatorPlusPlusWithInt")]
	public static extern QCborMap__Iterator QCborMap__Iterator_OperatorPlusPlusWithInt(void* c_this, int32 param1);
	[LinkName("QCborMap__Iterator_OperatorMinusMinus")]
	public static extern QCborMap__Iterator* QCborMap__Iterator_OperatorMinusMinus(void* c_this);
	[LinkName("QCborMap__Iterator_OperatorMinusMinusWithInt")]
	public static extern QCborMap__Iterator QCborMap__Iterator_OperatorMinusMinusWithInt(void* c_this, int32 param1);
	[LinkName("QCborMap__Iterator_OperatorPlusAssign")]
	public static extern QCborMap__Iterator* QCborMap__Iterator_OperatorPlusAssign(void* c_this, int32 j);
	[LinkName("QCborMap__Iterator_OperatorMinusAssign")]
	public static extern QCborMap__Iterator* QCborMap__Iterator_OperatorMinusAssign(void* c_this, int32 j);
	[LinkName("QCborMap__Iterator_OperatorPlus")]
	public static extern QCborMap__Iterator QCborMap__Iterator_OperatorPlus(void* c_this, int32 j);
	[LinkName("QCborMap__Iterator_OperatorMinus")]
	public static extern QCborMap__Iterator QCborMap__Iterator_OperatorMinus(void* c_this, int32 j);
	[LinkName("QCborMap__Iterator_OperatorMinusWithQCborMapIterator")]
	public static extern int32 QCborMap__Iterator_OperatorMinusWithQCborMapIterator(void* c_this, QCborMap__Iterator j);
	/// Delete this object from C++ memory
	[LinkName("QCborMap__Iterator_Delete")]
	public static extern void QCborMap__Iterator_Delete(void* self);
}
public class QCborMap__ConstIterator
{
	protected void* nativePtr;
	
	public this(QCborMap__ConstIterator* other)
	{
		this.nativePtr = CQt.QCborMap__ConstIterator_new(other);
	}
	
	public ~this()
	{
		CQt.QCborMap__ConstIterator_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(QCborMap__ConstIterator* other)
	{
		CQt.QCborMap__ConstIterator_OperatorAssign(this.nativePtr, other);
	}
	
	public void* OperatorMultiply()
	{
		return CQt.QCborMap__ConstIterator_OperatorMultiply(this.nativePtr);
	}
	
	public void* OperatorSubscript(int32 j)
	{
		return CQt.QCborMap__ConstIterator_OperatorSubscript(this.nativePtr, j);
	}
	
	public void* OperatorMinusGreater()
	{
		return CQt.QCborMap__ConstIterator_OperatorMinusGreater(this.nativePtr);
	}
	
	public void Key()
	{
		CQt.QCborMap__ConstIterator_Key(this.nativePtr);
	}
	
	public void Value()
	{
		CQt.QCborMap__ConstIterator_Value(this.nativePtr);
	}
	
	public bool OperatorEqual(QCborMap__Iterator* o)
	{
		return CQt.QCborMap__ConstIterator_OperatorEqual(this.nativePtr, o);
	}
	
	public bool OperatorNotEqual(QCborMap__Iterator* o)
	{
		return CQt.QCborMap__ConstIterator_OperatorNotEqual(this.nativePtr, o);
	}
	
	public bool OperatorLesser(QCborMap__Iterator* other)
	{
		return CQt.QCborMap__ConstIterator_OperatorLesser(this.nativePtr, other);
	}
	
	public bool OperatorLesserOrEqual(QCborMap__Iterator* other)
	{
		return CQt.QCborMap__ConstIterator_OperatorLesserOrEqual(this.nativePtr, other);
	}
	
	public bool OperatorGreater(QCborMap__Iterator* other)
	{
		return CQt.QCborMap__ConstIterator_OperatorGreater(this.nativePtr, other);
	}
	
	public bool OperatorGreaterOrEqual(QCborMap__Iterator* other)
	{
		return CQt.QCborMap__ConstIterator_OperatorGreaterOrEqual(this.nativePtr, other);
	}
	
	public bool OperatorEqualWithQCborMapConstIterator(QCborMap__ConstIterator* o)
	{
		return CQt.QCborMap__ConstIterator_OperatorEqualWithQCborMapConstIterator(this.nativePtr, o);
	}
	
	public bool OperatorNotEqualWithQCborMapConstIterator(QCborMap__ConstIterator* o)
	{
		return CQt.QCborMap__ConstIterator_OperatorNotEqualWithQCborMapConstIterator(this.nativePtr, o);
	}
	
	public bool OperatorLesserWithOther(QCborMap__ConstIterator* other)
	{
		return CQt.QCborMap__ConstIterator_OperatorLesserWithOther(this.nativePtr, other);
	}
	
	public bool OperatorLesserOrEqualWithOther(QCborMap__ConstIterator* other)
	{
		return CQt.QCborMap__ConstIterator_OperatorLesserOrEqualWithOther(this.nativePtr, other);
	}
	
	public bool OperatorGreaterWithOther(QCborMap__ConstIterator* other)
	{
		return CQt.QCborMap__ConstIterator_OperatorGreaterWithOther(this.nativePtr, other);
	}
	
	public bool OperatorGreaterOrEqualWithOther(QCborMap__ConstIterator* other)
	{
		return CQt.QCborMap__ConstIterator_OperatorGreaterOrEqualWithOther(this.nativePtr, other);
	}
	
	public QCborMap__ConstIterator* OperatorPlusPlus()
	{
		return CQt.QCborMap__ConstIterator_OperatorPlusPlus(this.nativePtr);
	}
	
	public QCborMap__ConstIterator OperatorPlusPlusWithInt(int32 param1)
	{
		return CQt.QCborMap__ConstIterator_OperatorPlusPlusWithInt(this.nativePtr, param1);
	}
	
	public QCborMap__ConstIterator* OperatorMinusMinus()
	{
		return CQt.QCborMap__ConstIterator_OperatorMinusMinus(this.nativePtr);
	}
	
	public QCborMap__ConstIterator OperatorMinusMinusWithInt(int32 param1)
	{
		return CQt.QCborMap__ConstIterator_OperatorMinusMinusWithInt(this.nativePtr, param1);
	}
	
	public QCborMap__ConstIterator* OperatorPlusAssign(int32 j)
	{
		return CQt.QCborMap__ConstIterator_OperatorPlusAssign(this.nativePtr, j);
	}
	
	public QCborMap__ConstIterator* OperatorMinusAssign(int32 j)
	{
		return CQt.QCborMap__ConstIterator_OperatorMinusAssign(this.nativePtr, j);
	}
	
	public QCborMap__ConstIterator OperatorPlus(int32 j)
	{
		return CQt.QCborMap__ConstIterator_OperatorPlus(this.nativePtr, j);
	}
	
	public QCborMap__ConstIterator OperatorMinus(int32 j)
	{
		return CQt.QCborMap__ConstIterator_OperatorMinus(this.nativePtr, j);
	}
	
	public int32 OperatorMinusWithQCborMapConstIterator(QCborMap__ConstIterator j)
	{
		return CQt.QCborMap__ConstIterator_OperatorMinusWithQCborMapConstIterator(this.nativePtr, j);
	}
	
}
extension CQt
{
	[LinkName("QCborMap__ConstIterator_new")]
	public static extern void* QCborMap__ConstIterator_new(QCborMap__ConstIterator* other);
	[LinkName("QCborMap__ConstIterator_new2")]
	public static extern void* QCborMap__ConstIterator_new2();
	[LinkName("QCborMap__ConstIterator_new3")]
	public static extern void* QCborMap__ConstIterator_new3(QCborMap__ConstIterator* param1);
	[LinkName("QCborMap__ConstIterator_OperatorAssign")]
	public static extern void QCborMap__ConstIterator_OperatorAssign(void* c_this, QCborMap__ConstIterator* other);
	[LinkName("QCborMap__ConstIterator_OperatorMultiply")]
	public static extern void* QCborMap__ConstIterator_OperatorMultiply(void* c_this);
	[LinkName("QCborMap__ConstIterator_OperatorSubscript")]
	public static extern void* QCborMap__ConstIterator_OperatorSubscript(void* c_this, int32 j);
	[LinkName("QCborMap__ConstIterator_OperatorMinusGreater")]
	public static extern void* QCborMap__ConstIterator_OperatorMinusGreater(void* c_this);
	[LinkName("QCborMap__ConstIterator_Key")]
	public static extern void QCborMap__ConstIterator_Key(void* c_this);
	[LinkName("QCborMap__ConstIterator_Value")]
	public static extern void QCborMap__ConstIterator_Value(void* c_this);
	[LinkName("QCborMap__ConstIterator_OperatorEqual")]
	public static extern bool QCborMap__ConstIterator_OperatorEqual(void* c_this, QCborMap__Iterator* o);
	[LinkName("QCborMap__ConstIterator_OperatorNotEqual")]
	public static extern bool QCborMap__ConstIterator_OperatorNotEqual(void* c_this, QCborMap__Iterator* o);
	[LinkName("QCborMap__ConstIterator_OperatorLesser")]
	public static extern bool QCborMap__ConstIterator_OperatorLesser(void* c_this, QCborMap__Iterator* other);
	[LinkName("QCborMap__ConstIterator_OperatorLesserOrEqual")]
	public static extern bool QCborMap__ConstIterator_OperatorLesserOrEqual(void* c_this, QCborMap__Iterator* other);
	[LinkName("QCborMap__ConstIterator_OperatorGreater")]
	public static extern bool QCborMap__ConstIterator_OperatorGreater(void* c_this, QCborMap__Iterator* other);
	[LinkName("QCborMap__ConstIterator_OperatorGreaterOrEqual")]
	public static extern bool QCborMap__ConstIterator_OperatorGreaterOrEqual(void* c_this, QCborMap__Iterator* other);
	[LinkName("QCborMap__ConstIterator_OperatorEqualWithQCborMapConstIterator")]
	public static extern bool QCborMap__ConstIterator_OperatorEqualWithQCborMapConstIterator(void* c_this, QCborMap__ConstIterator* o);
	[LinkName("QCborMap__ConstIterator_OperatorNotEqualWithQCborMapConstIterator")]
	public static extern bool QCborMap__ConstIterator_OperatorNotEqualWithQCborMapConstIterator(void* c_this, QCborMap__ConstIterator* o);
	[LinkName("QCborMap__ConstIterator_OperatorLesserWithOther")]
	public static extern bool QCborMap__ConstIterator_OperatorLesserWithOther(void* c_this, QCborMap__ConstIterator* other);
	[LinkName("QCborMap__ConstIterator_OperatorLesserOrEqualWithOther")]
	public static extern bool QCborMap__ConstIterator_OperatorLesserOrEqualWithOther(void* c_this, QCborMap__ConstIterator* other);
	[LinkName("QCborMap__ConstIterator_OperatorGreaterWithOther")]
	public static extern bool QCborMap__ConstIterator_OperatorGreaterWithOther(void* c_this, QCborMap__ConstIterator* other);
	[LinkName("QCborMap__ConstIterator_OperatorGreaterOrEqualWithOther")]
	public static extern bool QCborMap__ConstIterator_OperatorGreaterOrEqualWithOther(void* c_this, QCborMap__ConstIterator* other);
	[LinkName("QCborMap__ConstIterator_OperatorPlusPlus")]
	public static extern QCborMap__ConstIterator* QCborMap__ConstIterator_OperatorPlusPlus(void* c_this);
	[LinkName("QCborMap__ConstIterator_OperatorPlusPlusWithInt")]
	public static extern QCborMap__ConstIterator QCborMap__ConstIterator_OperatorPlusPlusWithInt(void* c_this, int32 param1);
	[LinkName("QCborMap__ConstIterator_OperatorMinusMinus")]
	public static extern QCborMap__ConstIterator* QCborMap__ConstIterator_OperatorMinusMinus(void* c_this);
	[LinkName("QCborMap__ConstIterator_OperatorMinusMinusWithInt")]
	public static extern QCborMap__ConstIterator QCborMap__ConstIterator_OperatorMinusMinusWithInt(void* c_this, int32 param1);
	[LinkName("QCborMap__ConstIterator_OperatorPlusAssign")]
	public static extern QCborMap__ConstIterator* QCborMap__ConstIterator_OperatorPlusAssign(void* c_this, int32 j);
	[LinkName("QCborMap__ConstIterator_OperatorMinusAssign")]
	public static extern QCborMap__ConstIterator* QCborMap__ConstIterator_OperatorMinusAssign(void* c_this, int32 j);
	[LinkName("QCborMap__ConstIterator_OperatorPlus")]
	public static extern QCborMap__ConstIterator QCborMap__ConstIterator_OperatorPlus(void* c_this, int32 j);
	[LinkName("QCborMap__ConstIterator_OperatorMinus")]
	public static extern QCborMap__ConstIterator QCborMap__ConstIterator_OperatorMinus(void* c_this, int32 j);
	[LinkName("QCborMap__ConstIterator_OperatorMinusWithQCborMapConstIterator")]
	public static extern int32 QCborMap__ConstIterator_OperatorMinusWithQCborMapConstIterator(void* c_this, QCborMap__ConstIterator j);
	/// Delete this object from C++ memory
	[LinkName("QCborMap__ConstIterator_Delete")]
	public static extern void QCborMap__ConstIterator_Delete(void* self);
}