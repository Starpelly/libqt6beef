using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QVariant__Type
{
	Invalid = 0,
	Bool = 1,
	Int = 2,
	UInt = 3,
	LongLong = 4,
	ULongLong = 5,
	Double = 6,
	Char = 7,
	Map = 8,
	List = 9,
	String = 10,
	StringList = 11,
	ByteArray = 12,
	BitArray = 13,
	Date = 14,
	Time = 15,
	DateTime = 16,
	Url = 17,
	Locale = 18,
	Rect = 19,
	RectF = 20,
	Size = 21,
	SizeF = 22,
	Line = 23,
	LineF = 24,
	Point = 25,
	PointF = 26,
	RegularExpression = 44,
	Hash = 28,
	EasingCurve = 29,
	Uuid = 30,
	ModelIndex = 42,
	PersistentModelIndex = 50,
	LastCoreType = 58,
	Font = 4096,
	Pixmap = 4097,
	Brush = 4098,
	Color = 4099,
	Palette = 4100,
	Image = 4102,
	Polygon = 4103,
	Region = 4104,
	Bitmap = 4105,
	Cursor = 4106,
	KeySequence = 4107,
	Pen = 4108,
	TextLength = 4109,
	TextFormat = 4110,
	Transform = 4112,
	Matrix4x4 = 4113,
	Vector2D = 4114,
	Vector3D = 4115,
	Vector4D = 4116,
	Quaternion = 4117,
	PolygonF = 4118,
	Icon = 4101,
	LastGuiType = 4119,
	SizePolicy = 8192,
	UserType = 65536,
	LastType = 4294967295,
}
public interface IQVariant
{
	void* NativePtr { get; }
}
public class QVariant : IQVariant
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QVariant_new();
	}
	
	public ~this()
	{
		CQt.QVariant_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQVariant other)
	{
		CQt.QVariant_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public void Swap(IQVariant other)
	{
		CQt.QVariant_Swap(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public int32 UserType()
	{
		return CQt.QVariant_UserType(this.nativePtr);
	}
	
	public int32 TypeId()
	{
		return CQt.QVariant_TypeId(this.nativePtr);
	}
	
	public char8* TypeName()
	{
		return CQt.QVariant_TypeName(this.nativePtr);
	}
	
	public void MetaType()
	{
		CQt.QVariant_MetaType(this.nativePtr);
	}
	
	public bool CanConvert(IQMetaType targetType)
	{
		return CQt.QVariant_CanConvert(this.nativePtr, (targetType == default) ? default : (void)targetType.NativePtr);
	}
	
	public bool Convert(IQMetaType typeVal)
	{
		return CQt.QVariant_Convert(this.nativePtr, (typeVal == default) ? default : (void)typeVal.NativePtr);
	}
	
	public bool CanView(IQMetaType targetType)
	{
		return CQt.QVariant_CanView(this.nativePtr, (targetType == default) ? default : (void)targetType.NativePtr);
	}
	
	public bool CanConvertWithTargetTypeId(int32 targetTypeId)
	{
		return CQt.QVariant_CanConvertWithTargetTypeId(this.nativePtr, targetTypeId);
	}
	
	public bool ConvertWithTargetTypeId(int32 targetTypeId)
	{
		return CQt.QVariant_ConvertWithTargetTypeId(this.nativePtr, targetTypeId);
	}
	
	public bool IsValid()
	{
		return CQt.QVariant_IsValid(this.nativePtr);
	}
	
	public bool IsNull()
	{
		return CQt.QVariant_IsNull(this.nativePtr);
	}
	
	public void Clear()
	{
		CQt.QVariant_Clear(this.nativePtr);
	}
	
	public void Detach()
	{
		CQt.QVariant_Detach(this.nativePtr);
	}
	
	public bool IsDetached()
	{
		return CQt.QVariant_IsDetached(this.nativePtr);
	}
	
	public int32 ToInt()
	{
		return CQt.QVariant_ToInt(this.nativePtr);
	}
	
	public uint32 ToUInt()
	{
		return CQt.QVariant_ToUInt(this.nativePtr);
	}
	
	public int64 ToLongLong()
	{
		return CQt.QVariant_ToLongLong(this.nativePtr);
	}
	
	public uint64 ToULongLong()
	{
		return CQt.QVariant_ToULongLong(this.nativePtr);
	}
	
	public bool ToBool()
	{
		return CQt.QVariant_ToBool(this.nativePtr);
	}
	
	public double ToDouble()
	{
		return CQt.QVariant_ToDouble(this.nativePtr);
	}
	
	public float ToFloat()
	{
		return CQt.QVariant_ToFloat(this.nativePtr);
	}
	
	public double ToReal()
	{
		return CQt.QVariant_ToReal(this.nativePtr);
	}
	
	public libqt_string ToByteArray()
	{
		return CQt.QVariant_ToByteArray(this.nativePtr);
	}
	
	public void ToBitArray()
	{
		CQt.QVariant_ToBitArray(this.nativePtr);
	}
	
	public libqt_string ToString()
	{
		return CQt.QVariant_ToString(this.nativePtr);
	}
	
	public libqt_string[] ToStringList()
	{
		return CQt.QVariant_ToStringList(this.nativePtr);
	}
	
	public void ToChar()
	{
		CQt.QVariant_ToChar(this.nativePtr);
	}
	
	public void ToDate()
	{
		CQt.QVariant_ToDate(this.nativePtr);
	}
	
	public void ToTime()
	{
		CQt.QVariant_ToTime(this.nativePtr);
	}
	
	public void ToDateTime()
	{
		CQt.QVariant_ToDateTime(this.nativePtr);
	}
	
	public void* ToMap()
	{
		return CQt.QVariant_ToMap(this.nativePtr);
	}
	
	public void* ToHash()
	{
		return CQt.QVariant_ToHash(this.nativePtr);
	}
	
	public void ToPoint()
	{
		CQt.QVariant_ToPoint(this.nativePtr);
	}
	
	public void ToPointF()
	{
		CQt.QVariant_ToPointF(this.nativePtr);
	}
	
	public void ToRect()
	{
		CQt.QVariant_ToRect(this.nativePtr);
	}
	
	public void ToSize()
	{
		CQt.QVariant_ToSize(this.nativePtr);
	}
	
	public void ToSizeF()
	{
		CQt.QVariant_ToSizeF(this.nativePtr);
	}
	
	public void ToLine()
	{
		CQt.QVariant_ToLine(this.nativePtr);
	}
	
	public void ToLineF()
	{
		CQt.QVariant_ToLineF(this.nativePtr);
	}
	
	public void ToRectF()
	{
		CQt.QVariant_ToRectF(this.nativePtr);
	}
	
	public void ToLocale()
	{
		CQt.QVariant_ToLocale(this.nativePtr);
	}
	
	public void ToRegularExpression()
	{
		CQt.QVariant_ToRegularExpression(this.nativePtr);
	}
	
	public void ToEasingCurve()
	{
		CQt.QVariant_ToEasingCurve(this.nativePtr);
	}
	
	public void ToUuid()
	{
		CQt.QVariant_ToUuid(this.nativePtr);
	}
	
	public void ToUrl()
	{
		CQt.QVariant_ToUrl(this.nativePtr);
	}
	
	public void ToJsonValue()
	{
		CQt.QVariant_ToJsonValue(this.nativePtr);
	}
	
	public void ToJsonObject()
	{
		CQt.QVariant_ToJsonObject(this.nativePtr);
	}
	
	public void ToJsonArray()
	{
		CQt.QVariant_ToJsonArray(this.nativePtr);
	}
	
	public void ToJsonDocument()
	{
		CQt.QVariant_ToJsonDocument(this.nativePtr);
	}
	
	public void ToModelIndex()
	{
		CQt.QVariant_ToModelIndex(this.nativePtr);
	}
	
	public void ToPersistentModelIndex()
	{
		CQt.QVariant_ToPersistentModelIndex(this.nativePtr);
	}
	
	public void Load(IQDataStream ds)
	{
		CQt.QVariant_Load(this.nativePtr, (ds == default) ? default : (void*)ds.NativePtr);
	}
	
	public void Save(IQDataStream ds)
	{
		CQt.QVariant_Save(this.nativePtr, (ds == default) ? default : (void*)ds.NativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QVariant_Type(this.nativePtr);
	}
	
	public static char8* TypeToName(int32 typeId)
	{
		return CQt.QVariant_TypeToName(typeId);
	}
	
	public static int64 NameToType(char8* name)
	{
		return CQt.QVariant_NameToType(name);
	}
	
	public void* Data()
	{
		return CQt.QVariant_Data(this.nativePtr);
	}
	
	public void* ConstData()
	{
		return CQt.QVariant_ConstData(this.nativePtr);
	}
	
	public void* Data2()
	{
		return CQt.QVariant_Data2(this.nativePtr);
	}
	
	public void SetValue(IQVariant avalue)
	{
		CQt.QVariant_SetValue(this.nativePtr, (avalue == default) ? default : (void*)avalue.NativePtr);
	}
	
	public static void Compare(IQVariant lhs, IQVariant rhs)
	{
		CQt.QVariant_Compare((lhs == default) ? default : (void*)lhs.NativePtr, (rhs == default) ? default : (void*)rhs.NativePtr);
	}
	
	public int32 ToInt1(bool* ok)
	{
		return CQt.QVariant_ToInt1(this.nativePtr, ok);
	}
	
	public uint32 ToUInt1(bool* ok)
	{
		return CQt.QVariant_ToUInt1(this.nativePtr, ok);
	}
	
	public int64 ToLongLong1(bool* ok)
	{
		return CQt.QVariant_ToLongLong1(this.nativePtr, ok);
	}
	
	public uint64 ToULongLong1(bool* ok)
	{
		return CQt.QVariant_ToULongLong1(this.nativePtr, ok);
	}
	
	public double ToDouble1(bool* ok)
	{
		return CQt.QVariant_ToDouble1(this.nativePtr, ok);
	}
	
	public float ToFloat1(bool* ok)
	{
		return CQt.QVariant_ToFloat1(this.nativePtr, ok);
	}
	
	public double ToReal1(bool* ok)
	{
		return CQt.QVariant_ToReal1(this.nativePtr, ok);
	}
	
}
extension CQt
{
	[LinkName("QVariant_new")]
	public static extern void* QVariant_new();
	[LinkName("QVariant_new2")]
	public static extern void* QVariant_new2(void typeVal);
	[LinkName("QVariant_new3")]
	public static extern void* QVariant_new3(void* other);
	[LinkName("QVariant_new4")]
	public static extern void* QVariant_new4(int32 i);
	[LinkName("QVariant_new5")]
	public static extern void* QVariant_new5(uint32 ui);
	[LinkName("QVariant_new6")]
	public static extern void* QVariant_new6(int64 ll);
	[LinkName("QVariant_new7")]
	public static extern void* QVariant_new7(uint64 ull);
	[LinkName("QVariant_new8")]
	public static extern void* QVariant_new8(bool b);
	[LinkName("QVariant_new9")]
	public static extern void* QVariant_new9(double d);
	[LinkName("QVariant_new10")]
	public static extern void* QVariant_new10(float f);
	[LinkName("QVariant_new11")]
	public static extern void* QVariant_new11(char8* str);
	[LinkName("QVariant_new12")]
	public static extern void* QVariant_new12(libqt_string bytearray);
	[LinkName("QVariant_new13")]
	public static extern void* QVariant_new13(void* bitarray);
	[LinkName("QVariant_new14")]
	public static extern void* QVariant_new14(libqt_string stringVal);
	[LinkName("QVariant_new15")]
	public static extern void* QVariant_new15(libqt_string[] stringlist);
	[LinkName("QVariant_new16")]
	public static extern void* QVariant_new16(void qchar);
	[LinkName("QVariant_new17")]
	public static extern void* QVariant_new17(void date);
	[LinkName("QVariant_new18")]
	public static extern void* QVariant_new18(void time);
	[LinkName("QVariant_new19")]
	public static extern void* QVariant_new19(void* datetime);
	[LinkName("QVariant_new20")]
	public static extern void* QVariant_new20(void* mapVal);
	[LinkName("QVariant_new21")]
	public static extern void* QVariant_new21(void* hash);
	[LinkName("QVariant_new22")]
	public static extern void* QVariant_new22(void* size);
	[LinkName("QVariant_new23")]
	public static extern void* QVariant_new23(void* size);
	[LinkName("QVariant_new24")]
	public static extern void* QVariant_new24(void* pt);
	[LinkName("QVariant_new25")]
	public static extern void* QVariant_new25(void* pt);
	[LinkName("QVariant_new26")]
	public static extern void* QVariant_new26(void* line);
	[LinkName("QVariant_new27")]
	public static extern void* QVariant_new27(void* line);
	[LinkName("QVariant_new28")]
	public static extern void* QVariant_new28(void* rect);
	[LinkName("QVariant_new29")]
	public static extern void* QVariant_new29(void* rect);
	[LinkName("QVariant_new30")]
	public static extern void* QVariant_new30(void* locale);
	[LinkName("QVariant_new31")]
	public static extern void* QVariant_new31(void* re);
	[LinkName("QVariant_new32")]
	public static extern void* QVariant_new32(void* easing);
	[LinkName("QVariant_new33")]
	public static extern void* QVariant_new33(void* uuid);
	[LinkName("QVariant_new34")]
	public static extern void* QVariant_new34(void* url);
	[LinkName("QVariant_new35")]
	public static extern void* QVariant_new35(void* jsonValue);
	[LinkName("QVariant_new36")]
	public static extern void* QVariant_new36(void* jsonObject);
	[LinkName("QVariant_new37")]
	public static extern void* QVariant_new37(void* jsonArray);
	[LinkName("QVariant_new38")]
	public static extern void* QVariant_new38(void* jsonDocument);
	[LinkName("QVariant_new39")]
	public static extern void* QVariant_new39(void* modelIndex);
	[LinkName("QVariant_new40")]
	public static extern void* QVariant_new40(void* modelIndex);
	[LinkName("QVariant_new41")]
	public static extern void* QVariant_new41(int64 typeVal);
	[LinkName("QVariant_new42")]
	public static extern void* QVariant_new42(void typeVal, void* copyVal);
	[LinkName("QVariant_OperatorAssign")]
	public static extern void QVariant_OperatorAssign(void* c_this, void* other);
	[LinkName("QVariant_Swap")]
	public static extern void QVariant_Swap(void* c_this, void* other);
	[LinkName("QVariant_UserType")]
	public static extern int32 QVariant_UserType(void* c_this);
	[LinkName("QVariant_TypeId")]
	public static extern int32 QVariant_TypeId(void* c_this);
	[LinkName("QVariant_TypeName")]
	public static extern char8* QVariant_TypeName(void* c_this);
	[LinkName("QVariant_MetaType")]
	public static extern void QVariant_MetaType(void* c_this);
	[LinkName("QVariant_CanConvert")]
	public static extern bool QVariant_CanConvert(void* c_this, void targetType);
	[LinkName("QVariant_Convert")]
	public static extern bool QVariant_Convert(void* c_this, void typeVal);
	[LinkName("QVariant_CanView")]
	public static extern bool QVariant_CanView(void* c_this, void targetType);
	[LinkName("QVariant_CanConvertWithTargetTypeId")]
	public static extern bool QVariant_CanConvertWithTargetTypeId(void* c_this, int32 targetTypeId);
	[LinkName("QVariant_ConvertWithTargetTypeId")]
	public static extern bool QVariant_ConvertWithTargetTypeId(void* c_this, int32 targetTypeId);
	[LinkName("QVariant_IsValid")]
	public static extern bool QVariant_IsValid(void* c_this);
	[LinkName("QVariant_IsNull")]
	public static extern bool QVariant_IsNull(void* c_this);
	[LinkName("QVariant_Clear")]
	public static extern void QVariant_Clear(void* c_this);
	[LinkName("QVariant_Detach")]
	public static extern void QVariant_Detach(void* c_this);
	[LinkName("QVariant_IsDetached")]
	public static extern bool QVariant_IsDetached(void* c_this);
	[LinkName("QVariant_ToInt")]
	public static extern int32 QVariant_ToInt(void* c_this);
	[LinkName("QVariant_ToUInt")]
	public static extern uint32 QVariant_ToUInt(void* c_this);
	[LinkName("QVariant_ToLongLong")]
	public static extern int64 QVariant_ToLongLong(void* c_this);
	[LinkName("QVariant_ToULongLong")]
	public static extern uint64 QVariant_ToULongLong(void* c_this);
	[LinkName("QVariant_ToBool")]
	public static extern bool QVariant_ToBool(void* c_this);
	[LinkName("QVariant_ToDouble")]
	public static extern double QVariant_ToDouble(void* c_this);
	[LinkName("QVariant_ToFloat")]
	public static extern float QVariant_ToFloat(void* c_this);
	[LinkName("QVariant_ToReal")]
	public static extern double QVariant_ToReal(void* c_this);
	[LinkName("QVariant_ToByteArray")]
	public static extern libqt_string QVariant_ToByteArray(void* c_this);
	[LinkName("QVariant_ToBitArray")]
	public static extern void QVariant_ToBitArray(void* c_this);
	[LinkName("QVariant_ToString")]
	public static extern libqt_string QVariant_ToString(void* c_this);
	[LinkName("QVariant_ToStringList")]
	public static extern libqt_string[] QVariant_ToStringList(void* c_this);
	[LinkName("QVariant_ToChar")]
	public static extern void QVariant_ToChar(void* c_this);
	[LinkName("QVariant_ToDate")]
	public static extern void QVariant_ToDate(void* c_this);
	[LinkName("QVariant_ToTime")]
	public static extern void QVariant_ToTime(void* c_this);
	[LinkName("QVariant_ToDateTime")]
	public static extern void QVariant_ToDateTime(void* c_this);
	[LinkName("QVariant_ToMap")]
	public static extern void* QVariant_ToMap(void* c_this);
	[LinkName("QVariant_ToHash")]
	public static extern void* QVariant_ToHash(void* c_this);
	[LinkName("QVariant_ToPoint")]
	public static extern void QVariant_ToPoint(void* c_this);
	[LinkName("QVariant_ToPointF")]
	public static extern void QVariant_ToPointF(void* c_this);
	[LinkName("QVariant_ToRect")]
	public static extern void QVariant_ToRect(void* c_this);
	[LinkName("QVariant_ToSize")]
	public static extern void QVariant_ToSize(void* c_this);
	[LinkName("QVariant_ToSizeF")]
	public static extern void QVariant_ToSizeF(void* c_this);
	[LinkName("QVariant_ToLine")]
	public static extern void QVariant_ToLine(void* c_this);
	[LinkName("QVariant_ToLineF")]
	public static extern void QVariant_ToLineF(void* c_this);
	[LinkName("QVariant_ToRectF")]
	public static extern void QVariant_ToRectF(void* c_this);
	[LinkName("QVariant_ToLocale")]
	public static extern void QVariant_ToLocale(void* c_this);
	[LinkName("QVariant_ToRegularExpression")]
	public static extern void QVariant_ToRegularExpression(void* c_this);
	[LinkName("QVariant_ToEasingCurve")]
	public static extern void QVariant_ToEasingCurve(void* c_this);
	[LinkName("QVariant_ToUuid")]
	public static extern void QVariant_ToUuid(void* c_this);
	[LinkName("QVariant_ToUrl")]
	public static extern void QVariant_ToUrl(void* c_this);
	[LinkName("QVariant_ToJsonValue")]
	public static extern void QVariant_ToJsonValue(void* c_this);
	[LinkName("QVariant_ToJsonObject")]
	public static extern void QVariant_ToJsonObject(void* c_this);
	[LinkName("QVariant_ToJsonArray")]
	public static extern void QVariant_ToJsonArray(void* c_this);
	[LinkName("QVariant_ToJsonDocument")]
	public static extern void QVariant_ToJsonDocument(void* c_this);
	[LinkName("QVariant_ToModelIndex")]
	public static extern void QVariant_ToModelIndex(void* c_this);
	[LinkName("QVariant_ToPersistentModelIndex")]
	public static extern void QVariant_ToPersistentModelIndex(void* c_this);
	[LinkName("QVariant_Load")]
	public static extern void QVariant_Load(void* c_this, void* ds);
	[LinkName("QVariant_Save")]
	public static extern void QVariant_Save(void* c_this, void* ds);
	[LinkName("QVariant_Type")]
	public static extern int64 QVariant_Type(void* c_this);
	[LinkName("QVariant_TypeToName")]
	public static extern char8* QVariant_TypeToName(int32 typeId);
	[LinkName("QVariant_NameToType")]
	public static extern int64 QVariant_NameToType(char8* name);
	[LinkName("QVariant_Data")]
	public static extern void* QVariant_Data(void* c_this);
	[LinkName("QVariant_ConstData")]
	public static extern void* QVariant_ConstData(void* c_this);
	[LinkName("QVariant_Data2")]
	public static extern void* QVariant_Data2(void* c_this);
	[LinkName("QVariant_SetValue")]
	public static extern void QVariant_SetValue(void* c_this, void* avalue);
	[LinkName("QVariant_Compare")]
	public static extern void QVariant_Compare(void* lhs, void* rhs);
	[LinkName("QVariant_ToInt1")]
	public static extern int32 QVariant_ToInt1(void* c_this, bool* ok);
	[LinkName("QVariant_ToUInt1")]
	public static extern uint32 QVariant_ToUInt1(void* c_this, bool* ok);
	[LinkName("QVariant_ToLongLong1")]
	public static extern int64 QVariant_ToLongLong1(void* c_this, bool* ok);
	[LinkName("QVariant_ToULongLong1")]
	public static extern uint64 QVariant_ToULongLong1(void* c_this, bool* ok);
	[LinkName("QVariant_ToDouble1")]
	public static extern double QVariant_ToDouble1(void* c_this, bool* ok);
	[LinkName("QVariant_ToFloat1")]
	public static extern float QVariant_ToFloat1(void* c_this, bool* ok);
	[LinkName("QVariant_ToReal1")]
	public static extern double QVariant_ToReal1(void* c_this, bool* ok);
	/// Delete this object from C++ memory
	[LinkName("QVariant_Delete")]
	public static extern void QVariant_Delete(void* self);
}
public interface IQVariantConstPointer
{
	void* NativePtr { get; }
}
public class QVariantConstPointer : IQVariantConstPointer
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQVariant variant)
	{
		this.nativePtr = CQt.QVariantConstPointer_new((variant == default) ? default : (void)variant.NativePtr);
	}
	
	public ~this()
	{
		CQt.QVariantConstPointer_Delete(this.nativePtr);
	}
	
	public void OperatorMultiply()
	{
		CQt.QVariantConstPointer_OperatorMultiply(this.nativePtr);
	}
	
	public void* OperatorMinusGreater()
	{
		return CQt.QVariantConstPointer_OperatorMinusGreater(this.nativePtr);
	}
	
	public void OperatorAssign(IQVariantConstPointer param1)
	{
		CQt.QVariantConstPointer_OperatorAssign(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QVariantConstPointer_new")]
	public static extern void* QVariantConstPointer_new(void variant);
	[LinkName("QVariantConstPointer_new2")]
	public static extern void* QVariantConstPointer_new2(void* param1);
	[LinkName("QVariantConstPointer_OperatorMultiply")]
	public static extern void QVariantConstPointer_OperatorMultiply(void* c_this);
	[LinkName("QVariantConstPointer_OperatorMinusGreater")]
	public static extern void* QVariantConstPointer_OperatorMinusGreater(void* c_this);
	[LinkName("QVariantConstPointer_OperatorAssign")]
	public static extern void QVariantConstPointer_OperatorAssign(void* c_this, void* param1);
	/// Delete this object from C++ memory
	[LinkName("QVariantConstPointer_Delete")]
	public static extern void QVariantConstPointer_Delete(void* self);
}