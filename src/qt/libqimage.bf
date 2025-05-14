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
public interface IQImage
{
	void* NativePtr { get; }
}
public struct QImagePtr : IQImage, IDisposable, IQPaintDevice
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QImage_new());
	}
	
	public void Dispose()
	{
		CQt.QImage_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQImage param1)
	{
		CQt.QImage_OperatorAssign(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void Swap(IQImage other)
	{
		CQt.QImage_Swap(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool IsNull()
	{
		return CQt.QImage_IsNull(this.nativePtr);
	}
	
	public int32 DevType()
	{
		return CQt.QImage_DevType(this.nativePtr);
	}
	
	public bool OperatorEqual(IQImage param1)
	{
		return CQt.QImage_OperatorEqual(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public bool OperatorNotEqual(IQImage param1)
	{
		return CQt.QImage_OperatorNotEqual(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void ToQVariant()
	{
		CQt.QImage_ToQVariant(this.nativePtr);
	}
	
	public void Detach()
	{
		CQt.QImage_Detach(this.nativePtr);
	}
	
	public bool IsDetached()
	{
		return CQt.QImage_IsDetached(this.nativePtr);
	}
	
	public void Copy()
	{
		CQt.QImage_Copy(this.nativePtr);
	}
	
	public void Copy2(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QImage_Copy2(this.nativePtr, x, y, w, h);
	}
	
	public int64 Format()
	{
		return CQt.QImage_Format(this.nativePtr);
	}
	
	public void ConvertToFormat(int64 f)
	{
		CQt.QImage_ConvertToFormat(this.nativePtr, (int64)f);
	}
	
	public void ConvertToFormat2(int64 f, uint32[] colorTable)
	{
		CQt.QImage_ConvertToFormat2(this.nativePtr, (int64)f, null);
	}
	
	public bool ReinterpretAsFormat(int64 f)
	{
		return CQt.QImage_ReinterpretAsFormat(this.nativePtr, (int64)f);
	}
	
	public void ConvertedTo(int64 f)
	{
		CQt.QImage_ConvertedTo(this.nativePtr, (int64)f);
	}
	
	public void ConvertTo(int64 f)
	{
		CQt.QImage_ConvertTo(this.nativePtr, (int64)f);
	}
	
	public int32 Width()
	{
		return CQt.QImage_Width(this.nativePtr);
	}
	
	public int32 Height()
	{
		return CQt.QImage_Height(this.nativePtr);
	}
	
	public void Size()
	{
		CQt.QImage_Size(this.nativePtr);
	}
	
	public void Rect()
	{
		CQt.QImage_Rect(this.nativePtr);
	}
	
	public int32 Depth()
	{
		return CQt.QImage_Depth(this.nativePtr);
	}
	
	public int32 ColorCount()
	{
		return CQt.QImage_ColorCount(this.nativePtr);
	}
	
	public int32 BitPlaneCount()
	{
		return CQt.QImage_BitPlaneCount(this.nativePtr);
	}
	
	public uint32 Color(int32 i)
	{
		return CQt.QImage_Color(this.nativePtr, i);
	}
	
	public void SetColor(int32 i, uint32 c)
	{
		CQt.QImage_SetColor(this.nativePtr, i, c);
	}
	
	public void SetColorCount(int32 colorCount)
	{
		CQt.QImage_SetColorCount(this.nativePtr, colorCount);
	}
	
	public bool AllGray()
	{
		return CQt.QImage_AllGray(this.nativePtr);
	}
	
	public bool IsGrayscale()
	{
		return CQt.QImage_IsGrayscale(this.nativePtr);
	}
	
	public uint8* Bits()
	{
		return CQt.QImage_Bits(this.nativePtr);
	}
	
	public uint8* Bits2()
	{
		return CQt.QImage_Bits2(this.nativePtr);
	}
	
	public uint8* ConstBits()
	{
		return CQt.QImage_ConstBits(this.nativePtr);
	}
	
	public int32 SizeInBytes()
	{
		return CQt.QImage_SizeInBytes(this.nativePtr);
	}
	
	public uint8* ScanLine(int32 param1)
	{
		return CQt.QImage_ScanLine(this.nativePtr, param1);
	}
	
	public uint8* ScanLineWithInt(int32 param1)
	{
		return CQt.QImage_ScanLineWithInt(this.nativePtr, param1);
	}
	
	public uint8* ConstScanLine(int32 param1)
	{
		return CQt.QImage_ConstScanLine(this.nativePtr, param1);
	}
	
	public int32 BytesPerLine()
	{
		return CQt.QImage_BytesPerLine(this.nativePtr);
	}
	
	public bool Valid(int32 x, int32 y)
	{
		return CQt.QImage_Valid(this.nativePtr, x, y);
	}
	
	public bool ValidWithPt(IQPoint pt)
	{
		return CQt.QImage_ValidWithPt(this.nativePtr, (pt == default || pt.NativePtr == default) ? default : pt.NativePtr);
	}
	
	public int32 PixelIndex(int32 x, int32 y)
	{
		return CQt.QImage_PixelIndex(this.nativePtr, x, y);
	}
	
	public int32 PixelIndexWithPt(IQPoint pt)
	{
		return CQt.QImage_PixelIndexWithPt(this.nativePtr, (pt == default || pt.NativePtr == default) ? default : pt.NativePtr);
	}
	
	public uint32 Pixel(int32 x, int32 y)
	{
		return CQt.QImage_Pixel(this.nativePtr, x, y);
	}
	
	public uint32 PixelWithPt(IQPoint pt)
	{
		return CQt.QImage_PixelWithPt(this.nativePtr, (pt == default || pt.NativePtr == default) ? default : pt.NativePtr);
	}
	
	public void SetPixel(int32 x, int32 y, uint32 index_or_rgb)
	{
		CQt.QImage_SetPixel(this.nativePtr, x, y, index_or_rgb);
	}
	
	public void SetPixel2(IQPoint pt, uint32 index_or_rgb)
	{
		CQt.QImage_SetPixel2(this.nativePtr, (pt == default || pt.NativePtr == default) ? default : pt.NativePtr, index_or_rgb);
	}
	
	public void PixelColor(int32 x, int32 y)
	{
		CQt.QImage_PixelColor(this.nativePtr, x, y);
	}
	
	public void PixelColorWithPt(IQPoint pt)
	{
		CQt.QImage_PixelColorWithPt(this.nativePtr, (pt == default || pt.NativePtr == default) ? default : pt.NativePtr);
	}
	
	public void SetPixelColor(int32 x, int32 y, IQColor c)
	{
		CQt.QImage_SetPixelColor(this.nativePtr, x, y, (c == default || c.NativePtr == default) ? default : c.NativePtr);
	}
	
	public void SetPixelColor2(IQPoint pt, IQColor c)
	{
		CQt.QImage_SetPixelColor2(this.nativePtr, (pt == default || pt.NativePtr == default) ? default : pt.NativePtr, (c == default || c.NativePtr == default) ? default : c.NativePtr);
	}
	
	public uint32[] ColorTable()
	{
		return CQt.QImage_ColorTable(this.nativePtr);
	}
	
	public void SetColorTable(uint32[] colors)
	{
		CQt.QImage_SetColorTable(this.nativePtr, null);
	}
	
	public double DevicePixelRatio()
	{
		return CQt.QImage_DevicePixelRatio(this.nativePtr);
	}
	
	public void SetDevicePixelRatio(double scaleFactor)
	{
		CQt.QImage_SetDevicePixelRatio(this.nativePtr, scaleFactor);
	}
	
	public void DeviceIndependentSize()
	{
		CQt.QImage_DeviceIndependentSize(this.nativePtr);
	}
	
	public void Fill(uint32 pixel)
	{
		CQt.QImage_Fill(this.nativePtr, pixel);
	}
	
	public void FillWithColor(IQColor color)
	{
		CQt.QImage_FillWithColor(this.nativePtr, (color == default || color.NativePtr == default) ? default : color.NativePtr);
	}
	
	public void Fill2(int64 color)
	{
		CQt.QImage_Fill2(this.nativePtr, (int64)color);
	}
	
	public bool HasAlphaChannel()
	{
		return CQt.QImage_HasAlphaChannel(this.nativePtr);
	}
	
	public void SetAlphaChannel(IQImage alphaChannel)
	{
		CQt.QImage_SetAlphaChannel(this.nativePtr, (alphaChannel == default || alphaChannel.NativePtr == default) ? default : alphaChannel.NativePtr);
	}
	
	public void CreateAlphaMask()
	{
		CQt.QImage_CreateAlphaMask(this.nativePtr);
	}
	
	public void CreateHeuristicMask()
	{
		CQt.QImage_CreateHeuristicMask(this.nativePtr);
	}
	
	public void CreateMaskFromColor(uint32 color)
	{
		CQt.QImage_CreateMaskFromColor(this.nativePtr, color);
	}
	
	public void Scaled(int32 w, int32 h)
	{
		CQt.QImage_Scaled(this.nativePtr, w, h);
	}
	
	public void ScaledWithQSize(IQSize s)
	{
		CQt.QImage_ScaledWithQSize(this.nativePtr, (s == default || s.NativePtr == default) ? default : s.NativePtr);
	}
	
	public void ScaledToWidth(int32 w)
	{
		CQt.QImage_ScaledToWidth(this.nativePtr, w);
	}
	
	public void ScaledToHeight(int32 h)
	{
		CQt.QImage_ScaledToHeight(this.nativePtr, h);
	}
	
	public void Transformed(IQTransform matrix)
	{
		CQt.QImage_Transformed(this.nativePtr, (matrix == default || matrix.NativePtr == default) ? default : matrix.NativePtr);
	}
	
	public static void TrueMatrix(IQTransform param1, int32 w, int32 h)
	{
		CQt.QImage_TrueMatrix((param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, w, h);
	}
	
	public void Mirrored()
	{
		CQt.QImage_Mirrored(this.nativePtr);
	}
	
	public void RgbSwapped()
	{
		CQt.QImage_RgbSwapped(this.nativePtr);
	}
	
	public void Mirror()
	{
		CQt.QImage_Mirror(this.nativePtr);
	}
	
	public void RgbSwap()
	{
		CQt.QImage_RgbSwap(this.nativePtr);
	}
	
	public void InvertPixels()
	{
		CQt.QImage_InvertPixels(this.nativePtr);
	}
	
	public void ColorSpace()
	{
		CQt.QImage_ColorSpace(this.nativePtr);
	}
	
	public void ConvertedToColorSpace(IQColorSpace param1)
	{
		CQt.QImage_ConvertedToColorSpace(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void ConvertToColorSpace(IQColorSpace param1)
	{
		CQt.QImage_ConvertToColorSpace(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void SetColorSpace(IQColorSpace colorSpace)
	{
		CQt.QImage_SetColorSpace(this.nativePtr, (colorSpace == default || colorSpace.NativePtr == default) ? default : colorSpace.NativePtr);
	}
	
	public void ColorTransformed(IQColorTransform transform)
	{
		CQt.QImage_ColorTransformed(this.nativePtr, (transform == default || transform.NativePtr == default) ? default : transform.NativePtr);
	}
	
	public void ApplyColorTransform(IQColorTransform transform)
	{
		CQt.QImage_ApplyColorTransform(this.nativePtr, (transform == default || transform.NativePtr == default) ? default : transform.NativePtr);
	}
	
	public bool Load(IQIODevice device, char8* format)
	{
		return CQt.QImage_Load(this.nativePtr, (device == default || device.NativePtr == default) ? default : device.NativePtr, format);
	}
	
	public bool LoadWithFileName(String fileName)
	{
		return CQt.QImage_LoadWithFileName(this.nativePtr, libqt_string(fileName));
	}
	
	public bool LoadFromData(char8* data)
	{
		return CQt.QImage_LoadFromData(this.nativePtr, data);
	}
	
	public bool LoadFromData2(uint8* buf, int32 lenVal)
	{
		return CQt.QImage_LoadFromData2(this.nativePtr, buf, lenVal);
	}
	
	public bool LoadFromDataWithData(String data)
	{
		return CQt.QImage_LoadFromDataWithData(this.nativePtr, libqt_string(data));
	}
	
	public bool Save(String fileName)
	{
		return CQt.QImage_Save(this.nativePtr, libqt_string(fileName));
	}
	
	public bool SaveWithDevice(IQIODevice device)
	{
		return CQt.QImage_SaveWithDevice(this.nativePtr, (device == default || device.NativePtr == default) ? default : device.NativePtr);
	}
	
	public static void FromData(char8* data)
	{
		CQt.QImage_FromData(data);
	}
	
	public static void FromData2(uint8* data, int32 size)
	{
		CQt.QImage_FromData2(data, size);
	}
	
	public static void FromDataWithData(String data)
	{
		CQt.QImage_FromDataWithData(libqt_string(data));
	}
	
	public int64 CacheKey()
	{
		return CQt.QImage_CacheKey(this.nativePtr);
	}
	
	public void* PaintEngine()
	{
		return CQt.QImage_PaintEngine(this.nativePtr);
	}
	
	public int32 DotsPerMeterX()
	{
		return CQt.QImage_DotsPerMeterX(this.nativePtr);
	}
	
	public int32 DotsPerMeterY()
	{
		return CQt.QImage_DotsPerMeterY(this.nativePtr);
	}
	
	public void SetDotsPerMeterX(int32 dotsPerMeterX)
	{
		CQt.QImage_SetDotsPerMeterX(this.nativePtr, dotsPerMeterX);
	}
	
	public void SetDotsPerMeterY(int32 dotsPerMeterY)
	{
		CQt.QImage_SetDotsPerMeterY(this.nativePtr, dotsPerMeterY);
	}
	
	public void Offset()
	{
		CQt.QImage_Offset(this.nativePtr);
	}
	
	public void SetOffset(IQPoint offset)
	{
		CQt.QImage_SetOffset(this.nativePtr, (offset == default || offset.NativePtr == default) ? default : offset.NativePtr);
	}
	
	public libqt_string[] TextKeys()
	{
		return CQt.QImage_TextKeys(this.nativePtr);
	}
	
	public libqt_string Text()
	{
		return CQt.QImage_Text(this.nativePtr);
	}
	
	public void SetText(String key, String value)
	{
		CQt.QImage_SetText(this.nativePtr, libqt_string(key), libqt_string(value));
	}
	
	public void PixelFormat()
	{
		CQt.QImage_PixelFormat(this.nativePtr);
	}
	
	public static void ToPixelFormat(int64 format)
	{
		CQt.QImage_ToPixelFormat((int64)format);
	}
	
	public static int64 ToImageFormat(IQPixelFormat format)
	{
		return CQt.QImage_ToImageFormat(default);
	}
	
	public int32 Metric(int64 metric)
	{
		return CQt.QImage_Metric(this.nativePtr, (int64)metric);
	}
	
	public void MirroredHelper(bool horizontal, bool vertical)
	{
		CQt.QImage_MirroredHelper(this.nativePtr, horizontal, vertical);
	}
	
	public void RgbSwappedHelper()
	{
		CQt.QImage_RgbSwappedHelper(this.nativePtr);
	}
	
	public void MirroredInplace(bool horizontal, bool vertical)
	{
		CQt.QImage_MirroredInplace(this.nativePtr, horizontal, vertical);
	}
	
	public void RgbSwappedInplace()
	{
		CQt.QImage_RgbSwappedInplace(this.nativePtr);
	}
	
	public void ConvertToFormatHelper(int64 format, int64 flags)
	{
		CQt.QImage_ConvertToFormatHelper(this.nativePtr, (int64)format, flags);
	}
	
	public bool ConvertToFormatInplace(int64 format, int64 flags)
	{
		return CQt.QImage_ConvertToFormatInplace(this.nativePtr, (int64)format, flags);
	}
	
	public void SmoothScaled(int32 w, int32 h)
	{
		CQt.QImage_SmoothScaled(this.nativePtr, w, h);
	}
	
	public void DetachMetadata()
	{
		CQt.QImage_DetachMetadata(this.nativePtr);
	}
	
	public void Copy1(IQRect rect)
	{
		CQt.QImage_Copy1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void ConvertToFormat22(int64 f, int64 flags)
	{
		CQt.QImage_ConvertToFormat22(this.nativePtr, (int64)f, flags);
	}
	
	public void ConvertToFormat3(int64 f, uint32[] colorTable, int64 flags)
	{
		CQt.QImage_ConvertToFormat3(this.nativePtr, (int64)f, null, flags);
	}
	
	public void ConvertedTo2(int64 f, int64 flags)
	{
		CQt.QImage_ConvertedTo2(this.nativePtr, (int64)f, flags);
	}
	
	public void ConvertTo2(int64 f, int64 flags)
	{
		CQt.QImage_ConvertTo2(this.nativePtr, (int64)f, flags);
	}
	
	public void CreateAlphaMask1(int64 flags)
	{
		CQt.QImage_CreateAlphaMask1(this.nativePtr, flags);
	}
	
	public void CreateHeuristicMask1(bool clipTight)
	{
		CQt.QImage_CreateHeuristicMask1(this.nativePtr, clipTight);
	}
	
	public void CreateMaskFromColor2(uint32 color, int64 mode)
	{
		CQt.QImage_CreateMaskFromColor2(this.nativePtr, color, (int64)mode);
	}
	
	public void Scaled3(int32 w, int32 h, int64 aspectMode)
	{
		CQt.QImage_Scaled3(this.nativePtr, w, h, (int64)aspectMode);
	}
	
	public void Scaled4(int32 w, int32 h, int64 aspectMode, int64 mode)
	{
		CQt.QImage_Scaled4(this.nativePtr, w, h, (int64)aspectMode, (int64)mode);
	}
	
	public void Scaled2(IQSize s, int64 aspectMode)
	{
		CQt.QImage_Scaled2(this.nativePtr, (s == default || s.NativePtr == default) ? default : s.NativePtr, (int64)aspectMode);
	}
	
	public void Scaled32(IQSize s, int64 aspectMode, int64 mode)
	{
		CQt.QImage_Scaled32(this.nativePtr, (s == default || s.NativePtr == default) ? default : s.NativePtr, (int64)aspectMode, (int64)mode);
	}
	
	public void ScaledToWidth2(int32 w, int64 mode)
	{
		CQt.QImage_ScaledToWidth2(this.nativePtr, w, (int64)mode);
	}
	
	public void ScaledToHeight2(int32 h, int64 mode)
	{
		CQt.QImage_ScaledToHeight2(this.nativePtr, h, (int64)mode);
	}
	
	public void Transformed2(IQTransform matrix, int64 mode)
	{
		CQt.QImage_Transformed2(this.nativePtr, (matrix == default || matrix.NativePtr == default) ? default : matrix.NativePtr, (int64)mode);
	}
	
	public void Mirrored1(bool horizontally)
	{
		CQt.QImage_Mirrored1(this.nativePtr, horizontally);
	}
	
	public void Mirrored2(bool horizontally, bool vertically)
	{
		CQt.QImage_Mirrored2(this.nativePtr, horizontally, vertically);
	}
	
	public void Mirror1(bool horizontally)
	{
		CQt.QImage_Mirror1(this.nativePtr, horizontally);
	}
	
	public void Mirror2(bool horizontally, bool vertically)
	{
		CQt.QImage_Mirror2(this.nativePtr, horizontally, vertically);
	}
	
	public void InvertPixels1(int64 param1)
	{
		CQt.QImage_InvertPixels1(this.nativePtr, (int64)param1);
	}
	
	public bool Load2(String fileName, char8* format)
	{
		return CQt.QImage_Load2(this.nativePtr, libqt_string(fileName), format);
	}
	
	public bool LoadFromData22(char8* data, char8* format)
	{
		return CQt.QImage_LoadFromData22(this.nativePtr, data, format);
	}
	
	public bool LoadFromData3(uint8* buf, int32 lenVal, char8* format)
	{
		return CQt.QImage_LoadFromData3(this.nativePtr, buf, lenVal, format);
	}
	
	public bool LoadFromData23(String data, char8* format)
	{
		return CQt.QImage_LoadFromData23(this.nativePtr, libqt_string(data), format);
	}
	
	public bool Save2(String fileName, char8* format)
	{
		return CQt.QImage_Save2(this.nativePtr, libqt_string(fileName), format);
	}
	
	public bool Save3(String fileName, char8* format, int32 quality)
	{
		return CQt.QImage_Save3(this.nativePtr, libqt_string(fileName), format, quality);
	}
	
	public bool Save22(IQIODevice device, char8* format)
	{
		return CQt.QImage_Save22(this.nativePtr, (device == default || device.NativePtr == default) ? default : device.NativePtr, format);
	}
	
	public bool Save32(IQIODevice device, char8* format, int32 quality)
	{
		return CQt.QImage_Save32(this.nativePtr, (device == default || device.NativePtr == default) ? default : device.NativePtr, format, quality);
	}
	
	public static void FromData22(char8* data, char8* format)
	{
		CQt.QImage_FromData22(data, format);
	}
	
	public static void FromData3(uint8* data, int32 size, char8* format)
	{
		CQt.QImage_FromData3(data, size, format);
	}
	
	public static void FromData23(String data, char8* format)
	{
		CQt.QImage_FromData23(libqt_string(data), format);
	}
	
	public libqt_string Text1(String key)
	{
		return CQt.QImage_Text1(this.nativePtr, libqt_string(key));
	}
	
	public void DetachMetadata1(bool invalidateCache)
	{
		CQt.QImage_DetachMetadata1(this.nativePtr, invalidateCache);
	}
	
	public bool PaintingActive()
	{
		return CQt.QPaintDevice_PaintingActive(this.nativePtr);
	}
	
	public int32 WidthMM()
	{
		return CQt.QPaintDevice_WidthMM(this.nativePtr);
	}
	
	public int32 HeightMM()
	{
		return CQt.QPaintDevice_HeightMM(this.nativePtr);
	}
	
	public int32 LogicalDpiX()
	{
		return CQt.QPaintDevice_LogicalDpiX(this.nativePtr);
	}
	
	public int32 LogicalDpiY()
	{
		return CQt.QPaintDevice_LogicalDpiY(this.nativePtr);
	}
	
	public int32 PhysicalDpiX()
	{
		return CQt.QPaintDevice_PhysicalDpiX(this.nativePtr);
	}
	
	public int32 PhysicalDpiY()
	{
		return CQt.QPaintDevice_PhysicalDpiY(this.nativePtr);
	}
	
	public double DevicePixelRatioF()
	{
		return CQt.QPaintDevice_DevicePixelRatioF(this.nativePtr);
	}
	
	public static double DevicePixelRatioFScale()
	{
		return CQt.QPaintDevice_DevicePixelRatioFScale();
	}
	
}
public class QImage
{
	public QImagePtr handle;
	
	public static implicit operator QImagePtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QImagePtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQImage param1)
	{
		this.handle.OperatorAssign(param1);
	}
	
	public void Swap(IQImage other)
	{
		this.handle.Swap(other);
	}
	
	public bool IsNull()
	{
		return this.handle.IsNull();
	}
	
	public virtual int32 DevType()
	{
		return this.handle.DevType();
	}
	
	public bool OperatorEqual(IQImage param1)
	{
		return this.handle.OperatorEqual(param1);
	}
	
	public bool OperatorNotEqual(IQImage param1)
	{
		return this.handle.OperatorNotEqual(param1);
	}
	
	public void ToQVariant()
	{
		this.handle.ToQVariant();
	}
	
	public void Detach()
	{
		this.handle.Detach();
	}
	
	public bool IsDetached()
	{
		return this.handle.IsDetached();
	}
	
	public void Copy()
	{
		this.handle.Copy();
	}
	
	public void Copy2(int32 x, int32 y, int32 w, int32 h)
	{
		this.handle.Copy2(x, y, w, h);
	}
	
	public int64 Format()
	{
		return this.handle.Format();
	}
	
	public void ConvertToFormat(int64 f)
	{
		this.handle.ConvertToFormat(f);
	}
	
	public void ConvertToFormat2(int64 f, uint32[] colorTable)
	{
		this.handle.ConvertToFormat2(f, null);
	}
	
	public bool ReinterpretAsFormat(int64 f)
	{
		return this.handle.ReinterpretAsFormat(f);
	}
	
	public void ConvertedTo(int64 f)
	{
		this.handle.ConvertedTo(f);
	}
	
	public void ConvertTo(int64 f)
	{
		this.handle.ConvertTo(f);
	}
	
	public int32 Width()
	{
		return this.handle.Width();
	}
	
	public int32 Height()
	{
		return this.handle.Height();
	}
	
	public void Size()
	{
		this.handle.Size();
	}
	
	public void Rect()
	{
		this.handle.Rect();
	}
	
	public int32 Depth()
	{
		return this.handle.Depth();
	}
	
	public int32 ColorCount()
	{
		return this.handle.ColorCount();
	}
	
	public int32 BitPlaneCount()
	{
		return this.handle.BitPlaneCount();
	}
	
	public uint32 Color(int32 i)
	{
		return this.handle.Color(i);
	}
	
	public void SetColor(int32 i, uint32 c)
	{
		this.handle.SetColor(i, c);
	}
	
	public void SetColorCount(int32 colorCount)
	{
		this.handle.SetColorCount(colorCount);
	}
	
	public bool AllGray()
	{
		return this.handle.AllGray();
	}
	
	public bool IsGrayscale()
	{
		return this.handle.IsGrayscale();
	}
	
	public uint8* Bits()
	{
		return this.handle.Bits();
	}
	
	public uint8* Bits2()
	{
		return this.handle.Bits2();
	}
	
	public uint8* ConstBits()
	{
		return this.handle.ConstBits();
	}
	
	public int32 SizeInBytes()
	{
		return this.handle.SizeInBytes();
	}
	
	public uint8* ScanLine(int32 param1)
	{
		return this.handle.ScanLine(param1);
	}
	
	public uint8* ScanLineWithInt(int32 param1)
	{
		return this.handle.ScanLineWithInt(param1);
	}
	
	public uint8* ConstScanLine(int32 param1)
	{
		return this.handle.ConstScanLine(param1);
	}
	
	public int32 BytesPerLine()
	{
		return this.handle.BytesPerLine();
	}
	
	public bool Valid(int32 x, int32 y)
	{
		return this.handle.Valid(x, y);
	}
	
	public bool ValidWithPt(IQPoint pt)
	{
		return this.handle.ValidWithPt(pt);
	}
	
	public int32 PixelIndex(int32 x, int32 y)
	{
		return this.handle.PixelIndex(x, y);
	}
	
	public int32 PixelIndexWithPt(IQPoint pt)
	{
		return this.handle.PixelIndexWithPt(pt);
	}
	
	public uint32 Pixel(int32 x, int32 y)
	{
		return this.handle.Pixel(x, y);
	}
	
	public uint32 PixelWithPt(IQPoint pt)
	{
		return this.handle.PixelWithPt(pt);
	}
	
	public void SetPixel(int32 x, int32 y, uint32 index_or_rgb)
	{
		this.handle.SetPixel(x, y, index_or_rgb);
	}
	
	public void SetPixel2(IQPoint pt, uint32 index_or_rgb)
	{
		this.handle.SetPixel2(pt, index_or_rgb);
	}
	
	public void PixelColor(int32 x, int32 y)
	{
		this.handle.PixelColor(x, y);
	}
	
	public void PixelColorWithPt(IQPoint pt)
	{
		this.handle.PixelColorWithPt(pt);
	}
	
	public void SetPixelColor(int32 x, int32 y, IQColor c)
	{
		this.handle.SetPixelColor(x, y, c);
	}
	
	public void SetPixelColor2(IQPoint pt, IQColor c)
	{
		this.handle.SetPixelColor2(pt, c);
	}
	
	public uint32[] ColorTable()
	{
		return this.handle.ColorTable();
	}
	
	public void SetColorTable(uint32[] colors)
	{
		this.handle.SetColorTable(null);
	}
	
	public double DevicePixelRatio()
	{
		return this.handle.DevicePixelRatio();
	}
	
	public void SetDevicePixelRatio(double scaleFactor)
	{
		this.handle.SetDevicePixelRatio(scaleFactor);
	}
	
	public void DeviceIndependentSize()
	{
		this.handle.DeviceIndependentSize();
	}
	
	public void Fill(uint32 pixel)
	{
		this.handle.Fill(pixel);
	}
	
	public void FillWithColor(IQColor color)
	{
		this.handle.FillWithColor(color);
	}
	
	public void Fill2(int64 color)
	{
		this.handle.Fill2(color);
	}
	
	public bool HasAlphaChannel()
	{
		return this.handle.HasAlphaChannel();
	}
	
	public void SetAlphaChannel(IQImage alphaChannel)
	{
		this.handle.SetAlphaChannel(alphaChannel);
	}
	
	public void CreateAlphaMask()
	{
		this.handle.CreateAlphaMask();
	}
	
	public void CreateHeuristicMask()
	{
		this.handle.CreateHeuristicMask();
	}
	
	public void CreateMaskFromColor(uint32 color)
	{
		this.handle.CreateMaskFromColor(color);
	}
	
	public void Scaled(int32 w, int32 h)
	{
		this.handle.Scaled(w, h);
	}
	
	public void ScaledWithQSize(IQSize s)
	{
		this.handle.ScaledWithQSize(s);
	}
	
	public void ScaledToWidth(int32 w)
	{
		this.handle.ScaledToWidth(w);
	}
	
	public void ScaledToHeight(int32 h)
	{
		this.handle.ScaledToHeight(h);
	}
	
	public void Transformed(IQTransform matrix)
	{
		this.handle.Transformed(matrix);
	}
	
	public static void TrueMatrix(IQTransform param1, int32 w, int32 h)
	{
		QImagePtr.TrueMatrix(param1, w, h);
	}
	
	public void Mirrored()
	{
		this.handle.Mirrored();
	}
	
	public void RgbSwapped()
	{
		this.handle.RgbSwapped();
	}
	
	public void Mirror()
	{
		this.handle.Mirror();
	}
	
	public void RgbSwap()
	{
		this.handle.RgbSwap();
	}
	
	public void InvertPixels()
	{
		this.handle.InvertPixels();
	}
	
	public void ColorSpace()
	{
		this.handle.ColorSpace();
	}
	
	public void ConvertedToColorSpace(IQColorSpace param1)
	{
		this.handle.ConvertedToColorSpace(param1);
	}
	
	public void ConvertToColorSpace(IQColorSpace param1)
	{
		this.handle.ConvertToColorSpace(param1);
	}
	
	public void SetColorSpace(IQColorSpace colorSpace)
	{
		this.handle.SetColorSpace(colorSpace);
	}
	
	public void ColorTransformed(IQColorTransform transform)
	{
		this.handle.ColorTransformed(transform);
	}
	
	public void ApplyColorTransform(IQColorTransform transform)
	{
		this.handle.ApplyColorTransform(transform);
	}
	
	public bool Load(IQIODevice device, char8* format)
	{
		return this.handle.Load(device, format);
	}
	
	public bool LoadWithFileName(String fileName)
	{
		return this.handle.LoadWithFileName(fileName);
	}
	
	public bool LoadFromData(char8* data)
	{
		return this.handle.LoadFromData(data);
	}
	
	public bool LoadFromData2(uint8* buf, int32 lenVal)
	{
		return this.handle.LoadFromData2(buf, lenVal);
	}
	
	public bool LoadFromDataWithData(String data)
	{
		return this.handle.LoadFromDataWithData(data);
	}
	
	public bool Save(String fileName)
	{
		return this.handle.Save(fileName);
	}
	
	public bool SaveWithDevice(IQIODevice device)
	{
		return this.handle.SaveWithDevice(device);
	}
	
	public static void FromData(char8* data)
	{
		QImagePtr.FromData(data);
	}
	
	public static void FromData2(uint8* data, int32 size)
	{
		QImagePtr.FromData2(data, size);
	}
	
	public static void FromDataWithData(String data)
	{
		QImagePtr.FromDataWithData(data);
	}
	
	public int64 CacheKey()
	{
		return this.handle.CacheKey();
	}
	
	public virtual void* PaintEngine()
	{
		return this.handle.PaintEngine();
	}
	
	public int32 DotsPerMeterX()
	{
		return this.handle.DotsPerMeterX();
	}
	
	public int32 DotsPerMeterY()
	{
		return this.handle.DotsPerMeterY();
	}
	
	public void SetDotsPerMeterX(int32 dotsPerMeterX)
	{
		this.handle.SetDotsPerMeterX(dotsPerMeterX);
	}
	
	public void SetDotsPerMeterY(int32 dotsPerMeterY)
	{
		this.handle.SetDotsPerMeterY(dotsPerMeterY);
	}
	
	public void Offset()
	{
		this.handle.Offset();
	}
	
	public void SetOffset(IQPoint offset)
	{
		this.handle.SetOffset(offset);
	}
	
	public libqt_string[] TextKeys()
	{
		return this.handle.TextKeys();
	}
	
	public libqt_string Text()
	{
		return this.handle.Text();
	}
	
	public void SetText(String key, String value)
	{
		this.handle.SetText(key, value);
	}
	
	public void PixelFormat()
	{
		this.handle.PixelFormat();
	}
	
	public static void ToPixelFormat(int64 format)
	{
		QImagePtr.ToPixelFormat(format);
	}
	
	public static int64 ToImageFormat(IQPixelFormat format)
	{
		return QImagePtr.ToImageFormat(default);
	}
	
	public virtual int32 Metric(int64 metric)
	{
		return this.handle.Metric(metric);
	}
	
	public void MirroredHelper(bool horizontal, bool vertical)
	{
		this.handle.MirroredHelper(horizontal, vertical);
	}
	
	public void RgbSwappedHelper()
	{
		this.handle.RgbSwappedHelper();
	}
	
	public void MirroredInplace(bool horizontal, bool vertical)
	{
		this.handle.MirroredInplace(horizontal, vertical);
	}
	
	public void RgbSwappedInplace()
	{
		this.handle.RgbSwappedInplace();
	}
	
	public void ConvertToFormatHelper(int64 format, int64 flags)
	{
		this.handle.ConvertToFormatHelper(format, flags);
	}
	
	public bool ConvertToFormatInplace(int64 format, int64 flags)
	{
		return this.handle.ConvertToFormatInplace(format, flags);
	}
	
	public void SmoothScaled(int32 w, int32 h)
	{
		this.handle.SmoothScaled(w, h);
	}
	
	public void DetachMetadata()
	{
		this.handle.DetachMetadata();
	}
	
	public void Copy1(IQRect rect)
	{
		this.handle.Copy1(rect);
	}
	
	public void ConvertToFormat22(int64 f, int64 flags)
	{
		this.handle.ConvertToFormat22(f, flags);
	}
	
	public void ConvertToFormat3(int64 f, uint32[] colorTable, int64 flags)
	{
		this.handle.ConvertToFormat3(f, null, flags);
	}
	
	public void ConvertedTo2(int64 f, int64 flags)
	{
		this.handle.ConvertedTo2(f, flags);
	}
	
	public void ConvertTo2(int64 f, int64 flags)
	{
		this.handle.ConvertTo2(f, flags);
	}
	
	public void CreateAlphaMask1(int64 flags)
	{
		this.handle.CreateAlphaMask1(flags);
	}
	
	public void CreateHeuristicMask1(bool clipTight)
	{
		this.handle.CreateHeuristicMask1(clipTight);
	}
	
	public void CreateMaskFromColor2(uint32 color, int64 mode)
	{
		this.handle.CreateMaskFromColor2(color, mode);
	}
	
	public void Scaled3(int32 w, int32 h, int64 aspectMode)
	{
		this.handle.Scaled3(w, h, aspectMode);
	}
	
	public void Scaled4(int32 w, int32 h, int64 aspectMode, int64 mode)
	{
		this.handle.Scaled4(w, h, aspectMode, mode);
	}
	
	public void Scaled2(IQSize s, int64 aspectMode)
	{
		this.handle.Scaled2(s, aspectMode);
	}
	
	public void Scaled32(IQSize s, int64 aspectMode, int64 mode)
	{
		this.handle.Scaled32(s, aspectMode, mode);
	}
	
	public void ScaledToWidth2(int32 w, int64 mode)
	{
		this.handle.ScaledToWidth2(w, mode);
	}
	
	public void ScaledToHeight2(int32 h, int64 mode)
	{
		this.handle.ScaledToHeight2(h, mode);
	}
	
	public void Transformed2(IQTransform matrix, int64 mode)
	{
		this.handle.Transformed2(matrix, mode);
	}
	
	public void Mirrored1(bool horizontally)
	{
		this.handle.Mirrored1(horizontally);
	}
	
	public void Mirrored2(bool horizontally, bool vertically)
	{
		this.handle.Mirrored2(horizontally, vertically);
	}
	
	public void Mirror1(bool horizontally)
	{
		this.handle.Mirror1(horizontally);
	}
	
	public void Mirror2(bool horizontally, bool vertically)
	{
		this.handle.Mirror2(horizontally, vertically);
	}
	
	public void InvertPixels1(int64 param1)
	{
		this.handle.InvertPixels1(param1);
	}
	
	public bool Load2(String fileName, char8* format)
	{
		return this.handle.Load2(fileName, format);
	}
	
	public bool LoadFromData22(char8* data, char8* format)
	{
		return this.handle.LoadFromData22(data, format);
	}
	
	public bool LoadFromData3(uint8* buf, int32 lenVal, char8* format)
	{
		return this.handle.LoadFromData3(buf, lenVal, format);
	}
	
	public bool LoadFromData23(String data, char8* format)
	{
		return this.handle.LoadFromData23(data, format);
	}
	
	public bool Save2(String fileName, char8* format)
	{
		return this.handle.Save2(fileName, format);
	}
	
	public bool Save3(String fileName, char8* format, int32 quality)
	{
		return this.handle.Save3(fileName, format, quality);
	}
	
	public bool Save22(IQIODevice device, char8* format)
	{
		return this.handle.Save22(device, format);
	}
	
	public bool Save32(IQIODevice device, char8* format, int32 quality)
	{
		return this.handle.Save32(device, format, quality);
	}
	
	public static void FromData22(char8* data, char8* format)
	{
		QImagePtr.FromData22(data, format);
	}
	
	public static void FromData3(uint8* data, int32 size, char8* format)
	{
		QImagePtr.FromData3(data, size, format);
	}
	
	public static void FromData23(String data, char8* format)
	{
		QImagePtr.FromData23(data, format);
	}
	
	public libqt_string Text1(String key)
	{
		return this.handle.Text1(key);
	}
	
	public void DetachMetadata1(bool invalidateCache)
	{
		this.handle.DetachMetadata1(invalidateCache);
	}
	
	public bool PaintingActive()
	{
		return this.handle.PaintingActive();
	}
	
	public int32 WidthMM()
	{
		return this.handle.WidthMM();
	}
	
	public int32 HeightMM()
	{
		return this.handle.HeightMM();
	}
	
	public int32 LogicalDpiX()
	{
		return this.handle.LogicalDpiX();
	}
	
	public int32 LogicalDpiY()
	{
		return this.handle.LogicalDpiY();
	}
	
	public int32 PhysicalDpiX()
	{
		return this.handle.PhysicalDpiX();
	}
	
	public int32 PhysicalDpiY()
	{
		return this.handle.PhysicalDpiY();
	}
	
	public double DevicePixelRatioF()
	{
		return this.handle.DevicePixelRatioF();
	}
	
	public static double DevicePixelRatioFScale()
	{
		return QImagePtr.DevicePixelRatioFScale();
	}
	
}
extension CQt
{
	[LinkName("QImage_new")]
	public static extern void* QImage_new();
	[LinkName("QImage_new2")]
	public static extern void* QImage_new2(void* size, int64 format);
	[LinkName("QImage_new3")]
	public static extern void* QImage_new3(int32 width, int32 height, int64 format);
	[LinkName("QImage_new4")]
	public static extern void* QImage_new4(uint8* data, int32 width, int32 height, int64 format);
	[LinkName("QImage_new5")]
	public static extern void* QImage_new5(uint8* data, int32 width, int32 height, int64 format);
	[LinkName("QImage_new6")]
	public static extern void* QImage_new6(uint8* data, int32 width, int32 height, int32 bytesPerLine, int64 format);
	[LinkName("QImage_new7")]
	public static extern void* QImage_new7(uint8* data, int32 width, int32 height, int32 bytesPerLine, int64 format);
	[LinkName("QImage_new8")]
	public static extern void* QImage_new8(libqt_string fileName);
	[LinkName("QImage_new9")]
	public static extern void* QImage_new9(void* param1);
	[LinkName("QImage_new10")]
	public static extern void* QImage_new10(libqt_string fileName, char8* format);
	[LinkName("QImage_OperatorAssign")]
	public static extern void QImage_OperatorAssign(void* c_this, void* param1);
	[LinkName("QImage_Swap")]
	public static extern void QImage_Swap(void* c_this, void* other);
	[LinkName("QImage_IsNull")]
	public static extern bool QImage_IsNull(void* c_this);
	[LinkName("QImage_DevType")]
	public static extern int32 QImage_DevType(void* c_this);
	[LinkName("QImage_OperatorEqual")]
	public static extern bool QImage_OperatorEqual(void* c_this, void* param1);
	[LinkName("QImage_OperatorNotEqual")]
	public static extern bool QImage_OperatorNotEqual(void* c_this, void* param1);
	[LinkName("QImage_ToQVariant")]
	public static extern void QImage_ToQVariant(void* c_this);
	[LinkName("QImage_Detach")]
	public static extern void QImage_Detach(void* c_this);
	[LinkName("QImage_IsDetached")]
	public static extern bool QImage_IsDetached(void* c_this);
	[LinkName("QImage_Copy")]
	public static extern void QImage_Copy(void* c_this);
	[LinkName("QImage_Copy2")]
	public static extern void QImage_Copy2(void* c_this, int32 x, int32 y, int32 w, int32 h);
	[LinkName("QImage_Format")]
	public static extern int64 QImage_Format(void* c_this);
	[LinkName("QImage_ConvertToFormat")]
	public static extern void QImage_ConvertToFormat(void* c_this, int64 f);
	[LinkName("QImage_ConvertToFormat2")]
	public static extern void QImage_ConvertToFormat2(void* c_this, int64 f, uint32[] colorTable);
	[LinkName("QImage_ReinterpretAsFormat")]
	public static extern bool QImage_ReinterpretAsFormat(void* c_this, int64 f);
	[LinkName("QImage_ConvertedTo")]
	public static extern void QImage_ConvertedTo(void* c_this, int64 f);
	[LinkName("QImage_ConvertTo")]
	public static extern void QImage_ConvertTo(void* c_this, int64 f);
	[LinkName("QImage_Width")]
	public static extern int32 QImage_Width(void* c_this);
	[LinkName("QImage_Height")]
	public static extern int32 QImage_Height(void* c_this);
	[LinkName("QImage_Size")]
	public static extern void QImage_Size(void* c_this);
	[LinkName("QImage_Rect")]
	public static extern void QImage_Rect(void* c_this);
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
	public static extern uint8* QImage_Bits(void* c_this);
	[LinkName("QImage_Bits2")]
	public static extern uint8* QImage_Bits2(void* c_this);
	[LinkName("QImage_ConstBits")]
	public static extern uint8* QImage_ConstBits(void* c_this);
	[LinkName("QImage_SizeInBytes")]
	public static extern int32 QImage_SizeInBytes(void* c_this);
	[LinkName("QImage_ScanLine")]
	public static extern uint8* QImage_ScanLine(void* c_this, int32 param1);
	[LinkName("QImage_ScanLineWithInt")]
	public static extern uint8* QImage_ScanLineWithInt(void* c_this, int32 param1);
	[LinkName("QImage_ConstScanLine")]
	public static extern uint8* QImage_ConstScanLine(void* c_this, int32 param1);
	[LinkName("QImage_BytesPerLine")]
	public static extern int32 QImage_BytesPerLine(void* c_this);
	[LinkName("QImage_Valid")]
	public static extern bool QImage_Valid(void* c_this, int32 x, int32 y);
	[LinkName("QImage_ValidWithPt")]
	public static extern bool QImage_ValidWithPt(void* c_this, void* pt);
	[LinkName("QImage_PixelIndex")]
	public static extern int32 QImage_PixelIndex(void* c_this, int32 x, int32 y);
	[LinkName("QImage_PixelIndexWithPt")]
	public static extern int32 QImage_PixelIndexWithPt(void* c_this, void* pt);
	[LinkName("QImage_Pixel")]
	public static extern uint32 QImage_Pixel(void* c_this, int32 x, int32 y);
	[LinkName("QImage_PixelWithPt")]
	public static extern uint32 QImage_PixelWithPt(void* c_this, void* pt);
	[LinkName("QImage_SetPixel")]
	public static extern void QImage_SetPixel(void* c_this, int32 x, int32 y, uint32 index_or_rgb);
	[LinkName("QImage_SetPixel2")]
	public static extern void QImage_SetPixel2(void* c_this, void* pt, uint32 index_or_rgb);
	[LinkName("QImage_PixelColor")]
	public static extern void QImage_PixelColor(void* c_this, int32 x, int32 y);
	[LinkName("QImage_PixelColorWithPt")]
	public static extern void QImage_PixelColorWithPt(void* c_this, void* pt);
	[LinkName("QImage_SetPixelColor")]
	public static extern void QImage_SetPixelColor(void* c_this, int32 x, int32 y, void* c);
	[LinkName("QImage_SetPixelColor2")]
	public static extern void QImage_SetPixelColor2(void* c_this, void* pt, void* c);
	[LinkName("QImage_ColorTable")]
	public static extern uint32[] QImage_ColorTable(void* c_this);
	[LinkName("QImage_SetColorTable")]
	public static extern void QImage_SetColorTable(void* c_this, uint32[] colors);
	[LinkName("QImage_DevicePixelRatio")]
	public static extern double QImage_DevicePixelRatio(void* c_this);
	[LinkName("QImage_SetDevicePixelRatio")]
	public static extern void QImage_SetDevicePixelRatio(void* c_this, double scaleFactor);
	[LinkName("QImage_DeviceIndependentSize")]
	public static extern void QImage_DeviceIndependentSize(void* c_this);
	[LinkName("QImage_Fill")]
	public static extern void QImage_Fill(void* c_this, uint32 pixel);
	[LinkName("QImage_FillWithColor")]
	public static extern void QImage_FillWithColor(void* c_this, void* color);
	[LinkName("QImage_Fill2")]
	public static extern void QImage_Fill2(void* c_this, int64 color);
	[LinkName("QImage_HasAlphaChannel")]
	public static extern bool QImage_HasAlphaChannel(void* c_this);
	[LinkName("QImage_SetAlphaChannel")]
	public static extern void QImage_SetAlphaChannel(void* c_this, void* alphaChannel);
	[LinkName("QImage_CreateAlphaMask")]
	public static extern void QImage_CreateAlphaMask(void* c_this);
	[LinkName("QImage_CreateHeuristicMask")]
	public static extern void QImage_CreateHeuristicMask(void* c_this);
	[LinkName("QImage_CreateMaskFromColor")]
	public static extern void QImage_CreateMaskFromColor(void* c_this, uint32 color);
	[LinkName("QImage_Scaled")]
	public static extern void QImage_Scaled(void* c_this, int32 w, int32 h);
	[LinkName("QImage_ScaledWithQSize")]
	public static extern void QImage_ScaledWithQSize(void* c_this, void* s);
	[LinkName("QImage_ScaledToWidth")]
	public static extern void QImage_ScaledToWidth(void* c_this, int32 w);
	[LinkName("QImage_ScaledToHeight")]
	public static extern void QImage_ScaledToHeight(void* c_this, int32 h);
	[LinkName("QImage_Transformed")]
	public static extern void QImage_Transformed(void* c_this, void* matrix);
	[LinkName("QImage_TrueMatrix")]
	public static extern void QImage_TrueMatrix(void* param1, int32 w, int32 h);
	[LinkName("QImage_Mirrored")]
	public static extern void QImage_Mirrored(void* c_this);
	[LinkName("QImage_RgbSwapped")]
	public static extern void QImage_RgbSwapped(void* c_this);
	[LinkName("QImage_Mirror")]
	public static extern void QImage_Mirror(void* c_this);
	[LinkName("QImage_RgbSwap")]
	public static extern void QImage_RgbSwap(void* c_this);
	[LinkName("QImage_InvertPixels")]
	public static extern void QImage_InvertPixels(void* c_this);
	[LinkName("QImage_ColorSpace")]
	public static extern void QImage_ColorSpace(void* c_this);
	[LinkName("QImage_ConvertedToColorSpace")]
	public static extern void QImage_ConvertedToColorSpace(void* c_this, void* param1);
	[LinkName("QImage_ConvertToColorSpace")]
	public static extern void QImage_ConvertToColorSpace(void* c_this, void* param1);
	[LinkName("QImage_SetColorSpace")]
	public static extern void QImage_SetColorSpace(void* c_this, void* colorSpace);
	[LinkName("QImage_ColorTransformed")]
	public static extern void QImage_ColorTransformed(void* c_this, void* transform);
	[LinkName("QImage_ApplyColorTransform")]
	public static extern void QImage_ApplyColorTransform(void* c_this, void* transform);
	[LinkName("QImage_Load")]
	public static extern bool QImage_Load(void* c_this, void* device, char8* format);
	[LinkName("QImage_LoadWithFileName")]
	public static extern bool QImage_LoadWithFileName(void* c_this, libqt_string fileName);
	[LinkName("QImage_LoadFromData")]
	public static extern bool QImage_LoadFromData(void* c_this, char8* data);
	[LinkName("QImage_LoadFromData2")]
	public static extern bool QImage_LoadFromData2(void* c_this, uint8* buf, int32 lenVal);
	[LinkName("QImage_LoadFromDataWithData")]
	public static extern bool QImage_LoadFromDataWithData(void* c_this, libqt_string data);
	[LinkName("QImage_Save")]
	public static extern bool QImage_Save(void* c_this, libqt_string fileName);
	[LinkName("QImage_SaveWithDevice")]
	public static extern bool QImage_SaveWithDevice(void* c_this, void* device);
	[LinkName("QImage_FromData")]
	public static extern void QImage_FromData(char8* data);
	[LinkName("QImage_FromData2")]
	public static extern void QImage_FromData2(uint8* data, int32 size);
	[LinkName("QImage_FromDataWithData")]
	public static extern void QImage_FromDataWithData(libqt_string data);
	[LinkName("QImage_CacheKey")]
	public static extern int64 QImage_CacheKey(void* c_this);
	[LinkName("QImage_PaintEngine")]
	public static extern void* QImage_PaintEngine(void* c_this);
	[LinkName("QImage_DotsPerMeterX")]
	public static extern int32 QImage_DotsPerMeterX(void* c_this);
	[LinkName("QImage_DotsPerMeterY")]
	public static extern int32 QImage_DotsPerMeterY(void* c_this);
	[LinkName("QImage_SetDotsPerMeterX")]
	public static extern void QImage_SetDotsPerMeterX(void* c_this, int32 dotsPerMeterX);
	[LinkName("QImage_SetDotsPerMeterY")]
	public static extern void QImage_SetDotsPerMeterY(void* c_this, int32 dotsPerMeterY);
	[LinkName("QImage_Offset")]
	public static extern void QImage_Offset(void* c_this);
	[LinkName("QImage_SetOffset")]
	public static extern void QImage_SetOffset(void* c_this, void* offset);
	[LinkName("QImage_TextKeys")]
	public static extern libqt_string[] QImage_TextKeys(void* c_this);
	[LinkName("QImage_Text")]
	public static extern libqt_string QImage_Text(void* c_this);
	[LinkName("QImage_SetText")]
	public static extern void QImage_SetText(void* c_this, libqt_string key, libqt_string value);
	[LinkName("QImage_PixelFormat")]
	public static extern void QImage_PixelFormat(void* c_this);
	[LinkName("QImage_ToPixelFormat")]
	public static extern void QImage_ToPixelFormat(int64 format);
	[LinkName("QImage_ToImageFormat")]
	public static extern int64 QImage_ToImageFormat(void format);
	[LinkName("QImage_Metric")]
	public static extern int32 QImage_Metric(void* c_this, int64 metric);
	[LinkName("QImage_MirroredHelper")]
	public static extern void QImage_MirroredHelper(void* c_this, bool horizontal, bool vertical);
	[LinkName("QImage_RgbSwappedHelper")]
	public static extern void QImage_RgbSwappedHelper(void* c_this);
	[LinkName("QImage_MirroredInplace")]
	public static extern void QImage_MirroredInplace(void* c_this, bool horizontal, bool vertical);
	[LinkName("QImage_RgbSwappedInplace")]
	public static extern void QImage_RgbSwappedInplace(void* c_this);
	[LinkName("QImage_ConvertToFormatHelper")]
	public static extern void QImage_ConvertToFormatHelper(void* c_this, int64 format, int64 flags);
	[LinkName("QImage_ConvertToFormatInplace")]
	public static extern bool QImage_ConvertToFormatInplace(void* c_this, int64 format, int64 flags);
	[LinkName("QImage_SmoothScaled")]
	public static extern void QImage_SmoothScaled(void* c_this, int32 w, int32 h);
	[LinkName("QImage_DetachMetadata")]
	public static extern void QImage_DetachMetadata(void* c_this);
	[LinkName("QImage_Copy1")]
	public static extern void QImage_Copy1(void* c_this, void* rect);
	[LinkName("QImage_ConvertToFormat22")]
	public static extern void QImage_ConvertToFormat22(void* c_this, int64 f, int64 flags);
	[LinkName("QImage_ConvertToFormat3")]
	public static extern void QImage_ConvertToFormat3(void* c_this, int64 f, uint32[] colorTable, int64 flags);
	[LinkName("QImage_ConvertedTo2")]
	public static extern void QImage_ConvertedTo2(void* c_this, int64 f, int64 flags);
	[LinkName("QImage_ConvertTo2")]
	public static extern void QImage_ConvertTo2(void* c_this, int64 f, int64 flags);
	[LinkName("QImage_CreateAlphaMask1")]
	public static extern void QImage_CreateAlphaMask1(void* c_this, int64 flags);
	[LinkName("QImage_CreateHeuristicMask1")]
	public static extern void QImage_CreateHeuristicMask1(void* c_this, bool clipTight);
	[LinkName("QImage_CreateMaskFromColor2")]
	public static extern void QImage_CreateMaskFromColor2(void* c_this, uint32 color, int64 mode);
	[LinkName("QImage_Scaled3")]
	public static extern void QImage_Scaled3(void* c_this, int32 w, int32 h, int64 aspectMode);
	[LinkName("QImage_Scaled4")]
	public static extern void QImage_Scaled4(void* c_this, int32 w, int32 h, int64 aspectMode, int64 mode);
	[LinkName("QImage_Scaled2")]
	public static extern void QImage_Scaled2(void* c_this, void* s, int64 aspectMode);
	[LinkName("QImage_Scaled32")]
	public static extern void QImage_Scaled32(void* c_this, void* s, int64 aspectMode, int64 mode);
	[LinkName("QImage_ScaledToWidth2")]
	public static extern void QImage_ScaledToWidth2(void* c_this, int32 w, int64 mode);
	[LinkName("QImage_ScaledToHeight2")]
	public static extern void QImage_ScaledToHeight2(void* c_this, int32 h, int64 mode);
	[LinkName("QImage_Transformed2")]
	public static extern void QImage_Transformed2(void* c_this, void* matrix, int64 mode);
	[LinkName("QImage_Mirrored1")]
	public static extern void QImage_Mirrored1(void* c_this, bool horizontally);
	[LinkName("QImage_Mirrored2")]
	public static extern void QImage_Mirrored2(void* c_this, bool horizontally, bool vertically);
	[LinkName("QImage_Mirror1")]
	public static extern void QImage_Mirror1(void* c_this, bool horizontally);
	[LinkName("QImage_Mirror2")]
	public static extern void QImage_Mirror2(void* c_this, bool horizontally, bool vertically);
	[LinkName("QImage_InvertPixels1")]
	public static extern void QImage_InvertPixels1(void* c_this, int64 param1);
	[LinkName("QImage_Load2")]
	public static extern bool QImage_Load2(void* c_this, libqt_string fileName, char8* format);
	[LinkName("QImage_LoadFromData22")]
	public static extern bool QImage_LoadFromData22(void* c_this, char8* data, char8* format);
	[LinkName("QImage_LoadFromData3")]
	public static extern bool QImage_LoadFromData3(void* c_this, uint8* buf, int32 lenVal, char8* format);
	[LinkName("QImage_LoadFromData23")]
	public static extern bool QImage_LoadFromData23(void* c_this, libqt_string data, char8* format);
	[LinkName("QImage_Save2")]
	public static extern bool QImage_Save2(void* c_this, libqt_string fileName, char8* format);
	[LinkName("QImage_Save3")]
	public static extern bool QImage_Save3(void* c_this, libqt_string fileName, char8* format, int32 quality);
	[LinkName("QImage_Save22")]
	public static extern bool QImage_Save22(void* c_this, void* device, char8* format);
	[LinkName("QImage_Save32")]
	public static extern bool QImage_Save32(void* c_this, void* device, char8* format, int32 quality);
	[LinkName("QImage_FromData22")]
	public static extern void QImage_FromData22(char8* data, char8* format);
	[LinkName("QImage_FromData3")]
	public static extern void QImage_FromData3(uint8* data, int32 size, char8* format);
	[LinkName("QImage_FromData23")]
	public static extern void QImage_FromData23(libqt_string data, char8* format);
	[LinkName("QImage_Text1")]
	public static extern libqt_string QImage_Text1(void* c_this, libqt_string key);
	[LinkName("QImage_DetachMetadata1")]
	public static extern void QImage_DetachMetadata1(void* c_this, bool invalidateCache);
	/// Delete this object from C++ memory
	[LinkName("QImage_Delete")]
	public static extern void QImage_Delete(void* self);
}