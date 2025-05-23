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
public interface IQUuid
{
	void* NativePtr { get; }
}
public struct QUuidPtr : IQUuid, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQUuid other)
	{
		return .(CQt.QUuid_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QUuid_Delete(this.nativePtr);
	}
	
	public static void FromString(char8* stringVal)
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
	
	public static void FromRfc4122(char8* param1)
	{
		CQt.QUuid_FromRfc4122(param1);
	}
	
	public bool IsNull()
	{
		return CQt.QUuid_IsNull(this.nativePtr);
	}
	
	public bool OperatorEqual(IQUuid orig)
	{
		return CQt.QUuid_OperatorEqual(this.nativePtr, (orig == default || orig.NativePtr == default) ? default : orig.NativePtr);
	}
	
	public bool OperatorNotEqual(IQUuid orig)
	{
		return CQt.QUuid_OperatorNotEqual(this.nativePtr, (orig == default || orig.NativePtr == default) ? default : orig.NativePtr);
	}
	
	public bool OperatorLesser(IQUuid other)
	{
		return CQt.QUuid_OperatorLesser(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorGreater(IQUuid other)
	{
		return CQt.QUuid_OperatorGreater(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public static void CreateUuid()
	{
		CQt.QUuid_CreateUuid();
	}
	
	public static void CreateUuidV3(IQUuid ns, String baseData)
	{
		CQt.QUuid_CreateUuidV3((ns == default || ns.NativePtr == default) ? default : ns.NativePtr, libqt_string(baseData));
	}
	
	public static void CreateUuidV5(IQUuid ns, String baseData)
	{
		CQt.QUuid_CreateUuidV5((ns == default || ns.NativePtr == default) ? default : ns.NativePtr, libqt_string(baseData));
	}
	
	public static void CreateUuidV32(IQUuid ns, String baseData)
	{
		CQt.QUuid_CreateUuidV32((ns == default || ns.NativePtr == default) ? default : ns.NativePtr, libqt_string(baseData));
	}
	
	public static void CreateUuidV52(IQUuid ns, String baseData)
	{
		CQt.QUuid_CreateUuidV52((ns == default || ns.NativePtr == default) ? default : ns.NativePtr, libqt_string(baseData));
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
		return CQt.QUuid_ToString1(this.nativePtr, (int64)mode);
	}
	
	public libqt_string ToByteArray1(int64 mode)
	{
		return CQt.QUuid_ToByteArray1(this.nativePtr, (int64)mode);
	}
	
}
public class QUuid
{
	public QUuidPtr handle;
	
	public static implicit operator QUuidPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQUuid other)
	{
		this.handle = QUuidPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public static void FromString(char8* stringVal)
	{
		QUuidPtr.FromString(stringVal);
	}
	
	public libqt_string ToString()
	{
		return this.handle.ToString();
	}
	
	public libqt_string ToByteArray()
	{
		return this.handle.ToByteArray();
	}
	
	public libqt_string ToRfc4122()
	{
		return this.handle.ToRfc4122();
	}
	
	public static void FromRfc4122(char8* param1)
	{
		QUuidPtr.FromRfc4122(param1);
	}
	
	public bool IsNull()
	{
		return this.handle.IsNull();
	}
	
	public bool OperatorEqual(IQUuid orig)
	{
		return this.handle.OperatorEqual(orig);
	}
	
	public bool OperatorNotEqual(IQUuid orig)
	{
		return this.handle.OperatorNotEqual(orig);
	}
	
	public bool OperatorLesser(IQUuid other)
	{
		return this.handle.OperatorLesser(other);
	}
	
	public bool OperatorGreater(IQUuid other)
	{
		return this.handle.OperatorGreater(other);
	}
	
	public static void CreateUuid()
	{
		QUuidPtr.CreateUuid();
	}
	
	public static void CreateUuidV3(IQUuid ns, String baseData)
	{
		QUuidPtr.CreateUuidV3(ns, baseData);
	}
	
	public static void CreateUuidV5(IQUuid ns, String baseData)
	{
		QUuidPtr.CreateUuidV5(ns, baseData);
	}
	
	public static void CreateUuidV32(IQUuid ns, String baseData)
	{
		QUuidPtr.CreateUuidV32(ns, baseData);
	}
	
	public static void CreateUuidV52(IQUuid ns, String baseData)
	{
		QUuidPtr.CreateUuidV52(ns, baseData);
	}
	
	public int64 Variant()
	{
		return this.handle.Variant();
	}
	
	public int64 Version()
	{
		return this.handle.Version();
	}
	
	public libqt_string ToString1(int64 mode)
	{
		return this.handle.ToString1(mode);
	}
	
	public libqt_string ToByteArray1(int64 mode)
	{
		return this.handle.ToByteArray1(mode);
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
	public static extern void* QUuid_new5(char8* stringVal);
	[LinkName("QUuid_new6")]
	public static extern void* QUuid_new6(void* param1);
	[LinkName("QUuid_FromString")]
	public static extern void QUuid_FromString(char8* stringVal);
	[LinkName("QUuid_ToString")]
	public static extern libqt_string QUuid_ToString(void* c_this);
	[LinkName("QUuid_ToByteArray")]
	public static extern libqt_string QUuid_ToByteArray(void* c_this);
	[LinkName("QUuid_ToRfc4122")]
	public static extern libqt_string QUuid_ToRfc4122(void* c_this);
	[LinkName("QUuid_FromRfc4122")]
	public static extern void QUuid_FromRfc4122(char8* param1);
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