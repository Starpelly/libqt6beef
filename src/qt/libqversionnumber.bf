using System;
using System.Interop;
namespace Qt;

public struct QVersionNumber
{
	[LinkName("QVersionNumber_new")]
	public static extern QVersionNumber* QVersionNumber_new();
	[LinkName("QVersionNumber_new2")]
	public static extern QVersionNumber* QVersionNumber_new2(int32[] seg);
	[LinkName("QVersionNumber_new3")]
	public static extern QVersionNumber* QVersionNumber_new3(int32 maj);
	[LinkName("QVersionNumber_new4")]
	public static extern QVersionNumber* QVersionNumber_new4(int32 maj, int32 min);
	[LinkName("QVersionNumber_new5")]
	public static extern QVersionNumber* QVersionNumber_new5(int32 maj, int32 min, int32 mic);
	[LinkName("QVersionNumber_new6")]
	public static extern QVersionNumber* QVersionNumber_new6(QVersionNumber* param1);
	[LinkName("QVersionNumber_IsNull")]
	public static extern bool QVersionNumber_IsNull(Self* c_this);
	[LinkName("QVersionNumber_IsNormalized")]
	public static extern bool QVersionNumber_IsNormalized(Self* c_this);
	[LinkName("QVersionNumber_MajorVersion")]
	public static extern int32 QVersionNumber_MajorVersion(Self* c_this);
	[LinkName("QVersionNumber_MinorVersion")]
	public static extern int32 QVersionNumber_MinorVersion(Self* c_this);
	[LinkName("QVersionNumber_MicroVersion")]
	public static extern int32 QVersionNumber_MicroVersion(Self* c_this);
	[LinkName("QVersionNumber_Normalized")]
	public static extern QVersionNumber QVersionNumber_Normalized(Self* c_this);
	[LinkName("QVersionNumber_Segments")]
	public static extern int32[] QVersionNumber_Segments(Self* c_this);
	[LinkName("QVersionNumber_SegmentAt")]
	public static extern int32 QVersionNumber_SegmentAt(Self* c_this, int32 index);
	[LinkName("QVersionNumber_SegmentCount")]
	public static extern int32 QVersionNumber_SegmentCount(Self* c_this);
	[LinkName("QVersionNumber_IsPrefixOf")]
	public static extern bool QVersionNumber_IsPrefixOf(Self* c_this, QVersionNumber* other);
	[LinkName("QVersionNumber_Compare")]
	public static extern int32 QVersionNumber_Compare(QVersionNumber* v1, QVersionNumber* v2);
	[LinkName("QVersionNumber_CommonPrefix")]
	public static extern QVersionNumber QVersionNumber_CommonPrefix(QVersionNumber* v1, QVersionNumber* v2);
	[LinkName("QVersionNumber_ToString")]
	public static extern libqt_string QVersionNumber_ToString(Self* c_this);
	[LinkName("QVersionNumber_FromString")]
	public static extern QVersionNumber QVersionNumber_FromString(QAnyStringView stringVal);
	[LinkName("QVersionNumber_FromString2")]
	public static extern QVersionNumber QVersionNumber_FromString2(QAnyStringView stringVal, int32* suffixIndex);
}
public struct QTypeRevision
{
	[LinkName("QTypeRevision_new")]
	public static extern QTypeRevision* QTypeRevision_new(QTypeRevision* other);
	[LinkName("QTypeRevision_new2")]
	public static extern QTypeRevision* QTypeRevision_new2(QTypeRevision* other);
	[LinkName("QTypeRevision_new3")]
	public static extern QTypeRevision* QTypeRevision_new3();
	[LinkName("QTypeRevision_new4")]
	public static extern QTypeRevision* QTypeRevision_new4(QTypeRevision* param1);
	[LinkName("QTypeRevision_Zero")]
	public static extern QTypeRevision QTypeRevision_Zero();
	[LinkName("QTypeRevision_HasMajorVersion")]
	public static extern bool QTypeRevision_HasMajorVersion(Self* c_this);
	[LinkName("QTypeRevision_MajorVersion")]
	public static extern uint8 QTypeRevision_MajorVersion(Self* c_this);
	[LinkName("QTypeRevision_HasMinorVersion")]
	public static extern bool QTypeRevision_HasMinorVersion(Self* c_this);
	[LinkName("QTypeRevision_MinorVersion")]
	public static extern uint8 QTypeRevision_MinorVersion(Self* c_this);
	[LinkName("QTypeRevision_IsValid")]
	public static extern bool QTypeRevision_IsValid(Self* c_this);
}