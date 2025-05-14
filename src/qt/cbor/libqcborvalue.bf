using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QCborValue__EncodingOption
{
	SortKeysInMaps = 1,
	UseFloat = 2,
	UseFloat16 = 6,
	UseIntegers = 8,
	NoTransformation = 0,
}
[AllowDuplicates]
public enum QCborValue__DiagnosticNotationOption
{
	Compact = 0,
	LineWrapped = 1,
	ExtendedFormat = 2,
}
[AllowDuplicates]
public enum QCborValue__Type
{
	Integer = 0,
	ByteArray = 64,
	String = 96,
	Array = 128,
	Map = 160,
	Tag = 192,
	SimpleType = 256,
	False = 276,
	True = 277,
	Null = 278,
	Undefined = 279,
	Double = 514,
	DateTime = 65536,
	Url = 65568,
	RegularExpression = 65571,
	Uuid = 65573,
	Invalid = -1,
}
public interface IQCborParserError
{
	void* NativePtr { get; }
}
public struct QCborParserErrorPtr : IQCborParserError, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQCborParserError other)
	{
		return .(CQt.QCborParserError_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QCborParserError_Delete(this.nativePtr);
	}
	
	public libqt_string ErrorString()
	{
		return CQt.QCborParserError_ErrorString(this.nativePtr);
	}
	
}
public class QCborParserError
{
	public QCborParserErrorPtr handle;
	
	public static implicit operator QCborParserErrorPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQCborParserError other)
	{
		this.handle = QCborParserErrorPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public libqt_string ErrorString()
	{
		return this.handle.ErrorString();
	}
	
}
extension CQt
{
	[LinkName("QCborParserError_new")]
	public static extern void* QCborParserError_new(void* other);
	[LinkName("QCborParserError_new2")]
	public static extern void* QCborParserError_new2(void* other);
	[LinkName("QCborParserError_ErrorString")]
	public static extern libqt_string QCborParserError_ErrorString(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QCborParserError_Delete")]
	public static extern void QCborParserError_Delete(void* self);
}
public interface IQCborValue
{
	void* NativePtr { get; }
}
public struct QCborValuePtr : IQCborValue, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QCborValue_new());
	}
	
	public void Dispose()
	{
		CQt.QCborValue_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQCborValue other)
	{
		CQt.QCborValue_OperatorAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void Swap(IQCborValue other)
	{
		CQt.QCborValue_Swap(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QCborValue_Type(this.nativePtr);
	}
	
	public bool IsInteger()
	{
		return CQt.QCborValue_IsInteger(this.nativePtr);
	}
	
	public bool IsByteArray()
	{
		return CQt.QCborValue_IsByteArray(this.nativePtr);
	}
	
	public bool IsString()
	{
		return CQt.QCborValue_IsString(this.nativePtr);
	}
	
	public bool IsArray()
	{
		return CQt.QCborValue_IsArray(this.nativePtr);
	}
	
	public bool IsMap()
	{
		return CQt.QCborValue_IsMap(this.nativePtr);
	}
	
	public bool IsTag()
	{
		return CQt.QCborValue_IsTag(this.nativePtr);
	}
	
	public bool IsFalse()
	{
		return CQt.QCborValue_IsFalse(this.nativePtr);
	}
	
	public bool IsTrue()
	{
		return CQt.QCborValue_IsTrue(this.nativePtr);
	}
	
	public bool IsBool()
	{
		return CQt.QCborValue_IsBool(this.nativePtr);
	}
	
	public bool IsNull()
	{
		return CQt.QCborValue_IsNull(this.nativePtr);
	}
	
	public bool IsUndefined()
	{
		return CQt.QCborValue_IsUndefined(this.nativePtr);
	}
	
	public bool IsDouble()
	{
		return CQt.QCborValue_IsDouble(this.nativePtr);
	}
	
	public bool IsDateTime()
	{
		return CQt.QCborValue_IsDateTime(this.nativePtr);
	}
	
	public bool IsUrl()
	{
		return CQt.QCborValue_IsUrl(this.nativePtr);
	}
	
	public bool IsRegularExpression()
	{
		return CQt.QCborValue_IsRegularExpression(this.nativePtr);
	}
	
	public bool IsUuid()
	{
		return CQt.QCborValue_IsUuid(this.nativePtr);
	}
	
	public bool IsInvalid()
	{
		return CQt.QCborValue_IsInvalid(this.nativePtr);
	}
	
	public bool IsContainer()
	{
		return CQt.QCborValue_IsContainer(this.nativePtr);
	}
	
	public bool IsSimpleType()
	{
		return CQt.QCborValue_IsSimpleType(this.nativePtr);
	}
	
	public bool IsSimpleTypeWithSt(void st)
	{
		return CQt.QCborValue_IsSimpleTypeWithSt(this.nativePtr, default);
	}
	
	public void ToSimpleType()
	{
		CQt.QCborValue_ToSimpleType(this.nativePtr);
	}
	
	public int64 ToInteger()
	{
		return CQt.QCborValue_ToInteger(this.nativePtr);
	}
	
	public bool ToBool()
	{
		return CQt.QCborValue_ToBool(this.nativePtr);
	}
	
	public double ToDouble()
	{
		return CQt.QCborValue_ToDouble(this.nativePtr);
	}
	
	public void Tag()
	{
		CQt.QCborValue_Tag(this.nativePtr);
	}
	
	public void TaggedValue()
	{
		CQt.QCborValue_TaggedValue(this.nativePtr);
	}
	
	public libqt_string ToByteArray()
	{
		return CQt.QCborValue_ToByteArray(this.nativePtr);
	}
	
	public libqt_string ToString()
	{
		return CQt.QCborValue_ToString(this.nativePtr);
	}
	
	public void ToDateTime()
	{
		CQt.QCborValue_ToDateTime(this.nativePtr);
	}
	
	public void ToUrl()
	{
		CQt.QCborValue_ToUrl(this.nativePtr);
	}
	
	public void ToRegularExpression()
	{
		CQt.QCborValue_ToRegularExpression(this.nativePtr);
	}
	
	public void ToUuid()
	{
		CQt.QCborValue_ToUuid(this.nativePtr);
	}
	
	public void ToArray()
	{
		CQt.QCborValue_ToArray(this.nativePtr);
	}
	
	public void ToArrayWithDefaultValue(IQCborArray defaultValue)
	{
		CQt.QCborValue_ToArrayWithDefaultValue(this.nativePtr, (defaultValue == default || defaultValue.NativePtr == default) ? default : defaultValue.NativePtr);
	}
	
	public void ToMap()
	{
		CQt.QCborValue_ToMap(this.nativePtr);
	}
	
	public void ToMapWithDefaultValue(IQCborMap defaultValue)
	{
		CQt.QCborValue_ToMapWithDefaultValue(this.nativePtr, (defaultValue == default || defaultValue.NativePtr == default) ? default : defaultValue.NativePtr);
	}
	
	public void OperatorSubscript(String key)
	{
		CQt.QCborValue_OperatorSubscript(this.nativePtr, libqt_string(key));
	}
	
	public void OperatorSubscript2(int64 key)
	{
		CQt.QCborValue_OperatorSubscript2(this.nativePtr, key);
	}
	
	public void OperatorSubscript3(int64 key)
	{
		CQt.QCborValue_OperatorSubscript3(this.nativePtr, key);
	}
	
	public void OperatorSubscript5(String key)
	{
		CQt.QCborValue_OperatorSubscript5(this.nativePtr, libqt_string(key));
	}
	
	public int32 Compare(IQCborValue other)
	{
		return CQt.QCborValue_Compare(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorEqual(IQCborValue other)
	{
		return CQt.QCborValue_OperatorEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorNotEqual(IQCborValue other)
	{
		return CQt.QCborValue_OperatorNotEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorLesser(IQCborValue other)
	{
		return CQt.QCborValue_OperatorLesser(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public static void FromVariant(IQVariant variant)
	{
		CQt.QCborValue_FromVariant((variant == default || variant.NativePtr == default) ? default : variant.NativePtr);
	}
	
	public void ToVariant()
	{
		CQt.QCborValue_ToVariant(this.nativePtr);
	}
	
	public static void FromJsonValue(IQJsonValue v)
	{
		CQt.QCborValue_FromJsonValue((v == default || v.NativePtr == default) ? default : v.NativePtr);
	}
	
	public void ToJsonValue()
	{
		CQt.QCborValue_ToJsonValue(this.nativePtr);
	}
	
	public static void FromCbor(IQCborStreamReader reader)
	{
		CQt.QCborValue_FromCbor((reader == default || reader.NativePtr == default) ? default : reader.NativePtr);
	}
	
	public static void FromCborWithBa(String ba)
	{
		CQt.QCborValue_FromCborWithBa(libqt_string(ba));
	}
	
	public static void FromCbor2(char8* data, int32 lenVal)
	{
		CQt.QCborValue_FromCbor2(data, lenVal);
	}
	
	public static void FromCbor3(uint8* data, int32 lenVal)
	{
		CQt.QCborValue_FromCbor3(data, lenVal);
	}
	
	public libqt_string ToCbor()
	{
		return CQt.QCborValue_ToCbor(this.nativePtr);
	}
	
	public void ToCborWithWriter(IQCborStreamWriter writer)
	{
		CQt.QCborValue_ToCborWithWriter(this.nativePtr, (writer == default || writer.NativePtr == default) ? default : writer.NativePtr);
	}
	
	public libqt_string ToDiagnosticNotation()
	{
		return CQt.QCborValue_ToDiagnosticNotation(this.nativePtr);
	}
	
	public void ToSimpleType1(void defaultValue)
	{
		CQt.QCborValue_ToSimpleType1(this.nativePtr, default);
	}
	
	public int64 ToInteger1(int64 defaultValue)
	{
		return CQt.QCborValue_ToInteger1(this.nativePtr, defaultValue);
	}
	
	public bool ToBool1(bool defaultValue)
	{
		return CQt.QCborValue_ToBool1(this.nativePtr, defaultValue);
	}
	
	public double ToDouble1(double defaultValue)
	{
		return CQt.QCborValue_ToDouble1(this.nativePtr, defaultValue);
	}
	
	public void Tag1(void defaultValue)
	{
		CQt.QCborValue_Tag1(this.nativePtr, default);
	}
	
	public void TaggedValue1(IQCborValue defaultValue)
	{
		CQt.QCborValue_TaggedValue1(this.nativePtr, (defaultValue == default || defaultValue.NativePtr == default) ? default : defaultValue.NativePtr);
	}
	
	public libqt_string ToByteArray1(String defaultValue)
	{
		return CQt.QCborValue_ToByteArray1(this.nativePtr, libqt_string(defaultValue));
	}
	
	public libqt_string ToString1(String defaultValue)
	{
		return CQt.QCborValue_ToString1(this.nativePtr, libqt_string(defaultValue));
	}
	
	public void ToDateTime1(IQDateTime defaultValue)
	{
		CQt.QCborValue_ToDateTime1(this.nativePtr, (defaultValue == default || defaultValue.NativePtr == default) ? default : defaultValue.NativePtr);
	}
	
	public void ToUrl1(IQUrl defaultValue)
	{
		CQt.QCborValue_ToUrl1(this.nativePtr, (defaultValue == default || defaultValue.NativePtr == default) ? default : defaultValue.NativePtr);
	}
	
	public void ToRegularExpression1(IQRegularExpression defaultValue)
	{
		CQt.QCborValue_ToRegularExpression1(this.nativePtr, (defaultValue == default || defaultValue.NativePtr == default) ? default : defaultValue.NativePtr);
	}
	
	public void ToUuid1(IQUuid defaultValue)
	{
		CQt.QCborValue_ToUuid1(this.nativePtr, (defaultValue == default || defaultValue.NativePtr == default) ? default : defaultValue.NativePtr);
	}
	
	public static void FromCbor22(String ba, IQCborParserError errorVal)
	{
		CQt.QCborValue_FromCbor22(libqt_string(ba), (errorVal == default || errorVal.NativePtr == default) ? default : errorVal.NativePtr);
	}
	
	public static void FromCbor32(char8* data, int32 lenVal, IQCborParserError errorVal)
	{
		CQt.QCborValue_FromCbor32(data, lenVal, (errorVal == default || errorVal.NativePtr == default) ? default : errorVal.NativePtr);
	}
	
	public static void FromCbor33(uint8* data, int32 lenVal, IQCborParserError errorVal)
	{
		CQt.QCborValue_FromCbor33(data, lenVal, (errorVal == default || errorVal.NativePtr == default) ? default : errorVal.NativePtr);
	}
	
	public libqt_string ToCbor1(int64 opt)
	{
		return CQt.QCborValue_ToCbor1(this.nativePtr, opt);
	}
	
	public void ToCbor2(IQCborStreamWriter writer, int64 opt)
	{
		CQt.QCborValue_ToCbor2(this.nativePtr, (writer == default || writer.NativePtr == default) ? default : writer.NativePtr, opt);
	}
	
	public libqt_string ToDiagnosticNotation1(int64 opts)
	{
		return CQt.QCborValue_ToDiagnosticNotation1(this.nativePtr, opts);
	}
	
}
public class QCborValue
{
	public QCborValuePtr handle;
	
	public static implicit operator QCborValuePtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QCborValuePtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQCborValue other)
	{
		this.handle.OperatorAssign(other);
	}
	
	public void Swap(IQCborValue other)
	{
		this.handle.Swap(other);
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool IsInteger()
	{
		return this.handle.IsInteger();
	}
	
	public bool IsByteArray()
	{
		return this.handle.IsByteArray();
	}
	
	public bool IsString()
	{
		return this.handle.IsString();
	}
	
	public bool IsArray()
	{
		return this.handle.IsArray();
	}
	
	public bool IsMap()
	{
		return this.handle.IsMap();
	}
	
	public bool IsTag()
	{
		return this.handle.IsTag();
	}
	
	public bool IsFalse()
	{
		return this.handle.IsFalse();
	}
	
	public bool IsTrue()
	{
		return this.handle.IsTrue();
	}
	
	public bool IsBool()
	{
		return this.handle.IsBool();
	}
	
	public bool IsNull()
	{
		return this.handle.IsNull();
	}
	
	public bool IsUndefined()
	{
		return this.handle.IsUndefined();
	}
	
	public bool IsDouble()
	{
		return this.handle.IsDouble();
	}
	
	public bool IsDateTime()
	{
		return this.handle.IsDateTime();
	}
	
	public bool IsUrl()
	{
		return this.handle.IsUrl();
	}
	
	public bool IsRegularExpression()
	{
		return this.handle.IsRegularExpression();
	}
	
	public bool IsUuid()
	{
		return this.handle.IsUuid();
	}
	
	public bool IsInvalid()
	{
		return this.handle.IsInvalid();
	}
	
	public bool IsContainer()
	{
		return this.handle.IsContainer();
	}
	
	public bool IsSimpleType()
	{
		return this.handle.IsSimpleType();
	}
	
	public bool IsSimpleTypeWithSt(void st)
	{
		return this.handle.IsSimpleTypeWithSt(default);
	}
	
	public void ToSimpleType()
	{
		this.handle.ToSimpleType();
	}
	
	public int64 ToInteger()
	{
		return this.handle.ToInteger();
	}
	
	public bool ToBool()
	{
		return this.handle.ToBool();
	}
	
	public double ToDouble()
	{
		return this.handle.ToDouble();
	}
	
	public void Tag()
	{
		this.handle.Tag();
	}
	
	public void TaggedValue()
	{
		this.handle.TaggedValue();
	}
	
	public libqt_string ToByteArray()
	{
		return this.handle.ToByteArray();
	}
	
	public libqt_string ToString()
	{
		return this.handle.ToString();
	}
	
	public void ToDateTime()
	{
		this.handle.ToDateTime();
	}
	
	public void ToUrl()
	{
		this.handle.ToUrl();
	}
	
	public void ToRegularExpression()
	{
		this.handle.ToRegularExpression();
	}
	
	public void ToUuid()
	{
		this.handle.ToUuid();
	}
	
	public void ToArray()
	{
		this.handle.ToArray();
	}
	
	public void ToArrayWithDefaultValue(IQCborArray defaultValue)
	{
		this.handle.ToArrayWithDefaultValue(defaultValue);
	}
	
	public void ToMap()
	{
		this.handle.ToMap();
	}
	
	public void ToMapWithDefaultValue(IQCborMap defaultValue)
	{
		this.handle.ToMapWithDefaultValue(defaultValue);
	}
	
	public void OperatorSubscript(String key)
	{
		this.handle.OperatorSubscript(key);
	}
	
	public void OperatorSubscript2(int64 key)
	{
		this.handle.OperatorSubscript2(key);
	}
	
	public void OperatorSubscript3(int64 key)
	{
		this.handle.OperatorSubscript3(key);
	}
	
	public void OperatorSubscript5(String key)
	{
		this.handle.OperatorSubscript5(key);
	}
	
	public int32 Compare(IQCborValue other)
	{
		return this.handle.Compare(other);
	}
	
	public bool OperatorEqual(IQCborValue other)
	{
		return this.handle.OperatorEqual(other);
	}
	
	public bool OperatorNotEqual(IQCborValue other)
	{
		return this.handle.OperatorNotEqual(other);
	}
	
	public bool OperatorLesser(IQCborValue other)
	{
		return this.handle.OperatorLesser(other);
	}
	
	public static void FromVariant(IQVariant variant)
	{
		QCborValuePtr.FromVariant(variant);
	}
	
	public void ToVariant()
	{
		this.handle.ToVariant();
	}
	
	public static void FromJsonValue(IQJsonValue v)
	{
		QCborValuePtr.FromJsonValue(v);
	}
	
	public void ToJsonValue()
	{
		this.handle.ToJsonValue();
	}
	
	public static void FromCbor(IQCborStreamReader reader)
	{
		QCborValuePtr.FromCbor(reader);
	}
	
	public static void FromCborWithBa(String ba)
	{
		QCborValuePtr.FromCborWithBa(ba);
	}
	
	public static void FromCbor2(char8* data, int32 lenVal)
	{
		QCborValuePtr.FromCbor2(data, lenVal);
	}
	
	public static void FromCbor3(uint8* data, int32 lenVal)
	{
		QCborValuePtr.FromCbor3(data, lenVal);
	}
	
	public libqt_string ToCbor()
	{
		return this.handle.ToCbor();
	}
	
	public void ToCborWithWriter(IQCborStreamWriter writer)
	{
		this.handle.ToCborWithWriter(writer);
	}
	
	public libqt_string ToDiagnosticNotation()
	{
		return this.handle.ToDiagnosticNotation();
	}
	
	public void ToSimpleType1(void defaultValue)
	{
		this.handle.ToSimpleType1(default);
	}
	
	public int64 ToInteger1(int64 defaultValue)
	{
		return this.handle.ToInteger1(defaultValue);
	}
	
	public bool ToBool1(bool defaultValue)
	{
		return this.handle.ToBool1(defaultValue);
	}
	
	public double ToDouble1(double defaultValue)
	{
		return this.handle.ToDouble1(defaultValue);
	}
	
	public void Tag1(void defaultValue)
	{
		this.handle.Tag1(default);
	}
	
	public void TaggedValue1(IQCborValue defaultValue)
	{
		this.handle.TaggedValue1(defaultValue);
	}
	
	public libqt_string ToByteArray1(String defaultValue)
	{
		return this.handle.ToByteArray1(defaultValue);
	}
	
	public libqt_string ToString1(String defaultValue)
	{
		return this.handle.ToString1(defaultValue);
	}
	
	public void ToDateTime1(IQDateTime defaultValue)
	{
		this.handle.ToDateTime1(defaultValue);
	}
	
	public void ToUrl1(IQUrl defaultValue)
	{
		this.handle.ToUrl1(defaultValue);
	}
	
	public void ToRegularExpression1(IQRegularExpression defaultValue)
	{
		this.handle.ToRegularExpression1(defaultValue);
	}
	
	public void ToUuid1(IQUuid defaultValue)
	{
		this.handle.ToUuid1(defaultValue);
	}
	
	public static void FromCbor22(String ba, IQCborParserError errorVal)
	{
		QCborValuePtr.FromCbor22(ba, errorVal);
	}
	
	public static void FromCbor32(char8* data, int32 lenVal, IQCborParserError errorVal)
	{
		QCborValuePtr.FromCbor32(data, lenVal, errorVal);
	}
	
	public static void FromCbor33(uint8* data, int32 lenVal, IQCborParserError errorVal)
	{
		QCborValuePtr.FromCbor33(data, lenVal, errorVal);
	}
	
	public libqt_string ToCbor1(int64 opt)
	{
		return this.handle.ToCbor1(opt);
	}
	
	public void ToCbor2(IQCborStreamWriter writer, int64 opt)
	{
		this.handle.ToCbor2(writer, opt);
	}
	
	public libqt_string ToDiagnosticNotation1(int64 opts)
	{
		return this.handle.ToDiagnosticNotation1(opts);
	}
	
}
extension CQt
{
	[LinkName("QCborValue_new")]
	public static extern void* QCborValue_new();
	[LinkName("QCborValue_new2")]
	public static extern void* QCborValue_new2(int64 t_);
	[LinkName("QCborValue_new3")]
	public static extern void* QCborValue_new3(bool b_);
	[LinkName("QCborValue_new4")]
	public static extern void* QCborValue_new4(int32 i);
	[LinkName("QCborValue_new5")]
	public static extern void* QCborValue_new5(uint32 u);
	[LinkName("QCborValue_new6")]
	public static extern void* QCborValue_new6(int64 i);
	[LinkName("QCborValue_new7")]
	public static extern void* QCborValue_new7(double v);
	[LinkName("QCborValue_new8")]
	public static extern void* QCborValue_new8(void st);
	[LinkName("QCborValue_new9")]
	public static extern void* QCborValue_new9(libqt_string ba);
	[LinkName("QCborValue_new10")]
	public static extern void* QCborValue_new10(libqt_string s);
	[LinkName("QCborValue_new11")]
	public static extern void* QCborValue_new11(char8* s);
	[LinkName("QCborValue_new12")]
	public static extern void* QCborValue_new12(void* a);
	[LinkName("QCborValue_new13")]
	public static extern void* QCborValue_new13(void* m);
	[LinkName("QCborValue_new14")]
	public static extern void* QCborValue_new14(void tag);
	[LinkName("QCborValue_new15")]
	public static extern void* QCborValue_new15(void t_);
	[LinkName("QCborValue_new16")]
	public static extern void* QCborValue_new16(void* dt);
	[LinkName("QCborValue_new17")]
	public static extern void* QCborValue_new17(void* url);
	[LinkName("QCborValue_new18")]
	public static extern void* QCborValue_new18(void* rx);
	[LinkName("QCborValue_new19")]
	public static extern void* QCborValue_new19(void* uuid);
	[LinkName("QCborValue_new20")]
	public static extern void* QCborValue_new20(void* other);
	[LinkName("QCborValue_new21")]
	public static extern void* QCborValue_new21(void tag, void* taggedValue);
	[LinkName("QCborValue_new22")]
	public static extern void* QCborValue_new22(void t_, void* tv);
	[LinkName("QCborValue_OperatorAssign")]
	public static extern void QCborValue_OperatorAssign(void* c_this, void* other);
	[LinkName("QCborValue_Swap")]
	public static extern void QCborValue_Swap(void* c_this, void* other);
	[LinkName("QCborValue_Type")]
	public static extern int64 QCborValue_Type(void* c_this);
	[LinkName("QCborValue_IsInteger")]
	public static extern bool QCborValue_IsInteger(void* c_this);
	[LinkName("QCborValue_IsByteArray")]
	public static extern bool QCborValue_IsByteArray(void* c_this);
	[LinkName("QCborValue_IsString")]
	public static extern bool QCborValue_IsString(void* c_this);
	[LinkName("QCborValue_IsArray")]
	public static extern bool QCborValue_IsArray(void* c_this);
	[LinkName("QCborValue_IsMap")]
	public static extern bool QCborValue_IsMap(void* c_this);
	[LinkName("QCborValue_IsTag")]
	public static extern bool QCborValue_IsTag(void* c_this);
	[LinkName("QCborValue_IsFalse")]
	public static extern bool QCborValue_IsFalse(void* c_this);
	[LinkName("QCborValue_IsTrue")]
	public static extern bool QCborValue_IsTrue(void* c_this);
	[LinkName("QCborValue_IsBool")]
	public static extern bool QCborValue_IsBool(void* c_this);
	[LinkName("QCborValue_IsNull")]
	public static extern bool QCborValue_IsNull(void* c_this);
	[LinkName("QCborValue_IsUndefined")]
	public static extern bool QCborValue_IsUndefined(void* c_this);
	[LinkName("QCborValue_IsDouble")]
	public static extern bool QCborValue_IsDouble(void* c_this);
	[LinkName("QCborValue_IsDateTime")]
	public static extern bool QCborValue_IsDateTime(void* c_this);
	[LinkName("QCborValue_IsUrl")]
	public static extern bool QCborValue_IsUrl(void* c_this);
	[LinkName("QCborValue_IsRegularExpression")]
	public static extern bool QCborValue_IsRegularExpression(void* c_this);
	[LinkName("QCborValue_IsUuid")]
	public static extern bool QCborValue_IsUuid(void* c_this);
	[LinkName("QCborValue_IsInvalid")]
	public static extern bool QCborValue_IsInvalid(void* c_this);
	[LinkName("QCborValue_IsContainer")]
	public static extern bool QCborValue_IsContainer(void* c_this);
	[LinkName("QCborValue_IsSimpleType")]
	public static extern bool QCborValue_IsSimpleType(void* c_this);
	[LinkName("QCborValue_IsSimpleTypeWithSt")]
	public static extern bool QCborValue_IsSimpleTypeWithSt(void* c_this, void st);
	[LinkName("QCborValue_ToSimpleType")]
	public static extern void QCborValue_ToSimpleType(void* c_this);
	[LinkName("QCborValue_ToInteger")]
	public static extern int64 QCborValue_ToInteger(void* c_this);
	[LinkName("QCborValue_ToBool")]
	public static extern bool QCborValue_ToBool(void* c_this);
	[LinkName("QCborValue_ToDouble")]
	public static extern double QCborValue_ToDouble(void* c_this);
	[LinkName("QCborValue_Tag")]
	public static extern void QCborValue_Tag(void* c_this);
	[LinkName("QCborValue_TaggedValue")]
	public static extern void QCborValue_TaggedValue(void* c_this);
	[LinkName("QCborValue_ToByteArray")]
	public static extern libqt_string QCborValue_ToByteArray(void* c_this);
	[LinkName("QCborValue_ToString")]
	public static extern libqt_string QCborValue_ToString(void* c_this);
	[LinkName("QCborValue_ToDateTime")]
	public static extern void QCborValue_ToDateTime(void* c_this);
	[LinkName("QCborValue_ToUrl")]
	public static extern void QCborValue_ToUrl(void* c_this);
	[LinkName("QCborValue_ToRegularExpression")]
	public static extern void QCborValue_ToRegularExpression(void* c_this);
	[LinkName("QCborValue_ToUuid")]
	public static extern void QCborValue_ToUuid(void* c_this);
	[LinkName("QCborValue_ToArray")]
	public static extern void QCborValue_ToArray(void* c_this);
	[LinkName("QCborValue_ToArrayWithDefaultValue")]
	public static extern void QCborValue_ToArrayWithDefaultValue(void* c_this, void* defaultValue);
	[LinkName("QCborValue_ToMap")]
	public static extern void QCborValue_ToMap(void* c_this);
	[LinkName("QCborValue_ToMapWithDefaultValue")]
	public static extern void QCborValue_ToMapWithDefaultValue(void* c_this, void* defaultValue);
	[LinkName("QCborValue_OperatorSubscript")]
	public static extern void QCborValue_OperatorSubscript(void* c_this, libqt_string key);
	[LinkName("QCborValue_OperatorSubscript2")]
	public static extern void QCborValue_OperatorSubscript2(void* c_this, int64 key);
	[LinkName("QCborValue_OperatorSubscript3")]
	public static extern void QCborValue_OperatorSubscript3(void* c_this, int64 key);
	[LinkName("QCborValue_OperatorSubscript5")]
	public static extern void QCborValue_OperatorSubscript5(void* c_this, libqt_string key);
	[LinkName("QCborValue_Compare")]
	public static extern int32 QCborValue_Compare(void* c_this, void* other);
	[LinkName("QCborValue_OperatorEqual")]
	public static extern bool QCborValue_OperatorEqual(void* c_this, void* other);
	[LinkName("QCborValue_OperatorNotEqual")]
	public static extern bool QCborValue_OperatorNotEqual(void* c_this, void* other);
	[LinkName("QCborValue_OperatorLesser")]
	public static extern bool QCborValue_OperatorLesser(void* c_this, void* other);
	[LinkName("QCborValue_FromVariant")]
	public static extern void QCborValue_FromVariant(void* variant);
	[LinkName("QCborValue_ToVariant")]
	public static extern void QCborValue_ToVariant(void* c_this);
	[LinkName("QCborValue_FromJsonValue")]
	public static extern void QCborValue_FromJsonValue(void* v);
	[LinkName("QCborValue_ToJsonValue")]
	public static extern void QCborValue_ToJsonValue(void* c_this);
	[LinkName("QCborValue_FromCbor")]
	public static extern void QCborValue_FromCbor(void* reader);
	[LinkName("QCborValue_FromCborWithBa")]
	public static extern void QCborValue_FromCborWithBa(libqt_string ba);
	[LinkName("QCborValue_FromCbor2")]
	public static extern void QCborValue_FromCbor2(char8* data, int32 lenVal);
	[LinkName("QCborValue_FromCbor3")]
	public static extern void QCborValue_FromCbor3(uint8* data, int32 lenVal);
	[LinkName("QCborValue_ToCbor")]
	public static extern libqt_string QCborValue_ToCbor(void* c_this);
	[LinkName("QCborValue_ToCborWithWriter")]
	public static extern void QCborValue_ToCborWithWriter(void* c_this, void* writer);
	[LinkName("QCborValue_ToDiagnosticNotation")]
	public static extern libqt_string QCborValue_ToDiagnosticNotation(void* c_this);
	[LinkName("QCborValue_ToSimpleType1")]
	public static extern void QCborValue_ToSimpleType1(void* c_this, void defaultValue);
	[LinkName("QCborValue_ToInteger1")]
	public static extern int64 QCborValue_ToInteger1(void* c_this, int64 defaultValue);
	[LinkName("QCborValue_ToBool1")]
	public static extern bool QCborValue_ToBool1(void* c_this, bool defaultValue);
	[LinkName("QCborValue_ToDouble1")]
	public static extern double QCborValue_ToDouble1(void* c_this, double defaultValue);
	[LinkName("QCborValue_Tag1")]
	public static extern void QCborValue_Tag1(void* c_this, void defaultValue);
	[LinkName("QCborValue_TaggedValue1")]
	public static extern void QCborValue_TaggedValue1(void* c_this, void* defaultValue);
	[LinkName("QCborValue_ToByteArray1")]
	public static extern libqt_string QCborValue_ToByteArray1(void* c_this, libqt_string defaultValue);
	[LinkName("QCborValue_ToString1")]
	public static extern libqt_string QCborValue_ToString1(void* c_this, libqt_string defaultValue);
	[LinkName("QCborValue_ToDateTime1")]
	public static extern void QCborValue_ToDateTime1(void* c_this, void* defaultValue);
	[LinkName("QCborValue_ToUrl1")]
	public static extern void QCborValue_ToUrl1(void* c_this, void* defaultValue);
	[LinkName("QCborValue_ToRegularExpression1")]
	public static extern void QCborValue_ToRegularExpression1(void* c_this, void* defaultValue);
	[LinkName("QCborValue_ToUuid1")]
	public static extern void QCborValue_ToUuid1(void* c_this, void* defaultValue);
	[LinkName("QCborValue_FromCbor22")]
	public static extern void QCborValue_FromCbor22(libqt_string ba, void* errorVal);
	[LinkName("QCborValue_FromCbor32")]
	public static extern void QCborValue_FromCbor32(char8* data, int32 lenVal, void* errorVal);
	[LinkName("QCborValue_FromCbor33")]
	public static extern void QCborValue_FromCbor33(uint8* data, int32 lenVal, void* errorVal);
	[LinkName("QCborValue_ToCbor1")]
	public static extern libqt_string QCborValue_ToCbor1(void* c_this, int64 opt);
	[LinkName("QCborValue_ToCbor2")]
	public static extern void QCborValue_ToCbor2(void* c_this, void* writer, int64 opt);
	[LinkName("QCborValue_ToDiagnosticNotation1")]
	public static extern libqt_string QCborValue_ToDiagnosticNotation1(void* c_this, int64 opts);
	/// Delete this object from C++ memory
	[LinkName("QCborValue_Delete")]
	public static extern void QCborValue_Delete(void* self);
}
public interface IQCborValueConstRef
{
	void* NativePtr { get; }
}
public struct QCborValueConstRefPtr : IQCborValueConstRef, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQCborValueConstRef other)
	{
		return .(CQt.QCborValueConstRef_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QCborValueConstRef_Delete(this.nativePtr);
	}
	
	public void ToQCborValue()
	{
		CQt.QCborValueConstRef_ToQCborValue(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QCborValueConstRef_Type(this.nativePtr);
	}
	
	public bool IsInteger()
	{
		return CQt.QCborValueConstRef_IsInteger(this.nativePtr);
	}
	
	public bool IsByteArray()
	{
		return CQt.QCborValueConstRef_IsByteArray(this.nativePtr);
	}
	
	public bool IsString()
	{
		return CQt.QCborValueConstRef_IsString(this.nativePtr);
	}
	
	public bool IsArray()
	{
		return CQt.QCborValueConstRef_IsArray(this.nativePtr);
	}
	
	public bool IsMap()
	{
		return CQt.QCborValueConstRef_IsMap(this.nativePtr);
	}
	
	public bool IsTag()
	{
		return CQt.QCborValueConstRef_IsTag(this.nativePtr);
	}
	
	public bool IsFalse()
	{
		return CQt.QCborValueConstRef_IsFalse(this.nativePtr);
	}
	
	public bool IsTrue()
	{
		return CQt.QCborValueConstRef_IsTrue(this.nativePtr);
	}
	
	public bool IsBool()
	{
		return CQt.QCborValueConstRef_IsBool(this.nativePtr);
	}
	
	public bool IsNull()
	{
		return CQt.QCborValueConstRef_IsNull(this.nativePtr);
	}
	
	public bool IsUndefined()
	{
		return CQt.QCborValueConstRef_IsUndefined(this.nativePtr);
	}
	
	public bool IsDouble()
	{
		return CQt.QCborValueConstRef_IsDouble(this.nativePtr);
	}
	
	public bool IsDateTime()
	{
		return CQt.QCborValueConstRef_IsDateTime(this.nativePtr);
	}
	
	public bool IsUrl()
	{
		return CQt.QCborValueConstRef_IsUrl(this.nativePtr);
	}
	
	public bool IsRegularExpression()
	{
		return CQt.QCborValueConstRef_IsRegularExpression(this.nativePtr);
	}
	
	public bool IsUuid()
	{
		return CQt.QCborValueConstRef_IsUuid(this.nativePtr);
	}
	
	public bool IsInvalid()
	{
		return CQt.QCborValueConstRef_IsInvalid(this.nativePtr);
	}
	
	public bool IsContainer()
	{
		return CQt.QCborValueConstRef_IsContainer(this.nativePtr);
	}
	
	public bool IsSimpleType()
	{
		return CQt.QCborValueConstRef_IsSimpleType(this.nativePtr);
	}
	
	public bool IsSimpleTypeWithSt(void st)
	{
		return CQt.QCborValueConstRef_IsSimpleTypeWithSt(this.nativePtr, default);
	}
	
	public void ToSimpleType()
	{
		CQt.QCborValueConstRef_ToSimpleType(this.nativePtr);
	}
	
	public void Tag()
	{
		CQt.QCborValueConstRef_Tag(this.nativePtr);
	}
	
	public void TaggedValue()
	{
		CQt.QCborValueConstRef_TaggedValue(this.nativePtr);
	}
	
	public int64 ToInteger()
	{
		return CQt.QCborValueConstRef_ToInteger(this.nativePtr);
	}
	
	public bool ToBool()
	{
		return CQt.QCborValueConstRef_ToBool(this.nativePtr);
	}
	
	public double ToDouble()
	{
		return CQt.QCborValueConstRef_ToDouble(this.nativePtr);
	}
	
	public libqt_string ToByteArray()
	{
		return CQt.QCborValueConstRef_ToByteArray(this.nativePtr);
	}
	
	public libqt_string ToString()
	{
		return CQt.QCborValueConstRef_ToString(this.nativePtr);
	}
	
	public void ToDateTime()
	{
		CQt.QCborValueConstRef_ToDateTime(this.nativePtr);
	}
	
	public void ToUrl()
	{
		CQt.QCborValueConstRef_ToUrl(this.nativePtr);
	}
	
	public void ToRegularExpression()
	{
		CQt.QCborValueConstRef_ToRegularExpression(this.nativePtr);
	}
	
	public void ToUuid()
	{
		CQt.QCborValueConstRef_ToUuid(this.nativePtr);
	}
	
	public void ToArray()
	{
		CQt.QCborValueConstRef_ToArray(this.nativePtr);
	}
	
	public void ToArrayWithQCborArray(IQCborArray a)
	{
		CQt.QCborValueConstRef_ToArrayWithQCborArray(this.nativePtr, (a == default || a.NativePtr == default) ? default : a.NativePtr);
	}
	
	public void ToMap()
	{
		CQt.QCborValueConstRef_ToMap(this.nativePtr);
	}
	
	public void ToMapWithQCborMap(IQCborMap m)
	{
		CQt.QCborValueConstRef_ToMapWithQCborMap(this.nativePtr, (m == default || m.NativePtr == default) ? default : m.NativePtr);
	}
	
	public void OperatorSubscript(String key)
	{
		CQt.QCborValueConstRef_OperatorSubscript(this.nativePtr, libqt_string(key));
	}
	
	public void OperatorSubscript2(int64 key)
	{
		CQt.QCborValueConstRef_OperatorSubscript2(this.nativePtr, key);
	}
	
	public int32 Compare(IQCborValue other)
	{
		return CQt.QCborValueConstRef_Compare(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorEqual(IQCborValue other)
	{
		return CQt.QCborValueConstRef_OperatorEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorNotEqual(IQCborValue other)
	{
		return CQt.QCborValueConstRef_OperatorNotEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorLesser(IQCborValue other)
	{
		return CQt.QCborValueConstRef_OperatorLesser(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void ToVariant()
	{
		CQt.QCborValueConstRef_ToVariant(this.nativePtr);
	}
	
	public void ToJsonValue()
	{
		CQt.QCborValueConstRef_ToJsonValue(this.nativePtr);
	}
	
	public libqt_string ToCbor()
	{
		return CQt.QCborValueConstRef_ToCbor(this.nativePtr);
	}
	
	public void ToCborWithWriter(IQCborStreamWriter writer)
	{
		CQt.QCborValueConstRef_ToCborWithWriter(this.nativePtr, (writer == default || writer.NativePtr == default) ? default : writer.NativePtr);
	}
	
	public libqt_string ToDiagnosticNotation()
	{
		return CQt.QCborValueConstRef_ToDiagnosticNotation(this.nativePtr);
	}
	
	public void ToSimpleType1(void defaultValue)
	{
		CQt.QCborValueConstRef_ToSimpleType1(this.nativePtr, default);
	}
	
	public void Tag1(void defaultValue)
	{
		CQt.QCborValueConstRef_Tag1(this.nativePtr, default);
	}
	
	public void TaggedValue1(IQCborValue defaultValue)
	{
		CQt.QCborValueConstRef_TaggedValue1(this.nativePtr, (defaultValue == default || defaultValue.NativePtr == default) ? default : defaultValue.NativePtr);
	}
	
	public int64 ToInteger1(int64 defaultValue)
	{
		return CQt.QCborValueConstRef_ToInteger1(this.nativePtr, defaultValue);
	}
	
	public bool ToBool1(bool defaultValue)
	{
		return CQt.QCborValueConstRef_ToBool1(this.nativePtr, defaultValue);
	}
	
	public double ToDouble1(double defaultValue)
	{
		return CQt.QCborValueConstRef_ToDouble1(this.nativePtr, defaultValue);
	}
	
	public libqt_string ToByteArray1(String defaultValue)
	{
		return CQt.QCborValueConstRef_ToByteArray1(this.nativePtr, libqt_string(defaultValue));
	}
	
	public libqt_string ToString1(String defaultValue)
	{
		return CQt.QCborValueConstRef_ToString1(this.nativePtr, libqt_string(defaultValue));
	}
	
	public void ToDateTime1(IQDateTime defaultValue)
	{
		CQt.QCborValueConstRef_ToDateTime1(this.nativePtr, (defaultValue == default || defaultValue.NativePtr == default) ? default : defaultValue.NativePtr);
	}
	
	public void ToUrl1(IQUrl defaultValue)
	{
		CQt.QCborValueConstRef_ToUrl1(this.nativePtr, (defaultValue == default || defaultValue.NativePtr == default) ? default : defaultValue.NativePtr);
	}
	
	public void ToRegularExpression1(IQRegularExpression defaultValue)
	{
		CQt.QCborValueConstRef_ToRegularExpression1(this.nativePtr, (defaultValue == default || defaultValue.NativePtr == default) ? default : defaultValue.NativePtr);
	}
	
	public void ToUuid1(IQUuid defaultValue)
	{
		CQt.QCborValueConstRef_ToUuid1(this.nativePtr, (defaultValue == default || defaultValue.NativePtr == default) ? default : defaultValue.NativePtr);
	}
	
	public libqt_string ToCbor1(int64 opt)
	{
		return CQt.QCborValueConstRef_ToCbor1(this.nativePtr, opt);
	}
	
	public void ToCbor2(IQCborStreamWriter writer, int64 opt)
	{
		CQt.QCborValueConstRef_ToCbor2(this.nativePtr, (writer == default || writer.NativePtr == default) ? default : writer.NativePtr, opt);
	}
	
	public libqt_string ToDiagnosticNotation1(int64 opt)
	{
		return CQt.QCborValueConstRef_ToDiagnosticNotation1(this.nativePtr, opt);
	}
	
}
public class QCborValueConstRef
{
	public QCborValueConstRefPtr handle;
	
	public static implicit operator QCborValueConstRefPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQCborValueConstRef other)
	{
		this.handle = QCborValueConstRefPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void ToQCborValue()
	{
		this.handle.ToQCborValue();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool IsInteger()
	{
		return this.handle.IsInteger();
	}
	
	public bool IsByteArray()
	{
		return this.handle.IsByteArray();
	}
	
	public bool IsString()
	{
		return this.handle.IsString();
	}
	
	public bool IsArray()
	{
		return this.handle.IsArray();
	}
	
	public bool IsMap()
	{
		return this.handle.IsMap();
	}
	
	public bool IsTag()
	{
		return this.handle.IsTag();
	}
	
	public bool IsFalse()
	{
		return this.handle.IsFalse();
	}
	
	public bool IsTrue()
	{
		return this.handle.IsTrue();
	}
	
	public bool IsBool()
	{
		return this.handle.IsBool();
	}
	
	public bool IsNull()
	{
		return this.handle.IsNull();
	}
	
	public bool IsUndefined()
	{
		return this.handle.IsUndefined();
	}
	
	public bool IsDouble()
	{
		return this.handle.IsDouble();
	}
	
	public bool IsDateTime()
	{
		return this.handle.IsDateTime();
	}
	
	public bool IsUrl()
	{
		return this.handle.IsUrl();
	}
	
	public bool IsRegularExpression()
	{
		return this.handle.IsRegularExpression();
	}
	
	public bool IsUuid()
	{
		return this.handle.IsUuid();
	}
	
	public bool IsInvalid()
	{
		return this.handle.IsInvalid();
	}
	
	public bool IsContainer()
	{
		return this.handle.IsContainer();
	}
	
	public bool IsSimpleType()
	{
		return this.handle.IsSimpleType();
	}
	
	public bool IsSimpleTypeWithSt(void st)
	{
		return this.handle.IsSimpleTypeWithSt(default);
	}
	
	public void ToSimpleType()
	{
		this.handle.ToSimpleType();
	}
	
	public void Tag()
	{
		this.handle.Tag();
	}
	
	public void TaggedValue()
	{
		this.handle.TaggedValue();
	}
	
	public int64 ToInteger()
	{
		return this.handle.ToInteger();
	}
	
	public bool ToBool()
	{
		return this.handle.ToBool();
	}
	
	public double ToDouble()
	{
		return this.handle.ToDouble();
	}
	
	public libqt_string ToByteArray()
	{
		return this.handle.ToByteArray();
	}
	
	public libqt_string ToString()
	{
		return this.handle.ToString();
	}
	
	public void ToDateTime()
	{
		this.handle.ToDateTime();
	}
	
	public void ToUrl()
	{
		this.handle.ToUrl();
	}
	
	public void ToRegularExpression()
	{
		this.handle.ToRegularExpression();
	}
	
	public void ToUuid()
	{
		this.handle.ToUuid();
	}
	
	public void ToArray()
	{
		this.handle.ToArray();
	}
	
	public void ToArrayWithQCborArray(IQCborArray a)
	{
		this.handle.ToArrayWithQCborArray(a);
	}
	
	public void ToMap()
	{
		this.handle.ToMap();
	}
	
	public void ToMapWithQCborMap(IQCborMap m)
	{
		this.handle.ToMapWithQCborMap(m);
	}
	
	public void OperatorSubscript(String key)
	{
		this.handle.OperatorSubscript(key);
	}
	
	public void OperatorSubscript2(int64 key)
	{
		this.handle.OperatorSubscript2(key);
	}
	
	public int32 Compare(IQCborValue other)
	{
		return this.handle.Compare(other);
	}
	
	public bool OperatorEqual(IQCborValue other)
	{
		return this.handle.OperatorEqual(other);
	}
	
	public bool OperatorNotEqual(IQCborValue other)
	{
		return this.handle.OperatorNotEqual(other);
	}
	
	public bool OperatorLesser(IQCborValue other)
	{
		return this.handle.OperatorLesser(other);
	}
	
	public void ToVariant()
	{
		this.handle.ToVariant();
	}
	
	public void ToJsonValue()
	{
		this.handle.ToJsonValue();
	}
	
	public libqt_string ToCbor()
	{
		return this.handle.ToCbor();
	}
	
	public void ToCborWithWriter(IQCborStreamWriter writer)
	{
		this.handle.ToCborWithWriter(writer);
	}
	
	public libqt_string ToDiagnosticNotation()
	{
		return this.handle.ToDiagnosticNotation();
	}
	
	public void ToSimpleType1(void defaultValue)
	{
		this.handle.ToSimpleType1(default);
	}
	
	public void Tag1(void defaultValue)
	{
		this.handle.Tag1(default);
	}
	
	public void TaggedValue1(IQCborValue defaultValue)
	{
		this.handle.TaggedValue1(defaultValue);
	}
	
	public int64 ToInteger1(int64 defaultValue)
	{
		return this.handle.ToInteger1(defaultValue);
	}
	
	public bool ToBool1(bool defaultValue)
	{
		return this.handle.ToBool1(defaultValue);
	}
	
	public double ToDouble1(double defaultValue)
	{
		return this.handle.ToDouble1(defaultValue);
	}
	
	public libqt_string ToByteArray1(String defaultValue)
	{
		return this.handle.ToByteArray1(defaultValue);
	}
	
	public libqt_string ToString1(String defaultValue)
	{
		return this.handle.ToString1(defaultValue);
	}
	
	public void ToDateTime1(IQDateTime defaultValue)
	{
		this.handle.ToDateTime1(defaultValue);
	}
	
	public void ToUrl1(IQUrl defaultValue)
	{
		this.handle.ToUrl1(defaultValue);
	}
	
	public void ToRegularExpression1(IQRegularExpression defaultValue)
	{
		this.handle.ToRegularExpression1(defaultValue);
	}
	
	public void ToUuid1(IQUuid defaultValue)
	{
		this.handle.ToUuid1(defaultValue);
	}
	
	public libqt_string ToCbor1(int64 opt)
	{
		return this.handle.ToCbor1(opt);
	}
	
	public void ToCbor2(IQCborStreamWriter writer, int64 opt)
	{
		this.handle.ToCbor2(writer, opt);
	}
	
	public libqt_string ToDiagnosticNotation1(int64 opt)
	{
		return this.handle.ToDiagnosticNotation1(opt);
	}
	
}
extension CQt
{
	[LinkName("QCborValueConstRef_new")]
	public static extern void* QCborValueConstRef_new(void* other);
	[LinkName("QCborValueConstRef_new2")]
	public static extern void* QCborValueConstRef_new2(void* param1);
	[LinkName("QCborValueConstRef_ToQCborValue")]
	public static extern void QCborValueConstRef_ToQCborValue(void* c_this);
	[LinkName("QCborValueConstRef_Type")]
	public static extern int64 QCborValueConstRef_Type(void* c_this);
	[LinkName("QCborValueConstRef_IsInteger")]
	public static extern bool QCborValueConstRef_IsInteger(void* c_this);
	[LinkName("QCborValueConstRef_IsByteArray")]
	public static extern bool QCborValueConstRef_IsByteArray(void* c_this);
	[LinkName("QCborValueConstRef_IsString")]
	public static extern bool QCborValueConstRef_IsString(void* c_this);
	[LinkName("QCborValueConstRef_IsArray")]
	public static extern bool QCborValueConstRef_IsArray(void* c_this);
	[LinkName("QCborValueConstRef_IsMap")]
	public static extern bool QCborValueConstRef_IsMap(void* c_this);
	[LinkName("QCborValueConstRef_IsTag")]
	public static extern bool QCborValueConstRef_IsTag(void* c_this);
	[LinkName("QCborValueConstRef_IsFalse")]
	public static extern bool QCborValueConstRef_IsFalse(void* c_this);
	[LinkName("QCborValueConstRef_IsTrue")]
	public static extern bool QCborValueConstRef_IsTrue(void* c_this);
	[LinkName("QCborValueConstRef_IsBool")]
	public static extern bool QCborValueConstRef_IsBool(void* c_this);
	[LinkName("QCborValueConstRef_IsNull")]
	public static extern bool QCborValueConstRef_IsNull(void* c_this);
	[LinkName("QCborValueConstRef_IsUndefined")]
	public static extern bool QCborValueConstRef_IsUndefined(void* c_this);
	[LinkName("QCborValueConstRef_IsDouble")]
	public static extern bool QCborValueConstRef_IsDouble(void* c_this);
	[LinkName("QCborValueConstRef_IsDateTime")]
	public static extern bool QCborValueConstRef_IsDateTime(void* c_this);
	[LinkName("QCborValueConstRef_IsUrl")]
	public static extern bool QCborValueConstRef_IsUrl(void* c_this);
	[LinkName("QCborValueConstRef_IsRegularExpression")]
	public static extern bool QCborValueConstRef_IsRegularExpression(void* c_this);
	[LinkName("QCborValueConstRef_IsUuid")]
	public static extern bool QCborValueConstRef_IsUuid(void* c_this);
	[LinkName("QCborValueConstRef_IsInvalid")]
	public static extern bool QCborValueConstRef_IsInvalid(void* c_this);
	[LinkName("QCborValueConstRef_IsContainer")]
	public static extern bool QCborValueConstRef_IsContainer(void* c_this);
	[LinkName("QCborValueConstRef_IsSimpleType")]
	public static extern bool QCborValueConstRef_IsSimpleType(void* c_this);
	[LinkName("QCborValueConstRef_IsSimpleTypeWithSt")]
	public static extern bool QCborValueConstRef_IsSimpleTypeWithSt(void* c_this, void st);
	[LinkName("QCborValueConstRef_ToSimpleType")]
	public static extern void QCborValueConstRef_ToSimpleType(void* c_this);
	[LinkName("QCborValueConstRef_Tag")]
	public static extern void QCborValueConstRef_Tag(void* c_this);
	[LinkName("QCborValueConstRef_TaggedValue")]
	public static extern void QCborValueConstRef_TaggedValue(void* c_this);
	[LinkName("QCborValueConstRef_ToInteger")]
	public static extern int64 QCborValueConstRef_ToInteger(void* c_this);
	[LinkName("QCborValueConstRef_ToBool")]
	public static extern bool QCborValueConstRef_ToBool(void* c_this);
	[LinkName("QCborValueConstRef_ToDouble")]
	public static extern double QCborValueConstRef_ToDouble(void* c_this);
	[LinkName("QCborValueConstRef_ToByteArray")]
	public static extern libqt_string QCborValueConstRef_ToByteArray(void* c_this);
	[LinkName("QCborValueConstRef_ToString")]
	public static extern libqt_string QCborValueConstRef_ToString(void* c_this);
	[LinkName("QCborValueConstRef_ToDateTime")]
	public static extern void QCborValueConstRef_ToDateTime(void* c_this);
	[LinkName("QCborValueConstRef_ToUrl")]
	public static extern void QCborValueConstRef_ToUrl(void* c_this);
	[LinkName("QCborValueConstRef_ToRegularExpression")]
	public static extern void QCborValueConstRef_ToRegularExpression(void* c_this);
	[LinkName("QCborValueConstRef_ToUuid")]
	public static extern void QCborValueConstRef_ToUuid(void* c_this);
	[LinkName("QCborValueConstRef_ToArray")]
	public static extern void QCborValueConstRef_ToArray(void* c_this);
	[LinkName("QCborValueConstRef_ToArrayWithQCborArray")]
	public static extern void QCborValueConstRef_ToArrayWithQCborArray(void* c_this, void* a);
	[LinkName("QCborValueConstRef_ToMap")]
	public static extern void QCborValueConstRef_ToMap(void* c_this);
	[LinkName("QCborValueConstRef_ToMapWithQCborMap")]
	public static extern void QCborValueConstRef_ToMapWithQCborMap(void* c_this, void* m);
	[LinkName("QCborValueConstRef_OperatorSubscript")]
	public static extern void QCborValueConstRef_OperatorSubscript(void* c_this, libqt_string key);
	[LinkName("QCborValueConstRef_OperatorSubscript2")]
	public static extern void QCborValueConstRef_OperatorSubscript2(void* c_this, int64 key);
	[LinkName("QCborValueConstRef_Compare")]
	public static extern int32 QCborValueConstRef_Compare(void* c_this, void* other);
	[LinkName("QCborValueConstRef_OperatorEqual")]
	public static extern bool QCborValueConstRef_OperatorEqual(void* c_this, void* other);
	[LinkName("QCborValueConstRef_OperatorNotEqual")]
	public static extern bool QCborValueConstRef_OperatorNotEqual(void* c_this, void* other);
	[LinkName("QCborValueConstRef_OperatorLesser")]
	public static extern bool QCborValueConstRef_OperatorLesser(void* c_this, void* other);
	[LinkName("QCborValueConstRef_ToVariant")]
	public static extern void QCborValueConstRef_ToVariant(void* c_this);
	[LinkName("QCborValueConstRef_ToJsonValue")]
	public static extern void QCborValueConstRef_ToJsonValue(void* c_this);
	[LinkName("QCborValueConstRef_ToCbor")]
	public static extern libqt_string QCborValueConstRef_ToCbor(void* c_this);
	[LinkName("QCborValueConstRef_ToCborWithWriter")]
	public static extern void QCborValueConstRef_ToCborWithWriter(void* c_this, void* writer);
	[LinkName("QCborValueConstRef_ToDiagnosticNotation")]
	public static extern libqt_string QCborValueConstRef_ToDiagnosticNotation(void* c_this);
	[LinkName("QCborValueConstRef_ToSimpleType1")]
	public static extern void QCborValueConstRef_ToSimpleType1(void* c_this, void defaultValue);
	[LinkName("QCborValueConstRef_Tag1")]
	public static extern void QCborValueConstRef_Tag1(void* c_this, void defaultValue);
	[LinkName("QCborValueConstRef_TaggedValue1")]
	public static extern void QCborValueConstRef_TaggedValue1(void* c_this, void* defaultValue);
	[LinkName("QCborValueConstRef_ToInteger1")]
	public static extern int64 QCborValueConstRef_ToInteger1(void* c_this, int64 defaultValue);
	[LinkName("QCborValueConstRef_ToBool1")]
	public static extern bool QCborValueConstRef_ToBool1(void* c_this, bool defaultValue);
	[LinkName("QCborValueConstRef_ToDouble1")]
	public static extern double QCborValueConstRef_ToDouble1(void* c_this, double defaultValue);
	[LinkName("QCborValueConstRef_ToByteArray1")]
	public static extern libqt_string QCborValueConstRef_ToByteArray1(void* c_this, libqt_string defaultValue);
	[LinkName("QCborValueConstRef_ToString1")]
	public static extern libqt_string QCborValueConstRef_ToString1(void* c_this, libqt_string defaultValue);
	[LinkName("QCborValueConstRef_ToDateTime1")]
	public static extern void QCborValueConstRef_ToDateTime1(void* c_this, void* defaultValue);
	[LinkName("QCborValueConstRef_ToUrl1")]
	public static extern void QCborValueConstRef_ToUrl1(void* c_this, void* defaultValue);
	[LinkName("QCborValueConstRef_ToRegularExpression1")]
	public static extern void QCborValueConstRef_ToRegularExpression1(void* c_this, void* defaultValue);
	[LinkName("QCborValueConstRef_ToUuid1")]
	public static extern void QCborValueConstRef_ToUuid1(void* c_this, void* defaultValue);
	[LinkName("QCborValueConstRef_ToCbor1")]
	public static extern libqt_string QCborValueConstRef_ToCbor1(void* c_this, int64 opt);
	[LinkName("QCborValueConstRef_ToCbor2")]
	public static extern void QCborValueConstRef_ToCbor2(void* c_this, void* writer, int64 opt);
	[LinkName("QCborValueConstRef_ToDiagnosticNotation1")]
	public static extern libqt_string QCborValueConstRef_ToDiagnosticNotation1(void* c_this, int64 opt);
	/// Delete this object from C++ memory
	[LinkName("QCborValueConstRef_Delete")]
	public static extern void QCborValueConstRef_Delete(void* self);
}
public interface IQCborValueRef
{
	void* NativePtr { get; }
}
public struct QCborValueRefPtr : IQCborValueRef, IDisposable, IQCborValueConstRef
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQCborValueRef other)
	{
		return .(CQt.QCborValueRef_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QCborValueRef_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQCborValue other)
	{
		CQt.QCborValueRef_OperatorAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void OperatorAssignWithOther(IQCborValueRef other)
	{
		CQt.QCborValueRef_OperatorAssignWithOther(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void OperatorSubscript(int64 key)
	{
		CQt.QCborValueRef_OperatorSubscript(this.nativePtr, key);
	}
	
	public void OperatorSubscript2(String key)
	{
		CQt.QCborValueRef_OperatorSubscript2(this.nativePtr, libqt_string(key));
	}
	
	public void ToQCborValue()
	{
		CQt.QCborValueRef_ToQCborValue(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QCborValueRef_Type(this.nativePtr);
	}
	
	public bool IsInteger()
	{
		return CQt.QCborValueRef_IsInteger(this.nativePtr);
	}
	
	public bool IsByteArray()
	{
		return CQt.QCborValueRef_IsByteArray(this.nativePtr);
	}
	
	public bool IsString()
	{
		return CQt.QCborValueRef_IsString(this.nativePtr);
	}
	
	public bool IsArray()
	{
		return CQt.QCborValueRef_IsArray(this.nativePtr);
	}
	
	public bool IsMap()
	{
		return CQt.QCborValueRef_IsMap(this.nativePtr);
	}
	
	public bool IsTag()
	{
		return CQt.QCborValueRef_IsTag(this.nativePtr);
	}
	
	public bool IsFalse()
	{
		return CQt.QCborValueRef_IsFalse(this.nativePtr);
	}
	
	public bool IsTrue()
	{
		return CQt.QCborValueRef_IsTrue(this.nativePtr);
	}
	
	public bool IsBool()
	{
		return CQt.QCborValueRef_IsBool(this.nativePtr);
	}
	
	public bool IsNull()
	{
		return CQt.QCborValueRef_IsNull(this.nativePtr);
	}
	
	public bool IsUndefined()
	{
		return CQt.QCborValueRef_IsUndefined(this.nativePtr);
	}
	
	public bool IsDouble()
	{
		return CQt.QCborValueRef_IsDouble(this.nativePtr);
	}
	
	public bool IsDateTime()
	{
		return CQt.QCborValueRef_IsDateTime(this.nativePtr);
	}
	
	public bool IsUrl()
	{
		return CQt.QCborValueRef_IsUrl(this.nativePtr);
	}
	
	public bool IsRegularExpression()
	{
		return CQt.QCborValueRef_IsRegularExpression(this.nativePtr);
	}
	
	public bool IsUuid()
	{
		return CQt.QCborValueRef_IsUuid(this.nativePtr);
	}
	
	public bool IsInvalid()
	{
		return CQt.QCborValueRef_IsInvalid(this.nativePtr);
	}
	
	public bool IsContainer()
	{
		return CQt.QCborValueRef_IsContainer(this.nativePtr);
	}
	
	public bool IsSimpleType()
	{
		return CQt.QCborValueRef_IsSimpleType(this.nativePtr);
	}
	
	public bool IsSimpleTypeWithSt(void st)
	{
		return CQt.QCborValueRef_IsSimpleTypeWithSt(this.nativePtr, default);
	}
	
	public void ToSimpleType()
	{
		CQt.QCborValueRef_ToSimpleType(this.nativePtr);
	}
	
	public void Tag()
	{
		CQt.QCborValueRef_Tag(this.nativePtr);
	}
	
	public void TaggedValue()
	{
		CQt.QCborValueRef_TaggedValue(this.nativePtr);
	}
	
	public int64 ToInteger()
	{
		return CQt.QCborValueRef_ToInteger(this.nativePtr);
	}
	
	public bool ToBool()
	{
		return CQt.QCborValueRef_ToBool(this.nativePtr);
	}
	
	public double ToDouble()
	{
		return CQt.QCborValueRef_ToDouble(this.nativePtr);
	}
	
	public libqt_string ToByteArray()
	{
		return CQt.QCborValueRef_ToByteArray(this.nativePtr);
	}
	
	public libqt_string ToString()
	{
		return CQt.QCborValueRef_ToString(this.nativePtr);
	}
	
	public void ToDateTime()
	{
		CQt.QCborValueRef_ToDateTime(this.nativePtr);
	}
	
	public void ToUrl()
	{
		CQt.QCborValueRef_ToUrl(this.nativePtr);
	}
	
	public void ToRegularExpression()
	{
		CQt.QCborValueRef_ToRegularExpression(this.nativePtr);
	}
	
	public void ToUuid()
	{
		CQt.QCborValueRef_ToUuid(this.nativePtr);
	}
	
	public void ToArray()
	{
		CQt.QCborValueRef_ToArray(this.nativePtr);
	}
	
	public void ToArrayWithQCborArray(IQCborArray a)
	{
		CQt.QCborValueRef_ToArrayWithQCborArray(this.nativePtr, (a == default || a.NativePtr == default) ? default : a.NativePtr);
	}
	
	public void ToMap()
	{
		CQt.QCborValueRef_ToMap(this.nativePtr);
	}
	
	public void ToMapWithQCborMap(IQCborMap m)
	{
		CQt.QCborValueRef_ToMapWithQCborMap(this.nativePtr, (m == default || m.NativePtr == default) ? default : m.NativePtr);
	}
	
	public void OperatorSubscript3(String key)
	{
		CQt.QCborValueRef_OperatorSubscript3(this.nativePtr, libqt_string(key));
	}
	
	public void OperatorSubscript5(int64 key)
	{
		CQt.QCborValueRef_OperatorSubscript5(this.nativePtr, key);
	}
	
	public int32 Compare(IQCborValue other)
	{
		return CQt.QCborValueRef_Compare(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorEqual(IQCborValue other)
	{
		return CQt.QCborValueRef_OperatorEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorNotEqual(IQCborValue other)
	{
		return CQt.QCborValueRef_OperatorNotEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorLesser(IQCborValue other)
	{
		return CQt.QCborValueRef_OperatorLesser(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void ToVariant()
	{
		CQt.QCborValueRef_ToVariant(this.nativePtr);
	}
	
	public void ToJsonValue()
	{
		CQt.QCborValueRef_ToJsonValue(this.nativePtr);
	}
	
	public libqt_string ToCbor()
	{
		return CQt.QCborValueRef_ToCbor(this.nativePtr);
	}
	
	public void ToCborWithWriter(IQCborStreamWriter writer)
	{
		CQt.QCborValueRef_ToCborWithWriter(this.nativePtr, (writer == default || writer.NativePtr == default) ? default : writer.NativePtr);
	}
	
	public libqt_string ToDiagnosticNotation()
	{
		return CQt.QCborValueRef_ToDiagnosticNotation(this.nativePtr);
	}
	
	public void ToSimpleType1(void defaultValue)
	{
		CQt.QCborValueRef_ToSimpleType1(this.nativePtr, default);
	}
	
	public void Tag1(void defaultValue)
	{
		CQt.QCborValueRef_Tag1(this.nativePtr, default);
	}
	
	public void TaggedValue1(IQCborValue defaultValue)
	{
		CQt.QCborValueRef_TaggedValue1(this.nativePtr, (defaultValue == default || defaultValue.NativePtr == default) ? default : defaultValue.NativePtr);
	}
	
	public int64 ToInteger1(int64 defaultValue)
	{
		return CQt.QCborValueRef_ToInteger1(this.nativePtr, defaultValue);
	}
	
	public bool ToBool1(bool defaultValue)
	{
		return CQt.QCborValueRef_ToBool1(this.nativePtr, defaultValue);
	}
	
	public double ToDouble1(double defaultValue)
	{
		return CQt.QCborValueRef_ToDouble1(this.nativePtr, defaultValue);
	}
	
	public libqt_string ToByteArray1(String defaultValue)
	{
		return CQt.QCborValueRef_ToByteArray1(this.nativePtr, libqt_string(defaultValue));
	}
	
	public libqt_string ToString1(String defaultValue)
	{
		return CQt.QCborValueRef_ToString1(this.nativePtr, libqt_string(defaultValue));
	}
	
	public void ToDateTime1(IQDateTime defaultValue)
	{
		CQt.QCborValueRef_ToDateTime1(this.nativePtr, (defaultValue == default || defaultValue.NativePtr == default) ? default : defaultValue.NativePtr);
	}
	
	public void ToUrl1(IQUrl defaultValue)
	{
		CQt.QCborValueRef_ToUrl1(this.nativePtr, (defaultValue == default || defaultValue.NativePtr == default) ? default : defaultValue.NativePtr);
	}
	
	public void ToRegularExpression1(IQRegularExpression defaultValue)
	{
		CQt.QCborValueRef_ToRegularExpression1(this.nativePtr, (defaultValue == default || defaultValue.NativePtr == default) ? default : defaultValue.NativePtr);
	}
	
	public void ToUuid1(IQUuid defaultValue)
	{
		CQt.QCborValueRef_ToUuid1(this.nativePtr, (defaultValue == default || defaultValue.NativePtr == default) ? default : defaultValue.NativePtr);
	}
	
	public libqt_string ToCbor1(int64 opt)
	{
		return CQt.QCborValueRef_ToCbor1(this.nativePtr, opt);
	}
	
	public void ToCbor2(IQCborStreamWriter writer, int64 opt)
	{
		CQt.QCborValueRef_ToCbor2(this.nativePtr, (writer == default || writer.NativePtr == default) ? default : writer.NativePtr, opt);
	}
	
	public libqt_string ToDiagnosticNotation1(int64 opt)
	{
		return CQt.QCborValueRef_ToDiagnosticNotation1(this.nativePtr, opt);
	}
	
}
public class QCborValueRef
{
	public QCborValueRefPtr handle;
	
	public static implicit operator QCborValueRefPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQCborValueRef other)
	{
		this.handle = QCborValueRefPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQCborValue other)
	{
		this.handle.OperatorAssign(other);
	}
	
	public void OperatorAssignWithOther(IQCborValueRef other)
	{
		this.handle.OperatorAssignWithOther(other);
	}
	
	public void OperatorSubscript(int64 key)
	{
		this.handle.OperatorSubscript(key);
	}
	
	public void OperatorSubscript2(String key)
	{
		this.handle.OperatorSubscript2(key);
	}
	
	public void ToQCborValue()
	{
		this.handle.ToQCborValue();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool IsInteger()
	{
		return this.handle.IsInteger();
	}
	
	public bool IsByteArray()
	{
		return this.handle.IsByteArray();
	}
	
	public bool IsString()
	{
		return this.handle.IsString();
	}
	
	public bool IsArray()
	{
		return this.handle.IsArray();
	}
	
	public bool IsMap()
	{
		return this.handle.IsMap();
	}
	
	public bool IsTag()
	{
		return this.handle.IsTag();
	}
	
	public bool IsFalse()
	{
		return this.handle.IsFalse();
	}
	
	public bool IsTrue()
	{
		return this.handle.IsTrue();
	}
	
	public bool IsBool()
	{
		return this.handle.IsBool();
	}
	
	public bool IsNull()
	{
		return this.handle.IsNull();
	}
	
	public bool IsUndefined()
	{
		return this.handle.IsUndefined();
	}
	
	public bool IsDouble()
	{
		return this.handle.IsDouble();
	}
	
	public bool IsDateTime()
	{
		return this.handle.IsDateTime();
	}
	
	public bool IsUrl()
	{
		return this.handle.IsUrl();
	}
	
	public bool IsRegularExpression()
	{
		return this.handle.IsRegularExpression();
	}
	
	public bool IsUuid()
	{
		return this.handle.IsUuid();
	}
	
	public bool IsInvalid()
	{
		return this.handle.IsInvalid();
	}
	
	public bool IsContainer()
	{
		return this.handle.IsContainer();
	}
	
	public bool IsSimpleType()
	{
		return this.handle.IsSimpleType();
	}
	
	public bool IsSimpleTypeWithSt(void st)
	{
		return this.handle.IsSimpleTypeWithSt(default);
	}
	
	public void ToSimpleType()
	{
		this.handle.ToSimpleType();
	}
	
	public void Tag()
	{
		this.handle.Tag();
	}
	
	public void TaggedValue()
	{
		this.handle.TaggedValue();
	}
	
	public int64 ToInteger()
	{
		return this.handle.ToInteger();
	}
	
	public bool ToBool()
	{
		return this.handle.ToBool();
	}
	
	public double ToDouble()
	{
		return this.handle.ToDouble();
	}
	
	public libqt_string ToByteArray()
	{
		return this.handle.ToByteArray();
	}
	
	public libqt_string ToString()
	{
		return this.handle.ToString();
	}
	
	public void ToDateTime()
	{
		this.handle.ToDateTime();
	}
	
	public void ToUrl()
	{
		this.handle.ToUrl();
	}
	
	public void ToRegularExpression()
	{
		this.handle.ToRegularExpression();
	}
	
	public void ToUuid()
	{
		this.handle.ToUuid();
	}
	
	public void ToArray()
	{
		this.handle.ToArray();
	}
	
	public void ToArrayWithQCborArray(IQCborArray a)
	{
		this.handle.ToArrayWithQCborArray(a);
	}
	
	public void ToMap()
	{
		this.handle.ToMap();
	}
	
	public void ToMapWithQCborMap(IQCborMap m)
	{
		this.handle.ToMapWithQCborMap(m);
	}
	
	public void OperatorSubscript3(String key)
	{
		this.handle.OperatorSubscript3(key);
	}
	
	public void OperatorSubscript5(int64 key)
	{
		this.handle.OperatorSubscript5(key);
	}
	
	public int32 Compare(IQCborValue other)
	{
		return this.handle.Compare(other);
	}
	
	public bool OperatorEqual(IQCborValue other)
	{
		return this.handle.OperatorEqual(other);
	}
	
	public bool OperatorNotEqual(IQCborValue other)
	{
		return this.handle.OperatorNotEqual(other);
	}
	
	public bool OperatorLesser(IQCborValue other)
	{
		return this.handle.OperatorLesser(other);
	}
	
	public void ToVariant()
	{
		this.handle.ToVariant();
	}
	
	public void ToJsonValue()
	{
		this.handle.ToJsonValue();
	}
	
	public libqt_string ToCbor()
	{
		return this.handle.ToCbor();
	}
	
	public void ToCborWithWriter(IQCborStreamWriter writer)
	{
		this.handle.ToCborWithWriter(writer);
	}
	
	public libqt_string ToDiagnosticNotation()
	{
		return this.handle.ToDiagnosticNotation();
	}
	
	public void ToSimpleType1(void defaultValue)
	{
		this.handle.ToSimpleType1(default);
	}
	
	public void Tag1(void defaultValue)
	{
		this.handle.Tag1(default);
	}
	
	public void TaggedValue1(IQCborValue defaultValue)
	{
		this.handle.TaggedValue1(defaultValue);
	}
	
	public int64 ToInteger1(int64 defaultValue)
	{
		return this.handle.ToInteger1(defaultValue);
	}
	
	public bool ToBool1(bool defaultValue)
	{
		return this.handle.ToBool1(defaultValue);
	}
	
	public double ToDouble1(double defaultValue)
	{
		return this.handle.ToDouble1(defaultValue);
	}
	
	public libqt_string ToByteArray1(String defaultValue)
	{
		return this.handle.ToByteArray1(defaultValue);
	}
	
	public libqt_string ToString1(String defaultValue)
	{
		return this.handle.ToString1(defaultValue);
	}
	
	public void ToDateTime1(IQDateTime defaultValue)
	{
		this.handle.ToDateTime1(defaultValue);
	}
	
	public void ToUrl1(IQUrl defaultValue)
	{
		this.handle.ToUrl1(defaultValue);
	}
	
	public void ToRegularExpression1(IQRegularExpression defaultValue)
	{
		this.handle.ToRegularExpression1(defaultValue);
	}
	
	public void ToUuid1(IQUuid defaultValue)
	{
		this.handle.ToUuid1(defaultValue);
	}
	
	public libqt_string ToCbor1(int64 opt)
	{
		return this.handle.ToCbor1(opt);
	}
	
	public void ToCbor2(IQCborStreamWriter writer, int64 opt)
	{
		this.handle.ToCbor2(writer, opt);
	}
	
	public libqt_string ToDiagnosticNotation1(int64 opt)
	{
		return this.handle.ToDiagnosticNotation1(opt);
	}
	
}
extension CQt
{
	[LinkName("QCborValueRef_new")]
	public static extern void* QCborValueRef_new(void* other);
	[LinkName("QCborValueRef_new2")]
	public static extern void* QCborValueRef_new2(void* other);
	[LinkName("QCborValueRef_new3")]
	public static extern void* QCborValueRef_new3(void* param1);
	[LinkName("QCborValueRef_OperatorAssign")]
	public static extern void QCborValueRef_OperatorAssign(void* c_this, void* other);
	[LinkName("QCborValueRef_OperatorAssignWithOther")]
	public static extern void QCborValueRef_OperatorAssignWithOther(void* c_this, void* other);
	[LinkName("QCborValueRef_OperatorSubscript")]
	public static extern void QCborValueRef_OperatorSubscript(void* c_this, int64 key);
	[LinkName("QCborValueRef_OperatorSubscript2")]
	public static extern void QCborValueRef_OperatorSubscript2(void* c_this, libqt_string key);
	[LinkName("QCborValueRef_ToQCborValue")]
	public static extern void QCborValueRef_ToQCborValue(void* c_this);
	[LinkName("QCborValueRef_Type")]
	public static extern int64 QCborValueRef_Type(void* c_this);
	[LinkName("QCborValueRef_IsInteger")]
	public static extern bool QCborValueRef_IsInteger(void* c_this);
	[LinkName("QCborValueRef_IsByteArray")]
	public static extern bool QCborValueRef_IsByteArray(void* c_this);
	[LinkName("QCborValueRef_IsString")]
	public static extern bool QCborValueRef_IsString(void* c_this);
	[LinkName("QCborValueRef_IsArray")]
	public static extern bool QCborValueRef_IsArray(void* c_this);
	[LinkName("QCborValueRef_IsMap")]
	public static extern bool QCborValueRef_IsMap(void* c_this);
	[LinkName("QCborValueRef_IsTag")]
	public static extern bool QCborValueRef_IsTag(void* c_this);
	[LinkName("QCborValueRef_IsFalse")]
	public static extern bool QCborValueRef_IsFalse(void* c_this);
	[LinkName("QCborValueRef_IsTrue")]
	public static extern bool QCborValueRef_IsTrue(void* c_this);
	[LinkName("QCborValueRef_IsBool")]
	public static extern bool QCborValueRef_IsBool(void* c_this);
	[LinkName("QCborValueRef_IsNull")]
	public static extern bool QCborValueRef_IsNull(void* c_this);
	[LinkName("QCborValueRef_IsUndefined")]
	public static extern bool QCborValueRef_IsUndefined(void* c_this);
	[LinkName("QCborValueRef_IsDouble")]
	public static extern bool QCborValueRef_IsDouble(void* c_this);
	[LinkName("QCborValueRef_IsDateTime")]
	public static extern bool QCborValueRef_IsDateTime(void* c_this);
	[LinkName("QCborValueRef_IsUrl")]
	public static extern bool QCborValueRef_IsUrl(void* c_this);
	[LinkName("QCborValueRef_IsRegularExpression")]
	public static extern bool QCborValueRef_IsRegularExpression(void* c_this);
	[LinkName("QCborValueRef_IsUuid")]
	public static extern bool QCborValueRef_IsUuid(void* c_this);
	[LinkName("QCborValueRef_IsInvalid")]
	public static extern bool QCborValueRef_IsInvalid(void* c_this);
	[LinkName("QCborValueRef_IsContainer")]
	public static extern bool QCborValueRef_IsContainer(void* c_this);
	[LinkName("QCborValueRef_IsSimpleType")]
	public static extern bool QCborValueRef_IsSimpleType(void* c_this);
	[LinkName("QCborValueRef_IsSimpleTypeWithSt")]
	public static extern bool QCborValueRef_IsSimpleTypeWithSt(void* c_this, void st);
	[LinkName("QCborValueRef_ToSimpleType")]
	public static extern void QCborValueRef_ToSimpleType(void* c_this);
	[LinkName("QCborValueRef_Tag")]
	public static extern void QCborValueRef_Tag(void* c_this);
	[LinkName("QCborValueRef_TaggedValue")]
	public static extern void QCborValueRef_TaggedValue(void* c_this);
	[LinkName("QCborValueRef_ToInteger")]
	public static extern int64 QCborValueRef_ToInteger(void* c_this);
	[LinkName("QCborValueRef_ToBool")]
	public static extern bool QCborValueRef_ToBool(void* c_this);
	[LinkName("QCborValueRef_ToDouble")]
	public static extern double QCborValueRef_ToDouble(void* c_this);
	[LinkName("QCborValueRef_ToByteArray")]
	public static extern libqt_string QCborValueRef_ToByteArray(void* c_this);
	[LinkName("QCborValueRef_ToString")]
	public static extern libqt_string QCborValueRef_ToString(void* c_this);
	[LinkName("QCborValueRef_ToDateTime")]
	public static extern void QCborValueRef_ToDateTime(void* c_this);
	[LinkName("QCborValueRef_ToUrl")]
	public static extern void QCborValueRef_ToUrl(void* c_this);
	[LinkName("QCborValueRef_ToRegularExpression")]
	public static extern void QCborValueRef_ToRegularExpression(void* c_this);
	[LinkName("QCborValueRef_ToUuid")]
	public static extern void QCborValueRef_ToUuid(void* c_this);
	[LinkName("QCborValueRef_ToArray")]
	public static extern void QCborValueRef_ToArray(void* c_this);
	[LinkName("QCborValueRef_ToArrayWithQCborArray")]
	public static extern void QCborValueRef_ToArrayWithQCborArray(void* c_this, void* a);
	[LinkName("QCborValueRef_ToMap")]
	public static extern void QCborValueRef_ToMap(void* c_this);
	[LinkName("QCborValueRef_ToMapWithQCborMap")]
	public static extern void QCborValueRef_ToMapWithQCborMap(void* c_this, void* m);
	[LinkName("QCborValueRef_OperatorSubscript3")]
	public static extern void QCborValueRef_OperatorSubscript3(void* c_this, libqt_string key);
	[LinkName("QCborValueRef_OperatorSubscript5")]
	public static extern void QCborValueRef_OperatorSubscript5(void* c_this, int64 key);
	[LinkName("QCborValueRef_Compare")]
	public static extern int32 QCborValueRef_Compare(void* c_this, void* other);
	[LinkName("QCborValueRef_OperatorEqual")]
	public static extern bool QCborValueRef_OperatorEqual(void* c_this, void* other);
	[LinkName("QCborValueRef_OperatorNotEqual")]
	public static extern bool QCborValueRef_OperatorNotEqual(void* c_this, void* other);
	[LinkName("QCborValueRef_OperatorLesser")]
	public static extern bool QCborValueRef_OperatorLesser(void* c_this, void* other);
	[LinkName("QCborValueRef_ToVariant")]
	public static extern void QCborValueRef_ToVariant(void* c_this);
	[LinkName("QCborValueRef_ToJsonValue")]
	public static extern void QCborValueRef_ToJsonValue(void* c_this);
	[LinkName("QCborValueRef_ToCbor")]
	public static extern libqt_string QCborValueRef_ToCbor(void* c_this);
	[LinkName("QCborValueRef_ToCborWithWriter")]
	public static extern void QCborValueRef_ToCborWithWriter(void* c_this, void* writer);
	[LinkName("QCborValueRef_ToDiagnosticNotation")]
	public static extern libqt_string QCborValueRef_ToDiagnosticNotation(void* c_this);
	[LinkName("QCborValueRef_ToSimpleType1")]
	public static extern void QCborValueRef_ToSimpleType1(void* c_this, void defaultValue);
	[LinkName("QCborValueRef_Tag1")]
	public static extern void QCborValueRef_Tag1(void* c_this, void defaultValue);
	[LinkName("QCborValueRef_TaggedValue1")]
	public static extern void QCborValueRef_TaggedValue1(void* c_this, void* defaultValue);
	[LinkName("QCborValueRef_ToInteger1")]
	public static extern int64 QCborValueRef_ToInteger1(void* c_this, int64 defaultValue);
	[LinkName("QCborValueRef_ToBool1")]
	public static extern bool QCborValueRef_ToBool1(void* c_this, bool defaultValue);
	[LinkName("QCborValueRef_ToDouble1")]
	public static extern double QCborValueRef_ToDouble1(void* c_this, double defaultValue);
	[LinkName("QCborValueRef_ToByteArray1")]
	public static extern libqt_string QCborValueRef_ToByteArray1(void* c_this, libqt_string defaultValue);
	[LinkName("QCborValueRef_ToString1")]
	public static extern libqt_string QCborValueRef_ToString1(void* c_this, libqt_string defaultValue);
	[LinkName("QCborValueRef_ToDateTime1")]
	public static extern void QCborValueRef_ToDateTime1(void* c_this, void* defaultValue);
	[LinkName("QCborValueRef_ToUrl1")]
	public static extern void QCborValueRef_ToUrl1(void* c_this, void* defaultValue);
	[LinkName("QCborValueRef_ToRegularExpression1")]
	public static extern void QCborValueRef_ToRegularExpression1(void* c_this, void* defaultValue);
	[LinkName("QCborValueRef_ToUuid1")]
	public static extern void QCborValueRef_ToUuid1(void* c_this, void* defaultValue);
	[LinkName("QCborValueRef_ToCbor1")]
	public static extern libqt_string QCborValueRef_ToCbor1(void* c_this, int64 opt);
	[LinkName("QCborValueRef_ToCbor2")]
	public static extern void QCborValueRef_ToCbor2(void* c_this, void* writer, int64 opt);
	[LinkName("QCborValueRef_ToDiagnosticNotation1")]
	public static extern libqt_string QCborValueRef_ToDiagnosticNotation1(void* c_this, int64 opt);
	/// Delete this object from C++ memory
	[LinkName("QCborValueRef_Delete")]
	public static extern void QCborValueRef_Delete(void* self);
}