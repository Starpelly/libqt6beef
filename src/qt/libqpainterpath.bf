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
public class QPainterPath
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QPainterPath_new();
	}
	
	public ~this()
	{
		CQt.QPainterPath_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* other)
	{
		CQt.QPainterPath_OperatorAssign(this.nativePtr, other);
	}
	
	public void Swap(void* other)
	{
		CQt.QPainterPath_Swap(this.nativePtr, other);
	}
	
	public void Clear()
	{
		CQt.QPainterPath_Clear(this.nativePtr);
	}
	
	public void Reserve(int32 size)
	{
		CQt.QPainterPath_Reserve(this.nativePtr, size);
	}
	
	public int32 Capacity()
	{
		return CQt.QPainterPath_Capacity(this.nativePtr);
	}
	
	public void CloseSubpath()
	{
		CQt.QPainterPath_CloseSubpath(this.nativePtr);
	}
	
	public void MoveTo(void* p)
	{
		CQt.QPainterPath_MoveTo(this.nativePtr, p);
	}
	
	public void MoveTo2(double x, double y)
	{
		CQt.QPainterPath_MoveTo2(this.nativePtr, x, y);
	}
	
	public void LineTo(void* p)
	{
		CQt.QPainterPath_LineTo(this.nativePtr, p);
	}
	
	public void LineTo2(double x, double y)
	{
		CQt.QPainterPath_LineTo2(this.nativePtr, x, y);
	}
	
	public void ArcMoveTo(void* rect, double angle)
	{
		CQt.QPainterPath_ArcMoveTo(this.nativePtr, rect, angle);
	}
	
	public void ArcMoveTo2(double x, double y, double w, double h, double angle)
	{
		CQt.QPainterPath_ArcMoveTo2(this.nativePtr, x, y, w, h, angle);
	}
	
	public void ArcTo(void* rect, double startAngle, double arcLength)
	{
		CQt.QPainterPath_ArcTo(this.nativePtr, rect, startAngle, arcLength);
	}
	
	public void ArcTo2(double x, double y, double w, double h, double startAngle, double arcLength)
	{
		CQt.QPainterPath_ArcTo2(this.nativePtr, x, y, w, h, startAngle, arcLength);
	}
	
	public void CubicTo(void* ctrlPt1, void* ctrlPt2, void* endPt)
	{
		CQt.QPainterPath_CubicTo(this.nativePtr, ctrlPt1, ctrlPt2, endPt);
	}
	
	public void CubicTo2(double ctrlPt1x, double ctrlPt1y, double ctrlPt2x, double ctrlPt2y, double endPtx, double endPty)
	{
		CQt.QPainterPath_CubicTo2(this.nativePtr, ctrlPt1x, ctrlPt1y, ctrlPt2x, ctrlPt2y, endPtx, endPty);
	}
	
	public void QuadTo(void* ctrlPt, void* endPt)
	{
		CQt.QPainterPath_QuadTo(this.nativePtr, ctrlPt, endPt);
	}
	
	public void QuadTo2(double ctrlPtx, double ctrlPty, double endPtx, double endPty)
	{
		CQt.QPainterPath_QuadTo2(this.nativePtr, ctrlPtx, ctrlPty, endPtx, endPty);
	}
	
	public void CurrentPosition()
	{
		CQt.QPainterPath_CurrentPosition(this.nativePtr);
	}
	
	public void AddRect(void* rect)
	{
		CQt.QPainterPath_AddRect(this.nativePtr, rect);
	}
	
	public void AddRect2(double x, double y, double w, double h)
	{
		CQt.QPainterPath_AddRect2(this.nativePtr, x, y, w, h);
	}
	
	public void AddEllipse(void* rect)
	{
		CQt.QPainterPath_AddEllipse(this.nativePtr, rect);
	}
	
	public void AddEllipse2(double x, double y, double w, double h)
	{
		CQt.QPainterPath_AddEllipse2(this.nativePtr, x, y, w, h);
	}
	
	public void AddEllipse3(void* center, double rx, double ry)
	{
		CQt.QPainterPath_AddEllipse3(this.nativePtr, center, rx, ry);
	}
	
	public void AddText(void* point, void* f, libqt_string text)
	{
		CQt.QPainterPath_AddText(this.nativePtr, point, f, text);
	}
	
	public void AddText2(double x, double y, void* f, libqt_string text)
	{
		CQt.QPainterPath_AddText2(this.nativePtr, x, y, f, text);
	}
	
	public void AddPath(void* path)
	{
		CQt.QPainterPath_AddPath(this.nativePtr, path);
	}
	
	public void AddRegion(void* region)
	{
		CQt.QPainterPath_AddRegion(this.nativePtr, region);
	}
	
	public void AddRoundedRect(void* rect, double xRadius, double yRadius)
	{
		CQt.QPainterPath_AddRoundedRect(this.nativePtr, rect, xRadius, yRadius);
	}
	
	public void AddRoundedRect2(double x, double y, double w, double h, double xRadius, double yRadius)
	{
		CQt.QPainterPath_AddRoundedRect2(this.nativePtr, x, y, w, h, xRadius, yRadius);
	}
	
	public void ConnectPath(void* path)
	{
		CQt.QPainterPath_ConnectPath(this.nativePtr, path);
	}
	
	public bool Contains(void* pt)
	{
		return CQt.QPainterPath_Contains(this.nativePtr, pt);
	}
	
	public bool ContainsWithRect(void* rect)
	{
		return CQt.QPainterPath_ContainsWithRect(this.nativePtr, rect);
	}
	
	public bool Intersects(void* rect)
	{
		return CQt.QPainterPath_Intersects(this.nativePtr, rect);
	}
	
	public void Translate(double dx, double dy)
	{
		CQt.QPainterPath_Translate(this.nativePtr, dx, dy);
	}
	
	public void TranslateWithOffset(void* offset)
	{
		CQt.QPainterPath_TranslateWithOffset(this.nativePtr, offset);
	}
	
	public void Translated(double dx, double dy)
	{
		CQt.QPainterPath_Translated(this.nativePtr, dx, dy);
	}
	
	public void TranslatedWithOffset(void* offset)
	{
		CQt.QPainterPath_TranslatedWithOffset(this.nativePtr, offset);
	}
	
	public void BoundingRect()
	{
		CQt.QPainterPath_BoundingRect(this.nativePtr);
	}
	
	public void ControlPointRect()
	{
		CQt.QPainterPath_ControlPointRect(this.nativePtr);
	}
	
	public int64 FillRule()
	{
		return CQt.QPainterPath_FillRule(this.nativePtr);
	}
	
	public void SetFillRule(int64 fillRule)
	{
		CQt.QPainterPath_SetFillRule(this.nativePtr, fillRule);
	}
	
	public bool IsEmpty()
	{
		return CQt.QPainterPath_IsEmpty(this.nativePtr);
	}
	
	public void ToReversed()
	{
		CQt.QPainterPath_ToReversed(this.nativePtr);
	}
	
	public int32 ElementCount()
	{
		return CQt.QPainterPath_ElementCount(this.nativePtr);
	}
	
	public QPainterPath__Element ElementAt(int32 i)
	{
		return CQt.QPainterPath_ElementAt(this.nativePtr, i);
	}
	
	public void SetElementPositionAt(int32 i, double x, double y)
	{
		CQt.QPainterPath_SetElementPositionAt(this.nativePtr, i, x, y);
	}
	
	public double Length()
	{
		return CQt.QPainterPath_Length(this.nativePtr);
	}
	
	public double PercentAtLength(double t)
	{
		return CQt.QPainterPath_PercentAtLength(this.nativePtr, t);
	}
	
	public void PointAtPercent(double t)
	{
		CQt.QPainterPath_PointAtPercent(this.nativePtr, t);
	}
	
	public double AngleAtPercent(double t)
	{
		return CQt.QPainterPath_AngleAtPercent(this.nativePtr, t);
	}
	
	public double SlopeAtPercent(double t)
	{
		return CQt.QPainterPath_SlopeAtPercent(this.nativePtr, t);
	}
	
	public bool IntersectsWithQPainterPath(void* p)
	{
		return CQt.QPainterPath_IntersectsWithQPainterPath(this.nativePtr, p);
	}
	
	public bool ContainsWithQPainterPath(void* p)
	{
		return CQt.QPainterPath_ContainsWithQPainterPath(this.nativePtr, p);
	}
	
	public void United(void* r)
	{
		CQt.QPainterPath_United(this.nativePtr, r);
	}
	
	public void Intersected(void* r)
	{
		CQt.QPainterPath_Intersected(this.nativePtr, r);
	}
	
	public void Subtracted(void* r)
	{
		CQt.QPainterPath_Subtracted(this.nativePtr, r);
	}
	
	public void Simplified()
	{
		CQt.QPainterPath_Simplified(this.nativePtr);
	}
	
	public bool OperatorEqual(void* other)
	{
		return CQt.QPainterPath_OperatorEqual(this.nativePtr, other);
	}
	
	public bool OperatorNotEqual(void* other)
	{
		return CQt.QPainterPath_OperatorNotEqual(this.nativePtr, other);
	}
	
	public void OperatorBitwiseAnd(void* other)
	{
		CQt.QPainterPath_OperatorBitwiseAnd(this.nativePtr, other);
	}
	
	public void OperatorBitwiseOr(void* other)
	{
		CQt.QPainterPath_OperatorBitwiseOr(this.nativePtr, other);
	}
	
	public void OperatorPlus(void* other)
	{
		CQt.QPainterPath_OperatorPlus(this.nativePtr, other);
	}
	
	public void OperatorMinus(void* other)
	{
		CQt.QPainterPath_OperatorMinus(this.nativePtr, other);
	}
	
	public void OperatorBitwiseAndAssign(void* other)
	{
		CQt.QPainterPath_OperatorBitwiseAndAssign(this.nativePtr, other);
	}
	
	public void OperatorBitwiseOrAssign(void* other)
	{
		CQt.QPainterPath_OperatorBitwiseOrAssign(this.nativePtr, other);
	}
	
	public void* OperatorPlusAssign(void* other)
	{
		return CQt.QPainterPath_OperatorPlusAssign(this.nativePtr, other);
	}
	
	public void* OperatorMinusAssign(void* other)
	{
		return CQt.QPainterPath_OperatorMinusAssign(this.nativePtr, other);
	}
	
	public void AddRoundedRect4(void* rect, double xRadius, double yRadius, int64 mode)
	{
		CQt.QPainterPath_AddRoundedRect4(this.nativePtr, rect, xRadius, yRadius, mode);
	}
	
	public void AddRoundedRect7(double x, double y, double w, double h, double xRadius, double yRadius, int64 mode)
	{
		CQt.QPainterPath_AddRoundedRect7(this.nativePtr, x, y, w, h, xRadius, yRadius, mode);
	}
	
}
extension CQt
{
	[LinkName("QPainterPath_new")]
	public static extern void* QPainterPath_new();
	[LinkName("QPainterPath_new2")]
	public static extern void* QPainterPath_new2(void* startPoint);
	[LinkName("QPainterPath_new3")]
	public static extern void* QPainterPath_new3(void* other);
	[LinkName("QPainterPath_OperatorAssign")]
	public static extern void QPainterPath_OperatorAssign(void* c_this, void* other);
	[LinkName("QPainterPath_Swap")]
	public static extern void QPainterPath_Swap(void* c_this, void* other);
	[LinkName("QPainterPath_Clear")]
	public static extern void QPainterPath_Clear(void* c_this);
	[LinkName("QPainterPath_Reserve")]
	public static extern void QPainterPath_Reserve(void* c_this, int32 size);
	[LinkName("QPainterPath_Capacity")]
	public static extern int32 QPainterPath_Capacity(void* c_this);
	[LinkName("QPainterPath_CloseSubpath")]
	public static extern void QPainterPath_CloseSubpath(void* c_this);
	[LinkName("QPainterPath_MoveTo")]
	public static extern void QPainterPath_MoveTo(void* c_this, void* p);
	[LinkName("QPainterPath_MoveTo2")]
	public static extern void QPainterPath_MoveTo2(void* c_this, double x, double y);
	[LinkName("QPainterPath_LineTo")]
	public static extern void QPainterPath_LineTo(void* c_this, void* p);
	[LinkName("QPainterPath_LineTo2")]
	public static extern void QPainterPath_LineTo2(void* c_this, double x, double y);
	[LinkName("QPainterPath_ArcMoveTo")]
	public static extern void QPainterPath_ArcMoveTo(void* c_this, void* rect, double angle);
	[LinkName("QPainterPath_ArcMoveTo2")]
	public static extern void QPainterPath_ArcMoveTo2(void* c_this, double x, double y, double w, double h, double angle);
	[LinkName("QPainterPath_ArcTo")]
	public static extern void QPainterPath_ArcTo(void* c_this, void* rect, double startAngle, double arcLength);
	[LinkName("QPainterPath_ArcTo2")]
	public static extern void QPainterPath_ArcTo2(void* c_this, double x, double y, double w, double h, double startAngle, double arcLength);
	[LinkName("QPainterPath_CubicTo")]
	public static extern void QPainterPath_CubicTo(void* c_this, void* ctrlPt1, void* ctrlPt2, void* endPt);
	[LinkName("QPainterPath_CubicTo2")]
	public static extern void QPainterPath_CubicTo2(void* c_this, double ctrlPt1x, double ctrlPt1y, double ctrlPt2x, double ctrlPt2y, double endPtx, double endPty);
	[LinkName("QPainterPath_QuadTo")]
	public static extern void QPainterPath_QuadTo(void* c_this, void* ctrlPt, void* endPt);
	[LinkName("QPainterPath_QuadTo2")]
	public static extern void QPainterPath_QuadTo2(void* c_this, double ctrlPtx, double ctrlPty, double endPtx, double endPty);
	[LinkName("QPainterPath_CurrentPosition")]
	public static extern void QPainterPath_CurrentPosition(void* c_this);
	[LinkName("QPainterPath_AddRect")]
	public static extern void QPainterPath_AddRect(void* c_this, void* rect);
	[LinkName("QPainterPath_AddRect2")]
	public static extern void QPainterPath_AddRect2(void* c_this, double x, double y, double w, double h);
	[LinkName("QPainterPath_AddEllipse")]
	public static extern void QPainterPath_AddEllipse(void* c_this, void* rect);
	[LinkName("QPainterPath_AddEllipse2")]
	public static extern void QPainterPath_AddEllipse2(void* c_this, double x, double y, double w, double h);
	[LinkName("QPainterPath_AddEllipse3")]
	public static extern void QPainterPath_AddEllipse3(void* c_this, void* center, double rx, double ry);
	[LinkName("QPainterPath_AddText")]
	public static extern void QPainterPath_AddText(void* c_this, void* point, void* f, libqt_string text);
	[LinkName("QPainterPath_AddText2")]
	public static extern void QPainterPath_AddText2(void* c_this, double x, double y, void* f, libqt_string text);
	[LinkName("QPainterPath_AddPath")]
	public static extern void QPainterPath_AddPath(void* c_this, void* path);
	[LinkName("QPainterPath_AddRegion")]
	public static extern void QPainterPath_AddRegion(void* c_this, void* region);
	[LinkName("QPainterPath_AddRoundedRect")]
	public static extern void QPainterPath_AddRoundedRect(void* c_this, void* rect, double xRadius, double yRadius);
	[LinkName("QPainterPath_AddRoundedRect2")]
	public static extern void QPainterPath_AddRoundedRect2(void* c_this, double x, double y, double w, double h, double xRadius, double yRadius);
	[LinkName("QPainterPath_ConnectPath")]
	public static extern void QPainterPath_ConnectPath(void* c_this, void* path);
	[LinkName("QPainterPath_Contains")]
	public static extern bool QPainterPath_Contains(void* c_this, void* pt);
	[LinkName("QPainterPath_ContainsWithRect")]
	public static extern bool QPainterPath_ContainsWithRect(void* c_this, void* rect);
	[LinkName("QPainterPath_Intersects")]
	public static extern bool QPainterPath_Intersects(void* c_this, void* rect);
	[LinkName("QPainterPath_Translate")]
	public static extern void QPainterPath_Translate(void* c_this, double dx, double dy);
	[LinkName("QPainterPath_TranslateWithOffset")]
	public static extern void QPainterPath_TranslateWithOffset(void* c_this, void* offset);
	[LinkName("QPainterPath_Translated")]
	public static extern void QPainterPath_Translated(void* c_this, double dx, double dy);
	[LinkName("QPainterPath_TranslatedWithOffset")]
	public static extern void QPainterPath_TranslatedWithOffset(void* c_this, void* offset);
	[LinkName("QPainterPath_BoundingRect")]
	public static extern void QPainterPath_BoundingRect(void* c_this);
	[LinkName("QPainterPath_ControlPointRect")]
	public static extern void QPainterPath_ControlPointRect(void* c_this);
	[LinkName("QPainterPath_FillRule")]
	public static extern int64 QPainterPath_FillRule(void* c_this);
	[LinkName("QPainterPath_SetFillRule")]
	public static extern void QPainterPath_SetFillRule(void* c_this, int64 fillRule);
	[LinkName("QPainterPath_IsEmpty")]
	public static extern bool QPainterPath_IsEmpty(void* c_this);
	[LinkName("QPainterPath_ToReversed")]
	public static extern void QPainterPath_ToReversed(void* c_this);
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
	public static extern void QPainterPath_PointAtPercent(void* c_this, double t);
	[LinkName("QPainterPath_AngleAtPercent")]
	public static extern double QPainterPath_AngleAtPercent(void* c_this, double t);
	[LinkName("QPainterPath_SlopeAtPercent")]
	public static extern double QPainterPath_SlopeAtPercent(void* c_this, double t);
	[LinkName("QPainterPath_IntersectsWithQPainterPath")]
	public static extern bool QPainterPath_IntersectsWithQPainterPath(void* c_this, void* p);
	[LinkName("QPainterPath_ContainsWithQPainterPath")]
	public static extern bool QPainterPath_ContainsWithQPainterPath(void* c_this, void* p);
	[LinkName("QPainterPath_United")]
	public static extern void QPainterPath_United(void* c_this, void* r);
	[LinkName("QPainterPath_Intersected")]
	public static extern void QPainterPath_Intersected(void* c_this, void* r);
	[LinkName("QPainterPath_Subtracted")]
	public static extern void QPainterPath_Subtracted(void* c_this, void* r);
	[LinkName("QPainterPath_Simplified")]
	public static extern void QPainterPath_Simplified(void* c_this);
	[LinkName("QPainterPath_OperatorEqual")]
	public static extern bool QPainterPath_OperatorEqual(void* c_this, void* other);
	[LinkName("QPainterPath_OperatorNotEqual")]
	public static extern bool QPainterPath_OperatorNotEqual(void* c_this, void* other);
	[LinkName("QPainterPath_OperatorBitwiseAnd")]
	public static extern void QPainterPath_OperatorBitwiseAnd(void* c_this, void* other);
	[LinkName("QPainterPath_OperatorBitwiseOr")]
	public static extern void QPainterPath_OperatorBitwiseOr(void* c_this, void* other);
	[LinkName("QPainterPath_OperatorPlus")]
	public static extern void QPainterPath_OperatorPlus(void* c_this, void* other);
	[LinkName("QPainterPath_OperatorMinus")]
	public static extern void QPainterPath_OperatorMinus(void* c_this, void* other);
	[LinkName("QPainterPath_OperatorBitwiseAndAssign")]
	public static extern void QPainterPath_OperatorBitwiseAndAssign(void* c_this, void* other);
	[LinkName("QPainterPath_OperatorBitwiseOrAssign")]
	public static extern void QPainterPath_OperatorBitwiseOrAssign(void* c_this, void* other);
	[LinkName("QPainterPath_OperatorPlusAssign")]
	public static extern void* QPainterPath_OperatorPlusAssign(void* c_this, void* other);
	[LinkName("QPainterPath_OperatorMinusAssign")]
	public static extern void* QPainterPath_OperatorMinusAssign(void* c_this, void* other);
	[LinkName("QPainterPath_AddRoundedRect4")]
	public static extern void QPainterPath_AddRoundedRect4(void* c_this, void* rect, double xRadius, double yRadius, int64 mode);
	[LinkName("QPainterPath_AddRoundedRect7")]
	public static extern void QPainterPath_AddRoundedRect7(void* c_this, double x, double y, double w, double h, double xRadius, double yRadius, int64 mode);
	/// Delete this object from C++ memory
	[LinkName("QPainterPath_Delete")]
	public static extern void QPainterPath_Delete(void* self);
}
public class QPainterPathStroker
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QPainterPathStroker_new();
	}
	
	public ~this()
	{
		CQt.QPainterPathStroker_Delete(this.nativePtr);
	}
	
	public void SetWidth(double width)
	{
		CQt.QPainterPathStroker_SetWidth(this.nativePtr, width);
	}
	
	public double Width()
	{
		return CQt.QPainterPathStroker_Width(this.nativePtr);
	}
	
	public void SetCapStyle(int64 style)
	{
		CQt.QPainterPathStroker_SetCapStyle(this.nativePtr, style);
	}
	
	public int64 CapStyle()
	{
		return CQt.QPainterPathStroker_CapStyle(this.nativePtr);
	}
	
	public void SetJoinStyle(int64 style)
	{
		CQt.QPainterPathStroker_SetJoinStyle(this.nativePtr, style);
	}
	
	public int64 JoinStyle()
	{
		return CQt.QPainterPathStroker_JoinStyle(this.nativePtr);
	}
	
	public void SetMiterLimit(double length)
	{
		CQt.QPainterPathStroker_SetMiterLimit(this.nativePtr, length);
	}
	
	public double MiterLimit()
	{
		return CQt.QPainterPathStroker_MiterLimit(this.nativePtr);
	}
	
	public void SetCurveThreshold(double threshold)
	{
		CQt.QPainterPathStroker_SetCurveThreshold(this.nativePtr, threshold);
	}
	
	public double CurveThreshold()
	{
		return CQt.QPainterPathStroker_CurveThreshold(this.nativePtr);
	}
	
	public void SetDashPattern(int64 dashPattern)
	{
		CQt.QPainterPathStroker_SetDashPattern(this.nativePtr, dashPattern);
	}
	
	public void SetDashPatternWithDashPattern(double[] dashPattern)
	{
		CQt.QPainterPathStroker_SetDashPatternWithDashPattern(this.nativePtr, dashPattern);
	}
	
	public double[] DashPattern()
	{
		return CQt.QPainterPathStroker_DashPattern(this.nativePtr);
	}
	
	public void SetDashOffset(double offset)
	{
		CQt.QPainterPathStroker_SetDashOffset(this.nativePtr, offset);
	}
	
	public double DashOffset()
	{
		return CQt.QPainterPathStroker_DashOffset(this.nativePtr);
	}
	
	public void CreateStroke(void* path)
	{
		CQt.QPainterPathStroker_CreateStroke(this.nativePtr, path);
	}
	
}
extension CQt
{
	[LinkName("QPainterPathStroker_new")]
	public static extern void* QPainterPathStroker_new();
	[LinkName("QPainterPathStroker_new2")]
	public static extern void* QPainterPathStroker_new2(void* pen);
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
	public static extern void QPainterPathStroker_CreateStroke(void* c_this, void* path);
	/// Delete this object from C++ memory
	[LinkName("QPainterPathStroker_Delete")]
	public static extern void QPainterPathStroker_Delete(void* self);
}
public class QPainterPath__Element
{
	protected void* nativePtr;
	
	public ~this()
	{
		CQt.QPainterPath__Element_Delete(this.nativePtr);
	}
	
	public bool IsMoveTo()
	{
		return CQt.QPainterPath__Element_IsMoveTo(this.nativePtr);
	}
	
	public bool IsLineTo()
	{
		return CQt.QPainterPath__Element_IsLineTo(this.nativePtr);
	}
	
	public bool IsCurveTo()
	{
		return CQt.QPainterPath__Element_IsCurveTo(this.nativePtr);
	}
	
	public void ToQPointF()
	{
		CQt.QPainterPath__Element_ToQPointF(this.nativePtr);
	}
	
	public bool OperatorEqual(QPainterPath__Element* e)
	{
		return CQt.QPainterPath__Element_OperatorEqual(this.nativePtr, e);
	}
	
	public bool OperatorNotEqual(QPainterPath__Element* e)
	{
		return CQt.QPainterPath__Element_OperatorNotEqual(this.nativePtr, e);
	}
	
}
extension CQt
{
	[LinkName("QPainterPath__Element_IsMoveTo")]
	public static extern bool QPainterPath__Element_IsMoveTo(void* c_this);
	[LinkName("QPainterPath__Element_IsLineTo")]
	public static extern bool QPainterPath__Element_IsLineTo(void* c_this);
	[LinkName("QPainterPath__Element_IsCurveTo")]
	public static extern bool QPainterPath__Element_IsCurveTo(void* c_this);
	[LinkName("QPainterPath__Element_ToQPointF")]
	public static extern void QPainterPath__Element_ToQPointF(void* c_this);
	[LinkName("QPainterPath__Element_OperatorEqual")]
	public static extern bool QPainterPath__Element_OperatorEqual(void* c_this, QPainterPath__Element* e);
	[LinkName("QPainterPath__Element_OperatorNotEqual")]
	public static extern bool QPainterPath__Element_OperatorNotEqual(void* c_this, QPainterPath__Element* e);
	/// Delete this object from C++ memory
	[LinkName("QPainterPath__Element_Delete")]
	public static extern void QPainterPath__Element_Delete(void* self);
}