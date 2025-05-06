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
	public static extern QPainterPath* QPainterPath_new();
	[LinkName("QPainterPath_new2")]
	public static extern QPainterPath* QPainterPath_new2(QPointF* startPoint);
	[LinkName("QPainterPath_new3")]
	public static extern QPainterPath* QPainterPath_new3(QPainterPath* other);
	[LinkName("QPainterPath_OperatorAssign")]
	public static extern void QPainterPath_OperatorAssign(Self* c_this, QPainterPath* other);
	[LinkName("QPainterPath_Swap")]
	public static extern void QPainterPath_Swap(Self* c_this, QPainterPath* other);
	[LinkName("QPainterPath_Clear")]
	public static extern void QPainterPath_Clear(Self* c_this);
	[LinkName("QPainterPath_Reserve")]
	public static extern void QPainterPath_Reserve(Self* c_this, int32 size);
	[LinkName("QPainterPath_Capacity")]
	public static extern int32 QPainterPath_Capacity(Self* c_this);
	[LinkName("QPainterPath_CloseSubpath")]
	public static extern void QPainterPath_CloseSubpath(Self* c_this);
	[LinkName("QPainterPath_MoveTo")]
	public static extern void QPainterPath_MoveTo(Self* c_this, QPointF* p);
	[LinkName("QPainterPath_MoveTo2")]
	public static extern void QPainterPath_MoveTo2(Self* c_this, double x, double y);
	[LinkName("QPainterPath_LineTo")]
	public static extern void QPainterPath_LineTo(Self* c_this, QPointF* p);
	[LinkName("QPainterPath_LineTo2")]
	public static extern void QPainterPath_LineTo2(Self* c_this, double x, double y);
	[LinkName("QPainterPath_ArcMoveTo")]
	public static extern void QPainterPath_ArcMoveTo(Self* c_this, QRectF* rect, double angle);
	[LinkName("QPainterPath_ArcMoveTo2")]
	public static extern void QPainterPath_ArcMoveTo2(Self* c_this, double x, double y, double w, double h, double angle);
	[LinkName("QPainterPath_ArcTo")]
	public static extern void QPainterPath_ArcTo(Self* c_this, QRectF* rect, double startAngle, double arcLength);
	[LinkName("QPainterPath_ArcTo2")]
	public static extern void QPainterPath_ArcTo2(Self* c_this, double x, double y, double w, double h, double startAngle, double arcLength);
	[LinkName("QPainterPath_CubicTo")]
	public static extern void QPainterPath_CubicTo(Self* c_this, QPointF* ctrlPt1, QPointF* ctrlPt2, QPointF* endPt);
	[LinkName("QPainterPath_CubicTo2")]
	public static extern void QPainterPath_CubicTo2(Self* c_this, double ctrlPt1x, double ctrlPt1y, double ctrlPt2x, double ctrlPt2y, double endPtx, double endPty);
	[LinkName("QPainterPath_QuadTo")]
	public static extern void QPainterPath_QuadTo(Self* c_this, QPointF* ctrlPt, QPointF* endPt);
	[LinkName("QPainterPath_QuadTo2")]
	public static extern void QPainterPath_QuadTo2(Self* c_this, double ctrlPtx, double ctrlPty, double endPtx, double endPty);
	[LinkName("QPainterPath_CurrentPosition")]
	public static extern QPointF QPainterPath_CurrentPosition(Self* c_this);
	[LinkName("QPainterPath_AddRect")]
	public static extern void QPainterPath_AddRect(Self* c_this, QRectF* rect);
	[LinkName("QPainterPath_AddRect2")]
	public static extern void QPainterPath_AddRect2(Self* c_this, double x, double y, double w, double h);
	[LinkName("QPainterPath_AddEllipse")]
	public static extern void QPainterPath_AddEllipse(Self* c_this, QRectF* rect);
	[LinkName("QPainterPath_AddEllipse2")]
	public static extern void QPainterPath_AddEllipse2(Self* c_this, double x, double y, double w, double h);
	[LinkName("QPainterPath_AddEllipse3")]
	public static extern void QPainterPath_AddEllipse3(Self* c_this, QPointF* center, double rx, double ry);
	[LinkName("QPainterPath_AddText")]
	public static extern void QPainterPath_AddText(Self* c_this, QPointF* point, QFont* f, libqt_string text);
	[LinkName("QPainterPath_AddText2")]
	public static extern void QPainterPath_AddText2(Self* c_this, double x, double y, QFont* f, libqt_string text);
	[LinkName("QPainterPath_AddPath")]
	public static extern void QPainterPath_AddPath(Self* c_this, QPainterPath* path);
	[LinkName("QPainterPath_AddRegion")]
	public static extern void QPainterPath_AddRegion(Self* c_this, QRegion* region);
	[LinkName("QPainterPath_AddRoundedRect")]
	public static extern void QPainterPath_AddRoundedRect(Self* c_this, QRectF* rect, double xRadius, double yRadius);
	[LinkName("QPainterPath_AddRoundedRect2")]
	public static extern void QPainterPath_AddRoundedRect2(Self* c_this, double x, double y, double w, double h, double xRadius, double yRadius);
	[LinkName("QPainterPath_ConnectPath")]
	public static extern void QPainterPath_ConnectPath(Self* c_this, QPainterPath* path);
	[LinkName("QPainterPath_Contains")]
	public static extern bool QPainterPath_Contains(Self* c_this, QPointF* pt);
	[LinkName("QPainterPath_ContainsWithRect")]
	public static extern bool QPainterPath_ContainsWithRect(Self* c_this, QRectF* rect);
	[LinkName("QPainterPath_Intersects")]
	public static extern bool QPainterPath_Intersects(Self* c_this, QRectF* rect);
	[LinkName("QPainterPath_Translate")]
	public static extern void QPainterPath_Translate(Self* c_this, double dx, double dy);
	[LinkName("QPainterPath_TranslateWithOffset")]
	public static extern void QPainterPath_TranslateWithOffset(Self* c_this, QPointF* offset);
	[LinkName("QPainterPath_Translated")]
	public static extern QPainterPath QPainterPath_Translated(Self* c_this, double dx, double dy);
	[LinkName("QPainterPath_TranslatedWithOffset")]
	public static extern QPainterPath QPainterPath_TranslatedWithOffset(Self* c_this, QPointF* offset);
	[LinkName("QPainterPath_BoundingRect")]
	public static extern QRectF QPainterPath_BoundingRect(Self* c_this);
	[LinkName("QPainterPath_ControlPointRect")]
	public static extern QRectF QPainterPath_ControlPointRect(Self* c_this);
	[LinkName("QPainterPath_FillRule")]
	public static extern int64 QPainterPath_FillRule(Self* c_this);
	[LinkName("QPainterPath_SetFillRule")]
	public static extern void QPainterPath_SetFillRule(Self* c_this, int64 fillRule);
	[LinkName("QPainterPath_IsEmpty")]
	public static extern bool QPainterPath_IsEmpty(Self* c_this);
	[LinkName("QPainterPath_ToReversed")]
	public static extern QPainterPath QPainterPath_ToReversed(Self* c_this);
	[LinkName("QPainterPath_ElementCount")]
	public static extern int32 QPainterPath_ElementCount(Self* c_this);
	[LinkName("QPainterPath_ElementAt")]
	public static extern QPainterPath__Element QPainterPath_ElementAt(Self* c_this, int32 i);
	[LinkName("QPainterPath_SetElementPositionAt")]
	public static extern void QPainterPath_SetElementPositionAt(Self* c_this, int32 i, double x, double y);
	[LinkName("QPainterPath_Length")]
	public static extern double QPainterPath_Length(Self* c_this);
	[LinkName("QPainterPath_PercentAtLength")]
	public static extern double QPainterPath_PercentAtLength(Self* c_this, double t);
	[LinkName("QPainterPath_PointAtPercent")]
	public static extern QPointF QPainterPath_PointAtPercent(Self* c_this, double t);
	[LinkName("QPainterPath_AngleAtPercent")]
	public static extern double QPainterPath_AngleAtPercent(Self* c_this, double t);
	[LinkName("QPainterPath_SlopeAtPercent")]
	public static extern double QPainterPath_SlopeAtPercent(Self* c_this, double t);
	[LinkName("QPainterPath_IntersectsWithQPainterPath")]
	public static extern bool QPainterPath_IntersectsWithQPainterPath(Self* c_this, QPainterPath* p);
	[LinkName("QPainterPath_ContainsWithQPainterPath")]
	public static extern bool QPainterPath_ContainsWithQPainterPath(Self* c_this, QPainterPath* p);
	[LinkName("QPainterPath_United")]
	public static extern QPainterPath QPainterPath_United(Self* c_this, QPainterPath* r);
	[LinkName("QPainterPath_Intersected")]
	public static extern QPainterPath QPainterPath_Intersected(Self* c_this, QPainterPath* r);
	[LinkName("QPainterPath_Subtracted")]
	public static extern QPainterPath QPainterPath_Subtracted(Self* c_this, QPainterPath* r);
	[LinkName("QPainterPath_Simplified")]
	public static extern QPainterPath QPainterPath_Simplified(Self* c_this);
	[LinkName("QPainterPath_OperatorEqual")]
	public static extern bool QPainterPath_OperatorEqual(Self* c_this, QPainterPath* other);
	[LinkName("QPainterPath_OperatorNotEqual")]
	public static extern bool QPainterPath_OperatorNotEqual(Self* c_this, QPainterPath* other);
	[LinkName("QPainterPath_OperatorBitwiseAnd")]
	public static extern QPainterPath QPainterPath_OperatorBitwiseAnd(Self* c_this, QPainterPath* other);
	[LinkName("QPainterPath_OperatorBitwiseOr")]
	public static extern QPainterPath QPainterPath_OperatorBitwiseOr(Self* c_this, QPainterPath* other);
	[LinkName("QPainterPath_OperatorPlus")]
	public static extern QPainterPath QPainterPath_OperatorPlus(Self* c_this, QPainterPath* other);
	[LinkName("QPainterPath_OperatorMinus")]
	public static extern QPainterPath QPainterPath_OperatorMinus(Self* c_this, QPainterPath* other);
	[LinkName("QPainterPath_OperatorBitwiseAndAssign")]
	public static extern void QPainterPath_OperatorBitwiseAndAssign(Self* c_this, QPainterPath* other);
	[LinkName("QPainterPath_OperatorBitwiseOrAssign")]
	public static extern void QPainterPath_OperatorBitwiseOrAssign(Self* c_this, QPainterPath* other);
	[LinkName("QPainterPath_OperatorPlusAssign")]
	public static extern QPainterPath* QPainterPath_OperatorPlusAssign(Self* c_this, QPainterPath* other);
	[LinkName("QPainterPath_OperatorMinusAssign")]
	public static extern QPainterPath* QPainterPath_OperatorMinusAssign(Self* c_this, QPainterPath* other);
	[LinkName("QPainterPath_AddRoundedRect4")]
	public static extern void QPainterPath_AddRoundedRect4(Self* c_this, QRectF* rect, double xRadius, double yRadius, int64 mode);
	[LinkName("QPainterPath_AddRoundedRect7")]
	public static extern void QPainterPath_AddRoundedRect7(Self* c_this, double x, double y, double w, double h, double xRadius, double yRadius, int64 mode);
}
public struct QPainterPathStroker
{
	[LinkName("QPainterPathStroker_new")]
	public static extern QPainterPathStroker* QPainterPathStroker_new();
	[LinkName("QPainterPathStroker_new2")]
	public static extern QPainterPathStroker* QPainterPathStroker_new2(QPen* pen);
	[LinkName("QPainterPathStroker_SetWidth")]
	public static extern void QPainterPathStroker_SetWidth(Self* c_this, double width);
	[LinkName("QPainterPathStroker_Width")]
	public static extern double QPainterPathStroker_Width(Self* c_this);
	[LinkName("QPainterPathStroker_SetCapStyle")]
	public static extern void QPainterPathStroker_SetCapStyle(Self* c_this, int64 style);
	[LinkName("QPainterPathStroker_CapStyle")]
	public static extern int64 QPainterPathStroker_CapStyle(Self* c_this);
	[LinkName("QPainterPathStroker_SetJoinStyle")]
	public static extern void QPainterPathStroker_SetJoinStyle(Self* c_this, int64 style);
	[LinkName("QPainterPathStroker_JoinStyle")]
	public static extern int64 QPainterPathStroker_JoinStyle(Self* c_this);
	[LinkName("QPainterPathStroker_SetMiterLimit")]
	public static extern void QPainterPathStroker_SetMiterLimit(Self* c_this, double length);
	[LinkName("QPainterPathStroker_MiterLimit")]
	public static extern double QPainterPathStroker_MiterLimit(Self* c_this);
	[LinkName("QPainterPathStroker_SetCurveThreshold")]
	public static extern void QPainterPathStroker_SetCurveThreshold(Self* c_this, double threshold);
	[LinkName("QPainterPathStroker_CurveThreshold")]
	public static extern double QPainterPathStroker_CurveThreshold(Self* c_this);
	[LinkName("QPainterPathStroker_SetDashPattern")]
	public static extern void QPainterPathStroker_SetDashPattern(Self* c_this, int64 dashPattern);
	[LinkName("QPainterPathStroker_SetDashPatternWithDashPattern")]
	public static extern void QPainterPathStroker_SetDashPatternWithDashPattern(Self* c_this, double[] dashPattern);
	[LinkName("QPainterPathStroker_DashPattern")]
	public static extern double[] QPainterPathStroker_DashPattern(Self* c_this);
	[LinkName("QPainterPathStroker_SetDashOffset")]
	public static extern void QPainterPathStroker_SetDashOffset(Self* c_this, double offset);
	[LinkName("QPainterPathStroker_DashOffset")]
	public static extern double QPainterPathStroker_DashOffset(Self* c_this);
	[LinkName("QPainterPathStroker_CreateStroke")]
	public static extern QPainterPath QPainterPathStroker_CreateStroke(Self* c_this, QPainterPath* path);
}
public struct QPainterPath__Element
{
	[LinkName("QPainterPath__Element_IsMoveTo")]
	public static extern bool QPainterPath__Element_IsMoveTo(Self* c_this);
	[LinkName("QPainterPath__Element_IsLineTo")]
	public static extern bool QPainterPath__Element_IsLineTo(Self* c_this);
	[LinkName("QPainterPath__Element_IsCurveTo")]
	public static extern bool QPainterPath__Element_IsCurveTo(Self* c_this);
	[LinkName("QPainterPath__Element_ToQPointF")]
	public static extern QPointF QPainterPath__Element_ToQPointF(Self* c_this);
	[LinkName("QPainterPath__Element_OperatorEqual")]
	public static extern bool QPainterPath__Element_OperatorEqual(Self* c_this, QPainterPath__Element* e);
	[LinkName("QPainterPath__Element_OperatorNotEqual")]
	public static extern bool QPainterPath__Element_OperatorNotEqual(Self* c_this, QPainterPath__Element* e);
}