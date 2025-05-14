using System;
using System.Interop;
namespace Qt;

public interface IQCborArray
{
	void* NativePtr { get; }
}
public struct QCborArrayPtr : IQCborArray, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QCborArray_new());
	}
	
	public void Dispose()
	{
		CQt.QCborArray_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQCborArray other)
	{
		CQt.QCborArray_OperatorAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void Swap(IQCborArray other)
	{
		CQt.QCborArray_Swap(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
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
	
	public void Insert(int32 i, IQCborValue value)
	{
		CQt.QCborArray_Insert(this.nativePtr, i, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public void Prepend(IQCborValue value)
	{
		CQt.QCborArray_Prepend(this.nativePtr, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public void Append(IQCborValue value)
	{
		CQt.QCborArray_Append(this.nativePtr, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public void Extract(QCborArray__ConstIteratorPtr it)
	{
		CQt.QCborArray_Extract(this.nativePtr, default);
	}
	
	public void ExtractWithIt(QCborArray__IteratorPtr it)
	{
		CQt.QCborArray_ExtractWithIt(this.nativePtr, default);
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
	
	public bool Contains(IQCborValue value)
	{
		return CQt.QCborArray_Contains(this.nativePtr, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public int32 Compare(IQCborArray other)
	{
		return CQt.QCborArray_Compare(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorEqual(IQCborArray other)
	{
		return CQt.QCborArray_OperatorEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorNotEqual(IQCborArray other)
	{
		return CQt.QCborArray_OperatorNotEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorLesser(IQCborArray other)
	{
		return CQt.QCborArray_OperatorLesser(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void Begin()
	{
		CQt.QCborArray_Begin(this.nativePtr);
	}
	
	public void ConstBegin()
	{
		CQt.QCborArray_ConstBegin(this.nativePtr);
	}
	
	public void Begin2()
	{
		CQt.QCborArray_Begin2(this.nativePtr);
	}
	
	public void Cbegin()
	{
		CQt.QCborArray_Cbegin(this.nativePtr);
	}
	
	public void End()
	{
		CQt.QCborArray_End(this.nativePtr);
	}
	
	public void ConstEnd()
	{
		CQt.QCborArray_ConstEnd(this.nativePtr);
	}
	
	public void End2()
	{
		CQt.QCborArray_End2(this.nativePtr);
	}
	
	public void Cend()
	{
		CQt.QCborArray_Cend(this.nativePtr);
	}
	
	public void Insert2(QCborArray__IteratorPtr before, IQCborValue value)
	{
		CQt.QCborArray_Insert2(this.nativePtr, default, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public void Insert3(QCborArray__ConstIteratorPtr before, IQCborValue value)
	{
		CQt.QCborArray_Insert3(this.nativePtr, default, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public void Erase(QCborArray__IteratorPtr it)
	{
		CQt.QCborArray_Erase(this.nativePtr, default);
	}
	
	public void EraseWithIt(QCborArray__ConstIteratorPtr it)
	{
		CQt.QCborArray_EraseWithIt(this.nativePtr, default);
	}
	
	public void PushBack(IQCborValue t)
	{
		CQt.QCborArray_PushBack(this.nativePtr, (t == default || t.NativePtr == default) ? default : t.NativePtr);
	}
	
	public void PushFront(IQCborValue t)
	{
		CQt.QCborArray_PushFront(this.nativePtr, (t == default || t.NativePtr == default) ? default : t.NativePtr);
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
	
	public void OperatorPlus(IQCborValue v)
	{
		CQt.QCborArray_OperatorPlus(this.nativePtr, (v == default || v.NativePtr == default) ? default : v.NativePtr);
	}
	
	public void* OperatorPlusAssign(IQCborValue v)
	{
		return CQt.QCborArray_OperatorPlusAssign(this.nativePtr, (v == default || v.NativePtr == default) ? default : v.NativePtr);
	}
	
	public void* OperatorShiftLeft(IQCborValue v)
	{
		return CQt.QCborArray_OperatorShiftLeft(this.nativePtr, (v == default || v.NativePtr == default) ? default : v.NativePtr);
	}
	
	public static void FromStringList(String[] list)
	{
		CQt.QCborArray_FromStringList(null);
	}
	
	public static void FromJsonArray(IQJsonArray array)
	{
		CQt.QCborArray_FromJsonArray((array == default || array.NativePtr == default) ? default : array.NativePtr);
	}
	
	public void ToJsonArray()
	{
		CQt.QCborArray_ToJsonArray(this.nativePtr);
	}
	
}
public class QCborArray
{
	public QCborArrayPtr handle;
	
	public static implicit operator QCborArrayPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QCborArrayPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQCborArray other)
	{
		this.handle.OperatorAssign(other);
	}
	
	public void Swap(IQCborArray other)
	{
		this.handle.Swap(other);
	}
	
	public void ToCborValue()
	{
		this.handle.ToCborValue();
	}
	
	public int32 Size()
	{
		return this.handle.Size();
	}
	
	public bool IsEmpty()
	{
		return this.handle.IsEmpty();
	}
	
	public void Clear()
	{
		this.handle.Clear();
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
	
	public void OperatorSubscript(int32 i)
	{
		this.handle.OperatorSubscript(i);
	}
	
	public void First2()
	{
		this.handle.First2();
	}
	
	public void Last2()
	{
		this.handle.Last2();
	}
	
	public void OperatorSubscriptWithQsizetype(int32 i)
	{
		this.handle.OperatorSubscriptWithQsizetype(i);
	}
	
	public void Insert(int32 i, IQCborValue value)
	{
		this.handle.Insert(i, value);
	}
	
	public void Prepend(IQCborValue value)
	{
		this.handle.Prepend(value);
	}
	
	public void Append(IQCborValue value)
	{
		this.handle.Append(value);
	}
	
	public void Extract(QCborArray__ConstIteratorPtr it)
	{
		this.handle.Extract(default);
	}
	
	public void ExtractWithIt(QCborArray__IteratorPtr it)
	{
		this.handle.ExtractWithIt(default);
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
	
	public void TakeFirst()
	{
		this.handle.TakeFirst();
	}
	
	public void TakeLast()
	{
		this.handle.TakeLast();
	}
	
	public bool Contains(IQCborValue value)
	{
		return this.handle.Contains(value);
	}
	
	public int32 Compare(IQCborArray other)
	{
		return this.handle.Compare(other);
	}
	
	public bool OperatorEqual(IQCborArray other)
	{
		return this.handle.OperatorEqual(other);
	}
	
	public bool OperatorNotEqual(IQCborArray other)
	{
		return this.handle.OperatorNotEqual(other);
	}
	
	public bool OperatorLesser(IQCborArray other)
	{
		return this.handle.OperatorLesser(other);
	}
	
	public void Begin()
	{
		this.handle.Begin();
	}
	
	public void ConstBegin()
	{
		this.handle.ConstBegin();
	}
	
	public void Begin2()
	{
		this.handle.Begin2();
	}
	
	public void Cbegin()
	{
		this.handle.Cbegin();
	}
	
	public void End()
	{
		this.handle.End();
	}
	
	public void ConstEnd()
	{
		this.handle.ConstEnd();
	}
	
	public void End2()
	{
		this.handle.End2();
	}
	
	public void Cend()
	{
		this.handle.Cend();
	}
	
	public void Insert2(QCborArray__IteratorPtr before, IQCborValue value)
	{
		this.handle.Insert2(default, value);
	}
	
	public void Insert3(QCborArray__ConstIteratorPtr before, IQCborValue value)
	{
		this.handle.Insert3(default, value);
	}
	
	public void Erase(QCborArray__IteratorPtr it)
	{
		this.handle.Erase(default);
	}
	
	public void EraseWithIt(QCborArray__ConstIteratorPtr it)
	{
		this.handle.EraseWithIt(default);
	}
	
	public void PushBack(IQCborValue t)
	{
		this.handle.PushBack(t);
	}
	
	public void PushFront(IQCborValue t)
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
	
	public void OperatorPlus(IQCborValue v)
	{
		this.handle.OperatorPlus(v);
	}
	
	public void* OperatorPlusAssign(IQCborValue v)
	{
		return this.handle.OperatorPlusAssign(v);
	}
	
	public void* OperatorShiftLeft(IQCborValue v)
	{
		return this.handle.OperatorShiftLeft(v);
	}
	
	public static void FromStringList(String[] list)
	{
		QCborArrayPtr.FromStringList(null);
	}
	
	public static void FromJsonArray(IQJsonArray array)
	{
		QCborArrayPtr.FromJsonArray(array);
	}
	
	public void ToJsonArray()
	{
		this.handle.ToJsonArray();
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
	public static extern void QCborArray_Extract(void* c_this, void it);
	[LinkName("QCborArray_ExtractWithIt")]
	public static extern void QCborArray_ExtractWithIt(void* c_this, void it);
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
	public static extern void QCborArray_Begin(void* c_this);
	[LinkName("QCborArray_ConstBegin")]
	public static extern void QCborArray_ConstBegin(void* c_this);
	[LinkName("QCborArray_Begin2")]
	public static extern void QCborArray_Begin2(void* c_this);
	[LinkName("QCborArray_Cbegin")]
	public static extern void QCborArray_Cbegin(void* c_this);
	[LinkName("QCborArray_End")]
	public static extern void QCborArray_End(void* c_this);
	[LinkName("QCborArray_ConstEnd")]
	public static extern void QCborArray_ConstEnd(void* c_this);
	[LinkName("QCborArray_End2")]
	public static extern void QCborArray_End2(void* c_this);
	[LinkName("QCborArray_Cend")]
	public static extern void QCborArray_Cend(void* c_this);
	[LinkName("QCborArray_Insert2")]
	public static extern void QCborArray_Insert2(void* c_this, void before, void* value);
	[LinkName("QCborArray_Insert3")]
	public static extern void QCborArray_Insert3(void* c_this, void before, void* value);
	[LinkName("QCborArray_Erase")]
	public static extern void QCborArray_Erase(void* c_this, void it);
	[LinkName("QCborArray_EraseWithIt")]
	public static extern void QCborArray_EraseWithIt(void* c_this, void it);
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
public interface IQCborArray__Iterator
{
	void* NativePtr { get; }
}
public struct QCborArray__IteratorPtr : IQCborArray__Iterator, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(QCborArray__IteratorPtr other)
	{
		return .(CQt.QCborArray__Iterator_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QCborArray__Iterator_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(QCborArray__IteratorPtr other)
	{
		CQt.QCborArray__Iterator_OperatorAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
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
	
	public bool OperatorEqual(QCborArray__IteratorPtr o)
	{
		return CQt.QCborArray__Iterator_OperatorEqual(this.nativePtr, (o == default || o.NativePtr == default) ? default : o.NativePtr);
	}
	
	public bool OperatorNotEqual(QCborArray__IteratorPtr o)
	{
		return CQt.QCborArray__Iterator_OperatorNotEqual(this.nativePtr, (o == default || o.NativePtr == default) ? default : o.NativePtr);
	}
	
	public bool OperatorLesser(QCborArray__IteratorPtr other)
	{
		return CQt.QCborArray__Iterator_OperatorLesser(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorLesserOrEqual(QCborArray__IteratorPtr other)
	{
		return CQt.QCborArray__Iterator_OperatorLesserOrEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorGreater(QCborArray__IteratorPtr other)
	{
		return CQt.QCborArray__Iterator_OperatorGreater(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorGreaterOrEqual(QCborArray__IteratorPtr other)
	{
		return CQt.QCborArray__Iterator_OperatorGreaterOrEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorEqualWithQCborArrayConstIterator(QCborArray__ConstIteratorPtr o)
	{
		return CQt.QCborArray__Iterator_OperatorEqualWithQCborArrayConstIterator(this.nativePtr, (o == default || o.NativePtr == default) ? default : o.NativePtr);
	}
	
	public bool OperatorNotEqualWithQCborArrayConstIterator(QCborArray__ConstIteratorPtr o)
	{
		return CQt.QCborArray__Iterator_OperatorNotEqualWithQCborArrayConstIterator(this.nativePtr, (o == default || o.NativePtr == default) ? default : o.NativePtr);
	}
	
	public bool OperatorLesserWithOther(QCborArray__ConstIteratorPtr other)
	{
		return CQt.QCborArray__Iterator_OperatorLesserWithOther(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorLesserOrEqualWithOther(QCborArray__ConstIteratorPtr other)
	{
		return CQt.QCborArray__Iterator_OperatorLesserOrEqualWithOther(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorGreaterWithOther(QCborArray__ConstIteratorPtr other)
	{
		return CQt.QCborArray__Iterator_OperatorGreaterWithOther(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorGreaterOrEqualWithOther(QCborArray__ConstIteratorPtr other)
	{
		return CQt.QCborArray__Iterator_OperatorGreaterOrEqualWithOther(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void* OperatorPlusPlus()
	{
		return CQt.QCborArray__Iterator_OperatorPlusPlus(this.nativePtr);
	}
	
	public void OperatorPlusPlusWithInt(int32 param1)
	{
		CQt.QCborArray__Iterator_OperatorPlusPlusWithInt(this.nativePtr, param1);
	}
	
	public void* OperatorMinusMinus()
	{
		return CQt.QCborArray__Iterator_OperatorMinusMinus(this.nativePtr);
	}
	
	public void OperatorMinusMinusWithInt(int32 param1)
	{
		CQt.QCborArray__Iterator_OperatorMinusMinusWithInt(this.nativePtr, param1);
	}
	
	public void* OperatorPlusAssign(int32 j)
	{
		return CQt.QCborArray__Iterator_OperatorPlusAssign(this.nativePtr, j);
	}
	
	public void* OperatorMinusAssign(int32 j)
	{
		return CQt.QCborArray__Iterator_OperatorMinusAssign(this.nativePtr, j);
	}
	
	public void OperatorPlus(int32 j)
	{
		CQt.QCborArray__Iterator_OperatorPlus(this.nativePtr, j);
	}
	
	public void OperatorMinus(int32 j)
	{
		CQt.QCborArray__Iterator_OperatorMinus(this.nativePtr, j);
	}
	
	public int32 OperatorMinusWithQCborArrayIterator(QCborArray__IteratorPtr j)
	{
		return CQt.QCborArray__Iterator_OperatorMinusWithQCborArrayIterator(this.nativePtr, default);
	}
	
}
public class QCborArray__Iterator
{
	public QCborArray__IteratorPtr handle;
	
	public static implicit operator QCborArray__IteratorPtr(Self self)
	{
		return self.handle;
	}
	
	public this(QCborArray__IteratorPtr other)
	{
		this.handle = QCborArray__IteratorPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(QCborArray__IteratorPtr other)
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
	
	public bool OperatorEqual(QCborArray__IteratorPtr o)
	{
		return this.handle.OperatorEqual(o);
	}
	
	public bool OperatorNotEqual(QCborArray__IteratorPtr o)
	{
		return this.handle.OperatorNotEqual(o);
	}
	
	public bool OperatorLesser(QCborArray__IteratorPtr other)
	{
		return this.handle.OperatorLesser(other);
	}
	
	public bool OperatorLesserOrEqual(QCborArray__IteratorPtr other)
	{
		return this.handle.OperatorLesserOrEqual(other);
	}
	
	public bool OperatorGreater(QCborArray__IteratorPtr other)
	{
		return this.handle.OperatorGreater(other);
	}
	
	public bool OperatorGreaterOrEqual(QCborArray__IteratorPtr other)
	{
		return this.handle.OperatorGreaterOrEqual(other);
	}
	
	public bool OperatorEqualWithQCborArrayConstIterator(QCborArray__ConstIteratorPtr o)
	{
		return this.handle.OperatorEqualWithQCborArrayConstIterator(o);
	}
	
	public bool OperatorNotEqualWithQCborArrayConstIterator(QCborArray__ConstIteratorPtr o)
	{
		return this.handle.OperatorNotEqualWithQCborArrayConstIterator(o);
	}
	
	public bool OperatorLesserWithOther(QCborArray__ConstIteratorPtr other)
	{
		return this.handle.OperatorLesserWithOther(other);
	}
	
	public bool OperatorLesserOrEqualWithOther(QCborArray__ConstIteratorPtr other)
	{
		return this.handle.OperatorLesserOrEqualWithOther(other);
	}
	
	public bool OperatorGreaterWithOther(QCborArray__ConstIteratorPtr other)
	{
		return this.handle.OperatorGreaterWithOther(other);
	}
	
	public bool OperatorGreaterOrEqualWithOther(QCborArray__ConstIteratorPtr other)
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
	
	public int32 OperatorMinusWithQCborArrayIterator(QCborArray__IteratorPtr j)
	{
		return this.handle.OperatorMinusWithQCborArrayIterator(default);
	}
	
}
extension CQt
{
	[LinkName("QCborArray__Iterator_new")]
	public static extern void* QCborArray__Iterator_new(void* other);
	[LinkName("QCborArray__Iterator_new2")]
	public static extern void* QCborArray__Iterator_new2();
	[LinkName("QCborArray__Iterator_new3")]
	public static extern void* QCborArray__Iterator_new3(void* param1);
	[LinkName("QCborArray__Iterator_OperatorAssign")]
	public static extern void QCborArray__Iterator_OperatorAssign(void* c_this, void* other);
	[LinkName("QCborArray__Iterator_OperatorMultiply")]
	public static extern void QCborArray__Iterator_OperatorMultiply(void* c_this);
	[LinkName("QCborArray__Iterator_OperatorMinusGreater")]
	public static extern void* QCborArray__Iterator_OperatorMinusGreater(void* c_this);
	[LinkName("QCborArray__Iterator_OperatorMinusGreater2")]
	public static extern void* QCborArray__Iterator_OperatorMinusGreater2(void* c_this);
	[LinkName("QCborArray__Iterator_OperatorSubscript")]
	public static extern void QCborArray__Iterator_OperatorSubscript(void* c_this, int32 j);
	[LinkName("QCborArray__Iterator_OperatorEqual")]
	public static extern bool QCborArray__Iterator_OperatorEqual(void* c_this, void* o);
	[LinkName("QCborArray__Iterator_OperatorNotEqual")]
	public static extern bool QCborArray__Iterator_OperatorNotEqual(void* c_this, void* o);
	[LinkName("QCborArray__Iterator_OperatorLesser")]
	public static extern bool QCborArray__Iterator_OperatorLesser(void* c_this, void* other);
	[LinkName("QCborArray__Iterator_OperatorLesserOrEqual")]
	public static extern bool QCborArray__Iterator_OperatorLesserOrEqual(void* c_this, void* other);
	[LinkName("QCborArray__Iterator_OperatorGreater")]
	public static extern bool QCborArray__Iterator_OperatorGreater(void* c_this, void* other);
	[LinkName("QCborArray__Iterator_OperatorGreaterOrEqual")]
	public static extern bool QCborArray__Iterator_OperatorGreaterOrEqual(void* c_this, void* other);
	[LinkName("QCborArray__Iterator_OperatorEqualWithQCborArrayConstIterator")]
	public static extern bool QCborArray__Iterator_OperatorEqualWithQCborArrayConstIterator(void* c_this, void* o);
	[LinkName("QCborArray__Iterator_OperatorNotEqualWithQCborArrayConstIterator")]
	public static extern bool QCborArray__Iterator_OperatorNotEqualWithQCborArrayConstIterator(void* c_this, void* o);
	[LinkName("QCborArray__Iterator_OperatorLesserWithOther")]
	public static extern bool QCborArray__Iterator_OperatorLesserWithOther(void* c_this, void* other);
	[LinkName("QCborArray__Iterator_OperatorLesserOrEqualWithOther")]
	public static extern bool QCborArray__Iterator_OperatorLesserOrEqualWithOther(void* c_this, void* other);
	[LinkName("QCborArray__Iterator_OperatorGreaterWithOther")]
	public static extern bool QCborArray__Iterator_OperatorGreaterWithOther(void* c_this, void* other);
	[LinkName("QCborArray__Iterator_OperatorGreaterOrEqualWithOther")]
	public static extern bool QCborArray__Iterator_OperatorGreaterOrEqualWithOther(void* c_this, void* other);
	[LinkName("QCborArray__Iterator_OperatorPlusPlus")]
	public static extern void* QCborArray__Iterator_OperatorPlusPlus(void* c_this);
	[LinkName("QCborArray__Iterator_OperatorPlusPlusWithInt")]
	public static extern void QCborArray__Iterator_OperatorPlusPlusWithInt(void* c_this, int32 param1);
	[LinkName("QCborArray__Iterator_OperatorMinusMinus")]
	public static extern void* QCborArray__Iterator_OperatorMinusMinus(void* c_this);
	[LinkName("QCborArray__Iterator_OperatorMinusMinusWithInt")]
	public static extern void QCborArray__Iterator_OperatorMinusMinusWithInt(void* c_this, int32 param1);
	[LinkName("QCborArray__Iterator_OperatorPlusAssign")]
	public static extern void* QCborArray__Iterator_OperatorPlusAssign(void* c_this, int32 j);
	[LinkName("QCborArray__Iterator_OperatorMinusAssign")]
	public static extern void* QCborArray__Iterator_OperatorMinusAssign(void* c_this, int32 j);
	[LinkName("QCborArray__Iterator_OperatorPlus")]
	public static extern void QCborArray__Iterator_OperatorPlus(void* c_this, int32 j);
	[LinkName("QCborArray__Iterator_OperatorMinus")]
	public static extern void QCborArray__Iterator_OperatorMinus(void* c_this, int32 j);
	[LinkName("QCborArray__Iterator_OperatorMinusWithQCborArrayIterator")]
	public static extern int32 QCborArray__Iterator_OperatorMinusWithQCborArrayIterator(void* c_this, void j);
	/// Delete this object from C++ memory
	[LinkName("QCborArray__Iterator_Delete")]
	public static extern void QCborArray__Iterator_Delete(void* self);
}
public interface IQCborArray__ConstIterator
{
	void* NativePtr { get; }
}
public struct QCborArray__ConstIteratorPtr : IQCborArray__ConstIterator, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(QCborArray__ConstIteratorPtr other)
	{
		return .(CQt.QCborArray__ConstIterator_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QCborArray__ConstIterator_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(QCborArray__ConstIteratorPtr other)
	{
		CQt.QCborArray__ConstIterator_OperatorAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
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
	
	public bool OperatorEqual(QCborArray__IteratorPtr o)
	{
		return CQt.QCborArray__ConstIterator_OperatorEqual(this.nativePtr, (o == default || o.NativePtr == default) ? default : o.NativePtr);
	}
	
	public bool OperatorNotEqual(QCborArray__IteratorPtr o)
	{
		return CQt.QCborArray__ConstIterator_OperatorNotEqual(this.nativePtr, (o == default || o.NativePtr == default) ? default : o.NativePtr);
	}
	
	public bool OperatorLesser(QCborArray__IteratorPtr other)
	{
		return CQt.QCborArray__ConstIterator_OperatorLesser(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorLesserOrEqual(QCborArray__IteratorPtr other)
	{
		return CQt.QCborArray__ConstIterator_OperatorLesserOrEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorGreater(QCborArray__IteratorPtr other)
	{
		return CQt.QCborArray__ConstIterator_OperatorGreater(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorGreaterOrEqual(QCborArray__IteratorPtr other)
	{
		return CQt.QCborArray__ConstIterator_OperatorGreaterOrEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorEqualWithQCborArrayConstIterator(QCborArray__ConstIteratorPtr o)
	{
		return CQt.QCborArray__ConstIterator_OperatorEqualWithQCborArrayConstIterator(this.nativePtr, (o == default || o.NativePtr == default) ? default : o.NativePtr);
	}
	
	public bool OperatorNotEqualWithQCborArrayConstIterator(QCborArray__ConstIteratorPtr o)
	{
		return CQt.QCborArray__ConstIterator_OperatorNotEqualWithQCborArrayConstIterator(this.nativePtr, (o == default || o.NativePtr == default) ? default : o.NativePtr);
	}
	
	public bool OperatorLesserWithOther(QCborArray__ConstIteratorPtr other)
	{
		return CQt.QCborArray__ConstIterator_OperatorLesserWithOther(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorLesserOrEqualWithOther(QCborArray__ConstIteratorPtr other)
	{
		return CQt.QCborArray__ConstIterator_OperatorLesserOrEqualWithOther(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorGreaterWithOther(QCborArray__ConstIteratorPtr other)
	{
		return CQt.QCborArray__ConstIterator_OperatorGreaterWithOther(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorGreaterOrEqualWithOther(QCborArray__ConstIteratorPtr other)
	{
		return CQt.QCborArray__ConstIterator_OperatorGreaterOrEqualWithOther(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void* OperatorPlusPlus()
	{
		return CQt.QCborArray__ConstIterator_OperatorPlusPlus(this.nativePtr);
	}
	
	public void OperatorPlusPlusWithInt(int32 param1)
	{
		CQt.QCborArray__ConstIterator_OperatorPlusPlusWithInt(this.nativePtr, param1);
	}
	
	public void* OperatorMinusMinus()
	{
		return CQt.QCborArray__ConstIterator_OperatorMinusMinus(this.nativePtr);
	}
	
	public void OperatorMinusMinusWithInt(int32 param1)
	{
		CQt.QCborArray__ConstIterator_OperatorMinusMinusWithInt(this.nativePtr, param1);
	}
	
	public void* OperatorPlusAssign(int32 j)
	{
		return CQt.QCborArray__ConstIterator_OperatorPlusAssign(this.nativePtr, j);
	}
	
	public void* OperatorMinusAssign(int32 j)
	{
		return CQt.QCborArray__ConstIterator_OperatorMinusAssign(this.nativePtr, j);
	}
	
	public void OperatorPlus(int32 j)
	{
		CQt.QCborArray__ConstIterator_OperatorPlus(this.nativePtr, j);
	}
	
	public void OperatorMinus(int32 j)
	{
		CQt.QCborArray__ConstIterator_OperatorMinus(this.nativePtr, j);
	}
	
	public int32 OperatorMinusWithQCborArrayConstIterator(QCborArray__ConstIteratorPtr j)
	{
		return CQt.QCborArray__ConstIterator_OperatorMinusWithQCborArrayConstIterator(this.nativePtr, default);
	}
	
}
public class QCborArray__ConstIterator
{
	public QCborArray__ConstIteratorPtr handle;
	
	public static implicit operator QCborArray__ConstIteratorPtr(Self self)
	{
		return self.handle;
	}
	
	public this(QCborArray__ConstIteratorPtr other)
	{
		this.handle = QCborArray__ConstIteratorPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(QCborArray__ConstIteratorPtr other)
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
	
	public bool OperatorEqual(QCborArray__IteratorPtr o)
	{
		return this.handle.OperatorEqual(o);
	}
	
	public bool OperatorNotEqual(QCborArray__IteratorPtr o)
	{
		return this.handle.OperatorNotEqual(o);
	}
	
	public bool OperatorLesser(QCborArray__IteratorPtr other)
	{
		return this.handle.OperatorLesser(other);
	}
	
	public bool OperatorLesserOrEqual(QCborArray__IteratorPtr other)
	{
		return this.handle.OperatorLesserOrEqual(other);
	}
	
	public bool OperatorGreater(QCborArray__IteratorPtr other)
	{
		return this.handle.OperatorGreater(other);
	}
	
	public bool OperatorGreaterOrEqual(QCborArray__IteratorPtr other)
	{
		return this.handle.OperatorGreaterOrEqual(other);
	}
	
	public bool OperatorEqualWithQCborArrayConstIterator(QCborArray__ConstIteratorPtr o)
	{
		return this.handle.OperatorEqualWithQCborArrayConstIterator(o);
	}
	
	public bool OperatorNotEqualWithQCborArrayConstIterator(QCborArray__ConstIteratorPtr o)
	{
		return this.handle.OperatorNotEqualWithQCborArrayConstIterator(o);
	}
	
	public bool OperatorLesserWithOther(QCborArray__ConstIteratorPtr other)
	{
		return this.handle.OperatorLesserWithOther(other);
	}
	
	public bool OperatorLesserOrEqualWithOther(QCborArray__ConstIteratorPtr other)
	{
		return this.handle.OperatorLesserOrEqualWithOther(other);
	}
	
	public bool OperatorGreaterWithOther(QCborArray__ConstIteratorPtr other)
	{
		return this.handle.OperatorGreaterWithOther(other);
	}
	
	public bool OperatorGreaterOrEqualWithOther(QCborArray__ConstIteratorPtr other)
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
	
	public int32 OperatorMinusWithQCborArrayConstIterator(QCborArray__ConstIteratorPtr j)
	{
		return this.handle.OperatorMinusWithQCborArrayConstIterator(default);
	}
	
}
extension CQt
{
	[LinkName("QCborArray__ConstIterator_new")]
	public static extern void* QCborArray__ConstIterator_new(void* other);
	[LinkName("QCborArray__ConstIterator_new2")]
	public static extern void* QCborArray__ConstIterator_new2();
	[LinkName("QCborArray__ConstIterator_new3")]
	public static extern void* QCborArray__ConstIterator_new3(void* param1);
	[LinkName("QCborArray__ConstIterator_OperatorAssign")]
	public static extern void QCborArray__ConstIterator_OperatorAssign(void* c_this, void* other);
	[LinkName("QCborArray__ConstIterator_OperatorMultiply")]
	public static extern void QCborArray__ConstIterator_OperatorMultiply(void* c_this);
	[LinkName("QCborArray__ConstIterator_OperatorMinusGreater")]
	public static extern void* QCborArray__ConstIterator_OperatorMinusGreater(void* c_this);
	[LinkName("QCborArray__ConstIterator_OperatorSubscript")]
	public static extern void QCborArray__ConstIterator_OperatorSubscript(void* c_this, int32 j);
	[LinkName("QCborArray__ConstIterator_OperatorEqual")]
	public static extern bool QCborArray__ConstIterator_OperatorEqual(void* c_this, void* o);
	[LinkName("QCborArray__ConstIterator_OperatorNotEqual")]
	public static extern bool QCborArray__ConstIterator_OperatorNotEqual(void* c_this, void* o);
	[LinkName("QCborArray__ConstIterator_OperatorLesser")]
	public static extern bool QCborArray__ConstIterator_OperatorLesser(void* c_this, void* other);
	[LinkName("QCborArray__ConstIterator_OperatorLesserOrEqual")]
	public static extern bool QCborArray__ConstIterator_OperatorLesserOrEqual(void* c_this, void* other);
	[LinkName("QCborArray__ConstIterator_OperatorGreater")]
	public static extern bool QCborArray__ConstIterator_OperatorGreater(void* c_this, void* other);
	[LinkName("QCborArray__ConstIterator_OperatorGreaterOrEqual")]
	public static extern bool QCborArray__ConstIterator_OperatorGreaterOrEqual(void* c_this, void* other);
	[LinkName("QCborArray__ConstIterator_OperatorEqualWithQCborArrayConstIterator")]
	public static extern bool QCborArray__ConstIterator_OperatorEqualWithQCborArrayConstIterator(void* c_this, void* o);
	[LinkName("QCborArray__ConstIterator_OperatorNotEqualWithQCborArrayConstIterator")]
	public static extern bool QCborArray__ConstIterator_OperatorNotEqualWithQCborArrayConstIterator(void* c_this, void* o);
	[LinkName("QCborArray__ConstIterator_OperatorLesserWithOther")]
	public static extern bool QCborArray__ConstIterator_OperatorLesserWithOther(void* c_this, void* other);
	[LinkName("QCborArray__ConstIterator_OperatorLesserOrEqualWithOther")]
	public static extern bool QCborArray__ConstIterator_OperatorLesserOrEqualWithOther(void* c_this, void* other);
	[LinkName("QCborArray__ConstIterator_OperatorGreaterWithOther")]
	public static extern bool QCborArray__ConstIterator_OperatorGreaterWithOther(void* c_this, void* other);
	[LinkName("QCborArray__ConstIterator_OperatorGreaterOrEqualWithOther")]
	public static extern bool QCborArray__ConstIterator_OperatorGreaterOrEqualWithOther(void* c_this, void* other);
	[LinkName("QCborArray__ConstIterator_OperatorPlusPlus")]
	public static extern void* QCborArray__ConstIterator_OperatorPlusPlus(void* c_this);
	[LinkName("QCborArray__ConstIterator_OperatorPlusPlusWithInt")]
	public static extern void QCborArray__ConstIterator_OperatorPlusPlusWithInt(void* c_this, int32 param1);
	[LinkName("QCborArray__ConstIterator_OperatorMinusMinus")]
	public static extern void* QCborArray__ConstIterator_OperatorMinusMinus(void* c_this);
	[LinkName("QCborArray__ConstIterator_OperatorMinusMinusWithInt")]
	public static extern void QCborArray__ConstIterator_OperatorMinusMinusWithInt(void* c_this, int32 param1);
	[LinkName("QCborArray__ConstIterator_OperatorPlusAssign")]
	public static extern void* QCborArray__ConstIterator_OperatorPlusAssign(void* c_this, int32 j);
	[LinkName("QCborArray__ConstIterator_OperatorMinusAssign")]
	public static extern void* QCborArray__ConstIterator_OperatorMinusAssign(void* c_this, int32 j);
	[LinkName("QCborArray__ConstIterator_OperatorPlus")]
	public static extern void QCborArray__ConstIterator_OperatorPlus(void* c_this, int32 j);
	[LinkName("QCborArray__ConstIterator_OperatorMinus")]
	public static extern void QCborArray__ConstIterator_OperatorMinus(void* c_this, int32 j);
	[LinkName("QCborArray__ConstIterator_OperatorMinusWithQCborArrayConstIterator")]
	public static extern int32 QCborArray__ConstIterator_OperatorMinusWithQCborArrayConstIterator(void* c_this, void j);
	/// Delete this object from C++ memory
	[LinkName("QCborArray__ConstIterator_Delete")]
	public static extern void QCborArray__ConstIterator_Delete(void* self);
}