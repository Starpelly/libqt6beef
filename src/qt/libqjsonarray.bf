using System;
using System.Interop;
namespace Qt;

public class QJsonArray
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QJsonArray_new();
	}
	
	public ~this()
	{
		CQt.QJsonArray_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* other)
	{
		CQt.QJsonArray_OperatorAssign(this.nativePtr, other);
	}
	
	public static void FromStringList(libqt_string[] list)
	{
		CQt.QJsonArray_FromStringList(list);
	}
	
	public int32 Size()
	{
		return CQt.QJsonArray_Size(this.nativePtr);
	}
	
	public int32 Count()
	{
		return CQt.QJsonArray_Count(this.nativePtr);
	}
	
	public bool IsEmpty()
	{
		return CQt.QJsonArray_IsEmpty(this.nativePtr);
	}
	
	public void At(int32 i)
	{
		CQt.QJsonArray_At(this.nativePtr, i);
	}
	
	public void First()
	{
		CQt.QJsonArray_First(this.nativePtr);
	}
	
	public void Last()
	{
		CQt.QJsonArray_Last(this.nativePtr);
	}
	
	public void Prepend(void* value)
	{
		CQt.QJsonArray_Prepend(this.nativePtr, value);
	}
	
	public void Append(void* value)
	{
		CQt.QJsonArray_Append(this.nativePtr, value);
	}
	
	public void RemoveAt(int32 i)
	{
		CQt.QJsonArray_RemoveAt(this.nativePtr, i);
	}
	
	public void TakeAt(int32 i)
	{
		CQt.QJsonArray_TakeAt(this.nativePtr, i);
	}
	
	public void RemoveFirst()
	{
		CQt.QJsonArray_RemoveFirst(this.nativePtr);
	}
	
	public void RemoveLast()
	{
		CQt.QJsonArray_RemoveLast(this.nativePtr);
	}
	
	public void Insert(int32 i, void* value)
	{
		CQt.QJsonArray_Insert(this.nativePtr, i, value);
	}
	
	public void Replace(int32 i, void* value)
	{
		CQt.QJsonArray_Replace(this.nativePtr, i, value);
	}
	
	public bool Contains(void* element)
	{
		return CQt.QJsonArray_Contains(this.nativePtr, element);
	}
	
	public void OperatorSubscript(int32 i)
	{
		CQt.QJsonArray_OperatorSubscript(this.nativePtr, i);
	}
	
	public void OperatorSubscriptWithQsizetype(int32 i)
	{
		CQt.QJsonArray_OperatorSubscriptWithQsizetype(this.nativePtr, i);
	}
	
	public bool OperatorEqual(void* other)
	{
		return CQt.QJsonArray_OperatorEqual(this.nativePtr, other);
	}
	
	public bool OperatorNotEqual(void* other)
	{
		return CQt.QJsonArray_OperatorNotEqual(this.nativePtr, other);
	}
	
	public void Swap(void* other)
	{
		CQt.QJsonArray_Swap(this.nativePtr, other);
	}
	
	public QJsonArray__iterator Begin()
	{
		return CQt.QJsonArray_Begin(this.nativePtr);
	}
	
	public QJsonArray__const_iterator Begin2()
	{
		return CQt.QJsonArray_Begin2(this.nativePtr);
	}
	
	public QJsonArray__const_iterator ConstBegin()
	{
		return CQt.QJsonArray_ConstBegin(this.nativePtr);
	}
	
	public QJsonArray__const_iterator Cbegin()
	{
		return CQt.QJsonArray_Cbegin(this.nativePtr);
	}
	
	public QJsonArray__iterator End()
	{
		return CQt.QJsonArray_End(this.nativePtr);
	}
	
	public QJsonArray__const_iterator End2()
	{
		return CQt.QJsonArray_End2(this.nativePtr);
	}
	
	public QJsonArray__const_iterator ConstEnd()
	{
		return CQt.QJsonArray_ConstEnd(this.nativePtr);
	}
	
	public QJsonArray__const_iterator Cend()
	{
		return CQt.QJsonArray_Cend(this.nativePtr);
	}
	
	public QJsonArray__iterator Insert2(QJsonArray__iterator before, void* value)
	{
		return CQt.QJsonArray_Insert2(this.nativePtr, before, value);
	}
	
	public QJsonArray__iterator Erase(QJsonArray__iterator it)
	{
		return CQt.QJsonArray_Erase(this.nativePtr, it);
	}
	
	public void OperatorPlus(void* v)
	{
		CQt.QJsonArray_OperatorPlus(this.nativePtr, v);
	}
	
	public void* OperatorPlusAssign(void* v)
	{
		return CQt.QJsonArray_OperatorPlusAssign(this.nativePtr, v);
	}
	
	public void* OperatorShiftLeft(void* v)
	{
		return CQt.QJsonArray_OperatorShiftLeft(this.nativePtr, v);
	}
	
	public void PushBack(void* t)
	{
		CQt.QJsonArray_PushBack(this.nativePtr, t);
	}
	
	public void PushFront(void* t)
	{
		CQt.QJsonArray_PushFront(this.nativePtr, t);
	}
	
	public void PopFront()
	{
		CQt.QJsonArray_PopFront(this.nativePtr);
	}
	
	public void PopBack()
	{
		CQt.QJsonArray_PopBack(this.nativePtr);
	}
	
	public bool Empty()
	{
		return CQt.QJsonArray_Empty(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QJsonArray_new")]
	public static extern void* QJsonArray_new();
	[LinkName("QJsonArray_new2")]
	public static extern void* QJsonArray_new2(void* other);
	[LinkName("QJsonArray_OperatorAssign")]
	public static extern void QJsonArray_OperatorAssign(void* c_this, void* other);
	[LinkName("QJsonArray_FromStringList")]
	public static extern void QJsonArray_FromStringList(libqt_string[] list);
	[LinkName("QJsonArray_Size")]
	public static extern int32 QJsonArray_Size(void* c_this);
	[LinkName("QJsonArray_Count")]
	public static extern int32 QJsonArray_Count(void* c_this);
	[LinkName("QJsonArray_IsEmpty")]
	public static extern bool QJsonArray_IsEmpty(void* c_this);
	[LinkName("QJsonArray_At")]
	public static extern void QJsonArray_At(void* c_this, int32 i);
	[LinkName("QJsonArray_First")]
	public static extern void QJsonArray_First(void* c_this);
	[LinkName("QJsonArray_Last")]
	public static extern void QJsonArray_Last(void* c_this);
	[LinkName("QJsonArray_Prepend")]
	public static extern void QJsonArray_Prepend(void* c_this, void* value);
	[LinkName("QJsonArray_Append")]
	public static extern void QJsonArray_Append(void* c_this, void* value);
	[LinkName("QJsonArray_RemoveAt")]
	public static extern void QJsonArray_RemoveAt(void* c_this, int32 i);
	[LinkName("QJsonArray_TakeAt")]
	public static extern void QJsonArray_TakeAt(void* c_this, int32 i);
	[LinkName("QJsonArray_RemoveFirst")]
	public static extern void QJsonArray_RemoveFirst(void* c_this);
	[LinkName("QJsonArray_RemoveLast")]
	public static extern void QJsonArray_RemoveLast(void* c_this);
	[LinkName("QJsonArray_Insert")]
	public static extern void QJsonArray_Insert(void* c_this, int32 i, void* value);
	[LinkName("QJsonArray_Replace")]
	public static extern void QJsonArray_Replace(void* c_this, int32 i, void* value);
	[LinkName("QJsonArray_Contains")]
	public static extern bool QJsonArray_Contains(void* c_this, void* element);
	[LinkName("QJsonArray_OperatorSubscript")]
	public static extern void QJsonArray_OperatorSubscript(void* c_this, int32 i);
	[LinkName("QJsonArray_OperatorSubscriptWithQsizetype")]
	public static extern void QJsonArray_OperatorSubscriptWithQsizetype(void* c_this, int32 i);
	[LinkName("QJsonArray_OperatorEqual")]
	public static extern bool QJsonArray_OperatorEqual(void* c_this, void* other);
	[LinkName("QJsonArray_OperatorNotEqual")]
	public static extern bool QJsonArray_OperatorNotEqual(void* c_this, void* other);
	[LinkName("QJsonArray_Swap")]
	public static extern void QJsonArray_Swap(void* c_this, void* other);
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
	public static extern QJsonArray__iterator QJsonArray_Insert2(void* c_this, QJsonArray__iterator before, void* value);
	[LinkName("QJsonArray_Erase")]
	public static extern QJsonArray__iterator QJsonArray_Erase(void* c_this, QJsonArray__iterator it);
	[LinkName("QJsonArray_OperatorPlus")]
	public static extern void QJsonArray_OperatorPlus(void* c_this, void* v);
	[LinkName("QJsonArray_OperatorPlusAssign")]
	public static extern void* QJsonArray_OperatorPlusAssign(void* c_this, void* v);
	[LinkName("QJsonArray_OperatorShiftLeft")]
	public static extern void* QJsonArray_OperatorShiftLeft(void* c_this, void* v);
	[LinkName("QJsonArray_PushBack")]
	public static extern void QJsonArray_PushBack(void* c_this, void* t);
	[LinkName("QJsonArray_PushFront")]
	public static extern void QJsonArray_PushFront(void* c_this, void* t);
	[LinkName("QJsonArray_PopFront")]
	public static extern void QJsonArray_PopFront(void* c_this);
	[LinkName("QJsonArray_PopBack")]
	public static extern void QJsonArray_PopBack(void* c_this);
	[LinkName("QJsonArray_Empty")]
	public static extern bool QJsonArray_Empty(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QJsonArray_Delete")]
	public static extern void QJsonArray_Delete(void* self);
}
public class QJsonArray__iterator
{
	protected void* nativePtr;
	
	public this(QJsonArray__iterator* other)
	{
		this.nativePtr = CQt.QJsonArray__iterator_new(other);
	}
	
	public ~this()
	{
		CQt.QJsonArray__iterator_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(QJsonArray__iterator* other)
	{
		CQt.QJsonArray__iterator_OperatorAssign(this.nativePtr, other);
	}
	
	public void OperatorMultiply()
	{
		CQt.QJsonArray__iterator_OperatorMultiply(this.nativePtr);
	}
	
	public void* OperatorMinusGreater()
	{
		return CQt.QJsonArray__iterator_OperatorMinusGreater(this.nativePtr);
	}
	
	public void* OperatorMinusGreater2()
	{
		return CQt.QJsonArray__iterator_OperatorMinusGreater2(this.nativePtr);
	}
	
	public void OperatorSubscript(int32 j)
	{
		CQt.QJsonArray__iterator_OperatorSubscript(this.nativePtr, j);
	}
	
	public bool OperatorEqual(QJsonArray__iterator* o)
	{
		return CQt.QJsonArray__iterator_OperatorEqual(this.nativePtr, o);
	}
	
	public bool OperatorNotEqual(QJsonArray__iterator* o)
	{
		return CQt.QJsonArray__iterator_OperatorNotEqual(this.nativePtr, o);
	}
	
	public bool OperatorLesser(QJsonArray__iterator* other)
	{
		return CQt.QJsonArray__iterator_OperatorLesser(this.nativePtr, other);
	}
	
	public bool OperatorLesserOrEqual(QJsonArray__iterator* other)
	{
		return CQt.QJsonArray__iterator_OperatorLesserOrEqual(this.nativePtr, other);
	}
	
	public bool OperatorGreater(QJsonArray__iterator* other)
	{
		return CQt.QJsonArray__iterator_OperatorGreater(this.nativePtr, other);
	}
	
	public bool OperatorGreaterOrEqual(QJsonArray__iterator* other)
	{
		return CQt.QJsonArray__iterator_OperatorGreaterOrEqual(this.nativePtr, other);
	}
	
	public bool OperatorEqualWithQJsonArrayconstIterator(QJsonArray__const_iterator* o)
	{
		return CQt.QJsonArray__iterator_OperatorEqualWithQJsonArrayconstIterator(this.nativePtr, o);
	}
	
	public bool OperatorNotEqualWithQJsonArrayconstIterator(QJsonArray__const_iterator* o)
	{
		return CQt.QJsonArray__iterator_OperatorNotEqualWithQJsonArrayconstIterator(this.nativePtr, o);
	}
	
	public bool OperatorLesserWithOther(QJsonArray__const_iterator* other)
	{
		return CQt.QJsonArray__iterator_OperatorLesserWithOther(this.nativePtr, other);
	}
	
	public bool OperatorLesserOrEqualWithOther(QJsonArray__const_iterator* other)
	{
		return CQt.QJsonArray__iterator_OperatorLesserOrEqualWithOther(this.nativePtr, other);
	}
	
	public bool OperatorGreaterWithOther(QJsonArray__const_iterator* other)
	{
		return CQt.QJsonArray__iterator_OperatorGreaterWithOther(this.nativePtr, other);
	}
	
	public bool OperatorGreaterOrEqualWithOther(QJsonArray__const_iterator* other)
	{
		return CQt.QJsonArray__iterator_OperatorGreaterOrEqualWithOther(this.nativePtr, other);
	}
	
	public QJsonArray__iterator* OperatorPlusPlus()
	{
		return CQt.QJsonArray__iterator_OperatorPlusPlus(this.nativePtr);
	}
	
	public QJsonArray__iterator OperatorPlusPlusWithInt(int32 param1)
	{
		return CQt.QJsonArray__iterator_OperatorPlusPlusWithInt(this.nativePtr, param1);
	}
	
	public QJsonArray__iterator* OperatorMinusMinus()
	{
		return CQt.QJsonArray__iterator_OperatorMinusMinus(this.nativePtr);
	}
	
	public QJsonArray__iterator OperatorMinusMinusWithInt(int32 param1)
	{
		return CQt.QJsonArray__iterator_OperatorMinusMinusWithInt(this.nativePtr, param1);
	}
	
	public QJsonArray__iterator* OperatorPlusAssign(int32 j)
	{
		return CQt.QJsonArray__iterator_OperatorPlusAssign(this.nativePtr, j);
	}
	
	public QJsonArray__iterator* OperatorMinusAssign(int32 j)
	{
		return CQt.QJsonArray__iterator_OperatorMinusAssign(this.nativePtr, j);
	}
	
	public QJsonArray__iterator OperatorPlus(int32 j)
	{
		return CQt.QJsonArray__iterator_OperatorPlus(this.nativePtr, j);
	}
	
	public QJsonArray__iterator OperatorMinus(int32 j)
	{
		return CQt.QJsonArray__iterator_OperatorMinus(this.nativePtr, j);
	}
	
	public int32 OperatorMinusWithQJsonArrayiterator(QJsonArray__iterator j)
	{
		return CQt.QJsonArray__iterator_OperatorMinusWithQJsonArrayiterator(this.nativePtr, j);
	}
	
}
extension CQt
{
	[LinkName("QJsonArray__iterator_new")]
	public static extern void* QJsonArray__iterator_new(QJsonArray__iterator* other);
	[LinkName("QJsonArray__iterator_new2")]
	public static extern void* QJsonArray__iterator_new2();
	[LinkName("QJsonArray__iterator_new3")]
	public static extern void* QJsonArray__iterator_new3(void* array, int32 index);
	[LinkName("QJsonArray__iterator_new4")]
	public static extern void* QJsonArray__iterator_new4(QJsonArray__iterator* other);
	[LinkName("QJsonArray__iterator_OperatorAssign")]
	public static extern void QJsonArray__iterator_OperatorAssign(void* c_this, QJsonArray__iterator* other);
	[LinkName("QJsonArray__iterator_OperatorMultiply")]
	public static extern void QJsonArray__iterator_OperatorMultiply(void* c_this);
	[LinkName("QJsonArray__iterator_OperatorMinusGreater")]
	public static extern void* QJsonArray__iterator_OperatorMinusGreater(void* c_this);
	[LinkName("QJsonArray__iterator_OperatorMinusGreater2")]
	public static extern void* QJsonArray__iterator_OperatorMinusGreater2(void* c_this);
	[LinkName("QJsonArray__iterator_OperatorSubscript")]
	public static extern void QJsonArray__iterator_OperatorSubscript(void* c_this, int32 j);
	[LinkName("QJsonArray__iterator_OperatorEqual")]
	public static extern bool QJsonArray__iterator_OperatorEqual(void* c_this, QJsonArray__iterator* o);
	[LinkName("QJsonArray__iterator_OperatorNotEqual")]
	public static extern bool QJsonArray__iterator_OperatorNotEqual(void* c_this, QJsonArray__iterator* o);
	[LinkName("QJsonArray__iterator_OperatorLesser")]
	public static extern bool QJsonArray__iterator_OperatorLesser(void* c_this, QJsonArray__iterator* other);
	[LinkName("QJsonArray__iterator_OperatorLesserOrEqual")]
	public static extern bool QJsonArray__iterator_OperatorLesserOrEqual(void* c_this, QJsonArray__iterator* other);
	[LinkName("QJsonArray__iterator_OperatorGreater")]
	public static extern bool QJsonArray__iterator_OperatorGreater(void* c_this, QJsonArray__iterator* other);
	[LinkName("QJsonArray__iterator_OperatorGreaterOrEqual")]
	public static extern bool QJsonArray__iterator_OperatorGreaterOrEqual(void* c_this, QJsonArray__iterator* other);
	[LinkName("QJsonArray__iterator_OperatorEqualWithQJsonArrayconstIterator")]
	public static extern bool QJsonArray__iterator_OperatorEqualWithQJsonArrayconstIterator(void* c_this, QJsonArray__const_iterator* o);
	[LinkName("QJsonArray__iterator_OperatorNotEqualWithQJsonArrayconstIterator")]
	public static extern bool QJsonArray__iterator_OperatorNotEqualWithQJsonArrayconstIterator(void* c_this, QJsonArray__const_iterator* o);
	[LinkName("QJsonArray__iterator_OperatorLesserWithOther")]
	public static extern bool QJsonArray__iterator_OperatorLesserWithOther(void* c_this, QJsonArray__const_iterator* other);
	[LinkName("QJsonArray__iterator_OperatorLesserOrEqualWithOther")]
	public static extern bool QJsonArray__iterator_OperatorLesserOrEqualWithOther(void* c_this, QJsonArray__const_iterator* other);
	[LinkName("QJsonArray__iterator_OperatorGreaterWithOther")]
	public static extern bool QJsonArray__iterator_OperatorGreaterWithOther(void* c_this, QJsonArray__const_iterator* other);
	[LinkName("QJsonArray__iterator_OperatorGreaterOrEqualWithOther")]
	public static extern bool QJsonArray__iterator_OperatorGreaterOrEqualWithOther(void* c_this, QJsonArray__const_iterator* other);
	[LinkName("QJsonArray__iterator_OperatorPlusPlus")]
	public static extern QJsonArray__iterator* QJsonArray__iterator_OperatorPlusPlus(void* c_this);
	[LinkName("QJsonArray__iterator_OperatorPlusPlusWithInt")]
	public static extern QJsonArray__iterator QJsonArray__iterator_OperatorPlusPlusWithInt(void* c_this, int32 param1);
	[LinkName("QJsonArray__iterator_OperatorMinusMinus")]
	public static extern QJsonArray__iterator* QJsonArray__iterator_OperatorMinusMinus(void* c_this);
	[LinkName("QJsonArray__iterator_OperatorMinusMinusWithInt")]
	public static extern QJsonArray__iterator QJsonArray__iterator_OperatorMinusMinusWithInt(void* c_this, int32 param1);
	[LinkName("QJsonArray__iterator_OperatorPlusAssign")]
	public static extern QJsonArray__iterator* QJsonArray__iterator_OperatorPlusAssign(void* c_this, int32 j);
	[LinkName("QJsonArray__iterator_OperatorMinusAssign")]
	public static extern QJsonArray__iterator* QJsonArray__iterator_OperatorMinusAssign(void* c_this, int32 j);
	[LinkName("QJsonArray__iterator_OperatorPlus")]
	public static extern QJsonArray__iterator QJsonArray__iterator_OperatorPlus(void* c_this, int32 j);
	[LinkName("QJsonArray__iterator_OperatorMinus")]
	public static extern QJsonArray__iterator QJsonArray__iterator_OperatorMinus(void* c_this, int32 j);
	[LinkName("QJsonArray__iterator_OperatorMinusWithQJsonArrayiterator")]
	public static extern int32 QJsonArray__iterator_OperatorMinusWithQJsonArrayiterator(void* c_this, QJsonArray__iterator j);
	/// Delete this object from C++ memory
	[LinkName("QJsonArray__iterator_Delete")]
	public static extern void QJsonArray__iterator_Delete(void* self);
}
public class QJsonArray__const_iterator
{
	protected void* nativePtr;
	
	public this(QJsonArray__const_iterator* other)
	{
		this.nativePtr = CQt.QJsonArray__const_iterator_new(other);
	}
	
	public ~this()
	{
		CQt.QJsonArray__const_iterator_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(QJsonArray__const_iterator* other)
	{
		CQt.QJsonArray__const_iterator_OperatorAssign(this.nativePtr, other);
	}
	
	public void OperatorMultiply()
	{
		CQt.QJsonArray__const_iterator_OperatorMultiply(this.nativePtr);
	}
	
	public void* OperatorMinusGreater()
	{
		return CQt.QJsonArray__const_iterator_OperatorMinusGreater(this.nativePtr);
	}
	
	public void OperatorSubscript(int32 j)
	{
		CQt.QJsonArray__const_iterator_OperatorSubscript(this.nativePtr, j);
	}
	
	public bool OperatorEqual(QJsonArray__const_iterator* o)
	{
		return CQt.QJsonArray__const_iterator_OperatorEqual(this.nativePtr, o);
	}
	
	public bool OperatorNotEqual(QJsonArray__const_iterator* o)
	{
		return CQt.QJsonArray__const_iterator_OperatorNotEqual(this.nativePtr, o);
	}
	
	public bool OperatorLesser(QJsonArray__const_iterator* other)
	{
		return CQt.QJsonArray__const_iterator_OperatorLesser(this.nativePtr, other);
	}
	
	public bool OperatorLesserOrEqual(QJsonArray__const_iterator* other)
	{
		return CQt.QJsonArray__const_iterator_OperatorLesserOrEqual(this.nativePtr, other);
	}
	
	public bool OperatorGreater(QJsonArray__const_iterator* other)
	{
		return CQt.QJsonArray__const_iterator_OperatorGreater(this.nativePtr, other);
	}
	
	public bool OperatorGreaterOrEqual(QJsonArray__const_iterator* other)
	{
		return CQt.QJsonArray__const_iterator_OperatorGreaterOrEqual(this.nativePtr, other);
	}
	
	public QJsonArray__const_iterator* OperatorPlusPlus()
	{
		return CQt.QJsonArray__const_iterator_OperatorPlusPlus(this.nativePtr);
	}
	
	public QJsonArray__const_iterator OperatorPlusPlusWithInt(int32 param1)
	{
		return CQt.QJsonArray__const_iterator_OperatorPlusPlusWithInt(this.nativePtr, param1);
	}
	
	public QJsonArray__const_iterator* OperatorMinusMinus()
	{
		return CQt.QJsonArray__const_iterator_OperatorMinusMinus(this.nativePtr);
	}
	
	public QJsonArray__const_iterator OperatorMinusMinusWithInt(int32 param1)
	{
		return CQt.QJsonArray__const_iterator_OperatorMinusMinusWithInt(this.nativePtr, param1);
	}
	
	public QJsonArray__const_iterator* OperatorPlusAssign(int32 j)
	{
		return CQt.QJsonArray__const_iterator_OperatorPlusAssign(this.nativePtr, j);
	}
	
	public QJsonArray__const_iterator* OperatorMinusAssign(int32 j)
	{
		return CQt.QJsonArray__const_iterator_OperatorMinusAssign(this.nativePtr, j);
	}
	
	public QJsonArray__const_iterator OperatorPlus(int32 j)
	{
		return CQt.QJsonArray__const_iterator_OperatorPlus(this.nativePtr, j);
	}
	
	public QJsonArray__const_iterator OperatorMinus(int32 j)
	{
		return CQt.QJsonArray__const_iterator_OperatorMinus(this.nativePtr, j);
	}
	
	public int32 OperatorMinusWithQJsonArrayconstIterator(QJsonArray__const_iterator j)
	{
		return CQt.QJsonArray__const_iterator_OperatorMinusWithQJsonArrayconstIterator(this.nativePtr, j);
	}
	
}
extension CQt
{
	[LinkName("QJsonArray__const_iterator_new")]
	public static extern void* QJsonArray__const_iterator_new(QJsonArray__const_iterator* other);
	[LinkName("QJsonArray__const_iterator_new2")]
	public static extern void* QJsonArray__const_iterator_new2();
	[LinkName("QJsonArray__const_iterator_new3")]
	public static extern void* QJsonArray__const_iterator_new3(void* array, int32 index);
	[LinkName("QJsonArray__const_iterator_new4")]
	public static extern void* QJsonArray__const_iterator_new4(QJsonArray__iterator* o);
	[LinkName("QJsonArray__const_iterator_new5")]
	public static extern void* QJsonArray__const_iterator_new5(QJsonArray__const_iterator* other);
	[LinkName("QJsonArray__const_iterator_OperatorAssign")]
	public static extern void QJsonArray__const_iterator_OperatorAssign(void* c_this, QJsonArray__const_iterator* other);
	[LinkName("QJsonArray__const_iterator_OperatorMultiply")]
	public static extern void QJsonArray__const_iterator_OperatorMultiply(void* c_this);
	[LinkName("QJsonArray__const_iterator_OperatorMinusGreater")]
	public static extern void* QJsonArray__const_iterator_OperatorMinusGreater(void* c_this);
	[LinkName("QJsonArray__const_iterator_OperatorSubscript")]
	public static extern void QJsonArray__const_iterator_OperatorSubscript(void* c_this, int32 j);
	[LinkName("QJsonArray__const_iterator_OperatorEqual")]
	public static extern bool QJsonArray__const_iterator_OperatorEqual(void* c_this, QJsonArray__const_iterator* o);
	[LinkName("QJsonArray__const_iterator_OperatorNotEqual")]
	public static extern bool QJsonArray__const_iterator_OperatorNotEqual(void* c_this, QJsonArray__const_iterator* o);
	[LinkName("QJsonArray__const_iterator_OperatorLesser")]
	public static extern bool QJsonArray__const_iterator_OperatorLesser(void* c_this, QJsonArray__const_iterator* other);
	[LinkName("QJsonArray__const_iterator_OperatorLesserOrEqual")]
	public static extern bool QJsonArray__const_iterator_OperatorLesserOrEqual(void* c_this, QJsonArray__const_iterator* other);
	[LinkName("QJsonArray__const_iterator_OperatorGreater")]
	public static extern bool QJsonArray__const_iterator_OperatorGreater(void* c_this, QJsonArray__const_iterator* other);
	[LinkName("QJsonArray__const_iterator_OperatorGreaterOrEqual")]
	public static extern bool QJsonArray__const_iterator_OperatorGreaterOrEqual(void* c_this, QJsonArray__const_iterator* other);
	[LinkName("QJsonArray__const_iterator_OperatorPlusPlus")]
	public static extern QJsonArray__const_iterator* QJsonArray__const_iterator_OperatorPlusPlus(void* c_this);
	[LinkName("QJsonArray__const_iterator_OperatorPlusPlusWithInt")]
	public static extern QJsonArray__const_iterator QJsonArray__const_iterator_OperatorPlusPlusWithInt(void* c_this, int32 param1);
	[LinkName("QJsonArray__const_iterator_OperatorMinusMinus")]
	public static extern QJsonArray__const_iterator* QJsonArray__const_iterator_OperatorMinusMinus(void* c_this);
	[LinkName("QJsonArray__const_iterator_OperatorMinusMinusWithInt")]
	public static extern QJsonArray__const_iterator QJsonArray__const_iterator_OperatorMinusMinusWithInt(void* c_this, int32 param1);
	[LinkName("QJsonArray__const_iterator_OperatorPlusAssign")]
	public static extern QJsonArray__const_iterator* QJsonArray__const_iterator_OperatorPlusAssign(void* c_this, int32 j);
	[LinkName("QJsonArray__const_iterator_OperatorMinusAssign")]
	public static extern QJsonArray__const_iterator* QJsonArray__const_iterator_OperatorMinusAssign(void* c_this, int32 j);
	[LinkName("QJsonArray__const_iterator_OperatorPlus")]
	public static extern QJsonArray__const_iterator QJsonArray__const_iterator_OperatorPlus(void* c_this, int32 j);
	[LinkName("QJsonArray__const_iterator_OperatorMinus")]
	public static extern QJsonArray__const_iterator QJsonArray__const_iterator_OperatorMinus(void* c_this, int32 j);
	[LinkName("QJsonArray__const_iterator_OperatorMinusWithQJsonArrayconstIterator")]
	public static extern int32 QJsonArray__const_iterator_OperatorMinusWithQJsonArrayconstIterator(void* c_this, QJsonArray__const_iterator j);
	/// Delete this object from C++ memory
	[LinkName("QJsonArray__const_iterator_Delete")]
	public static extern void QJsonArray__const_iterator_Delete(void* self);
}