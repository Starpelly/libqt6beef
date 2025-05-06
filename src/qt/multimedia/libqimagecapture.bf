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
public struct QImageCapture : QObject
{
	[LinkName("QImageCapture_new")]
	public static extern QImageCapture* QImageCapture_new();
	[LinkName("QImageCapture_new2")]
	public static extern QImageCapture* QImageCapture_new2(QObject* parent);
	[LinkName("QImageCapture_MetaObject")]
	public static extern QMetaObject* QImageCapture_MetaObject(Self* c_this);
	[LinkName("QImageCapture_Metacast")]
	public static extern void* QImageCapture_Metacast(Self* c_this, char8[] param1);
	[LinkName("QImageCapture_Metacall")]
	public static extern int32 QImageCapture_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QImageCapture_Tr")]
	public static extern libqt_string QImageCapture_Tr(char8[] s);
	[LinkName("QImageCapture_IsAvailable")]
	public static extern bool QImageCapture_IsAvailable(Self* c_this);
	[LinkName("QImageCapture_CaptureSession")]
	public static extern QMediaCaptureSession* QImageCapture_CaptureSession(Self* c_this);
	[LinkName("QImageCapture_Error")]
	public static extern int64 QImageCapture_Error(Self* c_this);
	[LinkName("QImageCapture_ErrorString")]
	public static extern libqt_string QImageCapture_ErrorString(Self* c_this);
	[LinkName("QImageCapture_IsReadyForCapture")]
	public static extern bool QImageCapture_IsReadyForCapture(Self* c_this);
	[LinkName("QImageCapture_FileFormat")]
	public static extern int64 QImageCapture_FileFormat(Self* c_this);
	[LinkName("QImageCapture_SetFileFormat")]
	public static extern void QImageCapture_SetFileFormat(Self* c_this, int64 format);
	[LinkName("QImageCapture_SupportedFormats")]
	public static extern int64[] QImageCapture_SupportedFormats();
	[LinkName("QImageCapture_FileFormatName")]
	public static extern libqt_string QImageCapture_FileFormatName(int64 c);
	[LinkName("QImageCapture_FileFormatDescription")]
	public static extern libqt_string QImageCapture_FileFormatDescription(int64 c);
	[LinkName("QImageCapture_Resolution")]
	public static extern QSize QImageCapture_Resolution(Self* c_this);
	[LinkName("QImageCapture_SetResolution")]
	public static extern void QImageCapture_SetResolution(Self* c_this, QSize* resolution);
	[LinkName("QImageCapture_SetResolution2")]
	public static extern void QImageCapture_SetResolution2(Self* c_this, int32 width, int32 height);
	[LinkName("QImageCapture_Quality")]
	public static extern int64 QImageCapture_Quality(Self* c_this);
	[LinkName("QImageCapture_SetQuality")]
	public static extern void QImageCapture_SetQuality(Self* c_this, int64 quality);
	[LinkName("QImageCapture_MetaData")]
	public static extern QMediaMetaData QImageCapture_MetaData(Self* c_this);
	[LinkName("QImageCapture_SetMetaData")]
	public static extern void QImageCapture_SetMetaData(Self* c_this, QMediaMetaData* metaData);
	[LinkName("QImageCapture_AddMetaData")]
	public static extern void QImageCapture_AddMetaData(Self* c_this, QMediaMetaData* metaData);
	[LinkName("QImageCapture_CaptureToFile")]
	public static extern int32 QImageCapture_CaptureToFile(Self* c_this);
	[LinkName("QImageCapture_Capture")]
	public static extern int32 QImageCapture_Capture(Self* c_this);
	[LinkName("QImageCapture_ErrorChanged")]
	public static extern void QImageCapture_ErrorChanged(Self* c_this);
	[LinkName("QImageCapture_ErrorOccurred")]
	public static extern void QImageCapture_ErrorOccurred(Self* c_this, int32 id, int64 errorVal, libqt_string errorString);
	[LinkName("QImageCapture_ReadyForCaptureChanged")]
	public static extern void QImageCapture_ReadyForCaptureChanged(Self* c_this, bool ready);
	[LinkName("QImageCapture_MetaDataChanged")]
	public static extern void QImageCapture_MetaDataChanged(Self* c_this);
	[LinkName("QImageCapture_FileFormatChanged")]
	public static extern void QImageCapture_FileFormatChanged(Self* c_this);
	[LinkName("QImageCapture_QualityChanged")]
	public static extern void QImageCapture_QualityChanged(Self* c_this);
	[LinkName("QImageCapture_ResolutionChanged")]
	public static extern void QImageCapture_ResolutionChanged(Self* c_this);
	[LinkName("QImageCapture_ImageExposed")]
	public static extern void QImageCapture_ImageExposed(Self* c_this, int32 id);
	[LinkName("QImageCapture_ImageCaptured")]
	public static extern void QImageCapture_ImageCaptured(Self* c_this, int32 id, QImage* preview);
	[LinkName("QImageCapture_ImageMetadataAvailable")]
	public static extern void QImageCapture_ImageMetadataAvailable(Self* c_this, int32 id, QMediaMetaData* metaData);
	[LinkName("QImageCapture_ImageAvailable")]
	public static extern void QImageCapture_ImageAvailable(Self* c_this, int32 id, QVideoFrame* frame);
	[LinkName("QImageCapture_ImageSaved")]
	public static extern void QImageCapture_ImageSaved(Self* c_this, int32 id, libqt_string fileName);
	[LinkName("QImageCapture_Tr2")]
	public static extern libqt_string QImageCapture_Tr2(char8[] s, char8[] c);
	[LinkName("QImageCapture_Tr3")]
	public static extern libqt_string QImageCapture_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QImageCapture_CaptureToFile1")]
	public static extern int32 QImageCapture_CaptureToFile1(Self* c_this, libqt_string location);
}