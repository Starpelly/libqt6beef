using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QImageWriter__ImageWriterError
{
	UnknownError = 0,
	DeviceError = 1,
	UnsupportedFormatError = 2,
	InvalidImageError = 3,
}
public struct QImageWriter
{
	[LinkName("QImageWriter_new")]
	public static extern void* QImageWriter_new();
	[LinkName("QImageWriter_new2")]
	public static extern void* QImageWriter_new2(QIODevice device, uint8[] format);
	[LinkName("QImageWriter_new3")]
	public static extern void* QImageWriter_new3(char8[] fileName);
	[LinkName("QImageWriter_new4")]
	public static extern void* QImageWriter_new4(char8[] fileName, uint8[] format);
	[LinkName("QImageWriter_Tr")]
	public static extern char8[] QImageWriter_Tr(char8[] sourceText);
	[LinkName("QImageWriter_SetFormat")]
	public static extern void QImageWriter_SetFormat(void* c_this, uint8[] format);
	[LinkName("QImageWriter_Format")]
	public static extern uint8[] QImageWriter_Format(void* c_this);
	[LinkName("QImageWriter_SetDevice")]
	public static extern void QImageWriter_SetDevice(void* c_this, QIODevice device);
	[LinkName("QImageWriter_Device")]
	public static extern QIODevice QImageWriter_Device(void* c_this);
	[LinkName("QImageWriter_SetFileName")]
	public static extern void QImageWriter_SetFileName(void* c_this, char8[] fileName);
	[LinkName("QImageWriter_FileName")]
	public static extern char8[] QImageWriter_FileName(void* c_this);
	[LinkName("QImageWriter_SetQuality")]
	public static extern void QImageWriter_SetQuality(void* c_this, int32 quality);
	[LinkName("QImageWriter_Quality")]
	public static extern int32 QImageWriter_Quality(void* c_this);
	[LinkName("QImageWriter_SetCompression")]
	public static extern void QImageWriter_SetCompression(void* c_this, int32 compression);
	[LinkName("QImageWriter_Compression")]
	public static extern int32 QImageWriter_Compression(void* c_this);
	[LinkName("QImageWriter_SetSubType")]
	public static extern void QImageWriter_SetSubType(void* c_this, uint8[] typeVal);
	[LinkName("QImageWriter_SubType")]
	public static extern uint8[] QImageWriter_SubType(void* c_this);
	[LinkName("QImageWriter_SupportedSubTypes")]
	public static extern uint8[][] QImageWriter_SupportedSubTypes(void* c_this);
	[LinkName("QImageWriter_SetOptimizedWrite")]
	public static extern void QImageWriter_SetOptimizedWrite(void* c_this, bool optimize);
	[LinkName("QImageWriter_OptimizedWrite")]
	public static extern bool QImageWriter_OptimizedWrite(void* c_this);
	[LinkName("QImageWriter_SetProgressiveScanWrite")]
	public static extern void QImageWriter_SetProgressiveScanWrite(void* c_this, bool progressive);
	[LinkName("QImageWriter_ProgressiveScanWrite")]
	public static extern bool QImageWriter_ProgressiveScanWrite(void* c_this);
	[LinkName("QImageWriter_Transformation")]
	public static extern int64 QImageWriter_Transformation(void* c_this);
	[LinkName("QImageWriter_SetTransformation")]
	public static extern void QImageWriter_SetTransformation(void* c_this, int64 orientation);
	[LinkName("QImageWriter_SetText")]
	public static extern void QImageWriter_SetText(void* c_this, char8[] key, char8[] text);
	[LinkName("QImageWriter_CanWrite")]
	public static extern bool QImageWriter_CanWrite(void* c_this);
	[LinkName("QImageWriter_Write")]
	public static extern bool QImageWriter_Write(void* c_this, QImage image);
	[LinkName("QImageWriter_Error")]
	public static extern int64 QImageWriter_Error(void* c_this);
	[LinkName("QImageWriter_ErrorString")]
	public static extern char8[] QImageWriter_ErrorString(void* c_this);
	[LinkName("QImageWriter_SupportsOption")]
	public static extern bool QImageWriter_SupportsOption(void* c_this, int64 option);
	[LinkName("QImageWriter_SupportedImageFormats")]
	public static extern uint8[][] QImageWriter_SupportedImageFormats();
	[LinkName("QImageWriter_SupportedMimeTypes")]
	public static extern uint8[][] QImageWriter_SupportedMimeTypes();
	[LinkName("QImageWriter_ImageFormatsForMimeType")]
	public static extern uint8[][] QImageWriter_ImageFormatsForMimeType(uint8[] mimeType);
	[LinkName("QImageWriter_Tr2")]
	public static extern char8[] QImageWriter_Tr2(char8[] sourceText, char8[] disambiguation);
	[LinkName("QImageWriter_Tr3")]
	public static extern char8[] QImageWriter_Tr3(char8[] sourceText, char8[] disambiguation, int32 n);
}