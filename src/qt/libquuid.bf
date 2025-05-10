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
public class QUuid
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QUuid_new(other);
	}
	
	public ~this()
	{
		CQt.QUuid_Delete(this.nativePtr);
	}
	
	public static void FromString(void stringVal)
	{
		CQt.QUuid_FromString(stringVal);
	}
	
	public libqt_string ToString()
	{
		return CQt.QUuid_ToString(this.nativePtr);
	}
	
	public libqt_string ToByteArray()
	{
		return CQt.QUuid_ToByteArray(this.nativePtr);
	}
	
	public libqt_string ToRfc4122()
	{
		return CQt.QUuid_ToRfc4122(this.nativePtr);
	}
	
	public static void FromRfc4122(void param1)
	{
		CQt.QUuid_FromRfc4122(param1);
	}
	
	public bool IsNull()
	{
		return CQt.QUuid_IsNull(this.nativePtr);
	}
	
	public bool OperatorEqual(void* orig)
	{
		return CQt.QUuid_OperatorEqual(this.nativePtr, orig);
	}
	
	public bool OperatorNotEqual(void* orig)
	{
		return CQt.QUuid_OperatorNotEqual(this.nativePtr, orig);
	}
	
	public bool OperatorLesser(void* other)
	{
		return CQt.QUuid_OperatorLesser(this.nativePtr, other);
	}
	
	public bool OperatorGreater(void* other)
	{
		return CQt.QUuid_OperatorGreater(this.nativePtr, other);
	}
	
	public static void CreateUuid()
	{
		CQt.QUuid_CreateUuid();
	}
	
	public static void CreateUuidV3(void* ns, libqt_string baseData)
	{
		CQt.QUuid_CreateUuidV3(ns, baseData);
	}
	
	public static void CreateUuidV5(void* ns, libqt_string baseData)
	{
		CQt.QUuid_CreateUuidV5(ns, baseData);
	}
	
	public static void CreateUuidV32(void* ns, libqt_string baseData)
	{
		CQt.QUuid_CreateUuidV32(ns, baseData);
	}
	
	public static void CreateUuidV52(void* ns, libqt_string baseData)
	{
		CQt.QUuid_CreateUuidV52(ns, baseData);
	}
	
	public int64 Variant()
	{
		return CQt.QUuid_Variant(this.nativePtr);
	}
	
	public int64 Version()
	{
		return CQt.QUuid_Version(this.nativePtr);
	}
	
	public libqt_string ToString1(int64 mode)
	{
		return CQt.QUuid_ToString1(this.nativePtr, mode);
	}
	
	public libqt_string ToByteArray1(int64 mode)
	{
		return CQt.QUuid_ToByteArray1(this.nativePtr, mode);
	}
	
}
extension CQt
{
	[LinkName("QUuid_new")]
	public static extern void* QUuid_new(void* other);
	[LinkName("QUuid_new2")]
	public static extern void* QUuid_new2(void* other);
	[LinkName("QUuid_new3")]
	public static extern void* QUuid_new3();
	[LinkName("QUuid_new4")]
	public static extern void* QUuid_new4(uint32 l, uint16 w1, uint16 w2, uint8 b1, uint8 b2, uint8 b3, uint8 b4, uint8 b5, uint8 b6, uint8 b7, uint8 b8);
	[LinkName("QUuid_new5")]
	public static extern void* QUuid_new5(void stringVal);
	[LinkName("QUuid_new6")]
	public static extern void* QUuid_new6(void* param1);
	[LinkName("QUuid_FromString")]
	public static extern void QUuid_FromString(void stringVal);
	[LinkName("QUuid_ToString")]
	public static extern libqt_string QUuid_ToString(void* c_this);
	[LinkName("QUuid_ToByteArray")]
	public static extern libqt_string QUuid_ToByteArray(void* c_this);
	[LinkName("QUuid_ToRfc4122")]
	public static extern libqt_string QUuid_ToRfc4122(void* c_this);
	[LinkName("QUuid_FromRfc4122")]
	public static extern void QUuid_FromRfc4122(void param1);
	[LinkName("QUuid_IsNull")]
	public static extern bool QUuid_IsNull(void* c_this);
	[LinkName("QUuid_OperatorEqual")]
	public static extern bool QUuid_OperatorEqual(void* c_this, void* orig);
	[LinkName("QUuid_OperatorNotEqual")]
	public static extern bool QUuid_OperatorNotEqual(void* c_this, void* orig);
	[LinkName("QUuid_OperatorLesser")]
	public static extern bool QUuid_OperatorLesser(void* c_this, void* other);
	[LinkName("QUuid_OperatorGreater")]
	public static extern bool QUuid_OperatorGreater(void* c_this, void* other);
	[LinkName("QUuid_CreateUuid")]
	public static extern void QUuid_CreateUuid();
	[LinkName("QUuid_CreateUuidV3")]
	public static extern void QUuid_CreateUuidV3(void* ns, libqt_string baseData);
	[LinkName("QUuid_CreateUuidV5")]
	public static extern void QUuid_CreateUuidV5(void* ns, libqt_string baseData);
	[LinkName("QUuid_CreateUuidV32")]
	public static extern void QUuid_CreateUuidV32(void* ns, libqt_string baseData);
	[LinkName("QUuid_CreateUuidV52")]
	public static extern void QUuid_CreateUuidV52(void* ns, libqt_string baseData);
	[LinkName("QUuid_Variant")]
	public static extern int64 QUuid_Variant(void* c_this);
	[LinkName("QUuid_Version")]
	public static extern int64 QUuid_Version(void* c_this);
	[LinkName("QUuid_ToString1")]
	public static extern libqt_string QUuid_ToString1(void* c_this, int64 mode);
	[LinkName("QUuid_ToByteArray1")]
	public static extern libqt_string QUuid_ToByteArray1(void* c_this, int64 mode);
	/// Delete this object from C++ memory
	[LinkName("QUuid_Delete")]
	public static extern void QUuid_Delete(void* self);
}