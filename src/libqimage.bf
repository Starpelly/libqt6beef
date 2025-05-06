using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QImage__InvertMode
{
	InvertRgb = 0,
	InvertRgba = 1,
}
[AllowDuplicates]
public enum QImage__Format
{
	Format_Invalid = 0,
	Format_Mono = 1,
	Format_MonoLSB = 2,
	Format_Indexed8 = 3,
	Format_RGB32 = 4,
	Format_ARGB32 = 5,
	Format_ARGB32_Premultiplied = 6,
	Format_RGB16 = 7,
	Format_ARGB8565_Premultiplied = 8,
	Format_RGB666 = 9,
	Format_ARGB6666_Premultiplied = 10,
	Format_RGB555 = 11,
	Format_ARGB8555_Premultiplied = 12,
	Format_RGB888 = 13,
	Format_RGB444 = 14,
	Format_ARGB4444_Premultiplied = 15,
	Format_RGBX8888 = 16,
	Format_RGBA8888 = 17,
	Format_RGBA8888_Premultiplied = 18,
	Format_BGR30 = 19,
	Format_A2BGR30_Premultiplied = 20,
	Format_RGB30 = 21,
	Format_A2RGB30_Premultiplied = 22,
	Format_Alpha8 = 23,
	Format_Grayscale8 = 24,
	Format_RGBX64 = 25,
	Format_RGBA64 = 26,
	Format_RGBA64_Premultiplied = 27,
	Format_Grayscale16 = 28,
	Format_BGR888 = 29,
	Format_RGBX16FPx4 = 30,
	Format_RGBA16FPx4 = 31,
	Format_RGBA16FPx4_Premultiplied = 32,
	Format_RGBX32FPx4 = 33,
	Format_RGBA32FPx4 = 34,
	Format_RGBA32FPx4_Premultiplied = 35,
	NImageFormats = 36,
}
public struct QImage
{
	[LinkName("QImage_new")]
	public static extern void* QImage_new();
	[LinkName("QImage_new2")]
	public static extern void* QImage_new2(QSize size, int64 format);
	[LinkName("QImage_new3")]
	public static extern void* QImage_new3(int32 width, int32 height, int64 format);
	[LinkName("QImage_new4")]
	public static extern void* QImage_new4(uint8 data, int32 width, int32 height, int64 format);
	[LinkName("QImage_new5")]
	public static extern void* QImage_new5(uint8 data, int32 width, int32 height, int64 format);
	[LinkName("QImage_new6")]
	public static extern void* QImage_new6(uint8 data, int32 width, int32 height, int32 bytesPerLine, int64 format);
	[LinkName("QImage_new7")]
	public static extern void* QImage_new7(uint8 data, int32 width, int32 height, int32 bytesPerLine, int64 format);
	[LinkName("QImage_new8")]
	public static extern void* QImage_new8(char8[] fileName);
	[LinkName("QImage_new9")]
	public static extern void* QImage_new9(QImage param1);
	[LinkName("QImage_new10")]
	public static extern void* QImage_new10(char8[] fileName, char8[] format);
	[LinkName("QImage_OperatorAssign")]
	public static extern void QImage_OperatorAssign(void* c_this, QImage param1);
	[LinkName("QImage_Swap")]
	public static extern void QImage_Swap(void* c_this, QImage other);
	[LinkName("QImage_IsNull")]
	public static extern bool QImage_IsNull(void* c_this);
	[LinkName("QImage_DevType")]
	public static extern int32 QImage_DevType(void* c_this);
	[LinkName("QImage_OperatorEqual")]
	public static extern bool QImage_OperatorEqual(void* c_this, QImage param1);
	[LinkName("QImage_OperatorNotEqual")]
	public static extern bool QImage_OperatorNotEqual(void* c_this, QImage param1);
	[LinkName("QImage_ToQVariant")]
	public static extern QVariant QImage_ToQVariant(void* c_this);
	[LinkName("QImage_Detach")]
	public static extern void QImage_Detach(void* c_this);
	[LinkName("QImage_IsDetached")]
	public static extern bool QImage_IsDetached(void* c_this);
	[LinkName("QImage_Copy")]
	public static extern QImage QImage_Copy(void* c_this);
	[LinkName("QImage_Copy2")]
	public static extern QImage QImage_Copy2(void* c_this, int32 x, int32 y, int32 w, int32 h);
	[LinkName("QImage_Format")]
	public static extern int64 QImage_Format(void* c_this);
	[LinkName("QImage_ConvertToFormat")]
	public static extern QImage QImage_ConvertToFormat(void* c_this, int64 f);
	[LinkName("QImage_ConvertToFormat2")]
	public static extern QImage QImage_ConvertToFormat2(void* c_this, int64 f, uint32[] colorTable);
	[LinkName("QImage_ReinterpretAsFormat")]
	public static extern bool QImage_ReinterpretAsFormat(void* c_this, int64 f);
	[LinkName("QImage_ConvertedTo")]
	public static extern QImage QImage_ConvertedTo(void* c_this, int64 f);
	[LinkName("QImage_ConvertTo")]
	public static extern void QImage_ConvertTo(void* c_this, int64 f);
	[LinkName("QImage_Width")]
	public static extern int32 QImage_Width(void* c_this);
	[LinkName("QImage_Height")]
	public static extern int32 QImage_Height(void* c_this);
	[LinkName("QImage_Size")]
	public static extern QSize QImage_Size(void* c_this);
	[LinkName("QImage_Rect")]
	public static extern QRect QImage_Rect(void* c_this);
	[LinkName("QImage_Depth")]
	public static extern int32 QImage_Depth(void* c_this);
	[LinkName("QImage_ColorCount")]
	public static extern int32 QImage_ColorCount(void* c_this);
	[LinkName("QImage_BitPlaneCount")]
	public static extern int32 QImage_BitPlaneCount(void* c_this);
	[LinkName("QImage_Color")]
	public static extern uint32 QImage_Color(void* c_this, int32 i);
	[LinkName("QImage_SetColor")]
	public static extern void QImage_SetColor(void* c_this, int32 i, uint32 c);
	[LinkName("QImage_SetColorCount")]
	public static extern void QImage_SetColorCount(void* c_this, int32 colorCount);
	[LinkName("QImage_AllGray")]
	public static extern bool QImage_AllGray(void* c_this);
	[LinkName("QImage_IsGrayscale")]
	public static extern bool QImage_IsGrayscale(void* c_this);
	[LinkName("QImage_Bits")]
	public static extern uint8 QImage_Bits(void* c_this);
	[LinkName("QImage_Bits2")]
	public static extern uint8 QImage_Bits2(void* c_this);
	[LinkName("QImage_ConstBits")]
	public static extern uint8 QImage_ConstBits(void* c_this);
	[LinkName("QImage_SizeInBytes")]
	public static extern int32 QImage_SizeInBytes(void* c_this);
	[LinkName("QImage_ScanLine")]
	public static extern uint8 QImage_ScanLine(void* c_this, int32 param1);
	[LinkName("QImage_ScanLineWithInt")]
	public static extern uint8 QImage_ScanLineWithInt(void* c_this, int32 param1);
	[LinkName("QImage_ConstScanLine")]
	public static extern uint8 QImage_ConstScanLine(void* c_this, int32 param1);
	[LinkName("QImage_BytesPerLine")]
	public static extern int32 QImage_BytesPerLine(void* c_this);
	[LinkName("QImage_Valid")]
	public static extern bool QImage_Valid(void* c_this, int32 x, int32 y);
	[LinkName("QImage_ValidWithPt")]
	public static extern bool QImage_ValidWithPt(void* c_this, QPoint pt);
	[LinkName("QImage_PixelIndex")]
	public static extern int32 QImage_PixelIndex(void* c_this, int32 x, int32 y);
	[LinkName("QImage_PixelIndexWithPt")]
	public static extern int32 QImage_PixelIndexWithPt(void* c_this, QPoint pt);
	[LinkName("QImage_Pixel")]
	public static extern uint32 QImage_Pixel(void* c_this, int32 x, int32 y);
	[LinkName("QImage_PixelWithPt")]
	public static extern uint32 QImage_PixelWithPt(void* c_this, QPoint pt);
	[LinkName("QImage_SetPixel")]
	public static extern void QImage_SetPixel(void* c_this, int32 x, int32 y, uint32 index_or_rgb);
	[LinkName("QImage_SetPixel2")]
	public static extern void QImage_SetPixel2(void* c_this, QPoint pt, uint32 index_or_rgb);
	[LinkName("QImage_PixelColor")]
	public static extern QColor QImage_PixelColor(void* c_this, int32 x, int32 y);
	[LinkName("QImage_PixelColorWithPt")]
	public static extern QColor QImage_PixelColorWithPt(void* c_this, QPoint pt);
	[LinkName("QImage_SetPixelColor")]
	public static extern void QImage_SetPixelColor(void* c_this, int32 x, int32 y, QColor c);
	[LinkName("QImage_SetPixelColor2")]
	public static extern void QImage_SetPixelColor2(void* c_this, QPoint pt, QColor c);
	[LinkName("QImage_ColorTable")]
	public static extern uint32[] QImage_ColorTable(void* c_this);
	[LinkName("QImage_SetColorTable")]
	public static extern void QImage_SetColorTable(void* c_this, uint32[] colors);
	[LinkName("QImage_DevicePixelRatio")]
	public static extern double QImage_DevicePixelRatio(void* c_this);
	[LinkName("QImage_SetDevicePixelRatio")]
	public static extern void QImage_SetDevicePixelRatio(void* c_this, double scaleFactor);
	[LinkName("QImage_DeviceIndependentSize")]
	public static extern QSizeF QImage_DeviceIndependentSize(void* c_this);
	[LinkName("QImage_Fill")]
	public static extern void QImage_Fill(void* c_this, uint32 pixel);
	[LinkName("QImage_FillWithColor")]
	public static extern void QImage_FillWithColor(void* c_this, QColor color);
	[LinkName("QImage_Fill2")]
	public static extern void QImage_Fill2(void* c_this, int64 color);
	[LinkName("QImage_HasAlphaChannel")]
	public static extern bool QImage_HasAlphaChannel(void* c_this);
	[LinkName("QImage_SetAlphaChannel")]
	public static extern void QImage_SetAlphaChannel(void* c_this, QImage alphaChannel);
	[LinkName("QImage_CreateAlphaMask")]
	public static extern QImage QImage_CreateAlphaMask(void* c_this);
	[LinkName("QImage_CreateHeuristicMask")]
	public static extern QImage QImage_CreateHeuristicMask(void* c_this);
	[LinkName("QImage_CreateMaskFromColor")]
	public static extern QImage QImage_CreateMaskFromColor(void* c_this, uint32 color);
	[LinkName("QImage_Scaled")]
	public static extern QImage QImage_Scaled(void* c_this, int32 w, int32 h);
	[LinkName("QImage_ScaledWithQSize")]
	public static extern QImage QImage_ScaledWithQSize(void* c_this, QSize s);
	[LinkName("QImage_ScaledToWidth")]
	public static extern QImage QImage_ScaledToWidth(void* c_this, int32 w);
	[LinkName("QImage_ScaledToHeight")]
	public static extern QImage QImage_ScaledToHeight(void* c_this, int32 h);
	[LinkName("QImage_Transformed")]
	public static extern QImage QImage_Transformed(void* c_this, QTransform matrix);
	[LinkName("QImage_TrueMatrix")]
	public static extern QTransform QImage_TrueMatrix(QTransform param1, int32 w, int32 h);
	[LinkName("QImage_Mirrored")]
	public static extern QImage QImage_Mirrored(void* c_this);
	[LinkName("QImage_RgbSwapped")]
	public static extern QImage QImage_RgbSwapped(void* c_this);
	[LinkName("QImage_Mirror")]
	public static extern void QImage_Mirror(void* c_this);
	[LinkName("QImage_RgbSwap")]
	public static extern void QImage_RgbSwap(void* c_this);
	[LinkName("QImage_InvertPixels")]
	public static extern void QImage_InvertPixels(void* c_this);
	[LinkName("QImage_ColorSpace")]
	public static extern QColorSpace QImage_ColorSpace(void* c_this);
	[LinkName("QImage_ConvertedToColorSpace")]
	public static extern QImage QImage_ConvertedToColorSpace(void* c_this, QColorSpace param1);
	[LinkName("QImage_ConvertToColorSpace")]
	public static extern void QImage_ConvertToColorSpace(void* c_this, QColorSpace param1);
	[LinkName("QImage_SetColorSpace")]
	public static extern void QImage_SetColorSpace(void* c_this, QColorSpace colorSpace);
	[LinkName("QImage_ColorTransformed")]
	public static extern QImage QImage_ColorTransformed(void* c_this, QColorTransform transform);
	[LinkName("QImage_ApplyColorTransform")]
	public static extern void QImage_ApplyColorTransform(void* c_this, QColorTransform transform);
	[LinkName("QImage_Load")]
	public static extern bool QImage_Load(void* c_this, QIODevice device, char8[] format);
	[LinkName("QImage_LoadWithFileName")]
	public static extern bool QImage_LoadWithFileName(void* c_this, char8[] fileName);
	[LinkName("QImage_LoadFromData")]
	public static extern bool QImage_LoadFromData(void* c_this, char8[] data);
	[LinkName("QImage_LoadFromData2")]
	public static extern bool QImage_LoadFromData2(void* c_this, uint8 buf, int32 lenVal);
	[LinkName("QImage_LoadFromDataWithData")]
	public static extern bool QImage_LoadFromDataWithData(void* c_this, uint8[] data);
	[LinkName("QImage_Save")]
	public static extern bool QImage_Save(void* c_this, char8[] fileName);
	[LinkName("QImage_SaveWithDevice")]
	public static extern bool QImage_SaveWithDevice(void* c_this, QIODevice device);
	[LinkName("QImage_FromData")]
	public static extern QImage QImage_FromData(char8[] data);
	[LinkName("QImage_FromData2")]
	public static extern QImage QImage_FromData2(uint8 data, int32 size);
	[LinkName("QImage_FromDataWithData")]
	public static extern QImage QImage_FromDataWithData(uint8[] data);
	[LinkName("QImage_CacheKey")]
	public static extern int64 QImage_CacheKey(void* c_this);
	[LinkName("QImage_PaintEngine")]
	public static extern QPaintEngine QImage_PaintEngine(void* c_this);
	[LinkName("QImage_DotsPerMeterX")]
	public static extern int32 QImage_DotsPerMeterX(void* c_this);
	[LinkName("QImage_DotsPerMeterY")]
	public static extern int32 QImage_DotsPerMeterY(void* c_this);
	[LinkName("QImage_SetDotsPerMeterX")]
	public static extern void QImage_SetDotsPerMeterX(void* c_this, int32 dotsPerMeterX);
	[LinkName("QImage_SetDotsPerMeterY")]
	public static extern void QImage_SetDotsPerMeterY(void* c_this, int32 dotsPerMeterY);
	[LinkName("QImage_Offset")]
	public static extern QPoint QImage_Offset(void* c_this);
	[LinkName("QImage_SetOffset")]
	public static extern void QImage_SetOffset(void* c_this, QPoint offset);
	[LinkName("QImage_TextKeys")]
	public static extern char8[][] QImage_TextKeys(void* c_this);
	[LinkName("QImage_Text")]
	public static extern char8[] QImage_Text(void* c_this);
	[LinkName("QImage_SetText")]
	public static extern void QImage_SetText(void* c_this, char8[] key, char8[] value);
	[LinkName("QImage_PixelFormat")]
	public static extern QPixelFormat QImage_PixelFormat(void* c_this);
	[LinkName("QImage_ToPixelFormat")]
	public static extern QPixelFormat QImage_ToPixelFormat(int64 format);
	[LinkName("QImage_ToImageFormat")]
	public static extern int64 QImage_ToImageFormat(QPixelFormat format);
	[LinkName("QImage_Metric")]
	public static extern int32 QImage_Metric(void* c_this, int64 metric);
	[LinkName("QImage_MirroredHelper")]
	public static extern QImage QImage_MirroredHelper(void* c_this, bool horizontal, bool vertical);
	[LinkName("QImage_RgbSwappedHelper")]
	public static extern QImage QImage_RgbSwappedHelper(void* c_this);
	[LinkName("QImage_MirroredInplace")]
	public static extern void QImage_MirroredInplace(void* c_this, bool horizontal, bool vertical);
	[LinkName("QImage_RgbSwappedInplace")]
	public static extern void QImage_RgbSwappedInplace(void* c_this);
	[LinkName("QImage_ConvertToFormatHelper")]
	public static extern QImage QImage_ConvertToFormatHelper(void* c_this, int64 format, int64 flags);
	[LinkName("QImage_ConvertToFormatInplace")]
	public static extern bool QImage_ConvertToFormatInplace(void* c_this, int64 format, int64 flags);
	[LinkName("QImage_SmoothScaled")]
	public static extern QImage QImage_SmoothScaled(void* c_this, int32 w, int32 h);
	[LinkName("QImage_DetachMetadata")]
	public static extern void QImage_DetachMetadata(void* c_this);
	[LinkName("QImage_Copy1")]
	public static extern QImage QImage_Copy1(void* c_this, QRect rect);
	[LinkName("QImage_ConvertToFormat22")]
	public static extern QImage QImage_ConvertToFormat22(void* c_this, int64 f, int64 flags);
	[LinkName("QImage_ConvertToFormat3")]
	public static extern QImage QImage_ConvertToFormat3(void* c_this, int64 f, uint32[] colorTable, int64 flags);
	[LinkName("QImage_ConvertedTo2")]
	public static extern QImage QImage_ConvertedTo2(void* c_this, int64 f, int64 flags);
	[LinkName("QImage_ConvertTo2")]
	public static extern void QImage_ConvertTo2(void* c_this, int64 f, int64 flags);
	[LinkName("QImage_CreateAlphaMask1")]
	public static extern QImage QImage_CreateAlphaMask1(void* c_this, int64 flags);
	[LinkName("QImage_CreateHeuristicMask1")]
	public static extern QImage QImage_CreateHeuristicMask1(void* c_this, bool clipTight);
	[LinkName("QImage_CreateMaskFromColor2")]
	public static extern QImage QImage_CreateMaskFromColor2(void* c_this, uint32 color, int64 mode);
	[LinkName("QImage_Scaled3")]
	public static extern QImage QImage_Scaled3(void* c_this, int32 w, int32 h, int64 aspectMode);
	[LinkName("QImage_Scaled4")]
	public static extern QImage QImage_Scaled4(void* c_this, int32 w, int32 h, int64 aspectMode, int64 mode);
	[LinkName("QImage_Scaled2")]
	public static extern QImage QImage_Scaled2(void* c_this, QSize s, int64 aspectMode);
	[LinkName("QImage_Scaled32")]
	public static extern QImage QImage_Scaled32(void* c_this, QSize s, int64 aspectMode, int64 mode);
	[LinkName("QImage_ScaledToWidth2")]
	public static extern QImage QImage_ScaledToWidth2(void* c_this, int32 w, int64 mode);
	[LinkName("QImage_ScaledToHeight2")]
	public static extern QImage QImage_ScaledToHeight2(void* c_this, int32 h, int64 mode);
	[LinkName("QImage_Transformed2")]
	public static extern QImage QImage_Transformed2(void* c_this, QTransform matrix, int64 mode);
	[LinkName("QImage_Mirrored1")]
	public static extern QImage QImage_Mirrored1(void* c_this, bool horizontally);
	[LinkName("QImage_Mirrored2")]
	public static extern QImage QImage_Mirrored2(void* c_this, bool horizontally, bool vertically);
	[LinkName("QImage_Mirror1")]
	public static extern void QImage_Mirror1(void* c_this, bool horizontally);
	[LinkName("QImage_Mirror2")]
	public static extern void QImage_Mirror2(void* c_this, bool horizontally, bool vertically);
	[LinkName("QImage_InvertPixels1")]
	public static extern void QImage_InvertPixels1(void* c_this, int64 param1);
	[LinkName("QImage_Load2")]
	public static extern bool QImage_Load2(void* c_this, char8[] fileName, char8[] format);
	[LinkName("QImage_LoadFromData22")]
	public static extern bool QImage_LoadFromData22(void* c_this, char8[] data, char8[] format);
	[LinkName("QImage_LoadFromData3")]
	public static extern bool QImage_LoadFromData3(void* c_this, uint8 buf, int32 lenVal, char8[] format);
	[LinkName("QImage_LoadFromData23")]
	public static extern bool QImage_LoadFromData23(void* c_this, uint8[] data, char8[] format);
	[LinkName("QImage_Save2")]
	public static extern bool QImage_Save2(void* c_this, char8[] fileName, char8[] format);
	[LinkName("QImage_Save3")]
	public static extern bool QImage_Save3(void* c_this, char8[] fileName, char8[] format, int32 quality);
	[LinkName("QImage_Save22")]
	public static extern bool QImage_Save22(void* c_this, QIODevice device, char8[] format);
	[LinkName("QImage_Save32")]
	public static extern bool QImage_Save32(void* c_this, QIODevice device, char8[] format, int32 quality);
	[LinkName("QImage_FromData22")]
	public static extern QImage QImage_FromData22(char8[] data, char8[] format);
	[LinkName("QImage_FromData3")]
	public static extern QImage QImage_FromData3(uint8 data, int32 size, char8[] format);
	[LinkName("QImage_FromData23")]
	public static extern QImage QImage_FromData23(uint8[] data, char8[] format);
	[LinkName("QImage_Text1")]
	public static extern char8[] QImage_Text1(void* c_this, char8[] key);
	[LinkName("QImage_DetachMetadata1")]
	public static extern void QImage_DetachMetadata1(void* c_this, bool invalidateCache);
}