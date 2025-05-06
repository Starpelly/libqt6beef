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
public struct QPagedPaintDevice : QPaintDevice
{
	[LinkName("QPagedPaintDevice_NewPage")]
	public static extern bool QPagedPaintDevice_NewPage(Self* c_this);
	[LinkName("QPagedPaintDevice_SetPageLayout")]
	public static extern bool QPagedPaintDevice_SetPageLayout(Self* c_this, QPageLayout* pageLayout);
	[LinkName("QPagedPaintDevice_SetPageSize")]
	public static extern bool QPagedPaintDevice_SetPageSize(Self* c_this, QPageSize* pageSize);
	[LinkName("QPagedPaintDevice_SetPageOrientation")]
	public static extern bool QPagedPaintDevice_SetPageOrientation(Self* c_this, int64 orientation);
	[LinkName("QPagedPaintDevice_SetPageMargins")]
	public static extern bool QPagedPaintDevice_SetPageMargins(Self* c_this, QMarginsF* margins, int64 units);
	[LinkName("QPagedPaintDevice_PageLayout")]
	public static extern QPageLayout QPagedPaintDevice_PageLayout(Self* c_this);
	[LinkName("QPagedPaintDevice_SetPageRanges")]
	public static extern void QPagedPaintDevice_SetPageRanges(Self* c_this, QPageRanges* ranges);
	[LinkName("QPagedPaintDevice_PageRanges")]
	public static extern QPageRanges QPagedPaintDevice_PageRanges(Self* c_this);
}