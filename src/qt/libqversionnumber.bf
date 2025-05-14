using System;
using System.Interop;
namespace Qt;

public interface IQVersionNumber
{
	void* NativePtr { get; }
}
public struct QVersionNumberPtr : IQVersionNumber, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QVersionNumber_new());
	}
	
	public void Dispose()
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
	
	public bool IsPrefixOf(IQVersionNumber other)
	{
		return CQt.QVersionNumber_IsPrefixOf(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public static int32 Compare(IQVersionNumber v1, IQVersionNumber v2)
	{
		return CQt.QVersionNumber_Compare((v1 == default || v1.NativePtr == default) ? default : v1.NativePtr, (v2 == default || v2.NativePtr == default) ? default : v2.NativePtr);
	}
	
	public static void CommonPrefix(IQVersionNumber v1, IQVersionNumber v2)
	{
		CQt.QVersionNumber_CommonPrefix((v1 == default || v1.NativePtr == default) ? default : v1.NativePtr, (v2 == default || v2.NativePtr == default) ? default : v2.NativePtr);
	}
	
	public libqt_string ToString()
	{
		return CQt.QVersionNumber_ToString(this.nativePtr);
	}
	
	public static void FromString(char8* stringVal)
	{
		CQt.QVersionNumber_FromString(stringVal);
	}
	
	public static void FromString2(char8* stringVal, int32* suffixIndex)
	{
		CQt.QVersionNumber_FromString2(stringVal, suffixIndex);
	}
	
}
public class QVersionNumber
{
	public QVersionNumberPtr handle;
	
	public static implicit operator QVersionNumberPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QVersionNumberPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public bool IsNull()
	{
		return this.handle.IsNull();
	}
	
	public bool IsNormalized()
	{
		return this.handle.IsNormalized();
	}
	
	public int32 MajorVersion()
	{
		return this.handle.MajorVersion();
	}
	
	public int32 MinorVersion()
	{
		return this.handle.MinorVersion();
	}
	
	public int32 MicroVersion()
	{
		return this.handle.MicroVersion();
	}
	
	public void Normalized()
	{
		this.handle.Normalized();
	}
	
	public int32[] Segments()
	{
		return this.handle.Segments();
	}
	
	public int32 SegmentAt(int32 index)
	{
		return this.handle.SegmentAt(index);
	}
	
	public int32 SegmentCount()
	{
		return this.handle.SegmentCount();
	}
	
	public bool IsPrefixOf(IQVersionNumber other)
	{
		return this.handle.IsPrefixOf(other);
	}
	
	public static int32 Compare(IQVersionNumber v1, IQVersionNumber v2)
	{
		return QVersionNumberPtr.Compare(v1, v2);
	}
	
	public static void CommonPrefix(IQVersionNumber v1, IQVersionNumber v2)
	{
		QVersionNumberPtr.CommonPrefix(v1, v2);
	}
	
	public libqt_string ToString()
	{
		return this.handle.ToString();
	}
	
	public static void FromString(char8* stringVal)
	{
		QVersionNumberPtr.FromString(stringVal);
	}
	
	public static void FromString2(char8* stringVal, int32* suffixIndex)
	{
		QVersionNumberPtr.FromString2(stringVal, suffixIndex);
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
	public static extern void QVersionNumber_FromString(char8* stringVal);
	[LinkName("QVersionNumber_FromString2")]
	public static extern void QVersionNumber_FromString2(char8* stringVal, int32* suffixIndex);
	/// Delete this object from C++ memory
	[LinkName("QVersionNumber_Delete")]
	public static extern void QVersionNumber_Delete(void* self);
}
public interface IQTypeRevision
{
	void* NativePtr { get; }
}
public struct QTypeRevisionPtr : IQTypeRevision, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQTypeRevision other)
	{
		return .(CQt.QTypeRevision_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
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
public class QTypeRevision
{
	public QTypeRevisionPtr handle;
	
	public static implicit operator QTypeRevisionPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQTypeRevision other)
	{
		this.handle = QTypeRevisionPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public static void Zero()
	{
		QTypeRevisionPtr.Zero();
	}
	
	public bool HasMajorVersion()
	{
		return this.handle.HasMajorVersion();
	}
	
	public uint8 MajorVersion()
	{
		return this.handle.MajorVersion();
	}
	
	public bool HasMinorVersion()
	{
		return this.handle.HasMinorVersion();
	}
	
	public uint8 MinorVersion()
	{
		return this.handle.MinorVersion();
	}
	
	public bool IsValid()
	{
		return this.handle.IsValid();
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