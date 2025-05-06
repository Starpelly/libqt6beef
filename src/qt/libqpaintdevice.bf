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
public struct QPaintDevice
{
	[LinkName("QPaintDevice_DevType")]
	public static extern int32 QPaintDevice_DevType(Self* c_this);
	[LinkName("QPaintDevice_PaintingActive")]
	public static extern bool QPaintDevice_PaintingActive(Self* c_this);
	[LinkName("QPaintDevice_PaintEngine")]
	public static extern QPaintEngine* QPaintDevice_PaintEngine(Self* c_this);
	[LinkName("QPaintDevice_Width")]
	public static extern int32 QPaintDevice_Width(Self* c_this);
	[LinkName("QPaintDevice_Height")]
	public static extern int32 QPaintDevice_Height(Self* c_this);
	[LinkName("QPaintDevice_WidthMM")]
	public static extern int32 QPaintDevice_WidthMM(Self* c_this);
	[LinkName("QPaintDevice_HeightMM")]
	public static extern int32 QPaintDevice_HeightMM(Self* c_this);
	[LinkName("QPaintDevice_LogicalDpiX")]
	public static extern int32 QPaintDevice_LogicalDpiX(Self* c_this);
	[LinkName("QPaintDevice_LogicalDpiY")]
	public static extern int32 QPaintDevice_LogicalDpiY(Self* c_this);
	[LinkName("QPaintDevice_PhysicalDpiX")]
	public static extern int32 QPaintDevice_PhysicalDpiX(Self* c_this);
	[LinkName("QPaintDevice_PhysicalDpiY")]
	public static extern int32 QPaintDevice_PhysicalDpiY(Self* c_this);
	[LinkName("QPaintDevice_DevicePixelRatio")]
	public static extern double QPaintDevice_DevicePixelRatio(Self* c_this);
	[LinkName("QPaintDevice_DevicePixelRatioF")]
	public static extern double QPaintDevice_DevicePixelRatioF(Self* c_this);
	[LinkName("QPaintDevice_ColorCount")]
	public static extern int32 QPaintDevice_ColorCount(Self* c_this);
	[LinkName("QPaintDevice_Depth")]
	public static extern int32 QPaintDevice_Depth(Self* c_this);
	[LinkName("QPaintDevice_DevicePixelRatioFScale")]
	public static extern double QPaintDevice_DevicePixelRatioFScale();
	[LinkName("QPaintDevice_Metric")]
	public static extern int32 QPaintDevice_Metric(Self* c_this, int64 metric);
	[LinkName("QPaintDevice_InitPainter")]
	public static extern void QPaintDevice_InitPainter(Self* c_this, QPainter* painter);
	[LinkName("QPaintDevice_Redirected")]
	public static extern QPaintDevice* QPaintDevice_Redirected(Self* c_this, QPoint* offset);
	[LinkName("QPaintDevice_SharedPainter")]
	public static extern QPainter* QPaintDevice_SharedPainter(Self* c_this);
}