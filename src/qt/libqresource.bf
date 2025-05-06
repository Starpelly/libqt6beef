using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QResource__Compression
{
	NoCompression = 0,
	ZlibCompression = 1,
	ZstdCompression = 2,
}
public struct QResource
{
	[LinkName("QResource_new")]
	public static extern QResource* QResource_new();
	[LinkName("QResource_new2")]
	public static extern QResource* QResource_new2(libqt_string file);
	[LinkName("QResource_new3")]
	public static extern QResource* QResource_new3(libqt_string file, QLocale* locale);
	[LinkName("QResource_SetFileName")]
	public static extern void QResource_SetFileName(Self* c_this, libqt_string file);
	[LinkName("QResource_FileName")]
	public static extern libqt_string QResource_FileName(Self* c_this);
	[LinkName("QResource_AbsoluteFilePath")]
	public static extern libqt_string QResource_AbsoluteFilePath(Self* c_this);
	[LinkName("QResource_SetLocale")]
	public static extern void QResource_SetLocale(Self* c_this, QLocale* locale);
	[LinkName("QResource_Locale")]
	public static extern QLocale QResource_Locale(Self* c_this);
	[LinkName("QResource_IsValid")]
	public static extern bool QResource_IsValid(Self* c_this);
	[LinkName("QResource_CompressionAlgorithm")]
	public static extern int64 QResource_CompressionAlgorithm(Self* c_this);
	[LinkName("QResource_Size")]
	public static extern int64 QResource_Size(Self* c_this);
	[LinkName("QResource_Data")]
	public static extern uint8* QResource_Data(Self* c_this);
	[LinkName("QResource_UncompressedSize")]
	public static extern int64 QResource_UncompressedSize(Self* c_this);
	[LinkName("QResource_UncompressedData")]
	public static extern libqt_string QResource_UncompressedData(Self* c_this);
	[LinkName("QResource_LastModified")]
	public static extern QDateTime QResource_LastModified(Self* c_this);
	[LinkName("QResource_RegisterResource")]
	public static extern bool QResource_RegisterResource(libqt_string rccFilename);
	[LinkName("QResource_UnregisterResource")]
	public static extern bool QResource_UnregisterResource(libqt_string rccFilename);
	[LinkName("QResource_RegisterResourceWithRccData")]
	public static extern bool QResource_RegisterResourceWithRccData(uint8* rccData);
	[LinkName("QResource_UnregisterResourceWithRccData")]
	public static extern bool QResource_UnregisterResourceWithRccData(uint8* rccData);
	[LinkName("QResource_RegisterResource2")]
	public static extern bool QResource_RegisterResource2(libqt_string rccFilename, libqt_string resourceRoot);
	[LinkName("QResource_UnregisterResource2")]
	public static extern bool QResource_UnregisterResource2(libqt_string rccFilename, libqt_string resourceRoot);
	[LinkName("QResource_RegisterResource22")]
	public static extern bool QResource_RegisterResource22(uint8* rccData, libqt_string resourceRoot);
	[LinkName("QResource_UnregisterResource22")]
	public static extern bool QResource_UnregisterResource22(uint8* rccData, libqt_string resourceRoot);
}