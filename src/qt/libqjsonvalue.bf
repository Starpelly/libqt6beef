using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QJsonValue__Type
{
	Null = 0,
	Bool = 1,
	Double = 2,
	String = 3,
	Array = 4,
	Object = 5,
	Undefined = 128,
}
public interface IQJsonValue
{
	void* NativePtr { get; }
}
public struct QJsonValuePtr : IQJsonValue, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QJsonValue_new());
	}
	
	public void Dispose()
	{
		CQt.QJsonValue_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQJsonValue other)
	{
		CQt.QJsonValue_OperatorAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void Swap(IQJsonValue other)
	{
		CQt.QJsonValue_Swap(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public static void FromVariant(IQVariant variant)
	{
		CQt.QJsonValue_FromVariant((variant == default || variant.NativePtr == default) ? default : variant.NativePtr);
	}
	
	public void ToVariant()
	{
		CQt.QJsonValue_ToVariant(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QJsonValue_Type(this.nativePtr);
	}
	
	public bool IsNull()
	{
		return CQt.QJsonValue_IsNull(this.nativePtr);
	}
	
	public bool IsBool()
	{
		return CQt.QJsonValue_IsBool(this.nativePtr);
	}
	
	public bool IsDouble()
	{
		return CQt.QJsonValue_IsDouble(this.nativePtr);
	}
	
	public bool IsString()
	{
		return CQt.QJsonValue_IsString(this.nativePtr);
	}
	
	public bool IsArray()
	{
		return CQt.QJsonValue_IsArray(this.nativePtr);
	}
	
	public bool IsObject()
	{
		return CQt.QJsonValue_IsObject(this.nativePtr);
	}
	
	public bool IsUndefined()
	{
		return CQt.QJsonValue_IsUndefined(this.nativePtr);
	}
	
	public bool ToBool()
	{
		return CQt.QJsonValue_ToBool(this.nativePtr);
	}
	
	public int32 ToInt()
	{
		return CQt.QJsonValue_ToInt(this.nativePtr);
	}
	
	public int64 ToInteger()
	{
		return CQt.QJsonValue_ToInteger(this.nativePtr);
	}
	
	public double ToDouble()
	{
		return CQt.QJsonValue_ToDouble(this.nativePtr);
	}
	
	public libqt_string ToString()
	{
		return CQt.QJsonValue_ToString(this.nativePtr);
	}
	
	public libqt_string ToStringWithDefaultValue(String defaultValue)
	{
		return CQt.QJsonValue_ToStringWithDefaultValue(this.nativePtr, libqt_string(defaultValue));
	}
	
	public void ToArray()
	{
		CQt.QJsonValue_ToArray(this.nativePtr);
	}
	
	public void ToArrayWithDefaultValue(IQJsonArray defaultValue)
	{
		CQt.QJsonValue_ToArrayWithDefaultValue(this.nativePtr, (defaultValue == default || defaultValue.NativePtr == default) ? default : defaultValue.NativePtr);
	}
	
	public void ToObject()
	{
		CQt.QJsonValue_ToObject(this.nativePtr);
	}
	
	public void ToObjectWithDefaultValue(IQJsonObject defaultValue)
	{
		CQt.QJsonValue_ToObjectWithDefaultValue(this.nativePtr, (defaultValue == default || defaultValue.NativePtr == default) ? default : defaultValue.NativePtr);
	}
	
	public void OperatorSubscript(String key)
	{
		CQt.QJsonValue_OperatorSubscript(this.nativePtr, libqt_string(key));
	}
	
	public void OperatorSubscriptWithQsizetype(int32 i)
	{
		CQt.QJsonValue_OperatorSubscriptWithQsizetype(this.nativePtr, i);
	}
	
	public bool OperatorEqual(IQJsonValue other)
	{
		return CQt.QJsonValue_OperatorEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorNotEqual(IQJsonValue other)
	{
		return CQt.QJsonValue_OperatorNotEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool ToBool1(bool defaultValue)
	{
		return CQt.QJsonValue_ToBool1(this.nativePtr, defaultValue);
	}
	
	public int32 ToInt1(int32 defaultValue)
	{
		return CQt.QJsonValue_ToInt1(this.nativePtr, defaultValue);
	}
	
	public int64 ToInteger1(int64 defaultValue)
	{
		return CQt.QJsonValue_ToInteger1(this.nativePtr, defaultValue);
	}
	
	public double ToDouble1(double defaultValue)
	{
		return CQt.QJsonValue_ToDouble1(this.nativePtr, defaultValue);
	}
	
}
public class QJsonValue
{
	public QJsonValuePtr handle;
	
	public static implicit operator QJsonValuePtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QJsonValuePtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQJsonValue other)
	{
		this.handle.OperatorAssign(other);
	}
	
	public void Swap(IQJsonValue other)
	{
		this.handle.Swap(other);
	}
	
	public static void FromVariant(IQVariant variant)
	{
		QJsonValuePtr.FromVariant(variant);
	}
	
	public void ToVariant()
	{
		this.handle.ToVariant();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool IsNull()
	{
		return this.handle.IsNull();
	}
	
	public bool IsBool()
	{
		return this.handle.IsBool();
	}
	
	public bool IsDouble()
	{
		return this.handle.IsDouble();
	}
	
	public bool IsString()
	{
		return this.handle.IsString();
	}
	
	public bool IsArray()
	{
		return this.handle.IsArray();
	}
	
	public bool IsObject()
	{
		return this.handle.IsObject();
	}
	
	public bool IsUndefined()
	{
		return this.handle.IsUndefined();
	}
	
	public bool ToBool()
	{
		return this.handle.ToBool();
	}
	
	public int32 ToInt()
	{
		return this.handle.ToInt();
	}
	
	public int64 ToInteger()
	{
		return this.handle.ToInteger();
	}
	
	public double ToDouble()
	{
		return this.handle.ToDouble();
	}
	
	public libqt_string ToString()
	{
		return this.handle.ToString();
	}
	
	public libqt_string ToStringWithDefaultValue(String defaultValue)
	{
		return this.handle.ToStringWithDefaultValue(defaultValue);
	}
	
	public void ToArray()
	{
		this.handle.ToArray();
	}
	
	public void ToArrayWithDefaultValue(IQJsonArray defaultValue)
	{
		this.handle.ToArrayWithDefaultValue(defaultValue);
	}
	
	public void ToObject()
	{
		this.handle.ToObject();
	}
	
	public void ToObjectWithDefaultValue(IQJsonObject defaultValue)
	{
		this.handle.ToObjectWithDefaultValue(defaultValue);
	}
	
	public void OperatorSubscript(String key)
	{
		this.handle.OperatorSubscript(key);
	}
	
	public void OperatorSubscriptWithQsizetype(int32 i)
	{
		this.handle.OperatorSubscriptWithQsizetype(i);
	}
	
	public bool OperatorEqual(IQJsonValue other)
	{
		return this.handle.OperatorEqual(other);
	}
	
	public bool OperatorNotEqual(IQJsonValue other)
	{
		return this.handle.OperatorNotEqual(other);
	}
	
	public bool ToBool1(bool defaultValue)
	{
		return this.handle.ToBool1(defaultValue);
	}
	
	public int32 ToInt1(int32 defaultValue)
	{
		return this.handle.ToInt1(defaultValue);
	}
	
	public int64 ToInteger1(int64 defaultValue)
	{
		return this.handle.ToInteger1(defaultValue);
	}
	
	public double ToDouble1(double defaultValue)
	{
		return this.handle.ToDouble1(defaultValue);
	}
	
}
extension CQt
{
	[LinkName("QJsonValue_new")]
	public static extern void* QJsonValue_new();
	[LinkName("QJsonValue_new2")]
	public static extern void* QJsonValue_new2(bool b);
	[LinkName("QJsonValue_new3")]
	public static extern void* QJsonValue_new3(double n);
	[LinkName("QJsonValue_new4")]
	public static extern void* QJsonValue_new4(int32 n);
	[LinkName("QJsonValue_new5")]
	public static extern void* QJsonValue_new5(int64 v);
	[LinkName("QJsonValue_new6")]
	public static extern void* QJsonValue_new6(libqt_string s);
	[LinkName("QJsonValue_new7")]
	public static extern void* QJsonValue_new7(char8* s);
	[LinkName("QJsonValue_new8")]
	public static extern void* QJsonValue_new8(void* a);
	[LinkName("QJsonValue_new9")]
	public static extern void* QJsonValue_new9(void* o);
	[LinkName("QJsonValue_new10")]
	public static extern void* QJsonValue_new10(void* other);
	[LinkName("QJsonValue_new11")]
	public static extern void* QJsonValue_new11(int64 param1);
	[LinkName("QJsonValue_OperatorAssign")]
	public static extern void QJsonValue_OperatorAssign(void* c_this, void* other);
	[LinkName("QJsonValue_Swap")]
	public static extern void QJsonValue_Swap(void* c_this, void* other);
	[LinkName("QJsonValue_FromVariant")]
	public static extern void QJsonValue_FromVariant(void* variant);
	[LinkName("QJsonValue_ToVariant")]
	public static extern void QJsonValue_ToVariant(void* c_this);
	[LinkName("QJsonValue_Type")]
	public static extern int64 QJsonValue_Type(void* c_this);
	[LinkName("QJsonValue_IsNull")]
	public static extern bool QJsonValue_IsNull(void* c_this);
	[LinkName("QJsonValue_IsBool")]
	public static extern bool QJsonValue_IsBool(void* c_this);
	[LinkName("QJsonValue_IsDouble")]
	public static extern bool QJsonValue_IsDouble(void* c_this);
	[LinkName("QJsonValue_IsString")]
	public static extern bool QJsonValue_IsString(void* c_this);
	[LinkName("QJsonValue_IsArray")]
	public static extern bool QJsonValue_IsArray(void* c_this);
	[LinkName("QJsonValue_IsObject")]
	public static extern bool QJsonValue_IsObject(void* c_this);
	[LinkName("QJsonValue_IsUndefined")]
	public static extern bool QJsonValue_IsUndefined(void* c_this);
	[LinkName("QJsonValue_ToBool")]
	public static extern bool QJsonValue_ToBool(void* c_this);
	[LinkName("QJsonValue_ToInt")]
	public static extern int32 QJsonValue_ToInt(void* c_this);
	[LinkName("QJsonValue_ToInteger")]
	public static extern int64 QJsonValue_ToInteger(void* c_this);
	[LinkName("QJsonValue_ToDouble")]
	public static extern double QJsonValue_ToDouble(void* c_this);
	[LinkName("QJsonValue_ToString")]
	public static extern libqt_string QJsonValue_ToString(void* c_this);
	[LinkName("QJsonValue_ToStringWithDefaultValue")]
	public static extern libqt_string QJsonValue_ToStringWithDefaultValue(void* c_this, libqt_string defaultValue);
	[LinkName("QJsonValue_ToArray")]
	public static extern void QJsonValue_ToArray(void* c_this);
	[LinkName("QJsonValue_ToArrayWithDefaultValue")]
	public static extern void QJsonValue_ToArrayWithDefaultValue(void* c_this, void* defaultValue);
	[LinkName("QJsonValue_ToObject")]
	public static extern void QJsonValue_ToObject(void* c_this);
	[LinkName("QJsonValue_ToObjectWithDefaultValue")]
	public static extern void QJsonValue_ToObjectWithDefaultValue(void* c_this, void* defaultValue);
	[LinkName("QJsonValue_OperatorSubscript")]
	public static extern void QJsonValue_OperatorSubscript(void* c_this, libqt_string key);
	[LinkName("QJsonValue_OperatorSubscriptWithQsizetype")]
	public static extern void QJsonValue_OperatorSubscriptWithQsizetype(void* c_this, int32 i);
	[LinkName("QJsonValue_OperatorEqual")]
	public static extern bool QJsonValue_OperatorEqual(void* c_this, void* other);
	[LinkName("QJsonValue_OperatorNotEqual")]
	public static extern bool QJsonValue_OperatorNotEqual(void* c_this, void* other);
	[LinkName("QJsonValue_ToBool1")]
	public static extern bool QJsonValue_ToBool1(void* c_this, bool defaultValue);
	[LinkName("QJsonValue_ToInt1")]
	public static extern int32 QJsonValue_ToInt1(void* c_this, int32 defaultValue);
	[LinkName("QJsonValue_ToInteger1")]
	public static extern int64 QJsonValue_ToInteger1(void* c_this, int64 defaultValue);
	[LinkName("QJsonValue_ToDouble1")]
	public static extern double QJsonValue_ToDouble1(void* c_this, double defaultValue);
	/// Delete this object from C++ memory
	[LinkName("QJsonValue_Delete")]
	public static extern void QJsonValue_Delete(void* self);
}
public interface IQJsonValueConstRef
{
	void* NativePtr { get; }
}
public struct QJsonValueConstRefPtr : IQJsonValueConstRef, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQJsonValueConstRef other)
	{
		return .(CQt.QJsonValueConstRef_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QJsonValueConstRef_Delete(this.nativePtr);
	}
	
	public void ToQJsonValue()
	{
		CQt.QJsonValueConstRef_ToQJsonValue(this.nativePtr);
	}
	
	public void ToVariant()
	{
		CQt.QJsonValueConstRef_ToVariant(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QJsonValueConstRef_Type(this.nativePtr);
	}
	
	public bool IsNull()
	{
		return CQt.QJsonValueConstRef_IsNull(this.nativePtr);
	}
	
	public bool IsBool()
	{
		return CQt.QJsonValueConstRef_IsBool(this.nativePtr);
	}
	
	public bool IsDouble()
	{
		return CQt.QJsonValueConstRef_IsDouble(this.nativePtr);
	}
	
	public bool IsString()
	{
		return CQt.QJsonValueConstRef_IsString(this.nativePtr);
	}
	
	public bool IsArray()
	{
		return CQt.QJsonValueConstRef_IsArray(this.nativePtr);
	}
	
	public bool IsObject()
	{
		return CQt.QJsonValueConstRef_IsObject(this.nativePtr);
	}
	
	public bool IsUndefined()
	{
		return CQt.QJsonValueConstRef_IsUndefined(this.nativePtr);
	}
	
	public bool ToBool()
	{
		return CQt.QJsonValueConstRef_ToBool(this.nativePtr);
	}
	
	public int32 ToInt()
	{
		return CQt.QJsonValueConstRef_ToInt(this.nativePtr);
	}
	
	public int64 ToInteger()
	{
		return CQt.QJsonValueConstRef_ToInteger(this.nativePtr);
	}
	
	public double ToDouble()
	{
		return CQt.QJsonValueConstRef_ToDouble(this.nativePtr);
	}
	
	public libqt_string ToString()
	{
		return CQt.QJsonValueConstRef_ToString(this.nativePtr);
	}
	
	public void ToArray()
	{
		CQt.QJsonValueConstRef_ToArray(this.nativePtr);
	}
	
	public void ToObject()
	{
		CQt.QJsonValueConstRef_ToObject(this.nativePtr);
	}
	
	public void OperatorSubscriptWithQsizetype(int32 i)
	{
		CQt.QJsonValueConstRef_OperatorSubscriptWithQsizetype(this.nativePtr, i);
	}
	
	public bool OperatorEqual(IQJsonValue other)
	{
		return CQt.QJsonValueConstRef_OperatorEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorNotEqual(IQJsonValue other)
	{
		return CQt.QJsonValueConstRef_OperatorNotEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool ToBool1(bool defaultValue)
	{
		return CQt.QJsonValueConstRef_ToBool1(this.nativePtr, defaultValue);
	}
	
	public int32 ToInt1(int32 defaultValue)
	{
		return CQt.QJsonValueConstRef_ToInt1(this.nativePtr, defaultValue);
	}
	
	public int64 ToInteger1(int64 defaultValue)
	{
		return CQt.QJsonValueConstRef_ToInteger1(this.nativePtr, defaultValue);
	}
	
	public double ToDouble1(double defaultValue)
	{
		return CQt.QJsonValueConstRef_ToDouble1(this.nativePtr, defaultValue);
	}
	
	public libqt_string ToString1(String defaultValue)
	{
		return CQt.QJsonValueConstRef_ToString1(this.nativePtr, libqt_string(defaultValue));
	}
	
}
public class QJsonValueConstRef
{
	public QJsonValueConstRefPtr handle;
	
	public static implicit operator QJsonValueConstRefPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQJsonValueConstRef other)
	{
		this.handle = QJsonValueConstRefPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void ToQJsonValue()
	{
		this.handle.ToQJsonValue();
	}
	
	public void ToVariant()
	{
		this.handle.ToVariant();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool IsNull()
	{
		return this.handle.IsNull();
	}
	
	public bool IsBool()
	{
		return this.handle.IsBool();
	}
	
	public bool IsDouble()
	{
		return this.handle.IsDouble();
	}
	
	public bool IsString()
	{
		return this.handle.IsString();
	}
	
	public bool IsArray()
	{
		return this.handle.IsArray();
	}
	
	public bool IsObject()
	{
		return this.handle.IsObject();
	}
	
	public bool IsUndefined()
	{
		return this.handle.IsUndefined();
	}
	
	public bool ToBool()
	{
		return this.handle.ToBool();
	}
	
	public int32 ToInt()
	{
		return this.handle.ToInt();
	}
	
	public int64 ToInteger()
	{
		return this.handle.ToInteger();
	}
	
	public double ToDouble()
	{
		return this.handle.ToDouble();
	}
	
	public libqt_string ToString()
	{
		return this.handle.ToString();
	}
	
	public void ToArray()
	{
		this.handle.ToArray();
	}
	
	public void ToObject()
	{
		this.handle.ToObject();
	}
	
	public void OperatorSubscriptWithQsizetype(int32 i)
	{
		this.handle.OperatorSubscriptWithQsizetype(i);
	}
	
	public bool OperatorEqual(IQJsonValue other)
	{
		return this.handle.OperatorEqual(other);
	}
	
	public bool OperatorNotEqual(IQJsonValue other)
	{
		return this.handle.OperatorNotEqual(other);
	}
	
	public bool ToBool1(bool defaultValue)
	{
		return this.handle.ToBool1(defaultValue);
	}
	
	public int32 ToInt1(int32 defaultValue)
	{
		return this.handle.ToInt1(defaultValue);
	}
	
	public int64 ToInteger1(int64 defaultValue)
	{
		return this.handle.ToInteger1(defaultValue);
	}
	
	public double ToDouble1(double defaultValue)
	{
		return this.handle.ToDouble1(defaultValue);
	}
	
	public libqt_string ToString1(String defaultValue)
	{
		return this.handle.ToString1(defaultValue);
	}
	
}
extension CQt
{
	[LinkName("QJsonValueConstRef_new")]
	public static extern void* QJsonValueConstRef_new(void* other);
	[LinkName("QJsonValueConstRef_new2")]
	public static extern void* QJsonValueConstRef_new2(void* param1);
	[LinkName("QJsonValueConstRef_ToQJsonValue")]
	public static extern void QJsonValueConstRef_ToQJsonValue(void* c_this);
	[LinkName("QJsonValueConstRef_ToVariant")]
	public static extern void QJsonValueConstRef_ToVariant(void* c_this);
	[LinkName("QJsonValueConstRef_Type")]
	public static extern int64 QJsonValueConstRef_Type(void* c_this);
	[LinkName("QJsonValueConstRef_IsNull")]
	public static extern bool QJsonValueConstRef_IsNull(void* c_this);
	[LinkName("QJsonValueConstRef_IsBool")]
	public static extern bool QJsonValueConstRef_IsBool(void* c_this);
	[LinkName("QJsonValueConstRef_IsDouble")]
	public static extern bool QJsonValueConstRef_IsDouble(void* c_this);
	[LinkName("QJsonValueConstRef_IsString")]
	public static extern bool QJsonValueConstRef_IsString(void* c_this);
	[LinkName("QJsonValueConstRef_IsArray")]
	public static extern bool QJsonValueConstRef_IsArray(void* c_this);
	[LinkName("QJsonValueConstRef_IsObject")]
	public static extern bool QJsonValueConstRef_IsObject(void* c_this);
	[LinkName("QJsonValueConstRef_IsUndefined")]
	public static extern bool QJsonValueConstRef_IsUndefined(void* c_this);
	[LinkName("QJsonValueConstRef_ToBool")]
	public static extern bool QJsonValueConstRef_ToBool(void* c_this);
	[LinkName("QJsonValueConstRef_ToInt")]
	public static extern int32 QJsonValueConstRef_ToInt(void* c_this);
	[LinkName("QJsonValueConstRef_ToInteger")]
	public static extern int64 QJsonValueConstRef_ToInteger(void* c_this);
	[LinkName("QJsonValueConstRef_ToDouble")]
	public static extern double QJsonValueConstRef_ToDouble(void* c_this);
	[LinkName("QJsonValueConstRef_ToString")]
	public static extern libqt_string QJsonValueConstRef_ToString(void* c_this);
	[LinkName("QJsonValueConstRef_ToArray")]
	public static extern void QJsonValueConstRef_ToArray(void* c_this);
	[LinkName("QJsonValueConstRef_ToObject")]
	public static extern void QJsonValueConstRef_ToObject(void* c_this);
	[LinkName("QJsonValueConstRef_OperatorSubscriptWithQsizetype")]
	public static extern void QJsonValueConstRef_OperatorSubscriptWithQsizetype(void* c_this, int32 i);
	[LinkName("QJsonValueConstRef_OperatorEqual")]
	public static extern bool QJsonValueConstRef_OperatorEqual(void* c_this, void* other);
	[LinkName("QJsonValueConstRef_OperatorNotEqual")]
	public static extern bool QJsonValueConstRef_OperatorNotEqual(void* c_this, void* other);
	[LinkName("QJsonValueConstRef_ToBool1")]
	public static extern bool QJsonValueConstRef_ToBool1(void* c_this, bool defaultValue);
	[LinkName("QJsonValueConstRef_ToInt1")]
	public static extern int32 QJsonValueConstRef_ToInt1(void* c_this, int32 defaultValue);
	[LinkName("QJsonValueConstRef_ToInteger1")]
	public static extern int64 QJsonValueConstRef_ToInteger1(void* c_this, int64 defaultValue);
	[LinkName("QJsonValueConstRef_ToDouble1")]
	public static extern double QJsonValueConstRef_ToDouble1(void* c_this, double defaultValue);
	[LinkName("QJsonValueConstRef_ToString1")]
	public static extern libqt_string QJsonValueConstRef_ToString1(void* c_this, libqt_string defaultValue);
	/// Delete this object from C++ memory
	[LinkName("QJsonValueConstRef_Delete")]
	public static extern void QJsonValueConstRef_Delete(void* self);
}
public interface IQJsonValueRef
{
	void* NativePtr { get; }
}
public struct QJsonValueRefPtr : IQJsonValueRef, IDisposable, IQJsonValueConstRef
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQJsonValueRef other)
	{
		return .(CQt.QJsonValueRef_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QJsonValueRef_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQJsonValue val)
	{
		CQt.QJsonValueRef_OperatorAssign(this.nativePtr, (val == default || val.NativePtr == default) ? default : val.NativePtr);
	}
	
	public void OperatorAssignWithVal(IQJsonValueRef val)
	{
		CQt.QJsonValueRef_OperatorAssignWithVal(this.nativePtr, (val == default || val.NativePtr == default) ? default : val.NativePtr);
	}
	
	public void ToQJsonValue()
	{
		CQt.QJsonValueRef_ToQJsonValue(this.nativePtr);
	}
	
	public void ToVariant()
	{
		CQt.QJsonValueRef_ToVariant(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QJsonValueRef_Type(this.nativePtr);
	}
	
	public bool IsNull()
	{
		return CQt.QJsonValueRef_IsNull(this.nativePtr);
	}
	
	public bool IsBool()
	{
		return CQt.QJsonValueRef_IsBool(this.nativePtr);
	}
	
	public bool IsDouble()
	{
		return CQt.QJsonValueRef_IsDouble(this.nativePtr);
	}
	
	public bool IsString()
	{
		return CQt.QJsonValueRef_IsString(this.nativePtr);
	}
	
	public bool IsArray()
	{
		return CQt.QJsonValueRef_IsArray(this.nativePtr);
	}
	
	public bool IsObject()
	{
		return CQt.QJsonValueRef_IsObject(this.nativePtr);
	}
	
	public bool IsUndefined()
	{
		return CQt.QJsonValueRef_IsUndefined(this.nativePtr);
	}
	
	public bool ToBool()
	{
		return CQt.QJsonValueRef_ToBool(this.nativePtr);
	}
	
	public int32 ToInt()
	{
		return CQt.QJsonValueRef_ToInt(this.nativePtr);
	}
	
	public int64 ToInteger()
	{
		return CQt.QJsonValueRef_ToInteger(this.nativePtr);
	}
	
	public double ToDouble()
	{
		return CQt.QJsonValueRef_ToDouble(this.nativePtr);
	}
	
	public libqt_string ToString()
	{
		return CQt.QJsonValueRef_ToString(this.nativePtr);
	}
	
	public void ToArray()
	{
		CQt.QJsonValueRef_ToArray(this.nativePtr);
	}
	
	public void ToObject()
	{
		CQt.QJsonValueRef_ToObject(this.nativePtr);
	}
	
	public void OperatorSubscriptWithQsizetype(int32 i)
	{
		CQt.QJsonValueRef_OperatorSubscriptWithQsizetype(this.nativePtr, i);
	}
	
	public bool OperatorEqual(IQJsonValue other)
	{
		return CQt.QJsonValueRef_OperatorEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorNotEqual(IQJsonValue other)
	{
		return CQt.QJsonValueRef_OperatorNotEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool ToBool1(bool defaultValue)
	{
		return CQt.QJsonValueRef_ToBool1(this.nativePtr, defaultValue);
	}
	
	public int32 ToInt1(int32 defaultValue)
	{
		return CQt.QJsonValueRef_ToInt1(this.nativePtr, defaultValue);
	}
	
	public int64 ToInteger1(int64 defaultValue)
	{
		return CQt.QJsonValueRef_ToInteger1(this.nativePtr, defaultValue);
	}
	
	public double ToDouble1(double defaultValue)
	{
		return CQt.QJsonValueRef_ToDouble1(this.nativePtr, defaultValue);
	}
	
	public libqt_string ToString1(String defaultValue)
	{
		return CQt.QJsonValueRef_ToString1(this.nativePtr, libqt_string(defaultValue));
	}
	
}
public class QJsonValueRef
{
	public QJsonValueRefPtr handle;
	
	public static implicit operator QJsonValueRefPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQJsonValueRef other)
	{
		this.handle = QJsonValueRefPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQJsonValue val)
	{
		this.handle.OperatorAssign(val);
	}
	
	public void OperatorAssignWithVal(IQJsonValueRef val)
	{
		this.handle.OperatorAssignWithVal(val);
	}
	
	public void ToQJsonValue()
	{
		this.handle.ToQJsonValue();
	}
	
	public void ToVariant()
	{
		this.handle.ToVariant();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool IsNull()
	{
		return this.handle.IsNull();
	}
	
	public bool IsBool()
	{
		return this.handle.IsBool();
	}
	
	public bool IsDouble()
	{
		return this.handle.IsDouble();
	}
	
	public bool IsString()
	{
		return this.handle.IsString();
	}
	
	public bool IsArray()
	{
		return this.handle.IsArray();
	}
	
	public bool IsObject()
	{
		return this.handle.IsObject();
	}
	
	public bool IsUndefined()
	{
		return this.handle.IsUndefined();
	}
	
	public bool ToBool()
	{
		return this.handle.ToBool();
	}
	
	public int32 ToInt()
	{
		return this.handle.ToInt();
	}
	
	public int64 ToInteger()
	{
		return this.handle.ToInteger();
	}
	
	public double ToDouble()
	{
		return this.handle.ToDouble();
	}
	
	public libqt_string ToString()
	{
		return this.handle.ToString();
	}
	
	public void ToArray()
	{
		this.handle.ToArray();
	}
	
	public void ToObject()
	{
		this.handle.ToObject();
	}
	
	public void OperatorSubscriptWithQsizetype(int32 i)
	{
		this.handle.OperatorSubscriptWithQsizetype(i);
	}
	
	public bool OperatorEqual(IQJsonValue other)
	{
		return this.handle.OperatorEqual(other);
	}
	
	public bool OperatorNotEqual(IQJsonValue other)
	{
		return this.handle.OperatorNotEqual(other);
	}
	
	public bool ToBool1(bool defaultValue)
	{
		return this.handle.ToBool1(defaultValue);
	}
	
	public int32 ToInt1(int32 defaultValue)
	{
		return this.handle.ToInt1(defaultValue);
	}
	
	public int64 ToInteger1(int64 defaultValue)
	{
		return this.handle.ToInteger1(defaultValue);
	}
	
	public double ToDouble1(double defaultValue)
	{
		return this.handle.ToDouble1(defaultValue);
	}
	
	public libqt_string ToString1(String defaultValue)
	{
		return this.handle.ToString1(defaultValue);
	}
	
}
extension CQt
{
	[LinkName("QJsonValueRef_new")]
	public static extern void* QJsonValueRef_new(void* other);
	[LinkName("QJsonValueRef_new2")]
	public static extern void* QJsonValueRef_new2(void* param1);
	[LinkName("QJsonValueRef_new3")]
	public static extern void* QJsonValueRef_new3(void* array, int32 idx);
	[LinkName("QJsonValueRef_new4")]
	public static extern void* QJsonValueRef_new4(void* object, int32 idx);
	[LinkName("QJsonValueRef_OperatorAssign")]
	public static extern void QJsonValueRef_OperatorAssign(void* c_this, void* val);
	[LinkName("QJsonValueRef_OperatorAssignWithVal")]
	public static extern void QJsonValueRef_OperatorAssignWithVal(void* c_this, void* val);
	[LinkName("QJsonValueRef_ToQJsonValue")]
	public static extern void QJsonValueRef_ToQJsonValue(void* c_this);
	[LinkName("QJsonValueRef_ToVariant")]
	public static extern void QJsonValueRef_ToVariant(void* c_this);
	[LinkName("QJsonValueRef_Type")]
	public static extern int64 QJsonValueRef_Type(void* c_this);
	[LinkName("QJsonValueRef_IsNull")]
	public static extern bool QJsonValueRef_IsNull(void* c_this);
	[LinkName("QJsonValueRef_IsBool")]
	public static extern bool QJsonValueRef_IsBool(void* c_this);
	[LinkName("QJsonValueRef_IsDouble")]
	public static extern bool QJsonValueRef_IsDouble(void* c_this);
	[LinkName("QJsonValueRef_IsString")]
	public static extern bool QJsonValueRef_IsString(void* c_this);
	[LinkName("QJsonValueRef_IsArray")]
	public static extern bool QJsonValueRef_IsArray(void* c_this);
	[LinkName("QJsonValueRef_IsObject")]
	public static extern bool QJsonValueRef_IsObject(void* c_this);
	[LinkName("QJsonValueRef_IsUndefined")]
	public static extern bool QJsonValueRef_IsUndefined(void* c_this);
	[LinkName("QJsonValueRef_ToBool")]
	public static extern bool QJsonValueRef_ToBool(void* c_this);
	[LinkName("QJsonValueRef_ToInt")]
	public static extern int32 QJsonValueRef_ToInt(void* c_this);
	[LinkName("QJsonValueRef_ToInteger")]
	public static extern int64 QJsonValueRef_ToInteger(void* c_this);
	[LinkName("QJsonValueRef_ToDouble")]
	public static extern double QJsonValueRef_ToDouble(void* c_this);
	[LinkName("QJsonValueRef_ToString")]
	public static extern libqt_string QJsonValueRef_ToString(void* c_this);
	[LinkName("QJsonValueRef_ToArray")]
	public static extern void QJsonValueRef_ToArray(void* c_this);
	[LinkName("QJsonValueRef_ToObject")]
	public static extern void QJsonValueRef_ToObject(void* c_this);
	[LinkName("QJsonValueRef_OperatorSubscriptWithQsizetype")]
	public static extern void QJsonValueRef_OperatorSubscriptWithQsizetype(void* c_this, int32 i);
	[LinkName("QJsonValueRef_OperatorEqual")]
	public static extern bool QJsonValueRef_OperatorEqual(void* c_this, void* other);
	[LinkName("QJsonValueRef_OperatorNotEqual")]
	public static extern bool QJsonValueRef_OperatorNotEqual(void* c_this, void* other);
	[LinkName("QJsonValueRef_ToBool1")]
	public static extern bool QJsonValueRef_ToBool1(void* c_this, bool defaultValue);
	[LinkName("QJsonValueRef_ToInt1")]
	public static extern int32 QJsonValueRef_ToInt1(void* c_this, int32 defaultValue);
	[LinkName("QJsonValueRef_ToInteger1")]
	public static extern int64 QJsonValueRef_ToInteger1(void* c_this, int64 defaultValue);
	[LinkName("QJsonValueRef_ToDouble1")]
	public static extern double QJsonValueRef_ToDouble1(void* c_this, double defaultValue);
	[LinkName("QJsonValueRef_ToString1")]
	public static extern libqt_string QJsonValueRef_ToString1(void* c_this, libqt_string defaultValue);
	/// Delete this object from C++ memory
	[LinkName("QJsonValueRef_Delete")]
	public static extern void QJsonValueRef_Delete(void* self);
}