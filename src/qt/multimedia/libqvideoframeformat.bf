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
public struct QVideoFrameFormat
{
	[LinkName("QVideoFrameFormat_new")]
	public static extern QVideoFrameFormat* QVideoFrameFormat_new();
	[LinkName("QVideoFrameFormat_new2")]
	public static extern QVideoFrameFormat* QVideoFrameFormat_new2(QSize* size, int64 pixelFormat);
	[LinkName("QVideoFrameFormat_new3")]
	public static extern QVideoFrameFormat* QVideoFrameFormat_new3(QVideoFrameFormat* format);
	[LinkName("QVideoFrameFormat_Swap")]
	public static extern void QVideoFrameFormat_Swap(Self* c_this, QVideoFrameFormat* other);
	[LinkName("QVideoFrameFormat_Detach")]
	public static extern void QVideoFrameFormat_Detach(Self* c_this);
	[LinkName("QVideoFrameFormat_OperatorAssign")]
	public static extern void QVideoFrameFormat_OperatorAssign(Self* c_this, QVideoFrameFormat* format);
	[LinkName("QVideoFrameFormat_OperatorEqual")]
	public static extern bool QVideoFrameFormat_OperatorEqual(Self* c_this, QVideoFrameFormat* format);
	[LinkName("QVideoFrameFormat_OperatorNotEqual")]
	public static extern bool QVideoFrameFormat_OperatorNotEqual(Self* c_this, QVideoFrameFormat* format);
	[LinkName("QVideoFrameFormat_IsValid")]
	public static extern bool QVideoFrameFormat_IsValid(Self* c_this);
	[LinkName("QVideoFrameFormat_PixelFormat")]
	public static extern int64 QVideoFrameFormat_PixelFormat(Self* c_this);
	[LinkName("QVideoFrameFormat_FrameSize")]
	public static extern QSize QVideoFrameFormat_FrameSize(Self* c_this);
	[LinkName("QVideoFrameFormat_SetFrameSize")]
	public static extern void QVideoFrameFormat_SetFrameSize(Self* c_this, QSize* size);
	[LinkName("QVideoFrameFormat_SetFrameSize2")]
	public static extern void QVideoFrameFormat_SetFrameSize2(Self* c_this, int32 width, int32 height);
	[LinkName("QVideoFrameFormat_FrameWidth")]
	public static extern int32 QVideoFrameFormat_FrameWidth(Self* c_this);
	[LinkName("QVideoFrameFormat_FrameHeight")]
	public static extern int32 QVideoFrameFormat_FrameHeight(Self* c_this);
	[LinkName("QVideoFrameFormat_PlaneCount")]
	public static extern int32 QVideoFrameFormat_PlaneCount(Self* c_this);
	[LinkName("QVideoFrameFormat_Viewport")]
	public static extern QRect QVideoFrameFormat_Viewport(Self* c_this);
	[LinkName("QVideoFrameFormat_SetViewport")]
	public static extern void QVideoFrameFormat_SetViewport(Self* c_this, QRect* viewport);
	[LinkName("QVideoFrameFormat_ScanLineDirection")]
	public static extern int64 QVideoFrameFormat_ScanLineDirection(Self* c_this);
	[LinkName("QVideoFrameFormat_SetScanLineDirection")]
	public static extern void QVideoFrameFormat_SetScanLineDirection(Self* c_this, int64 direction);
	[LinkName("QVideoFrameFormat_FrameRate")]
	public static extern double QVideoFrameFormat_FrameRate(Self* c_this);
	[LinkName("QVideoFrameFormat_SetFrameRate")]
	public static extern void QVideoFrameFormat_SetFrameRate(Self* c_this, double rate);
	[LinkName("QVideoFrameFormat_YCbCrColorSpace")]
	public static extern int64 QVideoFrameFormat_YCbCrColorSpace(Self* c_this);
	[LinkName("QVideoFrameFormat_SetYCbCrColorSpace")]
	public static extern void QVideoFrameFormat_SetYCbCrColorSpace(Self* c_this, int64 colorSpace);
	[LinkName("QVideoFrameFormat_ColorSpace")]
	public static extern int64 QVideoFrameFormat_ColorSpace(Self* c_this);
	[LinkName("QVideoFrameFormat_SetColorSpace")]
	public static extern void QVideoFrameFormat_SetColorSpace(Self* c_this, int64 colorSpace);
	[LinkName("QVideoFrameFormat_ColorTransfer")]
	public static extern int64 QVideoFrameFormat_ColorTransfer(Self* c_this);
	[LinkName("QVideoFrameFormat_SetColorTransfer")]
	public static extern void QVideoFrameFormat_SetColorTransfer(Self* c_this, int64 colorTransfer);
	[LinkName("QVideoFrameFormat_ColorRange")]
	public static extern int64 QVideoFrameFormat_ColorRange(Self* c_this);
	[LinkName("QVideoFrameFormat_SetColorRange")]
	public static extern void QVideoFrameFormat_SetColorRange(Self* c_this, int64 range);
	[LinkName("QVideoFrameFormat_IsMirrored")]
	public static extern bool QVideoFrameFormat_IsMirrored(Self* c_this);
	[LinkName("QVideoFrameFormat_SetMirrored")]
	public static extern void QVideoFrameFormat_SetMirrored(Self* c_this, bool mirrored);
	[LinkName("QVideoFrameFormat_VertexShaderFileName")]
	public static extern libqt_string QVideoFrameFormat_VertexShaderFileName(Self* c_this);
	[LinkName("QVideoFrameFormat_FragmentShaderFileName")]
	public static extern libqt_string QVideoFrameFormat_FragmentShaderFileName(Self* c_this);
	[LinkName("QVideoFrameFormat_MaxLuminance")]
	public static extern float QVideoFrameFormat_MaxLuminance(Self* c_this);
	[LinkName("QVideoFrameFormat_SetMaxLuminance")]
	public static extern void QVideoFrameFormat_SetMaxLuminance(Self* c_this, float lum);
	[LinkName("QVideoFrameFormat_PixelFormatFromImageFormat")]
	public static extern int64 QVideoFrameFormat_PixelFormatFromImageFormat(int64 format);
	[LinkName("QVideoFrameFormat_ImageFormatFromPixelFormat")]
	public static extern int64 QVideoFrameFormat_ImageFormatFromPixelFormat(int64 format);
	[LinkName("QVideoFrameFormat_PixelFormatToString")]
	public static extern libqt_string QVideoFrameFormat_PixelFormatToString(int64 pixelFormat);
}