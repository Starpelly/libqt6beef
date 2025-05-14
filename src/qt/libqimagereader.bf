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
public interface IQImageReader
{
	void* NativePtr { get; }
}
public struct QImageReaderPtr : IQImageReader, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QImageReader_new());
	}
	
	public void Dispose()
	{
		CQt.QImageReader_Delete(this.nativePtr);
	}
	
	public static libqt_string Tr(char8* sourceText)
	{
		return CQt.QImageReader_Tr(sourceText);
	}
	
	public void SetFormat(String format)
	{
		CQt.QImageReader_SetFormat(this.nativePtr, libqt_string(format));
	}
	
	public libqt_string Format()
	{
		return CQt.QImageReader_Format(this.nativePtr);
	}
	
	public void SetAutoDetectImageFormat(bool enabled)
	{
		CQt.QImageReader_SetAutoDetectImageFormat(this.nativePtr, enabled);
	}
	
	public bool AutoDetectImageFormat()
	{
		return CQt.QImageReader_AutoDetectImageFormat(this.nativePtr);
	}
	
	public void SetDecideFormatFromContent(bool ignored)
	{
		CQt.QImageReader_SetDecideFormatFromContent(this.nativePtr, ignored);
	}
	
	public bool DecideFormatFromContent()
	{
		return CQt.QImageReader_DecideFormatFromContent(this.nativePtr);
	}
	
	public void SetDevice(IQIODevice device)
	{
		CQt.QImageReader_SetDevice(this.nativePtr, (device == default || device.NativePtr == default) ? default : device.NativePtr);
	}
	
	public void* Device()
	{
		return CQt.QImageReader_Device(this.nativePtr);
	}
	
	public void SetFileName(String fileName)
	{
		CQt.QImageReader_SetFileName(this.nativePtr, libqt_string(fileName));
	}
	
	public libqt_string FileName()
	{
		return CQt.QImageReader_FileName(this.nativePtr);
	}
	
	public void Size()
	{
		CQt.QImageReader_Size(this.nativePtr);
	}
	
	public int64 ImageFormat()
	{
		return CQt.QImageReader_ImageFormat(this.nativePtr);
	}
	
	public libqt_string[] TextKeys()
	{
		return CQt.QImageReader_TextKeys(this.nativePtr);
	}
	
	public libqt_string Text(String key)
	{
		return CQt.QImageReader_Text(this.nativePtr, libqt_string(key));
	}
	
	public void SetClipRect(IQRect rect)
	{
		CQt.QImageReader_SetClipRect(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void ClipRect()
	{
		CQt.QImageReader_ClipRect(this.nativePtr);
	}
	
	public void SetScaledSize(IQSize size)
	{
		CQt.QImageReader_SetScaledSize(this.nativePtr, (size == default || size.NativePtr == default) ? default : size.NativePtr);
	}
	
	public void ScaledSize()
	{
		CQt.QImageReader_ScaledSize(this.nativePtr);
	}
	
	public void SetQuality(int32 quality)
	{
		CQt.QImageReader_SetQuality(this.nativePtr, quality);
	}
	
	public int32 Quality()
	{
		return CQt.QImageReader_Quality(this.nativePtr);
	}
	
	public void SetScaledClipRect(IQRect rect)
	{
		CQt.QImageReader_SetScaledClipRect(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void ScaledClipRect()
	{
		CQt.QImageReader_ScaledClipRect(this.nativePtr);
	}
	
	public void SetBackgroundColor(IQColor color)
	{
		CQt.QImageReader_SetBackgroundColor(this.nativePtr, (color == default || color.NativePtr == default) ? default : color.NativePtr);
	}
	
	public void BackgroundColor()
	{
		CQt.QImageReader_BackgroundColor(this.nativePtr);
	}
	
	public bool SupportsAnimation()
	{
		return CQt.QImageReader_SupportsAnimation(this.nativePtr);
	}
	
	public int64 Transformation()
	{
		return CQt.QImageReader_Transformation(this.nativePtr);
	}
	
	public void SetAutoTransform(bool enabled)
	{
		CQt.QImageReader_SetAutoTransform(this.nativePtr, enabled);
	}
	
	public bool AutoTransform()
	{
		return CQt.QImageReader_AutoTransform(this.nativePtr);
	}
	
	public libqt_string SubType()
	{
		return CQt.QImageReader_SubType(this.nativePtr);
	}
	
	public libqt_string[] SupportedSubTypes()
	{
		return CQt.QImageReader_SupportedSubTypes(this.nativePtr);
	}
	
	public bool CanRead()
	{
		return CQt.QImageReader_CanRead(this.nativePtr);
	}
	
	public void Read()
	{
		CQt.QImageReader_Read(this.nativePtr);
	}
	
	public bool ReadWithImage(IQImage image)
	{
		return CQt.QImageReader_ReadWithImage(this.nativePtr, (image == default || image.NativePtr == default) ? default : image.NativePtr);
	}
	
	public bool JumpToNextImage()
	{
		return CQt.QImageReader_JumpToNextImage(this.nativePtr);
	}
	
	public bool JumpToImage(int32 imageNumber)
	{
		return CQt.QImageReader_JumpToImage(this.nativePtr, imageNumber);
	}
	
	public int32 LoopCount()
	{
		return CQt.QImageReader_LoopCount(this.nativePtr);
	}
	
	public int32 ImageCount()
	{
		return CQt.QImageReader_ImageCount(this.nativePtr);
	}
	
	public int32 NextImageDelay()
	{
		return CQt.QImageReader_NextImageDelay(this.nativePtr);
	}
	
	public int32 CurrentImageNumber()
	{
		return CQt.QImageReader_CurrentImageNumber(this.nativePtr);
	}
	
	public void CurrentImageRect()
	{
		CQt.QImageReader_CurrentImageRect(this.nativePtr);
	}
	
	public int64 Error()
	{
		return CQt.QImageReader_Error(this.nativePtr);
	}
	
	public libqt_string ErrorString()
	{
		return CQt.QImageReader_ErrorString(this.nativePtr);
	}
	
	public bool SupportsOption(int64 option)
	{
		return CQt.QImageReader_SupportsOption(this.nativePtr, (int64)option);
	}
	
	public static libqt_string ImageFormatWithFileName(String fileName)
	{
		return CQt.QImageReader_ImageFormatWithFileName(libqt_string(fileName));
	}
	
	public static libqt_string ImageFormatWithDevice(IQIODevice device)
	{
		return CQt.QImageReader_ImageFormatWithDevice((device == default || device.NativePtr == default) ? default : device.NativePtr);
	}
	
	public static libqt_string[] SupportedImageFormats()
	{
		return CQt.QImageReader_SupportedImageFormats();
	}
	
	public static libqt_string[] SupportedMimeTypes()
	{
		return CQt.QImageReader_SupportedMimeTypes();
	}
	
	public static libqt_string[] ImageFormatsForMimeType(String mimeType)
	{
		return CQt.QImageReader_ImageFormatsForMimeType(libqt_string(mimeType));
	}
	
	public static int32 AllocationLimit()
	{
		return CQt.QImageReader_AllocationLimit();
	}
	
	public static void SetAllocationLimit(int32 mbLimit)
	{
		CQt.QImageReader_SetAllocationLimit(mbLimit);
	}
	
	public static libqt_string Tr2(char8* sourceText, char8* disambiguation)
	{
		return CQt.QImageReader_Tr2(sourceText, disambiguation);
	}
	
	public static libqt_string Tr3(char8* sourceText, char8* disambiguation, int32 n)
	{
		return CQt.QImageReader_Tr3(sourceText, disambiguation, n);
	}
	
}
public class QImageReader
{
	public QImageReaderPtr handle;
	
	public static implicit operator QImageReaderPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QImageReaderPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public static libqt_string Tr(char8* sourceText)
	{
		return QImageReaderPtr.Tr(sourceText);
	}
	
	public void SetFormat(String format)
	{
		this.handle.SetFormat(format);
	}
	
	public libqt_string Format()
	{
		return this.handle.Format();
	}
	
	public void SetAutoDetectImageFormat(bool enabled)
	{
		this.handle.SetAutoDetectImageFormat(enabled);
	}
	
	public bool AutoDetectImageFormat()
	{
		return this.handle.AutoDetectImageFormat();
	}
	
	public void SetDecideFormatFromContent(bool ignored)
	{
		this.handle.SetDecideFormatFromContent(ignored);
	}
	
	public bool DecideFormatFromContent()
	{
		return this.handle.DecideFormatFromContent();
	}
	
	public void SetDevice(IQIODevice device)
	{
		this.handle.SetDevice(device);
	}
	
	public void* Device()
	{
		return this.handle.Device();
	}
	
	public void SetFileName(String fileName)
	{
		this.handle.SetFileName(fileName);
	}
	
	public libqt_string FileName()
	{
		return this.handle.FileName();
	}
	
	public void Size()
	{
		this.handle.Size();
	}
	
	public int64 ImageFormat()
	{
		return this.handle.ImageFormat();
	}
	
	public libqt_string[] TextKeys()
	{
		return this.handle.TextKeys();
	}
	
	public libqt_string Text(String key)
	{
		return this.handle.Text(key);
	}
	
	public void SetClipRect(IQRect rect)
	{
		this.handle.SetClipRect(rect);
	}
	
	public void ClipRect()
	{
		this.handle.ClipRect();
	}
	
	public void SetScaledSize(IQSize size)
	{
		this.handle.SetScaledSize(size);
	}
	
	public void ScaledSize()
	{
		this.handle.ScaledSize();
	}
	
	public void SetQuality(int32 quality)
	{
		this.handle.SetQuality(quality);
	}
	
	public int32 Quality()
	{
		return this.handle.Quality();
	}
	
	public void SetScaledClipRect(IQRect rect)
	{
		this.handle.SetScaledClipRect(rect);
	}
	
	public void ScaledClipRect()
	{
		this.handle.ScaledClipRect();
	}
	
	public void SetBackgroundColor(IQColor color)
	{
		this.handle.SetBackgroundColor(color);
	}
	
	public void BackgroundColor()
	{
		this.handle.BackgroundColor();
	}
	
	public bool SupportsAnimation()
	{
		return this.handle.SupportsAnimation();
	}
	
	public int64 Transformation()
	{
		return this.handle.Transformation();
	}
	
	public void SetAutoTransform(bool enabled)
	{
		this.handle.SetAutoTransform(enabled);
	}
	
	public bool AutoTransform()
	{
		return this.handle.AutoTransform();
	}
	
	public libqt_string SubType()
	{
		return this.handle.SubType();
	}
	
	public libqt_string[] SupportedSubTypes()
	{
		return this.handle.SupportedSubTypes();
	}
	
	public bool CanRead()
	{
		return this.handle.CanRead();
	}
	
	public void Read()
	{
		this.handle.Read();
	}
	
	public bool ReadWithImage(IQImage image)
	{
		return this.handle.ReadWithImage(image);
	}
	
	public bool JumpToNextImage()
	{
		return this.handle.JumpToNextImage();
	}
	
	public bool JumpToImage(int32 imageNumber)
	{
		return this.handle.JumpToImage(imageNumber);
	}
	
	public int32 LoopCount()
	{
		return this.handle.LoopCount();
	}
	
	public int32 ImageCount()
	{
		return this.handle.ImageCount();
	}
	
	public int32 NextImageDelay()
	{
		return this.handle.NextImageDelay();
	}
	
	public int32 CurrentImageNumber()
	{
		return this.handle.CurrentImageNumber();
	}
	
	public void CurrentImageRect()
	{
		this.handle.CurrentImageRect();
	}
	
	public int64 Error()
	{
		return this.handle.Error();
	}
	
	public libqt_string ErrorString()
	{
		return this.handle.ErrorString();
	}
	
	public bool SupportsOption(int64 option)
	{
		return this.handle.SupportsOption(option);
	}
	
	public static libqt_string ImageFormatWithFileName(String fileName)
	{
		return QImageReaderPtr.ImageFormatWithFileName(fileName);
	}
	
	public static libqt_string ImageFormatWithDevice(IQIODevice device)
	{
		return QImageReaderPtr.ImageFormatWithDevice(device);
	}
	
	public static libqt_string[] SupportedImageFormats()
	{
		return QImageReaderPtr.SupportedImageFormats();
	}
	
	public static libqt_string[] SupportedMimeTypes()
	{
		return QImageReaderPtr.SupportedMimeTypes();
	}
	
	public static libqt_string[] ImageFormatsForMimeType(String mimeType)
	{
		return QImageReaderPtr.ImageFormatsForMimeType(mimeType);
	}
	
	public static int32 AllocationLimit()
	{
		return QImageReaderPtr.AllocationLimit();
	}
	
	public static void SetAllocationLimit(int32 mbLimit)
	{
		QImageReaderPtr.SetAllocationLimit(mbLimit);
	}
	
	public static libqt_string Tr2(char8* sourceText, char8* disambiguation)
	{
		return QImageReaderPtr.Tr2(sourceText, disambiguation);
	}
	
	public static libqt_string Tr3(char8* sourceText, char8* disambiguation, int32 n)
	{
		return QImageReaderPtr.Tr3(sourceText, disambiguation, n);
	}
	
}
extension CQt
{
	[LinkName("QImageReader_new")]
	public static extern void* QImageReader_new();
	[LinkName("QImageReader_new2")]
	public static extern void* QImageReader_new2(void* device);
	[LinkName("QImageReader_new3")]
	public static extern void* QImageReader_new3(libqt_string fileName);
	[LinkName("QImageReader_new4")]
	public static extern void* QImageReader_new4(void* device, libqt_string format);
	[LinkName("QImageReader_new5")]
	public static extern void* QImageReader_new5(libqt_string fileName, libqt_string format);
	[LinkName("QImageReader_Tr")]
	public static extern libqt_string QImageReader_Tr(char8* sourceText);
	[LinkName("QImageReader_SetFormat")]
	public static extern void QImageReader_SetFormat(void* c_this, libqt_string format);
	[LinkName("QImageReader_Format")]
	public static extern libqt_string QImageReader_Format(void* c_this);
	[LinkName("QImageReader_SetAutoDetectImageFormat")]
	public static extern void QImageReader_SetAutoDetectImageFormat(void* c_this, bool enabled);
	[LinkName("QImageReader_AutoDetectImageFormat")]
	public static extern bool QImageReader_AutoDetectImageFormat(void* c_this);
	[LinkName("QImageReader_SetDecideFormatFromContent")]
	public static extern void QImageReader_SetDecideFormatFromContent(void* c_this, bool ignored);
	[LinkName("QImageReader_DecideFormatFromContent")]
	public static extern bool QImageReader_DecideFormatFromContent(void* c_this);
	[LinkName("QImageReader_SetDevice")]
	public static extern void QImageReader_SetDevice(void* c_this, void* device);
	[LinkName("QImageReader_Device")]
	public static extern void* QImageReader_Device(void* c_this);
	[LinkName("QImageReader_SetFileName")]
	public static extern void QImageReader_SetFileName(void* c_this, libqt_string fileName);
	[LinkName("QImageReader_FileName")]
	public static extern libqt_string QImageReader_FileName(void* c_this);
	[LinkName("QImageReader_Size")]
	public static extern void QImageReader_Size(void* c_this);
	[LinkName("QImageReader_ImageFormat")]
	public static extern int64 QImageReader_ImageFormat(void* c_this);
	[LinkName("QImageReader_TextKeys")]
	public static extern libqt_string[] QImageReader_TextKeys(void* c_this);
	[LinkName("QImageReader_Text")]
	public static extern libqt_string QImageReader_Text(void* c_this, libqt_string key);
	[LinkName("QImageReader_SetClipRect")]
	public static extern void QImageReader_SetClipRect(void* c_this, void* rect);
	[LinkName("QImageReader_ClipRect")]
	public static extern void QImageReader_ClipRect(void* c_this);
	[LinkName("QImageReader_SetScaledSize")]
	public static extern void QImageReader_SetScaledSize(void* c_this, void* size);
	[LinkName("QImageReader_ScaledSize")]
	public static extern void QImageReader_ScaledSize(void* c_this);
	[LinkName("QImageReader_SetQuality")]
	public static extern void QImageReader_SetQuality(void* c_this, int32 quality);
	[LinkName("QImageReader_Quality")]
	public static extern int32 QImageReader_Quality(void* c_this);
	[LinkName("QImageReader_SetScaledClipRect")]
	public static extern void QImageReader_SetScaledClipRect(void* c_this, void* rect);
	[LinkName("QImageReader_ScaledClipRect")]
	public static extern void QImageReader_ScaledClipRect(void* c_this);
	[LinkName("QImageReader_SetBackgroundColor")]
	public static extern void QImageReader_SetBackgroundColor(void* c_this, void* color);
	[LinkName("QImageReader_BackgroundColor")]
	public static extern void QImageReader_BackgroundColor(void* c_this);
	[LinkName("QImageReader_SupportsAnimation")]
	public static extern bool QImageReader_SupportsAnimation(void* c_this);
	[LinkName("QImageReader_Transformation")]
	public static extern int64 QImageReader_Transformation(void* c_this);
	[LinkName("QImageReader_SetAutoTransform")]
	public static extern void QImageReader_SetAutoTransform(void* c_this, bool enabled);
	[LinkName("QImageReader_AutoTransform")]
	public static extern bool QImageReader_AutoTransform(void* c_this);
	[LinkName("QImageReader_SubType")]
	public static extern libqt_string QImageReader_SubType(void* c_this);
	[LinkName("QImageReader_SupportedSubTypes")]
	public static extern libqt_string[] QImageReader_SupportedSubTypes(void* c_this);
	[LinkName("QImageReader_CanRead")]
	public static extern bool QImageReader_CanRead(void* c_this);
	[LinkName("QImageReader_Read")]
	public static extern void QImageReader_Read(void* c_this);
	[LinkName("QImageReader_ReadWithImage")]
	public static extern bool QImageReader_ReadWithImage(void* c_this, void* image);
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
	public static extern void QImageReader_CurrentImageRect(void* c_this);
	[LinkName("QImageReader_Error")]
	public static extern int64 QImageReader_Error(void* c_this);
	[LinkName("QImageReader_ErrorString")]
	public static extern libqt_string QImageReader_ErrorString(void* c_this);
	[LinkName("QImageReader_SupportsOption")]
	public static extern bool QImageReader_SupportsOption(void* c_this, int64 option);
	[LinkName("QImageReader_ImageFormatWithFileName")]
	public static extern libqt_string QImageReader_ImageFormatWithFileName(libqt_string fileName);
	[LinkName("QImageReader_ImageFormatWithDevice")]
	public static extern libqt_string QImageReader_ImageFormatWithDevice(void* device);
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
	public static extern libqt_string QImageReader_Tr2(char8* sourceText, char8* disambiguation);
	[LinkName("QImageReader_Tr3")]
	public static extern libqt_string QImageReader_Tr3(char8* sourceText, char8* disambiguation, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QImageReader_Delete")]
	public static extern void QImageReader_Delete(void* self);
}