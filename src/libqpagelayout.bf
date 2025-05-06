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
public struct QPageLayout
{
	[LinkName("QPageLayout_new")]
	public static extern void* QPageLayout_new();
	[LinkName("QPageLayout_new2")]
	public static extern void* QPageLayout_new2(QPageSize pageSize, int64 orientation, QMarginsF margins);
	[LinkName("QPageLayout_new3")]
	public static extern void* QPageLayout_new3(QPageLayout other);
	[LinkName("QPageLayout_new4")]
	public static extern void* QPageLayout_new4(QPageSize pageSize, int64 orientation, QMarginsF margins, int64 units);
	[LinkName("QPageLayout_new5")]
	public static extern void* QPageLayout_new5(QPageSize pageSize, int64 orientation, QMarginsF margins, int64 units, QMarginsF minMargins);
	[LinkName("QPageLayout_OperatorAssign")]
	public static extern void QPageLayout_OperatorAssign(void* c_this, QPageLayout other);
	[LinkName("QPageLayout_Swap")]
	public static extern void QPageLayout_Swap(void* c_this, QPageLayout other);
	[LinkName("QPageLayout_IsEquivalentTo")]
	public static extern bool QPageLayout_IsEquivalentTo(void* c_this, QPageLayout other);
	[LinkName("QPageLayout_IsValid")]
	public static extern bool QPageLayout_IsValid(void* c_this);
	[LinkName("QPageLayout_SetMode")]
	public static extern void QPageLayout_SetMode(void* c_this, int64 mode);
	[LinkName("QPageLayout_Mode")]
	public static extern int64 QPageLayout_Mode(void* c_this);
	[LinkName("QPageLayout_SetPageSize")]
	public static extern void QPageLayout_SetPageSize(void* c_this, QPageSize pageSize);
	[LinkName("QPageLayout_PageSize")]
	public static extern QPageSize QPageLayout_PageSize(void* c_this);
	[LinkName("QPageLayout_SetOrientation")]
	public static extern void QPageLayout_SetOrientation(void* c_this, int64 orientation);
	[LinkName("QPageLayout_Orientation")]
	public static extern int64 QPageLayout_Orientation(void* c_this);
	[LinkName("QPageLayout_SetUnits")]
	public static extern void QPageLayout_SetUnits(void* c_this, int64 units);
	[LinkName("QPageLayout_Units")]
	public static extern int64 QPageLayout_Units(void* c_this);
	[LinkName("QPageLayout_SetMargins")]
	public static extern bool QPageLayout_SetMargins(void* c_this, QMarginsF margins);
	[LinkName("QPageLayout_SetLeftMargin")]
	public static extern bool QPageLayout_SetLeftMargin(void* c_this, double leftMargin);
	[LinkName("QPageLayout_SetRightMargin")]
	public static extern bool QPageLayout_SetRightMargin(void* c_this, double rightMargin);
	[LinkName("QPageLayout_SetTopMargin")]
	public static extern bool QPageLayout_SetTopMargin(void* c_this, double topMargin);
	[LinkName("QPageLayout_SetBottomMargin")]
	public static extern bool QPageLayout_SetBottomMargin(void* c_this, double bottomMargin);
	[LinkName("QPageLayout_Margins")]
	public static extern QMarginsF QPageLayout_Margins(void* c_this);
	[LinkName("QPageLayout_MarginsWithUnits")]
	public static extern QMarginsF QPageLayout_MarginsWithUnits(void* c_this, int64 units);
	[LinkName("QPageLayout_MarginsPoints")]
	public static extern QMargins QPageLayout_MarginsPoints(void* c_this);
	[LinkName("QPageLayout_MarginsPixels")]
	public static extern QMargins QPageLayout_MarginsPixels(void* c_this, int32 resolution);
	[LinkName("QPageLayout_SetMinimumMargins")]
	public static extern void QPageLayout_SetMinimumMargins(void* c_this, QMarginsF minMargins);
	[LinkName("QPageLayout_MinimumMargins")]
	public static extern QMarginsF QPageLayout_MinimumMargins(void* c_this);
	[LinkName("QPageLayout_MaximumMargins")]
	public static extern QMarginsF QPageLayout_MaximumMargins(void* c_this);
	[LinkName("QPageLayout_FullRect")]
	public static extern QRectF QPageLayout_FullRect(void* c_this);
	[LinkName("QPageLayout_FullRectWithUnits")]
	public static extern QRectF QPageLayout_FullRectWithUnits(void* c_this, int64 units);
	[LinkName("QPageLayout_FullRectPoints")]
	public static extern QRect QPageLayout_FullRectPoints(void* c_this);
	[LinkName("QPageLayout_FullRectPixels")]
	public static extern QRect QPageLayout_FullRectPixels(void* c_this, int32 resolution);
	[LinkName("QPageLayout_PaintRect")]
	public static extern QRectF QPageLayout_PaintRect(void* c_this);
	[LinkName("QPageLayout_PaintRectWithUnits")]
	public static extern QRectF QPageLayout_PaintRectWithUnits(void* c_this, int64 units);
	[LinkName("QPageLayout_PaintRectPoints")]
	public static extern QRect QPageLayout_PaintRectPoints(void* c_this);
	[LinkName("QPageLayout_PaintRectPixels")]
	public static extern QRect QPageLayout_PaintRectPixels(void* c_this, int32 resolution);
	[LinkName("QPageLayout_SetPageSize2")]
	public static extern void QPageLayout_SetPageSize2(void* c_this, QPageSize pageSize, QMarginsF minMargins);
}