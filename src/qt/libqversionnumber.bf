using System;
using System.Interop;
namespace Qt;

public class QVersionNumber
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QVersionNumber_new();
	}
	
	public ~this()
	{
		CQt.QVersionNumber_Delete(this.nativePtr);
	}
	
	public bool IsNull()
	{
		return CQt.QVersionNumber_IsNull(this.nativePtr);
	}
	
	public bool IsNormalized()
	{
		return CQt.QVersionNumber_IsNormalized(this.nativePtr);
	}
	
	public int32 MajorVersion()
	{
		return CQt.QVersionNumber_MajorVersion(this.nativePtr);
	}
	
	public int32 MinorVersion()
	{
		return CQt.QVersionNumber_MinorVersion(this.nativePtr);
	}
	
	public int32 MicroVersion()
	{
		return CQt.QVersionNumber_MicroVersion(this.nativePtr);
	}
	
	public void Normalized()
	{
		CQt.QVersionNumber_Normalized(this.nativePtr);
	}
	
	public int32[] Segments()
	{
		return CQt.QVersionNumber_Segments(this.nativePtr);
	}
	
	public int32 SegmentAt(int32 index)
	{
		return CQt.QVersionNumber_SegmentAt(this.nativePtr, index);
	}
	
	public int32 SegmentCount()
	{
		return CQt.QVersionNumber_SegmentCount(this.nativePtr);
	}
	
	public bool IsPrefixOf(void* other)
	{
		return CQt.QVersionNumber_IsPrefixOf(this.nativePtr, other);
	}
	
	public static int32 Compare(void* v1, void* v2)
	{
		return CQt.QVersionNumber_Compare(v1, v2);
	}
	
	public static void CommonPrefix(void* v1, void* v2)
	{
		CQt.QVersionNumber_CommonPrefix(v1, v2);
	}
	
	public libqt_string ToString()
	{
		return CQt.QVersionNumber_ToString(this.nativePtr);
	}
	
	public static void FromString(void stringVal)
	{
		CQt.QVersionNumber_FromString(stringVal);
	}
	
	public static void FromString2(void stringVal, int32* suffixIndex)
	{
		CQt.QVersionNumber_FromString2(stringVal, suffixIndex);
	}
	
}
extension CQt
{
	[LinkName("QVersionNumber_new")]
	public static extern void* QVersionNumber_new();
	[LinkName("QVersionNumber_new2")]
	public static extern void* QVersionNumber_new2(int32[] seg);
	[LinkName("QVersionNumber_new3")]
	public static extern void* QVersionNumber_new3(int32 maj);
	[LinkName("QVersionNumber_new4")]
	public static extern void* QVersionNumber_new4(int32 maj, int32 min);
	[LinkName("QVersionNumber_new5")]
	public static extern void* QVersionNumber_new5(int32 maj, int32 min, int32 mic);
	[LinkName("QVersionNumber_new6")]
	public static extern void* QVersionNumber_new6(void* param1);
	[LinkName("QVersionNumber_IsNull")]
	public static extern bool QVersionNumber_IsNull(void* c_this);
	[LinkName("QVersionNumber_IsNormalized")]
	public static extern bool QVersionNumber_IsNormalized(void* c_this);
	[LinkName("QVersionNumber_MajorVersion")]
	public static extern int32 QVersionNumber_MajorVersion(void* c_this);
	[LinkName("QVersionNumber_MinorVersion")]
	public static extern int32 QVersionNumber_MinorVersion(void* c_this);
	[LinkName("QVersionNumber_MicroVersion")]
	public static extern int32 QVersionNumber_MicroVersion(void* c_this);
	[LinkName("QVersionNumber_Normalized")]
	public static extern void QVersionNumber_Normalized(void* c_this);
	[LinkName("QVersionNumber_Segments")]
	public static extern int32[] QVersionNumber_Segments(void* c_this);
	[LinkName("QVersionNumber_SegmentAt")]
	public static extern int32 QVersionNumber_SegmentAt(void* c_this, int32 index);
	[LinkName("QVersionNumber_SegmentCount")]
	public static extern int32 QVersionNumber_SegmentCount(void* c_this);
	[LinkName("QVersionNumber_IsPrefixOf")]
	public static extern bool QVersionNumber_IsPrefixOf(void* c_this, void* other);
	[LinkName("QVersionNumber_Compare")]
	public static extern int32 QVersionNumber_Compare(void* v1, void* v2);
	[LinkName("QVersionNumber_CommonPrefix")]
	public static extern void QVersionNumber_CommonPrefix(void* v1, void* v2);
	[LinkName("QVersionNumber_ToString")]
	public static extern libqt_string QVersionNumber_ToString(void* c_this);
	[LinkName("QVersionNumber_FromString")]
	public static extern void QVersionNumber_FromString(void stringVal);
	[LinkName("QVersionNumber_FromString2")]
	public static extern void QVersionNumber_FromString2(void stringVal, int32* suffixIndex);
	/// Delete this object from C++ memory
	[LinkName("QVersionNumber_Delete")]
	public static extern void QVersionNumber_Delete(void* self);
}
public class QTypeRevision
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QTypeRevision_new(other);
	}
	
	public ~this()
	{
		CQt.QTypeRevision_Delete(this.nativePtr);
	}
	
	public static void Zero()
	{
		CQt.QTypeRevision_Zero();
	}
	
	public bool HasMajorVersion()
	{
		return CQt.QTypeRevision_HasMajorVersion(this.nativePtr);
	}
	
	public uint8 MajorVersion()
	{
		return CQt.QTypeRevision_MajorVersion(this.nativePtr);
	}
	
	public bool HasMinorVersion()
	{
		return CQt.QTypeRevision_HasMinorVersion(this.nativePtr);
	}
	
	public uint8 MinorVersion()
	{
		return CQt.QTypeRevision_MinorVersion(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QTypeRevision_IsValid(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QTypeRevision_new")]
	public static extern void* QTypeRevision_new(void* other);
	[LinkName("QTypeRevision_new2")]
	public static extern void* QTypeRevision_new2(void* other);
	[LinkName("QTypeRevision_new3")]
	public static extern void* QTypeRevision_new3();
	[LinkName("QTypeRevision_new4")]
	public static extern void* QTypeRevision_new4(void* param1);
	[LinkName("QTypeRevision_Zero")]
	public static extern void QTypeRevision_Zero();
	[LinkName("QTypeRevision_HasMajorVersion")]
	public static extern bool QTypeRevision_HasMajorVersion(void* c_this);
	[LinkName("QTypeRevision_MajorVersion")]
	public static extern uint8 QTypeRevision_MajorVersion(void* c_this);
	[LinkName("QTypeRevision_HasMinorVersion")]
	public static extern bool QTypeRevision_HasMinorVersion(void* c_this);
	[LinkName("QTypeRevision_MinorVersion")]
	public static extern uint8 QTypeRevision_MinorVersion(void* c_this);
	[LinkName("QTypeRevision_IsValid")]
	public static extern bool QTypeRevision_IsValid(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QTypeRevision_Delete")]
	public static extern void QTypeRevision_Delete(void* self);
}