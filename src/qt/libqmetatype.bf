using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QMetaType__Type
{
	Bool = 1,
	Int = 2,
	UInt = 3,
	LongLong = 4,
	ULongLong = 5,
	Double = 6,
	Long = 32,
	Short = 33,
	Char = 34,
	Char16 = 56,
	Char32 = 57,
	ULong = 35,
	UShort = 36,
	UChar = 37,
	Float = 38,
	SChar = 40,
	Nullptr = 51,
	QCborSimpleType = 52,
	Void = 43,
	VoidStar = 31,
	QChar = 7,
	QString = 10,
	QByteArray = 12,
	QBitArray = 13,
	QDate = 14,
	QTime = 15,
	QDateTime = 16,
	QUrl = 17,
	QLocale = 18,
	QRect = 19,
	QRectF = 20,
	QSize = 21,
	QSizeF = 22,
	QLine = 23,
	QLineF = 24,
	QPoint = 25,
	QPointF = 26,
	QEasingCurve = 29,
	QUuid = 30,
	QVariant = 41,
	QRegularExpression = 44,
	QJsonValue = 45,
	QJsonObject = 46,
	QJsonArray = 47,
	QJsonDocument = 48,
	QCborValue = 53,
	QCborArray = 54,
	QCborMap = 55,
	QModelIndex = 42,
	QPersistentModelIndex = 50,
	QObjectStar = 39,
	QVariantMap = 8,
	QVariantList = 9,
	QVariantHash = 28,
	QVariantPair = 58,
	QByteArrayList = 49,
	QStringList = 11,
	QFont = 4096,
	QPixmap = 4097,
	QBrush = 4098,
	QColor = 4099,
	QPalette = 4100,
	QIcon = 4101,
	QImage = 4102,
	QPolygon = 4103,
	QRegion = 4104,
	QBitmap = 4105,
	QCursor = 4106,
	QKeySequence = 4107,
	QPen = 4108,
	QTextLength = 4109,
	QTextFormat = 4110,
	QTransform = 4112,
	QMatrix4x4 = 4113,
	QVector2D = 4114,
	QVector3D = 4115,
	QVector4D = 4116,
	QQuaternion = 4117,
	QPolygonF = 4118,
	QColorSpace = 4119,
	QSizePolicy = 8192,
	FirstCoreType = 1,
	LastCoreType = 58,
	FirstGuiType = 4096,
	LastGuiType = 4119,
	FirstWidgetsType = 8192,
	LastWidgetsType = 8192,
	HighestInternalId = 8192,
	QReal = 6,
	UnknownType = 0,
	User = 65536,
}
[AllowDuplicates]
public enum QMetaType__TypeFlag
{
	NeedsConstruction = 1,
	NeedsDestruction = 2,
	RelocatableType = 4,
	MovableType = 4,
	PointerToQObject = 8,
	IsEnumeration = 16,
	SharedPointerToQObject = 32,
	WeakPointerToQObject = 64,
	TrackingPointerToQObject = 128,
	IsUnsignedEnumeration = 256,
	IsGadget = 512,
	PointerToGadget = 1024,
	IsPointer = 2048,
	IsQmlList = 4096,
	IsConst = 8192,
}
public interface IQMetaType
{
	void* NativePtr { get; }
}
public class QMetaType : IQMetaType
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQMetaType other)
	{
		this.nativePtr = CQt.QMetaType_new((other == default) ? default : (void*)other.NativePtr);
	}
	
	public ~this()
	{
		CQt.QMetaType_Delete(this.nativePtr);
	}
	
	public static void RegisterNormalizedTypedef(String normalizedTypeName, IQMetaType typeVal)
	{
		CQt.QMetaType_RegisterNormalizedTypedef(libqt_string(normalizedTypeName), (typeVal == default) ? default : (void)typeVal.NativePtr);
	}
	
	public static int32 Type(char8* typeName)
	{
		return CQt.QMetaType_Type(typeName);
	}
	
	public static int32 TypeWithTypeName(String typeName)
	{
		return CQt.QMetaType_TypeWithTypeName(libqt_string(typeName));
	}
	
	public static char8* TypeName(int32 typeVal)
	{
		return CQt.QMetaType_TypeName(typeVal);
	}
	
	public static int32 SizeOf(int32 typeVal)
	{
		return CQt.QMetaType_SizeOf(typeVal);
	}
	
	public static int64 TypeFlags(int32 typeVal)
	{
		return CQt.QMetaType_TypeFlags(typeVal);
	}
	
	public static void* MetaObjectForType(int32 typeVal)
	{
		return CQt.QMetaType_MetaObjectForType(typeVal);
	}
	
	public static void* Create(int32 typeVal)
	{
		return CQt.QMetaType_Create(typeVal);
	}
	
	public static void Destroy(int32 typeVal, void* data)
	{
		CQt.QMetaType_Destroy(typeVal, data);
	}
	
	public static void* Construct(int32 typeVal, void* _where, void* copyVal)
	{
		return CQt.QMetaType_Construct(typeVal, _where, copyVal);
	}
	
	public static void Destruct(int32 typeVal, void* _where)
	{
		CQt.QMetaType_Destruct(typeVal, _where);
	}
	
	public static bool IsRegistered(int32 typeVal)
	{
		return CQt.QMetaType_IsRegistered(typeVal);
	}
	
	public bool IsValid()
	{
		return CQt.QMetaType_IsValid(this.nativePtr);
	}
	
	public bool IsRegistered2()
	{
		return CQt.QMetaType_IsRegistered2(this.nativePtr);
	}
	
	public int32 Id()
	{
		return CQt.QMetaType_Id(this.nativePtr);
	}
	
	public int32 SizeOf2()
	{
		return CQt.QMetaType_SizeOf2(this.nativePtr);
	}
	
	public int32 AlignOf()
	{
		return CQt.QMetaType_AlignOf(this.nativePtr);
	}
	
	public int64 Flags()
	{
		return CQt.QMetaType_Flags(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QMetaType_MetaObject(this.nativePtr);
	}
	
	public char8* Name()
	{
		return CQt.QMetaType_Name(this.nativePtr);
	}
	
	public void* Create2()
	{
		return CQt.QMetaType_Create2(this.nativePtr);
	}
	
	public void DestroyWithData(void* data)
	{
		CQt.QMetaType_DestroyWithData(this.nativePtr, data);
	}
	
	public void* ConstructWithWhere(void* _where)
	{
		return CQt.QMetaType_ConstructWithWhere(this.nativePtr, _where);
	}
	
	public void DestructWithData(void* data)
	{
		CQt.QMetaType_DestructWithData(this.nativePtr, data);
	}
	
	public void Compare(void* lhs, void* rhs)
	{
		CQt.QMetaType_Compare(this.nativePtr, lhs, rhs);
	}
	
	public bool Equals(void* lhs, void* rhs)
	{
		return CQt.QMetaType_Equals(this.nativePtr, lhs, rhs);
	}
	
	public bool IsEqualityComparable()
	{
		return CQt.QMetaType_IsEqualityComparable(this.nativePtr);
	}
	
	public bool IsOrdered()
	{
		return CQt.QMetaType_IsOrdered(this.nativePtr);
	}
	
	public bool Save(IQDataStream stream, void* data)
	{
		return CQt.QMetaType_Save(this.nativePtr, (stream == default) ? default : (void*)stream.NativePtr, data);
	}
	
	public bool Load(IQDataStream stream, void* data)
	{
		return CQt.QMetaType_Load(this.nativePtr, (stream == default) ? default : (void*)stream.NativePtr, data);
	}
	
	public bool HasRegisteredDataStreamOperators()
	{
		return CQt.QMetaType_HasRegisteredDataStreamOperators(this.nativePtr);
	}
	
	public static bool Save2(IQDataStream stream, int32 typeVal, void* data)
	{
		return CQt.QMetaType_Save2((stream == default) ? default : (void*)stream.NativePtr, typeVal, data);
	}
	
	public static bool Load2(IQDataStream stream, int32 typeVal, void* data)
	{
		return CQt.QMetaType_Load2((stream == default) ? default : (void*)stream.NativePtr, typeVal, data);
	}
	
	public static void FromName(IQByteArrayView name)
	{
		CQt.QMetaType_FromName((name == default) ? default : (char8*)name.NativePtr);
	}
	
	public bool DebugStream(IQDebug dbg, void* rhs)
	{
		return CQt.QMetaType_DebugStream(this.nativePtr, (dbg == default) ? default : (void*)dbg.NativePtr, rhs);
	}
	
	public bool HasRegisteredDebugStreamOperator()
	{
		return CQt.QMetaType_HasRegisteredDebugStreamOperator(this.nativePtr);
	}
	
	public static bool DebugStream2(IQDebug dbg, void* rhs, int32 typeId)
	{
		return CQt.QMetaType_DebugStream2((dbg == default) ? default : (void*)dbg.NativePtr, rhs, typeId);
	}
	
	public static bool HasRegisteredDebugStreamOperatorWithTypeId(int32 typeId)
	{
		return CQt.QMetaType_HasRegisteredDebugStreamOperatorWithTypeId(typeId);
	}
	
	public static bool Convert(IQMetaType fromType, void* from, IQMetaType toType, void* to)
	{
		return CQt.QMetaType_Convert((fromType == default) ? default : (void)fromType.NativePtr, from, (toType == default) ? default : (void)toType.NativePtr, to);
	}
	
	public static bool CanConvert(IQMetaType fromType, IQMetaType toType)
	{
		return CQt.QMetaType_CanConvert((fromType == default) ? default : (void)fromType.NativePtr, (toType == default) ? default : (void)toType.NativePtr);
	}
	
	public static bool View(IQMetaType fromType, void* from, IQMetaType toType, void* to)
	{
		return CQt.QMetaType_View((fromType == default) ? default : (void)fromType.NativePtr, from, (toType == default) ? default : (void)toType.NativePtr, to);
	}
	
	public static bool CanView(IQMetaType fromType, IQMetaType toType)
	{
		return CQt.QMetaType_CanView((fromType == default) ? default : (void)fromType.NativePtr, (toType == default) ? default : (void)toType.NativePtr);
	}
	
	public static bool Convert2(void* from, int32 fromTypeId, void* to, int32 toTypeId)
	{
		return CQt.QMetaType_Convert2(from, fromTypeId, to, toTypeId);
	}
	
	public static bool Compare2(void* lhs, void* rhs, int32 typeId, int32* result)
	{
		return CQt.QMetaType_Compare2(lhs, rhs, typeId, result);
	}
	
	public static bool Equals2(void* lhs, void* rhs, int32 typeId, int32* result)
	{
		return CQt.QMetaType_Equals2(lhs, rhs, typeId, result);
	}
	
	public static bool HasRegisteredConverterFunction(IQMetaType fromType, IQMetaType toType)
	{
		return CQt.QMetaType_HasRegisteredConverterFunction((fromType == default) ? default : (void)fromType.NativePtr, (toType == default) ? default : (void)toType.NativePtr);
	}
	
	public static bool HasRegisteredMutableViewFunction(IQMetaType fromType, IQMetaType toType)
	{
		return CQt.QMetaType_HasRegisteredMutableViewFunction((fromType == default) ? default : (void)fromType.NativePtr, (toType == default) ? default : (void)toType.NativePtr);
	}
	
	public static void UnregisterConverterFunction(IQMetaType from, IQMetaType to)
	{
		CQt.QMetaType_UnregisterConverterFunction((from == default) ? default : (void)from.NativePtr, (to == default) ? default : (void)to.NativePtr);
	}
	
	public static void UnregisterMutableViewFunction(IQMetaType from, IQMetaType to)
	{
		CQt.QMetaType_UnregisterMutableViewFunction((from == default) ? default : (void)from.NativePtr, (to == default) ? default : (void)to.NativePtr);
	}
	
	public static void UnregisterMetaType(IQMetaType typeVal)
	{
		CQt.QMetaType_UnregisterMetaType((typeVal == default) ? default : (void)typeVal.NativePtr);
	}
	
	public static void* Create22(int32 typeVal, void* copyVal)
	{
		return CQt.QMetaType_Create22(typeVal, copyVal);
	}
	
	public int32 Id1(int32 param1)
	{
		return CQt.QMetaType_Id1(this.nativePtr, param1);
	}
	
	public void* Create1(void* copyVal)
	{
		return CQt.QMetaType_Create1(this.nativePtr, copyVal);
	}
	
	public void* Construct2(void* _where, void* copyVal)
	{
		return CQt.QMetaType_Construct2(this.nativePtr, _where, copyVal);
	}
	
}
extension CQt
{
	[LinkName("QMetaType_new")]
	public static extern void* QMetaType_new(void* other);
	[LinkName("QMetaType_new2")]
	public static extern void* QMetaType_new2(void* other);
	[LinkName("QMetaType_new3")]
	public static extern void* QMetaType_new3(int32 typeVal);
	[LinkName("QMetaType_new4")]
	public static extern void* QMetaType_new4();
	[LinkName("QMetaType_new5")]
	public static extern void* QMetaType_new5(void* param1);
	[LinkName("QMetaType_RegisterNormalizedTypedef")]
	public static extern void QMetaType_RegisterNormalizedTypedef(libqt_string normalizedTypeName, void typeVal);
	[LinkName("QMetaType_Type")]
	public static extern int32 QMetaType_Type(char8* typeName);
	[LinkName("QMetaType_TypeWithTypeName")]
	public static extern int32 QMetaType_TypeWithTypeName(libqt_string typeName);
	[LinkName("QMetaType_TypeName")]
	public static extern char8* QMetaType_TypeName(int32 typeVal);
	[LinkName("QMetaType_SizeOf")]
	public static extern int32 QMetaType_SizeOf(int32 typeVal);
	[LinkName("QMetaType_TypeFlags")]
	public static extern int64 QMetaType_TypeFlags(int32 typeVal);
	[LinkName("QMetaType_MetaObjectForType")]
	public static extern void* QMetaType_MetaObjectForType(int32 typeVal);
	[LinkName("QMetaType_Create")]
	public static extern void* QMetaType_Create(int32 typeVal);
	[LinkName("QMetaType_Destroy")]
	public static extern void QMetaType_Destroy(int32 typeVal, void* data);
	[LinkName("QMetaType_Construct")]
	public static extern void* QMetaType_Construct(int32 typeVal, void* _where, void* copyVal);
	[LinkName("QMetaType_Destruct")]
	public static extern void QMetaType_Destruct(int32 typeVal, void* _where);
	[LinkName("QMetaType_IsRegistered")]
	public static extern bool QMetaType_IsRegistered(int32 typeVal);
	[LinkName("QMetaType_IsValid")]
	public static extern bool QMetaType_IsValid(void* c_this);
	[LinkName("QMetaType_IsRegistered2")]
	public static extern bool QMetaType_IsRegistered2(void* c_this);
	[LinkName("QMetaType_Id")]
	public static extern int32 QMetaType_Id(void* c_this);
	[LinkName("QMetaType_SizeOf2")]
	public static extern int32 QMetaType_SizeOf2(void* c_this);
	[LinkName("QMetaType_AlignOf")]
	public static extern int32 QMetaType_AlignOf(void* c_this);
	[LinkName("QMetaType_Flags")]
	public static extern int64 QMetaType_Flags(void* c_this);
	[LinkName("QMetaType_MetaObject")]
	public static extern void* QMetaType_MetaObject(void* c_this);
	[LinkName("QMetaType_Name")]
	public static extern char8* QMetaType_Name(void* c_this);
	[LinkName("QMetaType_Create2")]
	public static extern void* QMetaType_Create2(void* c_this);
	[LinkName("QMetaType_DestroyWithData")]
	public static extern void QMetaType_DestroyWithData(void* c_this, void* data);
	[LinkName("QMetaType_ConstructWithWhere")]
	public static extern void* QMetaType_ConstructWithWhere(void* c_this, void* _where);
	[LinkName("QMetaType_DestructWithData")]
	public static extern void QMetaType_DestructWithData(void* c_this, void* data);
	[LinkName("QMetaType_Compare")]
	public static extern void QMetaType_Compare(void* c_this, void* lhs, void* rhs);
	[LinkName("QMetaType_Equals")]
	public static extern bool QMetaType_Equals(void* c_this, void* lhs, void* rhs);
	[LinkName("QMetaType_IsEqualityComparable")]
	public static extern bool QMetaType_IsEqualityComparable(void* c_this);
	[LinkName("QMetaType_IsOrdered")]
	public static extern bool QMetaType_IsOrdered(void* c_this);
	[LinkName("QMetaType_Save")]
	public static extern bool QMetaType_Save(void* c_this, void* stream, void* data);
	[LinkName("QMetaType_Load")]
	public static extern bool QMetaType_Load(void* c_this, void* stream, void* data);
	[LinkName("QMetaType_HasRegisteredDataStreamOperators")]
	public static extern bool QMetaType_HasRegisteredDataStreamOperators(void* c_this);
	[LinkName("QMetaType_Save2")]
	public static extern bool QMetaType_Save2(void* stream, int32 typeVal, void* data);
	[LinkName("QMetaType_Load2")]
	public static extern bool QMetaType_Load2(void* stream, int32 typeVal, void* data);
	[LinkName("QMetaType_FromName")]
	public static extern void QMetaType_FromName(char8* name);
	[LinkName("QMetaType_DebugStream")]
	public static extern bool QMetaType_DebugStream(void* c_this, void* dbg, void* rhs);
	[LinkName("QMetaType_HasRegisteredDebugStreamOperator")]
	public static extern bool QMetaType_HasRegisteredDebugStreamOperator(void* c_this);
	[LinkName("QMetaType_DebugStream2")]
	public static extern bool QMetaType_DebugStream2(void* dbg, void* rhs, int32 typeId);
	[LinkName("QMetaType_HasRegisteredDebugStreamOperatorWithTypeId")]
	public static extern bool QMetaType_HasRegisteredDebugStreamOperatorWithTypeId(int32 typeId);
	[LinkName("QMetaType_Convert")]
	public static extern bool QMetaType_Convert(void fromType, void* from, void toType, void* to);
	[LinkName("QMetaType_CanConvert")]
	public static extern bool QMetaType_CanConvert(void fromType, void toType);
	[LinkName("QMetaType_View")]
	public static extern bool QMetaType_View(void fromType, void* from, void toType, void* to);
	[LinkName("QMetaType_CanView")]
	public static extern bool QMetaType_CanView(void fromType, void toType);
	[LinkName("QMetaType_Convert2")]
	public static extern bool QMetaType_Convert2(void* from, int32 fromTypeId, void* to, int32 toTypeId);
	[LinkName("QMetaType_Compare2")]
	public static extern bool QMetaType_Compare2(void* lhs, void* rhs, int32 typeId, int32* result);
	[LinkName("QMetaType_Equals2")]
	public static extern bool QMetaType_Equals2(void* lhs, void* rhs, int32 typeId, int32* result);
	[LinkName("QMetaType_HasRegisteredConverterFunction")]
	public static extern bool QMetaType_HasRegisteredConverterFunction(void fromType, void toType);
	[LinkName("QMetaType_HasRegisteredMutableViewFunction")]
	public static extern bool QMetaType_HasRegisteredMutableViewFunction(void fromType, void toType);
	[LinkName("QMetaType_UnregisterConverterFunction")]
	public static extern void QMetaType_UnregisterConverterFunction(void from, void to);
	[LinkName("QMetaType_UnregisterMutableViewFunction")]
	public static extern void QMetaType_UnregisterMutableViewFunction(void from, void to);
	[LinkName("QMetaType_UnregisterMetaType")]
	public static extern void QMetaType_UnregisterMetaType(void typeVal);
	[LinkName("QMetaType_Create22")]
	public static extern void* QMetaType_Create22(int32 typeVal, void* copyVal);
	[LinkName("QMetaType_Id1")]
	public static extern int32 QMetaType_Id1(void* c_this, int32 param1);
	[LinkName("QMetaType_Create1")]
	public static extern void* QMetaType_Create1(void* c_this, void* copyVal);
	[LinkName("QMetaType_Construct2")]
	public static extern void* QMetaType_Construct2(void* c_this, void* _where, void* copyVal);
	/// Delete this object from C++ memory
	[LinkName("QMetaType_Delete")]
	public static extern void QMetaType_Delete(void* self);
}