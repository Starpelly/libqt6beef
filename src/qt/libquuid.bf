using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QUuid__Variant
{
	VarUnknown = -1,
	NCS = 0,
	DCE = 2,
	Microsoft = 6,
	Reserved = 7,
}
[AllowDuplicates]
public enum QUuid__Version
{
	VerUnknown = -1,
	Time = 1,
	EmbeddedPOSIX = 2,
	Md5 = 3,
	Name = 3,
	Random = 4,
	Sha1 = 5,
}
[AllowDuplicates]
public enum QUuid__StringFormat
{
	WithBraces = 0,
	WithoutBraces = 1,
	Id128 = 3,
}
public struct QUuid
{
	[LinkName("QUuid_new")]
	public static extern QUuid* QUuid_new(QUuid* other);
	[LinkName("QUuid_new2")]
	public static extern QUuid* QUuid_new2(QUuid* other);
	[LinkName("QUuid_new3")]
	public static extern QUuid* QUuid_new3();
	[LinkName("QUuid_new4")]
	public static extern QUuid* QUuid_new4(uint32 l, uint16 w1, uint16 w2, uint8 b1, uint8 b2, uint8 b3, uint8 b4, uint8 b5, uint8 b6, uint8 b7, uint8 b8);
	[LinkName("QUuid_new5")]
	public static extern QUuid* QUuid_new5(QAnyStringView stringVal);
	[LinkName("QUuid_new6")]
	public static extern QUuid* QUuid_new6(QUuid* param1);
	[LinkName("QUuid_FromString")]
	public static extern QUuid QUuid_FromString(QAnyStringView stringVal);
	[LinkName("QUuid_ToString")]
	public static extern libqt_string QUuid_ToString(Self* c_this);
	[LinkName("QUuid_ToByteArray")]
	public static extern libqt_string QUuid_ToByteArray(Self* c_this);
	[LinkName("QUuid_ToRfc4122")]
	public static extern libqt_string QUuid_ToRfc4122(Self* c_this);
	[LinkName("QUuid_FromRfc4122")]
	public static extern QUuid QUuid_FromRfc4122(QByteArrayView param1);
	[LinkName("QUuid_IsNull")]
	public static extern bool QUuid_IsNull(Self* c_this);
	[LinkName("QUuid_OperatorEqual")]
	public static extern bool QUuid_OperatorEqual(Self* c_this, QUuid* orig);
	[LinkName("QUuid_OperatorNotEqual")]
	public static extern bool QUuid_OperatorNotEqual(Self* c_this, QUuid* orig);
	[LinkName("QUuid_OperatorLesser")]
	public static extern bool QUuid_OperatorLesser(Self* c_this, QUuid* other);
	[LinkName("QUuid_OperatorGreater")]
	public static extern bool QUuid_OperatorGreater(Self* c_this, QUuid* other);
	[LinkName("QUuid_CreateUuid")]
	public static extern QUuid QUuid_CreateUuid();
	[LinkName("QUuid_CreateUuidV3")]
	public static extern QUuid QUuid_CreateUuidV3(QUuid* ns, libqt_string baseData);
	[LinkName("QUuid_CreateUuidV5")]
	public static extern QUuid QUuid_CreateUuidV5(QUuid* ns, libqt_string baseData);
	[LinkName("QUuid_CreateUuidV32")]
	public static extern QUuid QUuid_CreateUuidV32(QUuid* ns, libqt_string baseData);
	[LinkName("QUuid_CreateUuidV52")]
	public static extern QUuid QUuid_CreateUuidV52(QUuid* ns, libqt_string baseData);
	[LinkName("QUuid_Variant")]
	public static extern int64 QUuid_Variant(Self* c_this);
	[LinkName("QUuid_Version")]
	public static extern int64 QUuid_Version(Self* c_this);
	[LinkName("QUuid_ToString1")]
	public static extern libqt_string QUuid_ToString1(Self* c_this, int64 mode);
	[LinkName("QUuid_ToByteArray1")]
	public static extern libqt_string QUuid_ToByteArray1(Self* c_this, int64 mode);
}