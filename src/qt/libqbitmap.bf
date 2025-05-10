using System;
using System.Interop;
namespace Qt;

public class QBitmap
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QBitmap_new();
	}
	
	public ~this()
	{
		CQt.QBitmap_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* param1)
	{
		CQt.QBitmap_OperatorAssign(this.nativePtr, param1);
	}
	
	public void Swap(void* other)
	{
		CQt.QBitmap_Swap(this.nativePtr, other);
	}
	
	public void ToQVariant()
	{
		CQt.QBitmap_ToQVariant(this.nativePtr);
	}
	
	public void Clear()
	{
		CQt.QBitmap_Clear(this.nativePtr);
	}
	
	public static void FromImage(void* image)
	{
		CQt.QBitmap_FromImage(image);
	}
	
	public static void FromData(void* size, uint8* bits)
	{
		CQt.QBitmap_FromData(size, bits);
	}
	
	public static void FromPixmap(void* pixmap)
	{
		CQt.QBitmap_FromPixmap(pixmap);
	}
	
	public void Transformed(void* matrix)
	{
		CQt.QBitmap_Transformed(this.nativePtr, matrix);
	}
	
	public void OperatorAssignWithQBitmap(void* param1)
	{
		CQt.QBitmap_OperatorAssignWithQBitmap(this.nativePtr, param1);
	}
	
	public static void FromImage2(void* image, int64 flags)
	{
		CQt.QBitmap_FromImage2(image, flags);
	}
	
	public static void FromData3(void* size, uint8* bits, int64 monoFormat)
	{
		CQt.QBitmap_FromData3(size, bits, monoFormat);
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
	
	public void SetMask(void* mask)
	{
		CQt.QPixmap_SetMask(this.nativePtr, mask);
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
	
	public void CreateMaskFromColor(void* maskColor)
	{
		CQt.QPixmap_CreateMaskFromColor(this.nativePtr, maskColor);
	}
	
	public void Scaled(int32 w, int32 h)
	{
		CQt.QPixmap_Scaled(this.nativePtr, w, h);
	}
	
	public void ScaledWithQSize(void* s)
	{
		CQt.QPixmap_ScaledWithQSize(this.nativePtr, s);
	}
	
	public void ScaledToWidth(int32 w)
	{
		CQt.QPixmap_ScaledToWidth(this.nativePtr, w);
	}
	
	public void ScaledToHeight(int32 h)
	{
		CQt.QPixmap_ScaledToHeight(this.nativePtr, h);
	}
	
	public static void TrueMatrix(void* m, int32 w, int32 h)
	{
		CQt.QPixmap_TrueMatrix(m, w, h);
	}
	
	public void ToImage()
	{
		CQt.QPixmap_ToImage(this.nativePtr);
	}
	
	public static void FromImageReader(void* imageReader)
	{
		CQt.QPixmap_FromImageReader(imageReader);
	}
	
	public bool Load(libqt_string fileName)
	{
		return CQt.QPixmap_Load(this.nativePtr, fileName);
	}
	
	public bool LoadFromData(uint8* buf, uint32 lenVal)
	{
		return CQt.QPixmap_LoadFromData(this.nativePtr, buf, lenVal);
	}
	
	public bool LoadFromDataWithData(libqt_string data)
	{
		return CQt.QPixmap_LoadFromDataWithData(this.nativePtr, data);
	}
	
	public bool Save(libqt_string fileName)
	{
		return CQt.QPixmap_Save(this.nativePtr, fileName);
	}
	
	public bool SaveWithDevice(void* device)
	{
		return CQt.QPixmap_SaveWithDevice(this.nativePtr, device);
	}
	
	public bool ConvertFromImage(void* img)
	{
		return CQt.QPixmap_ConvertFromImage(this.nativePtr, img);
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
	
	public void Scroll2(int32 dx, int32 dy, void* rect)
	{
		CQt.QPixmap_Scroll2(this.nativePtr, dx, dy, rect);
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
	
	public void Fill1(void* fillColor)
	{
		CQt.QPixmap_Fill1(this.nativePtr, fillColor);
	}
	
	public void CreateHeuristicMask1(bool clipTight)
	{
		CQt.QPixmap_CreateHeuristicMask1(this.nativePtr, clipTight);
	}
	
	public void CreateMaskFromColor2(void* maskColor, int64 mode)
	{
		CQt.QPixmap_CreateMaskFromColor2(this.nativePtr, maskColor, mode);
	}
	
	public void Scaled3(int32 w, int32 h, int64 aspectMode)
	{
		CQt.QPixmap_Scaled3(this.nativePtr, w, h, aspectMode);
	}
	
	public void Scaled4(int32 w, int32 h, int64 aspectMode, int64 mode)
	{
		CQt.QPixmap_Scaled4(this.nativePtr, w, h, aspectMode, mode);
	}
	
	public void Scaled2(void* s, int64 aspectMode)
	{
		CQt.QPixmap_Scaled2(this.nativePtr, s, aspectMode);
	}
	
	public void Scaled32(void* s, int64 aspectMode, int64 mode)
	{
		CQt.QPixmap_Scaled32(this.nativePtr, s, aspectMode, mode);
	}
	
	public void ScaledToWidth2(int32 w, int64 mode)
	{
		CQt.QPixmap_ScaledToWidth2(this.nativePtr, w, mode);
	}
	
	public void ScaledToHeight2(int32 h, int64 mode)
	{
		CQt.QPixmap_ScaledToHeight2(this.nativePtr, h, mode);
	}
	
	public void Transformed2(void* param1, int64 mode)
	{
		CQt.QPixmap_Transformed2(this.nativePtr, param1, mode);
	}
	
	public static void FromImageReader2(void* imageReader, int64 flags)
	{
		CQt.QPixmap_FromImageReader2(imageReader, flags);
	}
	
	public bool Load2(libqt_string fileName, char8[] format)
	{
		return CQt.QPixmap_Load2(this.nativePtr, fileName, format);
	}
	
	public bool Load3(libqt_string fileName, char8[] format, int64 flags)
	{
		return CQt.QPixmap_Load3(this.nativePtr, fileName, format, flags);
	}
	
	public bool LoadFromData3(uint8* buf, uint32 lenVal, char8[] format)
	{
		return CQt.QPixmap_LoadFromData3(this.nativePtr, buf, lenVal, format);
	}
	
	public bool LoadFromData4(uint8* buf, uint32 lenVal, char8[] format, int64 flags)
	{
		return CQt.QPixmap_LoadFromData4(this.nativePtr, buf, lenVal, format, flags);
	}
	
	public bool LoadFromData2(libqt_string data, char8[] format)
	{
		return CQt.QPixmap_LoadFromData2(this.nativePtr, data, format);
	}
	
	public bool LoadFromData32(libqt_string data, char8[] format, int64 flags)
	{
		return CQt.QPixmap_LoadFromData32(this.nativePtr, data, format, flags);
	}
	
	public bool Save2(libqt_string fileName, char8[] format)
	{
		return CQt.QPixmap_Save2(this.nativePtr, fileName, format);
	}
	
	public bool Save3(libqt_string fileName, char8[] format, int32 quality)
	{
		return CQt.QPixmap_Save3(this.nativePtr, fileName, format, quality);
	}
	
	public bool Save22(void* device, char8[] format)
	{
		return CQt.QPixmap_Save22(this.nativePtr, device, format);
	}
	
	public bool Save32(void* device, char8[] format, int32 quality)
	{
		return CQt.QPixmap_Save32(this.nativePtr, device, format, quality);
	}
	
	public bool ConvertFromImage2(void* img, int64 flags)
	{
		return CQt.QPixmap_ConvertFromImage2(this.nativePtr, img, flags);
	}
	
	public void Copy1(void* rect)
	{
		CQt.QPixmap_Copy1(this.nativePtr, rect);
	}
	
	public void Scroll7(int32 dx, int32 dy, int32 x, int32 y, int32 width, int32 height, void* exposed)
	{
		CQt.QPixmap_Scroll7(this.nativePtr, dx, dy, x, y, width, height, exposed);
	}
	
	public void Scroll4(int32 dx, int32 dy, void* rect, void* exposed)
	{
		CQt.QPixmap_Scroll4(this.nativePtr, dx, dy, rect, exposed);
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
	public static extern void* QBitmap_new7(libqt_string fileName, char8[] format);
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