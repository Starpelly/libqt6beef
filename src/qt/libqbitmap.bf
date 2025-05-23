using System;
using System.Interop;
namespace Qt;

public interface IQBitmap
{
	void* NativePtr { get; }
}
public struct QBitmapPtr : IQBitmap, IDisposable, IQPixmap
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QBitmap_new());
	}
	
	public void Dispose()
	{
		CQt.QBitmap_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQPixmap param1)
	{
		CQt.QBitmap_OperatorAssign(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void Swap(IQBitmap other)
	{
		CQt.QBitmap_Swap(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void ToQVariant()
	{
		CQt.QBitmap_ToQVariant(this.nativePtr);
	}
	
	public void Clear()
	{
		CQt.QBitmap_Clear(this.nativePtr);
	}
	
	public static void FromImage(IQImage image)
	{
		CQt.QBitmap_FromImage((image == default || image.NativePtr == default) ? default : image.NativePtr);
	}
	
	public static void FromData(IQSize size, uint8* bits)
	{
		CQt.QBitmap_FromData((size == default || size.NativePtr == default) ? default : size.NativePtr, bits);
	}
	
	public static void FromPixmap(IQPixmap pixmap)
	{
		CQt.QBitmap_FromPixmap((pixmap == default || pixmap.NativePtr == default) ? default : pixmap.NativePtr);
	}
	
	public void Transformed(IQTransform matrix)
	{
		CQt.QBitmap_Transformed(this.nativePtr, (matrix == default || matrix.NativePtr == default) ? default : matrix.NativePtr);
	}
	
	public void OperatorAssignWithQBitmap(IQBitmap param1)
	{
		CQt.QBitmap_OperatorAssignWithQBitmap(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public static void FromImage2(IQImage image, int64 flags)
	{
		CQt.QBitmap_FromImage2((image == default || image.NativePtr == default) ? default : image.NativePtr, flags);
	}
	
	public static void FromData3(IQSize size, uint8* bits, int64 monoFormat)
	{
		CQt.QBitmap_FromData3((size == default || size.NativePtr == default) ? default : size.NativePtr, bits, (int64)monoFormat);
	}
	
	public bool IsNull()
	{
		return CQt.QPixmap_IsNull(this.nativePtr);
	}
	
	public int32 DevType()
	{
		return CQt.QPixmap_DevType(this.nativePtr);
	}
	
	public int32 Width()
	{
		return CQt.QPixmap_Width(this.nativePtr);
	}
	
	public int32 Height()
	{
		return CQt.QPixmap_Height(this.nativePtr);
	}
	
	public void Size()
	{
		CQt.QPixmap_Size(this.nativePtr);
	}
	
	public void Rect()
	{
		CQt.QPixmap_Rect(this.nativePtr);
	}
	
	public int32 Depth()
	{
		return CQt.QPixmap_Depth(this.nativePtr);
	}
	
	public static int32 DefaultDepth()
	{
		return CQt.QPixmap_DefaultDepth();
	}
	
	public void Fill()
	{
		CQt.QPixmap_Fill(this.nativePtr);
	}
	
	public void Mask()
	{
		CQt.QPixmap_Mask(this.nativePtr);
	}
	
	public void SetMask(IQBitmap mask)
	{
		CQt.QPixmap_SetMask(this.nativePtr, (mask == default || mask.NativePtr == default) ? default : mask.NativePtr);
	}
	
	public double DevicePixelRatio()
	{
		return CQt.QPixmap_DevicePixelRatio(this.nativePtr);
	}
	
	public void SetDevicePixelRatio(double scaleFactor)
	{
		CQt.QPixmap_SetDevicePixelRatio(this.nativePtr, scaleFactor);
	}
	
	public void DeviceIndependentSize()
	{
		CQt.QPixmap_DeviceIndependentSize(this.nativePtr);
	}
	
	public bool HasAlpha()
	{
		return CQt.QPixmap_HasAlpha(this.nativePtr);
	}
	
	public bool HasAlphaChannel()
	{
		return CQt.QPixmap_HasAlphaChannel(this.nativePtr);
	}
	
	public void CreateHeuristicMask()
	{
		CQt.QPixmap_CreateHeuristicMask(this.nativePtr);
	}
	
	public void CreateMaskFromColor(IQColor maskColor)
	{
		CQt.QPixmap_CreateMaskFromColor(this.nativePtr, (maskColor == default || maskColor.NativePtr == default) ? default : maskColor.NativePtr);
	}
	
	public void Scaled(int32 w, int32 h)
	{
		CQt.QPixmap_Scaled(this.nativePtr, w, h);
	}
	
	public void ScaledWithQSize(IQSize s)
	{
		CQt.QPixmap_ScaledWithQSize(this.nativePtr, (s == default || s.NativePtr == default) ? default : s.NativePtr);
	}
	
	public void ScaledToWidth(int32 w)
	{
		CQt.QPixmap_ScaledToWidth(this.nativePtr, w);
	}
	
	public void ScaledToHeight(int32 h)
	{
		CQt.QPixmap_ScaledToHeight(this.nativePtr, h);
	}
	
	public static void TrueMatrix(IQTransform m, int32 w, int32 h)
	{
		CQt.QPixmap_TrueMatrix((m == default || m.NativePtr == default) ? default : m.NativePtr, w, h);
	}
	
	public void ToImage()
	{
		CQt.QPixmap_ToImage(this.nativePtr);
	}
	
	public static void FromImageReader(IQImageReader imageReader)
	{
		CQt.QPixmap_FromImageReader((imageReader == default || imageReader.NativePtr == default) ? default : imageReader.NativePtr);
	}
	
	public bool Load(String fileName)
	{
		return CQt.QPixmap_Load(this.nativePtr, libqt_string(fileName));
	}
	
	public bool LoadFromData(uint8* buf, uint32 lenVal)
	{
		return CQt.QPixmap_LoadFromData(this.nativePtr, buf, lenVal);
	}
	
	public bool LoadFromDataWithData(String data)
	{
		return CQt.QPixmap_LoadFromDataWithData(this.nativePtr, libqt_string(data));
	}
	
	public bool Save(String fileName)
	{
		return CQt.QPixmap_Save(this.nativePtr, libqt_string(fileName));
	}
	
	public bool SaveWithDevice(IQIODevice device)
	{
		return CQt.QPixmap_SaveWithDevice(this.nativePtr, (device == default || device.NativePtr == default) ? default : device.NativePtr);
	}
	
	public bool ConvertFromImage(IQImage img)
	{
		return CQt.QPixmap_ConvertFromImage(this.nativePtr, (img == default || img.NativePtr == default) ? default : img.NativePtr);
	}
	
	public void Copy(int32 x, int32 y, int32 width, int32 height)
	{
		CQt.QPixmap_Copy(this.nativePtr, x, y, width, height);
	}
	
	public void Copy2()
	{
		CQt.QPixmap_Copy2(this.nativePtr);
	}
	
	public void Scroll(int32 dx, int32 dy, int32 x, int32 y, int32 width, int32 height)
	{
		CQt.QPixmap_Scroll(this.nativePtr, dx, dy, x, y, width, height);
	}
	
	public void Scroll2(int32 dx, int32 dy, IQRect rect)
	{
		CQt.QPixmap_Scroll2(this.nativePtr, dx, dy, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public int64 CacheKey()
	{
		return CQt.QPixmap_CacheKey(this.nativePtr);
	}
	
	public bool IsDetached()
	{
		return CQt.QPixmap_IsDetached(this.nativePtr);
	}
	
	public void Detach()
	{
		CQt.QPixmap_Detach(this.nativePtr);
	}
	
	public bool IsQBitmap()
	{
		return CQt.QPixmap_IsQBitmap(this.nativePtr);
	}
	
	public void* PaintEngine()
	{
		return CQt.QPixmap_PaintEngine(this.nativePtr);
	}
	
	public bool OperatorNot()
	{
		return CQt.QPixmap_OperatorNot(this.nativePtr);
	}
	
	public void Fill1(IQColor fillColor)
	{
		CQt.QPixmap_Fill1(this.nativePtr, (fillColor == default || fillColor.NativePtr == default) ? default : fillColor.NativePtr);
	}
	
	public void CreateHeuristicMask1(bool clipTight)
	{
		CQt.QPixmap_CreateHeuristicMask1(this.nativePtr, clipTight);
	}
	
	public void CreateMaskFromColor2(IQColor maskColor, int64 mode)
	{
		CQt.QPixmap_CreateMaskFromColor2(this.nativePtr, (maskColor == default || maskColor.NativePtr == default) ? default : maskColor.NativePtr, (int64)mode);
	}
	
	public void Scaled3(int32 w, int32 h, int64 aspectMode)
	{
		CQt.QPixmap_Scaled3(this.nativePtr, w, h, (int64)aspectMode);
	}
	
	public void Scaled4(int32 w, int32 h, int64 aspectMode, int64 mode)
	{
		CQt.QPixmap_Scaled4(this.nativePtr, w, h, (int64)aspectMode, (int64)mode);
	}
	
	public void Scaled2(IQSize s, int64 aspectMode)
	{
		CQt.QPixmap_Scaled2(this.nativePtr, (s == default || s.NativePtr == default) ? default : s.NativePtr, (int64)aspectMode);
	}
	
	public void Scaled32(IQSize s, int64 aspectMode, int64 mode)
	{
		CQt.QPixmap_Scaled32(this.nativePtr, (s == default || s.NativePtr == default) ? default : s.NativePtr, (int64)aspectMode, (int64)mode);
	}
	
	public void ScaledToWidth2(int32 w, int64 mode)
	{
		CQt.QPixmap_ScaledToWidth2(this.nativePtr, w, (int64)mode);
	}
	
	public void ScaledToHeight2(int32 h, int64 mode)
	{
		CQt.QPixmap_ScaledToHeight2(this.nativePtr, h, (int64)mode);
	}
	
	public void Transformed2(IQTransform param1, int64 mode)
	{
		CQt.QPixmap_Transformed2(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, (int64)mode);
	}
	
	public static void FromImageReader2(IQImageReader imageReader, int64 flags)
	{
		CQt.QPixmap_FromImageReader2((imageReader == default || imageReader.NativePtr == default) ? default : imageReader.NativePtr, flags);
	}
	
	public bool Load2(String fileName, char8* format)
	{
		return CQt.QPixmap_Load2(this.nativePtr, libqt_string(fileName), format);
	}
	
	public bool Load3(String fileName, char8* format, int64 flags)
	{
		return CQt.QPixmap_Load3(this.nativePtr, libqt_string(fileName), format, flags);
	}
	
	public bool LoadFromData3(uint8* buf, uint32 lenVal, char8* format)
	{
		return CQt.QPixmap_LoadFromData3(this.nativePtr, buf, lenVal, format);
	}
	
	public bool LoadFromData4(uint8* buf, uint32 lenVal, char8* format, int64 flags)
	{
		return CQt.QPixmap_LoadFromData4(this.nativePtr, buf, lenVal, format, flags);
	}
	
	public bool LoadFromData2(String data, char8* format)
	{
		return CQt.QPixmap_LoadFromData2(this.nativePtr, libqt_string(data), format);
	}
	
	public bool LoadFromData32(String data, char8* format, int64 flags)
	{
		return CQt.QPixmap_LoadFromData32(this.nativePtr, libqt_string(data), format, flags);
	}
	
	public bool Save2(String fileName, char8* format)
	{
		return CQt.QPixmap_Save2(this.nativePtr, libqt_string(fileName), format);
	}
	
	public bool Save3(String fileName, char8* format, int32 quality)
	{
		return CQt.QPixmap_Save3(this.nativePtr, libqt_string(fileName), format, quality);
	}
	
	public bool Save22(IQIODevice device, char8* format)
	{
		return CQt.QPixmap_Save22(this.nativePtr, (device == default || device.NativePtr == default) ? default : device.NativePtr, format);
	}
	
	public bool Save32(IQIODevice device, char8* format, int32 quality)
	{
		return CQt.QPixmap_Save32(this.nativePtr, (device == default || device.NativePtr == default) ? default : device.NativePtr, format, quality);
	}
	
	public bool ConvertFromImage2(IQImage img, int64 flags)
	{
		return CQt.QPixmap_ConvertFromImage2(this.nativePtr, (img == default || img.NativePtr == default) ? default : img.NativePtr, flags);
	}
	
	public void Copy1(IQRect rect)
	{
		CQt.QPixmap_Copy1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void Scroll7(int32 dx, int32 dy, int32 x, int32 y, int32 width, int32 height, IQRegion exposed)
	{
		CQt.QPixmap_Scroll7(this.nativePtr, dx, dy, x, y, width, height, (exposed == default || exposed.NativePtr == default) ? default : exposed.NativePtr);
	}
	
	public void Scroll4(int32 dx, int32 dy, IQRect rect, IQRegion exposed)
	{
		CQt.QPixmap_Scroll4(this.nativePtr, dx, dy, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, (exposed == default || exposed.NativePtr == default) ? default : exposed.NativePtr);
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
	
	public int32 ColorCount()
	{
		return CQt.QPaintDevice_ColorCount(this.nativePtr);
	}
	
	public static double DevicePixelRatioFScale()
	{
		return CQt.QPaintDevice_DevicePixelRatioFScale();
	}
	
}
public class QBitmap
{
	public QBitmapPtr handle;
	
	public static implicit operator QBitmapPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QBitmapPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQPixmap param1)
	{
		this.handle.OperatorAssign(param1);
	}
	
	public void Swap(IQBitmap other)
	{
		this.handle.Swap(other);
	}
	
	public void ToQVariant()
	{
		this.handle.ToQVariant();
	}
	
	public void Clear()
	{
		this.handle.Clear();
	}
	
	public static void FromImage(IQImage image)
	{
		QBitmapPtr.FromImage(image);
	}
	
	public static void FromData(IQSize size, uint8* bits)
	{
		QBitmapPtr.FromData(size, bits);
	}
	
	public static void FromPixmap(IQPixmap pixmap)
	{
		QBitmapPtr.FromPixmap(pixmap);
	}
	
	public void Transformed(IQTransform matrix)
	{
		this.handle.Transformed(matrix);
	}
	
	public void OperatorAssignWithQBitmap(IQBitmap param1)
	{
		this.handle.OperatorAssignWithQBitmap(param1);
	}
	
	public static void FromImage2(IQImage image, int64 flags)
	{
		QBitmapPtr.FromImage2(image, flags);
	}
	
	public static void FromData3(IQSize size, uint8* bits, int64 monoFormat)
	{
		QBitmapPtr.FromData3(size, bits, monoFormat);
	}
	
	public bool IsNull()
	{
		return this.handle.IsNull();
	}
	
	public virtual int32 DevType()
	{
		return this.handle.DevType();
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
	
	public static int32 DefaultDepth()
	{
		return QBitmapPtr.DefaultDepth();
	}
	
	public void Fill()
	{
		this.handle.Fill();
	}
	
	public void Mask()
	{
		this.handle.Mask();
	}
	
	public void SetMask(IQBitmap mask)
	{
		this.handle.SetMask(mask);
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
	
	public bool HasAlpha()
	{
		return this.handle.HasAlpha();
	}
	
	public bool HasAlphaChannel()
	{
		return this.handle.HasAlphaChannel();
	}
	
	public void CreateHeuristicMask()
	{
		this.handle.CreateHeuristicMask();
	}
	
	public void CreateMaskFromColor(IQColor maskColor)
	{
		this.handle.CreateMaskFromColor(maskColor);
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
	
	public static void TrueMatrix(IQTransform m, int32 w, int32 h)
	{
		QBitmapPtr.TrueMatrix(m, w, h);
	}
	
	public void ToImage()
	{
		this.handle.ToImage();
	}
	
	public static void FromImageReader(IQImageReader imageReader)
	{
		QBitmapPtr.FromImageReader(imageReader);
	}
	
	public bool Load(String fileName)
	{
		return this.handle.Load(fileName);
	}
	
	public bool LoadFromData(uint8* buf, uint32 lenVal)
	{
		return this.handle.LoadFromData(buf, lenVal);
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
	
	public bool ConvertFromImage(IQImage img)
	{
		return this.handle.ConvertFromImage(img);
	}
	
	public void Copy(int32 x, int32 y, int32 width, int32 height)
	{
		this.handle.Copy(x, y, width, height);
	}
	
	public void Copy2()
	{
		this.handle.Copy2();
	}
	
	public void Scroll(int32 dx, int32 dy, int32 x, int32 y, int32 width, int32 height)
	{
		this.handle.Scroll(dx, dy, x, y, width, height);
	}
	
	public void Scroll2(int32 dx, int32 dy, IQRect rect)
	{
		this.handle.Scroll2(dx, dy, rect);
	}
	
	public int64 CacheKey()
	{
		return this.handle.CacheKey();
	}
	
	public bool IsDetached()
	{
		return this.handle.IsDetached();
	}
	
	public void Detach()
	{
		this.handle.Detach();
	}
	
	public bool IsQBitmap()
	{
		return this.handle.IsQBitmap();
	}
	
	public virtual void* PaintEngine()
	{
		return this.handle.PaintEngine();
	}
	
	public bool OperatorNot()
	{
		return this.handle.OperatorNot();
	}
	
	public void Fill1(IQColor fillColor)
	{
		this.handle.Fill1(fillColor);
	}
	
	public void CreateHeuristicMask1(bool clipTight)
	{
		this.handle.CreateHeuristicMask1(clipTight);
	}
	
	public void CreateMaskFromColor2(IQColor maskColor, int64 mode)
	{
		this.handle.CreateMaskFromColor2(maskColor, mode);
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
	
	public void Transformed2(IQTransform param1, int64 mode)
	{
		this.handle.Transformed2(param1, mode);
	}
	
	public static void FromImageReader2(IQImageReader imageReader, int64 flags)
	{
		QBitmapPtr.FromImageReader2(imageReader, flags);
	}
	
	public bool Load2(String fileName, char8* format)
	{
		return this.handle.Load2(fileName, format);
	}
	
	public bool Load3(String fileName, char8* format, int64 flags)
	{
		return this.handle.Load3(fileName, format, flags);
	}
	
	public bool LoadFromData3(uint8* buf, uint32 lenVal, char8* format)
	{
		return this.handle.LoadFromData3(buf, lenVal, format);
	}
	
	public bool LoadFromData4(uint8* buf, uint32 lenVal, char8* format, int64 flags)
	{
		return this.handle.LoadFromData4(buf, lenVal, format, flags);
	}
	
	public bool LoadFromData2(String data, char8* format)
	{
		return this.handle.LoadFromData2(data, format);
	}
	
	public bool LoadFromData32(String data, char8* format, int64 flags)
	{
		return this.handle.LoadFromData32(data, format, flags);
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
	
	public bool ConvertFromImage2(IQImage img, int64 flags)
	{
		return this.handle.ConvertFromImage2(img, flags);
	}
	
	public void Copy1(IQRect rect)
	{
		this.handle.Copy1(rect);
	}
	
	public void Scroll7(int32 dx, int32 dy, int32 x, int32 y, int32 width, int32 height, IQRegion exposed)
	{
		this.handle.Scroll7(dx, dy, x, y, width, height, exposed);
	}
	
	public void Scroll4(int32 dx, int32 dy, IQRect rect, IQRegion exposed)
	{
		this.handle.Scroll4(dx, dy, rect, exposed);
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
	
	public int32 ColorCount()
	{
		return this.handle.ColorCount();
	}
	
	public static double DevicePixelRatioFScale()
	{
		return QBitmapPtr.DevicePixelRatioFScale();
	}
	
}
extension CQt
{
	[LinkName("QBitmap_new")]
	public static extern void* QBitmap_new();
	[LinkName("QBitmap_new2")]
	public static extern void* QBitmap_new2(void* param1);
	[LinkName("QBitmap_new3")]
	public static extern void* QBitmap_new3(int32 w, int32 h);
	[LinkName("QBitmap_new4")]
	public static extern void* QBitmap_new4(void* param1);
	[LinkName("QBitmap_new5")]
	public static extern void* QBitmap_new5(libqt_string fileName);
	[LinkName("QBitmap_new6")]
	public static extern void* QBitmap_new6(void* param1);
	[LinkName("QBitmap_new7")]
	public static extern void* QBitmap_new7(libqt_string fileName, char8* format);
	[LinkName("QBitmap_OperatorAssign")]
	public static extern void QBitmap_OperatorAssign(void* c_this, void* param1);
	[LinkName("QBitmap_Swap")]
	public static extern void QBitmap_Swap(void* c_this, void* other);
	[LinkName("QBitmap_ToQVariant")]
	public static extern void QBitmap_ToQVariant(void* c_this);
	[LinkName("QBitmap_Clear")]
	public static extern void QBitmap_Clear(void* c_this);
	[LinkName("QBitmap_FromImage")]
	public static extern void QBitmap_FromImage(void* image);
	[LinkName("QBitmap_FromData")]
	public static extern void QBitmap_FromData(void* size, uint8* bits);
	[LinkName("QBitmap_FromPixmap")]
	public static extern void QBitmap_FromPixmap(void* pixmap);
	[LinkName("QBitmap_Transformed")]
	public static extern void QBitmap_Transformed(void* c_this, void* matrix);
	[LinkName("QBitmap_OperatorAssignWithQBitmap")]
	public static extern void QBitmap_OperatorAssignWithQBitmap(void* c_this, void* param1);
	[LinkName("QBitmap_FromImage2")]
	public static extern void QBitmap_FromImage2(void* image, int64 flags);
	[LinkName("QBitmap_FromData3")]
	public static extern void QBitmap_FromData3(void* size, uint8* bits, int64 monoFormat);
	/// Delete this object from C++ memory
	[LinkName("QBitmap_Delete")]
	public static extern void QBitmap_Delete(void* self);
}