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
	public static extern void* QResource_new();
	[LinkName("QResource_new2")]
	public static extern void* QResource_new2(char8[] file);
	[LinkName("QResource_new3")]
	public static extern void* QResource_new3(char8[] file, QLocale locale);
	[LinkName("QResource_SetFileName")]
	public static extern void QResource_SetFileName(void* c_this, char8[] file);
	[LinkName("QResource_FileName")]
	public static extern char8[] QResource_FileName(void* c_this);
	[LinkName("QResource_AbsoluteFilePath")]
	public static extern char8[] QResource_AbsoluteFilePath(void* c_this);
	[LinkName("QResource_SetLocale")]
	public static extern void QResource_SetLocale(void* c_this, QLocale locale);
	[LinkName("QResource_Locale")]
	public static extern QLocale QResource_Locale(void* c_this);
	[LinkName("QResource_IsValid")]
	public static extern bool QResource_IsValid(void* c_this);
	[LinkName("QResource_CompressionAlgorithm")]
	public static extern int64 QResource_CompressionAlgorithm(void* c_this);
	[LinkName("QResource_Size")]
	public static extern int64 QResource_Size(void* c_this);
	[LinkName("QResource_Data")]
	public static extern uint8 QResource_Data(void* c_this);
	[LinkName("QResource_UncompressedSize")]
	public static extern int64 QResource_UncompressedSize(void* c_this);
	[LinkName("QResource_UncompressedData")]
	public static extern uint8[] QResource_UncompressedData(void* c_this);
	[LinkName("QResource_LastModified")]
	public static extern QDateTime QResource_LastModified(void* c_this);
	[LinkName("QResource_RegisterResource")]
	public static extern bool QResource_RegisterResource(char8[] rccFilename);
	[LinkName("QResource_UnregisterResource")]
	public static extern bool QResource_UnregisterResource(char8[] rccFilename);
	[LinkName("QResource_RegisterResourceWithRccData")]
	public static extern bool QResource_RegisterResourceWithRccData(uint8 rccData);
	[LinkName("QResource_UnregisterResourceWithRccData")]
	public static extern bool QResource_UnregisterResourceWithRccData(uint8 rccData);
	[LinkName("QResource_RegisterResource2")]
	public static extern bool QResource_RegisterResource2(char8[] rccFilename, char8[] resourceRoot);
	[LinkName("QResource_UnregisterResource2")]
	public static extern bool QResource_UnregisterResource2(char8[] rccFilename, char8[] resourceRoot);
	[LinkName("QResource_RegisterResource22")]
	public static extern bool QResource_RegisterResource22(uint8 rccData, char8[] resourceRoot);
	[LinkName("QResource_UnregisterResource22")]
	public static extern bool QResource_UnregisterResource22(uint8 rccData, char8[] resourceRoot);
}