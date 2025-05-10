using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QJsonParseError__ParseError
{
	NoError = 0,
	UnterminatedObject = 1,
	MissingNameSeparator = 2,
	UnterminatedArray = 3,
	MissingValueSeparator = 4,
	IllegalValue = 5,
	TerminationByNumber = 6,
	IllegalNumber = 7,
	IllegalEscapeSequence = 8,
	IllegalUTF8String = 9,
	UnterminatedString = 10,
	MissingObject = 11,
	DeepNesting = 12,
	DocumentTooLarge = 13,
	GarbageAtEnd = 14,
}
[AllowDuplicates]
public enum QJsonDocument__JsonFormat
{
	Indented = 0,
	Compact = 1,
}
public class QJsonParseError
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QJsonParseError_new(other);
	}
	
	public ~this()
	{
		CQt.QJsonParseError_Delete(this.nativePtr);
	}
	
	public libqt_string ErrorString()
	{
		return CQt.QJsonParseError_ErrorString(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QJsonParseError_new")]
	public static extern void* QJsonParseError_new(void* other);
	[LinkName("QJsonParseError_new2")]
	public static extern void* QJsonParseError_new2(void* other);
	[LinkName("QJsonParseError_ErrorString")]
	public static extern libqt_string QJsonParseError_ErrorString(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QJsonParseError_Delete")]
	public static extern void QJsonParseError_Delete(void* self);
}
public class QJsonDocument
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QJsonDocument_new();
	}
	
	public ~this()
	{
		CQt.QJsonDocument_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* other)
	{
		CQt.QJsonDocument_OperatorAssign(this.nativePtr, other);
	}
	
	public void Swap(void* other)
	{
		CQt.QJsonDocument_Swap(this.nativePtr, other);
	}
	
	public static void FromVariant(void* variant)
	{
		CQt.QJsonDocument_FromVariant(variant);
	}
	
	public void ToVariant()
	{
		CQt.QJsonDocument_ToVariant(this.nativePtr);
	}
	
	public static void FromJson(libqt_string json)
	{
		CQt.QJsonDocument_FromJson(json);
	}
	
	public libqt_string ToJson()
	{
		return CQt.QJsonDocument_ToJson(this.nativePtr);
	}
	
	public bool IsEmpty()
	{
		return CQt.QJsonDocument_IsEmpty(this.nativePtr);
	}
	
	public bool IsArray()
	{
		return CQt.QJsonDocument_IsArray(this.nativePtr);
	}
	
	public bool IsObject()
	{
		return CQt.QJsonDocument_IsObject(this.nativePtr);
	}
	
	public void Object()
	{
		CQt.QJsonDocument_Object(this.nativePtr);
	}
	
	public void Array()
	{
		CQt.QJsonDocument_Array(this.nativePtr);
	}
	
	public void SetObject(void* object)
	{
		CQt.QJsonDocument_SetObject(this.nativePtr, object);
	}
	
	public void SetArray(void* array)
	{
		CQt.QJsonDocument_SetArray(this.nativePtr, array);
	}
	
	public void OperatorSubscript(libqt_string key)
	{
		CQt.QJsonDocument_OperatorSubscript(this.nativePtr, key);
	}
	
	public void OperatorSubscriptWithQsizetype(int32 i)
	{
		CQt.QJsonDocument_OperatorSubscriptWithQsizetype(this.nativePtr, i);
	}
	
	public bool OperatorEqual(void* other)
	{
		return CQt.QJsonDocument_OperatorEqual(this.nativePtr, other);
	}
	
	public bool OperatorNotEqual(void* other)
	{
		return CQt.QJsonDocument_OperatorNotEqual(this.nativePtr, other);
	}
	
	public bool IsNull()
	{
		return CQt.QJsonDocument_IsNull(this.nativePtr);
	}
	
	public static void FromJson2(libqt_string json, void* errorVal)
	{
		CQt.QJsonDocument_FromJson2(json, errorVal);
	}
	
	public libqt_string ToJson1(int64 format)
	{
		return CQt.QJsonDocument_ToJson1(this.nativePtr, format);
	}
	
}
extension CQt
{
	[LinkName("QJsonDocument_new")]
	public static extern void* QJsonDocument_new();
	[LinkName("QJsonDocument_new2")]
	public static extern void* QJsonDocument_new2(void* object);
	[LinkName("QJsonDocument_new3")]
	public static extern void* QJsonDocument_new3(void* array);
	[LinkName("QJsonDocument_new4")]
	public static extern void* QJsonDocument_new4(void* other);
	[LinkName("QJsonDocument_OperatorAssign")]
	public static extern void QJsonDocument_OperatorAssign(void* c_this, void* other);
	[LinkName("QJsonDocument_Swap")]
	public static extern void QJsonDocument_Swap(void* c_this, void* other);
	[LinkName("QJsonDocument_FromVariant")]
	public static extern void QJsonDocument_FromVariant(void* variant);
	[LinkName("QJsonDocument_ToVariant")]
	public static extern void QJsonDocument_ToVariant(void* c_this);
	[LinkName("QJsonDocument_FromJson")]
	public static extern void QJsonDocument_FromJson(libqt_string json);
	[LinkName("QJsonDocument_ToJson")]
	public static extern libqt_string QJsonDocument_ToJson(void* c_this);
	[LinkName("QJsonDocument_IsEmpty")]
	public static extern bool QJsonDocument_IsEmpty(void* c_this);
	[LinkName("QJsonDocument_IsArray")]
	public static extern bool QJsonDocument_IsArray(void* c_this);
	[LinkName("QJsonDocument_IsObject")]
	public static extern bool QJsonDocument_IsObject(void* c_this);
	[LinkName("QJsonDocument_Object")]
	public static extern void QJsonDocument_Object(void* c_this);
	[LinkName("QJsonDocument_Array")]
	public static extern void QJsonDocument_Array(void* c_this);
	[LinkName("QJsonDocument_SetObject")]
	public static extern void QJsonDocument_SetObject(void* c_this, void* object);
	[LinkName("QJsonDocument_SetArray")]
	public static extern void QJsonDocument_SetArray(void* c_this, void* array);
	[LinkName("QJsonDocument_OperatorSubscript")]
	public static extern void QJsonDocument_OperatorSubscript(void* c_this, libqt_string key);
	[LinkName("QJsonDocument_OperatorSubscriptWithQsizetype")]
	public static extern void QJsonDocument_OperatorSubscriptWithQsizetype(void* c_this, int32 i);
	[LinkName("QJsonDocument_OperatorEqual")]
	public static extern bool QJsonDocument_OperatorEqual(void* c_this, void* other);
	[LinkName("QJsonDocument_OperatorNotEqual")]
	public static extern bool QJsonDocument_OperatorNotEqual(void* c_this, void* other);
	[LinkName("QJsonDocument_IsNull")]
	public static extern bool QJsonDocument_IsNull(void* c_this);
	[LinkName("QJsonDocument_FromJson2")]
	public static extern void QJsonDocument_FromJson2(libqt_string json, void* errorVal);
	[LinkName("QJsonDocument_ToJson1")]
	public static extern libqt_string QJsonDocument_ToJson1(void* c_this, int64 format);
	/// Delete this object from C++ memory
	[LinkName("QJsonDocument_Delete")]
	public static extern void QJsonDocument_Delete(void* self);
}