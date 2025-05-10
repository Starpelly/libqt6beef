using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QPagedPaintDevice__PdfVersion
{
	PdfVersion_1_4 = 0,
	PdfVersion_A1b = 1,
	PdfVersion_1_6 = 2,
}
public class QPagedPaintDevice
{
	protected void* nativePtr;
	
	public ~this()
	{
		CQt.QPagedPaintDevice_Delete(this.nativePtr);
	}
	
	public virtual bool NewPage()
	{
		return CQt.QPagedPaintDevice_NewPage(this.nativePtr);
	}
	
	public virtual bool SetPageLayout(void* pageLayout)
	{
		return CQt.QPagedPaintDevice_SetPageLayout(this.nativePtr, pageLayout);
	}
	
	public virtual bool SetPageSize(void* pageSize)
	{
		return CQt.QPagedPaintDevice_SetPageSize(this.nativePtr, pageSize);
	}
	
	public virtual bool SetPageOrientation(int64 orientation)
	{
		return CQt.QPagedPaintDevice_SetPageOrientation(this.nativePtr, orientation);
	}
	
	public virtual bool SetPageMargins(void* margins, int64 units)
	{
		return CQt.QPagedPaintDevice_SetPageMargins(this.nativePtr, margins, units);
	}
	
	public void PageLayout()
	{
		CQt.QPagedPaintDevice_PageLayout(this.nativePtr);
	}
	
	public virtual void SetPageRanges(void* ranges)
	{
		CQt.QPagedPaintDevice_SetPageRanges(this.nativePtr, ranges);
	}
	
	public void PageRanges()
	{
		CQt.QPagedPaintDevice_PageRanges(this.nativePtr);
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
	[LinkName("QPagedPaintDevice_NewPage")]
	public static extern bool QPagedPaintDevice_NewPage(void* c_this);
	[LinkName("QPagedPaintDevice_SetPageLayout")]
	public static extern bool QPagedPaintDevice_SetPageLayout(void* c_this, void* pageLayout);
	[LinkName("QPagedPaintDevice_SetPageSize")]
	public static extern bool QPagedPaintDevice_SetPageSize(void* c_this, void* pageSize);
	[LinkName("QPagedPaintDevice_SetPageOrientation")]
	public static extern bool QPagedPaintDevice_SetPageOrientation(void* c_this, int64 orientation);
	[LinkName("QPagedPaintDevice_SetPageMargins")]
	public static extern bool QPagedPaintDevice_SetPageMargins(void* c_this, void* margins, int64 units);
	[LinkName("QPagedPaintDevice_PageLayout")]
	public static extern void QPagedPaintDevice_PageLayout(void* c_this);
	[LinkName("QPagedPaintDevice_SetPageRanges")]
	public static extern void QPagedPaintDevice_SetPageRanges(void* c_this, void* ranges);
	[LinkName("QPagedPaintDevice_PageRanges")]
	public static extern void QPagedPaintDevice_PageRanges(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QPagedPaintDevice_Delete")]
	public static extern void QPagedPaintDevice_Delete(void* self);
}