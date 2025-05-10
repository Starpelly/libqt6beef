using System;
using System.Interop;
namespace Qt;

public interface IQPixmap
{
	void* NativePtr { get; }
}
public class QPixmap : IQPixmap, IQPaintDevice
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QPixmap_new();
	}
	
	public ~this()
	{
		CQt.QPixmap_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQPixmap param1)
	{
		CQt.QPixmap_OperatorAssign(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void Swap(IQPixmap other)
	{
		CQt.QPixmap_Swap(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public void ToQVariant()
	{
		CQt.QPixmap_ToQVariant(this.nativePtr);
	}
	
	public bool IsNull()
	{
		return CQt.QPixmap_IsNull(this.nativePtr);
	}
	
	public virtual int32 DevType()
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
		CQt.QPixmap_SetMask(this.nativePtr, (mask == default) ? default : (void*)mask.NativePtr);
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
		CQt.QPixmap_CreateMaskFromColor(this.nativePtr, (maskColor == default) ? default : (void*)maskColor.NativePtr);
	}
	
	public void Scaled(int32 w, int32 h)
	{
		CQt.QPixmap_Scaled(this.nativePtr, w, h);
	}
	
	public void ScaledWithQSize(IQSize s)
	{
		CQt.QPixmap_ScaledWithQSize(this.nativePtr, (s == default) ? default : (void*)s.NativePtr);
	}
	
	public void ScaledToWidth(int32 w)
	{
		CQt.QPixmap_ScaledToWidth(this.nativePtr, w);
	}
	
	public void ScaledToHeight(int32 h)
	{
		CQt.QPixmap_ScaledToHeight(this.nativePtr, h);
	}
	
	public void Transformed(IQTransform param1)
	{
		CQt.QPixmap_Transformed(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public static void TrueMatrix(IQTransform m, int32 w, int32 h)
	{
		CQt.QPixmap_TrueMatrix((m == default) ? default : (void*)m.NativePtr, w, h);
	}
	
	public void ToImage()
	{
		CQt.QPixmap_ToImage(this.nativePtr);
	}
	
	public static void FromImage(IQImage image)
	{
		CQt.QPixmap_FromImage((image == default) ? default : (void*)image.NativePtr);
	}
	
	public static void FromImageReader(IQImageReader imageReader)
	{
		CQt.QPixmap_FromImageReader((imageReader == null) ? null : (void*)imageReader.NativePtr);
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
		return CQt.QPixmap_SaveWithDevice(this.nativePtr, (device == null) ? null : (void*)device.NativePtr);
	}
	
	public bool ConvertFromImage(IQImage img)
	{
		return CQt.QPixmap_ConvertFromImage(this.nativePtr, (img == default) ? default : (void*)img.NativePtr);
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
		CQt.QPixmap_Scroll2(this.nativePtr, dx, dy, (rect == default) ? default : (void*)rect.NativePtr);
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
	
	public virtual void* PaintEngine()
	{
		return CQt.QPixmap_PaintEngine(this.nativePtr);
	}
	
	public bool OperatorNot()
	{
		return CQt.QPixmap_OperatorNot(this.nativePtr);
	}
	
	public virtual int32 Metric(int64 param1)
	{
		return CQt.QPixmap_Metric(this.nativePtr, param1);
	}
	
	public void Fill1(IQColor fillColor)
	{
		CQt.QPixmap_Fill1(this.nativePtr, (fillColor == default) ? default : (void*)fillColor.NativePtr);
	}
	
	public void CreateHeuristicMask1(bool clipTight)
	{
		CQt.QPixmap_CreateHeuristicMask1(this.nativePtr, clipTight);
	}
	
	public void CreateMaskFromColor2(IQColor maskColor, int64 mode)
	{
		CQt.QPixmap_CreateMaskFromColor2(this.nativePtr, (maskColor == default) ? default : (void*)maskColor.NativePtr, mode);
	}
	
	public void Scaled3(int32 w, int32 h, int64 aspectMode)
	{
		CQt.QPixmap_Scaled3(this.nativePtr, w, h, aspectMode);
	}
	
	public void Scaled4(int32 w, int32 h, int64 aspectMode, int64 mode)
	{
		CQt.QPixmap_Scaled4(this.nativePtr, w, h, aspectMode, mode);
	}
	
	public void Scaled2(IQSize s, int64 aspectMode)
	{
		CQt.QPixmap_Scaled2(this.nativePtr, (s == default) ? default : (void*)s.NativePtr, aspectMode);
	}
	
	public void Scaled32(IQSize s, int64 aspectMode, int64 mode)
	{
		CQt.QPixmap_Scaled32(this.nativePtr, (s == default) ? default : (void*)s.NativePtr, aspectMode, mode);
	}
	
	public void ScaledToWidth2(int32 w, int64 mode)
	{
		CQt.QPixmap_ScaledToWidth2(this.nativePtr, w, mode);
	}
	
	public void ScaledToHeight2(int32 h, int64 mode)
	{
		CQt.QPixmap_ScaledToHeight2(this.nativePtr, h, mode);
	}
	
	public void Transformed2(IQTransform param1, int64 mode)
	{
		CQt.QPixmap_Transformed2(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr, mode);
	}
	
	public static void FromImage2(IQImage image, int64 flags)
	{
		CQt.QPixmap_FromImage2((image == default) ? default : (void*)image.NativePtr, flags);
	}
	
	public static void FromImageReader2(IQImageReader imageReader, int64 flags)
	{
		CQt.QPixmap_FromImageReader2((imageReader == null) ? null : (void*)imageReader.NativePtr, flags);
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
		return CQt.QPixmap_Save22(this.nativePtr, (device == null) ? null : (void*)device.NativePtr, format);
	}
	
	public bool Save32(IQIODevice device, char8* format, int32 quality)
	{
		return CQt.QPixmap_Save32(this.nativePtr, (device == null) ? null : (void*)device.NativePtr, format, quality);
	}
	
	public bool ConvertFromImage2(IQImage img, int64 flags)
	{
		return CQt.QPixmap_ConvertFromImage2(this.nativePtr, (img == default) ? default : (void*)img.NativePtr, flags);
	}
	
	public void Copy1(IQRect rect)
	{
		CQt.QPixmap_Copy1(this.nativePtr, (rect == default) ? default : (void*)rect.NativePtr);
	}
	
	public void Scroll7(int32 dx, int32 dy, int32 x, int32 y, int32 width, int32 height, IQRegion exposed)
	{
		CQt.QPixmap_Scroll7(this.nativePtr, dx, dy, x, y, width, height, (exposed == null) ? null : (void*)exposed.NativePtr);
	}
	
	public void Scroll4(int32 dx, int32 dy, IQRect rect, IQRegion exposed)
	{
		CQt.QPixmap_Scroll4(this.nativePtr, dx, dy, (rect == default) ? default : (void*)rect.NativePtr, (exposed == null) ? null : (void*)exposed.NativePtr);
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
extension CQt
{
	[LinkName("QPixmap_new")]
	public static extern void* QPixmap_new();
	[LinkName("QPixmap_new2")]
	public static extern void* QPixmap_new2(int32 w, int32 h);
	[LinkName("QPixmap_new3")]
	public static extern void* QPixmap_new3(void* param1);
	[LinkName("QPixmap_new4")]
	public static extern void* QPixmap_new4(libqt_string fileName);
	[LinkName("QPixmap_new5")]
	public static extern void* QPixmap_new5(void* param1);
	[LinkName("QPixmap_new6")]
	public static extern void* QPixmap_new6(libqt_string fileName, char8* format);
	[LinkName("QPixmap_new7")]
	public static extern void* QPixmap_new7(libqt_string fileName, char8* format, int64 flags);
	[LinkName("QPixmap_OperatorAssign")]
	public static extern void QPixmap_OperatorAssign(void* c_this, void* param1);
	[LinkName("QPixmap_Swap")]
	public static extern void QPixmap_Swap(void* c_this, void* other);
	[LinkName("QPixmap_ToQVariant")]
	public static extern void QPixmap_ToQVariant(void* c_this);
	[LinkName("QPixmap_IsNull")]
	public static extern bool QPixmap_IsNull(void* c_this);
	[LinkName("QPixmap_DevType")]
	public static extern int32 QPixmap_DevType(void* c_this);
	[LinkName("QPixmap_Width")]
	public static extern int32 QPixmap_Width(void* c_this);
	[LinkName("QPixmap_Height")]
	public static extern int32 QPixmap_Height(void* c_this);
	[LinkName("QPixmap_Size")]
	public static extern void QPixmap_Size(void* c_this);
	[LinkName("QPixmap_Rect")]
	public static extern void QPixmap_Rect(void* c_this);
	[LinkName("QPixmap_Depth")]
	public static extern int32 QPixmap_Depth(void* c_this);
	[LinkName("QPixmap_DefaultDepth")]
	public static extern int32 QPixmap_DefaultDepth();
	[LinkName("QPixmap_Fill")]
	public static extern void QPixmap_Fill(void* c_this);
	[LinkName("QPixmap_Mask")]
	public static extern void QPixmap_Mask(void* c_this);
	[LinkName("QPixmap_SetMask")]
	public static extern void QPixmap_SetMask(void* c_this, void* mask);
	[LinkName("QPixmap_DevicePixelRatio")]
	public static extern double QPixmap_DevicePixelRatio(void* c_this);
	[LinkName("QPixmap_SetDevicePixelRatio")]
	public static extern void QPixmap_SetDevicePixelRatio(void* c_this, double scaleFactor);
	[LinkName("QPixmap_DeviceIndependentSize")]
	public static extern void QPixmap_DeviceIndependentSize(void* c_this);
	[LinkName("QPixmap_HasAlpha")]
	public static extern bool QPixmap_HasAlpha(void* c_this);
	[LinkName("QPixmap_HasAlphaChannel")]
	public static extern bool QPixmap_HasAlphaChannel(void* c_this);
	[LinkName("QPixmap_CreateHeuristicMask")]
	public static extern void QPixmap_CreateHeuristicMask(void* c_this);
	[LinkName("QPixmap_CreateMaskFromColor")]
	public static extern void QPixmap_CreateMaskFromColor(void* c_this, void* maskColor);
	[LinkName("QPixmap_Scaled")]
	public static extern void QPixmap_Scaled(void* c_this, int32 w, int32 h);
	[LinkName("QPixmap_ScaledWithQSize")]
	public static extern void QPixmap_ScaledWithQSize(void* c_this, void* s);
	[LinkName("QPixmap_ScaledToWidth")]
	public static extern void QPixmap_ScaledToWidth(void* c_this, int32 w);
	[LinkName("QPixmap_ScaledToHeight")]
	public static extern void QPixmap_ScaledToHeight(void* c_this, int32 h);
	[LinkName("QPixmap_Transformed")]
	public static extern void QPixmap_Transformed(void* c_this, void* param1);
	[LinkName("QPixmap_TrueMatrix")]
	public static extern void QPixmap_TrueMatrix(void* m, int32 w, int32 h);
	[LinkName("QPixmap_ToImage")]
	public static extern void QPixmap_ToImage(void* c_this);
	[LinkName("QPixmap_FromImage")]
	public static extern void QPixmap_FromImage(void* image);
	[LinkName("QPixmap_FromImageReader")]
	public static extern void QPixmap_FromImageReader(void* imageReader);
	[LinkName("QPixmap_Load")]
	public static extern bool QPixmap_Load(void* c_this, libqt_string fileName);
	[LinkName("QPixmap_LoadFromData")]
	public static extern bool QPixmap_LoadFromData(void* c_this, uint8* buf, uint32 lenVal);
	[LinkName("QPixmap_LoadFromDataWithData")]
	public static extern bool QPixmap_LoadFromDataWithData(void* c_this, libqt_string data);
	[LinkName("QPixmap_Save")]
	public static extern bool QPixmap_Save(void* c_this, libqt_string fileName);
	[LinkName("QPixmap_SaveWithDevice")]
	public static extern bool QPixmap_SaveWithDevice(void* c_this, void* device);
	[LinkName("QPixmap_ConvertFromImage")]
	public static extern bool QPixmap_ConvertFromImage(void* c_this, void* img);
	[LinkName("QPixmap_Copy")]
	public static extern void QPixmap_Copy(void* c_this, int32 x, int32 y, int32 width, int32 height);
	[LinkName("QPixmap_Copy2")]
	public static extern void QPixmap_Copy2(void* c_this);
	[LinkName("QPixmap_Scroll")]
	public static extern void QPixmap_Scroll(void* c_this, int32 dx, int32 dy, int32 x, int32 y, int32 width, int32 height);
	[LinkName("QPixmap_Scroll2")]
	public static extern void QPixmap_Scroll2(void* c_this, int32 dx, int32 dy, void* rect);
	[LinkName("QPixmap_CacheKey")]
	public static extern int64 QPixmap_CacheKey(void* c_this);
	[LinkName("QPixmap_IsDetached")]
	public static extern bool QPixmap_IsDetached(void* c_this);
	[LinkName("QPixmap_Detach")]
	public static extern void QPixmap_Detach(void* c_this);
	[LinkName("QPixmap_IsQBitmap")]
	public static extern bool QPixmap_IsQBitmap(void* c_this);
	[LinkName("QPixmap_PaintEngine")]
	public static extern void* QPixmap_PaintEngine(void* c_this);
	[LinkName("QPixmap_OperatorNot")]
	public static extern bool QPixmap_OperatorNot(void* c_this);
	[LinkName("QPixmap_Metric")]
	public static extern int32 QPixmap_Metric(void* c_this, int64 param1);
	[LinkName("QPixmap_Fill1")]
	public static extern void QPixmap_Fill1(void* c_this, void* fillColor);
	[LinkName("QPixmap_CreateHeuristicMask1")]
	public static extern void QPixmap_CreateHeuristicMask1(void* c_this, bool clipTight);
	[LinkName("QPixmap_CreateMaskFromColor2")]
	public static extern void QPixmap_CreateMaskFromColor2(void* c_this, void* maskColor, int64 mode);
	[LinkName("QPixmap_Scaled3")]
	public static extern void QPixmap_Scaled3(void* c_this, int32 w, int32 h, int64 aspectMode);
	[LinkName("QPixmap_Scaled4")]
	public static extern void QPixmap_Scaled4(void* c_this, int32 w, int32 h, int64 aspectMode, int64 mode);
	[LinkName("QPixmap_Scaled2")]
	public static extern void QPixmap_Scaled2(void* c_this, void* s, int64 aspectMode);
	[LinkName("QPixmap_Scaled32")]
	public static extern void QPixmap_Scaled32(void* c_this, void* s, int64 aspectMode, int64 mode);
	[LinkName("QPixmap_ScaledToWidth2")]
	public static extern void QPixmap_ScaledToWidth2(void* c_this, int32 w, int64 mode);
	[LinkName("QPixmap_ScaledToHeight2")]
	public static extern void QPixmap_ScaledToHeight2(void* c_this, int32 h, int64 mode);
	[LinkName("QPixmap_Transformed2")]
	public static extern void QPixmap_Transformed2(void* c_this, void* param1, int64 mode);
	[LinkName("QPixmap_FromImage2")]
	public static extern void QPixmap_FromImage2(void* image, int64 flags);
	[LinkName("QPixmap_FromImageReader2")]
	public static extern void QPixmap_FromImageReader2(void* imageReader, int64 flags);
	[LinkName("QPixmap_Load2")]
	public static extern bool QPixmap_Load2(void* c_this, libqt_string fileName, char8* format);
	[LinkName("QPixmap_Load3")]
	public static extern bool QPixmap_Load3(void* c_this, libqt_string fileName, char8* format, int64 flags);
	[LinkName("QPixmap_LoadFromData3")]
	public static extern bool QPixmap_LoadFromData3(void* c_this, uint8* buf, uint32 lenVal, char8* format);
	[LinkName("QPixmap_LoadFromData4")]
	public static extern bool QPixmap_LoadFromData4(void* c_this, uint8* buf, uint32 lenVal, char8* format, int64 flags);
	[LinkName("QPixmap_LoadFromData2")]
	public static extern bool QPixmap_LoadFromData2(void* c_this, libqt_string data, char8* format);
	[LinkName("QPixmap_LoadFromData32")]
	public static extern bool QPixmap_LoadFromData32(void* c_this, libqt_string data, char8* format, int64 flags);
	[LinkName("QPixmap_Save2")]
	public static extern bool QPixmap_Save2(void* c_this, libqt_string fileName, char8* format);
	[LinkName("QPixmap_Save3")]
	public static extern bool QPixmap_Save3(void* c_this, libqt_string fileName, char8* format, int32 quality);
	[LinkName("QPixmap_Save22")]
	public static extern bool QPixmap_Save22(void* c_this, void* device, char8* format);
	[LinkName("QPixmap_Save32")]
	public static extern bool QPixmap_Save32(void* c_this, void* device, char8* format, int32 quality);
	[LinkName("QPixmap_ConvertFromImage2")]
	public static extern bool QPixmap_ConvertFromImage2(void* c_this, void* img, int64 flags);
	[LinkName("QPixmap_Copy1")]
	public static extern void QPixmap_Copy1(void* c_this, void* rect);
	[LinkName("QPixmap_Scroll7")]
	public static extern void QPixmap_Scroll7(void* c_this, int32 dx, int32 dy, int32 x, int32 y, int32 width, int32 height, void* exposed);
	[LinkName("QPixmap_Scroll4")]
	public static extern void QPixmap_Scroll4(void* c_this, int32 dx, int32 dy, void* rect, void* exposed);
	/// Delete this object from C++ memory
	[LinkName("QPixmap_Delete")]
	public static extern void QPixmap_Delete(void* self);
}