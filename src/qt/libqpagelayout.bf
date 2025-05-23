using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QPageLayout__Unit
{
	Millimeter = 0,
	Point = 1,
	Inch = 2,
	Pica = 3,
	Didot = 4,
	Cicero = 5,
}
[AllowDuplicates]
public enum QPageLayout__Orientation
{
	Portrait = 0,
	Landscape = 1,
}
[AllowDuplicates]
public enum QPageLayout__Mode
{
	StandardMode = 0,
	FullPageMode = 1,
}
public interface IQPageLayout
{
	void* NativePtr { get; }
}
public struct QPageLayoutPtr : IQPageLayout, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QPageLayout_new());
	}
	
	public void Dispose()
	{
		CQt.QPageLayout_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQPageLayout other)
	{
		CQt.QPageLayout_OperatorAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void Swap(IQPageLayout other)
	{
		CQt.QPageLayout_Swap(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool IsEquivalentTo(IQPageLayout other)
	{
		return CQt.QPageLayout_IsEquivalentTo(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QPageLayout_IsValid(this.nativePtr);
	}
	
	public void SetMode(int64 mode)
	{
		CQt.QPageLayout_SetMode(this.nativePtr, (int64)mode);
	}
	
	public int64 Mode()
	{
		return CQt.QPageLayout_Mode(this.nativePtr);
	}
	
	public void SetPageSize(IQPageSize pageSize)
	{
		CQt.QPageLayout_SetPageSize(this.nativePtr, (pageSize == default || pageSize.NativePtr == default) ? default : pageSize.NativePtr);
	}
	
	public void PageSize()
	{
		CQt.QPageLayout_PageSize(this.nativePtr);
	}
	
	public void SetOrientation(int64 orientation)
	{
		CQt.QPageLayout_SetOrientation(this.nativePtr, (int64)orientation);
	}
	
	public int64 Orientation()
	{
		return CQt.QPageLayout_Orientation(this.nativePtr);
	}
	
	public void SetUnits(int64 units)
	{
		CQt.QPageLayout_SetUnits(this.nativePtr, (int64)units);
	}
	
	public int64 Units()
	{
		return CQt.QPageLayout_Units(this.nativePtr);
	}
	
	public bool SetMargins(IQMarginsF margins)
	{
		return CQt.QPageLayout_SetMargins(this.nativePtr, (margins == default || margins.NativePtr == default) ? default : margins.NativePtr);
	}
	
	public bool SetLeftMargin(double leftMargin)
	{
		return CQt.QPageLayout_SetLeftMargin(this.nativePtr, leftMargin);
	}
	
	public bool SetRightMargin(double rightMargin)
	{
		return CQt.QPageLayout_SetRightMargin(this.nativePtr, rightMargin);
	}
	
	public bool SetTopMargin(double topMargin)
	{
		return CQt.QPageLayout_SetTopMargin(this.nativePtr, topMargin);
	}
	
	public bool SetBottomMargin(double bottomMargin)
	{
		return CQt.QPageLayout_SetBottomMargin(this.nativePtr, bottomMargin);
	}
	
	public void Margins()
	{
		CQt.QPageLayout_Margins(this.nativePtr);
	}
	
	public void MarginsWithUnits(int64 units)
	{
		CQt.QPageLayout_MarginsWithUnits(this.nativePtr, (int64)units);
	}
	
	public void MarginsPoints()
	{
		CQt.QPageLayout_MarginsPoints(this.nativePtr);
	}
	
	public void MarginsPixels(int32 resolution)
	{
		CQt.QPageLayout_MarginsPixels(this.nativePtr, resolution);
	}
	
	public void SetMinimumMargins(IQMarginsF minMargins)
	{
		CQt.QPageLayout_SetMinimumMargins(this.nativePtr, (minMargins == default || minMargins.NativePtr == default) ? default : minMargins.NativePtr);
	}
	
	public void MinimumMargins()
	{
		CQt.QPageLayout_MinimumMargins(this.nativePtr);
	}
	
	public void MaximumMargins()
	{
		CQt.QPageLayout_MaximumMargins(this.nativePtr);
	}
	
	public void FullRect()
	{
		CQt.QPageLayout_FullRect(this.nativePtr);
	}
	
	public void FullRectWithUnits(int64 units)
	{
		CQt.QPageLayout_FullRectWithUnits(this.nativePtr, (int64)units);
	}
	
	public void FullRectPoints()
	{
		CQt.QPageLayout_FullRectPoints(this.nativePtr);
	}
	
	public void FullRectPixels(int32 resolution)
	{
		CQt.QPageLayout_FullRectPixels(this.nativePtr, resolution);
	}
	
	public void PaintRect()
	{
		CQt.QPageLayout_PaintRect(this.nativePtr);
	}
	
	public void PaintRectWithUnits(int64 units)
	{
		CQt.QPageLayout_PaintRectWithUnits(this.nativePtr, (int64)units);
	}
	
	public void PaintRectPoints()
	{
		CQt.QPageLayout_PaintRectPoints(this.nativePtr);
	}
	
	public void PaintRectPixels(int32 resolution)
	{
		CQt.QPageLayout_PaintRectPixels(this.nativePtr, resolution);
	}
	
	public void SetPageSize2(IQPageSize pageSize, IQMarginsF minMargins)
	{
		CQt.QPageLayout_SetPageSize2(this.nativePtr, (pageSize == default || pageSize.NativePtr == default) ? default : pageSize.NativePtr, (minMargins == default || minMargins.NativePtr == default) ? default : minMargins.NativePtr);
	}
	
}
public class QPageLayout
{
	public QPageLayoutPtr handle;
	
	public static implicit operator QPageLayoutPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QPageLayoutPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQPageLayout other)
	{
		this.handle.OperatorAssign(other);
	}
	
	public void Swap(IQPageLayout other)
	{
		this.handle.Swap(other);
	}
	
	public bool IsEquivalentTo(IQPageLayout other)
	{
		return this.handle.IsEquivalentTo(other);
	}
	
	public bool IsValid()
	{
		return this.handle.IsValid();
	}
	
	public void SetMode(int64 mode)
	{
		this.handle.SetMode(mode);
	}
	
	public int64 Mode()
	{
		return this.handle.Mode();
	}
	
	public void SetPageSize(IQPageSize pageSize)
	{
		this.handle.SetPageSize(pageSize);
	}
	
	public void PageSize()
	{
		this.handle.PageSize();
	}
	
	public void SetOrientation(int64 orientation)
	{
		this.handle.SetOrientation(orientation);
	}
	
	public int64 Orientation()
	{
		return this.handle.Orientation();
	}
	
	public void SetUnits(int64 units)
	{
		this.handle.SetUnits(units);
	}
	
	public int64 Units()
	{
		return this.handle.Units();
	}
	
	public bool SetMargins(IQMarginsF margins)
	{
		return this.handle.SetMargins(margins);
	}
	
	public bool SetLeftMargin(double leftMargin)
	{
		return this.handle.SetLeftMargin(leftMargin);
	}
	
	public bool SetRightMargin(double rightMargin)
	{
		return this.handle.SetRightMargin(rightMargin);
	}
	
	public bool SetTopMargin(double topMargin)
	{
		return this.handle.SetTopMargin(topMargin);
	}
	
	public bool SetBottomMargin(double bottomMargin)
	{
		return this.handle.SetBottomMargin(bottomMargin);
	}
	
	public void Margins()
	{
		this.handle.Margins();
	}
	
	public void MarginsWithUnits(int64 units)
	{
		this.handle.MarginsWithUnits(units);
	}
	
	public void MarginsPoints()
	{
		this.handle.MarginsPoints();
	}
	
	public void MarginsPixels(int32 resolution)
	{
		this.handle.MarginsPixels(resolution);
	}
	
	public void SetMinimumMargins(IQMarginsF minMargins)
	{
		this.handle.SetMinimumMargins(minMargins);
	}
	
	public void MinimumMargins()
	{
		this.handle.MinimumMargins();
	}
	
	public void MaximumMargins()
	{
		this.handle.MaximumMargins();
	}
	
	public void FullRect()
	{
		this.handle.FullRect();
	}
	
	public void FullRectWithUnits(int64 units)
	{
		this.handle.FullRectWithUnits(units);
	}
	
	public void FullRectPoints()
	{
		this.handle.FullRectPoints();
	}
	
	public void FullRectPixels(int32 resolution)
	{
		this.handle.FullRectPixels(resolution);
	}
	
	public void PaintRect()
	{
		this.handle.PaintRect();
	}
	
	public void PaintRectWithUnits(int64 units)
	{
		this.handle.PaintRectWithUnits(units);
	}
	
	public void PaintRectPoints()
	{
		this.handle.PaintRectPoints();
	}
	
	public void PaintRectPixels(int32 resolution)
	{
		this.handle.PaintRectPixels(resolution);
	}
	
	public void SetPageSize2(IQPageSize pageSize, IQMarginsF minMargins)
	{
		this.handle.SetPageSize2(pageSize, minMargins);
	}
	
}
extension CQt
{
	[LinkName("QPageLayout_new")]
	public static extern void* QPageLayout_new();
	[LinkName("QPageLayout_new2")]
	public static extern void* QPageLayout_new2(void* pageSize, int64 orientation, void* margins);
	[LinkName("QPageLayout_new3")]
	public static extern void* QPageLayout_new3(void* other);
	[LinkName("QPageLayout_new4")]
	public static extern void* QPageLayout_new4(void* pageSize, int64 orientation, void* margins, int64 units);
	[LinkName("QPageLayout_new5")]
	public static extern void* QPageLayout_new5(void* pageSize, int64 orientation, void* margins, int64 units, void* minMargins);
	[LinkName("QPageLayout_OperatorAssign")]
	public static extern void QPageLayout_OperatorAssign(void* c_this, void* other);
	[LinkName("QPageLayout_Swap")]
	public static extern void QPageLayout_Swap(void* c_this, void* other);
	[LinkName("QPageLayout_IsEquivalentTo")]
	public static extern bool QPageLayout_IsEquivalentTo(void* c_this, void* other);
	[LinkName("QPageLayout_IsValid")]
	public static extern bool QPageLayout_IsValid(void* c_this);
	[LinkName("QPageLayout_SetMode")]
	public static extern void QPageLayout_SetMode(void* c_this, int64 mode);
	[LinkName("QPageLayout_Mode")]
	public static extern int64 QPageLayout_Mode(void* c_this);
	[LinkName("QPageLayout_SetPageSize")]
	public static extern void QPageLayout_SetPageSize(void* c_this, void* pageSize);
	[LinkName("QPageLayout_PageSize")]
	public static extern void QPageLayout_PageSize(void* c_this);
	[LinkName("QPageLayout_SetOrientation")]
	public static extern void QPageLayout_SetOrientation(void* c_this, int64 orientation);
	[LinkName("QPageLayout_Orientation")]
	public static extern int64 QPageLayout_Orientation(void* c_this);
	[LinkName("QPageLayout_SetUnits")]
	public static extern void QPageLayout_SetUnits(void* c_this, int64 units);
	[LinkName("QPageLayout_Units")]
	public static extern int64 QPageLayout_Units(void* c_this);
	[LinkName("QPageLayout_SetMargins")]
	public static extern bool QPageLayout_SetMargins(void* c_this, void* margins);
	[LinkName("QPageLayout_SetLeftMargin")]
	public static extern bool QPageLayout_SetLeftMargin(void* c_this, double leftMargin);
	[LinkName("QPageLayout_SetRightMargin")]
	public static extern bool QPageLayout_SetRightMargin(void* c_this, double rightMargin);
	[LinkName("QPageLayout_SetTopMargin")]
	public static extern bool QPageLayout_SetTopMargin(void* c_this, double topMargin);
	[LinkName("QPageLayout_SetBottomMargin")]
	public static extern bool QPageLayout_SetBottomMargin(void* c_this, double bottomMargin);
	[LinkName("QPageLayout_Margins")]
	public static extern void QPageLayout_Margins(void* c_this);
	[LinkName("QPageLayout_MarginsWithUnits")]
	public static extern void QPageLayout_MarginsWithUnits(void* c_this, int64 units);
	[LinkName("QPageLayout_MarginsPoints")]
	public static extern void QPageLayout_MarginsPoints(void* c_this);
	[LinkName("QPageLayout_MarginsPixels")]
	public static extern void QPageLayout_MarginsPixels(void* c_this, int32 resolution);
	[LinkName("QPageLayout_SetMinimumMargins")]
	public static extern void QPageLayout_SetMinimumMargins(void* c_this, void* minMargins);
	[LinkName("QPageLayout_MinimumMargins")]
	public static extern void QPageLayout_MinimumMargins(void* c_this);
	[LinkName("QPageLayout_MaximumMargins")]
	public static extern void QPageLayout_MaximumMargins(void* c_this);
	[LinkName("QPageLayout_FullRect")]
	public static extern void QPageLayout_FullRect(void* c_this);
	[LinkName("QPageLayout_FullRectWithUnits")]
	public static extern void QPageLayout_FullRectWithUnits(void* c_this, int64 units);
	[LinkName("QPageLayout_FullRectPoints")]
	public static extern void QPageLayout_FullRectPoints(void* c_this);
	[LinkName("QPageLayout_FullRectPixels")]
	public static extern void QPageLayout_FullRectPixels(void* c_this, int32 resolution);
	[LinkName("QPageLayout_PaintRect")]
	public static extern void QPageLayout_PaintRect(void* c_this);
	[LinkName("QPageLayout_PaintRectWithUnits")]
	public static extern void QPageLayout_PaintRectWithUnits(void* c_this, int64 units);
	[LinkName("QPageLayout_PaintRectPoints")]
	public static extern void QPageLayout_PaintRectPoints(void* c_this);
	[LinkName("QPageLayout_PaintRectPixels")]
	public static extern void QPageLayout_PaintRectPixels(void* c_this, int32 resolution);
	[LinkName("QPageLayout_SetPageSize2")]
	public static extern void QPageLayout_SetPageSize2(void* c_this, void* pageSize, void* minMargins);
	/// Delete this object from C++ memory
	[LinkName("QPageLayout_Delete")]
	public static extern void QPageLayout_Delete(void* self);
}