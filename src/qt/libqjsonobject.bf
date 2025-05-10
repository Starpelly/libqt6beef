using System;
using System.Interop;
namespace Qt;

public class QJsonObject
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QJsonObject_new();
	}
	
	public ~this()
	{
		CQt.QJsonObject_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* other)
	{
		CQt.QJsonObject_OperatorAssign(this.nativePtr, other);
	}
	
	public void Swap(void* other)
	{
		CQt.QJsonObject_Swap(this.nativePtr, other);
	}
	
	public static void FromVariantMap(void* mapVal)
	{
		CQt.QJsonObject_FromVariantMap(mapVal);
	}
	
	public void* ToVariantMap()
	{
		return CQt.QJsonObject_ToVariantMap(this.nativePtr);
	}
	
	public static void FromVariantHash(void* mapVal)
	{
		CQt.QJsonObject_FromVariantHash(mapVal);
	}
	
	public void* ToVariantHash()
	{
		return CQt.QJsonObject_ToVariantHash(this.nativePtr);
	}
	
	public libqt_string[] Keys()
	{
		return CQt.QJsonObject_Keys(this.nativePtr);
	}
	
	public int32 Size()
	{
		return CQt.QJsonObject_Size(this.nativePtr);
	}
	
	public int32 Count()
	{
		return CQt.QJsonObject_Count(this.nativePtr);
	}
	
	public int32 Length()
	{
		return CQt.QJsonObject_Length(this.nativePtr);
	}
	
	public bool IsEmpty()
	{
		return CQt.QJsonObject_IsEmpty(this.nativePtr);
	}
	
	public void Value(libqt_string key)
	{
		CQt.QJsonObject_Value(this.nativePtr, key);
	}
	
	public void OperatorSubscript(libqt_string key)
	{
		CQt.QJsonObject_OperatorSubscript(this.nativePtr, key);
	}
	
	public void OperatorSubscriptWithKey(libqt_string key)
	{
		CQt.QJsonObject_OperatorSubscriptWithKey(this.nativePtr, key);
	}
	
	public void Remove(libqt_string key)
	{
		CQt.QJsonObject_Remove(this.nativePtr, key);
	}
	
	public void Take(libqt_string key)
	{
		CQt.QJsonObject_Take(this.nativePtr, key);
	}
	
	public bool Contains(libqt_string key)
	{
		return CQt.QJsonObject_Contains(this.nativePtr, key);
	}
	
	public bool OperatorEqual(void* other)
	{
		return CQt.QJsonObject_OperatorEqual(this.nativePtr, other);
	}
	
	public bool OperatorNotEqual(void* other)
	{
		return CQt.QJsonObject_OperatorNotEqual(this.nativePtr, other);
	}
	
	public QJsonObject__iterator Begin()
	{
		return CQt.QJsonObject_Begin(this.nativePtr);
	}
	
	public QJsonObject__const_iterator Begin2()
	{
		return CQt.QJsonObject_Begin2(this.nativePtr);
	}
	
	public QJsonObject__const_iterator ConstBegin()
	{
		return CQt.QJsonObject_ConstBegin(this.nativePtr);
	}
	
	public QJsonObject__iterator End()
	{
		return CQt.QJsonObject_End(this.nativePtr);
	}
	
	public QJsonObject__const_iterator End2()
	{
		return CQt.QJsonObject_End2(this.nativePtr);
	}
	
	public QJsonObject__const_iterator ConstEnd()
	{
		return CQt.QJsonObject_ConstEnd(this.nativePtr);
	}
	
	public QJsonObject__iterator Erase(QJsonObject__iterator it)
	{
		return CQt.QJsonObject_Erase(this.nativePtr, it);
	}
	
	public QJsonObject__iterator Find(libqt_string key)
	{
		return CQt.QJsonObject_Find(this.nativePtr, key);
	}
	
	public QJsonObject__const_iterator FindWithKey(libqt_string key)
	{
		return CQt.QJsonObject_FindWithKey(this.nativePtr, key);
	}
	
	public QJsonObject__const_iterator ConstFind(libqt_string key)
	{
		return CQt.QJsonObject_ConstFind(this.nativePtr, key);
	}
	
	public QJsonObject__iterator Insert(libqt_string key, void* value)
	{
		return CQt.QJsonObject_Insert(this.nativePtr, key, value);
	}
	
	public bool Empty()
	{
		return CQt.QJsonObject_Empty(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QJsonObject_new")]
	public static extern void* QJsonObject_new();
	[LinkName("QJsonObject_new2")]
	public static extern void* QJsonObject_new2(void* other);
	[LinkName("QJsonObject_OperatorAssign")]
	public static extern void QJsonObject_OperatorAssign(void* c_this, void* other);
	[LinkName("QJsonObject_Swap")]
	public static extern void QJsonObject_Swap(void* c_this, void* other);
	[LinkName("QJsonObject_FromVariantMap")]
	public static extern void QJsonObject_FromVariantMap(void* mapVal);
	[LinkName("QJsonObject_ToVariantMap")]
	public static extern void* QJsonObject_ToVariantMap(void* c_this);
	[LinkName("QJsonObject_FromVariantHash")]
	public static extern void QJsonObject_FromVariantHash(void* mapVal);
	[LinkName("QJsonObject_ToVariantHash")]
	public static extern void* QJsonObject_ToVariantHash(void* c_this);
	[LinkName("QJsonObject_Keys")]
	public static extern libqt_string[] QJsonObject_Keys(void* c_this);
	[LinkName("QJsonObject_Size")]
	public static extern int32 QJsonObject_Size(void* c_this);
	[LinkName("QJsonObject_Count")]
	public static extern int32 QJsonObject_Count(void* c_this);
	[LinkName("QJsonObject_Length")]
	public static extern int32 QJsonObject_Length(void* c_this);
	[LinkName("QJsonObject_IsEmpty")]
	public static extern bool QJsonObject_IsEmpty(void* c_this);
	[LinkName("QJsonObject_Value")]
	public static extern void QJsonObject_Value(void* c_this, libqt_string key);
	[LinkName("QJsonObject_OperatorSubscript")]
	public static extern void QJsonObject_OperatorSubscript(void* c_this, libqt_string key);
	[LinkName("QJsonObject_OperatorSubscriptWithKey")]
	public static extern void QJsonObject_OperatorSubscriptWithKey(void* c_this, libqt_string key);
	[LinkName("QJsonObject_Remove")]
	public static extern void QJsonObject_Remove(void* c_this, libqt_string key);
	[LinkName("QJsonObject_Take")]
	public static extern void QJsonObject_Take(void* c_this, libqt_string key);
	[LinkName("QJsonObject_Contains")]
	public static extern bool QJsonObject_Contains(void* c_this, libqt_string key);
	[LinkName("QJsonObject_OperatorEqual")]
	public static extern bool QJsonObject_OperatorEqual(void* c_this, void* other);
	[LinkName("QJsonObject_OperatorNotEqual")]
	public static extern bool QJsonObject_OperatorNotEqual(void* c_this, void* other);
	[LinkName("QJsonObject_Begin")]
	public static extern QJsonObject__iterator QJsonObject_Begin(void* c_this);
	[LinkName("QJsonObject_Begin2")]
	public static extern QJsonObject__const_iterator QJsonObject_Begin2(void* c_this);
	[LinkName("QJsonObject_ConstBegin")]
	public static extern QJsonObject__const_iterator QJsonObject_ConstBegin(void* c_this);
	[LinkName("QJsonObject_End")]
	public static extern QJsonObject__iterator QJsonObject_End(void* c_this);
	[LinkName("QJsonObject_End2")]
	public static extern QJsonObject__const_iterator QJsonObject_End2(void* c_this);
	[LinkName("QJsonObject_ConstEnd")]
	public static extern QJsonObject__const_iterator QJsonObject_ConstEnd(void* c_this);
	[LinkName("QJsonObject_Erase")]
	public static extern QJsonObject__iterator QJsonObject_Erase(void* c_this, QJsonObject__iterator it);
	[LinkName("QJsonObject_Find")]
	public static extern QJsonObject__iterator QJsonObject_Find(void* c_this, libqt_string key);
	[LinkName("QJsonObject_FindWithKey")]
	public static extern QJsonObject__const_iterator QJsonObject_FindWithKey(void* c_this, libqt_string key);
	[LinkName("QJsonObject_ConstFind")]
	public static extern QJsonObject__const_iterator QJsonObject_ConstFind(void* c_this, libqt_string key);
	[LinkName("QJsonObject_Insert")]
	public static extern QJsonObject__iterator QJsonObject_Insert(void* c_this, libqt_string key, void* value);
	[LinkName("QJsonObject_Empty")]
	public static extern bool QJsonObject_Empty(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QJsonObject_Delete")]
	public static extern void QJsonObject_Delete(void* self);
}
public class QJsonObject__iterator
{
	protected void* nativePtr;
	
	public this(QJsonObject__iterator* other)
	{
		this.nativePtr = CQt.QJsonObject__iterator_new(other);
	}
	
	public ~this()
	{
		CQt.QJsonObject__iterator_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(QJsonObject__iterator* other)
	{
		CQt.QJsonObject__iterator_OperatorAssign(this.nativePtr, other);
	}
	
	public libqt_string Key()
	{
		return CQt.QJsonObject__iterator_Key(this.nativePtr);
	}
	
	public void Value()
	{
		CQt.QJsonObject__iterator_Value(this.nativePtr);
	}
	
	public void OperatorMultiply()
	{
		CQt.QJsonObject__iterator_OperatorMultiply(this.nativePtr);
	}
	
	public void* OperatorMinusGreater()
	{
		return CQt.QJsonObject__iterator_OperatorMinusGreater(this.nativePtr);
	}
	
	public void* OperatorMinusGreater2()
	{
		return CQt.QJsonObject__iterator_OperatorMinusGreater2(this.nativePtr);
	}
	
	public void OperatorSubscript(int32 j)
	{
		CQt.QJsonObject__iterator_OperatorSubscript(this.nativePtr, j);
	}
	
	public bool OperatorEqual(QJsonObject__iterator* other)
	{
		return CQt.QJsonObject__iterator_OperatorEqual(this.nativePtr, other);
	}
	
	public bool OperatorNotEqual(QJsonObject__iterator* other)
	{
		return CQt.QJsonObject__iterator_OperatorNotEqual(this.nativePtr, other);
	}
	
	public bool OperatorLesser(QJsonObject__iterator* other)
	{
		return CQt.QJsonObject__iterator_OperatorLesser(this.nativePtr, other);
	}
	
	public bool OperatorLesserOrEqual(QJsonObject__iterator* other)
	{
		return CQt.QJsonObject__iterator_OperatorLesserOrEqual(this.nativePtr, other);
	}
	
	public bool OperatorGreater(QJsonObject__iterator* other)
	{
		return CQt.QJsonObject__iterator_OperatorGreater(this.nativePtr, other);
	}
	
	public bool OperatorGreaterOrEqual(QJsonObject__iterator* other)
	{
		return CQt.QJsonObject__iterator_OperatorGreaterOrEqual(this.nativePtr, other);
	}
	
	public QJsonObject__iterator* OperatorPlusPlus()
	{
		return CQt.QJsonObject__iterator_OperatorPlusPlus(this.nativePtr);
	}
	
	public QJsonObject__iterator OperatorPlusPlusWithInt(int32 param1)
	{
		return CQt.QJsonObject__iterator_OperatorPlusPlusWithInt(this.nativePtr, param1);
	}
	
	public QJsonObject__iterator* OperatorMinusMinus()
	{
		return CQt.QJsonObject__iterator_OperatorMinusMinus(this.nativePtr);
	}
	
	public QJsonObject__iterator OperatorMinusMinusWithInt(int32 param1)
	{
		return CQt.QJsonObject__iterator_OperatorMinusMinusWithInt(this.nativePtr, param1);
	}
	
	public QJsonObject__iterator OperatorPlus(int32 j)
	{
		return CQt.QJsonObject__iterator_OperatorPlus(this.nativePtr, j);
	}
	
	public QJsonObject__iterator OperatorMinus(int32 j)
	{
		return CQt.QJsonObject__iterator_OperatorMinus(this.nativePtr, j);
	}
	
	public QJsonObject__iterator* OperatorPlusAssign(int32 j)
	{
		return CQt.QJsonObject__iterator_OperatorPlusAssign(this.nativePtr, j);
	}
	
	public QJsonObject__iterator* OperatorMinusAssign(int32 j)
	{
		return CQt.QJsonObject__iterator_OperatorMinusAssign(this.nativePtr, j);
	}
	
	public int32 OperatorMinusWithQJsonObjectiterator(QJsonObject__iterator j)
	{
		return CQt.QJsonObject__iterator_OperatorMinusWithQJsonObjectiterator(this.nativePtr, j);
	}
	
	public bool OperatorEqualWithOther(QJsonObject__const_iterator* other)
	{
		return CQt.QJsonObject__iterator_OperatorEqualWithOther(this.nativePtr, other);
	}
	
	public bool OperatorNotEqualWithOther(QJsonObject__const_iterator* other)
	{
		return CQt.QJsonObject__iterator_OperatorNotEqualWithOther(this.nativePtr, other);
	}
	
	public bool OperatorLesserWithOther(QJsonObject__const_iterator* other)
	{
		return CQt.QJsonObject__iterator_OperatorLesserWithOther(this.nativePtr, other);
	}
	
	public bool OperatorLesserOrEqualWithOther(QJsonObject__const_iterator* other)
	{
		return CQt.QJsonObject__iterator_OperatorLesserOrEqualWithOther(this.nativePtr, other);
	}
	
	public bool OperatorGreaterWithOther(QJsonObject__const_iterator* other)
	{
		return CQt.QJsonObject__iterator_OperatorGreaterWithOther(this.nativePtr, other);
	}
	
	public bool OperatorGreaterOrEqualWithOther(QJsonObject__const_iterator* other)
	{
		return CQt.QJsonObject__iterator_OperatorGreaterOrEqualWithOther(this.nativePtr, other);
	}
	
}
extension CQt
{
	[LinkName("QJsonObject__iterator_new")]
	public static extern void* QJsonObject__iterator_new(QJsonObject__iterator* other);
	[LinkName("QJsonObject__iterator_new2")]
	public static extern void* QJsonObject__iterator_new2();
	[LinkName("QJsonObject__iterator_new3")]
	public static extern void* QJsonObject__iterator_new3(void* obj, int32 index);
	[LinkName("QJsonObject__iterator_new4")]
	public static extern void* QJsonObject__iterator_new4(QJsonObject__iterator* other);
	[LinkName("QJsonObject__iterator_OperatorAssign")]
	public static extern void QJsonObject__iterator_OperatorAssign(void* c_this, QJsonObject__iterator* other);
	[LinkName("QJsonObject__iterator_Key")]
	public static extern libqt_string QJsonObject__iterator_Key(void* c_this);
	[LinkName("QJsonObject__iterator_Value")]
	public static extern void QJsonObject__iterator_Value(void* c_this);
	[LinkName("QJsonObject__iterator_OperatorMultiply")]
	public static extern void QJsonObject__iterator_OperatorMultiply(void* c_this);
	[LinkName("QJsonObject__iterator_OperatorMinusGreater")]
	public static extern void* QJsonObject__iterator_OperatorMinusGreater(void* c_this);
	[LinkName("QJsonObject__iterator_OperatorMinusGreater2")]
	public static extern void* QJsonObject__iterator_OperatorMinusGreater2(void* c_this);
	[LinkName("QJsonObject__iterator_OperatorSubscript")]
	public static extern void QJsonObject__iterator_OperatorSubscript(void* c_this, int32 j);
	[LinkName("QJsonObject__iterator_OperatorEqual")]
	public static extern bool QJsonObject__iterator_OperatorEqual(void* c_this, QJsonObject__iterator* other);
	[LinkName("QJsonObject__iterator_OperatorNotEqual")]
	public static extern bool QJsonObject__iterator_OperatorNotEqual(void* c_this, QJsonObject__iterator* other);
	[LinkName("QJsonObject__iterator_OperatorLesser")]
	public static extern bool QJsonObject__iterator_OperatorLesser(void* c_this, QJsonObject__iterator* other);
	[LinkName("QJsonObject__iterator_OperatorLesserOrEqual")]
	public static extern bool QJsonObject__iterator_OperatorLesserOrEqual(void* c_this, QJsonObject__iterator* other);
	[LinkName("QJsonObject__iterator_OperatorGreater")]
	public static extern bool QJsonObject__iterator_OperatorGreater(void* c_this, QJsonObject__iterator* other);
	[LinkName("QJsonObject__iterator_OperatorGreaterOrEqual")]
	public static extern bool QJsonObject__iterator_OperatorGreaterOrEqual(void* c_this, QJsonObject__iterator* other);
	[LinkName("QJsonObject__iterator_OperatorPlusPlus")]
	public static extern QJsonObject__iterator* QJsonObject__iterator_OperatorPlusPlus(void* c_this);
	[LinkName("QJsonObject__iterator_OperatorPlusPlusWithInt")]
	public static extern QJsonObject__iterator QJsonObject__iterator_OperatorPlusPlusWithInt(void* c_this, int32 param1);
	[LinkName("QJsonObject__iterator_OperatorMinusMinus")]
	public static extern QJsonObject__iterator* QJsonObject__iterator_OperatorMinusMinus(void* c_this);
	[LinkName("QJsonObject__iterator_OperatorMinusMinusWithInt")]
	public static extern QJsonObject__iterator QJsonObject__iterator_OperatorMinusMinusWithInt(void* c_this, int32 param1);
	[LinkName("QJsonObject__iterator_OperatorPlus")]
	public static extern QJsonObject__iterator QJsonObject__iterator_OperatorPlus(void* c_this, int32 j);
	[LinkName("QJsonObject__iterator_OperatorMinus")]
	public static extern QJsonObject__iterator QJsonObject__iterator_OperatorMinus(void* c_this, int32 j);
	[LinkName("QJsonObject__iterator_OperatorPlusAssign")]
	public static extern QJsonObject__iterator* QJsonObject__iterator_OperatorPlusAssign(void* c_this, int32 j);
	[LinkName("QJsonObject__iterator_OperatorMinusAssign")]
	public static extern QJsonObject__iterator* QJsonObject__iterator_OperatorMinusAssign(void* c_this, int32 j);
	[LinkName("QJsonObject__iterator_OperatorMinusWithQJsonObjectiterator")]
	public static extern int32 QJsonObject__iterator_OperatorMinusWithQJsonObjectiterator(void* c_this, QJsonObject__iterator j);
	[LinkName("QJsonObject__iterator_OperatorEqualWithOther")]
	public static extern bool QJsonObject__iterator_OperatorEqualWithOther(void* c_this, QJsonObject__const_iterator* other);
	[LinkName("QJsonObject__iterator_OperatorNotEqualWithOther")]
	public static extern bool QJsonObject__iterator_OperatorNotEqualWithOther(void* c_this, QJsonObject__const_iterator* other);
	[LinkName("QJsonObject__iterator_OperatorLesserWithOther")]
	public static extern bool QJsonObject__iterator_OperatorLesserWithOther(void* c_this, QJsonObject__const_iterator* other);
	[LinkName("QJsonObject__iterator_OperatorLesserOrEqualWithOther")]
	public static extern bool QJsonObject__iterator_OperatorLesserOrEqualWithOther(void* c_this, QJsonObject__const_iterator* other);
	[LinkName("QJsonObject__iterator_OperatorGreaterWithOther")]
	public static extern bool QJsonObject__iterator_OperatorGreaterWithOther(void* c_this, QJsonObject__const_iterator* other);
	[LinkName("QJsonObject__iterator_OperatorGreaterOrEqualWithOther")]
	public static extern bool QJsonObject__iterator_OperatorGreaterOrEqualWithOther(void* c_this, QJsonObject__const_iterator* other);
	/// Delete this object from C++ memory
	[LinkName("QJsonObject__iterator_Delete")]
	public static extern void QJsonObject__iterator_Delete(void* self);
}
public class QJsonObject__const_iterator
{
	protected void* nativePtr;
	
	public this(QJsonObject__const_iterator* other)
	{
		this.nativePtr = CQt.QJsonObject__const_iterator_new(other);
	}
	
	public ~this()
	{
		CQt.QJsonObject__const_iterator_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(QJsonObject__const_iterator* other)
	{
		CQt.QJsonObject__const_iterator_OperatorAssign(this.nativePtr, other);
	}
	
	public libqt_string Key()
	{
		return CQt.QJsonObject__const_iterator_Key(this.nativePtr);
	}
	
	public void Value()
	{
		CQt.QJsonObject__const_iterator_Value(this.nativePtr);
	}
	
	public void OperatorMultiply()
	{
		CQt.QJsonObject__const_iterator_OperatorMultiply(this.nativePtr);
	}
	
	public void* OperatorMinusGreater()
	{
		return CQt.QJsonObject__const_iterator_OperatorMinusGreater(this.nativePtr);
	}
	
	public void OperatorSubscript(int32 j)
	{
		CQt.QJsonObject__const_iterator_OperatorSubscript(this.nativePtr, j);
	}
	
	public bool OperatorEqual(QJsonObject__const_iterator* other)
	{
		return CQt.QJsonObject__const_iterator_OperatorEqual(this.nativePtr, other);
	}
	
	public bool OperatorNotEqual(QJsonObject__const_iterator* other)
	{
		return CQt.QJsonObject__const_iterator_OperatorNotEqual(this.nativePtr, other);
	}
	
	public bool OperatorLesser(QJsonObject__const_iterator* other)
	{
		return CQt.QJsonObject__const_iterator_OperatorLesser(this.nativePtr, other);
	}
	
	public bool OperatorLesserOrEqual(QJsonObject__const_iterator* other)
	{
		return CQt.QJsonObject__const_iterator_OperatorLesserOrEqual(this.nativePtr, other);
	}
	
	public bool OperatorGreater(QJsonObject__const_iterator* other)
	{
		return CQt.QJsonObject__const_iterator_OperatorGreater(this.nativePtr, other);
	}
	
	public bool OperatorGreaterOrEqual(QJsonObject__const_iterator* other)
	{
		return CQt.QJsonObject__const_iterator_OperatorGreaterOrEqual(this.nativePtr, other);
	}
	
	public QJsonObject__const_iterator* OperatorPlusPlus()
	{
		return CQt.QJsonObject__const_iterator_OperatorPlusPlus(this.nativePtr);
	}
	
	public QJsonObject__const_iterator OperatorPlusPlusWithInt(int32 param1)
	{
		return CQt.QJsonObject__const_iterator_OperatorPlusPlusWithInt(this.nativePtr, param1);
	}
	
	public QJsonObject__const_iterator* OperatorMinusMinus()
	{
		return CQt.QJsonObject__const_iterator_OperatorMinusMinus(this.nativePtr);
	}
	
	public QJsonObject__const_iterator OperatorMinusMinusWithInt(int32 param1)
	{
		return CQt.QJsonObject__const_iterator_OperatorMinusMinusWithInt(this.nativePtr, param1);
	}
	
	public QJsonObject__const_iterator OperatorPlus(int32 j)
	{
		return CQt.QJsonObject__const_iterator_OperatorPlus(this.nativePtr, j);
	}
	
	public QJsonObject__const_iterator OperatorMinus(int32 j)
	{
		return CQt.QJsonObject__const_iterator_OperatorMinus(this.nativePtr, j);
	}
	
	public QJsonObject__const_iterator* OperatorPlusAssign(int32 j)
	{
		return CQt.QJsonObject__const_iterator_OperatorPlusAssign(this.nativePtr, j);
	}
	
	public QJsonObject__const_iterator* OperatorMinusAssign(int32 j)
	{
		return CQt.QJsonObject__const_iterator_OperatorMinusAssign(this.nativePtr, j);
	}
	
	public int32 OperatorMinusWithQJsonObjectconstIterator(QJsonObject__const_iterator j)
	{
		return CQt.QJsonObject__const_iterator_OperatorMinusWithQJsonObjectconstIterator(this.nativePtr, j);
	}
	
	public bool OperatorEqualWithOther(QJsonObject__iterator* other)
	{
		return CQt.QJsonObject__const_iterator_OperatorEqualWithOther(this.nativePtr, other);
	}
	
	public bool OperatorNotEqualWithOther(QJsonObject__iterator* other)
	{
		return CQt.QJsonObject__const_iterator_OperatorNotEqualWithOther(this.nativePtr, other);
	}
	
	public bool OperatorLesserWithOther(QJsonObject__iterator* other)
	{
		return CQt.QJsonObject__const_iterator_OperatorLesserWithOther(this.nativePtr, other);
	}
	
	public bool OperatorLesserOrEqualWithOther(QJsonObject__iterator* other)
	{
		return CQt.QJsonObject__const_iterator_OperatorLesserOrEqualWithOther(this.nativePtr, other);
	}
	
	public bool OperatorGreaterWithOther(QJsonObject__iterator* other)
	{
		return CQt.QJsonObject__const_iterator_OperatorGreaterWithOther(this.nativePtr, other);
	}
	
	public bool OperatorGreaterOrEqualWithOther(QJsonObject__iterator* other)
	{
		return CQt.QJsonObject__const_iterator_OperatorGreaterOrEqualWithOther(this.nativePtr, other);
	}
	
}
extension CQt
{
	[LinkName("QJsonObject__const_iterator_new")]
	public static extern void* QJsonObject__const_iterator_new(QJsonObject__const_iterator* other);
	[LinkName("QJsonObject__const_iterator_new2")]
	public static extern void* QJsonObject__const_iterator_new2();
	[LinkName("QJsonObject__const_iterator_new3")]
	public static extern void* QJsonObject__const_iterator_new3(void* obj, int32 index);
	[LinkName("QJsonObject__const_iterator_new4")]
	public static extern void* QJsonObject__const_iterator_new4(QJsonObject__iterator* other);
	[LinkName("QJsonObject__const_iterator_new5")]
	public static extern void* QJsonObject__const_iterator_new5(QJsonObject__const_iterator* other);
	[LinkName("QJsonObject__const_iterator_OperatorAssign")]
	public static extern void QJsonObject__const_iterator_OperatorAssign(void* c_this, QJsonObject__const_iterator* other);
	[LinkName("QJsonObject__const_iterator_Key")]
	public static extern libqt_string QJsonObject__const_iterator_Key(void* c_this);
	[LinkName("QJsonObject__const_iterator_Value")]
	public static extern void QJsonObject__const_iterator_Value(void* c_this);
	[LinkName("QJsonObject__const_iterator_OperatorMultiply")]
	public static extern void QJsonObject__const_iterator_OperatorMultiply(void* c_this);
	[LinkName("QJsonObject__const_iterator_OperatorMinusGreater")]
	public static extern void* QJsonObject__const_iterator_OperatorMinusGreater(void* c_this);
	[LinkName("QJsonObject__const_iterator_OperatorSubscript")]
	public static extern void QJsonObject__const_iterator_OperatorSubscript(void* c_this, int32 j);
	[LinkName("QJsonObject__const_iterator_OperatorEqual")]
	public static extern bool QJsonObject__const_iterator_OperatorEqual(void* c_this, QJsonObject__const_iterator* other);
	[LinkName("QJsonObject__const_iterator_OperatorNotEqual")]
	public static extern bool QJsonObject__const_iterator_OperatorNotEqual(void* c_this, QJsonObject__const_iterator* other);
	[LinkName("QJsonObject__const_iterator_OperatorLesser")]
	public static extern bool QJsonObject__const_iterator_OperatorLesser(void* c_this, QJsonObject__const_iterator* other);
	[LinkName("QJsonObject__const_iterator_OperatorLesserOrEqual")]
	public static extern bool QJsonObject__const_iterator_OperatorLesserOrEqual(void* c_this, QJsonObject__const_iterator* other);
	[LinkName("QJsonObject__const_iterator_OperatorGreater")]
	public static extern bool QJsonObject__const_iterator_OperatorGreater(void* c_this, QJsonObject__const_iterator* other);
	[LinkName("QJsonObject__const_iterator_OperatorGreaterOrEqual")]
	public static extern bool QJsonObject__const_iterator_OperatorGreaterOrEqual(void* c_this, QJsonObject__const_iterator* other);
	[LinkName("QJsonObject__const_iterator_OperatorPlusPlus")]
	public static extern QJsonObject__const_iterator* QJsonObject__const_iterator_OperatorPlusPlus(void* c_this);
	[LinkName("QJsonObject__const_iterator_OperatorPlusPlusWithInt")]
	public static extern QJsonObject__const_iterator QJsonObject__const_iterator_OperatorPlusPlusWithInt(void* c_this, int32 param1);
	[LinkName("QJsonObject__const_iterator_OperatorMinusMinus")]
	public static extern QJsonObject__const_iterator* QJsonObject__const_iterator_OperatorMinusMinus(void* c_this);
	[LinkName("QJsonObject__const_iterator_OperatorMinusMinusWithInt")]
	public static extern QJsonObject__const_iterator QJsonObject__const_iterator_OperatorMinusMinusWithInt(void* c_this, int32 param1);
	[LinkName("QJsonObject__const_iterator_OperatorPlus")]
	public static extern QJsonObject__const_iterator QJsonObject__const_iterator_OperatorPlus(void* c_this, int32 j);
	[LinkName("QJsonObject__const_iterator_OperatorMinus")]
	public static extern QJsonObject__const_iterator QJsonObject__const_iterator_OperatorMinus(void* c_this, int32 j);
	[LinkName("QJsonObject__const_iterator_OperatorPlusAssign")]
	public static extern QJsonObject__const_iterator* QJsonObject__const_iterator_OperatorPlusAssign(void* c_this, int32 j);
	[LinkName("QJsonObject__const_iterator_OperatorMinusAssign")]
	public static extern QJsonObject__const_iterator* QJsonObject__const_iterator_OperatorMinusAssign(void* c_this, int32 j);
	[LinkName("QJsonObject__const_iterator_OperatorMinusWithQJsonObjectconstIterator")]
	public static extern int32 QJsonObject__const_iterator_OperatorMinusWithQJsonObjectconstIterator(void* c_this, QJsonObject__const_iterator j);
	[LinkName("QJsonObject__const_iterator_OperatorEqualWithOther")]
	public static extern bool QJsonObject__const_iterator_OperatorEqualWithOther(void* c_this, QJsonObject__iterator* other);
	[LinkName("QJsonObject__const_iterator_OperatorNotEqualWithOther")]
	public static extern bool QJsonObject__const_iterator_OperatorNotEqualWithOther(void* c_this, QJsonObject__iterator* other);
	[LinkName("QJsonObject__const_iterator_OperatorLesserWithOther")]
	public static extern bool QJsonObject__const_iterator_OperatorLesserWithOther(void* c_this, QJsonObject__iterator* other);
	[LinkName("QJsonObject__const_iterator_OperatorLesserOrEqualWithOther")]
	public static extern bool QJsonObject__const_iterator_OperatorLesserOrEqualWithOther(void* c_this, QJsonObject__iterator* other);
	[LinkName("QJsonObject__const_iterator_OperatorGreaterWithOther")]
	public static extern bool QJsonObject__const_iterator_OperatorGreaterWithOther(void* c_this, QJsonObject__iterator* other);
	[LinkName("QJsonObject__const_iterator_OperatorGreaterOrEqualWithOther")]
	public static extern bool QJsonObject__const_iterator_OperatorGreaterOrEqualWithOther(void* c_this, QJsonObject__iterator* other);
	/// Delete this object from C++ memory
	[LinkName("QJsonObject__const_iterator_Delete")]
	public static extern void QJsonObject__const_iterator_Delete(void* self);
}