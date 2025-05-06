using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QImageCapture__Error
{
	NoError = 0,
	NotReadyError = 1,
	ResourceError = 2,
	OutOfSpaceError = 3,
	NotSupportedFeatureError = 4,
	FormatError = 5,
}
[AllowDuplicates]
public enum QImageCapture__Quality
{
	VeryLowQuality = 0,
	LowQuality = 1,
	NormalQuality = 2,
	HighQuality = 3,
	VeryHighQuality = 4,
}
[AllowDuplicates]
public enum QImageCapture__FileFormat
{
	UnspecifiedFormat = 0,
	JPEG = 1,
	PNG = 2,
	WebP = 3,
	Tiff = 4,
	LastFileFormat = 4,
}
public struct QImageCapture
{
	[LinkName("QImageCapture_new")]
	public static extern void* QImageCapture_new();
	[LinkName("QImageCapture_new2")]
	public static extern void* QImageCapture_new2(QObject parent);
	[LinkName("QImageCapture_MetaObject")]
	public static extern QMetaObject QImageCapture_MetaObject(void* c_this);
	[LinkName("QImageCapture_Metacast")]
	public static extern void QImageCapture_Metacast(void* c_this, char8[] param1);
	[LinkName("QImageCapture_Metacall")]
	public static extern int32 QImageCapture_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QImageCapture_Tr")]
	public static extern char8[] QImageCapture_Tr(char8[] s);
	[LinkName("QImageCapture_IsAvailable")]
	public static extern bool QImageCapture_IsAvailable(void* c_this);
	[LinkName("QImageCapture_CaptureSession")]
	public static extern QMediaCaptureSession QImageCapture_CaptureSession(void* c_this);
	[LinkName("QImageCapture_Error")]
	public static extern int64 QImageCapture_Error(void* c_this);
	[LinkName("QImageCapture_ErrorString")]
	public static extern char8[] QImageCapture_ErrorString(void* c_this);
	[LinkName("QImageCapture_IsReadyForCapture")]
	public static extern bool QImageCapture_IsReadyForCapture(void* c_this);
	[LinkName("QImageCapture_FileFormat")]
	public static extern int64 QImageCapture_FileFormat(void* c_this);
	[LinkName("QImageCapture_SetFileFormat")]
	public static extern void QImageCapture_SetFileFormat(void* c_this, int64 format);
	[LinkName("QImageCapture_SupportedFormats")]
	public static extern int64[] QImageCapture_SupportedFormats();
	[LinkName("QImageCapture_FileFormatName")]
	public static extern char8[] QImageCapture_FileFormatName(int64 c);
	[LinkName("QImageCapture_FileFormatDescription")]
	public static extern char8[] QImageCapture_FileFormatDescription(int64 c);
	[LinkName("QImageCapture_Resolution")]
	public static extern QSize QImageCapture_Resolution(void* c_this);
	[LinkName("QImageCapture_SetResolution")]
	public static extern void QImageCapture_SetResolution(void* c_this, QSize resolution);
	[LinkName("QImageCapture_SetResolution2")]
	public static extern void QImageCapture_SetResolution2(void* c_this, int32 width, int32 height);
	[LinkName("QImageCapture_Quality")]
	public static extern int64 QImageCapture_Quality(void* c_this);
	[LinkName("QImageCapture_SetQuality")]
	public static extern void QImageCapture_SetQuality(void* c_this, int64 quality);
	[LinkName("QImageCapture_MetaData")]
	public static extern QMediaMetaData QImageCapture_MetaData(void* c_this);
	[LinkName("QImageCapture_SetMetaData")]
	public static extern void QImageCapture_SetMetaData(void* c_this, QMediaMetaData metaData);
	[LinkName("QImageCapture_AddMetaData")]
	public static extern void QImageCapture_AddMetaData(void* c_this, QMediaMetaData metaData);
	[LinkName("QImageCapture_CaptureToFile")]
	public static extern int32 QImageCapture_CaptureToFile(void* c_this);
	[LinkName("QImageCapture_Capture")]
	public static extern int32 QImageCapture_Capture(void* c_this);
	[LinkName("QImageCapture_ErrorChanged")]
	public static extern void QImageCapture_ErrorChanged(void* c_this);
	[LinkName("QImageCapture_ErrorOccurred")]
	public static extern void QImageCapture_ErrorOccurred(void* c_this, int32 id, int64 errorVal, char8[] errorString);
	[LinkName("QImageCapture_ReadyForCaptureChanged")]
	public static extern void QImageCapture_ReadyForCaptureChanged(void* c_this, bool ready);
	[LinkName("QImageCapture_MetaDataChanged")]
	public static extern void QImageCapture_MetaDataChanged(void* c_this);
	[LinkName("QImageCapture_FileFormatChanged")]
	public static extern void QImageCapture_FileFormatChanged(void* c_this);
	[LinkName("QImageCapture_QualityChanged")]
	public static extern void QImageCapture_QualityChanged(void* c_this);
	[LinkName("QImageCapture_ResolutionChanged")]
	public static extern void QImageCapture_ResolutionChanged(void* c_this);
	[LinkName("QImageCapture_ImageExposed")]
	public static extern void QImageCapture_ImageExposed(void* c_this, int32 id);
	[LinkName("QImageCapture_ImageCaptured")]
	public static extern void QImageCapture_ImageCaptured(void* c_this, int32 id, QImage preview);
	[LinkName("QImageCapture_ImageMetadataAvailable")]
	public static extern void QImageCapture_ImageMetadataAvailable(void* c_this, int32 id, QMediaMetaData metaData);
	[LinkName("QImageCapture_ImageAvailable")]
	public static extern void QImageCapture_ImageAvailable(void* c_this, int32 id, QVideoFrame frame);
	[LinkName("QImageCapture_ImageSaved")]
	public static extern void QImageCapture_ImageSaved(void* c_this, int32 id, char8[] fileName);
	[LinkName("QImageCapture_Tr2")]
	public static extern char8[] QImageCapture_Tr2(char8[] s, char8[] c);
	[LinkName("QImageCapture_Tr3")]
	public static extern char8[] QImageCapture_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QImageCapture_CaptureToFile1")]
	public static extern int32 QImageCapture_CaptureToFile1(void* c_this, char8[] location);
}