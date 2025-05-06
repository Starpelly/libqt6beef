using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QPainterPath__ElementType
{
	MoveToElement = 0,
	LineToElement = 1,
	CurveToElement = 2,
	CurveToDataElement = 3,
}
public struct QPainterPath
{
	[LinkName("QPainterPath_new")]
	public static extern void* QPainterPath_new();
	[LinkName("QPainterPath_new2")]
	public static extern void* QPainterPath_new2(QPointF startPoint);
	[LinkName("QPainterPath_new3")]
	public static extern void* QPainterPath_new3(QPainterPath other);
	[LinkName("QPainterPath_OperatorAssign")]
	public static extern void QPainterPath_OperatorAssign(void* c_this, QPainterPath other);
	[LinkName("QPainterPath_Swap")]
	public static extern void QPainterPath_Swap(void* c_this, QPainterPath other);
	[LinkName("QPainterPath_Clear")]
	public static extern void QPainterPath_Clear(void* c_this);
	[LinkName("QPainterPath_Reserve")]
	public static extern void QPainterPath_Reserve(void* c_this, int32 size);
	[LinkName("QPainterPath_Capacity")]
	public static extern int32 QPainterPath_Capacity(void* c_this);
	[LinkName("QPainterPath_CloseSubpath")]
	public static extern void QPainterPath_CloseSubpath(void* c_this);
	[LinkName("QPainterPath_MoveTo")]
	public static extern void QPainterPath_MoveTo(void* c_this, QPointF p);
	[LinkName("QPainterPath_MoveTo2")]
	public static extern void QPainterPath_MoveTo2(void* c_this, double x, double y);
	[LinkName("QPainterPath_LineTo")]
	public static extern void QPainterPath_LineTo(void* c_this, QPointF p);
	[LinkName("QPainterPath_LineTo2")]
	public static extern void QPainterPath_LineTo2(void* c_this, double x, double y);
	[LinkName("QPainterPath_ArcMoveTo")]
	public static extern void QPainterPath_ArcMoveTo(void* c_this, QRectF rect, double angle);
	[LinkName("QPainterPath_ArcMoveTo2")]
	public static extern void QPainterPath_ArcMoveTo2(void* c_this, double x, double y, double w, double h, double angle);
	[LinkName("QPainterPath_ArcTo")]
	public static extern void QPainterPath_ArcTo(void* c_this, QRectF rect, double startAngle, double arcLength);
	[LinkName("QPainterPath_ArcTo2")]
	public static extern void QPainterPath_ArcTo2(void* c_this, double x, double y, double w, double h, double startAngle, double arcLength);
	[LinkName("QPainterPath_CubicTo")]
	public static extern void QPainterPath_CubicTo(void* c_this, QPointF ctrlPt1, QPointF ctrlPt2, QPointF endPt);
	[LinkName("QPainterPath_CubicTo2")]
	public static extern void QPainterPath_CubicTo2(void* c_this, double ctrlPt1x, double ctrlPt1y, double ctrlPt2x, double ctrlPt2y, double endPtx, double endPty);
	[LinkName("QPainterPath_QuadTo")]
	public static extern void QPainterPath_QuadTo(void* c_this, QPointF ctrlPt, QPointF endPt);
	[LinkName("QPainterPath_QuadTo2")]
	public static extern void QPainterPath_QuadTo2(void* c_this, double ctrlPtx, double ctrlPty, double endPtx, double endPty);
	[LinkName("QPainterPath_CurrentPosition")]
	public static extern QPointF QPainterPath_CurrentPosition(void* c_this);
	[LinkName("QPainterPath_AddRect")]
	public static extern void QPainterPath_AddRect(void* c_this, QRectF rect);
	[LinkName("QPainterPath_AddRect2")]
	public static extern void QPainterPath_AddRect2(void* c_this, double x, double y, double w, double h);
	[LinkName("QPainterPath_AddEllipse")]
	public static extern void QPainterPath_AddEllipse(void* c_this, QRectF rect);
	[LinkName("QPainterPath_AddEllipse2")]
	public static extern void QPainterPath_AddEllipse2(void* c_this, double x, double y, double w, double h);
	[LinkName("QPainterPath_AddEllipse3")]
	public static extern void QPainterPath_AddEllipse3(void* c_this, QPointF center, double rx, double ry);
	[LinkName("QPainterPath_AddText")]
	public static extern void QPainterPath_AddText(void* c_this, QPointF point, QFont f, char8[] text);
	[LinkName("QPainterPath_AddText2")]
	public static extern void QPainterPath_AddText2(void* c_this, double x, double y, QFont f, char8[] text);
	[LinkName("QPainterPath_AddPath")]
	public static extern void QPainterPath_AddPath(void* c_this, QPainterPath path);
	[LinkName("QPainterPath_AddRegion")]
	public static extern void QPainterPath_AddRegion(void* c_this, QRegion region);
	[LinkName("QPainterPath_AddRoundedRect")]
	public static extern void QPainterPath_AddRoundedRect(void* c_this, QRectF rect, double xRadius, double yRadius);
	[LinkName("QPainterPath_AddRoundedRect2")]
	public static extern void QPainterPath_AddRoundedRect2(void* c_this, double x, double y, double w, double h, double xRadius, double yRadius);
	[LinkName("QPainterPath_ConnectPath")]
	public static extern void QPainterPath_ConnectPath(void* c_this, QPainterPath path);
	[LinkName("QPainterPath_Contains")]
	public static extern bool QPainterPath_Contains(void* c_this, QPointF pt);
	[LinkName("QPainterPath_ContainsWithRect")]
	public static extern bool QPainterPath_ContainsWithRect(void* c_this, QRectF rect);
	[LinkName("QPainterPath_Intersects")]
	public static extern bool QPainterPath_Intersects(void* c_this, QRectF rect);
	[LinkName("QPainterPath_Translate")]
	public static extern void QPainterPath_Translate(void* c_this, double dx, double dy);
	[LinkName("QPainterPath_TranslateWithOffset")]
	public static extern void QPainterPath_TranslateWithOffset(void* c_this, QPointF offset);
	[LinkName("QPainterPath_Translated")]
	public static extern QPainterPath QPainterPath_Translated(void* c_this, double dx, double dy);
	[LinkName("QPainterPath_TranslatedWithOffset")]
	public static extern QPainterPath QPainterPath_TranslatedWithOffset(void* c_this, QPointF offset);
	[LinkName("QPainterPath_BoundingRect")]
	public static extern QRectF QPainterPath_BoundingRect(void* c_this);
	[LinkName("QPainterPath_ControlPointRect")]
	public static extern QRectF QPainterPath_ControlPointRect(void* c_this);
	[LinkName("QPainterPath_FillRule")]
	public static extern int64 QPainterPath_FillRule(void* c_this);
	[LinkName("QPainterPath_SetFillRule")]
	public static extern void QPainterPath_SetFillRule(void* c_this, int64 fillRule);
	[LinkName("QPainterPath_IsEmpty")]
	public static extern bool QPainterPath_IsEmpty(void* c_this);
	[LinkName("QPainterPath_ToReversed")]
	public static extern QPainterPath QPainterPath_ToReversed(void* c_this);
	[LinkName("QPainterPath_ElementCount")]
	public static extern int32 QPainterPath_ElementCount(void* c_this);
	[LinkName("QPainterPath_ElementAt")]
	public static extern QPainterPath__Element QPainterPath_ElementAt(void* c_this, int32 i);
	[LinkName("QPainterPath_SetElementPositionAt")]
	public static extern void QPainterPath_SetElementPositionAt(void* c_this, int32 i, double x, double y);
	[LinkName("QPainterPath_Length")]
	public static extern double QPainterPath_Length(void* c_this);
	[LinkName("QPainterPath_PercentAtLength")]
	public static extern double QPainterPath_PercentAtLength(void* c_this, double t);
	[LinkName("QPainterPath_PointAtPercent")]
	public static extern QPointF QPainterPath_PointAtPercent(void* c_this, double t);
	[LinkName("QPainterPath_AngleAtPercent")]
	public static extern double QPainterPath_AngleAtPercent(void* c_this, double t);
	[LinkName("QPainterPath_SlopeAtPercent")]
	public static extern double QPainterPath_SlopeAtPercent(void* c_this, double t);
	[LinkName("QPainterPath_IntersectsWithQPainterPath")]
	public static extern bool QPainterPath_IntersectsWithQPainterPath(void* c_this, QPainterPath p);
	[LinkName("QPainterPath_ContainsWithQPainterPath")]
	public static extern bool QPainterPath_ContainsWithQPainterPath(void* c_this, QPainterPath p);
	[LinkName("QPainterPath_United")]
	public static extern QPainterPath QPainterPath_United(void* c_this, QPainterPath r);
	[LinkName("QPainterPath_Intersected")]
	public static extern QPainterPath QPainterPath_Intersected(void* c_this, QPainterPath r);
	[LinkName("QPainterPath_Subtracted")]
	public static extern QPainterPath QPainterPath_Subtracted(void* c_this, QPainterPath r);
	[LinkName("QPainterPath_Simplified")]
	public static extern QPainterPath QPainterPath_Simplified(void* c_this);
	[LinkName("QPainterPath_OperatorEqual")]
	public static extern bool QPainterPath_OperatorEqual(void* c_this, QPainterPath other);
	[LinkName("QPainterPath_OperatorNotEqual")]
	public static extern bool QPainterPath_OperatorNotEqual(void* c_this, QPainterPath other);
	[LinkName("QPainterPath_OperatorBitwiseAnd")]
	public static extern QPainterPath QPainterPath_OperatorBitwiseAnd(void* c_this, QPainterPath other);
	[LinkName("QPainterPath_OperatorBitwiseOr")]
	public static extern QPainterPath QPainterPath_OperatorBitwiseOr(void* c_this, QPainterPath other);
	[LinkName("QPainterPath_OperatorPlus")]
	public static extern QPainterPath QPainterPath_OperatorPlus(void* c_this, QPainterPath other);
	[LinkName("QPainterPath_OperatorMinus")]
	public static extern QPainterPath QPainterPath_OperatorMinus(void* c_this, QPainterPath other);
	[LinkName("QPainterPath_OperatorBitwiseAndAssign")]
	public static extern void QPainterPath_OperatorBitwiseAndAssign(void* c_this, QPainterPath other);
	[LinkName("QPainterPath_OperatorBitwiseOrAssign")]
	public static extern void QPainterPath_OperatorBitwiseOrAssign(void* c_this, QPainterPath other);
	[LinkName("QPainterPath_OperatorPlusAssign")]
	public static extern QPainterPath QPainterPath_OperatorPlusAssign(void* c_this, QPainterPath other);
	[LinkName("QPainterPath_OperatorMinusAssign")]
	public static extern QPainterPath QPainterPath_OperatorMinusAssign(void* c_this, QPainterPath other);
	[LinkName("QPainterPath_AddRoundedRect4")]
	public static extern void QPainterPath_AddRoundedRect4(void* c_this, QRectF rect, double xRadius, double yRadius, int64 mode);
	[LinkName("QPainterPath_AddRoundedRect7")]
	public static extern void QPainterPath_AddRoundedRect7(void* c_this, double x, double y, double w, double h, double xRadius, double yRadius, int64 mode);
}
public struct QPainterPathStroker
{
	[LinkName("QPainterPathStroker_new")]
	public static extern void* QPainterPathStroker_new();
	[LinkName("QPainterPathStroker_new2")]
	public static extern void* QPainterPathStroker_new2(QPen pen);
	[LinkName("QPainterPathStroker_SetWidth")]
	public static extern void QPainterPathStroker_SetWidth(void* c_this, double width);
	[LinkName("QPainterPathStroker_Width")]
	public static extern double QPainterPathStroker_Width(void* c_this);
	[LinkName("QPainterPathStroker_SetCapStyle")]
	public static extern void QPainterPathStroker_SetCapStyle(void* c_this, int64 style);
	[LinkName("QPainterPathStroker_CapStyle")]
	public static extern int64 QPainterPathStroker_CapStyle(void* c_this);
	[LinkName("QPainterPathStroker_SetJoinStyle")]
	public static extern void QPainterPathStroker_SetJoinStyle(void* c_this, int64 style);
	[LinkName("QPainterPathStroker_JoinStyle")]
	public static extern int64 QPainterPathStroker_JoinStyle(void* c_this);
	[LinkName("QPainterPathStroker_SetMiterLimit")]
	public static extern void QPainterPathStroker_SetMiterLimit(void* c_this, double length);
	[LinkName("QPainterPathStroker_MiterLimit")]
	public static extern double QPainterPathStroker_MiterLimit(void* c_this);
	[LinkName("QPainterPathStroker_SetCurveThreshold")]
	public static extern void QPainterPathStroker_SetCurveThreshold(void* c_this, double threshold);
	[LinkName("QPainterPathStroker_CurveThreshold")]
	public static extern double QPainterPathStroker_CurveThreshold(void* c_this);
	[LinkName("QPainterPathStroker_SetDashPattern")]
	public static extern void QPainterPathStroker_SetDashPattern(void* c_this, int64 dashPattern);
	[LinkName("QPainterPathStroker_SetDashPatternWithDashPattern")]
	public static extern void QPainterPathStroker_SetDashPatternWithDashPattern(void* c_this, double[] dashPattern);
	[LinkName("QPainterPathStroker_DashPattern")]
	public static extern double[] QPainterPathStroker_DashPattern(void* c_this);
	[LinkName("QPainterPathStroker_SetDashOffset")]
	public static extern void QPainterPathStroker_SetDashOffset(void* c_this, double offset);
	[LinkName("QPainterPathStroker_DashOffset")]
	public static extern double QPainterPathStroker_DashOffset(void* c_this);
	[LinkName("QPainterPathStroker_CreateStroke")]
	public static extern QPainterPath QPainterPathStroker_CreateStroke(void* c_this, QPainterPath path);
}
public struct QPainterPath__Element
{
	[LinkName("QPainterPath__Element_IsMoveTo")]
	public static extern bool QPainterPath__Element_IsMoveTo(void* c_this);
	[LinkName("QPainterPath__Element_IsLineTo")]
	public static extern bool QPainterPath__Element_IsLineTo(void* c_this);
	[LinkName("QPainterPath__Element_IsCurveTo")]
	public static extern bool QPainterPath__Element_IsCurveTo(void* c_this);
	[LinkName("QPainterPath__Element_ToQPointF")]
	public static extern QPointF QPainterPath__Element_ToQPointF(void* c_this);
	[LinkName("QPainterPath__Element_OperatorEqual")]
	public static extern bool QPainterPath__Element_OperatorEqual(void* c_this, QPainterPath__Element e);
	[LinkName("QPainterPath__Element_OperatorNotEqual")]
	public static extern bool QPainterPath__Element_OperatorNotEqual(void* c_this, QPainterPath__Element e);
}