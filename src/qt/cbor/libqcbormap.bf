using System;
using System.Interop;
namespace Qt;

public interface IQCborMap
{
	void* NativePtr { get; }
}
public struct QCborMapPtr : IQCborMap, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QCborMap_new());
	}
	
	public void Dispose()
	{
		CQt.QCborMap_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQCborMap other)
	{
		CQt.QCborMap_OperatorAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void Swap(IQCborMap other)
	{
		CQt.QCborMap_Swap(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
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
		CQt.QCborMap_Value3(this.nativePtr, (key == default || key.NativePtr == default) ? default : key.NativePtr);
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
		CQt.QCborMap_OperatorSubscript3(this.nativePtr, (key == default || key.NativePtr == default) ? default : key.NativePtr);
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
		CQt.QCborMap_OperatorSubscript7(this.nativePtr, (key == default || key.NativePtr == default) ? default : key.NativePtr);
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
		CQt.QCborMap_Take3(this.nativePtr, (key == default || key.NativePtr == default) ? default : key.NativePtr);
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
		CQt.QCborMap_Remove3(this.nativePtr, (key == default || key.NativePtr == default) ? default : key.NativePtr);
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
		return CQt.QCborMap_Contains3(this.nativePtr, (key == default || key.NativePtr == default) ? default : key.NativePtr);
	}
	
	public int32 Compare(IQCborMap other)
	{
		return CQt.QCborMap_Compare(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorEqual(IQCborMap other)
	{
		return CQt.QCborMap_OperatorEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorNotEqual(IQCborMap other)
	{
		return CQt.QCborMap_OperatorNotEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorLesser(IQCborMap other)
	{
		return CQt.QCborMap_OperatorLesser(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
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
	
	public void Erase(QCborMap__IteratorPtr it)
	{
		CQt.QCborMap_Erase(this.nativePtr, default);
	}
	
	public void EraseWithIt(QCborMap__ConstIteratorPtr it)
	{
		CQt.QCborMap_EraseWithIt(this.nativePtr, default);
	}
	
	public void Extract(QCborMap__IteratorPtr it)
	{
		CQt.QCborMap_Extract(this.nativePtr, default);
	}
	
	public void ExtractWithIt(QCborMap__ConstIteratorPtr it)
	{
		CQt.QCborMap_ExtractWithIt(this.nativePtr, default);
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
		CQt.QCborMap_Find3(this.nativePtr, (key == default || key.NativePtr == default) ? default : key.NativePtr);
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
		CQt.QCborMap_ConstFind3(this.nativePtr, (key == default || key.NativePtr == default) ? default : key.NativePtr);
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
		CQt.QCborMap_Find7(this.nativePtr, (key == default || key.NativePtr == default) ? default : key.NativePtr);
	}
	
	public void Insert(int64 key, IQCborValue value_)
	{
		CQt.QCborMap_Insert(this.nativePtr, key, (value_ == default || value_.NativePtr == default) ? default : value_.NativePtr);
	}
	
	public void Insert3(String key, IQCborValue value_)
	{
		CQt.QCborMap_Insert3(this.nativePtr, libqt_string(key), (value_ == default || value_.NativePtr == default) ? default : value_.NativePtr);
	}
	
	public void Insert4(IQCborValue key, IQCborValue value_)
	{
		CQt.QCborMap_Insert4(this.nativePtr, (key == default || key.NativePtr == default) ? default : key.NativePtr, (value_ == default || value_.NativePtr == default) ? default : value_.NativePtr);
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
		CQt.QCborMap_FromJsonObject((o == default || o.NativePtr == default) ? default : o.NativePtr);
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
public class QCborMap
{
	public QCborMapPtr handle;
	
	public static implicit operator QCborMapPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QCborMapPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQCborMap other)
	{
		this.handle.OperatorAssign(other);
	}
	
	public void Swap(IQCborMap other)
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
	
	public void[] Keys()
	{
		return this.handle.Keys();
	}
	
	public void Value(int64 key)
	{
		this.handle.Value(key);
	}
	
	public void Value2(String key)
	{
		this.handle.Value2(key);
	}
	
	public void Value3(IQCborValue key)
	{
		this.handle.Value3(key);
	}
	
	public void OperatorSubscript(int64 key)
	{
		this.handle.OperatorSubscript(key);
	}
	
	public void OperatorSubscript2(String key)
	{
		this.handle.OperatorSubscript2(key);
	}
	
	public void OperatorSubscript3(IQCborValue key)
	{
		this.handle.OperatorSubscript3(key);
	}
	
	public void OperatorSubscript4(int64 key)
	{
		this.handle.OperatorSubscript4(key);
	}
	
	public void OperatorSubscript6(String key)
	{
		this.handle.OperatorSubscript6(key);
	}
	
	public void OperatorSubscript7(IQCborValue key)
	{
		this.handle.OperatorSubscript7(key);
	}
	
	public void Take(int64 key)
	{
		this.handle.Take(key);
	}
	
	public void Take2(String key)
	{
		this.handle.Take2(key);
	}
	
	public void Take3(IQCborValue key)
	{
		this.handle.Take3(key);
	}
	
	public void Remove(int64 key)
	{
		this.handle.Remove(key);
	}
	
	public void Remove2(String key)
	{
		this.handle.Remove2(key);
	}
	
	public void Remove3(IQCborValue key)
	{
		this.handle.Remove3(key);
	}
	
	public bool Contains(int64 key)
	{
		return this.handle.Contains(key);
	}
	
	public bool Contains2(String key)
	{
		return this.handle.Contains2(key);
	}
	
	public bool Contains3(IQCborValue key)
	{
		return this.handle.Contains3(key);
	}
	
	public int32 Compare(IQCborMap other)
	{
		return this.handle.Compare(other);
	}
	
	public bool OperatorEqual(IQCborMap other)
	{
		return this.handle.OperatorEqual(other);
	}
	
	public bool OperatorNotEqual(IQCborMap other)
	{
		return this.handle.OperatorNotEqual(other);
	}
	
	public bool OperatorLesser(IQCborMap other)
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
	
	public void Erase(QCborMap__IteratorPtr it)
	{
		this.handle.Erase(default);
	}
	
	public void EraseWithIt(QCborMap__ConstIteratorPtr it)
	{
		this.handle.EraseWithIt(default);
	}
	
	public void Extract(QCborMap__IteratorPtr it)
	{
		this.handle.Extract(default);
	}
	
	public void ExtractWithIt(QCborMap__ConstIteratorPtr it)
	{
		this.handle.ExtractWithIt(default);
	}
	
	public bool Empty()
	{
		return this.handle.Empty();
	}
	
	public void Find(int64 key)
	{
		this.handle.Find(key);
	}
	
	public void Find2(String key)
	{
		this.handle.Find2(key);
	}
	
	public void Find3(IQCborValue key)
	{
		this.handle.Find3(key);
	}
	
	public void ConstFind(int64 key)
	{
		this.handle.ConstFind(key);
	}
	
	public void ConstFind2(String key)
	{
		this.handle.ConstFind2(key);
	}
	
	public void ConstFind3(IQCborValue key)
	{
		this.handle.ConstFind3(key);
	}
	
	public void Find4(int64 key)
	{
		this.handle.Find4(key);
	}
	
	public void Find6(String key)
	{
		this.handle.Find6(key);
	}
	
	public void Find7(IQCborValue key)
	{
		this.handle.Find7(key);
	}
	
	public void Insert(int64 key, IQCborValue value_)
	{
		this.handle.Insert(key, value_);
	}
	
	public void Insert3(String key, IQCborValue value_)
	{
		this.handle.Insert3(key, value_);
	}
	
	public void Insert4(IQCborValue key, IQCborValue value_)
	{
		this.handle.Insert4(key, value_);
	}
	
	public void InsertWithQCborMapvalueType(void* v)
	{
		this.handle.InsertWithQCborMapvalueType(v);
	}
	
	public static void FromVariantMap(void* mapVal)
	{
		QCborMapPtr.FromVariantMap(mapVal);
	}
	
	public static void FromVariantHash(void* hash)
	{
		QCborMapPtr.FromVariantHash(hash);
	}
	
	public static void FromJsonObject(IQJsonObject o)
	{
		QCborMapPtr.FromJsonObject(o);
	}
	
	public void* ToVariantMap()
	{
		return this.handle.ToVariantMap();
	}
	
	public void* ToVariantHash()
	{
		return this.handle.ToVariantHash();
	}
	
	public void ToJsonObject()
	{
		this.handle.ToJsonObject();
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
public struct QCborMap__IteratorPtr : IQCborMap__Iterator, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(QCborMap__IteratorPtr other)
	{
		return .(CQt.QCborMap__Iterator_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QCborMap__Iterator_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(QCborMap__IteratorPtr other)
	{
		CQt.QCborMap__Iterator_OperatorAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
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
	
	public bool OperatorEqual(QCborMap__IteratorPtr o)
	{
		return CQt.QCborMap__Iterator_OperatorEqual(this.nativePtr, (o == default || o.NativePtr == default) ? default : o.NativePtr);
	}
	
	public bool OperatorNotEqual(QCborMap__IteratorPtr o)
	{
		return CQt.QCborMap__Iterator_OperatorNotEqual(this.nativePtr, (o == default || o.NativePtr == default) ? default : o.NativePtr);
	}
	
	public bool OperatorLesser(QCborMap__IteratorPtr other)
	{
		return CQt.QCborMap__Iterator_OperatorLesser(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorLesserOrEqual(QCborMap__IteratorPtr other)
	{
		return CQt.QCborMap__Iterator_OperatorLesserOrEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorGreater(QCborMap__IteratorPtr other)
	{
		return CQt.QCborMap__Iterator_OperatorGreater(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorGreaterOrEqual(QCborMap__IteratorPtr other)
	{
		return CQt.QCborMap__Iterator_OperatorGreaterOrEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorEqualWithQCborMapConstIterator(QCborMap__ConstIteratorPtr o)
	{
		return CQt.QCborMap__Iterator_OperatorEqualWithQCborMapConstIterator(this.nativePtr, (o == default || o.NativePtr == default) ? default : o.NativePtr);
	}
	
	public bool OperatorNotEqualWithQCborMapConstIterator(QCborMap__ConstIteratorPtr o)
	{
		return CQt.QCborMap__Iterator_OperatorNotEqualWithQCborMapConstIterator(this.nativePtr, (o == default || o.NativePtr == default) ? default : o.NativePtr);
	}
	
	public bool OperatorLesserWithOther(QCborMap__ConstIteratorPtr other)
	{
		return CQt.QCborMap__Iterator_OperatorLesserWithOther(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorLesserOrEqualWithOther(QCborMap__ConstIteratorPtr other)
	{
		return CQt.QCborMap__Iterator_OperatorLesserOrEqualWithOther(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorGreaterWithOther(QCborMap__ConstIteratorPtr other)
	{
		return CQt.QCborMap__Iterator_OperatorGreaterWithOther(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorGreaterOrEqualWithOther(QCborMap__ConstIteratorPtr other)
	{
		return CQt.QCborMap__Iterator_OperatorGreaterOrEqualWithOther(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
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
	
	public int32 OperatorMinusWithQCborMapIterator(QCborMap__IteratorPtr j)
	{
		return CQt.QCborMap__Iterator_OperatorMinusWithQCborMapIterator(this.nativePtr, default);
	}
	
}
public class QCborMap__Iterator
{
	public QCborMap__IteratorPtr handle;
	
	public static implicit operator QCborMap__IteratorPtr(Self self)
	{
		return self.handle;
	}
	
	public this(QCborMap__IteratorPtr other)
	{
		this.handle = QCborMap__IteratorPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(QCborMap__IteratorPtr other)
	{
		this.handle.OperatorAssign(other);
	}
	
	public void* OperatorMultiply()
	{
		return this.handle.OperatorMultiply();
	}
	
	public void* OperatorSubscript(int32 j)
	{
		return this.handle.OperatorSubscript(j);
	}
	
	public void* OperatorMinusGreater()
	{
		return this.handle.OperatorMinusGreater();
	}
	
	public void* OperatorMinusGreater2()
	{
		return this.handle.OperatorMinusGreater2();
	}
	
	public void Key()
	{
		this.handle.Key();
	}
	
	public void Value()
	{
		this.handle.Value();
	}
	
	public bool OperatorEqual(QCborMap__IteratorPtr o)
	{
		return this.handle.OperatorEqual(o);
	}
	
	public bool OperatorNotEqual(QCborMap__IteratorPtr o)
	{
		return this.handle.OperatorNotEqual(o);
	}
	
	public bool OperatorLesser(QCborMap__IteratorPtr other)
	{
		return this.handle.OperatorLesser(other);
	}
	
	public bool OperatorLesserOrEqual(QCborMap__IteratorPtr other)
	{
		return this.handle.OperatorLesserOrEqual(other);
	}
	
	public bool OperatorGreater(QCborMap__IteratorPtr other)
	{
		return this.handle.OperatorGreater(other);
	}
	
	public bool OperatorGreaterOrEqual(QCborMap__IteratorPtr other)
	{
		return this.handle.OperatorGreaterOrEqual(other);
	}
	
	public bool OperatorEqualWithQCborMapConstIterator(QCborMap__ConstIteratorPtr o)
	{
		return this.handle.OperatorEqualWithQCborMapConstIterator(o);
	}
	
	public bool OperatorNotEqualWithQCborMapConstIterator(QCborMap__ConstIteratorPtr o)
	{
		return this.handle.OperatorNotEqualWithQCborMapConstIterator(o);
	}
	
	public bool OperatorLesserWithOther(QCborMap__ConstIteratorPtr other)
	{
		return this.handle.OperatorLesserWithOther(other);
	}
	
	public bool OperatorLesserOrEqualWithOther(QCborMap__ConstIteratorPtr other)
	{
		return this.handle.OperatorLesserOrEqualWithOther(other);
	}
	
	public bool OperatorGreaterWithOther(QCborMap__ConstIteratorPtr other)
	{
		return this.handle.OperatorGreaterWithOther(other);
	}
	
	public bool OperatorGreaterOrEqualWithOther(QCborMap__ConstIteratorPtr other)
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
	
	public int32 OperatorMinusWithQCborMapIterator(QCborMap__IteratorPtr j)
	{
		return this.handle.OperatorMinusWithQCborMapIterator(default);
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
public struct QCborMap__ConstIteratorPtr : IQCborMap__ConstIterator, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(QCborMap__ConstIteratorPtr other)
	{
		return .(CQt.QCborMap__ConstIterator_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QCborMap__ConstIterator_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(QCborMap__ConstIteratorPtr other)
	{
		CQt.QCborMap__ConstIterator_OperatorAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
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
	
	public bool OperatorEqual(QCborMap__IteratorPtr o)
	{
		return CQt.QCborMap__ConstIterator_OperatorEqual(this.nativePtr, (o == default || o.NativePtr == default) ? default : o.NativePtr);
	}
	
	public bool OperatorNotEqual(QCborMap__IteratorPtr o)
	{
		return CQt.QCborMap__ConstIterator_OperatorNotEqual(this.nativePtr, (o == default || o.NativePtr == default) ? default : o.NativePtr);
	}
	
	public bool OperatorLesser(QCborMap__IteratorPtr other)
	{
		return CQt.QCborMap__ConstIterator_OperatorLesser(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorLesserOrEqual(QCborMap__IteratorPtr other)
	{
		return CQt.QCborMap__ConstIterator_OperatorLesserOrEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorGreater(QCborMap__IteratorPtr other)
	{
		return CQt.QCborMap__ConstIterator_OperatorGreater(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorGreaterOrEqual(QCborMap__IteratorPtr other)
	{
		return CQt.QCborMap__ConstIterator_OperatorGreaterOrEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorEqualWithQCborMapConstIterator(QCborMap__ConstIteratorPtr o)
	{
		return CQt.QCborMap__ConstIterator_OperatorEqualWithQCborMapConstIterator(this.nativePtr, (o == default || o.NativePtr == default) ? default : o.NativePtr);
	}
	
	public bool OperatorNotEqualWithQCborMapConstIterator(QCborMap__ConstIteratorPtr o)
	{
		return CQt.QCborMap__ConstIterator_OperatorNotEqualWithQCborMapConstIterator(this.nativePtr, (o == default || o.NativePtr == default) ? default : o.NativePtr);
	}
	
	public bool OperatorLesserWithOther(QCborMap__ConstIteratorPtr other)
	{
		return CQt.QCborMap__ConstIterator_OperatorLesserWithOther(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorLesserOrEqualWithOther(QCborMap__ConstIteratorPtr other)
	{
		return CQt.QCborMap__ConstIterator_OperatorLesserOrEqualWithOther(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorGreaterWithOther(QCborMap__ConstIteratorPtr other)
	{
		return CQt.QCborMap__ConstIterator_OperatorGreaterWithOther(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorGreaterOrEqualWithOther(QCborMap__ConstIteratorPtr other)
	{
		return CQt.QCborMap__ConstIterator_OperatorGreaterOrEqualWithOther(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
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
	
	public int32 OperatorMinusWithQCborMapConstIterator(QCborMap__ConstIteratorPtr j)
	{
		return CQt.QCborMap__ConstIterator_OperatorMinusWithQCborMapConstIterator(this.nativePtr, default);
	}
	
}
public class QCborMap__ConstIterator
{
	public QCborMap__ConstIteratorPtr handle;
	
	public static implicit operator QCborMap__ConstIteratorPtr(Self self)
	{
		return self.handle;
	}
	
	public this(QCborMap__ConstIteratorPtr other)
	{
		this.handle = QCborMap__ConstIteratorPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(QCborMap__ConstIteratorPtr other)
	{
		this.handle.OperatorAssign(other);
	}
	
	public void* OperatorMultiply()
	{
		return this.handle.OperatorMultiply();
	}
	
	public void* OperatorSubscript(int32 j)
	{
		return this.handle.OperatorSubscript(j);
	}
	
	public void* OperatorMinusGreater()
	{
		return this.handle.OperatorMinusGreater();
	}
	
	public void Key()
	{
		this.handle.Key();
	}
	
	public void Value()
	{
		this.handle.Value();
	}
	
	public bool OperatorEqual(QCborMap__IteratorPtr o)
	{
		return this.handle.OperatorEqual(o);
	}
	
	public bool OperatorNotEqual(QCborMap__IteratorPtr o)
	{
		return this.handle.OperatorNotEqual(o);
	}
	
	public bool OperatorLesser(QCborMap__IteratorPtr other)
	{
		return this.handle.OperatorLesser(other);
	}
	
	public bool OperatorLesserOrEqual(QCborMap__IteratorPtr other)
	{
		return this.handle.OperatorLesserOrEqual(other);
	}
	
	public bool OperatorGreater(QCborMap__IteratorPtr other)
	{
		return this.handle.OperatorGreater(other);
	}
	
	public bool OperatorGreaterOrEqual(QCborMap__IteratorPtr other)
	{
		return this.handle.OperatorGreaterOrEqual(other);
	}
	
	public bool OperatorEqualWithQCborMapConstIterator(QCborMap__ConstIteratorPtr o)
	{
		return this.handle.OperatorEqualWithQCborMapConstIterator(o);
	}
	
	public bool OperatorNotEqualWithQCborMapConstIterator(QCborMap__ConstIteratorPtr o)
	{
		return this.handle.OperatorNotEqualWithQCborMapConstIterator(o);
	}
	
	public bool OperatorLesserWithOther(QCborMap__ConstIteratorPtr other)
	{
		return this.handle.OperatorLesserWithOther(other);
	}
	
	public bool OperatorLesserOrEqualWithOther(QCborMap__ConstIteratorPtr other)
	{
		return this.handle.OperatorLesserOrEqualWithOther(other);
	}
	
	public bool OperatorGreaterWithOther(QCborMap__ConstIteratorPtr other)
	{
		return this.handle.OperatorGreaterWithOther(other);
	}
	
	public bool OperatorGreaterOrEqualWithOther(QCborMap__ConstIteratorPtr other)
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
	
	public int32 OperatorMinusWithQCborMapConstIterator(QCborMap__ConstIteratorPtr j)
	{
		return this.handle.OperatorMinusWithQCborMapConstIterator(default);
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