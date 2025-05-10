using System;
using System.Interop;
namespace Qt;

public interface IQCborMap
{
	void* NativePtr { get; }
}
public class QCborMap : IQCborMap
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QCborMap_new();
	}
	
	public ~this()
	{
		CQt.QCborMap_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQCborMap other)
	{
		CQt.QCborMap_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public void Swap(IQCborMap other)
	{
		CQt.QCborMap_Swap(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
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
	
	public void Value2(String key)
	{
		CQt.QCborMap_Value2(this.nativePtr, libqt_string(key));
	}
	
	public void Value3(IQCborValue key)
	{
		CQt.QCborMap_Value3(this.nativePtr, (key == default) ? default : (void*)key.NativePtr);
	}
	
	public void OperatorSubscript(int64 key)
	{
		CQt.QCborMap_OperatorSubscript(this.nativePtr, key);
	}
	
	public void OperatorSubscript2(String key)
	{
		CQt.QCborMap_OperatorSubscript2(this.nativePtr, libqt_string(key));
	}
	
	public void OperatorSubscript3(IQCborValue key)
	{
		CQt.QCborMap_OperatorSubscript3(this.nativePtr, (key == default) ? default : (void*)key.NativePtr);
	}
	
	public void OperatorSubscript4(int64 key)
	{
		CQt.QCborMap_OperatorSubscript4(this.nativePtr, key);
	}
	
	public void OperatorSubscript6(String key)
	{
		CQt.QCborMap_OperatorSubscript6(this.nativePtr, libqt_string(key));
	}
	
	public void OperatorSubscript7(IQCborValue key)
	{
		CQt.QCborMap_OperatorSubscript7(this.nativePtr, (key == default) ? default : (void*)key.NativePtr);
	}
	
	public void Take(int64 key)
	{
		CQt.QCborMap_Take(this.nativePtr, key);
	}
	
	public void Take2(String key)
	{
		CQt.QCborMap_Take2(this.nativePtr, libqt_string(key));
	}
	
	public void Take3(IQCborValue key)
	{
		CQt.QCborMap_Take3(this.nativePtr, (key == default) ? default : (void*)key.NativePtr);
	}
	
	public void Remove(int64 key)
	{
		CQt.QCborMap_Remove(this.nativePtr, key);
	}
	
	public void Remove2(String key)
	{
		CQt.QCborMap_Remove2(this.nativePtr, libqt_string(key));
	}
	
	public void Remove3(IQCborValue key)
	{
		CQt.QCborMap_Remove3(this.nativePtr, (key == default) ? default : (void*)key.NativePtr);
	}
	
	public bool Contains(int64 key)
	{
		return CQt.QCborMap_Contains(this.nativePtr, key);
	}
	
	public bool Contains2(String key)
	{
		return CQt.QCborMap_Contains2(this.nativePtr, libqt_string(key));
	}
	
	public bool Contains3(IQCborValue key)
	{
		return CQt.QCborMap_Contains3(this.nativePtr, (key == default) ? default : (void*)key.NativePtr);
	}
	
	public int32 Compare(IQCborMap other)
	{
		return CQt.QCborMap_Compare(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public bool OperatorEqual(IQCborMap other)
	{
		return CQt.QCborMap_OperatorEqual(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public bool OperatorNotEqual(IQCborMap other)
	{
		return CQt.QCborMap_OperatorNotEqual(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public bool OperatorLesser(IQCborMap other)
	{
		return CQt.QCborMap_OperatorLesser(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public void Begin()
	{
		CQt.QCborMap_Begin(this.nativePtr);
	}
	
	public void ConstBegin()
	{
		CQt.QCborMap_ConstBegin(this.nativePtr);
	}
	
	public void Begin2()
	{
		CQt.QCborMap_Begin2(this.nativePtr);
	}
	
	public void Cbegin()
	{
		CQt.QCborMap_Cbegin(this.nativePtr);
	}
	
	public void End()
	{
		CQt.QCborMap_End(this.nativePtr);
	}
	
	public void ConstEnd()
	{
		CQt.QCborMap_ConstEnd(this.nativePtr);
	}
	
	public void End2()
	{
		CQt.QCborMap_End2(this.nativePtr);
	}
	
	public void Cend()
	{
		CQt.QCborMap_Cend(this.nativePtr);
	}
	
	public void Erase(QCborMap__Iterator it)
	{
		CQt.QCborMap_Erase(this.nativePtr, (it == default) ? default : (void)it.NativePtr);
	}
	
	public void EraseWithIt(QCborMap__ConstIterator it)
	{
		CQt.QCborMap_EraseWithIt(this.nativePtr, (it == default) ? default : (void)it.NativePtr);
	}
	
	public void Extract(QCborMap__Iterator it)
	{
		CQt.QCborMap_Extract(this.nativePtr, (it == default) ? default : (void)it.NativePtr);
	}
	
	public void ExtractWithIt(QCborMap__ConstIterator it)
	{
		CQt.QCborMap_ExtractWithIt(this.nativePtr, (it == default) ? default : (void)it.NativePtr);
	}
	
	public bool Empty()
	{
		return CQt.QCborMap_Empty(this.nativePtr);
	}
	
	public void Find(int64 key)
	{
		CQt.QCborMap_Find(this.nativePtr, key);
	}
	
	public void Find2(String key)
	{
		CQt.QCborMap_Find2(this.nativePtr, libqt_string(key));
	}
	
	public void Find3(IQCborValue key)
	{
		CQt.QCborMap_Find3(this.nativePtr, (key == default) ? default : (void*)key.NativePtr);
	}
	
	public void ConstFind(int64 key)
	{
		CQt.QCborMap_ConstFind(this.nativePtr, key);
	}
	
	public void ConstFind2(String key)
	{
		CQt.QCborMap_ConstFind2(this.nativePtr, libqt_string(key));
	}
	
	public void ConstFind3(IQCborValue key)
	{
		CQt.QCborMap_ConstFind3(this.nativePtr, (key == default) ? default : (void*)key.NativePtr);
	}
	
	public void Find4(int64 key)
	{
		CQt.QCborMap_Find4(this.nativePtr, key);
	}
	
	public void Find6(String key)
	{
		CQt.QCborMap_Find6(this.nativePtr, libqt_string(key));
	}
	
	public void Find7(IQCborValue key)
	{
		CQt.QCborMap_Find7(this.nativePtr, (key == default) ? default : (void*)key.NativePtr);
	}
	
	public void Insert(int64 key, IQCborValue value_)
	{
		CQt.QCborMap_Insert(this.nativePtr, key, (value_ == default) ? default : (void*)value_.NativePtr);
	}
	
	public void Insert3(String key, IQCborValue value_)
	{
		CQt.QCborMap_Insert3(this.nativePtr, libqt_string(key), (value_ == default) ? default : (void*)value_.NativePtr);
	}
	
	public void Insert4(IQCborValue key, IQCborValue value_)
	{
		CQt.QCborMap_Insert4(this.nativePtr, (key == default) ? default : (void*)key.NativePtr, (value_ == default) ? default : (void*)value_.NativePtr);
	}
	
	public void InsertWithQCborMapvalueType(void* v)
	{
		CQt.QCborMap_InsertWithQCborMapvalueType(this.nativePtr, v);
	}
	
	public static void FromVariantMap(void* mapVal)
	{
		CQt.QCborMap_FromVariantMap(mapVal);
	}
	
	public static void FromVariantHash(void* hash)
	{
		CQt.QCborMap_FromVariantHash(hash);
	}
	
	public static void FromJsonObject(IQJsonObject o)
	{
		CQt.QCborMap_FromJsonObject((o == default) ? default : (void*)o.NativePtr);
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
	public static extern void QCborMap_Begin(void* c_this);
	[LinkName("QCborMap_ConstBegin")]
	public static extern void QCborMap_ConstBegin(void* c_this);
	[LinkName("QCborMap_Begin2")]
	public static extern void QCborMap_Begin2(void* c_this);
	[LinkName("QCborMap_Cbegin")]
	public static extern void QCborMap_Cbegin(void* c_this);
	[LinkName("QCborMap_End")]
	public static extern void QCborMap_End(void* c_this);
	[LinkName("QCborMap_ConstEnd")]
	public static extern void QCborMap_ConstEnd(void* c_this);
	[LinkName("QCborMap_End2")]
	public static extern void QCborMap_End2(void* c_this);
	[LinkName("QCborMap_Cend")]
	public static extern void QCborMap_Cend(void* c_this);
	[LinkName("QCborMap_Erase")]
	public static extern void QCborMap_Erase(void* c_this, void it);
	[LinkName("QCborMap_EraseWithIt")]
	public static extern void QCborMap_EraseWithIt(void* c_this, void it);
	[LinkName("QCborMap_Extract")]
	public static extern void QCborMap_Extract(void* c_this, void it);
	[LinkName("QCborMap_ExtractWithIt")]
	public static extern void QCborMap_ExtractWithIt(void* c_this, void it);
	[LinkName("QCborMap_Empty")]
	public static extern bool QCborMap_Empty(void* c_this);
	[LinkName("QCborMap_Find")]
	public static extern void QCborMap_Find(void* c_this, int64 key);
	[LinkName("QCborMap_Find2")]
	public static extern void QCborMap_Find2(void* c_this, libqt_string key);
	[LinkName("QCborMap_Find3")]
	public static extern void QCborMap_Find3(void* c_this, void* key);
	[LinkName("QCborMap_ConstFind")]
	public static extern void QCborMap_ConstFind(void* c_this, int64 key);
	[LinkName("QCborMap_ConstFind2")]
	public static extern void QCborMap_ConstFind2(void* c_this, libqt_string key);
	[LinkName("QCborMap_ConstFind3")]
	public static extern void QCborMap_ConstFind3(void* c_this, void* key);
	[LinkName("QCborMap_Find4")]
	public static extern void QCborMap_Find4(void* c_this, int64 key);
	[LinkName("QCborMap_Find6")]
	public static extern void QCborMap_Find6(void* c_this, libqt_string key);
	[LinkName("QCborMap_Find7")]
	public static extern void QCborMap_Find7(void* c_this, void* key);
	[LinkName("QCborMap_Insert")]
	public static extern void QCborMap_Insert(void* c_this, int64 key, void* value_);
	[LinkName("QCborMap_Insert3")]
	public static extern void QCborMap_Insert3(void* c_this, libqt_string key, void* value_);
	[LinkName("QCborMap_Insert4")]
	public static extern void QCborMap_Insert4(void* c_this, void* key, void* value_);
	[LinkName("QCborMap_InsertWithQCborMapvalueType")]
	public static extern void QCborMap_InsertWithQCborMapvalueType(void* c_this, void* v);
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
public interface IQCborMap__Iterator
{
	void* NativePtr { get; }
}
public class QCborMap__Iterator : IQCborMap__Iterator
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(QCborMap__Iterator other)
	{
		this.nativePtr = CQt.QCborMap__Iterator_new((other == default) ? default : (void*)other.NativePtr);
	}
	
	public ~this()
	{
		CQt.QCborMap__Iterator_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(QCborMap__Iterator other)
	{
		CQt.QCborMap__Iterator_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
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
	
	public bool OperatorEqual(QCborMap__Iterator o)
	{
		return CQt.QCborMap__Iterator_OperatorEqual(this.nativePtr, (o == default) ? default : (void*)o.NativePtr);
	}
	
	public bool OperatorNotEqual(QCborMap__Iterator o)
	{
		return CQt.QCborMap__Iterator_OperatorNotEqual(this.nativePtr, (o == default) ? default : (void*)o.NativePtr);
	}
	
	public bool OperatorLesser(QCborMap__Iterator other)
	{
		return CQt.QCborMap__Iterator_OperatorLesser(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public bool OperatorLesserOrEqual(QCborMap__Iterator other)
	{
		return CQt.QCborMap__Iterator_OperatorLesserOrEqual(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public bool OperatorGreater(QCborMap__Iterator other)
	{
		return CQt.QCborMap__Iterator_OperatorGreater(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public bool OperatorGreaterOrEqual(QCborMap__Iterator other)
	{
		return CQt.QCborMap__Iterator_OperatorGreaterOrEqual(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public bool OperatorEqualWithQCborMapConstIterator(QCborMap__ConstIterator o)
	{
		return CQt.QCborMap__Iterator_OperatorEqualWithQCborMapConstIterator(this.nativePtr, (o == default) ? default : (void*)o.NativePtr);
	}
	
	public bool OperatorNotEqualWithQCborMapConstIterator(QCborMap__ConstIterator o)
	{
		return CQt.QCborMap__Iterator_OperatorNotEqualWithQCborMapConstIterator(this.nativePtr, (o == default) ? default : (void*)o.NativePtr);
	}
	
	public bool OperatorLesserWithOther(QCborMap__ConstIterator other)
	{
		return CQt.QCborMap__Iterator_OperatorLesserWithOther(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public bool OperatorLesserOrEqualWithOther(QCborMap__ConstIterator other)
	{
		return CQt.QCborMap__Iterator_OperatorLesserOrEqualWithOther(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public bool OperatorGreaterWithOther(QCborMap__ConstIterator other)
	{
		return CQt.QCborMap__Iterator_OperatorGreaterWithOther(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public bool OperatorGreaterOrEqualWithOther(QCborMap__ConstIterator other)
	{
		return CQt.QCborMap__Iterator_OperatorGreaterOrEqualWithOther(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public void* OperatorPlusPlus()
	{
		return CQt.QCborMap__Iterator_OperatorPlusPlus(this.nativePtr);
	}
	
	public void OperatorPlusPlusWithInt(int32 param1)
	{
		CQt.QCborMap__Iterator_OperatorPlusPlusWithInt(this.nativePtr, param1);
	}
	
	public void* OperatorMinusMinus()
	{
		return CQt.QCborMap__Iterator_OperatorMinusMinus(this.nativePtr);
	}
	
	public void OperatorMinusMinusWithInt(int32 param1)
	{
		CQt.QCborMap__Iterator_OperatorMinusMinusWithInt(this.nativePtr, param1);
	}
	
	public void* OperatorPlusAssign(int32 j)
	{
		return CQt.QCborMap__Iterator_OperatorPlusAssign(this.nativePtr, j);
	}
	
	public void* OperatorMinusAssign(int32 j)
	{
		return CQt.QCborMap__Iterator_OperatorMinusAssign(this.nativePtr, j);
	}
	
	public void OperatorPlus(int32 j)
	{
		CQt.QCborMap__Iterator_OperatorPlus(this.nativePtr, j);
	}
	
	public void OperatorMinus(int32 j)
	{
		CQt.QCborMap__Iterator_OperatorMinus(this.nativePtr, j);
	}
	
	public int32 OperatorMinusWithQCborMapIterator(QCborMap__Iterator j)
	{
		return CQt.QCborMap__Iterator_OperatorMinusWithQCborMapIterator(this.nativePtr, (j == default) ? default : (void)j.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QCborMap__Iterator_new")]
	public static extern void* QCborMap__Iterator_new(void* other);
	[LinkName("QCborMap__Iterator_new2")]
	public static extern void* QCborMap__Iterator_new2();
	[LinkName("QCborMap__Iterator_new3")]
	public static extern void* QCborMap__Iterator_new3(void* param1);
	[LinkName("QCborMap__Iterator_OperatorAssign")]
	public static extern void QCborMap__Iterator_OperatorAssign(void* c_this, void* other);
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
	public static extern bool QCborMap__Iterator_OperatorEqual(void* c_this, void* o);
	[LinkName("QCborMap__Iterator_OperatorNotEqual")]
	public static extern bool QCborMap__Iterator_OperatorNotEqual(void* c_this, void* o);
	[LinkName("QCborMap__Iterator_OperatorLesser")]
	public static extern bool QCborMap__Iterator_OperatorLesser(void* c_this, void* other);
	[LinkName("QCborMap__Iterator_OperatorLesserOrEqual")]
	public static extern bool QCborMap__Iterator_OperatorLesserOrEqual(void* c_this, void* other);
	[LinkName("QCborMap__Iterator_OperatorGreater")]
	public static extern bool QCborMap__Iterator_OperatorGreater(void* c_this, void* other);
	[LinkName("QCborMap__Iterator_OperatorGreaterOrEqual")]
	public static extern bool QCborMap__Iterator_OperatorGreaterOrEqual(void* c_this, void* other);
	[LinkName("QCborMap__Iterator_OperatorEqualWithQCborMapConstIterator")]
	public static extern bool QCborMap__Iterator_OperatorEqualWithQCborMapConstIterator(void* c_this, void* o);
	[LinkName("QCborMap__Iterator_OperatorNotEqualWithQCborMapConstIterator")]
	public static extern bool QCborMap__Iterator_OperatorNotEqualWithQCborMapConstIterator(void* c_this, void* o);
	[LinkName("QCborMap__Iterator_OperatorLesserWithOther")]
	public static extern bool QCborMap__Iterator_OperatorLesserWithOther(void* c_this, void* other);
	[LinkName("QCborMap__Iterator_OperatorLesserOrEqualWithOther")]
	public static extern bool QCborMap__Iterator_OperatorLesserOrEqualWithOther(void* c_this, void* other);
	[LinkName("QCborMap__Iterator_OperatorGreaterWithOther")]
	public static extern bool QCborMap__Iterator_OperatorGreaterWithOther(void* c_this, void* other);
	[LinkName("QCborMap__Iterator_OperatorGreaterOrEqualWithOther")]
	public static extern bool QCborMap__Iterator_OperatorGreaterOrEqualWithOther(void* c_this, void* other);
	[LinkName("QCborMap__Iterator_OperatorPlusPlus")]
	public static extern void* QCborMap__Iterator_OperatorPlusPlus(void* c_this);
	[LinkName("QCborMap__Iterator_OperatorPlusPlusWithInt")]
	public static extern void QCborMap__Iterator_OperatorPlusPlusWithInt(void* c_this, int32 param1);
	[LinkName("QCborMap__Iterator_OperatorMinusMinus")]
	public static extern void* QCborMap__Iterator_OperatorMinusMinus(void* c_this);
	[LinkName("QCborMap__Iterator_OperatorMinusMinusWithInt")]
	public static extern void QCborMap__Iterator_OperatorMinusMinusWithInt(void* c_this, int32 param1);
	[LinkName("QCborMap__Iterator_OperatorPlusAssign")]
	public static extern void* QCborMap__Iterator_OperatorPlusAssign(void* c_this, int32 j);
	[LinkName("QCborMap__Iterator_OperatorMinusAssign")]
	public static extern void* QCborMap__Iterator_OperatorMinusAssign(void* c_this, int32 j);
	[LinkName("QCborMap__Iterator_OperatorPlus")]
	public static extern void QCborMap__Iterator_OperatorPlus(void* c_this, int32 j);
	[LinkName("QCborMap__Iterator_OperatorMinus")]
	public static extern void QCborMap__Iterator_OperatorMinus(void* c_this, int32 j);
	[LinkName("QCborMap__Iterator_OperatorMinusWithQCborMapIterator")]
	public static extern int32 QCborMap__Iterator_OperatorMinusWithQCborMapIterator(void* c_this, void j);
	/// Delete this object from C++ memory
	[LinkName("QCborMap__Iterator_Delete")]
	public static extern void QCborMap__Iterator_Delete(void* self);
}
public interface IQCborMap__ConstIterator
{
	void* NativePtr { get; }
}
public class QCborMap__ConstIterator : IQCborMap__ConstIterator
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(QCborMap__ConstIterator other)
	{
		this.nativePtr = CQt.QCborMap__ConstIterator_new((other == default) ? default : (void*)other.NativePtr);
	}
	
	public ~this()
	{
		CQt.QCborMap__ConstIterator_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(QCborMap__ConstIterator other)
	{
		CQt.QCborMap__ConstIterator_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
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
	
	public bool OperatorEqual(QCborMap__Iterator o)
	{
		return CQt.QCborMap__ConstIterator_OperatorEqual(this.nativePtr, (o == default) ? default : (void*)o.NativePtr);
	}
	
	public bool OperatorNotEqual(QCborMap__Iterator o)
	{
		return CQt.QCborMap__ConstIterator_OperatorNotEqual(this.nativePtr, (o == default) ? default : (void*)o.NativePtr);
	}
	
	public bool OperatorLesser(QCborMap__Iterator other)
	{
		return CQt.QCborMap__ConstIterator_OperatorLesser(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public bool OperatorLesserOrEqual(QCborMap__Iterator other)
	{
		return CQt.QCborMap__ConstIterator_OperatorLesserOrEqual(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public bool OperatorGreater(QCborMap__Iterator other)
	{
		return CQt.QCborMap__ConstIterator_OperatorGreater(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public bool OperatorGreaterOrEqual(QCborMap__Iterator other)
	{
		return CQt.QCborMap__ConstIterator_OperatorGreaterOrEqual(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public bool OperatorEqualWithQCborMapConstIterator(QCborMap__ConstIterator o)
	{
		return CQt.QCborMap__ConstIterator_OperatorEqualWithQCborMapConstIterator(this.nativePtr, (o == default) ? default : (void*)o.NativePtr);
	}
	
	public bool OperatorNotEqualWithQCborMapConstIterator(QCborMap__ConstIterator o)
	{
		return CQt.QCborMap__ConstIterator_OperatorNotEqualWithQCborMapConstIterator(this.nativePtr, (o == default) ? default : (void*)o.NativePtr);
	}
	
	public bool OperatorLesserWithOther(QCborMap__ConstIterator other)
	{
		return CQt.QCborMap__ConstIterator_OperatorLesserWithOther(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public bool OperatorLesserOrEqualWithOther(QCborMap__ConstIterator other)
	{
		return CQt.QCborMap__ConstIterator_OperatorLesserOrEqualWithOther(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public bool OperatorGreaterWithOther(QCborMap__ConstIterator other)
	{
		return CQt.QCborMap__ConstIterator_OperatorGreaterWithOther(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public bool OperatorGreaterOrEqualWithOther(QCborMap__ConstIterator other)
	{
		return CQt.QCborMap__ConstIterator_OperatorGreaterOrEqualWithOther(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public void* OperatorPlusPlus()
	{
		return CQt.QCborMap__ConstIterator_OperatorPlusPlus(this.nativePtr);
	}
	
	public void OperatorPlusPlusWithInt(int32 param1)
	{
		CQt.QCborMap__ConstIterator_OperatorPlusPlusWithInt(this.nativePtr, param1);
	}
	
	public void* OperatorMinusMinus()
	{
		return CQt.QCborMap__ConstIterator_OperatorMinusMinus(this.nativePtr);
	}
	
	public void OperatorMinusMinusWithInt(int32 param1)
	{
		CQt.QCborMap__ConstIterator_OperatorMinusMinusWithInt(this.nativePtr, param1);
	}
	
	public void* OperatorPlusAssign(int32 j)
	{
		return CQt.QCborMap__ConstIterator_OperatorPlusAssign(this.nativePtr, j);
	}
	
	public void* OperatorMinusAssign(int32 j)
	{
		return CQt.QCborMap__ConstIterator_OperatorMinusAssign(this.nativePtr, j);
	}
	
	public void OperatorPlus(int32 j)
	{
		CQt.QCborMap__ConstIterator_OperatorPlus(this.nativePtr, j);
	}
	
	public void OperatorMinus(int32 j)
	{
		CQt.QCborMap__ConstIterator_OperatorMinus(this.nativePtr, j);
	}
	
	public int32 OperatorMinusWithQCborMapConstIterator(QCborMap__ConstIterator j)
	{
		return CQt.QCborMap__ConstIterator_OperatorMinusWithQCborMapConstIterator(this.nativePtr, (j == default) ? default : (void)j.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QCborMap__ConstIterator_new")]
	public static extern void* QCborMap__ConstIterator_new(void* other);
	[LinkName("QCborMap__ConstIterator_new2")]
	public static extern void* QCborMap__ConstIterator_new2();
	[LinkName("QCborMap__ConstIterator_new3")]
	public static extern void* QCborMap__ConstIterator_new3(void* param1);
	[LinkName("QCborMap__ConstIterator_OperatorAssign")]
	public static extern void QCborMap__ConstIterator_OperatorAssign(void* c_this, void* other);
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
	public static extern bool QCborMap__ConstIterator_OperatorEqual(void* c_this, void* o);
	[LinkName("QCborMap__ConstIterator_OperatorNotEqual")]
	public static extern bool QCborMap__ConstIterator_OperatorNotEqual(void* c_this, void* o);
	[LinkName("QCborMap__ConstIterator_OperatorLesser")]
	public static extern bool QCborMap__ConstIterator_OperatorLesser(void* c_this, void* other);
	[LinkName("QCborMap__ConstIterator_OperatorLesserOrEqual")]
	public static extern bool QCborMap__ConstIterator_OperatorLesserOrEqual(void* c_this, void* other);
	[LinkName("QCborMap__ConstIterator_OperatorGreater")]
	public static extern bool QCborMap__ConstIterator_OperatorGreater(void* c_this, void* other);
	[LinkName("QCborMap__ConstIterator_OperatorGreaterOrEqual")]
	public static extern bool QCborMap__ConstIterator_OperatorGreaterOrEqual(void* c_this, void* other);
	[LinkName("QCborMap__ConstIterator_OperatorEqualWithQCborMapConstIterator")]
	public static extern bool QCborMap__ConstIterator_OperatorEqualWithQCborMapConstIterator(void* c_this, void* o);
	[LinkName("QCborMap__ConstIterator_OperatorNotEqualWithQCborMapConstIterator")]
	public static extern bool QCborMap__ConstIterator_OperatorNotEqualWithQCborMapConstIterator(void* c_this, void* o);
	[LinkName("QCborMap__ConstIterator_OperatorLesserWithOther")]
	public static extern bool QCborMap__ConstIterator_OperatorLesserWithOther(void* c_this, void* other);
	[LinkName("QCborMap__ConstIterator_OperatorLesserOrEqualWithOther")]
	public static extern bool QCborMap__ConstIterator_OperatorLesserOrEqualWithOther(void* c_this, void* other);
	[LinkName("QCborMap__ConstIterator_OperatorGreaterWithOther")]
	public static extern bool QCborMap__ConstIterator_OperatorGreaterWithOther(void* c_this, void* other);
	[LinkName("QCborMap__ConstIterator_OperatorGreaterOrEqualWithOther")]
	public static extern bool QCborMap__ConstIterator_OperatorGreaterOrEqualWithOther(void* c_this, void* other);
	[LinkName("QCborMap__ConstIterator_OperatorPlusPlus")]
	public static extern void* QCborMap__ConstIterator_OperatorPlusPlus(void* c_this);
	[LinkName("QCborMap__ConstIterator_OperatorPlusPlusWithInt")]
	public static extern void QCborMap__ConstIterator_OperatorPlusPlusWithInt(void* c_this, int32 param1);
	[LinkName("QCborMap__ConstIterator_OperatorMinusMinus")]
	public static extern void* QCborMap__ConstIterator_OperatorMinusMinus(void* c_this);
	[LinkName("QCborMap__ConstIterator_OperatorMinusMinusWithInt")]
	public static extern void QCborMap__ConstIterator_OperatorMinusMinusWithInt(void* c_this, int32 param1);
	[LinkName("QCborMap__ConstIterator_OperatorPlusAssign")]
	public static extern void* QCborMap__ConstIterator_OperatorPlusAssign(void* c_this, int32 j);
	[LinkName("QCborMap__ConstIterator_OperatorMinusAssign")]
	public static extern void* QCborMap__ConstIterator_OperatorMinusAssign(void* c_this, int32 j);
	[LinkName("QCborMap__ConstIterator_OperatorPlus")]
	public static extern void QCborMap__ConstIterator_OperatorPlus(void* c_this, int32 j);
	[LinkName("QCborMap__ConstIterator_OperatorMinus")]
	public static extern void QCborMap__ConstIterator_OperatorMinus(void* c_this, int32 j);
	[LinkName("QCborMap__ConstIterator_OperatorMinusWithQCborMapConstIterator")]
	public static extern int32 QCborMap__ConstIterator_OperatorMinusWithQCborMapConstIterator(void* c_this, void j);
	/// Delete this object from C++ memory
	[LinkName("QCborMap__ConstIterator_Delete")]
	public static extern void QCborMap__ConstIterator_Delete(void* self);
}