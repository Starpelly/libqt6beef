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
public interface IQImageWriter
{
	void* NativePtr { get; }
}
public class QImageWriter : IQImageWriter
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QImageWriter_new();
	}
	
	public ~this()
	{
		CQt.QImageWriter_Delete(this.nativePtr);
	}
	
	public static libqt_string Tr(char8* sourceText)
	{
		return CQt.QImageWriter_Tr(sourceText);
	}
	
	public void SetFormat(String format)
	{
		CQt.QImageWriter_SetFormat(this.nativePtr, libqt_string(format));
	}
	
	public libqt_string Format()
	{
		return CQt.QImageWriter_Format(this.nativePtr);
	}
	
	public void SetDevice(IQIODevice device)
	{
		CQt.QImageWriter_SetDevice(this.nativePtr, (device == null) ? null : (void*)device.NativePtr);
	}
	
	public void* Device()
	{
		return CQt.QImageWriter_Device(this.nativePtr);
	}
	
	public void SetFileName(String fileName)
	{
		CQt.QImageWriter_SetFileName(this.nativePtr, libqt_string(fileName));
	}
	
	public libqt_string FileName()
	{
		return CQt.QImageWriter_FileName(this.nativePtr);
	}
	
	public void SetQuality(int32 quality)
	{
		CQt.QImageWriter_SetQuality(this.nativePtr, quality);
	}
	
	public int32 Quality()
	{
		return CQt.QImageWriter_Quality(this.nativePtr);
	}
	
	public void SetCompression(int32 compression)
	{
		CQt.QImageWriter_SetCompression(this.nativePtr, compression);
	}
	
	public int32 Compression()
	{
		return CQt.QImageWriter_Compression(this.nativePtr);
	}
	
	public void SetSubType(String typeVal)
	{
		CQt.QImageWriter_SetSubType(this.nativePtr, libqt_string(typeVal));
	}
	
	public libqt_string SubType()
	{
		return CQt.QImageWriter_SubType(this.nativePtr);
	}
	
	public libqt_string[] SupportedSubTypes()
	{
		return CQt.QImageWriter_SupportedSubTypes(this.nativePtr);
	}
	
	public void SetOptimizedWrite(bool optimize)
	{
		CQt.QImageWriter_SetOptimizedWrite(this.nativePtr, optimize);
	}
	
	public bool OptimizedWrite()
	{
		return CQt.QImageWriter_OptimizedWrite(this.nativePtr);
	}
	
	public void SetProgressiveScanWrite(bool progressive)
	{
		CQt.QImageWriter_SetProgressiveScanWrite(this.nativePtr, progressive);
	}
	
	public bool ProgressiveScanWrite()
	{
		return CQt.QImageWriter_ProgressiveScanWrite(this.nativePtr);
	}
	
	public int64 Transformation()
	{
		return CQt.QImageWriter_Transformation(this.nativePtr);
	}
	
	public void SetTransformation(int64 orientation)
	{
		CQt.QImageWriter_SetTransformation(this.nativePtr, orientation);
	}
	
	public void SetText(String key, String text)
	{
		CQt.QImageWriter_SetText(this.nativePtr, libqt_string(key), libqt_string(text));
	}
	
	public bool CanWrite()
	{
		return CQt.QImageWriter_CanWrite(this.nativePtr);
	}
	
	public bool Write(IQImage image)
	{
		return CQt.QImageWriter_Write(this.nativePtr, (image == default) ? default : (void*)image.NativePtr);
	}
	
	public int64 Error()
	{
		return CQt.QImageWriter_Error(this.nativePtr);
	}
	
	public libqt_string ErrorString()
	{
		return CQt.QImageWriter_ErrorString(this.nativePtr);
	}
	
	public bool SupportsOption(int64 option)
	{
		return CQt.QImageWriter_SupportsOption(this.nativePtr, option);
	}
	
	public static libqt_string[] SupportedImageFormats()
	{
		return CQt.QImageWriter_SupportedImageFormats();
	}
	
	public static libqt_string[] SupportedMimeTypes()
	{
		return CQt.QImageWriter_SupportedMimeTypes();
	}
	
	public static libqt_string[] ImageFormatsForMimeType(String mimeType)
	{
		return CQt.QImageWriter_ImageFormatsForMimeType(libqt_string(mimeType));
	}
	
	public static libqt_string Tr2(char8* sourceText, char8* disambiguation)
	{
		return CQt.QImageWriter_Tr2(sourceText, disambiguation);
	}
	
	public static libqt_string Tr3(char8* sourceText, char8* disambiguation, int32 n)
	{
		return CQt.QImageWriter_Tr3(sourceText, disambiguation, n);
	}
	
}
extension CQt
{
	[LinkName("QImageWriter_new")]
	public static extern void* QImageWriter_new();
	[LinkName("QImageWriter_new2")]
	public static extern void* QImageWriter_new2(void* device, libqt_string format);
	[LinkName("QImageWriter_new3")]
	public static extern void* QImageWriter_new3(libqt_string fileName);
	[LinkName("QImageWriter_new4")]
	public static extern void* QImageWriter_new4(libqt_string fileName, libqt_string format);
	[LinkName("QImageWriter_Tr")]
	public static extern libqt_string QImageWriter_Tr(char8* sourceText);
	[LinkName("QImageWriter_SetFormat")]
	public static extern void QImageWriter_SetFormat(void* c_this, libqt_string format);
	[LinkName("QImageWriter_Format")]
	public static extern libqt_string QImageWriter_Format(void* c_this);
	[LinkName("QImageWriter_SetDevice")]
	public static extern void QImageWriter_SetDevice(void* c_this, void* device);
	[LinkName("QImageWriter_Device")]
	public static extern void* QImageWriter_Device(void* c_this);
	[LinkName("QImageWriter_SetFileName")]
	public static extern void QImageWriter_SetFileName(void* c_this, libqt_string fileName);
	[LinkName("QImageWriter_FileName")]
	public static extern libqt_string QImageWriter_FileName(void* c_this);
	[LinkName("QImageWriter_SetQuality")]
	public static extern void QImageWriter_SetQuality(void* c_this, int32 quality);
	[LinkName("QImageWriter_Quality")]
	public static extern int32 QImageWriter_Quality(void* c_this);
	[LinkName("QImageWriter_SetCompression")]
	public static extern void QImageWriter_SetCompression(void* c_this, int32 compression);
	[LinkName("QImageWriter_Compression")]
	public static extern int32 QImageWriter_Compression(void* c_this);
	[LinkName("QImageWriter_SetSubType")]
	public static extern void QImageWriter_SetSubType(void* c_this, libqt_string typeVal);
	[LinkName("QImageWriter_SubType")]
	public static extern libqt_string QImageWriter_SubType(void* c_this);
	[LinkName("QImageWriter_SupportedSubTypes")]
	public static extern libqt_string[] QImageWriter_SupportedSubTypes(void* c_this);
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
	public static extern void QImageWriter_SetText(void* c_this, libqt_string key, libqt_string text);
	[LinkName("QImageWriter_CanWrite")]
	public static extern bool QImageWriter_CanWrite(void* c_this);
	[LinkName("QImageWriter_Write")]
	public static extern bool QImageWriter_Write(void* c_this, void* image);
	[LinkName("QImageWriter_Error")]
	public static extern int64 QImageWriter_Error(void* c_this);
	[LinkName("QImageWriter_ErrorString")]
	public static extern libqt_string QImageWriter_ErrorString(void* c_this);
	[LinkName("QImageWriter_SupportsOption")]
	public static extern bool QImageWriter_SupportsOption(void* c_this, int64 option);
	[LinkName("QImageWriter_SupportedImageFormats")]
	public static extern libqt_string[] QImageWriter_SupportedImageFormats();
	[LinkName("QImageWriter_SupportedMimeTypes")]
	public static extern libqt_string[] QImageWriter_SupportedMimeTypes();
	[LinkName("QImageWriter_ImageFormatsForMimeType")]
	public static extern libqt_string[] QImageWriter_ImageFormatsForMimeType(libqt_string mimeType);
	[LinkName("QImageWriter_Tr2")]
	public static extern libqt_string QImageWriter_Tr2(char8* sourceText, char8* disambiguation);
	[LinkName("QImageWriter_Tr3")]
	public static extern libqt_string QImageWriter_Tr3(char8* sourceText, char8* disambiguation, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QImageWriter_Delete")]
	public static extern void QImageWriter_Delete(void* self);
}