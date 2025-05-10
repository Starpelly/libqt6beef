using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QPaintDevice__PaintDeviceMetric
{
	PdmWidth = 1,
	PdmHeight = 2,
	PdmWidthMM = 3,
	PdmHeightMM = 4,
	PdmNumColors = 5,
	PdmDepth = 6,
	PdmDpiX = 7,
	PdmDpiY = 8,
	PdmPhysicalDpiX = 9,
	PdmPhysicalDpiY = 10,
	PdmDevicePixelRatio = 11,
	PdmDevicePixelRatioScaled = 12,
}
public interface IQPaintDevice
{
	void* NativePtr { get; }
}
public class QPaintDevice : IQPaintDevice
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public ~this()
	{
		CQt.QPaintDevice_Delete(this.nativePtr);
	}
	
	public virtual int32 DevType()
	{
		return CQt.QPaintDevice_DevType(this.nativePtr);
	}
	
	public bool PaintingActive()
	{
		return CQt.QPaintDevice_PaintingActive(this.nativePtr);
	}
	
	public virtual void* PaintEngine()
	{
		return CQt.QPaintDevice_PaintEngine(this.nativePtr);
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
	[LinkName("QPaintDevice_DevType")]
	public static extern int32 QPaintDevice_DevType(void* c_this);
	[LinkName("QPaintDevice_PaintingActive")]
	public static extern bool QPaintDevice_PaintingActive(void* c_this);
	[LinkName("QPaintDevice_PaintEngine")]
	public static extern void* QPaintDevice_PaintEngine(void* c_this);
	[LinkName("QPaintDevice_Width")]
	public static extern int32 QPaintDevice_Width(void* c_this);
	[LinkName("QPaintDevice_Height")]
	public static extern int32 QPaintDevice_Height(void* c_this);
	[LinkName("QPaintDevice_WidthMM")]
	public static extern int32 QPaintDevice_WidthMM(void* c_this);
	[LinkName("QPaintDevice_HeightMM")]
	public static extern int32 QPaintDevice_HeightMM(void* c_this);
	[LinkName("QPaintDevice_LogicalDpiX")]
	public static extern int32 QPaintDevice_LogicalDpiX(void* c_this);
	[LinkName("QPaintDevice_LogicalDpiY")]
	public static extern int32 QPaintDevice_LogicalDpiY(void* c_this);
	[LinkName("QPaintDevice_PhysicalDpiX")]
	public static extern int32 QPaintDevice_PhysicalDpiX(void* c_this);
	[LinkName("QPaintDevice_PhysicalDpiY")]
	public static extern int32 QPaintDevice_PhysicalDpiY(void* c_this);
	[LinkName("QPaintDevice_DevicePixelRatio")]
	public static extern double QPaintDevice_DevicePixelRatio(void* c_this);
	[LinkName("QPaintDevice_DevicePixelRatioF")]
	public static extern double QPaintDevice_DevicePixelRatioF(void* c_this);
	[LinkName("QPaintDevice_ColorCount")]
	public static extern int32 QPaintDevice_ColorCount(void* c_this);
	[LinkName("QPaintDevice_Depth")]
	public static extern int32 QPaintDevice_Depth(void* c_this);
	[LinkName("QPaintDevice_DevicePixelRatioFScale")]
	public static extern double QPaintDevice_DevicePixelRatioFScale();
	[LinkName("QPaintDevice_Metric")]
	public static extern int32 QPaintDevice_Metric(void* c_this, int64 metric);
	[LinkName("QPaintDevice_InitPainter")]
	public static extern void QPaintDevice_InitPainter(void* c_this, void* painter);
	[LinkName("QPaintDevice_Redirected")]
	public static extern void* QPaintDevice_Redirected(void* c_this, void* offset);
	[LinkName("QPaintDevice_SharedPainter")]
	public static extern void* QPaintDevice_SharedPainter(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QPaintDevice_Delete")]
	public static extern void QPaintDevice_Delete(void* self);
}