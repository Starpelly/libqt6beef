using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QVideoFrameFormat__PixelFormat
{
	Format_Invalid = 0,
	Format_ARGB8888 = 1,
	Format_ARGB8888_Premultiplied = 2,
	Format_XRGB8888 = 3,
	Format_BGRA8888 = 4,
	Format_BGRA8888_Premultiplied = 5,
	Format_BGRX8888 = 6,
	Format_ABGR8888 = 7,
	Format_XBGR8888 = 8,
	Format_RGBA8888 = 9,
	Format_RGBX8888 = 10,
	Format_AYUV = 11,
	Format_AYUV_Premultiplied = 12,
	Format_YUV420P = 13,
	Format_YUV422P = 14,
	Format_YV12 = 15,
	Format_UYVY = 16,
	Format_YUYV = 17,
	Format_NV12 = 18,
	Format_NV21 = 19,
	Format_IMC1 = 20,
	Format_IMC2 = 21,
	Format_IMC3 = 22,
	Format_IMC4 = 23,
	Format_Y8 = 24,
	Format_Y16 = 25,
	Format_P010 = 26,
	Format_P016 = 27,
	Format_SamplerExternalOES = 28,
	Format_Jpeg = 29,
	Format_SamplerRect = 30,
	Format_YUV420P10 = 31,
}
[AllowDuplicates]
public enum QVideoFrameFormat__Direction
{
	TopToBottom = 0,
	BottomToTop = 1,
}
[AllowDuplicates]
public enum QVideoFrameFormat__YCbCrColorSpace
{
	YCbCr_Undefined = 0,
	YCbCr_BT601 = 1,
	YCbCr_BT709 = 2,
	YCbCr_xvYCC601 = 3,
	YCbCr_xvYCC709 = 4,
	YCbCr_JPEG = 5,
	YCbCr_BT2020 = 6,
}
[AllowDuplicates]
public enum QVideoFrameFormat__ColorSpace
{
	ColorSpace_Undefined = 0,
	ColorSpace_BT601 = 1,
	ColorSpace_BT709 = 2,
	ColorSpace_AdobeRgb = 5,
	ColorSpace_BT2020 = 6,
}
[AllowDuplicates]
public enum QVideoFrameFormat__ColorTransfer
{
	ColorTransfer_Unknown = 0,
	ColorTransfer_BT709 = 1,
	ColorTransfer_BT601 = 2,
	ColorTransfer_Linear = 3,
	ColorTransfer_Gamma22 = 4,
	ColorTransfer_Gamma28 = 5,
	ColorTransfer_ST2084 = 6,
	ColorTransfer_STD_B67 = 7,
}
[AllowDuplicates]
public enum QVideoFrameFormat__ColorRange
{
	ColorRange_Unknown = 0,
	ColorRange_Video = 1,
	ColorRange_Full = 2,
}
public interface IQVideoFrameFormat
{
	void* NativePtr { get; }
}
public class QVideoFrameFormat : IQVideoFrameFormat
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QVideoFrameFormat_new();
	}
	
	public ~this()
	{
		CQt.QVideoFrameFormat_Delete(this.nativePtr);
	}
	
	public void Swap(IQVideoFrameFormat other)
	{
		CQt.QVideoFrameFormat_Swap(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public void Detach()
	{
		CQt.QVideoFrameFormat_Detach(this.nativePtr);
	}
	
	public void OperatorAssign(IQVideoFrameFormat format)
	{
		CQt.QVideoFrameFormat_OperatorAssign(this.nativePtr, (format == default) ? default : (void*)format.NativePtr);
	}
	
	public bool OperatorEqual(IQVideoFrameFormat format)
	{
		return CQt.QVideoFrameFormat_OperatorEqual(this.nativePtr, (format == default) ? default : (void*)format.NativePtr);
	}
	
	public bool OperatorNotEqual(IQVideoFrameFormat format)
	{
		return CQt.QVideoFrameFormat_OperatorNotEqual(this.nativePtr, (format == default) ? default : (void*)format.NativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QVideoFrameFormat_IsValid(this.nativePtr);
	}
	
	public int64 PixelFormat()
	{
		return CQt.QVideoFrameFormat_PixelFormat(this.nativePtr);
	}
	
	public void FrameSize()
	{
		CQt.QVideoFrameFormat_FrameSize(this.nativePtr);
	}
	
	public void SetFrameSize(IQSize size)
	{
		CQt.QVideoFrameFormat_SetFrameSize(this.nativePtr, (size == default) ? default : (void*)size.NativePtr);
	}
	
	public void SetFrameSize2(int32 width, int32 height)
	{
		CQt.QVideoFrameFormat_SetFrameSize2(this.nativePtr, width, height);
	}
	
	public int32 FrameWidth()
	{
		return CQt.QVideoFrameFormat_FrameWidth(this.nativePtr);
	}
	
	public int32 FrameHeight()
	{
		return CQt.QVideoFrameFormat_FrameHeight(this.nativePtr);
	}
	
	public int32 PlaneCount()
	{
		return CQt.QVideoFrameFormat_PlaneCount(this.nativePtr);
	}
	
	public void Viewport()
	{
		CQt.QVideoFrameFormat_Viewport(this.nativePtr);
	}
	
	public void SetViewport(IQRect viewport)
	{
		CQt.QVideoFrameFormat_SetViewport(this.nativePtr, (viewport == default) ? default : (void*)viewport.NativePtr);
	}
	
	public int64 ScanLineDirection()
	{
		return CQt.QVideoFrameFormat_ScanLineDirection(this.nativePtr);
	}
	
	public void SetScanLineDirection(int64 direction)
	{
		CQt.QVideoFrameFormat_SetScanLineDirection(this.nativePtr, direction);
	}
	
	public double FrameRate()
	{
		return CQt.QVideoFrameFormat_FrameRate(this.nativePtr);
	}
	
	public void SetFrameRate(double rate)
	{
		CQt.QVideoFrameFormat_SetFrameRate(this.nativePtr, rate);
	}
	
	public int64 YCbCrColorSpace()
	{
		return CQt.QVideoFrameFormat_YCbCrColorSpace(this.nativePtr);
	}
	
	public void SetYCbCrColorSpace(int64 colorSpace)
	{
		CQt.QVideoFrameFormat_SetYCbCrColorSpace(this.nativePtr, colorSpace);
	}
	
	public int64 ColorSpace()
	{
		return CQt.QVideoFrameFormat_ColorSpace(this.nativePtr);
	}
	
	public void SetColorSpace(int64 colorSpace)
	{
		CQt.QVideoFrameFormat_SetColorSpace(this.nativePtr, colorSpace);
	}
	
	public int64 ColorTransfer()
	{
		return CQt.QVideoFrameFormat_ColorTransfer(this.nativePtr);
	}
	
	public void SetColorTransfer(int64 colorTransfer)
	{
		CQt.QVideoFrameFormat_SetColorTransfer(this.nativePtr, colorTransfer);
	}
	
	public int64 ColorRange()
	{
		return CQt.QVideoFrameFormat_ColorRange(this.nativePtr);
	}
	
	public void SetColorRange(int64 range)
	{
		CQt.QVideoFrameFormat_SetColorRange(this.nativePtr, range);
	}
	
	public bool IsMirrored()
	{
		return CQt.QVideoFrameFormat_IsMirrored(this.nativePtr);
	}
	
	public void SetMirrored(bool mirrored)
	{
		CQt.QVideoFrameFormat_SetMirrored(this.nativePtr, mirrored);
	}
	
	public libqt_string VertexShaderFileName()
	{
		return CQt.QVideoFrameFormat_VertexShaderFileName(this.nativePtr);
	}
	
	public libqt_string FragmentShaderFileName()
	{
		return CQt.QVideoFrameFormat_FragmentShaderFileName(this.nativePtr);
	}
	
	public float MaxLuminance()
	{
		return CQt.QVideoFrameFormat_MaxLuminance(this.nativePtr);
	}
	
	public void SetMaxLuminance(float lum)
	{
		CQt.QVideoFrameFormat_SetMaxLuminance(this.nativePtr, lum);
	}
	
	public static int64 PixelFormatFromImageFormat(int64 format)
	{
		return CQt.QVideoFrameFormat_PixelFormatFromImageFormat(format);
	}
	
	public static int64 ImageFormatFromPixelFormat(int64 format)
	{
		return CQt.QVideoFrameFormat_ImageFormatFromPixelFormat(format);
	}
	
	public static libqt_string PixelFormatToString(int64 pixelFormat)
	{
		return CQt.QVideoFrameFormat_PixelFormatToString(pixelFormat);
	}
	
}
extension CQt
{
	[LinkName("QVideoFrameFormat_new")]
	public static extern void* QVideoFrameFormat_new();
	[LinkName("QVideoFrameFormat_new2")]
	public static extern void* QVideoFrameFormat_new2(void* size, int64 pixelFormat);
	[LinkName("QVideoFrameFormat_new3")]
	public static extern void* QVideoFrameFormat_new3(void* format);
	[LinkName("QVideoFrameFormat_Swap")]
	public static extern void QVideoFrameFormat_Swap(void* c_this, void* other);
	[LinkName("QVideoFrameFormat_Detach")]
	public static extern void QVideoFrameFormat_Detach(void* c_this);
	[LinkName("QVideoFrameFormat_OperatorAssign")]
	public static extern void QVideoFrameFormat_OperatorAssign(void* c_this, void* format);
	[LinkName("QVideoFrameFormat_OperatorEqual")]
	public static extern bool QVideoFrameFormat_OperatorEqual(void* c_this, void* format);
	[LinkName("QVideoFrameFormat_OperatorNotEqual")]
	public static extern bool QVideoFrameFormat_OperatorNotEqual(void* c_this, void* format);
	[LinkName("QVideoFrameFormat_IsValid")]
	public static extern bool QVideoFrameFormat_IsValid(void* c_this);
	[LinkName("QVideoFrameFormat_PixelFormat")]
	public static extern int64 QVideoFrameFormat_PixelFormat(void* c_this);
	[LinkName("QVideoFrameFormat_FrameSize")]
	public static extern void QVideoFrameFormat_FrameSize(void* c_this);
	[LinkName("QVideoFrameFormat_SetFrameSize")]
	public static extern void QVideoFrameFormat_SetFrameSize(void* c_this, void* size);
	[LinkName("QVideoFrameFormat_SetFrameSize2")]
	public static extern void QVideoFrameFormat_SetFrameSize2(void* c_this, int32 width, int32 height);
	[LinkName("QVideoFrameFormat_FrameWidth")]
	public static extern int32 QVideoFrameFormat_FrameWidth(void* c_this);
	[LinkName("QVideoFrameFormat_FrameHeight")]
	public static extern int32 QVideoFrameFormat_FrameHeight(void* c_this);
	[LinkName("QVideoFrameFormat_PlaneCount")]
	public static extern int32 QVideoFrameFormat_PlaneCount(void* c_this);
	[LinkName("QVideoFrameFormat_Viewport")]
	public static extern void QVideoFrameFormat_Viewport(void* c_this);
	[LinkName("QVideoFrameFormat_SetViewport")]
	public static extern void QVideoFrameFormat_SetViewport(void* c_this, void* viewport);
	[LinkName("QVideoFrameFormat_ScanLineDirection")]
	public static extern int64 QVideoFrameFormat_ScanLineDirection(void* c_this);
	[LinkName("QVideoFrameFormat_SetScanLineDirection")]
	public static extern void QVideoFrameFormat_SetScanLineDirection(void* c_this, int64 direction);
	[LinkName("QVideoFrameFormat_FrameRate")]
	public static extern double QVideoFrameFormat_FrameRate(void* c_this);
	[LinkName("QVideoFrameFormat_SetFrameRate")]
	public static extern void QVideoFrameFormat_SetFrameRate(void* c_this, double rate);
	[LinkName("QVideoFrameFormat_YCbCrColorSpace")]
	public static extern int64 QVideoFrameFormat_YCbCrColorSpace(void* c_this);
	[LinkName("QVideoFrameFormat_SetYCbCrColorSpace")]
	public static extern void QVideoFrameFormat_SetYCbCrColorSpace(void* c_this, int64 colorSpace);
	[LinkName("QVideoFrameFormat_ColorSpace")]
	public static extern int64 QVideoFrameFormat_ColorSpace(void* c_this);
	[LinkName("QVideoFrameFormat_SetColorSpace")]
	public static extern void QVideoFrameFormat_SetColorSpace(void* c_this, int64 colorSpace);
	[LinkName("QVideoFrameFormat_ColorTransfer")]
	public static extern int64 QVideoFrameFormat_ColorTransfer(void* c_this);
	[LinkName("QVideoFrameFormat_SetColorTransfer")]
	public static extern void QVideoFrameFormat_SetColorTransfer(void* c_this, int64 colorTransfer);
	[LinkName("QVideoFrameFormat_ColorRange")]
	public static extern int64 QVideoFrameFormat_ColorRange(void* c_this);
	[LinkName("QVideoFrameFormat_SetColorRange")]
	public static extern void QVideoFrameFormat_SetColorRange(void* c_this, int64 range);
	[LinkName("QVideoFrameFormat_IsMirrored")]
	public static extern bool QVideoFrameFormat_IsMirrored(void* c_this);
	[LinkName("QVideoFrameFormat_SetMirrored")]
	public static extern void QVideoFrameFormat_SetMirrored(void* c_this, bool mirrored);
	[LinkName("QVideoFrameFormat_VertexShaderFileName")]
	public static extern libqt_string QVideoFrameFormat_VertexShaderFileName(void* c_this);
	[LinkName("QVideoFrameFormat_FragmentShaderFileName")]
	public static extern libqt_string QVideoFrameFormat_FragmentShaderFileName(void* c_this);
	[LinkName("QVideoFrameFormat_MaxLuminance")]
	public static extern float QVideoFrameFormat_MaxLuminance(void* c_this);
	[LinkName("QVideoFrameFormat_SetMaxLuminance")]
	public static extern void QVideoFrameFormat_SetMaxLuminance(void* c_this, float lum);
	[LinkName("QVideoFrameFormat_PixelFormatFromImageFormat")]
	public static extern int64 QVideoFrameFormat_PixelFormatFromImageFormat(int64 format);
	[LinkName("QVideoFrameFormat_ImageFormatFromPixelFormat")]
	public static extern int64 QVideoFrameFormat_ImageFormatFromPixelFormat(int64 format);
	[LinkName("QVideoFrameFormat_PixelFormatToString")]
	public static extern libqt_string QVideoFrameFormat_PixelFormatToString(int64 pixelFormat);
	/// Delete this object from C++ memory
	[LinkName("QVideoFrameFormat_Delete")]
	public static extern void QVideoFrameFormat_Delete(void* self);
}