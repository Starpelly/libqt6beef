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
	public static extern QImageWriter* QImageWriter_new();
	[LinkName("QImageWriter_new2")]
	public static extern QImageWriter* QImageWriter_new2(QIODevice* device, libqt_string format);
	[LinkName("QImageWriter_new3")]
	public static extern QImageWriter* QImageWriter_new3(libqt_string fileName);
	[LinkName("QImageWriter_new4")]
	public static extern QImageWriter* QImageWriter_new4(libqt_string fileName, libqt_string format);
	[LinkName("QImageWriter_Tr")]
	public static extern libqt_string QImageWriter_Tr(char8[] sourceText);
	[LinkName("QImageWriter_SetFormat")]
	public static extern void QImageWriter_SetFormat(Self* c_this, libqt_string format);
	[LinkName("QImageWriter_Format")]
	public static extern libqt_string QImageWriter_Format(Self* c_this);
	[LinkName("QImageWriter_SetDevice")]
	public static extern void QImageWriter_SetDevice(Self* c_this, QIODevice* device);
	[LinkName("QImageWriter_Device")]
	public static extern QIODevice* QImageWriter_Device(Self* c_this);
	[LinkName("QImageWriter_SetFileName")]
	public static extern void QImageWriter_SetFileName(Self* c_this, libqt_string fileName);
	[LinkName("QImageWriter_FileName")]
	public static extern libqt_string QImageWriter_FileName(Self* c_this);
	[LinkName("QImageWriter_SetQuality")]
	public static extern void QImageWriter_SetQuality(Self* c_this, int32 quality);
	[LinkName("QImageWriter_Quality")]
	public static extern int32 QImageWriter_Quality(Self* c_this);
	[LinkName("QImageWriter_SetCompression")]
	public static extern void QImageWriter_SetCompression(Self* c_this, int32 compression);
	[LinkName("QImageWriter_Compression")]
	public static extern int32 QImageWriter_Compression(Self* c_this);
	[LinkName("QImageWriter_SetSubType")]
	public static extern void QImageWriter_SetSubType(Self* c_this, libqt_string typeVal);
	[LinkName("QImageWriter_SubType")]
	public static extern libqt_string QImageWriter_SubType(Self* c_this);
	[LinkName("QImageWriter_SupportedSubTypes")]
	public static extern libqt_string[] QImageWriter_SupportedSubTypes(Self* c_this);
	[LinkName("QImageWriter_SetOptimizedWrite")]
	public static extern void QImageWriter_SetOptimizedWrite(Self* c_this, bool optimize);
	[LinkName("QImageWriter_OptimizedWrite")]
	public static extern bool QImageWriter_OptimizedWrite(Self* c_this);
	[LinkName("QImageWriter_SetProgressiveScanWrite")]
	public static extern void QImageWriter_SetProgressiveScanWrite(Self* c_this, bool progressive);
	[LinkName("QImageWriter_ProgressiveScanWrite")]
	public static extern bool QImageWriter_ProgressiveScanWrite(Self* c_this);
	[LinkName("QImageWriter_Transformation")]
	public static extern int64 QImageWriter_Transformation(Self* c_this);
	[LinkName("QImageWriter_SetTransformation")]
	public static extern void QImageWriter_SetTransformation(Self* c_this, int64 orientation);
	[LinkName("QImageWriter_SetText")]
	public static extern void QImageWriter_SetText(Self* c_this, libqt_string key, libqt_string text);
	[LinkName("QImageWriter_CanWrite")]
	public static extern bool QImageWriter_CanWrite(Self* c_this);
	[LinkName("QImageWriter_Write")]
	public static extern bool QImageWriter_Write(Self* c_this, QImage* image);
	[LinkName("QImageWriter_Error")]
	public static extern int64 QImageWriter_Error(Self* c_this);
	[LinkName("QImageWriter_ErrorString")]
	public static extern libqt_string QImageWriter_ErrorString(Self* c_this);
	[LinkName("QImageWriter_SupportsOption")]
	public static extern bool QImageWriter_SupportsOption(Self* c_this, int64 option);
	[LinkName("QImageWriter_SupportedImageFormats")]
	public static extern libqt_string[] QImageWriter_SupportedImageFormats();
	[LinkName("QImageWriter_SupportedMimeTypes")]
	public static extern libqt_string[] QImageWriter_SupportedMimeTypes();
	[LinkName("QImageWriter_ImageFormatsForMimeType")]
	public static extern libqt_string[] QImageWriter_ImageFormatsForMimeType(libqt_string mimeType);
	[LinkName("QImageWriter_Tr2")]
	public static extern libqt_string QImageWriter_Tr2(char8[] sourceText, char8[] disambiguation);
	[LinkName("QImageWriter_Tr3")]
	public static extern libqt_string QImageWriter_Tr3(char8[] sourceText, char8[] disambiguation, int32 n);
}