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
public interface IQPagedPaintDevice
{
	void* NativePtr { get; }
}
public struct QPagedPaintDevicePtr : IQPagedPaintDevice, IDisposable, IQPaintDevice
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public void Dispose()
	{
		CQt.QPagedPaintDevice_Delete(this.nativePtr);
	}
	
	public bool NewPage()
	{
		return CQt.QPagedPaintDevice_NewPage(this.nativePtr);
	}
	
	public bool SetPageLayout(IQPageLayout pageLayout)
	{
		return CQt.QPagedPaintDevice_SetPageLayout(this.nativePtr, (pageLayout == default || pageLayout.NativePtr == default) ? default : pageLayout.NativePtr);
	}
	
	public bool SetPageSize(IQPageSize pageSize)
	{
		return CQt.QPagedPaintDevice_SetPageSize(this.nativePtr, (pageSize == default || pageSize.NativePtr == default) ? default : pageSize.NativePtr);
	}
	
	public bool SetPageOrientation(int64 orientation)
	{
		return CQt.QPagedPaintDevice_SetPageOrientation(this.nativePtr, (int64)orientation);
	}
	
	public bool SetPageMargins(IQMarginsF margins, int64 units)
	{
		return CQt.QPagedPaintDevice_SetPageMargins(this.nativePtr, (margins == default || margins.NativePtr == default) ? default : margins.NativePtr, (int64)units);
	}
	
	public void PageLayout()
	{
		CQt.QPagedPaintDevice_PageLayout(this.nativePtr);
	}
	
	public void SetPageRanges(IQPageRanges ranges)
	{
		CQt.QPagedPaintDevice_SetPageRanges(this.nativePtr, (ranges == default || ranges.NativePtr == default) ? default : ranges.NativePtr);
	}
	
	public void PageRanges()
	{
		CQt.QPagedPaintDevice_PageRanges(this.nativePtr);
	}
	
	public int32 DevType()
	{
		return CQt.QPaintDevice_DevType(this.nativePtr);
	}
	
	public bool PaintingActive()
	{
		return CQt.QPaintDevice_PaintingActive(this.nativePtr);
	}
	
	public void* PaintEngine()
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
public class QPagedPaintDevice
{
	public QPagedPaintDevicePtr handle;
	
	public static implicit operator QPagedPaintDevicePtr(Self self)
	{
		return self.handle;
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual bool NewPage()
	{
		return this.handle.NewPage();
	}
	
	public virtual bool SetPageLayout(IQPageLayout pageLayout)
	{
		return this.handle.SetPageLayout(pageLayout);
	}
	
	public virtual bool SetPageSize(IQPageSize pageSize)
	{
		return this.handle.SetPageSize(pageSize);
	}
	
	public virtual bool SetPageOrientation(int64 orientation)
	{
		return this.handle.SetPageOrientation(orientation);
	}
	
	public virtual bool SetPageMargins(IQMarginsF margins, int64 units)
	{
		return this.handle.SetPageMargins(margins, units);
	}
	
	public void PageLayout()
	{
		this.handle.PageLayout();
	}
	
	public virtual void SetPageRanges(IQPageRanges ranges)
	{
		this.handle.SetPageRanges(ranges);
	}
	
	public void PageRanges()
	{
		this.handle.PageRanges();
	}
	
	public virtual int32 DevType()
	{
		return this.handle.DevType();
	}
	
	public bool PaintingActive()
	{
		return this.handle.PaintingActive();
	}
	
	public virtual void* PaintEngine()
	{
		return this.handle.PaintEngine();
	}
	
	public int32 Width()
	{
		return this.handle.Width();
	}
	
	public int32 Height()
	{
		return this.handle.Height();
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
	
	public double DevicePixelRatio()
	{
		return this.handle.DevicePixelRatio();
	}
	
	public double DevicePixelRatioF()
	{
		return this.handle.DevicePixelRatioF();
	}
	
	public int32 ColorCount()
	{
		return this.handle.ColorCount();
	}
	
	public int32 Depth()
	{
		return this.handle.Depth();
	}
	
	public static double DevicePixelRatioFScale()
	{
		return QPagedPaintDevicePtr.DevicePixelRatioFScale();
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