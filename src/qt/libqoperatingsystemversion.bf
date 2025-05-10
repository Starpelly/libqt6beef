using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QOperatingSystemVersionBase__OSType
{
	Unknown = 0,
	Windows = 1,
	MacOS = 2,
	IOS = 3,
	TvOS = 4,
	WatchOS = 5,
	Android = 6,
}
[AllowDuplicates]
public enum QOperatingSystemVersion__OSType
{
	Unknown = 0,
	Windows = 1,
	MacOS = 2,
	IOS = 3,
	TvOS = 4,
	WatchOS = 5,
	Android = 6,
}
public interface IQOperatingSystemVersionBase
{
	void* NativePtr { get; }
}
public class QOperatingSystemVersionBase : IQOperatingSystemVersionBase
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(int64 osType, int32 vmajor)
	{
		this.nativePtr = CQt.QOperatingSystemVersionBase_new(osType, vmajor);
	}
	
	public ~this()
	{
		CQt.QOperatingSystemVersionBase_Delete(this.nativePtr);
	}
	
	public static void Current()
	{
		CQt.QOperatingSystemVersionBase_Current();
	}
	
	public static libqt_string Name(IQOperatingSystemVersionBase osversion)
	{
		return CQt.QOperatingSystemVersionBase_Name((osversion == default) ? default : (void)osversion.NativePtr);
	}
	
	public static int64 CurrentType()
	{
		return CQt.QOperatingSystemVersionBase_CurrentType();
	}
	
	public void Version()
	{
		CQt.QOperatingSystemVersionBase_Version(this.nativePtr);
	}
	
	public int32 MajorVersion()
	{
		return CQt.QOperatingSystemVersionBase_MajorVersion(this.nativePtr);
	}
	
	public int32 MinorVersion()
	{
		return CQt.QOperatingSystemVersionBase_MinorVersion(this.nativePtr);
	}
	
	public int32 MicroVersion()
	{
		return CQt.QOperatingSystemVersionBase_MicroVersion(this.nativePtr);
	}
	
	public int32 SegmentCount()
	{
		return CQt.QOperatingSystemVersionBase_SegmentCount(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QOperatingSystemVersionBase_Type(this.nativePtr);
	}
	
	public libqt_string Name2()
	{
		return CQt.QOperatingSystemVersionBase_Name2(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QOperatingSystemVersionBase_new")]
	public static extern void* QOperatingSystemVersionBase_new(int64 osType, int32 vmajor);
	[LinkName("QOperatingSystemVersionBase_new2")]
	public static extern void* QOperatingSystemVersionBase_new2(void* param1);
	[LinkName("QOperatingSystemVersionBase_new3")]
	public static extern void* QOperatingSystemVersionBase_new3(int64 osType, int32 vmajor, int32 vminor);
	[LinkName("QOperatingSystemVersionBase_new4")]
	public static extern void* QOperatingSystemVersionBase_new4(int64 osType, int32 vmajor, int32 vminor, int32 vmicro);
	[LinkName("QOperatingSystemVersionBase_Current")]
	public static extern void QOperatingSystemVersionBase_Current();
	[LinkName("QOperatingSystemVersionBase_Name")]
	public static extern libqt_string QOperatingSystemVersionBase_Name(void osversion);
	[LinkName("QOperatingSystemVersionBase_CurrentType")]
	public static extern int64 QOperatingSystemVersionBase_CurrentType();
	[LinkName("QOperatingSystemVersionBase_Version")]
	public static extern void QOperatingSystemVersionBase_Version(void* c_this);
	[LinkName("QOperatingSystemVersionBase_MajorVersion")]
	public static extern int32 QOperatingSystemVersionBase_MajorVersion(void* c_this);
	[LinkName("QOperatingSystemVersionBase_MinorVersion")]
	public static extern int32 QOperatingSystemVersionBase_MinorVersion(void* c_this);
	[LinkName("QOperatingSystemVersionBase_MicroVersion")]
	public static extern int32 QOperatingSystemVersionBase_MicroVersion(void* c_this);
	[LinkName("QOperatingSystemVersionBase_SegmentCount")]
	public static extern int32 QOperatingSystemVersionBase_SegmentCount(void* c_this);
	[LinkName("QOperatingSystemVersionBase_Type")]
	public static extern int64 QOperatingSystemVersionBase_Type(void* c_this);
	[LinkName("QOperatingSystemVersionBase_Name2")]
	public static extern libqt_string QOperatingSystemVersionBase_Name2(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QOperatingSystemVersionBase_Delete")]
	public static extern void QOperatingSystemVersionBase_Delete(void* self);
}
public interface IQOperatingSystemVersion
{
	void* NativePtr { get; }
}
public class QOperatingSystemVersion : IQOperatingSystemVersion, IQOperatingSystemVersionBase
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQOperatingSystemVersionBase osversion)
	{
		this.nativePtr = CQt.QOperatingSystemVersion_new((osversion == default) ? default : (void*)osversion.NativePtr);
	}
	
	public ~this()
	{
		CQt.QOperatingSystemVersion_Delete(this.nativePtr);
	}
	
	public static void Current()
	{
		CQt.QOperatingSystemVersion_Current();
	}
	
	public static int64 CurrentType()
	{
		return CQt.QOperatingSystemVersion_CurrentType();
	}
	
	public void Version()
	{
		CQt.QOperatingSystemVersion_Version(this.nativePtr);
	}
	
	public int32 MajorVersion()
	{
		return CQt.QOperatingSystemVersion_MajorVersion(this.nativePtr);
	}
	
	public int32 MinorVersion()
	{
		return CQt.QOperatingSystemVersion_MinorVersion(this.nativePtr);
	}
	
	public int32 MicroVersion()
	{
		return CQt.QOperatingSystemVersion_MicroVersion(this.nativePtr);
	}
	
	public int32 SegmentCount()
	{
		return CQt.QOperatingSystemVersion_SegmentCount(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QOperatingSystemVersion_Type(this.nativePtr);
	}
	
	public libqt_string Name()
	{
		return CQt.QOperatingSystemVersion_Name(this.nativePtr);
	}
	
	public libqt_string Name2()
	{
		return CQt.QOperatingSystemVersionBase_Name2(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QOperatingSystemVersion_new")]
	public static extern void* QOperatingSystemVersion_new(void* osversion);
	[LinkName("QOperatingSystemVersion_new2")]
	public static extern void* QOperatingSystemVersion_new2(int64 osType, int32 vmajor);
	[LinkName("QOperatingSystemVersion_new3")]
	public static extern void* QOperatingSystemVersion_new3(int64 osType, int32 vmajor, int32 vminor);
	[LinkName("QOperatingSystemVersion_new4")]
	public static extern void* QOperatingSystemVersion_new4(int64 osType, int32 vmajor, int32 vminor, int32 vmicro);
	[LinkName("QOperatingSystemVersion_Current")]
	public static extern void QOperatingSystemVersion_Current();
	[LinkName("QOperatingSystemVersion_CurrentType")]
	public static extern int64 QOperatingSystemVersion_CurrentType();
	[LinkName("QOperatingSystemVersion_Version")]
	public static extern void QOperatingSystemVersion_Version(void* c_this);
	[LinkName("QOperatingSystemVersion_MajorVersion")]
	public static extern int32 QOperatingSystemVersion_MajorVersion(void* c_this);
	[LinkName("QOperatingSystemVersion_MinorVersion")]
	public static extern int32 QOperatingSystemVersion_MinorVersion(void* c_this);
	[LinkName("QOperatingSystemVersion_MicroVersion")]
	public static extern int32 QOperatingSystemVersion_MicroVersion(void* c_this);
	[LinkName("QOperatingSystemVersion_SegmentCount")]
	public static extern int32 QOperatingSystemVersion_SegmentCount(void* c_this);
	[LinkName("QOperatingSystemVersion_Type")]
	public static extern int64 QOperatingSystemVersion_Type(void* c_this);
	[LinkName("QOperatingSystemVersion_Name")]
	public static extern libqt_string QOperatingSystemVersion_Name(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QOperatingSystemVersion_Delete")]
	public static extern void QOperatingSystemVersion_Delete(void* self);
}