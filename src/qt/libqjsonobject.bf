using System;
using System.Interop;
namespace Qt;

public interface IQJsonObject
{
	void* NativePtr { get; }
}
public struct QJsonObjectPtr : IQJsonObject, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QJsonObject_new());
	}
	
	public void Dispose()
	{
		CQt.QJsonObject_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQJsonObject other)
	{
		CQt.QJsonObject_OperatorAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void Swap(IQJsonObject other)
	{
		CQt.QJsonObject_Swap(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
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
	
	public void Value(String key)
	{
		CQt.QJsonObject_Value(this.nativePtr, libqt_string(key));
	}
	
	public void OperatorSubscript(String key)
	{
		CQt.QJsonObject_OperatorSubscript(this.nativePtr, libqt_string(key));
	}
	
	public void OperatorSubscriptWithKey(String key)
	{
		CQt.QJsonObject_OperatorSubscriptWithKey(this.nativePtr, libqt_string(key));
	}
	
	public void Remove(String key)
	{
		CQt.QJsonObject_Remove(this.nativePtr, libqt_string(key));
	}
	
	public void Take(String key)
	{
		CQt.QJsonObject_Take(this.nativePtr, libqt_string(key));
	}
	
	public bool Contains(String key)
	{
		return CQt.QJsonObject_Contains(this.nativePtr, libqt_string(key));
	}
	
	public bool OperatorEqual(IQJsonObject other)
	{
		return CQt.QJsonObject_OperatorEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorNotEqual(IQJsonObject other)
	{
		return CQt.QJsonObject_OperatorNotEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void Begin()
	{
		CQt.QJsonObject_Begin(this.nativePtr);
	}
	
	public void Begin2()
	{
		CQt.QJsonObject_Begin2(this.nativePtr);
	}
	
	public void ConstBegin()
	{
		CQt.QJsonObject_ConstBegin(this.nativePtr);
	}
	
	public void End()
	{
		CQt.QJsonObject_End(this.nativePtr);
	}
	
	public void End2()
	{
		CQt.QJsonObject_End2(this.nativePtr);
	}
	
	public void ConstEnd()
	{
		CQt.QJsonObject_ConstEnd(this.nativePtr);
	}
	
	public void Erase(QJsonObject__iteratorPtr it)
	{
		CQt.QJsonObject_Erase(this.nativePtr, default);
	}
	
	public void Find(String key)
	{
		CQt.QJsonObject_Find(this.nativePtr, libqt_string(key));
	}
	
	public void FindWithKey(String key)
	{
		CQt.QJsonObject_FindWithKey(this.nativePtr, libqt_string(key));
	}
	
	public void ConstFind(String key)
	{
		CQt.QJsonObject_ConstFind(this.nativePtr, libqt_string(key));
	}
	
	public void Insert(String key, IQJsonValue value)
	{
		CQt.QJsonObject_Insert(this.nativePtr, libqt_string(key), (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public bool Empty()
	{
		return CQt.QJsonObject_Empty(this.nativePtr);
	}
	
}
public class QJsonObject
{
	public QJsonObjectPtr handle;
	
	public static implicit operator QJsonObjectPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QJsonObjectPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQJsonObject other)
	{
		this.handle.OperatorAssign(other);
	}
	
	public void Swap(IQJsonObject other)
	{
		this.handle.Swap(other);
	}
	
	public static void FromVariantMap(void* mapVal)
	{
		QJsonObjectPtr.FromVariantMap(mapVal);
	}
	
	public void* ToVariantMap()
	{
		return this.handle.ToVariantMap();
	}
	
	public static void FromVariantHash(void* mapVal)
	{
		QJsonObjectPtr.FromVariantHash(mapVal);
	}
	
	public void* ToVariantHash()
	{
		return this.handle.ToVariantHash();
	}
	
	public libqt_string[] Keys()
	{
		return this.handle.Keys();
	}
	
	public int32 Size()
	{
		return this.handle.Size();
	}
	
	public int32 Count()
	{
		return this.handle.Count();
	}
	
	public int32 Length()
	{
		return this.handle.Length();
	}
	
	public bool IsEmpty()
	{
		return this.handle.IsEmpty();
	}
	
	public void Value(String key)
	{
		this.handle.Value(key);
	}
	
	public void OperatorSubscript(String key)
	{
		this.handle.OperatorSubscript(key);
	}
	
	public void OperatorSubscriptWithKey(String key)
	{
		this.handle.OperatorSubscriptWithKey(key);
	}
	
	public void Remove(String key)
	{
		this.handle.Remove(key);
	}
	
	public void Take(String key)
	{
		this.handle.Take(key);
	}
	
	public bool Contains(String key)
	{
		return this.handle.Contains(key);
	}
	
	public bool OperatorEqual(IQJsonObject other)
	{
		return this.handle.OperatorEqual(other);
	}
	
	public bool OperatorNotEqual(IQJsonObject other)
	{
		return this.handle.OperatorNotEqual(other);
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
	
	public void Erase(QJsonObject__iteratorPtr it)
	{
		this.handle.Erase(default);
	}
	
	public void Find(String key)
	{
		this.handle.Find(key);
	}
	
	public void FindWithKey(String key)
	{
		this.handle.FindWithKey(key);
	}
	
	public void ConstFind(String key)
	{
		this.handle.ConstFind(key);
	}
	
	public void Insert(String key, IQJsonValue value)
	{
		this.handle.Insert(key, value);
	}
	
	public bool Empty()
	{
		return this.handle.Empty();
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
	public static extern void QJsonObject_Begin(void* c_this);
	[LinkName("QJsonObject_Begin2")]
	public static extern void QJsonObject_Begin2(void* c_this);
	[LinkName("QJsonObject_ConstBegin")]
	public static extern void QJsonObject_ConstBegin(void* c_this);
	[LinkName("QJsonObject_End")]
	public static extern void QJsonObject_End(void* c_this);
	[LinkName("QJsonObject_End2")]
	public static extern void QJsonObject_End2(void* c_this);
	[LinkName("QJsonObject_ConstEnd")]
	public static extern void QJsonObject_ConstEnd(void* c_this);
	[LinkName("QJsonObject_Erase")]
	public static extern void QJsonObject_Erase(void* c_this, void it);
	[LinkName("QJsonObject_Find")]
	public static extern void QJsonObject_Find(void* c_this, libqt_string key);
	[LinkName("QJsonObject_FindWithKey")]
	public static extern void QJsonObject_FindWithKey(void* c_this, libqt_string key);
	[LinkName("QJsonObject_ConstFind")]
	public static extern void QJsonObject_ConstFind(void* c_this, libqt_string key);
	[LinkName("QJsonObject_Insert")]
	public static extern void QJsonObject_Insert(void* c_this, libqt_string key, void* value);
	[LinkName("QJsonObject_Empty")]
	public static extern bool QJsonObject_Empty(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QJsonObject_Delete")]
	public static extern void QJsonObject_Delete(void* self);
}
public interface IQJsonObject__iterator
{
	void* NativePtr { get; }
}
public struct QJsonObject__iteratorPtr : IQJsonObject__iterator, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(QJsonObject__iteratorPtr other)
	{
		return .(CQt.QJsonObject__iterator_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QJsonObject__iterator_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(QJsonObject__iteratorPtr other)
	{
		CQt.QJsonObject__iterator_OperatorAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
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
	
	public bool OperatorEqual(QJsonObject__iteratorPtr other)
	{
		return CQt.QJsonObject__iterator_OperatorEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorNotEqual(QJsonObject__iteratorPtr other)
	{
		return CQt.QJsonObject__iterator_OperatorNotEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorLesser(QJsonObject__iteratorPtr other)
	{
		return CQt.QJsonObject__iterator_OperatorLesser(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorLesserOrEqual(QJsonObject__iteratorPtr other)
	{
		return CQt.QJsonObject__iterator_OperatorLesserOrEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorGreater(QJsonObject__iteratorPtr other)
	{
		return CQt.QJsonObject__iterator_OperatorGreater(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorGreaterOrEqual(QJsonObject__iteratorPtr other)
	{
		return CQt.QJsonObject__iterator_OperatorGreaterOrEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void* OperatorPlusPlus()
	{
		return CQt.QJsonObject__iterator_OperatorPlusPlus(this.nativePtr);
	}
	
	public void OperatorPlusPlusWithInt(int32 param1)
	{
		CQt.QJsonObject__iterator_OperatorPlusPlusWithInt(this.nativePtr, param1);
	}
	
	public void* OperatorMinusMinus()
	{
		return CQt.QJsonObject__iterator_OperatorMinusMinus(this.nativePtr);
	}
	
	public void OperatorMinusMinusWithInt(int32 param1)
	{
		CQt.QJsonObject__iterator_OperatorMinusMinusWithInt(this.nativePtr, param1);
	}
	
	public void OperatorPlus(int32 j)
	{
		CQt.QJsonObject__iterator_OperatorPlus(this.nativePtr, j);
	}
	
	public void OperatorMinus(int32 j)
	{
		CQt.QJsonObject__iterator_OperatorMinus(this.nativePtr, j);
	}
	
	public void* OperatorPlusAssign(int32 j)
	{
		return CQt.QJsonObject__iterator_OperatorPlusAssign(this.nativePtr, j);
	}
	
	public void* OperatorMinusAssign(int32 j)
	{
		return CQt.QJsonObject__iterator_OperatorMinusAssign(this.nativePtr, j);
	}
	
	public int32 OperatorMinusWithQJsonObjectiterator(QJsonObject__iteratorPtr j)
	{
		return CQt.QJsonObject__iterator_OperatorMinusWithQJsonObjectiterator(this.nativePtr, default);
	}
	
	public bool OperatorEqualWithOther(QJsonObject__const_iteratorPtr other)
	{
		return CQt.QJsonObject__iterator_OperatorEqualWithOther(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorNotEqualWithOther(QJsonObject__const_iteratorPtr other)
	{
		return CQt.QJsonObject__iterator_OperatorNotEqualWithOther(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorLesserWithOther(QJsonObject__const_iteratorPtr other)
	{
		return CQt.QJsonObject__iterator_OperatorLesserWithOther(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorLesserOrEqualWithOther(QJsonObject__const_iteratorPtr other)
	{
		return CQt.QJsonObject__iterator_OperatorLesserOrEqualWithOther(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorGreaterWithOther(QJsonObject__const_iteratorPtr other)
	{
		return CQt.QJsonObject__iterator_OperatorGreaterWithOther(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorGreaterOrEqualWithOther(QJsonObject__const_iteratorPtr other)
	{
		return CQt.QJsonObject__iterator_OperatorGreaterOrEqualWithOther(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
}
public class QJsonObject__iterator
{
	public QJsonObject__iteratorPtr handle;
	
	public static implicit operator QJsonObject__iteratorPtr(Self self)
	{
		return self.handle;
	}
	
	public this(QJsonObject__iteratorPtr other)
	{
		this.handle = QJsonObject__iteratorPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(QJsonObject__iteratorPtr other)
	{
		this.handle.OperatorAssign(other);
	}
	
	public libqt_string Key()
	{
		return this.handle.Key();
	}
	
	public void Value()
	{
		this.handle.Value();
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
	
	public bool OperatorEqual(QJsonObject__iteratorPtr other)
	{
		return this.handle.OperatorEqual(other);
	}
	
	public bool OperatorNotEqual(QJsonObject__iteratorPtr other)
	{
		return this.handle.OperatorNotEqual(other);
	}
	
	public bool OperatorLesser(QJsonObject__iteratorPtr other)
	{
		return this.handle.OperatorLesser(other);
	}
	
	public bool OperatorLesserOrEqual(QJsonObject__iteratorPtr other)
	{
		return this.handle.OperatorLesserOrEqual(other);
	}
	
	public bool OperatorGreater(QJsonObject__iteratorPtr other)
	{
		return this.handle.OperatorGreater(other);
	}
	
	public bool OperatorGreaterOrEqual(QJsonObject__iteratorPtr other)
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
	
	public void OperatorPlus(int32 j)
	{
		this.handle.OperatorPlus(j);
	}
	
	public void OperatorMinus(int32 j)
	{
		this.handle.OperatorMinus(j);
	}
	
	public void* OperatorPlusAssign(int32 j)
	{
		return this.handle.OperatorPlusAssign(j);
	}
	
	public void* OperatorMinusAssign(int32 j)
	{
		return this.handle.OperatorMinusAssign(j);
	}
	
	public int32 OperatorMinusWithQJsonObjectiterator(QJsonObject__iteratorPtr j)
	{
		return this.handle.OperatorMinusWithQJsonObjectiterator(default);
	}
	
	public bool OperatorEqualWithOther(QJsonObject__const_iteratorPtr other)
	{
		return this.handle.OperatorEqualWithOther(other);
	}
	
	public bool OperatorNotEqualWithOther(QJsonObject__const_iteratorPtr other)
	{
		return this.handle.OperatorNotEqualWithOther(other);
	}
	
	public bool OperatorLesserWithOther(QJsonObject__const_iteratorPtr other)
	{
		return this.handle.OperatorLesserWithOther(other);
	}
	
	public bool OperatorLesserOrEqualWithOther(QJsonObject__const_iteratorPtr other)
	{
		return this.handle.OperatorLesserOrEqualWithOther(other);
	}
	
	public bool OperatorGreaterWithOther(QJsonObject__const_iteratorPtr other)
	{
		return this.handle.OperatorGreaterWithOther(other);
	}
	
	public bool OperatorGreaterOrEqualWithOther(QJsonObject__const_iteratorPtr other)
	{
		return this.handle.OperatorGreaterOrEqualWithOther(other);
	}
	
}
extension CQt
{
	[LinkName("QJsonObject__iterator_new")]
	public static extern void* QJsonObject__iterator_new(void* other);
	[LinkName("QJsonObject__iterator_new2")]
	public static extern void* QJsonObject__iterator_new2();
	[LinkName("QJsonObject__iterator_new3")]
	public static extern void* QJsonObject__iterator_new3(void* obj, int32 index);
	[LinkName("QJsonObject__iterator_new4")]
	public static extern void* QJsonObject__iterator_new4(void* other);
	[LinkName("QJsonObject__iterator_OperatorAssign")]
	public static extern void QJsonObject__iterator_OperatorAssign(void* c_this, void* other);
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
	public static extern bool QJsonObject__iterator_OperatorEqual(void* c_this, void* other);
	[LinkName("QJsonObject__iterator_OperatorNotEqual")]
	public static extern bool QJsonObject__iterator_OperatorNotEqual(void* c_this, void* other);
	[LinkName("QJsonObject__iterator_OperatorLesser")]
	public static extern bool QJsonObject__iterator_OperatorLesser(void* c_this, void* other);
	[LinkName("QJsonObject__iterator_OperatorLesserOrEqual")]
	public static extern bool QJsonObject__iterator_OperatorLesserOrEqual(void* c_this, void* other);
	[LinkName("QJsonObject__iterator_OperatorGreater")]
	public static extern bool QJsonObject__iterator_OperatorGreater(void* c_this, void* other);
	[LinkName("QJsonObject__iterator_OperatorGreaterOrEqual")]
	public static extern bool QJsonObject__iterator_OperatorGreaterOrEqual(void* c_this, void* other);
	[LinkName("QJsonObject__iterator_OperatorPlusPlus")]
	public static extern void* QJsonObject__iterator_OperatorPlusPlus(void* c_this);
	[LinkName("QJsonObject__iterator_OperatorPlusPlusWithInt")]
	public static extern void QJsonObject__iterator_OperatorPlusPlusWithInt(void* c_this, int32 param1);
	[LinkName("QJsonObject__iterator_OperatorMinusMinus")]
	public static extern void* QJsonObject__iterator_OperatorMinusMinus(void* c_this);
	[LinkName("QJsonObject__iterator_OperatorMinusMinusWithInt")]
	public static extern void QJsonObject__iterator_OperatorMinusMinusWithInt(void* c_this, int32 param1);
	[LinkName("QJsonObject__iterator_OperatorPlus")]
	public static extern void QJsonObject__iterator_OperatorPlus(void* c_this, int32 j);
	[LinkName("QJsonObject__iterator_OperatorMinus")]
	public static extern void QJsonObject__iterator_OperatorMinus(void* c_this, int32 j);
	[LinkName("QJsonObject__iterator_OperatorPlusAssign")]
	public static extern void* QJsonObject__iterator_OperatorPlusAssign(void* c_this, int32 j);
	[LinkName("QJsonObject__iterator_OperatorMinusAssign")]
	public static extern void* QJsonObject__iterator_OperatorMinusAssign(void* c_this, int32 j);
	[LinkName("QJsonObject__iterator_OperatorMinusWithQJsonObjectiterator")]
	public static extern int32 QJsonObject__iterator_OperatorMinusWithQJsonObjectiterator(void* c_this, void j);
	[LinkName("QJsonObject__iterator_OperatorEqualWithOther")]
	public static extern bool QJsonObject__iterator_OperatorEqualWithOther(void* c_this, void* other);
	[LinkName("QJsonObject__iterator_OperatorNotEqualWithOther")]
	public static extern bool QJsonObject__iterator_OperatorNotEqualWithOther(void* c_this, void* other);
	[LinkName("QJsonObject__iterator_OperatorLesserWithOther")]
	public static extern bool QJsonObject__iterator_OperatorLesserWithOther(void* c_this, void* other);
	[LinkName("QJsonObject__iterator_OperatorLesserOrEqualWithOther")]
	public static extern bool QJsonObject__iterator_OperatorLesserOrEqualWithOther(void* c_this, void* other);
	[LinkName("QJsonObject__iterator_OperatorGreaterWithOther")]
	public static extern bool QJsonObject__iterator_OperatorGreaterWithOther(void* c_this, void* other);
	[LinkName("QJsonObject__iterator_OperatorGreaterOrEqualWithOther")]
	public static extern bool QJsonObject__iterator_OperatorGreaterOrEqualWithOther(void* c_this, void* other);
	/// Delete this object from C++ memory
	[LinkName("QJsonObject__iterator_Delete")]
	public static extern void QJsonObject__iterator_Delete(void* self);
}
public interface IQJsonObject__const_iterator
{
	void* NativePtr { get; }
}
public struct QJsonObject__const_iteratorPtr : IQJsonObject__const_iterator, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(QJsonObject__const_iteratorPtr other)
	{
		return .(CQt.QJsonObject__const_iterator_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QJsonObject__const_iterator_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(QJsonObject__const_iteratorPtr other)
	{
		CQt.QJsonObject__const_iterator_OperatorAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
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
	
	public bool OperatorEqual(QJsonObject__const_iteratorPtr other)
	{
		return CQt.QJsonObject__const_iterator_OperatorEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorNotEqual(QJsonObject__const_iteratorPtr other)
	{
		return CQt.QJsonObject__const_iterator_OperatorNotEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorLesser(QJsonObject__const_iteratorPtr other)
	{
		return CQt.QJsonObject__const_iterator_OperatorLesser(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorLesserOrEqual(QJsonObject__const_iteratorPtr other)
	{
		return CQt.QJsonObject__const_iterator_OperatorLesserOrEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorGreater(QJsonObject__const_iteratorPtr other)
	{
		return CQt.QJsonObject__const_iterator_OperatorGreater(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorGreaterOrEqual(QJsonObject__const_iteratorPtr other)
	{
		return CQt.QJsonObject__const_iterator_OperatorGreaterOrEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void* OperatorPlusPlus()
	{
		return CQt.QJsonObject__const_iterator_OperatorPlusPlus(this.nativePtr);
	}
	
	public void OperatorPlusPlusWithInt(int32 param1)
	{
		CQt.QJsonObject__const_iterator_OperatorPlusPlusWithInt(this.nativePtr, param1);
	}
	
	public void* OperatorMinusMinus()
	{
		return CQt.QJsonObject__const_iterator_OperatorMinusMinus(this.nativePtr);
	}
	
	public void OperatorMinusMinusWithInt(int32 param1)
	{
		CQt.QJsonObject__const_iterator_OperatorMinusMinusWithInt(this.nativePtr, param1);
	}
	
	public void OperatorPlus(int32 j)
	{
		CQt.QJsonObject__const_iterator_OperatorPlus(this.nativePtr, j);
	}
	
	public void OperatorMinus(int32 j)
	{
		CQt.QJsonObject__const_iterator_OperatorMinus(this.nativePtr, j);
	}
	
	public void* OperatorPlusAssign(int32 j)
	{
		return CQt.QJsonObject__const_iterator_OperatorPlusAssign(this.nativePtr, j);
	}
	
	public void* OperatorMinusAssign(int32 j)
	{
		return CQt.QJsonObject__const_iterator_OperatorMinusAssign(this.nativePtr, j);
	}
	
	public int32 OperatorMinusWithQJsonObjectconstIterator(QJsonObject__const_iteratorPtr j)
	{
		return CQt.QJsonObject__const_iterator_OperatorMinusWithQJsonObjectconstIterator(this.nativePtr, default);
	}
	
	public bool OperatorEqualWithOther(QJsonObject__iteratorPtr other)
	{
		return CQt.QJsonObject__const_iterator_OperatorEqualWithOther(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorNotEqualWithOther(QJsonObject__iteratorPtr other)
	{
		return CQt.QJsonObject__const_iterator_OperatorNotEqualWithOther(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorLesserWithOther(QJsonObject__iteratorPtr other)
	{
		return CQt.QJsonObject__const_iterator_OperatorLesserWithOther(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorLesserOrEqualWithOther(QJsonObject__iteratorPtr other)
	{
		return CQt.QJsonObject__const_iterator_OperatorLesserOrEqualWithOther(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorGreaterWithOther(QJsonObject__iteratorPtr other)
	{
		return CQt.QJsonObject__const_iterator_OperatorGreaterWithOther(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorGreaterOrEqualWithOther(QJsonObject__iteratorPtr other)
	{
		return CQt.QJsonObject__const_iterator_OperatorGreaterOrEqualWithOther(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
}
public class QJsonObject__const_iterator
{
	public QJsonObject__const_iteratorPtr handle;
	
	public static implicit operator QJsonObject__const_iteratorPtr(Self self)
	{
		return self.handle;
	}
	
	public this(QJsonObject__const_iteratorPtr other)
	{
		this.handle = QJsonObject__const_iteratorPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(QJsonObject__const_iteratorPtr other)
	{
		this.handle.OperatorAssign(other);
	}
	
	public libqt_string Key()
	{
		return this.handle.Key();
	}
	
	public void Value()
	{
		this.handle.Value();
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
	
	public bool OperatorEqual(QJsonObject__const_iteratorPtr other)
	{
		return this.handle.OperatorEqual(other);
	}
	
	public bool OperatorNotEqual(QJsonObject__const_iteratorPtr other)
	{
		return this.handle.OperatorNotEqual(other);
	}
	
	public bool OperatorLesser(QJsonObject__const_iteratorPtr other)
	{
		return this.handle.OperatorLesser(other);
	}
	
	public bool OperatorLesserOrEqual(QJsonObject__const_iteratorPtr other)
	{
		return this.handle.OperatorLesserOrEqual(other);
	}
	
	public bool OperatorGreater(QJsonObject__const_iteratorPtr other)
	{
		return this.handle.OperatorGreater(other);
	}
	
	public bool OperatorGreaterOrEqual(QJsonObject__const_iteratorPtr other)
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
	
	public void OperatorPlus(int32 j)
	{
		this.handle.OperatorPlus(j);
	}
	
	public void OperatorMinus(int32 j)
	{
		this.handle.OperatorMinus(j);
	}
	
	public void* OperatorPlusAssign(int32 j)
	{
		return this.handle.OperatorPlusAssign(j);
	}
	
	public void* OperatorMinusAssign(int32 j)
	{
		return this.handle.OperatorMinusAssign(j);
	}
	
	public int32 OperatorMinusWithQJsonObjectconstIterator(QJsonObject__const_iteratorPtr j)
	{
		return this.handle.OperatorMinusWithQJsonObjectconstIterator(default);
	}
	
	public bool OperatorEqualWithOther(QJsonObject__iteratorPtr other)
	{
		return this.handle.OperatorEqualWithOther(other);
	}
	
	public bool OperatorNotEqualWithOther(QJsonObject__iteratorPtr other)
	{
		return this.handle.OperatorNotEqualWithOther(other);
	}
	
	public bool OperatorLesserWithOther(QJsonObject__iteratorPtr other)
	{
		return this.handle.OperatorLesserWithOther(other);
	}
	
	public bool OperatorLesserOrEqualWithOther(QJsonObject__iteratorPtr other)
	{
		return this.handle.OperatorLesserOrEqualWithOther(other);
	}
	
	public bool OperatorGreaterWithOther(QJsonObject__iteratorPtr other)
	{
		return this.handle.OperatorGreaterWithOther(other);
	}
	
	public bool OperatorGreaterOrEqualWithOther(QJsonObject__iteratorPtr other)
	{
		return this.handle.OperatorGreaterOrEqualWithOther(other);
	}
	
}
extension CQt
{
	[LinkName("QJsonObject__const_iterator_new")]
	public static extern void* QJsonObject__const_iterator_new(void* other);
	[LinkName("QJsonObject__const_iterator_new2")]
	public static extern void* QJsonObject__const_iterator_new2();
	[LinkName("QJsonObject__const_iterator_new3")]
	public static extern void* QJsonObject__const_iterator_new3(void* obj, int32 index);
	[LinkName("QJsonObject__const_iterator_new4")]
	public static extern void* QJsonObject__const_iterator_new4(void* other);
	[LinkName("QJsonObject__const_iterator_new5")]
	public static extern void* QJsonObject__const_iterator_new5(void* other);
	[LinkName("QJsonObject__const_iterator_OperatorAssign")]
	public static extern void QJsonObject__const_iterator_OperatorAssign(void* c_this, void* other);
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
	public static extern bool QJsonObject__const_iterator_OperatorEqual(void* c_this, void* other);
	[LinkName("QJsonObject__const_iterator_OperatorNotEqual")]
	public static extern bool QJsonObject__const_iterator_OperatorNotEqual(void* c_this, void* other);
	[LinkName("QJsonObject__const_iterator_OperatorLesser")]
	public static extern bool QJsonObject__const_iterator_OperatorLesser(void* c_this, void* other);
	[LinkName("QJsonObject__const_iterator_OperatorLesserOrEqual")]
	public static extern bool QJsonObject__const_iterator_OperatorLesserOrEqual(void* c_this, void* other);
	[LinkName("QJsonObject__const_iterator_OperatorGreater")]
	public static extern bool QJsonObject__const_iterator_OperatorGreater(void* c_this, void* other);
	[LinkName("QJsonObject__const_iterator_OperatorGreaterOrEqual")]
	public static extern bool QJsonObject__const_iterator_OperatorGreaterOrEqual(void* c_this, void* other);
	[LinkName("QJsonObject__const_iterator_OperatorPlusPlus")]
	public static extern void* QJsonObject__const_iterator_OperatorPlusPlus(void* c_this);
	[LinkName("QJsonObject__const_iterator_OperatorPlusPlusWithInt")]
	public static extern void QJsonObject__const_iterator_OperatorPlusPlusWithInt(void* c_this, int32 param1);
	[LinkName("QJsonObject__const_iterator_OperatorMinusMinus")]
	public static extern void* QJsonObject__const_iterator_OperatorMinusMinus(void* c_this);
	[LinkName("QJsonObject__const_iterator_OperatorMinusMinusWithInt")]
	public static extern void QJsonObject__const_iterator_OperatorMinusMinusWithInt(void* c_this, int32 param1);
	[LinkName("QJsonObject__const_iterator_OperatorPlus")]
	public static extern void QJsonObject__const_iterator_OperatorPlus(void* c_this, int32 j);
	[LinkName("QJsonObject__const_iterator_OperatorMinus")]
	public static extern void QJsonObject__const_iterator_OperatorMinus(void* c_this, int32 j);
	[LinkName("QJsonObject__const_iterator_OperatorPlusAssign")]
	public static extern void* QJsonObject__const_iterator_OperatorPlusAssign(void* c_this, int32 j);
	[LinkName("QJsonObject__const_iterator_OperatorMinusAssign")]
	public static extern void* QJsonObject__const_iterator_OperatorMinusAssign(void* c_this, int32 j);
	[LinkName("QJsonObject__const_iterator_OperatorMinusWithQJsonObjectconstIterator")]
	public static extern int32 QJsonObject__const_iterator_OperatorMinusWithQJsonObjectconstIterator(void* c_this, void j);
	[LinkName("QJsonObject__const_iterator_OperatorEqualWithOther")]
	public static extern bool QJsonObject__const_iterator_OperatorEqualWithOther(void* c_this, void* other);
	[LinkName("QJsonObject__const_iterator_OperatorNotEqualWithOther")]
	public static extern bool QJsonObject__const_iterator_OperatorNotEqualWithOther(void* c_this, void* other);
	[LinkName("QJsonObject__const_iterator_OperatorLesserWithOther")]
	public static extern bool QJsonObject__const_iterator_OperatorLesserWithOther(void* c_this, void* other);
	[LinkName("QJsonObject__const_iterator_OperatorLesserOrEqualWithOther")]
	public static extern bool QJsonObject__const_iterator_OperatorLesserOrEqualWithOther(void* c_this, void* other);
	[LinkName("QJsonObject__const_iterator_OperatorGreaterWithOther")]
	public static extern bool QJsonObject__const_iterator_OperatorGreaterWithOther(void* c_this, void* other);
	[LinkName("QJsonObject__const_iterator_OperatorGreaterOrEqualWithOther")]
	public static extern bool QJsonObject__const_iterator_OperatorGreaterOrEqualWithOther(void* c_this, void* other);
	/// Delete this object from C++ memory
	[LinkName("QJsonObject__const_iterator_Delete")]
	public static extern void QJsonObject__const_iterator_Delete(void* self);
}