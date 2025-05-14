using System;
using System.Interop;
namespace Qt;

public interface IQJsonArray
{
	void* NativePtr { get; }
}
public struct QJsonArrayPtr : IQJsonArray, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QJsonArray_new());
	}
	
	public void Dispose()
	{
		CQt.QJsonArray_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQJsonArray other)
	{
		CQt.QJsonArray_OperatorAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public static void FromStringList(String[] list)
	{
		CQt.QJsonArray_FromStringList(null);
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
	
	public void Prepend(IQJsonValue value)
	{
		CQt.QJsonArray_Prepend(this.nativePtr, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public void Append(IQJsonValue value)
	{
		CQt.QJsonArray_Append(this.nativePtr, (value == default || value.NativePtr == default) ? default : value.NativePtr);
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
	
	public void Insert(int32 i, IQJsonValue value)
	{
		CQt.QJsonArray_Insert(this.nativePtr, i, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public void Replace(int32 i, IQJsonValue value)
	{
		CQt.QJsonArray_Replace(this.nativePtr, i, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public bool Contains(IQJsonValue element)
	{
		return CQt.QJsonArray_Contains(this.nativePtr, (element == default || element.NativePtr == default) ? default : element.NativePtr);
	}
	
	public void OperatorSubscript(int32 i)
	{
		CQt.QJsonArray_OperatorSubscript(this.nativePtr, i);
	}
	
	public void OperatorSubscriptWithQsizetype(int32 i)
	{
		CQt.QJsonArray_OperatorSubscriptWithQsizetype(this.nativePtr, i);
	}
	
	public bool OperatorEqual(IQJsonArray other)
	{
		return CQt.QJsonArray_OperatorEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorNotEqual(IQJsonArray other)
	{
		return CQt.QJsonArray_OperatorNotEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void Swap(IQJsonArray other)
	{
		CQt.QJsonArray_Swap(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void Begin()
	{
		CQt.QJsonArray_Begin(this.nativePtr);
	}
	
	public void Begin2()
	{
		CQt.QJsonArray_Begin2(this.nativePtr);
	}
	
	public void ConstBegin()
	{
		CQt.QJsonArray_ConstBegin(this.nativePtr);
	}
	
	public void Cbegin()
	{
		CQt.QJsonArray_Cbegin(this.nativePtr);
	}
	
	public void End()
	{
		CQt.QJsonArray_End(this.nativePtr);
	}
	
	public void End2()
	{
		CQt.QJsonArray_End2(this.nativePtr);
	}
	
	public void ConstEnd()
	{
		CQt.QJsonArray_ConstEnd(this.nativePtr);
	}
	
	public void Cend()
	{
		CQt.QJsonArray_Cend(this.nativePtr);
	}
	
	public void Insert2(QJsonArray__iteratorPtr before, IQJsonValue value)
	{
		CQt.QJsonArray_Insert2(this.nativePtr, default, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public void Erase(QJsonArray__iteratorPtr it)
	{
		CQt.QJsonArray_Erase(this.nativePtr, default);
	}
	
	public void OperatorPlus(IQJsonValue v)
	{
		CQt.QJsonArray_OperatorPlus(this.nativePtr, (v == default || v.NativePtr == default) ? default : v.NativePtr);
	}
	
	public void* OperatorPlusAssign(IQJsonValue v)
	{
		return CQt.QJsonArray_OperatorPlusAssign(this.nativePtr, (v == default || v.NativePtr == default) ? default : v.NativePtr);
	}
	
	public void* OperatorShiftLeft(IQJsonValue v)
	{
		return CQt.QJsonArray_OperatorShiftLeft(this.nativePtr, (v == default || v.NativePtr == default) ? default : v.NativePtr);
	}
	
	public void PushBack(IQJsonValue t)
	{
		CQt.QJsonArray_PushBack(this.nativePtr, (t == default || t.NativePtr == default) ? default : t.NativePtr);
	}
	
	public void PushFront(IQJsonValue t)
	{
		CQt.QJsonArray_PushFront(this.nativePtr, (t == default || t.NativePtr == default) ? default : t.NativePtr);
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
public class QJsonArray
{
	public QJsonArrayPtr handle;
	
	public static implicit operator QJsonArrayPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QJsonArrayPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQJsonArray other)
	{
		this.handle.OperatorAssign(other);
	}
	
	public static void FromStringList(String[] list)
	{
		QJsonArrayPtr.FromStringList(null);
	}
	
	public int32 Size()
	{
		return this.handle.Size();
	}
	
	public int32 Count()
	{
		return this.handle.Count();
	}
	
	public bool IsEmpty()
	{
		return this.handle.IsEmpty();
	}
	
	public void At(int32 i)
	{
		this.handle.At(i);
	}
	
	public void First()
	{
		this.handle.First();
	}
	
	public void Last()
	{
		this.handle.Last();
	}
	
	public void Prepend(IQJsonValue value)
	{
		this.handle.Prepend(value);
	}
	
	public void Append(IQJsonValue value)
	{
		this.handle.Append(value);
	}
	
	public void RemoveAt(int32 i)
	{
		this.handle.RemoveAt(i);
	}
	
	public void TakeAt(int32 i)
	{
		this.handle.TakeAt(i);
	}
	
	public void RemoveFirst()
	{
		this.handle.RemoveFirst();
	}
	
	public void RemoveLast()
	{
		this.handle.RemoveLast();
	}
	
	public void Insert(int32 i, IQJsonValue value)
	{
		this.handle.Insert(i, value);
	}
	
	public void Replace(int32 i, IQJsonValue value)
	{
		this.handle.Replace(i, value);
	}
	
	public bool Contains(IQJsonValue element)
	{
		return this.handle.Contains(element);
	}
	
	public void OperatorSubscript(int32 i)
	{
		this.handle.OperatorSubscript(i);
	}
	
	public void OperatorSubscriptWithQsizetype(int32 i)
	{
		this.handle.OperatorSubscriptWithQsizetype(i);
	}
	
	public bool OperatorEqual(IQJsonArray other)
	{
		return this.handle.OperatorEqual(other);
	}
	
	public bool OperatorNotEqual(IQJsonArray other)
	{
		return this.handle.OperatorNotEqual(other);
	}
	
	public void Swap(IQJsonArray other)
	{
		this.handle.Swap(other);
	}
	
	public void Begin()
	{
		this.handle.Begin();
	}
	
	public void Begin2()
	{
		this.handle.Begin2();
	}
	
	public void ConstBegin()
	{
		this.handle.ConstBegin();
	}
	
	public void Cbegin()
	{
		this.handle.Cbegin();
	}
	
	public void End()
	{
		this.handle.End();
	}
	
	public void End2()
	{
		this.handle.End2();
	}
	
	public void ConstEnd()
	{
		this.handle.ConstEnd();
	}
	
	public void Cend()
	{
		this.handle.Cend();
	}
	
	public void Insert2(QJsonArray__iteratorPtr before, IQJsonValue value)
	{
		this.handle.Insert2(default, value);
	}
	
	public void Erase(QJsonArray__iteratorPtr it)
	{
		this.handle.Erase(default);
	}
	
	public void OperatorPlus(IQJsonValue v)
	{
		this.handle.OperatorPlus(v);
	}
	
	public void* OperatorPlusAssign(IQJsonValue v)
	{
		return this.handle.OperatorPlusAssign(v);
	}
	
	public void* OperatorShiftLeft(IQJsonValue v)
	{
		return this.handle.OperatorShiftLeft(v);
	}
	
	public void PushBack(IQJsonValue t)
	{
		this.handle.PushBack(t);
	}
	
	public void PushFront(IQJsonValue t)
	{
		this.handle.PushFront(t);
	}
	
	public void PopFront()
	{
		this.handle.PopFront();
	}
	
	public void PopBack()
	{
		this.handle.PopBack();
	}
	
	public bool Empty()
	{
		return this.handle.Empty();
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
	public static extern void QJsonArray_Begin(void* c_this);
	[LinkName("QJsonArray_Begin2")]
	public static extern void QJsonArray_Begin2(void* c_this);
	[LinkName("QJsonArray_ConstBegin")]
	public static extern void QJsonArray_ConstBegin(void* c_this);
	[LinkName("QJsonArray_Cbegin")]
	public static extern void QJsonArray_Cbegin(void* c_this);
	[LinkName("QJsonArray_End")]
	public static extern void QJsonArray_End(void* c_this);
	[LinkName("QJsonArray_End2")]
	public static extern void QJsonArray_End2(void* c_this);
	[LinkName("QJsonArray_ConstEnd")]
	public static extern void QJsonArray_ConstEnd(void* c_this);
	[LinkName("QJsonArray_Cend")]
	public static extern void QJsonArray_Cend(void* c_this);
	[LinkName("QJsonArray_Insert2")]
	public static extern void QJsonArray_Insert2(void* c_this, void before, void* value);
	[LinkName("QJsonArray_Erase")]
	public static extern void QJsonArray_Erase(void* c_this, void it);
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
public interface IQJsonArray__iterator
{
	void* NativePtr { get; }
}
public struct QJsonArray__iteratorPtr : IQJsonArray__iterator, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(QJsonArray__iteratorPtr other)
	{
		return .(CQt.QJsonArray__iterator_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QJsonArray__iterator_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(QJsonArray__iteratorPtr other)
	{
		CQt.QJsonArray__iterator_OperatorAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
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
	
	public bool OperatorEqual(QJsonArray__iteratorPtr o)
	{
		return CQt.QJsonArray__iterator_OperatorEqual(this.nativePtr, (o == default || o.NativePtr == default) ? default : o.NativePtr);
	}
	
	public bool OperatorNotEqual(QJsonArray__iteratorPtr o)
	{
		return CQt.QJsonArray__iterator_OperatorNotEqual(this.nativePtr, (o == default || o.NativePtr == default) ? default : o.NativePtr);
	}
	
	public bool OperatorLesser(QJsonArray__iteratorPtr other)
	{
		return CQt.QJsonArray__iterator_OperatorLesser(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorLesserOrEqual(QJsonArray__iteratorPtr other)
	{
		return CQt.QJsonArray__iterator_OperatorLesserOrEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorGreater(QJsonArray__iteratorPtr other)
	{
		return CQt.QJsonArray__iterator_OperatorGreater(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorGreaterOrEqual(QJsonArray__iteratorPtr other)
	{
		return CQt.QJsonArray__iterator_OperatorGreaterOrEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorEqualWithQJsonArrayconstIterator(QJsonArray__const_iteratorPtr o)
	{
		return CQt.QJsonArray__iterator_OperatorEqualWithQJsonArrayconstIterator(this.nativePtr, (o == default || o.NativePtr == default) ? default : o.NativePtr);
	}
	
	public bool OperatorNotEqualWithQJsonArrayconstIterator(QJsonArray__const_iteratorPtr o)
	{
		return CQt.QJsonArray__iterator_OperatorNotEqualWithQJsonArrayconstIterator(this.nativePtr, (o == default || o.NativePtr == default) ? default : o.NativePtr);
	}
	
	public bool OperatorLesserWithOther(QJsonArray__const_iteratorPtr other)
	{
		return CQt.QJsonArray__iterator_OperatorLesserWithOther(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorLesserOrEqualWithOther(QJsonArray__const_iteratorPtr other)
	{
		return CQt.QJsonArray__iterator_OperatorLesserOrEqualWithOther(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorGreaterWithOther(QJsonArray__const_iteratorPtr other)
	{
		return CQt.QJsonArray__iterator_OperatorGreaterWithOther(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorGreaterOrEqualWithOther(QJsonArray__const_iteratorPtr other)
	{
		return CQt.QJsonArray__iterator_OperatorGreaterOrEqualWithOther(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void* OperatorPlusPlus()
	{
		return CQt.QJsonArray__iterator_OperatorPlusPlus(this.nativePtr);
	}
	
	public void OperatorPlusPlusWithInt(int32 param1)
	{
		CQt.QJsonArray__iterator_OperatorPlusPlusWithInt(this.nativePtr, param1);
	}
	
	public void* OperatorMinusMinus()
	{
		return CQt.QJsonArray__iterator_OperatorMinusMinus(this.nativePtr);
	}
	
	public void OperatorMinusMinusWithInt(int32 param1)
	{
		CQt.QJsonArray__iterator_OperatorMinusMinusWithInt(this.nativePtr, param1);
	}
	
	public void* OperatorPlusAssign(int32 j)
	{
		return CQt.QJsonArray__iterator_OperatorPlusAssign(this.nativePtr, j);
	}
	
	public void* OperatorMinusAssign(int32 j)
	{
		return CQt.QJsonArray__iterator_OperatorMinusAssign(this.nativePtr, j);
	}
	
	public void OperatorPlus(int32 j)
	{
		CQt.QJsonArray__iterator_OperatorPlus(this.nativePtr, j);
	}
	
	public void OperatorMinus(int32 j)
	{
		CQt.QJsonArray__iterator_OperatorMinus(this.nativePtr, j);
	}
	
	public int32 OperatorMinusWithQJsonArrayiterator(QJsonArray__iteratorPtr j)
	{
		return CQt.QJsonArray__iterator_OperatorMinusWithQJsonArrayiterator(this.nativePtr, default);
	}
	
}
public class QJsonArray__iterator
{
	public QJsonArray__iteratorPtr handle;
	
	public static implicit operator QJsonArray__iteratorPtr(Self self)
	{
		return self.handle;
	}
	
	public this(QJsonArray__iteratorPtr other)
	{
		this.handle = QJsonArray__iteratorPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(QJsonArray__iteratorPtr other)
	{
		this.handle.OperatorAssign(other);
	}
	
	public void OperatorMultiply()
	{
		this.handle.OperatorMultiply();
	}
	
	public void* OperatorMinusGreater()
	{
		return this.handle.OperatorMinusGreater();
	}
	
	public void* OperatorMinusGreater2()
	{
		return this.handle.OperatorMinusGreater2();
	}
	
	public void OperatorSubscript(int32 j)
	{
		this.handle.OperatorSubscript(j);
	}
	
	public bool OperatorEqual(QJsonArray__iteratorPtr o)
	{
		return this.handle.OperatorEqual(o);
	}
	
	public bool OperatorNotEqual(QJsonArray__iteratorPtr o)
	{
		return this.handle.OperatorNotEqual(o);
	}
	
	public bool OperatorLesser(QJsonArray__iteratorPtr other)
	{
		return this.handle.OperatorLesser(other);
	}
	
	public bool OperatorLesserOrEqual(QJsonArray__iteratorPtr other)
	{
		return this.handle.OperatorLesserOrEqual(other);
	}
	
	public bool OperatorGreater(QJsonArray__iteratorPtr other)
	{
		return this.handle.OperatorGreater(other);
	}
	
	public bool OperatorGreaterOrEqual(QJsonArray__iteratorPtr other)
	{
		return this.handle.OperatorGreaterOrEqual(other);
	}
	
	public bool OperatorEqualWithQJsonArrayconstIterator(QJsonArray__const_iteratorPtr o)
	{
		return this.handle.OperatorEqualWithQJsonArrayconstIterator(o);
	}
	
	public bool OperatorNotEqualWithQJsonArrayconstIterator(QJsonArray__const_iteratorPtr o)
	{
		return this.handle.OperatorNotEqualWithQJsonArrayconstIterator(o);
	}
	
	public bool OperatorLesserWithOther(QJsonArray__const_iteratorPtr other)
	{
		return this.handle.OperatorLesserWithOther(other);
	}
	
	public bool OperatorLesserOrEqualWithOther(QJsonArray__const_iteratorPtr other)
	{
		return this.handle.OperatorLesserOrEqualWithOther(other);
	}
	
	public bool OperatorGreaterWithOther(QJsonArray__const_iteratorPtr other)
	{
		return this.handle.OperatorGreaterWithOther(other);
	}
	
	public bool OperatorGreaterOrEqualWithOther(QJsonArray__const_iteratorPtr other)
	{
		return this.handle.OperatorGreaterOrEqualWithOther(other);
	}
	
	public void* OperatorPlusPlus()
	{
		return this.handle.OperatorPlusPlus();
	}
	
	public void OperatorPlusPlusWithInt(int32 param1)
	{
		this.handle.OperatorPlusPlusWithInt(param1);
	}
	
	public void* OperatorMinusMinus()
	{
		return this.handle.OperatorMinusMinus();
	}
	
	public void OperatorMinusMinusWithInt(int32 param1)
	{
		this.handle.OperatorMinusMinusWithInt(param1);
	}
	
	public void* OperatorPlusAssign(int32 j)
	{
		return this.handle.OperatorPlusAssign(j);
	}
	
	public void* OperatorMinusAssign(int32 j)
	{
		return this.handle.OperatorMinusAssign(j);
	}
	
	public void OperatorPlus(int32 j)
	{
		this.handle.OperatorPlus(j);
	}
	
	public void OperatorMinus(int32 j)
	{
		this.handle.OperatorMinus(j);
	}
	
	public int32 OperatorMinusWithQJsonArrayiterator(QJsonArray__iteratorPtr j)
	{
		return this.handle.OperatorMinusWithQJsonArrayiterator(default);
	}
	
}
extension CQt
{
	[LinkName("QJsonArray__iterator_new")]
	public static extern void* QJsonArray__iterator_new(void* other);
	[LinkName("QJsonArray__iterator_new2")]
	public static extern void* QJsonArray__iterator_new2();
	[LinkName("QJsonArray__iterator_new3")]
	public static extern void* QJsonArray__iterator_new3(void* array, int32 index);
	[LinkName("QJsonArray__iterator_new4")]
	public static extern void* QJsonArray__iterator_new4(void* other);
	[LinkName("QJsonArray__iterator_OperatorAssign")]
	public static extern void QJsonArray__iterator_OperatorAssign(void* c_this, void* other);
	[LinkName("QJsonArray__iterator_OperatorMultiply")]
	public static extern void QJsonArray__iterator_OperatorMultiply(void* c_this);
	[LinkName("QJsonArray__iterator_OperatorMinusGreater")]
	public static extern void* QJsonArray__iterator_OperatorMinusGreater(void* c_this);
	[LinkName("QJsonArray__iterator_OperatorMinusGreater2")]
	public static extern void* QJsonArray__iterator_OperatorMinusGreater2(void* c_this);
	[LinkName("QJsonArray__iterator_OperatorSubscript")]
	public static extern void QJsonArray__iterator_OperatorSubscript(void* c_this, int32 j);
	[LinkName("QJsonArray__iterator_OperatorEqual")]
	public static extern bool QJsonArray__iterator_OperatorEqual(void* c_this, void* o);
	[LinkName("QJsonArray__iterator_OperatorNotEqual")]
	public static extern bool QJsonArray__iterator_OperatorNotEqual(void* c_this, void* o);
	[LinkName("QJsonArray__iterator_OperatorLesser")]
	public static extern bool QJsonArray__iterator_OperatorLesser(void* c_this, void* other);
	[LinkName("QJsonArray__iterator_OperatorLesserOrEqual")]
	public static extern bool QJsonArray__iterator_OperatorLesserOrEqual(void* c_this, void* other);
	[LinkName("QJsonArray__iterator_OperatorGreater")]
	public static extern bool QJsonArray__iterator_OperatorGreater(void* c_this, void* other);
	[LinkName("QJsonArray__iterator_OperatorGreaterOrEqual")]
	public static extern bool QJsonArray__iterator_OperatorGreaterOrEqual(void* c_this, void* other);
	[LinkName("QJsonArray__iterator_OperatorEqualWithQJsonArrayconstIterator")]
	public static extern bool QJsonArray__iterator_OperatorEqualWithQJsonArrayconstIterator(void* c_this, void* o);
	[LinkName("QJsonArray__iterator_OperatorNotEqualWithQJsonArrayconstIterator")]
	public static extern bool QJsonArray__iterator_OperatorNotEqualWithQJsonArrayconstIterator(void* c_this, void* o);
	[LinkName("QJsonArray__iterator_OperatorLesserWithOther")]
	public static extern bool QJsonArray__iterator_OperatorLesserWithOther(void* c_this, void* other);
	[LinkName("QJsonArray__iterator_OperatorLesserOrEqualWithOther")]
	public static extern bool QJsonArray__iterator_OperatorLesserOrEqualWithOther(void* c_this, void* other);
	[LinkName("QJsonArray__iterator_OperatorGreaterWithOther")]
	public static extern bool QJsonArray__iterator_OperatorGreaterWithOther(void* c_this, void* other);
	[LinkName("QJsonArray__iterator_OperatorGreaterOrEqualWithOther")]
	public static extern bool QJsonArray__iterator_OperatorGreaterOrEqualWithOther(void* c_this, void* other);
	[LinkName("QJsonArray__iterator_OperatorPlusPlus")]
	public static extern void* QJsonArray__iterator_OperatorPlusPlus(void* c_this);
	[LinkName("QJsonArray__iterator_OperatorPlusPlusWithInt")]
	public static extern void QJsonArray__iterator_OperatorPlusPlusWithInt(void* c_this, int32 param1);
	[LinkName("QJsonArray__iterator_OperatorMinusMinus")]
	public static extern void* QJsonArray__iterator_OperatorMinusMinus(void* c_this);
	[LinkName("QJsonArray__iterator_OperatorMinusMinusWithInt")]
	public static extern void QJsonArray__iterator_OperatorMinusMinusWithInt(void* c_this, int32 param1);
	[LinkName("QJsonArray__iterator_OperatorPlusAssign")]
	public static extern void* QJsonArray__iterator_OperatorPlusAssign(void* c_this, int32 j);
	[LinkName("QJsonArray__iterator_OperatorMinusAssign")]
	public static extern void* QJsonArray__iterator_OperatorMinusAssign(void* c_this, int32 j);
	[LinkName("QJsonArray__iterator_OperatorPlus")]
	public static extern void QJsonArray__iterator_OperatorPlus(void* c_this, int32 j);
	[LinkName("QJsonArray__iterator_OperatorMinus")]
	public static extern void QJsonArray__iterator_OperatorMinus(void* c_this, int32 j);
	[LinkName("QJsonArray__iterator_OperatorMinusWithQJsonArrayiterator")]
	public static extern int32 QJsonArray__iterator_OperatorMinusWithQJsonArrayiterator(void* c_this, void j);
	/// Delete this object from C++ memory
	[LinkName("QJsonArray__iterator_Delete")]
	public static extern void QJsonArray__iterator_Delete(void* self);
}
public interface IQJsonArray__const_iterator
{
	void* NativePtr { get; }
}
public struct QJsonArray__const_iteratorPtr : IQJsonArray__const_iterator, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(QJsonArray__const_iteratorPtr other)
	{
		return .(CQt.QJsonArray__const_iterator_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QJsonArray__const_iterator_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(QJsonArray__const_iteratorPtr other)
	{
		CQt.QJsonArray__const_iterator_OperatorAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
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
	
	public bool OperatorEqual(QJsonArray__const_iteratorPtr o)
	{
		return CQt.QJsonArray__const_iterator_OperatorEqual(this.nativePtr, (o == default || o.NativePtr == default) ? default : o.NativePtr);
	}
	
	public bool OperatorNotEqual(QJsonArray__const_iteratorPtr o)
	{
		return CQt.QJsonArray__const_iterator_OperatorNotEqual(this.nativePtr, (o == default || o.NativePtr == default) ? default : o.NativePtr);
	}
	
	public bool OperatorLesser(QJsonArray__const_iteratorPtr other)
	{
		return CQt.QJsonArray__const_iterator_OperatorLesser(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorLesserOrEqual(QJsonArray__const_iteratorPtr other)
	{
		return CQt.QJsonArray__const_iterator_OperatorLesserOrEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorGreater(QJsonArray__const_iteratorPtr other)
	{
		return CQt.QJsonArray__const_iterator_OperatorGreater(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorGreaterOrEqual(QJsonArray__const_iteratorPtr other)
	{
		return CQt.QJsonArray__const_iterator_OperatorGreaterOrEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void* OperatorPlusPlus()
	{
		return CQt.QJsonArray__const_iterator_OperatorPlusPlus(this.nativePtr);
	}
	
	public void OperatorPlusPlusWithInt(int32 param1)
	{
		CQt.QJsonArray__const_iterator_OperatorPlusPlusWithInt(this.nativePtr, param1);
	}
	
	public void* OperatorMinusMinus()
	{
		return CQt.QJsonArray__const_iterator_OperatorMinusMinus(this.nativePtr);
	}
	
	public void OperatorMinusMinusWithInt(int32 param1)
	{
		CQt.QJsonArray__const_iterator_OperatorMinusMinusWithInt(this.nativePtr, param1);
	}
	
	public void* OperatorPlusAssign(int32 j)
	{
		return CQt.QJsonArray__const_iterator_OperatorPlusAssign(this.nativePtr, j);
	}
	
	public void* OperatorMinusAssign(int32 j)
	{
		return CQt.QJsonArray__const_iterator_OperatorMinusAssign(this.nativePtr, j);
	}
	
	public void OperatorPlus(int32 j)
	{
		CQt.QJsonArray__const_iterator_OperatorPlus(this.nativePtr, j);
	}
	
	public void OperatorMinus(int32 j)
	{
		CQt.QJsonArray__const_iterator_OperatorMinus(this.nativePtr, j);
	}
	
	public int32 OperatorMinusWithQJsonArrayconstIterator(QJsonArray__const_iteratorPtr j)
	{
		return CQt.QJsonArray__const_iterator_OperatorMinusWithQJsonArrayconstIterator(this.nativePtr, default);
	}
	
}
public class QJsonArray__const_iterator
{
	public QJsonArray__const_iteratorPtr handle;
	
	public static implicit operator QJsonArray__const_iteratorPtr(Self self)
	{
		return self.handle;
	}
	
	public this(QJsonArray__const_iteratorPtr other)
	{
		this.handle = QJsonArray__const_iteratorPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(QJsonArray__const_iteratorPtr other)
	{
		this.handle.OperatorAssign(other);
	}
	
	public void OperatorMultiply()
	{
		this.handle.OperatorMultiply();
	}
	
	public void* OperatorMinusGreater()
	{
		return this.handle.OperatorMinusGreater();
	}
	
	public void OperatorSubscript(int32 j)
	{
		this.handle.OperatorSubscript(j);
	}
	
	public bool OperatorEqual(QJsonArray__const_iteratorPtr o)
	{
		return this.handle.OperatorEqual(o);
	}
	
	public bool OperatorNotEqual(QJsonArray__const_iteratorPtr o)
	{
		return this.handle.OperatorNotEqual(o);
	}
	
	public bool OperatorLesser(QJsonArray__const_iteratorPtr other)
	{
		return this.handle.OperatorLesser(other);
	}
	
	public bool OperatorLesserOrEqual(QJsonArray__const_iteratorPtr other)
	{
		return this.handle.OperatorLesserOrEqual(other);
	}
	
	public bool OperatorGreater(QJsonArray__const_iteratorPtr other)
	{
		return this.handle.OperatorGreater(other);
	}
	
	public bool OperatorGreaterOrEqual(QJsonArray__const_iteratorPtr other)
	{
		return this.handle.OperatorGreaterOrEqual(other);
	}
	
	public void* OperatorPlusPlus()
	{
		return this.handle.OperatorPlusPlus();
	}
	
	public void OperatorPlusPlusWithInt(int32 param1)
	{
		this.handle.OperatorPlusPlusWithInt(param1);
	}
	
	public void* OperatorMinusMinus()
	{
		return this.handle.OperatorMinusMinus();
	}
	
	public void OperatorMinusMinusWithInt(int32 param1)
	{
		this.handle.OperatorMinusMinusWithInt(param1);
	}
	
	public void* OperatorPlusAssign(int32 j)
	{
		return this.handle.OperatorPlusAssign(j);
	}
	
	public void* OperatorMinusAssign(int32 j)
	{
		return this.handle.OperatorMinusAssign(j);
	}
	
	public void OperatorPlus(int32 j)
	{
		this.handle.OperatorPlus(j);
	}
	
	public void OperatorMinus(int32 j)
	{
		this.handle.OperatorMinus(j);
	}
	
	public int32 OperatorMinusWithQJsonArrayconstIterator(QJsonArray__const_iteratorPtr j)
	{
		return this.handle.OperatorMinusWithQJsonArrayconstIterator(default);
	}
	
}
extension CQt
{
	[LinkName("QJsonArray__const_iterator_new")]
	public static extern void* QJsonArray__const_iterator_new(void* other);
	[LinkName("QJsonArray__const_iterator_new2")]
	public static extern void* QJsonArray__const_iterator_new2();
	[LinkName("QJsonArray__const_iterator_new3")]
	public static extern void* QJsonArray__const_iterator_new3(void* array, int32 index);
	[LinkName("QJsonArray__const_iterator_new4")]
	public static extern void* QJsonArray__const_iterator_new4(void* o);
	[LinkName("QJsonArray__const_iterator_new5")]
	public static extern void* QJsonArray__const_iterator_new5(void* other);
	[LinkName("QJsonArray__const_iterator_OperatorAssign")]
	public static extern void QJsonArray__const_iterator_OperatorAssign(void* c_this, void* other);
	[LinkName("QJsonArray__const_iterator_OperatorMultiply")]
	public static extern void QJsonArray__const_iterator_OperatorMultiply(void* c_this);
	[LinkName("QJsonArray__const_iterator_OperatorMinusGreater")]
	public static extern void* QJsonArray__const_iterator_OperatorMinusGreater(void* c_this);
	[LinkName("QJsonArray__const_iterator_OperatorSubscript")]
	public static extern void QJsonArray__const_iterator_OperatorSubscript(void* c_this, int32 j);
	[LinkName("QJsonArray__const_iterator_OperatorEqual")]
	public static extern bool QJsonArray__const_iterator_OperatorEqual(void* c_this, void* o);
	[LinkName("QJsonArray__const_iterator_OperatorNotEqual")]
	public static extern bool QJsonArray__const_iterator_OperatorNotEqual(void* c_this, void* o);
	[LinkName("QJsonArray__const_iterator_OperatorLesser")]
	public static extern bool QJsonArray__const_iterator_OperatorLesser(void* c_this, void* other);
	[LinkName("QJsonArray__const_iterator_OperatorLesserOrEqual")]
	public static extern bool QJsonArray__const_iterator_OperatorLesserOrEqual(void* c_this, void* other);
	[LinkName("QJsonArray__const_iterator_OperatorGreater")]
	public static extern bool QJsonArray__const_iterator_OperatorGreater(void* c_this, void* other);
	[LinkName("QJsonArray__const_iterator_OperatorGreaterOrEqual")]
	public static extern bool QJsonArray__const_iterator_OperatorGreaterOrEqual(void* c_this, void* other);
	[LinkName("QJsonArray__const_iterator_OperatorPlusPlus")]
	public static extern void* QJsonArray__const_iterator_OperatorPlusPlus(void* c_this);
	[LinkName("QJsonArray__const_iterator_OperatorPlusPlusWithInt")]
	public static extern void QJsonArray__const_iterator_OperatorPlusPlusWithInt(void* c_this, int32 param1);
	[LinkName("QJsonArray__const_iterator_OperatorMinusMinus")]
	public static extern void* QJsonArray__const_iterator_OperatorMinusMinus(void* c_this);
	[LinkName("QJsonArray__const_iterator_OperatorMinusMinusWithInt")]
	public static extern void QJsonArray__const_iterator_OperatorMinusMinusWithInt(void* c_this, int32 param1);
	[LinkName("QJsonArray__const_iterator_OperatorPlusAssign")]
	public static extern void* QJsonArray__const_iterator_OperatorPlusAssign(void* c_this, int32 j);
	[LinkName("QJsonArray__const_iterator_OperatorMinusAssign")]
	public static extern void* QJsonArray__const_iterator_OperatorMinusAssign(void* c_this, int32 j);
	[LinkName("QJsonArray__const_iterator_OperatorPlus")]
	public static extern void QJsonArray__const_iterator_OperatorPlus(void* c_this, int32 j);
	[LinkName("QJsonArray__const_iterator_OperatorMinus")]
	public static extern void QJsonArray__const_iterator_OperatorMinus(void* c_this, int32 j);
	[LinkName("QJsonArray__const_iterator_OperatorMinusWithQJsonArrayconstIterator")]
	public static extern int32 QJsonArray__const_iterator_OperatorMinusWithQJsonArrayconstIterator(void* c_this, void j);
	/// Delete this object from C++ memory
	[LinkName("QJsonArray__const_iterator_Delete")]
	public static extern void QJsonArray__const_iterator_Delete(void* self);
}