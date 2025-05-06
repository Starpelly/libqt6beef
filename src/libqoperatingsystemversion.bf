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
public struct QOperatingSystemVersionBase
{
	[LinkName("QOperatingSystemVersionBase_new")]
	public static extern void* QOperatingSystemVersionBase_new(int64 osType, int32 vmajor);
	[LinkName("QOperatingSystemVersionBase_new2")]
	public static extern void* QOperatingSystemVersionBase_new2(QOperatingSystemVersionBase param1);
	[LinkName("QOperatingSystemVersionBase_new3")]
	public static extern void* QOperatingSystemVersionBase_new3(int64 osType, int32 vmajor, int32 vminor);
	[LinkName("QOperatingSystemVersionBase_new4")]
	public static extern void* QOperatingSystemVersionBase_new4(int64 osType, int32 vmajor, int32 vminor, int32 vmicro);
	[LinkName("QOperatingSystemVersionBase_Current")]
	public static extern QOperatingSystemVersionBase QOperatingSystemVersionBase_Current();
	[LinkName("QOperatingSystemVersionBase_Name")]
	public static extern char8[] QOperatingSystemVersionBase_Name(QOperatingSystemVersionBase osversion);
	[LinkName("QOperatingSystemVersionBase_CurrentType")]
	public static extern int64 QOperatingSystemVersionBase_CurrentType();
	[LinkName("QOperatingSystemVersionBase_Version")]
	public static extern QVersionNumber QOperatingSystemVersionBase_Version(void* c_this);
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
	public static extern char8[] QOperatingSystemVersionBase_Name2(void* c_this);
}
public struct QOperatingSystemVersion
{
	[LinkName("QOperatingSystemVersion_new")]
	public static extern void* QOperatingSystemVersion_new(QOperatingSystemVersionBase osversion);
	[LinkName("QOperatingSystemVersion_new2")]
	public static extern void* QOperatingSystemVersion_new2(int64 osType, int32 vmajor);
	[LinkName("QOperatingSystemVersion_new3")]
	public static extern void* QOperatingSystemVersion_new3(int64 osType, int32 vmajor, int32 vminor);
	[LinkName("QOperatingSystemVersion_new4")]
	public static extern void* QOperatingSystemVersion_new4(int64 osType, int32 vmajor, int32 vminor, int32 vmicro);
	[LinkName("QOperatingSystemVersion_Current")]
	public static extern QOperatingSystemVersion QOperatingSystemVersion_Current();
	[LinkName("QOperatingSystemVersion_CurrentType")]
	public static extern int64 QOperatingSystemVersion_CurrentType();
	[LinkName("QOperatingSystemVersion_Version")]
	public static extern QVersionNumber QOperatingSystemVersion_Version(void* c_this);
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
	public static extern char8[] QOperatingSystemVersion_Name(void* c_this);
}