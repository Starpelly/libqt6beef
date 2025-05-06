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
	public static extern QPageLayout* QPageLayout_new();
	[LinkName("QPageLayout_new2")]
	public static extern QPageLayout* QPageLayout_new2(QPageSize* pageSize, int64 orientation, QMarginsF* margins);
	[LinkName("QPageLayout_new3")]
	public static extern QPageLayout* QPageLayout_new3(QPageLayout* other);
	[LinkName("QPageLayout_new4")]
	public static extern QPageLayout* QPageLayout_new4(QPageSize* pageSize, int64 orientation, QMarginsF* margins, int64 units);
	[LinkName("QPageLayout_new5")]
	public static extern QPageLayout* QPageLayout_new5(QPageSize* pageSize, int64 orientation, QMarginsF* margins, int64 units, QMarginsF* minMargins);
	[LinkName("QPageLayout_OperatorAssign")]
	public static extern void QPageLayout_OperatorAssign(Self* c_this, QPageLayout* other);
	[LinkName("QPageLayout_Swap")]
	public static extern void QPageLayout_Swap(Self* c_this, QPageLayout* other);
	[LinkName("QPageLayout_IsEquivalentTo")]
	public static extern bool QPageLayout_IsEquivalentTo(Self* c_this, QPageLayout* other);
	[LinkName("QPageLayout_IsValid")]
	public static extern bool QPageLayout_IsValid(Self* c_this);
	[LinkName("QPageLayout_SetMode")]
	public static extern void QPageLayout_SetMode(Self* c_this, int64 mode);
	[LinkName("QPageLayout_Mode")]
	public static extern int64 QPageLayout_Mode(Self* c_this);
	[LinkName("QPageLayout_SetPageSize")]
	public static extern void QPageLayout_SetPageSize(Self* c_this, QPageSize* pageSize);
	[LinkName("QPageLayout_PageSize")]
	public static extern QPageSize QPageLayout_PageSize(Self* c_this);
	[LinkName("QPageLayout_SetOrientation")]
	public static extern void QPageLayout_SetOrientation(Self* c_this, int64 orientation);
	[LinkName("QPageLayout_Orientation")]
	public static extern int64 QPageLayout_Orientation(Self* c_this);
	[LinkName("QPageLayout_SetUnits")]
	public static extern void QPageLayout_SetUnits(Self* c_this, int64 units);
	[LinkName("QPageLayout_Units")]
	public static extern int64 QPageLayout_Units(Self* c_this);
	[LinkName("QPageLayout_SetMargins")]
	public static extern bool QPageLayout_SetMargins(Self* c_this, QMarginsF* margins);
	[LinkName("QPageLayout_SetLeftMargin")]
	public static extern bool QPageLayout_SetLeftMargin(Self* c_this, double leftMargin);
	[LinkName("QPageLayout_SetRightMargin")]
	public static extern bool QPageLayout_SetRightMargin(Self* c_this, double rightMargin);
	[LinkName("QPageLayout_SetTopMargin")]
	public static extern bool QPageLayout_SetTopMargin(Self* c_this, double topMargin);
	[LinkName("QPageLayout_SetBottomMargin")]
	public static extern bool QPageLayout_SetBottomMargin(Self* c_this, double bottomMargin);
	[LinkName("QPageLayout_Margins")]
	public static extern QMarginsF QPageLayout_Margins(Self* c_this);
	[LinkName("QPageLayout_MarginsWithUnits")]
	public static extern QMarginsF QPageLayout_MarginsWithUnits(Self* c_this, int64 units);
	[LinkName("QPageLayout_MarginsPoints")]
	public static extern QMargins QPageLayout_MarginsPoints(Self* c_this);
	[LinkName("QPageLayout_MarginsPixels")]
	public static extern QMargins QPageLayout_MarginsPixels(Self* c_this, int32 resolution);
	[LinkName("QPageLayout_SetMinimumMargins")]
	public static extern void QPageLayout_SetMinimumMargins(Self* c_this, QMarginsF* minMargins);
	[LinkName("QPageLayout_MinimumMargins")]
	public static extern QMarginsF QPageLayout_MinimumMargins(Self* c_this);
	[LinkName("QPageLayout_MaximumMargins")]
	public static extern QMarginsF QPageLayout_MaximumMargins(Self* c_this);
	[LinkName("QPageLayout_FullRect")]
	public static extern QRectF QPageLayout_FullRect(Self* c_this);
	[LinkName("QPageLayout_FullRectWithUnits")]
	public static extern QRectF QPageLayout_FullRectWithUnits(Self* c_this, int64 units);
	[LinkName("QPageLayout_FullRectPoints")]
	public static extern QRect QPageLayout_FullRectPoints(Self* c_this);
	[LinkName("QPageLayout_FullRectPixels")]
	public static extern QRect QPageLayout_FullRectPixels(Self* c_this, int32 resolution);
	[LinkName("QPageLayout_PaintRect")]
	public static extern QRectF QPageLayout_PaintRect(Self* c_this);
	[LinkName("QPageLayout_PaintRectWithUnits")]
	public static extern QRectF QPageLayout_PaintRectWithUnits(Self* c_this, int64 units);
	[LinkName("QPageLayout_PaintRectPoints")]
	public static extern QRect QPageLayout_PaintRectPoints(Self* c_this);
	[LinkName("QPageLayout_PaintRectPixels")]
	public static extern QRect QPageLayout_PaintRectPixels(Self* c_this, int32 resolution);
	[LinkName("QPageLayout_SetPageSize2")]
	public static extern void QPageLayout_SetPageSize2(Self* c_this, QPageSize* pageSize, QMarginsF* minMargins);
}