using System;
using System.Interop;
namespace Qt;

public class QCborArray
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QCborArray_new();
	}
	
	public ~this()
	{
		CQt.QCborArray_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* other)
	{
		CQt.QCborArray_OperatorAssign(this.nativePtr, other);
	}
	
	public void Swap(void* other)
	{
		CQt.QCborArray_Swap(this.nativePtr, other);
	}
	
	public void ToCborValue()
	{
		CQt.QCborArray_ToCborValue(this.nativePtr);
	}
	
	public int32 Size()
	{
		return CQt.QCborArray_Size(this.nativePtr);
	}
	
	public bool IsEmpty()
	{
		return CQt.QCborArray_IsEmpty(this.nativePtr);
	}
	
	public void Clear()
	{
		CQt.QCborArray_Clear(this.nativePtr);
	}
	
	public void At(int32 i)
	{
		CQt.QCborArray_At(this.nativePtr, i);
	}
	
	public void First()
	{
		CQt.QCborArray_First(this.nativePtr);
	}
	
	public void Last()
	{
		CQt.QCborArray_Last(this.nativePtr);
	}
	
	public void OperatorSubscript(int32 i)
	{
		CQt.QCborArray_OperatorSubscript(this.nativePtr, i);
	}
	
	public void First2()
	{
		CQt.QCborArray_First2(this.nativePtr);
	}
	
	public void Last2()
	{
		CQt.QCborArray_Last2(this.nativePtr);
	}
	
	public void OperatorSubscriptWithQsizetype(int32 i)
	{
		CQt.QCborArray_OperatorSubscriptWithQsizetype(this.nativePtr, i);
	}
	
	public void Insert(int32 i, void* value)
	{
		CQt.QCborArray_Insert(this.nativePtr, i, value);
	}
	
	public void Prepend(void* value)
	{
		CQt.QCborArray_Prepend(this.nativePtr, value);
	}
	
	public void Append(void* value)
	{
		CQt.QCborArray_Append(this.nativePtr, value);
	}
	
	public void Extract(QCborArray__ConstIterator it)
	{
		CQt.QCborArray_Extract(this.nativePtr, it);
	}
	
	public void ExtractWithIt(QCborArray__Iterator it)
	{
		CQt.QCborArray_ExtractWithIt(this.nativePtr, it);
	}
	
	public void RemoveAt(int32 i)
	{
		CQt.QCborArray_RemoveAt(this.nativePtr, i);
	}
	
	public void TakeAt(int32 i)
	{
		CQt.QCborArray_TakeAt(this.nativePtr, i);
	}
	
	public void RemoveFirst()
	{
		CQt.QCborArray_RemoveFirst(this.nativePtr);
	}
	
	public void RemoveLast()
	{
		CQt.QCborArray_RemoveLast(this.nativePtr);
	}
	
	public void TakeFirst()
	{
		CQt.QCborArray_TakeFirst(this.nativePtr);
	}
	
	public void TakeLast()
	{
		CQt.QCborArray_TakeLast(this.nativePtr);
	}
	
	public bool Contains(void* value)
	{
		return CQt.QCborArray_Contains(this.nativePtr, value);
	}
	
	public int32 Compare(void* other)
	{
		return CQt.QCborArray_Compare(this.nativePtr, other);
	}
	
	public bool OperatorEqual(void* other)
	{
		return CQt.QCborArray_OperatorEqual(this.nativePtr, other);
	}
	
	public bool OperatorNotEqual(void* other)
	{
		return CQt.QCborArray_OperatorNotEqual(this.nativePtr, other);
	}
	
	public bool OperatorLesser(void* other)
	{
		return CQt.QCborArray_OperatorLesser(this.nativePtr, other);
	}
	
	public QCborArray__Iterator Begin()
	{
		return CQt.QCborArray_Begin(this.nativePtr);
	}
	
	public QCborArray__ConstIterator ConstBegin()
	{
		return CQt.QCborArray_ConstBegin(this.nativePtr);
	}
	
	public QCborArray__ConstIterator Begin2()
	{
		return CQt.QCborArray_Begin2(this.nativePtr);
	}
	
	public QCborArray__ConstIterator Cbegin()
	{
		return CQt.QCborArray_Cbegin(this.nativePtr);
	}
	
	public QCborArray__Iterator End()
	{
		return CQt.QCborArray_End(this.nativePtr);
	}
	
	public QCborArray__ConstIterator ConstEnd()
	{
		return CQt.QCborArray_ConstEnd(this.nativePtr);
	}
	
	public QCborArray__ConstIterator End2()
	{
		return CQt.QCborArray_End2(this.nativePtr);
	}
	
	public QCborArray__ConstIterator Cend()
	{
		return CQt.QCborArray_Cend(this.nativePtr);
	}
	
	public QCborArray__Iterator Insert2(QCborArray__Iterator before, void* value)
	{
		return CQt.QCborArray_Insert2(this.nativePtr, before, value);
	}
	
	public QCborArray__Iterator Insert3(QCborArray__ConstIterator before, void* value)
	{
		return CQt.QCborArray_Insert3(this.nativePtr, before, value);
	}
	
	public QCborArray__Iterator Erase(QCborArray__Iterator it)
	{
		return CQt.QCborArray_Erase(this.nativePtr, it);
	}
	
	public QCborArray__Iterator EraseWithIt(QCborArray__ConstIterator it)
	{
		return CQt.QCborArray_EraseWithIt(this.nativePtr, it);
	}
	
	public void PushBack(void* t)
	{
		CQt.QCborArray_PushBack(this.nativePtr, t);
	}
	
	public void PushFront(void* t)
	{
		CQt.QCborArray_PushFront(this.nativePtr, t);
	}
	
	public void PopFront()
	{
		CQt.QCborArray_PopFront(this.nativePtr);
	}
	
	public void PopBack()
	{
		CQt.QCborArray_PopBack(this.nativePtr);
	}
	
	public bool Empty()
	{
		return CQt.QCborArray_Empty(this.nativePtr);
	}
	
	public void OperatorPlus(void* v)
	{
		CQt.QCborArray_OperatorPlus(this.nativePtr, v);
	}
	
	public void* OperatorPlusAssign(void* v)
	{
		return CQt.QCborArray_OperatorPlusAssign(this.nativePtr, v);
	}
	
	public void* OperatorShiftLeft(void* v)
	{
		return CQt.QCborArray_OperatorShiftLeft(this.nativePtr, v);
	}
	
	public static void FromStringList(libqt_string[] list)
	{
		CQt.QCborArray_FromStringList(list);
	}
	
	public static void FromJsonArray(void* array)
	{
		CQt.QCborArray_FromJsonArray(array);
	}
	
	public void ToJsonArray()
	{
		CQt.QCborArray_ToJsonArray(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QCborArray_new")]
	public static extern void* QCborArray_new();
	[LinkName("QCborArray_new2")]
	public static extern void* QCborArray_new2(void* other);
	[LinkName("QCborArray_OperatorAssign")]
	public static extern void QCborArray_OperatorAssign(void* c_this, void* other);
	[LinkName("QCborArray_Swap")]
	public static extern void QCborArray_Swap(void* c_this, void* other);
	[LinkName("QCborArray_ToCborValue")]
	public static extern void QCborArray_ToCborValue(void* c_this);
	[LinkName("QCborArray_Size")]
	public static extern int32 QCborArray_Size(void* c_this);
	[LinkName("QCborArray_IsEmpty")]
	public static extern bool QCborArray_IsEmpty(void* c_this);
	[LinkName("QCborArray_Clear")]
	public static extern void QCborArray_Clear(void* c_this);
	[LinkName("QCborArray_At")]
	public static extern void QCborArray_At(void* c_this, int32 i);
	[LinkName("QCborArray_First")]
	public static extern void QCborArray_First(void* c_this);
	[LinkName("QCborArray_Last")]
	public static extern void QCborArray_Last(void* c_this);
	[LinkName("QCborArray_OperatorSubscript")]
	public static extern void QCborArray_OperatorSubscript(void* c_this, int32 i);
	[LinkName("QCborArray_First2")]
	public static extern void QCborArray_First2(void* c_this);
	[LinkName("QCborArray_Last2")]
	public static extern void QCborArray_Last2(void* c_this);
	[LinkName("QCborArray_OperatorSubscriptWithQsizetype")]
	public static extern void QCborArray_OperatorSubscriptWithQsizetype(void* c_this, int32 i);
	[LinkName("QCborArray_Insert")]
	public static extern void QCborArray_Insert(void* c_this, int32 i, void* value);
	[LinkName("QCborArray_Prepend")]
	public static extern void QCborArray_Prepend(void* c_this, void* value);
	[LinkName("QCborArray_Append")]
	public static extern void QCborArray_Append(void* c_this, void* value);
	[LinkName("QCborArray_Extract")]
	public static extern void QCborArray_Extract(void* c_this, QCborArray__ConstIterator it);
	[LinkName("QCborArray_ExtractWithIt")]
	public static extern void QCborArray_ExtractWithIt(void* c_this, QCborArray__Iterator it);
	[LinkName("QCborArray_RemoveAt")]
	public static extern void QCborArray_RemoveAt(void* c_this, int32 i);
	[LinkName("QCborArray_TakeAt")]
	public static extern void QCborArray_TakeAt(void* c_this, int32 i);
	[LinkName("QCborArray_RemoveFirst")]
	public static extern void QCborArray_RemoveFirst(void* c_this);
	[LinkName("QCborArray_RemoveLast")]
	public static extern void QCborArray_RemoveLast(void* c_this);
	[LinkName("QCborArray_TakeFirst")]
	public static extern void QCborArray_TakeFirst(void* c_this);
	[LinkName("QCborArray_TakeLast")]
	public static extern void QCborArray_TakeLast(void* c_this);
	[LinkName("QCborArray_Contains")]
	public static extern bool QCborArray_Contains(void* c_this, void* value);
	[LinkName("QCborArray_Compare")]
	public static extern int32 QCborArray_Compare(void* c_this, void* other);
	[LinkName("QCborArray_OperatorEqual")]
	public static extern bool QCborArray_OperatorEqual(void* c_this, void* other);
	[LinkName("QCborArray_OperatorNotEqual")]
	public static extern bool QCborArray_OperatorNotEqual(void* c_this, void* other);
	[LinkName("QCborArray_OperatorLesser")]
	public static extern bool QCborArray_OperatorLesser(void* c_this, void* other);
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
	public static extern QCborArray__Iterator QCborArray_Insert2(void* c_this, QCborArray__Iterator before, void* value);
	[LinkName("QCborArray_Insert3")]
	public static extern QCborArray__Iterator QCborArray_Insert3(void* c_this, QCborArray__ConstIterator before, void* value);
	[LinkName("QCborArray_Erase")]
	public static extern QCborArray__Iterator QCborArray_Erase(void* c_this, QCborArray__Iterator it);
	[LinkName("QCborArray_EraseWithIt")]
	public static extern QCborArray__Iterator QCborArray_EraseWithIt(void* c_this, QCborArray__ConstIterator it);
	[LinkName("QCborArray_PushBack")]
	public static extern void QCborArray_PushBack(void* c_this, void* t);
	[LinkName("QCborArray_PushFront")]
	public static extern void QCborArray_PushFront(void* c_this, void* t);
	[LinkName("QCborArray_PopFront")]
	public static extern void QCborArray_PopFront(void* c_this);
	[LinkName("QCborArray_PopBack")]
	public static extern void QCborArray_PopBack(void* c_this);
	[LinkName("QCborArray_Empty")]
	public static extern bool QCborArray_Empty(void* c_this);
	[LinkName("QCborArray_OperatorPlus")]
	public static extern void QCborArray_OperatorPlus(void* c_this, void* v);
	[LinkName("QCborArray_OperatorPlusAssign")]
	public static extern void* QCborArray_OperatorPlusAssign(void* c_this, void* v);
	[LinkName("QCborArray_OperatorShiftLeft")]
	public static extern void* QCborArray_OperatorShiftLeft(void* c_this, void* v);
	[LinkName("QCborArray_FromStringList")]
	public static extern void QCborArray_FromStringList(libqt_string[] list);
	[LinkName("QCborArray_FromJsonArray")]
	public static extern void QCborArray_FromJsonArray(void* array);
	[LinkName("QCborArray_ToJsonArray")]
	public static extern void QCborArray_ToJsonArray(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QCborArray_Delete")]
	public static extern void QCborArray_Delete(void* self);
}
public class QCborArray__Iterator
{
	protected void* nativePtr;
	
	public this(QCborArray__Iterator* other)
	{
		this.nativePtr = CQt.QCborArray__Iterator_new(other);
	}
	
	public ~this()
	{
		CQt.QCborArray__Iterator_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(QCborArray__Iterator* other)
	{
		CQt.QCborArray__Iterator_OperatorAssign(this.nativePtr, other);
	}
	
	public void OperatorMultiply()
	{
		CQt.QCborArray__Iterator_OperatorMultiply(this.nativePtr);
	}
	
	public void* OperatorMinusGreater()
	{
		return CQt.QCborArray__Iterator_OperatorMinusGreater(this.nativePtr);
	}
	
	public void* OperatorMinusGreater2()
	{
		return CQt.QCborArray__Iterator_OperatorMinusGreater2(this.nativePtr);
	}
	
	public void OperatorSubscript(int32 j)
	{
		CQt.QCborArray__Iterator_OperatorSubscript(this.nativePtr, j);
	}
	
	public bool OperatorEqual(QCborArray__Iterator* o)
	{
		return CQt.QCborArray__Iterator_OperatorEqual(this.nativePtr, o);
	}
	
	public bool OperatorNotEqual(QCborArray__Iterator* o)
	{
		return CQt.QCborArray__Iterator_OperatorNotEqual(this.nativePtr, o);
	}
	
	public bool OperatorLesser(QCborArray__Iterator* other)
	{
		return CQt.QCborArray__Iterator_OperatorLesser(this.nativePtr, other);
	}
	
	public bool OperatorLesserOrEqual(QCborArray__Iterator* other)
	{
		return CQt.QCborArray__Iterator_OperatorLesserOrEqual(this.nativePtr, other);
	}
	
	public bool OperatorGreater(QCborArray__Iterator* other)
	{
		return CQt.QCborArray__Iterator_OperatorGreater(this.nativePtr, other);
	}
	
	public bool OperatorGreaterOrEqual(QCborArray__Iterator* other)
	{
		return CQt.QCborArray__Iterator_OperatorGreaterOrEqual(this.nativePtr, other);
	}
	
	public bool OperatorEqualWithQCborArrayConstIterator(QCborArray__ConstIterator* o)
	{
		return CQt.QCborArray__Iterator_OperatorEqualWithQCborArrayConstIterator(this.nativePtr, o);
	}
	
	public bool OperatorNotEqualWithQCborArrayConstIterator(QCborArray__ConstIterator* o)
	{
		return CQt.QCborArray__Iterator_OperatorNotEqualWithQCborArrayConstIterator(this.nativePtr, o);
	}
	
	public bool OperatorLesserWithOther(QCborArray__ConstIterator* other)
	{
		return CQt.QCborArray__Iterator_OperatorLesserWithOther(this.nativePtr, other);
	}
	
	public bool OperatorLesserOrEqualWithOther(QCborArray__ConstIterator* other)
	{
		return CQt.QCborArray__Iterator_OperatorLesserOrEqualWithOther(this.nativePtr, other);
	}
	
	public bool OperatorGreaterWithOther(QCborArray__ConstIterator* other)
	{
		return CQt.QCborArray__Iterator_OperatorGreaterWithOther(this.nativePtr, other);
	}
	
	public bool OperatorGreaterOrEqualWithOther(QCborArray__ConstIterator* other)
	{
		return CQt.QCborArray__Iterator_OperatorGreaterOrEqualWithOther(this.nativePtr, other);
	}
	
	public QCborArray__Iterator* OperatorPlusPlus()
	{
		return CQt.QCborArray__Iterator_OperatorPlusPlus(this.nativePtr);
	}
	
	public QCborArray__Iterator OperatorPlusPlusWithInt(int32 param1)
	{
		return CQt.QCborArray__Iterator_OperatorPlusPlusWithInt(this.nativePtr, param1);
	}
	
	public QCborArray__Iterator* OperatorMinusMinus()
	{
		return CQt.QCborArray__Iterator_OperatorMinusMinus(this.nativePtr);
	}
	
	public QCborArray__Iterator OperatorMinusMinusWithInt(int32 param1)
	{
		return CQt.QCborArray__Iterator_OperatorMinusMinusWithInt(this.nativePtr, param1);
	}
	
	public QCborArray__Iterator* OperatorPlusAssign(int32 j)
	{
		return CQt.QCborArray__Iterator_OperatorPlusAssign(this.nativePtr, j);
	}
	
	public QCborArray__Iterator* OperatorMinusAssign(int32 j)
	{
		return CQt.QCborArray__Iterator_OperatorMinusAssign(this.nativePtr, j);
	}
	
	public QCborArray__Iterator OperatorPlus(int32 j)
	{
		return CQt.QCborArray__Iterator_OperatorPlus(this.nativePtr, j);
	}
	
	public QCborArray__Iterator OperatorMinus(int32 j)
	{
		return CQt.QCborArray__Iterator_OperatorMinus(this.nativePtr, j);
	}
	
	public int32 OperatorMinusWithQCborArrayIterator(QCborArray__Iterator j)
	{
		return CQt.QCborArray__Iterator_OperatorMinusWithQCborArrayIterator(this.nativePtr, j);
	}
	
}
extension CQt
{
	[LinkName("QCborArray__Iterator_new")]
	public static extern void* QCborArray__Iterator_new(QCborArray__Iterator* other);
	[LinkName("QCborArray__Iterator_new2")]
	public static extern void* QCborArray__Iterator_new2();
	[LinkName("QCborArray__Iterator_new3")]
	public static extern void* QCborArray__Iterator_new3(QCborArray__Iterator* param1);
	[LinkName("QCborArray__Iterator_OperatorAssign")]
	public static extern void QCborArray__Iterator_OperatorAssign(void* c_this, QCborArray__Iterator* other);
	[LinkName("QCborArray__Iterator_OperatorMultiply")]
	public static extern void QCborArray__Iterator_OperatorMultiply(void* c_this);
	[LinkName("QCborArray__Iterator_OperatorMinusGreater")]
	public static extern void* QCborArray__Iterator_OperatorMinusGreater(void* c_this);
	[LinkName("QCborArray__Iterator_OperatorMinusGreater2")]
	public static extern void* QCborArray__Iterator_OperatorMinusGreater2(void* c_this);
	[LinkName("QCborArray__Iterator_OperatorSubscript")]
	public static extern void QCborArray__Iterator_OperatorSubscript(void* c_this, int32 j);
	[LinkName("QCborArray__Iterator_OperatorEqual")]
	public static extern bool QCborArray__Iterator_OperatorEqual(void* c_this, QCborArray__Iterator* o);
	[LinkName("QCborArray__Iterator_OperatorNotEqual")]
	public static extern bool QCborArray__Iterator_OperatorNotEqual(void* c_this, QCborArray__Iterator* o);
	[LinkName("QCborArray__Iterator_OperatorLesser")]
	public static extern bool QCborArray__Iterator_OperatorLesser(void* c_this, QCborArray__Iterator* other);
	[LinkName("QCborArray__Iterator_OperatorLesserOrEqual")]
	public static extern bool QCborArray__Iterator_OperatorLesserOrEqual(void* c_this, QCborArray__Iterator* other);
	[LinkName("QCborArray__Iterator_OperatorGreater")]
	public static extern bool QCborArray__Iterator_OperatorGreater(void* c_this, QCborArray__Iterator* other);
	[LinkName("QCborArray__Iterator_OperatorGreaterOrEqual")]
	public static extern bool QCborArray__Iterator_OperatorGreaterOrEqual(void* c_this, QCborArray__Iterator* other);
	[LinkName("QCborArray__Iterator_OperatorEqualWithQCborArrayConstIterator")]
	public static extern bool QCborArray__Iterator_OperatorEqualWithQCborArrayConstIterator(void* c_this, QCborArray__ConstIterator* o);
	[LinkName("QCborArray__Iterator_OperatorNotEqualWithQCborArrayConstIterator")]
	public static extern bool QCborArray__Iterator_OperatorNotEqualWithQCborArrayConstIterator(void* c_this, QCborArray__ConstIterator* o);
	[LinkName("QCborArray__Iterator_OperatorLesserWithOther")]
	public static extern bool QCborArray__Iterator_OperatorLesserWithOther(void* c_this, QCborArray__ConstIterator* other);
	[LinkName("QCborArray__Iterator_OperatorLesserOrEqualWithOther")]
	public static extern bool QCborArray__Iterator_OperatorLesserOrEqualWithOther(void* c_this, QCborArray__ConstIterator* other);
	[LinkName("QCborArray__Iterator_OperatorGreaterWithOther")]
	public static extern bool QCborArray__Iterator_OperatorGreaterWithOther(void* c_this, QCborArray__ConstIterator* other);
	[LinkName("QCborArray__Iterator_OperatorGreaterOrEqualWithOther")]
	public static extern bool QCborArray__Iterator_OperatorGreaterOrEqualWithOther(void* c_this, QCborArray__ConstIterator* other);
	[LinkName("QCborArray__Iterator_OperatorPlusPlus")]
	public static extern QCborArray__Iterator* QCborArray__Iterator_OperatorPlusPlus(void* c_this);
	[LinkName("QCborArray__Iterator_OperatorPlusPlusWithInt")]
	public static extern QCborArray__Iterator QCborArray__Iterator_OperatorPlusPlusWithInt(void* c_this, int32 param1);
	[LinkName("QCborArray__Iterator_OperatorMinusMinus")]
	public static extern QCborArray__Iterator* QCborArray__Iterator_OperatorMinusMinus(void* c_this);
	[LinkName("QCborArray__Iterator_OperatorMinusMinusWithInt")]
	public static extern QCborArray__Iterator QCborArray__Iterator_OperatorMinusMinusWithInt(void* c_this, int32 param1);
	[LinkName("QCborArray__Iterator_OperatorPlusAssign")]
	public static extern QCborArray__Iterator* QCborArray__Iterator_OperatorPlusAssign(void* c_this, int32 j);
	[LinkName("QCborArray__Iterator_OperatorMinusAssign")]
	public static extern QCborArray__Iterator* QCborArray__Iterator_OperatorMinusAssign(void* c_this, int32 j);
	[LinkName("QCborArray__Iterator_OperatorPlus")]
	public static extern QCborArray__Iterator QCborArray__Iterator_OperatorPlus(void* c_this, int32 j);
	[LinkName("QCborArray__Iterator_OperatorMinus")]
	public static extern QCborArray__Iterator QCborArray__Iterator_OperatorMinus(void* c_this, int32 j);
	[LinkName("QCborArray__Iterator_OperatorMinusWithQCborArrayIterator")]
	public static extern int32 QCborArray__Iterator_OperatorMinusWithQCborArrayIterator(void* c_this, QCborArray__Iterator j);
	/// Delete this object from C++ memory
	[LinkName("QCborArray__Iterator_Delete")]
	public static extern void QCborArray__Iterator_Delete(void* self);
}
public class QCborArray__ConstIterator
{
	protected void* nativePtr;
	
	public this(QCborArray__ConstIterator* other)
	{
		this.nativePtr = CQt.QCborArray__ConstIterator_new(other);
	}
	
	public ~this()
	{
		CQt.QCborArray__ConstIterator_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(QCborArray__ConstIterator* other)
	{
		CQt.QCborArray__ConstIterator_OperatorAssign(this.nativePtr, other);
	}
	
	public void OperatorMultiply()
	{
		CQt.QCborArray__ConstIterator_OperatorMultiply(this.nativePtr);
	}
	
	public void* OperatorMinusGreater()
	{
		return CQt.QCborArray__ConstIterator_OperatorMinusGreater(this.nativePtr);
	}
	
	public void OperatorSubscript(int32 j)
	{
		CQt.QCborArray__ConstIterator_OperatorSubscript(this.nativePtr, j);
	}
	
	public bool OperatorEqual(QCborArray__Iterator* o)
	{
		return CQt.QCborArray__ConstIterator_OperatorEqual(this.nativePtr, o);
	}
	
	public bool OperatorNotEqual(QCborArray__Iterator* o)
	{
		return CQt.QCborArray__ConstIterator_OperatorNotEqual(this.nativePtr, o);
	}
	
	public bool OperatorLesser(QCborArray__Iterator* other)
	{
		return CQt.QCborArray__ConstIterator_OperatorLesser(this.nativePtr, other);
	}
	
	public bool OperatorLesserOrEqual(QCborArray__Iterator* other)
	{
		return CQt.QCborArray__ConstIterator_OperatorLesserOrEqual(this.nativePtr, other);
	}
	
	public bool OperatorGreater(QCborArray__Iterator* other)
	{
		return CQt.QCborArray__ConstIterator_OperatorGreater(this.nativePtr, other);
	}
	
	public bool OperatorGreaterOrEqual(QCborArray__Iterator* other)
	{
		return CQt.QCborArray__ConstIterator_OperatorGreaterOrEqual(this.nativePtr, other);
	}
	
	public bool OperatorEqualWithQCborArrayConstIterator(QCborArray__ConstIterator* o)
	{
		return CQt.QCborArray__ConstIterator_OperatorEqualWithQCborArrayConstIterator(this.nativePtr, o);
	}
	
	public bool OperatorNotEqualWithQCborArrayConstIterator(QCborArray__ConstIterator* o)
	{
		return CQt.QCborArray__ConstIterator_OperatorNotEqualWithQCborArrayConstIterator(this.nativePtr, o);
	}
	
	public bool OperatorLesserWithOther(QCborArray__ConstIterator* other)
	{
		return CQt.QCborArray__ConstIterator_OperatorLesserWithOther(this.nativePtr, other);
	}
	
	public bool OperatorLesserOrEqualWithOther(QCborArray__ConstIterator* other)
	{
		return CQt.QCborArray__ConstIterator_OperatorLesserOrEqualWithOther(this.nativePtr, other);
	}
	
	public bool OperatorGreaterWithOther(QCborArray__ConstIterator* other)
	{
		return CQt.QCborArray__ConstIterator_OperatorGreaterWithOther(this.nativePtr, other);
	}
	
	public bool OperatorGreaterOrEqualWithOther(QCborArray__ConstIterator* other)
	{
		return CQt.QCborArray__ConstIterator_OperatorGreaterOrEqualWithOther(this.nativePtr, other);
	}
	
	public QCborArray__ConstIterator* OperatorPlusPlus()
	{
		return CQt.QCborArray__ConstIterator_OperatorPlusPlus(this.nativePtr);
	}
	
	public QCborArray__ConstIterator OperatorPlusPlusWithInt(int32 param1)
	{
		return CQt.QCborArray__ConstIterator_OperatorPlusPlusWithInt(this.nativePtr, param1);
	}
	
	public QCborArray__ConstIterator* OperatorMinusMinus()
	{
		return CQt.QCborArray__ConstIterator_OperatorMinusMinus(this.nativePtr);
	}
	
	public QCborArray__ConstIterator OperatorMinusMinusWithInt(int32 param1)
	{
		return CQt.QCborArray__ConstIterator_OperatorMinusMinusWithInt(this.nativePtr, param1);
	}
	
	public QCborArray__ConstIterator* OperatorPlusAssign(int32 j)
	{
		return CQt.QCborArray__ConstIterator_OperatorPlusAssign(this.nativePtr, j);
	}
	
	public QCborArray__ConstIterator* OperatorMinusAssign(int32 j)
	{
		return CQt.QCborArray__ConstIterator_OperatorMinusAssign(this.nativePtr, j);
	}
	
	public QCborArray__ConstIterator OperatorPlus(int32 j)
	{
		return CQt.QCborArray__ConstIterator_OperatorPlus(this.nativePtr, j);
	}
	
	public QCborArray__ConstIterator OperatorMinus(int32 j)
	{
		return CQt.QCborArray__ConstIterator_OperatorMinus(this.nativePtr, j);
	}
	
	public int32 OperatorMinusWithQCborArrayConstIterator(QCborArray__ConstIterator j)
	{
		return CQt.QCborArray__ConstIterator_OperatorMinusWithQCborArrayConstIterator(this.nativePtr, j);
	}
	
}
extension CQt
{
	[LinkName("QCborArray__ConstIterator_new")]
	public static extern void* QCborArray__ConstIterator_new(QCborArray__ConstIterator* other);
	[LinkName("QCborArray__ConstIterator_new2")]
	public static extern void* QCborArray__ConstIterator_new2();
	[LinkName("QCborArray__ConstIterator_new3")]
	public static extern void* QCborArray__ConstIterator_new3(QCborArray__ConstIterator* param1);
	[LinkName("QCborArray__ConstIterator_OperatorAssign")]
	public static extern void QCborArray__ConstIterator_OperatorAssign(void* c_this, QCborArray__ConstIterator* other);
	[LinkName("QCborArray__ConstIterator_OperatorMultiply")]
	public static extern void QCborArray__ConstIterator_OperatorMultiply(void* c_this);
	[LinkName("QCborArray__ConstIterator_OperatorMinusGreater")]
	public static extern void* QCborArray__ConstIterator_OperatorMinusGreater(void* c_this);
	[LinkName("QCborArray__ConstIterator_OperatorSubscript")]
	public static extern void QCborArray__ConstIterator_OperatorSubscript(void* c_this, int32 j);
	[LinkName("QCborArray__ConstIterator_OperatorEqual")]
	public static extern bool QCborArray__ConstIterator_OperatorEqual(void* c_this, QCborArray__Iterator* o);
	[LinkName("QCborArray__ConstIterator_OperatorNotEqual")]
	public static extern bool QCborArray__ConstIterator_OperatorNotEqual(void* c_this, QCborArray__Iterator* o);
	[LinkName("QCborArray__ConstIterator_OperatorLesser")]
	public static extern bool QCborArray__ConstIterator_OperatorLesser(void* c_this, QCborArray__Iterator* other);
	[LinkName("QCborArray__ConstIterator_OperatorLesserOrEqual")]
	public static extern bool QCborArray__ConstIterator_OperatorLesserOrEqual(void* c_this, QCborArray__Iterator* other);
	[LinkName("QCborArray__ConstIterator_OperatorGreater")]
	public static extern bool QCborArray__ConstIterator_OperatorGreater(void* c_this, QCborArray__Iterator* other);
	[LinkName("QCborArray__ConstIterator_OperatorGreaterOrEqual")]
	public static extern bool QCborArray__ConstIterator_OperatorGreaterOrEqual(void* c_this, QCborArray__Iterator* other);
	[LinkName("QCborArray__ConstIterator_OperatorEqualWithQCborArrayConstIterator")]
	public static extern bool QCborArray__ConstIterator_OperatorEqualWithQCborArrayConstIterator(void* c_this, QCborArray__ConstIterator* o);
	[LinkName("QCborArray__ConstIterator_OperatorNotEqualWithQCborArrayConstIterator")]
	public static extern bool QCborArray__ConstIterator_OperatorNotEqualWithQCborArrayConstIterator(void* c_this, QCborArray__ConstIterator* o);
	[LinkName("QCborArray__ConstIterator_OperatorLesserWithOther")]
	public static extern bool QCborArray__ConstIterator_OperatorLesserWithOther(void* c_this, QCborArray__ConstIterator* other);
	[LinkName("QCborArray__ConstIterator_OperatorLesserOrEqualWithOther")]
	public static extern bool QCborArray__ConstIterator_OperatorLesserOrEqualWithOther(void* c_this, QCborArray__ConstIterator* other);
	[LinkName("QCborArray__ConstIterator_OperatorGreaterWithOther")]
	public static extern bool QCborArray__ConstIterator_OperatorGreaterWithOther(void* c_this, QCborArray__ConstIterator* other);
	[LinkName("QCborArray__ConstIterator_OperatorGreaterOrEqualWithOther")]
	public static extern bool QCborArray__ConstIterator_OperatorGreaterOrEqualWithOther(void* c_this, QCborArray__ConstIterator* other);
	[LinkName("QCborArray__ConstIterator_OperatorPlusPlus")]
	public static extern QCborArray__ConstIterator* QCborArray__ConstIterator_OperatorPlusPlus(void* c_this);
	[LinkName("QCborArray__ConstIterator_OperatorPlusPlusWithInt")]
	public static extern QCborArray__ConstIterator QCborArray__ConstIterator_OperatorPlusPlusWithInt(void* c_this, int32 param1);
	[LinkName("QCborArray__ConstIterator_OperatorMinusMinus")]
	public static extern QCborArray__ConstIterator* QCborArray__ConstIterator_OperatorMinusMinus(void* c_this);
	[LinkName("QCborArray__ConstIterator_OperatorMinusMinusWithInt")]
	public static extern QCborArray__ConstIterator QCborArray__ConstIterator_OperatorMinusMinusWithInt(void* c_this, int32 param1);
	[LinkName("QCborArray__ConstIterator_OperatorPlusAssign")]
	public static extern QCborArray__ConstIterator* QCborArray__ConstIterator_OperatorPlusAssign(void* c_this, int32 j);
	[LinkName("QCborArray__ConstIterator_OperatorMinusAssign")]
	public static extern QCborArray__ConstIterator* QCborArray__ConstIterator_OperatorMinusAssign(void* c_this, int32 j);
	[LinkName("QCborArray__ConstIterator_OperatorPlus")]
	public static extern QCborArray__ConstIterator QCborArray__ConstIterator_OperatorPlus(void* c_this, int32 j);
	[LinkName("QCborArray__ConstIterator_OperatorMinus")]
	public static extern QCborArray__ConstIterator QCborArray__ConstIterator_OperatorMinus(void* c_this, int32 j);
	[LinkName("QCborArray__ConstIterator_OperatorMinusWithQCborArrayConstIterator")]
	public static extern int32 QCborArray__ConstIterator_OperatorMinusWithQCborArrayConstIterator(void* c_this, QCborArray__ConstIterator j);
	/// Delete this object from C++ memory
	[LinkName("QCborArray__ConstIterator_Delete")]
	public static extern void QCborArray__ConstIterator_Delete(void* self);
}