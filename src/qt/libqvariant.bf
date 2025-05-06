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
public struct QVariant
{
	[LinkName("QVariant_new")]
	public static extern QVariant* QVariant_new();
	[LinkName("QVariant_new2")]
	public static extern QVariant* QVariant_new2(QMetaType typeVal);
	[LinkName("QVariant_new3")]
	public static extern QVariant* QVariant_new3(QVariant* other);
	[LinkName("QVariant_new4")]
	public static extern QVariant* QVariant_new4(int32 i);
	[LinkName("QVariant_new5")]
	public static extern QVariant* QVariant_new5(uint32 ui);
	[LinkName("QVariant_new6")]
	public static extern QVariant* QVariant_new6(int64 ll);
	[LinkName("QVariant_new7")]
	public static extern QVariant* QVariant_new7(uint64 ull);
	[LinkName("QVariant_new8")]
	public static extern QVariant* QVariant_new8(bool b);
	[LinkName("QVariant_new9")]
	public static extern QVariant* QVariant_new9(double d);
	[LinkName("QVariant_new10")]
	public static extern QVariant* QVariant_new10(float f);
	[LinkName("QVariant_new11")]
	public static extern QVariant* QVariant_new11(char8[] str);
	[LinkName("QVariant_new12")]
	public static extern QVariant* QVariant_new12(libqt_string bytearray);
	[LinkName("QVariant_new13")]
	public static extern QVariant* QVariant_new13(QBitArray* bitarray);
	[LinkName("QVariant_new14")]
	public static extern QVariant* QVariant_new14(libqt_string stringVal);
	[LinkName("QVariant_new15")]
	public static extern QVariant* QVariant_new15(libqt_string[] stringlist);
	[LinkName("QVariant_new16")]
	public static extern QVariant* QVariant_new16(QChar qchar);
	[LinkName("QVariant_new17")]
	public static extern QVariant* QVariant_new17(QDate date);
	[LinkName("QVariant_new18")]
	public static extern QVariant* QVariant_new18(QTime time);
	[LinkName("QVariant_new19")]
	public static extern QVariant* QVariant_new19(QDateTime* datetime);
	[LinkName("QVariant_new20")]
	public static extern QVariant* QVariant_new20(void* mapVal);
	[LinkName("QVariant_new21")]
	public static extern QVariant* QVariant_new21(void* hash);
	[LinkName("QVariant_new22")]
	public static extern QVariant* QVariant_new22(QSize* size);
	[LinkName("QVariant_new23")]
	public static extern QVariant* QVariant_new23(QSizeF* size);
	[LinkName("QVariant_new24")]
	public static extern QVariant* QVariant_new24(QPoint* pt);
	[LinkName("QVariant_new25")]
	public static extern QVariant* QVariant_new25(QPointF* pt);
	[LinkName("QVariant_new26")]
	public static extern QVariant* QVariant_new26(QLine* line);
	[LinkName("QVariant_new27")]
	public static extern QVariant* QVariant_new27(QLineF* line);
	[LinkName("QVariant_new28")]
	public static extern QVariant* QVariant_new28(QRect* rect);
	[LinkName("QVariant_new29")]
	public static extern QVariant* QVariant_new29(QRectF* rect);
	[LinkName("QVariant_new30")]
	public static extern QVariant* QVariant_new30(QLocale* locale);
	[LinkName("QVariant_new31")]
	public static extern QVariant* QVariant_new31(QRegularExpression* re);
	[LinkName("QVariant_new32")]
	public static extern QVariant* QVariant_new32(QEasingCurve* easing);
	[LinkName("QVariant_new33")]
	public static extern QVariant* QVariant_new33(QUuid* uuid);
	[LinkName("QVariant_new34")]
	public static extern QVariant* QVariant_new34(QUrl* url);
	[LinkName("QVariant_new35")]
	public static extern QVariant* QVariant_new35(QJsonValue* jsonValue);
	[LinkName("QVariant_new36")]
	public static extern QVariant* QVariant_new36(QJsonObject* jsonObject);
	[LinkName("QVariant_new37")]
	public static extern QVariant* QVariant_new37(QJsonArray* jsonArray);
	[LinkName("QVariant_new38")]
	public static extern QVariant* QVariant_new38(QJsonDocument* jsonDocument);
	[LinkName("QVariant_new39")]
	public static extern QVariant* QVariant_new39(QModelIndex* modelIndex);
	[LinkName("QVariant_new40")]
	public static extern QVariant* QVariant_new40(QPersistentModelIndex* modelIndex);
	[LinkName("QVariant_new41")]
	public static extern QVariant* QVariant_new41(int64 typeVal);
	[LinkName("QVariant_new42")]
	public static extern QVariant* QVariant_new42(QMetaType typeVal, void* copyVal);
	[LinkName("QVariant_OperatorAssign")]
	public static extern void QVariant_OperatorAssign(Self* c_this, QVariant* other);
	[LinkName("QVariant_Swap")]
	public static extern void QVariant_Swap(Self* c_this, QVariant* other);
	[LinkName("QVariant_UserType")]
	public static extern int32 QVariant_UserType(Self* c_this);
	[LinkName("QVariant_TypeId")]
	public static extern int32 QVariant_TypeId(Self* c_this);
	[LinkName("QVariant_TypeName")]
	public static extern char8[] QVariant_TypeName(Self* c_this);
	[LinkName("QVariant_MetaType")]
	public static extern QMetaType QVariant_MetaType(Self* c_this);
	[LinkName("QVariant_CanConvert")]
	public static extern bool QVariant_CanConvert(Self* c_this, QMetaType targetType);
	[LinkName("QVariant_Convert")]
	public static extern bool QVariant_Convert(Self* c_this, QMetaType typeVal);
	[LinkName("QVariant_CanView")]
	public static extern bool QVariant_CanView(Self* c_this, QMetaType targetType);
	[LinkName("QVariant_CanConvertWithTargetTypeId")]
	public static extern bool QVariant_CanConvertWithTargetTypeId(Self* c_this, int32 targetTypeId);
	[LinkName("QVariant_ConvertWithTargetTypeId")]
	public static extern bool QVariant_ConvertWithTargetTypeId(Self* c_this, int32 targetTypeId);
	[LinkName("QVariant_IsValid")]
	public static extern bool QVariant_IsValid(Self* c_this);
	[LinkName("QVariant_IsNull")]
	public static extern bool QVariant_IsNull(Self* c_this);
	[LinkName("QVariant_Clear")]
	public static extern void QVariant_Clear(Self* c_this);
	[LinkName("QVariant_Detach")]
	public static extern void QVariant_Detach(Self* c_this);
	[LinkName("QVariant_IsDetached")]
	public static extern bool QVariant_IsDetached(Self* c_this);
	[LinkName("QVariant_ToInt")]
	public static extern int32 QVariant_ToInt(Self* c_this);
	[LinkName("QVariant_ToUInt")]
	public static extern uint32 QVariant_ToUInt(Self* c_this);
	[LinkName("QVariant_ToLongLong")]
	public static extern int64 QVariant_ToLongLong(Self* c_this);
	[LinkName("QVariant_ToULongLong")]
	public static extern uint64 QVariant_ToULongLong(Self* c_this);
	[LinkName("QVariant_ToBool")]
	public static extern bool QVariant_ToBool(Self* c_this);
	[LinkName("QVariant_ToDouble")]
	public static extern double QVariant_ToDouble(Self* c_this);
	[LinkName("QVariant_ToFloat")]
	public static extern float QVariant_ToFloat(Self* c_this);
	[LinkName("QVariant_ToReal")]
	public static extern double QVariant_ToReal(Self* c_this);
	[LinkName("QVariant_ToByteArray")]
	public static extern libqt_string QVariant_ToByteArray(Self* c_this);
	[LinkName("QVariant_ToBitArray")]
	public static extern QBitArray QVariant_ToBitArray(Self* c_this);
	[LinkName("QVariant_ToString")]
	public static extern libqt_string QVariant_ToString(Self* c_this);
	[LinkName("QVariant_ToStringList")]
	public static extern libqt_string[] QVariant_ToStringList(Self* c_this);
	[LinkName("QVariant_ToChar")]
	public static extern QChar QVariant_ToChar(Self* c_this);
	[LinkName("QVariant_ToDate")]
	public static extern QDate QVariant_ToDate(Self* c_this);
	[LinkName("QVariant_ToTime")]
	public static extern QTime QVariant_ToTime(Self* c_this);
	[LinkName("QVariant_ToDateTime")]
	public static extern QDateTime QVariant_ToDateTime(Self* c_this);
	[LinkName("QVariant_ToMap")]
	public static extern void* QVariant_ToMap(Self* c_this);
	[LinkName("QVariant_ToHash")]
	public static extern void* QVariant_ToHash(Self* c_this);
	[LinkName("QVariant_ToPoint")]
	public static extern QPoint QVariant_ToPoint(Self* c_this);
	[LinkName("QVariant_ToPointF")]
	public static extern QPointF QVariant_ToPointF(Self* c_this);
	[LinkName("QVariant_ToRect")]
	public static extern QRect QVariant_ToRect(Self* c_this);
	[LinkName("QVariant_ToSize")]
	public static extern QSize QVariant_ToSize(Self* c_this);
	[LinkName("QVariant_ToSizeF")]
	public static extern QSizeF QVariant_ToSizeF(Self* c_this);
	[LinkName("QVariant_ToLine")]
	public static extern QLine QVariant_ToLine(Self* c_this);
	[LinkName("QVariant_ToLineF")]
	public static extern QLineF QVariant_ToLineF(Self* c_this);
	[LinkName("QVariant_ToRectF")]
	public static extern QRectF QVariant_ToRectF(Self* c_this);
	[LinkName("QVariant_ToLocale")]
	public static extern QLocale QVariant_ToLocale(Self* c_this);
	[LinkName("QVariant_ToRegularExpression")]
	public static extern QRegularExpression QVariant_ToRegularExpression(Self* c_this);
	[LinkName("QVariant_ToEasingCurve")]
	public static extern QEasingCurve QVariant_ToEasingCurve(Self* c_this);
	[LinkName("QVariant_ToUuid")]
	public static extern QUuid QVariant_ToUuid(Self* c_this);
	[LinkName("QVariant_ToUrl")]
	public static extern QUrl QVariant_ToUrl(Self* c_this);
	[LinkName("QVariant_ToJsonValue")]
	public static extern QJsonValue QVariant_ToJsonValue(Self* c_this);
	[LinkName("QVariant_ToJsonObject")]
	public static extern QJsonObject QVariant_ToJsonObject(Self* c_this);
	[LinkName("QVariant_ToJsonArray")]
	public static extern QJsonArray QVariant_ToJsonArray(Self* c_this);
	[LinkName("QVariant_ToJsonDocument")]
	public static extern QJsonDocument QVariant_ToJsonDocument(Self* c_this);
	[LinkName("QVariant_ToModelIndex")]
	public static extern QModelIndex QVariant_ToModelIndex(Self* c_this);
	[LinkName("QVariant_ToPersistentModelIndex")]
	public static extern QPersistentModelIndex QVariant_ToPersistentModelIndex(Self* c_this);
	[LinkName("QVariant_Load")]
	public static extern void QVariant_Load(Self* c_this, QDataStream* ds);
	[LinkName("QVariant_Save")]
	public static extern void QVariant_Save(Self* c_this, QDataStream* ds);
	[LinkName("QVariant_Type")]
	public static extern int64 QVariant_Type(Self* c_this);
	[LinkName("QVariant_TypeToName")]
	public static extern char8[] QVariant_TypeToName(int32 typeId);
	[LinkName("QVariant_NameToType")]
	public static extern int64 QVariant_NameToType(char8[] name);
	[LinkName("QVariant_Data")]
	public static extern void* QVariant_Data(Self* c_this);
	[LinkName("QVariant_ConstData")]
	public static extern void* QVariant_ConstData(Self* c_this);
	[LinkName("QVariant_Data2")]
	public static extern void* QVariant_Data2(Self* c_this);
	[LinkName("QVariant_SetValue")]
	public static extern void QVariant_SetValue(Self* c_this, QVariant* avalue);
	[LinkName("QVariant_Compare")]
	public static extern QPartialOrdering QVariant_Compare(QVariant* lhs, QVariant* rhs);
	[LinkName("QVariant_ToInt1")]
	public static extern int32 QVariant_ToInt1(Self* c_this, bool* ok);
	[LinkName("QVariant_ToUInt1")]
	public static extern uint32 QVariant_ToUInt1(Self* c_this, bool* ok);
	[LinkName("QVariant_ToLongLong1")]
	public static extern int64 QVariant_ToLongLong1(Self* c_this, bool* ok);
	[LinkName("QVariant_ToULongLong1")]
	public static extern uint64 QVariant_ToULongLong1(Self* c_this, bool* ok);
	[LinkName("QVariant_ToDouble1")]
	public static extern double QVariant_ToDouble1(Self* c_this, bool* ok);
	[LinkName("QVariant_ToFloat1")]
	public static extern float QVariant_ToFloat1(Self* c_this, bool* ok);
	[LinkName("QVariant_ToReal1")]
	public static extern double QVariant_ToReal1(Self* c_this, bool* ok);
}
public struct QVariantConstPointer
{
	[LinkName("QVariantConstPointer_new")]
	public static extern QVariantConstPointer* QVariantConstPointer_new(QVariant variant);
	[LinkName("QVariantConstPointer_new2")]
	public static extern QVariantConstPointer* QVariantConstPointer_new2(QVariantConstPointer* param1);
	[LinkName("QVariantConstPointer_OperatorMultiply")]
	public static extern QVariant QVariantConstPointer_OperatorMultiply(Self* c_this);
	[LinkName("QVariantConstPointer_OperatorMinusGreater")]
	public static extern QVariant* QVariantConstPointer_OperatorMinusGreater(Self* c_this);
	[LinkName("QVariantConstPointer_OperatorAssign")]
	public static extern void QVariantConstPointer_OperatorAssign(Self* c_this, QVariantConstPointer* param1);
}