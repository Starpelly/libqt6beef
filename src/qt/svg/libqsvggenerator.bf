using System;
using System.Interop;
namespace Qt;

public class QSvgGenerator
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QSvgGenerator_new();
	}
	
	public ~this()
	{
		CQt.QSvgGenerator_Delete(this.nativePtr);
	}
	
	public libqt_string Title()
	{
		return CQt.QSvgGenerator_Title(this.nativePtr);
	}
	
	public void SetTitle(libqt_string title)
	{
		CQt.QSvgGenerator_SetTitle(this.nativePtr, title);
	}
	
	public libqt_string Description()
	{
		return CQt.QSvgGenerator_Description(this.nativePtr);
	}
	
	public void SetDescription(libqt_string description)
	{
		CQt.QSvgGenerator_SetDescription(this.nativePtr, description);
	}
	
	public void Size()
	{
		CQt.QSvgGenerator_Size(this.nativePtr);
	}
	
	public void SetSize(void* size)
	{
		CQt.QSvgGenerator_SetSize(this.nativePtr, size);
	}
	
	public void ViewBox()
	{
		CQt.QSvgGenerator_ViewBox(this.nativePtr);
	}
	
	public void ViewBoxF()
	{
		CQt.QSvgGenerator_ViewBoxF(this.nativePtr);
	}
	
	public void SetViewBox(void* viewBox)
	{
		CQt.QSvgGenerator_SetViewBox(this.nativePtr, viewBox);
	}
	
	public void SetViewBoxWithViewBox(void* viewBox)
	{
		CQt.QSvgGenerator_SetViewBoxWithViewBox(this.nativePtr, viewBox);
	}
	
	public libqt_string FileName()
	{
		return CQt.QSvgGenerator_FileName(this.nativePtr);
	}
	
	public void SetFileName(libqt_string fileName)
	{
		CQt.QSvgGenerator_SetFileName(this.nativePtr, fileName);
	}
	
	public void* OutputDevice()
	{
		return CQt.QSvgGenerator_OutputDevice(this.nativePtr);
	}
	
	public void SetOutputDevice(void* outputDevice)
	{
		CQt.QSvgGenerator_SetOutputDevice(this.nativePtr, outputDevice);
	}
	
	public void SetResolution(int32 dpi)
	{
		CQt.QSvgGenerator_SetResolution(this.nativePtr, dpi);
	}
	
	public int32 Resolution()
	{
		return CQt.QSvgGenerator_Resolution(this.nativePtr);
	}
	
	public virtual void* PaintEngine()
	{
		return CQt.QSvgGenerator_PaintEngine(this.nativePtr);
	}
	
	public virtual int32 Metric(int64 metric)
	{
		return CQt.QSvgGenerator_Metric(this.nativePtr, metric);
	}
	
	public virtual int32 DevType()
	{
		return CQt.QPaintDevice_DevType(this.nativePtr);
	}
	
	public bool PaintingActive()
	{
		return CQt.QPaintDevice_PaintingActive(this.nativePtr);
	}
	
	public int32 Width()
	{
		return CQt.QPaintDevice_Width(this.nativePtr);
	}
	
	public int32 Height()
	{
		return CQt.QPaintDevice_Height(this.nativePtr);
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
	
	public double DevicePixelRatio()
	{
		return CQt.QPaintDevice_DevicePixelRatio(this.nativePtr);
	}
	
	public double DevicePixelRatioF()
	{
		return CQt.QPaintDevice_DevicePixelRatioF(this.nativePtr);
	}
	
	public int32 ColorCount()
	{
		return CQt.QPaintDevice_ColorCount(this.nativePtr);
	}
	
	public int32 Depth()
	{
		return CQt.QPaintDevice_Depth(this.nativePtr);
	}
	
	public static double DevicePixelRatioFScale()
	{
		return CQt.QPaintDevice_DevicePixelRatioFScale();
	}
	
}
extension CQt
{
	[LinkName("QSvgGenerator_new")]
	public static extern void* QSvgGenerator_new();
	[LinkName("QSvgGenerator_Title")]
	public static extern libqt_string QSvgGenerator_Title(void* c_this);
	[LinkName("QSvgGenerator_SetTitle")]
	public static extern void QSvgGenerator_SetTitle(void* c_this, libqt_string title);
	[LinkName("QSvgGenerator_Description")]
	public static extern libqt_string QSvgGenerator_Description(void* c_this);
	[LinkName("QSvgGenerator_SetDescription")]
	public static extern void QSvgGenerator_SetDescription(void* c_this, libqt_string description);
	[LinkName("QSvgGenerator_Size")]
	public static extern void QSvgGenerator_Size(void* c_this);
	[LinkName("QSvgGenerator_SetSize")]
	public static extern void QSvgGenerator_SetSize(void* c_this, void* size);
	[LinkName("QSvgGenerator_ViewBox")]
	public static extern void QSvgGenerator_ViewBox(void* c_this);
	[LinkName("QSvgGenerator_ViewBoxF")]
	public static extern void QSvgGenerator_ViewBoxF(void* c_this);
	[LinkName("QSvgGenerator_SetViewBox")]
	public static extern void QSvgGenerator_SetViewBox(void* c_this, void* viewBox);
	[LinkName("QSvgGenerator_SetViewBoxWithViewBox")]
	public static extern void QSvgGenerator_SetViewBoxWithViewBox(void* c_this, void* viewBox);
	[LinkName("QSvgGenerator_FileName")]
	public static extern libqt_string QSvgGenerator_FileName(void* c_this);
	[LinkName("QSvgGenerator_SetFileName")]
	public static extern void QSvgGenerator_SetFileName(void* c_this, libqt_string fileName);
	[LinkName("QSvgGenerator_OutputDevice")]
	public static extern void* QSvgGenerator_OutputDevice(void* c_this);
	[LinkName("QSvgGenerator_SetOutputDevice")]
	public static extern void QSvgGenerator_SetOutputDevice(void* c_this, void* outputDevice);
	[LinkName("QSvgGenerator_SetResolution")]
	public static extern void QSvgGenerator_SetResolution(void* c_this, int32 dpi);
	[LinkName("QSvgGenerator_Resolution")]
	public static extern int32 QSvgGenerator_Resolution(void* c_this);
	[LinkName("QSvgGenerator_PaintEngine")]
	public static extern void* QSvgGenerator_PaintEngine(void* c_this);
	[LinkName("QSvgGenerator_Metric")]
	public static extern int32 QSvgGenerator_Metric(void* c_this, int64 metric);
	/// Delete this object from C++ memory
	[LinkName("QSvgGenerator_Delete")]
	public static extern void QSvgGenerator_Delete(void* self);
}