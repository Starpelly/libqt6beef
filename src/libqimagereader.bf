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
	public static extern void* QImageReader_new();
	[LinkName("QImageReader_new2")]
	public static extern void* QImageReader_new2(QIODevice device);
	[LinkName("QImageReader_new3")]
	public static extern void* QImageReader_new3(char8[] fileName);
	[LinkName("QImageReader_new4")]
	public static extern void* QImageReader_new4(QIODevice device, uint8[] format);
	[LinkName("QImageReader_new5")]
	public static extern void* QImageReader_new5(char8[] fileName, uint8[] format);
	[LinkName("QImageReader_Tr")]
	public static extern char8[] QImageReader_Tr(char8[] sourceText);
	[LinkName("QImageReader_SetFormat")]
	public static extern void QImageReader_SetFormat(void* c_this, uint8[] format);
	[LinkName("QImageReader_Format")]
	public static extern uint8[] QImageReader_Format(void* c_this);
	[LinkName("QImageReader_SetAutoDetectImageFormat")]
	public static extern void QImageReader_SetAutoDetectImageFormat(void* c_this, bool enabled);
	[LinkName("QImageReader_AutoDetectImageFormat")]
	public static extern bool QImageReader_AutoDetectImageFormat(void* c_this);
	[LinkName("QImageReader_SetDecideFormatFromContent")]
	public static extern void QImageReader_SetDecideFormatFromContent(void* c_this, bool ignored);
	[LinkName("QImageReader_DecideFormatFromContent")]
	public static extern bool QImageReader_DecideFormatFromContent(void* c_this);
	[LinkName("QImageReader_SetDevice")]
	public static extern void QImageReader_SetDevice(void* c_this, QIODevice device);
	[LinkName("QImageReader_Device")]
	public static extern QIODevice QImageReader_Device(void* c_this);
	[LinkName("QImageReader_SetFileName")]
	public static extern void QImageReader_SetFileName(void* c_this, char8[] fileName);
	[LinkName("QImageReader_FileName")]
	public static extern char8[] QImageReader_FileName(void* c_this);
	[LinkName("QImageReader_Size")]
	public static extern QSize QImageReader_Size(void* c_this);
	[LinkName("QImageReader_ImageFormat")]
	public static extern int64 QImageReader_ImageFormat(void* c_this);
	[LinkName("QImageReader_TextKeys")]
	public static extern char8[][] QImageReader_TextKeys(void* c_this);
	[LinkName("QImageReader_Text")]
	public static extern char8[] QImageReader_Text(void* c_this, char8[] key);
	[LinkName("QImageReader_SetClipRect")]
	public static extern void QImageReader_SetClipRect(void* c_this, QRect rect);
	[LinkName("QImageReader_ClipRect")]
	public static extern QRect QImageReader_ClipRect(void* c_this);
	[LinkName("QImageReader_SetScaledSize")]
	public static extern void QImageReader_SetScaledSize(void* c_this, QSize size);
	[LinkName("QImageReader_ScaledSize")]
	public static extern QSize QImageReader_ScaledSize(void* c_this);
	[LinkName("QImageReader_SetQuality")]
	public static extern void QImageReader_SetQuality(void* c_this, int32 quality);
	[LinkName("QImageReader_Quality")]
	public static extern int32 QImageReader_Quality(void* c_this);
	[LinkName("QImageReader_SetScaledClipRect")]
	public static extern void QImageReader_SetScaledClipRect(void* c_this, QRect rect);
	[LinkName("QImageReader_ScaledClipRect")]
	public static extern QRect QImageReader_ScaledClipRect(void* c_this);
	[LinkName("QImageReader_SetBackgroundColor")]
	public static extern void QImageReader_SetBackgroundColor(void* c_this, QColor color);
	[LinkName("QImageReader_BackgroundColor")]
	public static extern QColor QImageReader_BackgroundColor(void* c_this);
	[LinkName("QImageReader_SupportsAnimation")]
	public static extern bool QImageReader_SupportsAnimation(void* c_this);
	[LinkName("QImageReader_Transformation")]
	public static extern int64 QImageReader_Transformation(void* c_this);
	[LinkName("QImageReader_SetAutoTransform")]
	public static extern void QImageReader_SetAutoTransform(void* c_this, bool enabled);
	[LinkName("QImageReader_AutoTransform")]
	public static extern bool QImageReader_AutoTransform(void* c_this);
	[LinkName("QImageReader_SubType")]
	public static extern uint8[] QImageReader_SubType(void* c_this);
	[LinkName("QImageReader_SupportedSubTypes")]
	public static extern uint8[][] QImageReader_SupportedSubTypes(void* c_this);
	[LinkName("QImageReader_CanRead")]
	public static extern bool QImageReader_CanRead(void* c_this);
	[LinkName("QImageReader_Read")]
	public static extern QImage QImageReader_Read(void* c_this);
	[LinkName("QImageReader_ReadWithImage")]
	public static extern bool QImageReader_ReadWithImage(void* c_this, QImage image);
	[LinkName("QImageReader_JumpToNextImage")]
	public static extern bool QImageReader_JumpToNextImage(void* c_this);
	[LinkName("QImageReader_JumpToImage")]
	public static extern bool QImageReader_JumpToImage(void* c_this, int32 imageNumber);
	[LinkName("QImageReader_LoopCount")]
	public static extern int32 QImageReader_LoopCount(void* c_this);
	[LinkName("QImageReader_ImageCount")]
	public static extern int32 QImageReader_ImageCount(void* c_this);
	[LinkName("QImageReader_NextImageDelay")]
	public static extern int32 QImageReader_NextImageDelay(void* c_this);
	[LinkName("QImageReader_CurrentImageNumber")]
	public static extern int32 QImageReader_CurrentImageNumber(void* c_this);
	[LinkName("QImageReader_CurrentImageRect")]
	public static extern QRect QImageReader_CurrentImageRect(void* c_this);
	[LinkName("QImageReader_Error")]
	public static extern int64 QImageReader_Error(void* c_this);
	[LinkName("QImageReader_ErrorString")]
	public static extern char8[] QImageReader_ErrorString(void* c_this);
	[LinkName("QImageReader_SupportsOption")]
	public static extern bool QImageReader_SupportsOption(void* c_this, int64 option);
	[LinkName("QImageReader_ImageFormatWithFileName")]
	public static extern uint8[] QImageReader_ImageFormatWithFileName(char8[] fileName);
	[LinkName("QImageReader_ImageFormatWithDevice")]
	public static extern uint8[] QImageReader_ImageFormatWithDevice(QIODevice device);
	[LinkName("QImageReader_SupportedImageFormats")]
	public static extern uint8[][] QImageReader_SupportedImageFormats();
	[LinkName("QImageReader_SupportedMimeTypes")]
	public static extern uint8[][] QImageReader_SupportedMimeTypes();
	[LinkName("QImageReader_ImageFormatsForMimeType")]
	public static extern uint8[][] QImageReader_ImageFormatsForMimeType(uint8[] mimeType);
	[LinkName("QImageReader_AllocationLimit")]
	public static extern int32 QImageReader_AllocationLimit();
	[LinkName("QImageReader_SetAllocationLimit")]
	public static extern void QImageReader_SetAllocationLimit(int32 mbLimit);
	[LinkName("QImageReader_Tr2")]
	public static extern char8[] QImageReader_Tr2(char8[] sourceText, char8[] disambiguation);
	[LinkName("QImageReader_Tr3")]
	public static extern char8[] QImageReader_Tr3(char8[] sourceText, char8[] disambiguation, int32 n);
}