using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QImageReader__ImageReaderError
{
	UnknownError = 0,
	FileNotFoundError = 1,
	DeviceError = 2,
	UnsupportedFormatError = 3,
	InvalidDataError = 4,
}
public struct QImageReader
{
	[LinkName("QImageReader_new")]
	public static extern QImageReader* QImageReader_new();
	[LinkName("QImageReader_new2")]
	public static extern QImageReader* QImageReader_new2(QIODevice* device);
	[LinkName("QImageReader_new3")]
	public static extern QImageReader* QImageReader_new3(libqt_string fileName);
	[LinkName("QImageReader_new4")]
	public static extern QImageReader* QImageReader_new4(QIODevice* device, libqt_string format);
	[LinkName("QImageReader_new5")]
	public static extern QImageReader* QImageReader_new5(libqt_string fileName, libqt_string format);
	[LinkName("QImageReader_Tr")]
	public static extern libqt_string QImageReader_Tr(char8[] sourceText);
	[LinkName("QImageReader_SetFormat")]
	public static extern void QImageReader_SetFormat(Self* c_this, libqt_string format);
	[LinkName("QImageReader_Format")]
	public static extern libqt_string QImageReader_Format(Self* c_this);
	[LinkName("QImageReader_SetAutoDetectImageFormat")]
	public static extern void QImageReader_SetAutoDetectImageFormat(Self* c_this, bool enabled);
	[LinkName("QImageReader_AutoDetectImageFormat")]
	public static extern bool QImageReader_AutoDetectImageFormat(Self* c_this);
	[LinkName("QImageReader_SetDecideFormatFromContent")]
	public static extern void QImageReader_SetDecideFormatFromContent(Self* c_this, bool ignored);
	[LinkName("QImageReader_DecideFormatFromContent")]
	public static extern bool QImageReader_DecideFormatFromContent(Self* c_this);
	[LinkName("QImageReader_SetDevice")]
	public static extern void QImageReader_SetDevice(Self* c_this, QIODevice* device);
	[LinkName("QImageReader_Device")]
	public static extern QIODevice* QImageReader_Device(Self* c_this);
	[LinkName("QImageReader_SetFileName")]
	public static extern void QImageReader_SetFileName(Self* c_this, libqt_string fileName);
	[LinkName("QImageReader_FileName")]
	public static extern libqt_string QImageReader_FileName(Self* c_this);
	[LinkName("QImageReader_Size")]
	public static extern QSize QImageReader_Size(Self* c_this);
	[LinkName("QImageReader_ImageFormat")]
	public static extern int64 QImageReader_ImageFormat(Self* c_this);
	[LinkName("QImageReader_TextKeys")]
	public static extern libqt_string[] QImageReader_TextKeys(Self* c_this);
	[LinkName("QImageReader_Text")]
	public static extern libqt_string QImageReader_Text(Self* c_this, libqt_string key);
	[LinkName("QImageReader_SetClipRect")]
	public static extern void QImageReader_SetClipRect(Self* c_this, QRect* rect);
	[LinkName("QImageReader_ClipRect")]
	public static extern QRect QImageReader_ClipRect(Self* c_this);
	[LinkName("QImageReader_SetScaledSize")]
	public static extern void QImageReader_SetScaledSize(Self* c_this, QSize* size);
	[LinkName("QImageReader_ScaledSize")]
	public static extern QSize QImageReader_ScaledSize(Self* c_this);
	[LinkName("QImageReader_SetQuality")]
	public static extern void QImageReader_SetQuality(Self* c_this, int32 quality);
	[LinkName("QImageReader_Quality")]
	public static extern int32 QImageReader_Quality(Self* c_this);
	[LinkName("QImageReader_SetScaledClipRect")]
	public static extern void QImageReader_SetScaledClipRect(Self* c_this, QRect* rect);
	[LinkName("QImageReader_ScaledClipRect")]
	public static extern QRect QImageReader_ScaledClipRect(Self* c_this);
	[LinkName("QImageReader_SetBackgroundColor")]
	public static extern void QImageReader_SetBackgroundColor(Self* c_this, QColor* color);
	[LinkName("QImageReader_BackgroundColor")]
	public static extern QColor QImageReader_BackgroundColor(Self* c_this);
	[LinkName("QImageReader_SupportsAnimation")]
	public static extern bool QImageReader_SupportsAnimation(Self* c_this);
	[LinkName("QImageReader_Transformation")]
	public static extern int64 QImageReader_Transformation(Self* c_this);
	[LinkName("QImageReader_SetAutoTransform")]
	public static extern void QImageReader_SetAutoTransform(Self* c_this, bool enabled);
	[LinkName("QImageReader_AutoTransform")]
	public static extern bool QImageReader_AutoTransform(Self* c_this);
	[LinkName("QImageReader_SubType")]
	public static extern libqt_string QImageReader_SubType(Self* c_this);
	[LinkName("QImageReader_SupportedSubTypes")]
	public static extern libqt_string[] QImageReader_SupportedSubTypes(Self* c_this);
	[LinkName("QImageReader_CanRead")]
	public static extern bool QImageReader_CanRead(Self* c_this);
	[LinkName("QImageReader_Read")]
	public static extern QImage QImageReader_Read(Self* c_this);
	[LinkName("QImageReader_ReadWithImage")]
	public static extern bool QImageReader_ReadWithImage(Self* c_this, QImage* image);
	[LinkName("QImageReader_JumpToNextImage")]
	public static extern bool QImageReader_JumpToNextImage(Self* c_this);
	[LinkName("QImageReader_JumpToImage")]
	public static extern bool QImageReader_JumpToImage(Self* c_this, int32 imageNumber);
	[LinkName("QImageReader_LoopCount")]
	public static extern int32 QImageReader_LoopCount(Self* c_this);
	[LinkName("QImageReader_ImageCount")]
	public static extern int32 QImageReader_ImageCount(Self* c_this);
	[LinkName("QImageReader_NextImageDelay")]
	public static extern int32 QImageReader_NextImageDelay(Self* c_this);
	[LinkName("QImageReader_CurrentImageNumber")]
	public static extern int32 QImageReader_CurrentImageNumber(Self* c_this);
	[LinkName("QImageReader_CurrentImageRect")]
	public static extern QRect QImageReader_CurrentImageRect(Self* c_this);
	[LinkName("QImageReader_Error")]
	public static extern int64 QImageReader_Error(Self* c_this);
	[LinkName("QImageReader_ErrorString")]
	public static extern libqt_string QImageReader_ErrorString(Self* c_this);
	[LinkName("QImageReader_SupportsOption")]
	public static extern bool QImageReader_SupportsOption(Self* c_this, int64 option);
	[LinkName("QImageReader_ImageFormatWithFileName")]
	public static extern libqt_string QImageReader_ImageFormatWithFileName(libqt_string fileName);
	[LinkName("QImageReader_ImageFormatWithDevice")]
	public static extern libqt_string QImageReader_ImageFormatWithDevice(QIODevice* device);
	[LinkName("QImageReader_SupportedImageFormats")]
	public static extern libqt_string[] QImageReader_SupportedImageFormats();
	[LinkName("QImageReader_SupportedMimeTypes")]
	public static extern libqt_string[] QImageReader_SupportedMimeTypes();
	[LinkName("QImageReader_ImageFormatsForMimeType")]
	public static extern libqt_string[] QImageReader_ImageFormatsForMimeType(libqt_string mimeType);
	[LinkName("QImageReader_AllocationLimit")]
	public static extern int32 QImageReader_AllocationLimit();
	[LinkName("QImageReader_SetAllocationLimit")]
	public static extern void QImageReader_SetAllocationLimit(int32 mbLimit);
	[LinkName("QImageReader_Tr2")]
	public static extern libqt_string QImageReader_Tr2(char8[] sourceText, char8[] disambiguation);
	[LinkName("QImageReader_Tr3")]
	public static extern libqt_string QImageReader_Tr3(char8[] sourceText, char8[] disambiguation, int32 n);
}