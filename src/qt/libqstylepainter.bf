using System;
using System.Interop;
namespace Qt;

public interface IQStylePainter
{
	void* NativePtr { get; }
}
public struct QStylePainterPtr : IQStylePainter, IDisposable, IQPainter
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQWidget w)
	{
		return .(CQt.QStylePainter_new((w == default || w.NativePtr == default) ? default : w.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QStylePainter_Delete(this.nativePtr);
	}
	
	public bool Begin(IQWidget w)
	{
		return CQt.QStylePainter_Begin(this.nativePtr, (w == default || w.NativePtr == default) ? default : w.NativePtr);
	}
	
	public bool Begin2(IQPaintDevice pd, IQWidget w)
	{
		return CQt.QStylePainter_Begin2(this.nativePtr, (pd == default || pd.NativePtr == default) ? default : pd.NativePtr, (w == default || w.NativePtr == default) ? default : w.NativePtr);
	}
	
	public void DrawPrimitive(int64 pe, IQStyleOption opt)
	{
		CQt.QStylePainter_DrawPrimitive(this.nativePtr, (int64)pe, (opt == default || opt.NativePtr == default) ? default : opt.NativePtr);
	}
	
	public void DrawControl(int64 ce, IQStyleOption opt)
	{
		CQt.QStylePainter_DrawControl(this.nativePtr, (int64)ce, (opt == default || opt.NativePtr == default) ? default : opt.NativePtr);
	}
	
	public void DrawComplexControl(int64 cc, IQStyleOptionComplex opt)
	{
		CQt.QStylePainter_DrawComplexControl(this.nativePtr, (int64)cc, (opt == default || opt.NativePtr == default) ? default : opt.NativePtr);
	}
	
	public void DrawItemText(IQRect r, int32 flags, IQPalette pal, bool enabled, String text)
	{
		CQt.QStylePainter_DrawItemText(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr, flags, (pal == default || pal.NativePtr == default) ? default : pal.NativePtr, enabled, libqt_string(text));
	}
	
	public void DrawItemPixmap(IQRect r, int32 flags, IQPixmap pixmap)
	{
		CQt.QStylePainter_DrawItemPixmap(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr, flags, (pixmap == default || pixmap.NativePtr == default) ? default : pixmap.NativePtr);
	}
	
	public void* Style()
	{
		return CQt.QStylePainter_Style(this.nativePtr);
	}
	
	public void DrawItemText6(IQRect r, int32 flags, IQPalette pal, bool enabled, String text, int64 textRole)
	{
		CQt.QStylePainter_DrawItemText6(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr, flags, (pal == default || pal.NativePtr == default) ? default : pal.NativePtr, enabled, libqt_string(text), (int64)textRole);
	}
	
	public void* Device()
	{
		return CQt.QPainter_Device(this.nativePtr);
	}
	
	public bool End()
	{
		return CQt.QPainter_End(this.nativePtr);
	}
	
	public bool IsActive()
	{
		return CQt.QPainter_IsActive(this.nativePtr);
	}
	
	public void SetCompositionMode(int64 mode)
	{
		CQt.QPainter_SetCompositionMode(this.nativePtr, (int64)mode);
	}
	
	public int64 CompositionMode()
	{
		return CQt.QPainter_CompositionMode(this.nativePtr);
	}
	
	public void* Font()
	{
		return CQt.QPainter_Font(this.nativePtr);
	}
	
	public void SetFont(IQFont f)
	{
		CQt.QPainter_SetFont(this.nativePtr, (f == default || f.NativePtr == default) ? default : f.NativePtr);
	}
	
	public void FontMetrics()
	{
		CQt.QPainter_FontMetrics(this.nativePtr);
	}
	
	public void FontInfo()
	{
		CQt.QPainter_FontInfo(this.nativePtr);
	}
	
	public void SetPen(IQColor color)
	{
		CQt.QPainter_SetPen(this.nativePtr, (color == default || color.NativePtr == default) ? default : color.NativePtr);
	}
	
	public void SetPenWithPen(IQPen pen)
	{
		CQt.QPainter_SetPenWithPen(this.nativePtr, (pen == default || pen.NativePtr == default) ? default : pen.NativePtr);
	}
	
	public void SetPenWithStyle(int64 style)
	{
		CQt.QPainter_SetPenWithStyle(this.nativePtr, (int64)style);
	}
	
	public void* Pen()
	{
		return CQt.QPainter_Pen(this.nativePtr);
	}
	
	public void SetBrush(IQBrush brush)
	{
		CQt.QPainter_SetBrush(this.nativePtr, (brush == default || brush.NativePtr == default) ? default : brush.NativePtr);
	}
	
	public void SetBrushWithStyle(int64 style)
	{
		CQt.QPainter_SetBrushWithStyle(this.nativePtr, (int64)style);
	}
	
	public void* Brush()
	{
		return CQt.QPainter_Brush(this.nativePtr);
	}
	
	public void SetBackgroundMode(int64 mode)
	{
		CQt.QPainter_SetBackgroundMode(this.nativePtr, (int64)mode);
	}
	
	public int64 BackgroundMode()
	{
		return CQt.QPainter_BackgroundMode(this.nativePtr);
	}
	
	public void BrushOrigin()
	{
		CQt.QPainter_BrushOrigin(this.nativePtr);
	}
	
	public void SetBrushOrigin(int32 x, int32 y)
	{
		CQt.QPainter_SetBrushOrigin(this.nativePtr, x, y);
	}
	
	public void SetBrushOriginWithBrushOrigin(IQPoint brushOrigin)
	{
		CQt.QPainter_SetBrushOriginWithBrushOrigin(this.nativePtr, (brushOrigin == default || brushOrigin.NativePtr == default) ? default : brushOrigin.NativePtr);
	}
	
	public void SetBrushOrigin2(IQPointF brushOrigin)
	{
		CQt.QPainter_SetBrushOrigin2(this.nativePtr, (brushOrigin == default || brushOrigin.NativePtr == default) ? default : brushOrigin.NativePtr);
	}
	
	public void SetBackground(IQBrush bg)
	{
		CQt.QPainter_SetBackground(this.nativePtr, (bg == default || bg.NativePtr == default) ? default : bg.NativePtr);
	}
	
	public void* Background()
	{
		return CQt.QPainter_Background(this.nativePtr);
	}
	
	public double Opacity()
	{
		return CQt.QPainter_Opacity(this.nativePtr);
	}
	
	public void SetOpacity(double opacity)
	{
		CQt.QPainter_SetOpacity(this.nativePtr, opacity);
	}
	
	public void ClipRegion()
	{
		CQt.QPainter_ClipRegion(this.nativePtr);
	}
	
	public void ClipPath()
	{
		CQt.QPainter_ClipPath(this.nativePtr);
	}
	
	public void SetClipRect(IQRectF param1)
	{
		CQt.QPainter_SetClipRect(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void SetClipRectWithQRect(IQRect param1)
	{
		CQt.QPainter_SetClipRectWithQRect(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void SetClipRect2(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QPainter_SetClipRect2(this.nativePtr, x, y, w, h);
	}
	
	public void SetClipRegion(IQRegion param1)
	{
		CQt.QPainter_SetClipRegion(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void SetClipPath(IQPainterPath path)
	{
		CQt.QPainter_SetClipPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void SetClipping(bool enable)
	{
		CQt.QPainter_SetClipping(this.nativePtr, enable);
	}
	
	public bool HasClipping()
	{
		return CQt.QPainter_HasClipping(this.nativePtr);
	}
	
	public void ClipBoundingRect()
	{
		CQt.QPainter_ClipBoundingRect(this.nativePtr);
	}
	
	public void Save()
	{
		CQt.QPainter_Save(this.nativePtr);
	}
	
	public void Restore()
	{
		CQt.QPainter_Restore(this.nativePtr);
	}
	
	public void SetTransform(IQTransform transform)
	{
		CQt.QPainter_SetTransform(this.nativePtr, (transform == default || transform.NativePtr == default) ? default : transform.NativePtr);
	}
	
	public void* Transform()
	{
		return CQt.QPainter_Transform(this.nativePtr);
	}
	
	public void* DeviceTransform()
	{
		return CQt.QPainter_DeviceTransform(this.nativePtr);
	}
	
	public void ResetTransform()
	{
		CQt.QPainter_ResetTransform(this.nativePtr);
	}
	
	public void SetWorldTransform(IQTransform matrix)
	{
		CQt.QPainter_SetWorldTransform(this.nativePtr, (matrix == default || matrix.NativePtr == default) ? default : matrix.NativePtr);
	}
	
	public void* WorldTransform()
	{
		return CQt.QPainter_WorldTransform(this.nativePtr);
	}
	
	public void CombinedTransform()
	{
		CQt.QPainter_CombinedTransform(this.nativePtr);
	}
	
	public void SetWorldMatrixEnabled(bool enabled)
	{
		CQt.QPainter_SetWorldMatrixEnabled(this.nativePtr, enabled);
	}
	
	public bool WorldMatrixEnabled()
	{
		return CQt.QPainter_WorldMatrixEnabled(this.nativePtr);
	}
	
	public void Scale(double sx, double sy)
	{
		CQt.QPainter_Scale(this.nativePtr, sx, sy);
	}
	
	public void Shear(double sh, double sv)
	{
		CQt.QPainter_Shear(this.nativePtr, sh, sv);
	}
	
	public void Rotate(double a)
	{
		CQt.QPainter_Rotate(this.nativePtr, a);
	}
	
	public void Translate(IQPointF offset)
	{
		CQt.QPainter_Translate(this.nativePtr, (offset == default || offset.NativePtr == default) ? default : offset.NativePtr);
	}
	
	public void TranslateWithOffset(IQPoint offset)
	{
		CQt.QPainter_TranslateWithOffset(this.nativePtr, (offset == default || offset.NativePtr == default) ? default : offset.NativePtr);
	}
	
	public void Translate2(double dx, double dy)
	{
		CQt.QPainter_Translate2(this.nativePtr, dx, dy);
	}
	
	public void Window()
	{
		CQt.QPainter_Window(this.nativePtr);
	}
	
	public void SetWindow(IQRect window)
	{
		CQt.QPainter_SetWindow(this.nativePtr, (window == default || window.NativePtr == default) ? default : window.NativePtr);
	}
	
	public void SetWindow2(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QPainter_SetWindow2(this.nativePtr, x, y, w, h);
	}
	
	public void Viewport()
	{
		CQt.QPainter_Viewport(this.nativePtr);
	}
	
	public void SetViewport(IQRect viewport)
	{
		CQt.QPainter_SetViewport(this.nativePtr, (viewport == default || viewport.NativePtr == default) ? default : viewport.NativePtr);
	}
	
	public void SetViewport2(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QPainter_SetViewport2(this.nativePtr, x, y, w, h);
	}
	
	public void SetViewTransformEnabled(bool enable)
	{
		CQt.QPainter_SetViewTransformEnabled(this.nativePtr, enable);
	}
	
	public bool ViewTransformEnabled()
	{
		return CQt.QPainter_ViewTransformEnabled(this.nativePtr);
	}
	
	public void StrokePath(IQPainterPath path, IQPen pen)
	{
		CQt.QPainter_StrokePath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr, (pen == default || pen.NativePtr == default) ? default : pen.NativePtr);
	}
	
	public void FillPath(IQPainterPath path, IQBrush brush)
	{
		CQt.QPainter_FillPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr, (brush == default || brush.NativePtr == default) ? default : brush.NativePtr);
	}
	
	public void DrawPath(IQPainterPath path)
	{
		CQt.QPainter_DrawPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void DrawPoint(IQPointF pt)
	{
		CQt.QPainter_DrawPoint(this.nativePtr, (pt == default || pt.NativePtr == default) ? default : pt.NativePtr);
	}
	
	public void DrawPointWithQPoint(IQPoint p)
	{
		CQt.QPainter_DrawPointWithQPoint(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr);
	}
	
	public void DrawPoint2(int32 x, int32 y)
	{
		CQt.QPainter_DrawPoint2(this.nativePtr, x, y);
	}
	
	public void DrawPoints(IQPointF points, int32 pointCount)
	{
		CQt.QPainter_DrawPoints(this.nativePtr, (points == default || points.NativePtr == default) ? default : points.NativePtr, pointCount);
	}
	
	public void DrawPoints2(IQPoint points, int32 pointCount)
	{
		CQt.QPainter_DrawPoints2(this.nativePtr, (points == default || points.NativePtr == default) ? default : points.NativePtr, pointCount);
	}
	
	public void DrawLine(IQLineF line)
	{
		CQt.QPainter_DrawLine(this.nativePtr, (line == default || line.NativePtr == default) ? default : line.NativePtr);
	}
	
	public void DrawLineWithLine(IQLine line)
	{
		CQt.QPainter_DrawLineWithLine(this.nativePtr, (line == default || line.NativePtr == default) ? default : line.NativePtr);
	}
	
	public void DrawLine2(int32 x1, int32 y1, int32 x2, int32 y2)
	{
		CQt.QPainter_DrawLine2(this.nativePtr, x1, y1, x2, y2);
	}
	
	public void DrawLine3(IQPoint p1, IQPoint p2)
	{
		CQt.QPainter_DrawLine3(this.nativePtr, (p1 == default || p1.NativePtr == default) ? default : p1.NativePtr, (p2 == default || p2.NativePtr == default) ? default : p2.NativePtr);
	}
	
	public void DrawLine4(IQPointF p1, IQPointF p2)
	{
		CQt.QPainter_DrawLine4(this.nativePtr, (p1 == default || p1.NativePtr == default) ? default : p1.NativePtr, (p2 == default || p2.NativePtr == default) ? default : p2.NativePtr);
	}
	
	public void DrawLines(IQLineF lines, int32 lineCount)
	{
		CQt.QPainter_DrawLines(this.nativePtr, (lines == default || lines.NativePtr == default) ? default : lines.NativePtr, lineCount);
	}
	
	public void DrawLinesWithLines(IQLineF[] lines)
	{
		CQt.QPainter_DrawLinesWithLines(this.nativePtr, null);
	}
	
	public void DrawLines2(IQPointF pointPairs, int32 lineCount)
	{
		CQt.QPainter_DrawLines2(this.nativePtr, (pointPairs == default || pointPairs.NativePtr == default) ? default : pointPairs.NativePtr, lineCount);
	}
	
	public void DrawLinesWithPointPairs(IQPointF[] pointPairs)
	{
		CQt.QPainter_DrawLinesWithPointPairs(this.nativePtr, null);
	}
	
	public void DrawLines3(IQLine lines, int32 lineCount)
	{
		CQt.QPainter_DrawLines3(this.nativePtr, (lines == default || lines.NativePtr == default) ? default : lines.NativePtr, lineCount);
	}
	
	public void DrawLines4(IQLine[] lines)
	{
		CQt.QPainter_DrawLines4(this.nativePtr, null);
	}
	
	public void DrawLines5(IQPoint pointPairs, int32 lineCount)
	{
		CQt.QPainter_DrawLines5(this.nativePtr, (pointPairs == default || pointPairs.NativePtr == default) ? default : pointPairs.NativePtr, lineCount);
	}
	
	public void DrawLines6(IQPoint[] pointPairs)
	{
		CQt.QPainter_DrawLines6(this.nativePtr, null);
	}
	
	public void DrawRect(IQRectF rect)
	{
		CQt.QPainter_DrawRect(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void DrawRect2(int32 x1, int32 y1, int32 w, int32 h)
	{
		CQt.QPainter_DrawRect2(this.nativePtr, x1, y1, w, h);
	}
	
	public void DrawRectWithRect(IQRect rect)
	{
		CQt.QPainter_DrawRectWithRect(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void DrawRects(IQRectF rects, int32 rectCount)
	{
		CQt.QPainter_DrawRects(this.nativePtr, (rects == default || rects.NativePtr == default) ? default : rects.NativePtr, rectCount);
	}
	
	public void DrawRectsWithRectangles(IQRectF[] rectangles)
	{
		CQt.QPainter_DrawRectsWithRectangles(this.nativePtr, null);
	}
	
	public void DrawRects2(IQRect rects, int32 rectCount)
	{
		CQt.QPainter_DrawRects2(this.nativePtr, (rects == default || rects.NativePtr == default) ? default : rects.NativePtr, rectCount);
	}
	
	public void DrawRects3(IQRect[] rectangles)
	{
		CQt.QPainter_DrawRects3(this.nativePtr, null);
	}
	
	public void DrawEllipse(IQRectF r)
	{
		CQt.QPainter_DrawEllipse(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr);
	}
	
	public void DrawEllipseWithQRect(IQRect r)
	{
		CQt.QPainter_DrawEllipseWithQRect(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr);
	}
	
	public void DrawEllipse2(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QPainter_DrawEllipse2(this.nativePtr, x, y, w, h);
	}
	
	public void DrawEllipse3(IQPointF center, double rx, double ry)
	{
		CQt.QPainter_DrawEllipse3(this.nativePtr, (center == default || center.NativePtr == default) ? default : center.NativePtr, rx, ry);
	}
	
	public void DrawEllipse4(IQPoint center, int32 rx, int32 ry)
	{
		CQt.QPainter_DrawEllipse4(this.nativePtr, (center == default || center.NativePtr == default) ? default : center.NativePtr, rx, ry);
	}
	
	public void DrawPolyline(IQPointF points, int32 pointCount)
	{
		CQt.QPainter_DrawPolyline(this.nativePtr, (points == default || points.NativePtr == default) ? default : points.NativePtr, pointCount);
	}
	
	public void DrawPolyline2(IQPoint points, int32 pointCount)
	{
		CQt.QPainter_DrawPolyline2(this.nativePtr, (points == default || points.NativePtr == default) ? default : points.NativePtr, pointCount);
	}
	
	public void DrawPolygon(IQPointF points, int32 pointCount)
	{
		CQt.QPainter_DrawPolygon(this.nativePtr, (points == default || points.NativePtr == default) ? default : points.NativePtr, pointCount);
	}
	
	public void DrawPolygon2(IQPoint points, int32 pointCount)
	{
		CQt.QPainter_DrawPolygon2(this.nativePtr, (points == default || points.NativePtr == default) ? default : points.NativePtr, pointCount);
	}
	
	public void DrawConvexPolygon(IQPointF points, int32 pointCount)
	{
		CQt.QPainter_DrawConvexPolygon(this.nativePtr, (points == default || points.NativePtr == default) ? default : points.NativePtr, pointCount);
	}
	
	public void DrawConvexPolygon2(IQPoint points, int32 pointCount)
	{
		CQt.QPainter_DrawConvexPolygon2(this.nativePtr, (points == default || points.NativePtr == default) ? default : points.NativePtr, pointCount);
	}
	
	public void DrawArc(IQRectF rect, int32 a, int32 alen)
	{
		CQt.QPainter_DrawArc(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, a, alen);
	}
	
	public void DrawArc2(IQRect param1, int32 a, int32 alen)
	{
		CQt.QPainter_DrawArc2(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, a, alen);
	}
	
	public void DrawArc3(int32 x, int32 y, int32 w, int32 h, int32 a, int32 alen)
	{
		CQt.QPainter_DrawArc3(this.nativePtr, x, y, w, h, a, alen);
	}
	
	public void DrawPie(IQRectF rect, int32 a, int32 alen)
	{
		CQt.QPainter_DrawPie(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, a, alen);
	}
	
	public void DrawPie2(int32 x, int32 y, int32 w, int32 h, int32 a, int32 alen)
	{
		CQt.QPainter_DrawPie2(this.nativePtr, x, y, w, h, a, alen);
	}
	
	public void DrawPie3(IQRect param1, int32 a, int32 alen)
	{
		CQt.QPainter_DrawPie3(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, a, alen);
	}
	
	public void DrawChord(IQRectF rect, int32 a, int32 alen)
	{
		CQt.QPainter_DrawChord(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, a, alen);
	}
	
	public void DrawChord2(int32 x, int32 y, int32 w, int32 h, int32 a, int32 alen)
	{
		CQt.QPainter_DrawChord2(this.nativePtr, x, y, w, h, a, alen);
	}
	
	public void DrawChord3(IQRect param1, int32 a, int32 alen)
	{
		CQt.QPainter_DrawChord3(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, a, alen);
	}
	
	public void DrawRoundedRect(IQRectF rect, double xRadius, double yRadius)
	{
		CQt.QPainter_DrawRoundedRect(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, xRadius, yRadius);
	}
	
	public void DrawRoundedRect2(int32 x, int32 y, int32 w, int32 h, double xRadius, double yRadius)
	{
		CQt.QPainter_DrawRoundedRect2(this.nativePtr, x, y, w, h, xRadius, yRadius);
	}
	
	public void DrawRoundedRect3(IQRect rect, double xRadius, double yRadius)
	{
		CQt.QPainter_DrawRoundedRect3(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, xRadius, yRadius);
	}
	
	public void DrawTiledPixmap(IQRectF rect, IQPixmap pm)
	{
		CQt.QPainter_DrawTiledPixmap(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, (pm == default || pm.NativePtr == default) ? default : pm.NativePtr);
	}
	
	public void DrawTiledPixmap2(int32 x, int32 y, int32 w, int32 h, IQPixmap param5)
	{
		CQt.QPainter_DrawTiledPixmap2(this.nativePtr, x, y, w, h, (param5 == default || param5.NativePtr == default) ? default : param5.NativePtr);
	}
	
	public void DrawTiledPixmap3(IQRect param1, IQPixmap param2)
	{
		CQt.QPainter_DrawTiledPixmap3(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, (param2 == default || param2.NativePtr == default) ? default : param2.NativePtr);
	}
	
	public void DrawPicture(IQPointF p, IQPicture picture)
	{
		CQt.QPainter_DrawPicture(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr, (picture == default || picture.NativePtr == default) ? default : picture.NativePtr);
	}
	
	public void DrawPicture2(int32 x, int32 y, IQPicture picture)
	{
		CQt.QPainter_DrawPicture2(this.nativePtr, x, y, (picture == default || picture.NativePtr == default) ? default : picture.NativePtr);
	}
	
	public void DrawPicture3(IQPoint p, IQPicture picture)
	{
		CQt.QPainter_DrawPicture3(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr, (picture == default || picture.NativePtr == default) ? default : picture.NativePtr);
	}
	
	public void DrawPixmap(IQRectF targetRect, IQPixmap pixmap, IQRectF sourceRect)
	{
		CQt.QPainter_DrawPixmap(this.nativePtr, (targetRect == default || targetRect.NativePtr == default) ? default : targetRect.NativePtr, (pixmap == default || pixmap.NativePtr == default) ? default : pixmap.NativePtr, (sourceRect == default || sourceRect.NativePtr == default) ? default : sourceRect.NativePtr);
	}
	
	public void DrawPixmap2(IQRect targetRect, IQPixmap pixmap, IQRect sourceRect)
	{
		CQt.QPainter_DrawPixmap2(this.nativePtr, (targetRect == default || targetRect.NativePtr == default) ? default : targetRect.NativePtr, (pixmap == default || pixmap.NativePtr == default) ? default : pixmap.NativePtr, (sourceRect == default || sourceRect.NativePtr == default) ? default : sourceRect.NativePtr);
	}
	
	public void DrawPixmap3(int32 x, int32 y, int32 w, int32 h, IQPixmap pm, int32 sx, int32 sy, int32 sw, int32 sh)
	{
		CQt.QPainter_DrawPixmap3(this.nativePtr, x, y, w, h, (pm == default || pm.NativePtr == default) ? default : pm.NativePtr, sx, sy, sw, sh);
	}
	
	public void DrawPixmap4(int32 x, int32 y, IQPixmap pm, int32 sx, int32 sy, int32 sw, int32 sh)
	{
		CQt.QPainter_DrawPixmap4(this.nativePtr, x, y, (pm == default || pm.NativePtr == default) ? default : pm.NativePtr, sx, sy, sw, sh);
	}
	
	public void DrawPixmap5(IQPointF p, IQPixmap pm, IQRectF sr)
	{
		CQt.QPainter_DrawPixmap5(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr, (pm == default || pm.NativePtr == default) ? default : pm.NativePtr, (sr == default || sr.NativePtr == default) ? default : sr.NativePtr);
	}
	
	public void DrawPixmap6(IQPoint p, IQPixmap pm, IQRect sr)
	{
		CQt.QPainter_DrawPixmap6(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr, (pm == default || pm.NativePtr == default) ? default : pm.NativePtr, (sr == default || sr.NativePtr == default) ? default : sr.NativePtr);
	}
	
	public void DrawPixmap7(IQPointF p, IQPixmap pm)
	{
		CQt.QPainter_DrawPixmap7(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr, (pm == default || pm.NativePtr == default) ? default : pm.NativePtr);
	}
	
	public void DrawPixmap8(IQPoint p, IQPixmap pm)
	{
		CQt.QPainter_DrawPixmap8(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr, (pm == default || pm.NativePtr == default) ? default : pm.NativePtr);
	}
	
	public void DrawPixmap9(int32 x, int32 y, IQPixmap pm)
	{
		CQt.QPainter_DrawPixmap9(this.nativePtr, x, y, (pm == default || pm.NativePtr == default) ? default : pm.NativePtr);
	}
	
	public void DrawPixmap10(IQRect r, IQPixmap pm)
	{
		CQt.QPainter_DrawPixmap10(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr, (pm == default || pm.NativePtr == default) ? default : pm.NativePtr);
	}
	
	public void DrawPixmap11(int32 x, int32 y, int32 w, int32 h, IQPixmap pm)
	{
		CQt.QPainter_DrawPixmap11(this.nativePtr, x, y, w, h, (pm == default || pm.NativePtr == default) ? default : pm.NativePtr);
	}
	
	public void DrawPixmapFragments(QPainter__PixmapFragmentPtr fragments, int32 fragmentCount, IQPixmap pixmap)
	{
		CQt.QPainter_DrawPixmapFragments(this.nativePtr, (fragments == default || fragments.NativePtr == default) ? default : fragments.NativePtr, fragmentCount, (pixmap == default || pixmap.NativePtr == default) ? default : pixmap.NativePtr);
	}
	
	public void DrawImage(IQRectF targetRect, IQImage image, IQRectF sourceRect)
	{
		CQt.QPainter_DrawImage(this.nativePtr, (targetRect == default || targetRect.NativePtr == default) ? default : targetRect.NativePtr, (image == default || image.NativePtr == default) ? default : image.NativePtr, (sourceRect == default || sourceRect.NativePtr == default) ? default : sourceRect.NativePtr);
	}
	
	public void DrawImage2(IQRect targetRect, IQImage image, IQRect sourceRect)
	{
		CQt.QPainter_DrawImage2(this.nativePtr, (targetRect == default || targetRect.NativePtr == default) ? default : targetRect.NativePtr, (image == default || image.NativePtr == default) ? default : image.NativePtr, (sourceRect == default || sourceRect.NativePtr == default) ? default : sourceRect.NativePtr);
	}
	
	public void DrawImage3(IQPointF p, IQImage image, IQRectF sr)
	{
		CQt.QPainter_DrawImage3(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr, (image == default || image.NativePtr == default) ? default : image.NativePtr, (sr == default || sr.NativePtr == default) ? default : sr.NativePtr);
	}
	
	public void DrawImage4(IQPoint p, IQImage image, IQRect sr)
	{
		CQt.QPainter_DrawImage4(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr, (image == default || image.NativePtr == default) ? default : image.NativePtr, (sr == default || sr.NativePtr == default) ? default : sr.NativePtr);
	}
	
	public void DrawImage5(IQRectF r, IQImage image)
	{
		CQt.QPainter_DrawImage5(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr, (image == default || image.NativePtr == default) ? default : image.NativePtr);
	}
	
	public void DrawImage6(IQRect r, IQImage image)
	{
		CQt.QPainter_DrawImage6(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr, (image == default || image.NativePtr == default) ? default : image.NativePtr);
	}
	
	public void DrawImage7(IQPointF p, IQImage image)
	{
		CQt.QPainter_DrawImage7(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr, (image == default || image.NativePtr == default) ? default : image.NativePtr);
	}
	
	public void DrawImage8(IQPoint p, IQImage image)
	{
		CQt.QPainter_DrawImage8(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr, (image == default || image.NativePtr == default) ? default : image.NativePtr);
	}
	
	public void DrawImage9(int32 x, int32 y, IQImage image)
	{
		CQt.QPainter_DrawImage9(this.nativePtr, x, y, (image == default || image.NativePtr == default) ? default : image.NativePtr);
	}
	
	public void SetLayoutDirection(int64 direction)
	{
		CQt.QPainter_SetLayoutDirection(this.nativePtr, (int64)direction);
	}
	
	public int64 LayoutDirection()
	{
		return CQt.QPainter_LayoutDirection(this.nativePtr);
	}
	
	public void DrawGlyphRun(IQPointF position, IQGlyphRun glyphRun)
	{
		CQt.QPainter_DrawGlyphRun(this.nativePtr, (position == default || position.NativePtr == default) ? default : position.NativePtr, (glyphRun == default || glyphRun.NativePtr == default) ? default : glyphRun.NativePtr);
	}
	
	public void DrawStaticText(IQPointF topLeftPosition, IQStaticText staticText)
	{
		CQt.QPainter_DrawStaticText(this.nativePtr, (topLeftPosition == default || topLeftPosition.NativePtr == default) ? default : topLeftPosition.NativePtr, (staticText == default || staticText.NativePtr == default) ? default : staticText.NativePtr);
	}
	
	public void DrawStaticText2(IQPoint topLeftPosition, IQStaticText staticText)
	{
		CQt.QPainter_DrawStaticText2(this.nativePtr, (topLeftPosition == default || topLeftPosition.NativePtr == default) ? default : topLeftPosition.NativePtr, (staticText == default || staticText.NativePtr == default) ? default : staticText.NativePtr);
	}
	
	public void DrawStaticText3(int32 left, int32 top, IQStaticText staticText)
	{
		CQt.QPainter_DrawStaticText3(this.nativePtr, left, top, (staticText == default || staticText.NativePtr == default) ? default : staticText.NativePtr);
	}
	
	public void DrawText(IQPointF p, String s)
	{
		CQt.QPainter_DrawText(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr, libqt_string(s));
	}
	
	public void DrawText2(IQPoint p, String s)
	{
		CQt.QPainter_DrawText2(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr, libqt_string(s));
	}
	
	public void DrawText3(int32 x, int32 y, String s)
	{
		CQt.QPainter_DrawText3(this.nativePtr, x, y, libqt_string(s));
	}
	
	public void DrawText4(IQPointF p, String str, int32 tf, int32 justificationPadding)
	{
		CQt.QPainter_DrawText4(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr, libqt_string(str), tf, justificationPadding);
	}
	
	public void DrawText5(IQRectF r, int32 flags, String text)
	{
		CQt.QPainter_DrawText5(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr, flags, libqt_string(text));
	}
	
	public void DrawText6(IQRect r, int32 flags, String text)
	{
		CQt.QPainter_DrawText6(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr, flags, libqt_string(text));
	}
	
	public void DrawText7(int32 x, int32 y, int32 w, int32 h, int32 flags, String text)
	{
		CQt.QPainter_DrawText7(this.nativePtr, x, y, w, h, flags, libqt_string(text));
	}
	
	public void DrawText8(IQRectF r, String text)
	{
		CQt.QPainter_DrawText8(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr, libqt_string(text));
	}
	
	public void BoundingRect(IQRectF rect, int32 flags, String text)
	{
		CQt.QPainter_BoundingRect(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, flags, libqt_string(text));
	}
	
	public void BoundingRect2(IQRect rect, int32 flags, String text)
	{
		CQt.QPainter_BoundingRect2(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, flags, libqt_string(text));
	}
	
	public void BoundingRect3(int32 x, int32 y, int32 w, int32 h, int32 flags, String text)
	{
		CQt.QPainter_BoundingRect3(this.nativePtr, x, y, w, h, flags, libqt_string(text));
	}
	
	public void BoundingRect4(IQRectF rect, String text)
	{
		CQt.QPainter_BoundingRect4(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, libqt_string(text));
	}
	
	public void DrawTextItem(IQPointF p, IQTextItem ti)
	{
		CQt.QPainter_DrawTextItem(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr, (ti == default || ti.NativePtr == default) ? default : ti.NativePtr);
	}
	
	public void DrawTextItem2(int32 x, int32 y, IQTextItem ti)
	{
		CQt.QPainter_DrawTextItem2(this.nativePtr, x, y, (ti == default || ti.NativePtr == default) ? default : ti.NativePtr);
	}
	
	public void DrawTextItem3(IQPoint p, IQTextItem ti)
	{
		CQt.QPainter_DrawTextItem3(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr, (ti == default || ti.NativePtr == default) ? default : ti.NativePtr);
	}
	
	public void FillRect(IQRectF param1, IQBrush param2)
	{
		CQt.QPainter_FillRect(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, (param2 == default || param2.NativePtr == default) ? default : param2.NativePtr);
	}
	
	public void FillRect2(int32 x, int32 y, int32 w, int32 h, IQBrush param5)
	{
		CQt.QPainter_FillRect2(this.nativePtr, x, y, w, h, (param5 == default || param5.NativePtr == default) ? default : param5.NativePtr);
	}
	
	public void FillRect3(IQRect param1, IQBrush param2)
	{
		CQt.QPainter_FillRect3(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, (param2 == default || param2.NativePtr == default) ? default : param2.NativePtr);
	}
	
	public void FillRect4(IQRectF param1, IQColor color)
	{
		CQt.QPainter_FillRect4(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, (color == default || color.NativePtr == default) ? default : color.NativePtr);
	}
	
	public void FillRect5(int32 x, int32 y, int32 w, int32 h, IQColor color)
	{
		CQt.QPainter_FillRect5(this.nativePtr, x, y, w, h, (color == default || color.NativePtr == default) ? default : color.NativePtr);
	}
	
	public void FillRect6(IQRect param1, IQColor color)
	{
		CQt.QPainter_FillRect6(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, (color == default || color.NativePtr == default) ? default : color.NativePtr);
	}
	
	public void FillRect7(int32 x, int32 y, int32 w, int32 h, int64 c)
	{
		CQt.QPainter_FillRect7(this.nativePtr, x, y, w, h, (int64)c);
	}
	
	public void FillRect8(IQRect r, int64 c)
	{
		CQt.QPainter_FillRect8(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr, (int64)c);
	}
	
	public void FillRect9(IQRectF r, int64 c)
	{
		CQt.QPainter_FillRect9(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr, (int64)c);
	}
	
	public void FillRect10(int32 x, int32 y, int32 w, int32 h, int64 style)
	{
		CQt.QPainter_FillRect10(this.nativePtr, x, y, w, h, (int64)style);
	}
	
	public void FillRect11(IQRect r, int64 style)
	{
		CQt.QPainter_FillRect11(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr, (int64)style);
	}
	
	public void FillRect12(IQRectF r, int64 style)
	{
		CQt.QPainter_FillRect12(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr, (int64)style);
	}
	
	public void FillRect13(int32 x, int32 y, int32 w, int32 h, int64 preset)
	{
		CQt.QPainter_FillRect13(this.nativePtr, x, y, w, h, (int64)preset);
	}
	
	public void FillRect14(IQRect r, int64 preset)
	{
		CQt.QPainter_FillRect14(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr, (int64)preset);
	}
	
	public void FillRect15(IQRectF r, int64 preset)
	{
		CQt.QPainter_FillRect15(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr, (int64)preset);
	}
	
	public void EraseRect(IQRectF param1)
	{
		CQt.QPainter_EraseRect(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void EraseRect2(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QPainter_EraseRect2(this.nativePtr, x, y, w, h);
	}
	
	public void EraseRectWithQRect(IQRect param1)
	{
		CQt.QPainter_EraseRectWithQRect(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void SetRenderHint(int64 hint)
	{
		CQt.QPainter_SetRenderHint(this.nativePtr, (int64)hint);
	}
	
	public void SetRenderHints(int64 hints)
	{
		CQt.QPainter_SetRenderHints(this.nativePtr, hints);
	}
	
	public int64 RenderHints()
	{
		return CQt.QPainter_RenderHints(this.nativePtr);
	}
	
	public bool TestRenderHint(int64 hint)
	{
		return CQt.QPainter_TestRenderHint(this.nativePtr, (int64)hint);
	}
	
	public void* PaintEngine()
	{
		return CQt.QPainter_PaintEngine(this.nativePtr);
	}
	
	public void BeginNativePainting()
	{
		CQt.QPainter_BeginNativePainting(this.nativePtr);
	}
	
	public void EndNativePainting()
	{
		CQt.QPainter_EndNativePainting(this.nativePtr);
	}
	
	public void SetClipRect22(IQRectF param1, int64 op)
	{
		CQt.QPainter_SetClipRect22(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, (int64)op);
	}
	
	public void SetClipRect23(IQRect param1, int64 op)
	{
		CQt.QPainter_SetClipRect23(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, (int64)op);
	}
	
	public void SetClipRect5(int32 x, int32 y, int32 w, int32 h, int64 op)
	{
		CQt.QPainter_SetClipRect5(this.nativePtr, x, y, w, h, (int64)op);
	}
	
	public void SetClipRegion2(IQRegion param1, int64 op)
	{
		CQt.QPainter_SetClipRegion2(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, (int64)op);
	}
	
	public void SetClipPath2(IQPainterPath path, int64 op)
	{
		CQt.QPainter_SetClipPath2(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr, (int64)op);
	}
	
	public void SetTransform2(IQTransform transform, bool combine)
	{
		CQt.QPainter_SetTransform2(this.nativePtr, (transform == default || transform.NativePtr == default) ? default : transform.NativePtr, combine);
	}
	
	public void SetWorldTransform2(IQTransform matrix, bool combine)
	{
		CQt.QPainter_SetWorldTransform2(this.nativePtr, (matrix == default || matrix.NativePtr == default) ? default : matrix.NativePtr, combine);
	}
	
	public void DrawPolygon32(IQPointF points, int32 pointCount, int64 fillRule)
	{
		CQt.QPainter_DrawPolygon32(this.nativePtr, (points == default || points.NativePtr == default) ? default : points.NativePtr, pointCount, (int64)fillRule);
	}
	
	public void DrawPolygon33(IQPoint points, int32 pointCount, int64 fillRule)
	{
		CQt.QPainter_DrawPolygon33(this.nativePtr, (points == default || points.NativePtr == default) ? default : points.NativePtr, pointCount, (int64)fillRule);
	}
	
	public void DrawRoundedRect4(IQRectF rect, double xRadius, double yRadius, int64 mode)
	{
		CQt.QPainter_DrawRoundedRect4(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, xRadius, yRadius, (int64)mode);
	}
	
	public void DrawRoundedRect7(int32 x, int32 y, int32 w, int32 h, double xRadius, double yRadius, int64 mode)
	{
		CQt.QPainter_DrawRoundedRect7(this.nativePtr, x, y, w, h, xRadius, yRadius, (int64)mode);
	}
	
	public void DrawRoundedRect42(IQRect rect, double xRadius, double yRadius, int64 mode)
	{
		CQt.QPainter_DrawRoundedRect42(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, xRadius, yRadius, (int64)mode);
	}
	
	public void DrawTiledPixmap32(IQRectF rect, IQPixmap pm, IQPointF offset)
	{
		CQt.QPainter_DrawTiledPixmap32(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, (pm == default || pm.NativePtr == default) ? default : pm.NativePtr, (offset == default || offset.NativePtr == default) ? default : offset.NativePtr);
	}
	
	public void DrawTiledPixmap6(int32 x, int32 y, int32 w, int32 h, IQPixmap param5, int32 sx)
	{
		CQt.QPainter_DrawTiledPixmap6(this.nativePtr, x, y, w, h, (param5 == default || param5.NativePtr == default) ? default : param5.NativePtr, sx);
	}
	
	public void DrawTiledPixmap7(int32 x, int32 y, int32 w, int32 h, IQPixmap param5, int32 sx, int32 sy)
	{
		CQt.QPainter_DrawTiledPixmap7(this.nativePtr, x, y, w, h, (param5 == default || param5.NativePtr == default) ? default : param5.NativePtr, sx, sy);
	}
	
	public void DrawTiledPixmap33(IQRect param1, IQPixmap param2, IQPoint param3)
	{
		CQt.QPainter_DrawTiledPixmap33(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, (param2 == default || param2.NativePtr == default) ? default : param2.NativePtr, (param3 == default || param3.NativePtr == default) ? default : param3.NativePtr);
	}
	
	public void DrawPixmapFragments4(QPainter__PixmapFragmentPtr fragments, int32 fragmentCount, IQPixmap pixmap, int64 hints)
	{
		CQt.QPainter_DrawPixmapFragments4(this.nativePtr, (fragments == default || fragments.NativePtr == default) ? default : fragments.NativePtr, fragmentCount, (pixmap == default || pixmap.NativePtr == default) ? default : pixmap.NativePtr, hints);
	}
	
	public void DrawImage42(IQRectF targetRect, IQImage image, IQRectF sourceRect, int64 flags)
	{
		CQt.QPainter_DrawImage42(this.nativePtr, (targetRect == default || targetRect.NativePtr == default) ? default : targetRect.NativePtr, (image == default || image.NativePtr == default) ? default : image.NativePtr, (sourceRect == default || sourceRect.NativePtr == default) ? default : sourceRect.NativePtr, flags);
	}
	
	public void DrawImage43(IQRect targetRect, IQImage image, IQRect sourceRect, int64 flags)
	{
		CQt.QPainter_DrawImage43(this.nativePtr, (targetRect == default || targetRect.NativePtr == default) ? default : targetRect.NativePtr, (image == default || image.NativePtr == default) ? default : image.NativePtr, (sourceRect == default || sourceRect.NativePtr == default) ? default : sourceRect.NativePtr, flags);
	}
	
	public void DrawImage44(IQPointF p, IQImage image, IQRectF sr, int64 flags)
	{
		CQt.QPainter_DrawImage44(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr, (image == default || image.NativePtr == default) ? default : image.NativePtr, (sr == default || sr.NativePtr == default) ? default : sr.NativePtr, flags);
	}
	
	public void DrawImage45(IQPoint p, IQImage image, IQRect sr, int64 flags)
	{
		CQt.QPainter_DrawImage45(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr, (image == default || image.NativePtr == default) ? default : image.NativePtr, (sr == default || sr.NativePtr == default) ? default : sr.NativePtr, flags);
	}
	
	public void DrawImage46(int32 x, int32 y, IQImage image, int32 sx)
	{
		CQt.QPainter_DrawImage46(this.nativePtr, x, y, (image == default || image.NativePtr == default) ? default : image.NativePtr, sx);
	}
	
	public void DrawImage52(int32 x, int32 y, IQImage image, int32 sx, int32 sy)
	{
		CQt.QPainter_DrawImage52(this.nativePtr, x, y, (image == default || image.NativePtr == default) ? default : image.NativePtr, sx, sy);
	}
	
	public void DrawImage62(int32 x, int32 y, IQImage image, int32 sx, int32 sy, int32 sw)
	{
		CQt.QPainter_DrawImage62(this.nativePtr, x, y, (image == default || image.NativePtr == default) ? default : image.NativePtr, sx, sy, sw);
	}
	
	public void DrawImage72(int32 x, int32 y, IQImage image, int32 sx, int32 sy, int32 sw, int32 sh)
	{
		CQt.QPainter_DrawImage72(this.nativePtr, x, y, (image == default || image.NativePtr == default) ? default : image.NativePtr, sx, sy, sw, sh);
	}
	
	public void DrawImage82(int32 x, int32 y, IQImage image, int32 sx, int32 sy, int32 sw, int32 sh, int64 flags)
	{
		CQt.QPainter_DrawImage82(this.nativePtr, x, y, (image == default || image.NativePtr == default) ? default : image.NativePtr, sx, sy, sw, sh, flags);
	}
	
	public void DrawText42(IQRectF r, int32 flags, String text, IQRectF br)
	{
		CQt.QPainter_DrawText42(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr, flags, libqt_string(text), (br == default || br.NativePtr == default) ? default : br.NativePtr);
	}
	
	public void DrawText43(IQRect r, int32 flags, String text, IQRect br)
	{
		CQt.QPainter_DrawText43(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr, flags, libqt_string(text), (br == default || br.NativePtr == default) ? default : br.NativePtr);
	}
	
	public void DrawText72(int32 x, int32 y, int32 w, int32 h, int32 flags, String text, IQRect br)
	{
		CQt.QPainter_DrawText72(this.nativePtr, x, y, w, h, flags, libqt_string(text), (br == default || br.NativePtr == default) ? default : br.NativePtr);
	}
	
	public void DrawText32(IQRectF r, String text, IQTextOption o)
	{
		CQt.QPainter_DrawText32(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr, libqt_string(text), (o == default || o.NativePtr == default) ? default : o.NativePtr);
	}
	
	public void BoundingRect32(IQRectF rect, String text, IQTextOption o)
	{
		CQt.QPainter_BoundingRect32(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, libqt_string(text), (o == default || o.NativePtr == default) ? default : o.NativePtr);
	}
	
	public void SetRenderHint2(int64 hint, bool on)
	{
		CQt.QPainter_SetRenderHint2(this.nativePtr, (int64)hint, on);
	}
	
	public void SetRenderHints2(int64 hints, bool on)
	{
		CQt.QPainter_SetRenderHints2(this.nativePtr, hints, on);
	}
	
}
public class QStylePainter
{
	public QStylePainterPtr handle;
	
	public static implicit operator QStylePainterPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQWidget w)
	{
		this.handle = QStylePainterPtr.New(w);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public bool Begin(IQWidget w)
	{
		return this.handle.Begin(w);
	}
	
	public bool Begin2(IQPaintDevice pd, IQWidget w)
	{
		return this.handle.Begin2(pd, w);
	}
	
	public void DrawPrimitive(int64 pe, IQStyleOption opt)
	{
		this.handle.DrawPrimitive(pe, opt);
	}
	
	public void DrawControl(int64 ce, IQStyleOption opt)
	{
		this.handle.DrawControl(ce, opt);
	}
	
	public void DrawComplexControl(int64 cc, IQStyleOptionComplex opt)
	{
		this.handle.DrawComplexControl(cc, opt);
	}
	
	public void DrawItemText(IQRect r, int32 flags, IQPalette pal, bool enabled, String text)
	{
		this.handle.DrawItemText(r, flags, pal, enabled, text);
	}
	
	public void DrawItemPixmap(IQRect r, int32 flags, IQPixmap pixmap)
	{
		this.handle.DrawItemPixmap(r, flags, pixmap);
	}
	
	public void* Style()
	{
		return this.handle.Style();
	}
	
	public void DrawItemText6(IQRect r, int32 flags, IQPalette pal, bool enabled, String text, int64 textRole)
	{
		this.handle.DrawItemText6(r, flags, pal, enabled, text, textRole);
	}
	
	public void* Device()
	{
		return this.handle.Device();
	}
	
	public bool End()
	{
		return this.handle.End();
	}
	
	public bool IsActive()
	{
		return this.handle.IsActive();
	}
	
	public void SetCompositionMode(int64 mode)
	{
		this.handle.SetCompositionMode(mode);
	}
	
	public int64 CompositionMode()
	{
		return this.handle.CompositionMode();
	}
	
	public void* Font()
	{
		return this.handle.Font();
	}
	
	public void SetFont(IQFont f)
	{
		this.handle.SetFont(f);
	}
	
	public void FontMetrics()
	{
		this.handle.FontMetrics();
	}
	
	public void FontInfo()
	{
		this.handle.FontInfo();
	}
	
	public void SetPen(IQColor color)
	{
		this.handle.SetPen(color);
	}
	
	public void SetPenWithPen(IQPen pen)
	{
		this.handle.SetPenWithPen(pen);
	}
	
	public void SetPenWithStyle(int64 style)
	{
		this.handle.SetPenWithStyle(style);
	}
	
	public void* Pen()
	{
		return this.handle.Pen();
	}
	
	public void SetBrush(IQBrush brush)
	{
		this.handle.SetBrush(brush);
	}
	
	public void SetBrushWithStyle(int64 style)
	{
		this.handle.SetBrushWithStyle(style);
	}
	
	public void* Brush()
	{
		return this.handle.Brush();
	}
	
	public void SetBackgroundMode(int64 mode)
	{
		this.handle.SetBackgroundMode(mode);
	}
	
	public int64 BackgroundMode()
	{
		return this.handle.BackgroundMode();
	}
	
	public void BrushOrigin()
	{
		this.handle.BrushOrigin();
	}
	
	public void SetBrushOrigin(int32 x, int32 y)
	{
		this.handle.SetBrushOrigin(x, y);
	}
	
	public void SetBrushOriginWithBrushOrigin(IQPoint brushOrigin)
	{
		this.handle.SetBrushOriginWithBrushOrigin(brushOrigin);
	}
	
	public void SetBrushOrigin2(IQPointF brushOrigin)
	{
		this.handle.SetBrushOrigin2(brushOrigin);
	}
	
	public void SetBackground(IQBrush bg)
	{
		this.handle.SetBackground(bg);
	}
	
	public void* Background()
	{
		return this.handle.Background();
	}
	
	public double Opacity()
	{
		return this.handle.Opacity();
	}
	
	public void SetOpacity(double opacity)
	{
		this.handle.SetOpacity(opacity);
	}
	
	public void ClipRegion()
	{
		this.handle.ClipRegion();
	}
	
	public void ClipPath()
	{
		this.handle.ClipPath();
	}
	
	public void SetClipRect(IQRectF param1)
	{
		this.handle.SetClipRect(param1);
	}
	
	public void SetClipRectWithQRect(IQRect param1)
	{
		this.handle.SetClipRectWithQRect(param1);
	}
	
	public void SetClipRect2(int32 x, int32 y, int32 w, int32 h)
	{
		this.handle.SetClipRect2(x, y, w, h);
	}
	
	public void SetClipRegion(IQRegion param1)
	{
		this.handle.SetClipRegion(param1);
	}
	
	public void SetClipPath(IQPainterPath path)
	{
		this.handle.SetClipPath(path);
	}
	
	public void SetClipping(bool enable)
	{
		this.handle.SetClipping(enable);
	}
	
	public bool HasClipping()
	{
		return this.handle.HasClipping();
	}
	
	public void ClipBoundingRect()
	{
		this.handle.ClipBoundingRect();
	}
	
	public void Save()
	{
		this.handle.Save();
	}
	
	public void Restore()
	{
		this.handle.Restore();
	}
	
	public void SetTransform(IQTransform transform)
	{
		this.handle.SetTransform(transform);
	}
	
	public void* Transform()
	{
		return this.handle.Transform();
	}
	
	public void* DeviceTransform()
	{
		return this.handle.DeviceTransform();
	}
	
	public void ResetTransform()
	{
		this.handle.ResetTransform();
	}
	
	public void SetWorldTransform(IQTransform matrix)
	{
		this.handle.SetWorldTransform(matrix);
	}
	
	public void* WorldTransform()
	{
		return this.handle.WorldTransform();
	}
	
	public void CombinedTransform()
	{
		this.handle.CombinedTransform();
	}
	
	public void SetWorldMatrixEnabled(bool enabled)
	{
		this.handle.SetWorldMatrixEnabled(enabled);
	}
	
	public bool WorldMatrixEnabled()
	{
		return this.handle.WorldMatrixEnabled();
	}
	
	public void Scale(double sx, double sy)
	{
		this.handle.Scale(sx, sy);
	}
	
	public void Shear(double sh, double sv)
	{
		this.handle.Shear(sh, sv);
	}
	
	public void Rotate(double a)
	{
		this.handle.Rotate(a);
	}
	
	public void Translate(IQPointF offset)
	{
		this.handle.Translate(offset);
	}
	
	public void TranslateWithOffset(IQPoint offset)
	{
		this.handle.TranslateWithOffset(offset);
	}
	
	public void Translate2(double dx, double dy)
	{
		this.handle.Translate2(dx, dy);
	}
	
	public void Window()
	{
		this.handle.Window();
	}
	
	public void SetWindow(IQRect window)
	{
		this.handle.SetWindow(window);
	}
	
	public void SetWindow2(int32 x, int32 y, int32 w, int32 h)
	{
		this.handle.SetWindow2(x, y, w, h);
	}
	
	public void Viewport()
	{
		this.handle.Viewport();
	}
	
	public void SetViewport(IQRect viewport)
	{
		this.handle.SetViewport(viewport);
	}
	
	public void SetViewport2(int32 x, int32 y, int32 w, int32 h)
	{
		this.handle.SetViewport2(x, y, w, h);
	}
	
	public void SetViewTransformEnabled(bool enable)
	{
		this.handle.SetViewTransformEnabled(enable);
	}
	
	public bool ViewTransformEnabled()
	{
		return this.handle.ViewTransformEnabled();
	}
	
	public void StrokePath(IQPainterPath path, IQPen pen)
	{
		this.handle.StrokePath(path, pen);
	}
	
	public void FillPath(IQPainterPath path, IQBrush brush)
	{
		this.handle.FillPath(path, brush);
	}
	
	public void DrawPath(IQPainterPath path)
	{
		this.handle.DrawPath(path);
	}
	
	public void DrawPoint(IQPointF pt)
	{
		this.handle.DrawPoint(pt);
	}
	
	public void DrawPointWithQPoint(IQPoint p)
	{
		this.handle.DrawPointWithQPoint(p);
	}
	
	public void DrawPoint2(int32 x, int32 y)
	{
		this.handle.DrawPoint2(x, y);
	}
	
	public void DrawPoints(IQPointF points, int32 pointCount)
	{
		this.handle.DrawPoints(points, pointCount);
	}
	
	public void DrawPoints2(IQPoint points, int32 pointCount)
	{
		this.handle.DrawPoints2(points, pointCount);
	}
	
	public void DrawLine(IQLineF line)
	{
		this.handle.DrawLine(line);
	}
	
	public void DrawLineWithLine(IQLine line)
	{
		this.handle.DrawLineWithLine(line);
	}
	
	public void DrawLine2(int32 x1, int32 y1, int32 x2, int32 y2)
	{
		this.handle.DrawLine2(x1, y1, x2, y2);
	}
	
	public void DrawLine3(IQPoint p1, IQPoint p2)
	{
		this.handle.DrawLine3(p1, p2);
	}
	
	public void DrawLine4(IQPointF p1, IQPointF p2)
	{
		this.handle.DrawLine4(p1, p2);
	}
	
	public void DrawLines(IQLineF lines, int32 lineCount)
	{
		this.handle.DrawLines(lines, lineCount);
	}
	
	public void DrawLinesWithLines(IQLineF[] lines)
	{
		this.handle.DrawLinesWithLines(null);
	}
	
	public void DrawLines2(IQPointF pointPairs, int32 lineCount)
	{
		this.handle.DrawLines2(pointPairs, lineCount);
	}
	
	public void DrawLinesWithPointPairs(IQPointF[] pointPairs)
	{
		this.handle.DrawLinesWithPointPairs(null);
	}
	
	public void DrawLines3(IQLine lines, int32 lineCount)
	{
		this.handle.DrawLines3(lines, lineCount);
	}
	
	public void DrawLines4(IQLine[] lines)
	{
		this.handle.DrawLines4(null);
	}
	
	public void DrawLines5(IQPoint pointPairs, int32 lineCount)
	{
		this.handle.DrawLines5(pointPairs, lineCount);
	}
	
	public void DrawLines6(IQPoint[] pointPairs)
	{
		this.handle.DrawLines6(null);
	}
	
	public void DrawRect(IQRectF rect)
	{
		this.handle.DrawRect(rect);
	}
	
	public void DrawRect2(int32 x1, int32 y1, int32 w, int32 h)
	{
		this.handle.DrawRect2(x1, y1, w, h);
	}
	
	public void DrawRectWithRect(IQRect rect)
	{
		this.handle.DrawRectWithRect(rect);
	}
	
	public void DrawRects(IQRectF rects, int32 rectCount)
	{
		this.handle.DrawRects(rects, rectCount);
	}
	
	public void DrawRectsWithRectangles(IQRectF[] rectangles)
	{
		this.handle.DrawRectsWithRectangles(null);
	}
	
	public void DrawRects2(IQRect rects, int32 rectCount)
	{
		this.handle.DrawRects2(rects, rectCount);
	}
	
	public void DrawRects3(IQRect[] rectangles)
	{
		this.handle.DrawRects3(null);
	}
	
	public void DrawEllipse(IQRectF r)
	{
		this.handle.DrawEllipse(r);
	}
	
	public void DrawEllipseWithQRect(IQRect r)
	{
		this.handle.DrawEllipseWithQRect(r);
	}
	
	public void DrawEllipse2(int32 x, int32 y, int32 w, int32 h)
	{
		this.handle.DrawEllipse2(x, y, w, h);
	}
	
	public void DrawEllipse3(IQPointF center, double rx, double ry)
	{
		this.handle.DrawEllipse3(center, rx, ry);
	}
	
	public void DrawEllipse4(IQPoint center, int32 rx, int32 ry)
	{
		this.handle.DrawEllipse4(center, rx, ry);
	}
	
	public void DrawPolyline(IQPointF points, int32 pointCount)
	{
		this.handle.DrawPolyline(points, pointCount);
	}
	
	public void DrawPolyline2(IQPoint points, int32 pointCount)
	{
		this.handle.DrawPolyline2(points, pointCount);
	}
	
	public void DrawPolygon(IQPointF points, int32 pointCount)
	{
		this.handle.DrawPolygon(points, pointCount);
	}
	
	public void DrawPolygon2(IQPoint points, int32 pointCount)
	{
		this.handle.DrawPolygon2(points, pointCount);
	}
	
	public void DrawConvexPolygon(IQPointF points, int32 pointCount)
	{
		this.handle.DrawConvexPolygon(points, pointCount);
	}
	
	public void DrawConvexPolygon2(IQPoint points, int32 pointCount)
	{
		this.handle.DrawConvexPolygon2(points, pointCount);
	}
	
	public void DrawArc(IQRectF rect, int32 a, int32 alen)
	{
		this.handle.DrawArc(rect, a, alen);
	}
	
	public void DrawArc2(IQRect param1, int32 a, int32 alen)
	{
		this.handle.DrawArc2(param1, a, alen);
	}
	
	public void DrawArc3(int32 x, int32 y, int32 w, int32 h, int32 a, int32 alen)
	{
		this.handle.DrawArc3(x, y, w, h, a, alen);
	}
	
	public void DrawPie(IQRectF rect, int32 a, int32 alen)
	{
		this.handle.DrawPie(rect, a, alen);
	}
	
	public void DrawPie2(int32 x, int32 y, int32 w, int32 h, int32 a, int32 alen)
	{
		this.handle.DrawPie2(x, y, w, h, a, alen);
	}
	
	public void DrawPie3(IQRect param1, int32 a, int32 alen)
	{
		this.handle.DrawPie3(param1, a, alen);
	}
	
	public void DrawChord(IQRectF rect, int32 a, int32 alen)
	{
		this.handle.DrawChord(rect, a, alen);
	}
	
	public void DrawChord2(int32 x, int32 y, int32 w, int32 h, int32 a, int32 alen)
	{
		this.handle.DrawChord2(x, y, w, h, a, alen);
	}
	
	public void DrawChord3(IQRect param1, int32 a, int32 alen)
	{
		this.handle.DrawChord3(param1, a, alen);
	}
	
	public void DrawRoundedRect(IQRectF rect, double xRadius, double yRadius)
	{
		this.handle.DrawRoundedRect(rect, xRadius, yRadius);
	}
	
	public void DrawRoundedRect2(int32 x, int32 y, int32 w, int32 h, double xRadius, double yRadius)
	{
		this.handle.DrawRoundedRect2(x, y, w, h, xRadius, yRadius);
	}
	
	public void DrawRoundedRect3(IQRect rect, double xRadius, double yRadius)
	{
		this.handle.DrawRoundedRect3(rect, xRadius, yRadius);
	}
	
	public void DrawTiledPixmap(IQRectF rect, IQPixmap pm)
	{
		this.handle.DrawTiledPixmap(rect, pm);
	}
	
	public void DrawTiledPixmap2(int32 x, int32 y, int32 w, int32 h, IQPixmap param5)
	{
		this.handle.DrawTiledPixmap2(x, y, w, h, param5);
	}
	
	public void DrawTiledPixmap3(IQRect param1, IQPixmap param2)
	{
		this.handle.DrawTiledPixmap3(param1, param2);
	}
	
	public void DrawPicture(IQPointF p, IQPicture picture)
	{
		this.handle.DrawPicture(p, picture);
	}
	
	public void DrawPicture2(int32 x, int32 y, IQPicture picture)
	{
		this.handle.DrawPicture2(x, y, picture);
	}
	
	public void DrawPicture3(IQPoint p, IQPicture picture)
	{
		this.handle.DrawPicture3(p, picture);
	}
	
	public void DrawPixmap(IQRectF targetRect, IQPixmap pixmap, IQRectF sourceRect)
	{
		this.handle.DrawPixmap(targetRect, pixmap, sourceRect);
	}
	
	public void DrawPixmap2(IQRect targetRect, IQPixmap pixmap, IQRect sourceRect)
	{
		this.handle.DrawPixmap2(targetRect, pixmap, sourceRect);
	}
	
	public void DrawPixmap3(int32 x, int32 y, int32 w, int32 h, IQPixmap pm, int32 sx, int32 sy, int32 sw, int32 sh)
	{
		this.handle.DrawPixmap3(x, y, w, h, pm, sx, sy, sw, sh);
	}
	
	public void DrawPixmap4(int32 x, int32 y, IQPixmap pm, int32 sx, int32 sy, int32 sw, int32 sh)
	{
		this.handle.DrawPixmap4(x, y, pm, sx, sy, sw, sh);
	}
	
	public void DrawPixmap5(IQPointF p, IQPixmap pm, IQRectF sr)
	{
		this.handle.DrawPixmap5(p, pm, sr);
	}
	
	public void DrawPixmap6(IQPoint p, IQPixmap pm, IQRect sr)
	{
		this.handle.DrawPixmap6(p, pm, sr);
	}
	
	public void DrawPixmap7(IQPointF p, IQPixmap pm)
	{
		this.handle.DrawPixmap7(p, pm);
	}
	
	public void DrawPixmap8(IQPoint p, IQPixmap pm)
	{
		this.handle.DrawPixmap8(p, pm);
	}
	
	public void DrawPixmap9(int32 x, int32 y, IQPixmap pm)
	{
		this.handle.DrawPixmap9(x, y, pm);
	}
	
	public void DrawPixmap10(IQRect r, IQPixmap pm)
	{
		this.handle.DrawPixmap10(r, pm);
	}
	
	public void DrawPixmap11(int32 x, int32 y, int32 w, int32 h, IQPixmap pm)
	{
		this.handle.DrawPixmap11(x, y, w, h, pm);
	}
	
	public void DrawPixmapFragments(QPainter__PixmapFragmentPtr fragments, int32 fragmentCount, IQPixmap pixmap)
	{
		this.handle.DrawPixmapFragments(fragments, fragmentCount, pixmap);
	}
	
	public void DrawImage(IQRectF targetRect, IQImage image, IQRectF sourceRect)
	{
		this.handle.DrawImage(targetRect, image, sourceRect);
	}
	
	public void DrawImage2(IQRect targetRect, IQImage image, IQRect sourceRect)
	{
		this.handle.DrawImage2(targetRect, image, sourceRect);
	}
	
	public void DrawImage3(IQPointF p, IQImage image, IQRectF sr)
	{
		this.handle.DrawImage3(p, image, sr);
	}
	
	public void DrawImage4(IQPoint p, IQImage image, IQRect sr)
	{
		this.handle.DrawImage4(p, image, sr);
	}
	
	public void DrawImage5(IQRectF r, IQImage image)
	{
		this.handle.DrawImage5(r, image);
	}
	
	public void DrawImage6(IQRect r, IQImage image)
	{
		this.handle.DrawImage6(r, image);
	}
	
	public void DrawImage7(IQPointF p, IQImage image)
	{
		this.handle.DrawImage7(p, image);
	}
	
	public void DrawImage8(IQPoint p, IQImage image)
	{
		this.handle.DrawImage8(p, image);
	}
	
	public void DrawImage9(int32 x, int32 y, IQImage image)
	{
		this.handle.DrawImage9(x, y, image);
	}
	
	public void SetLayoutDirection(int64 direction)
	{
		this.handle.SetLayoutDirection(direction);
	}
	
	public int64 LayoutDirection()
	{
		return this.handle.LayoutDirection();
	}
	
	public void DrawGlyphRun(IQPointF position, IQGlyphRun glyphRun)
	{
		this.handle.DrawGlyphRun(position, glyphRun);
	}
	
	public void DrawStaticText(IQPointF topLeftPosition, IQStaticText staticText)
	{
		this.handle.DrawStaticText(topLeftPosition, staticText);
	}
	
	public void DrawStaticText2(IQPoint topLeftPosition, IQStaticText staticText)
	{
		this.handle.DrawStaticText2(topLeftPosition, staticText);
	}
	
	public void DrawStaticText3(int32 left, int32 top, IQStaticText staticText)
	{
		this.handle.DrawStaticText3(left, top, staticText);
	}
	
	public void DrawText(IQPointF p, String s)
	{
		this.handle.DrawText(p, s);
	}
	
	public void DrawText2(IQPoint p, String s)
	{
		this.handle.DrawText2(p, s);
	}
	
	public void DrawText3(int32 x, int32 y, String s)
	{
		this.handle.DrawText3(x, y, s);
	}
	
	public void DrawText4(IQPointF p, String str, int32 tf, int32 justificationPadding)
	{
		this.handle.DrawText4(p, str, tf, justificationPadding);
	}
	
	public void DrawText5(IQRectF r, int32 flags, String text)
	{
		this.handle.DrawText5(r, flags, text);
	}
	
	public void DrawText6(IQRect r, int32 flags, String text)
	{
		this.handle.DrawText6(r, flags, text);
	}
	
	public void DrawText7(int32 x, int32 y, int32 w, int32 h, int32 flags, String text)
	{
		this.handle.DrawText7(x, y, w, h, flags, text);
	}
	
	public void DrawText8(IQRectF r, String text)
	{
		this.handle.DrawText8(r, text);
	}
	
	public void BoundingRect(IQRectF rect, int32 flags, String text)
	{
		this.handle.BoundingRect(rect, flags, text);
	}
	
	public void BoundingRect2(IQRect rect, int32 flags, String text)
	{
		this.handle.BoundingRect2(rect, flags, text);
	}
	
	public void BoundingRect3(int32 x, int32 y, int32 w, int32 h, int32 flags, String text)
	{
		this.handle.BoundingRect3(x, y, w, h, flags, text);
	}
	
	public void BoundingRect4(IQRectF rect, String text)
	{
		this.handle.BoundingRect4(rect, text);
	}
	
	public void DrawTextItem(IQPointF p, IQTextItem ti)
	{
		this.handle.DrawTextItem(p, ti);
	}
	
	public void DrawTextItem2(int32 x, int32 y, IQTextItem ti)
	{
		this.handle.DrawTextItem2(x, y, ti);
	}
	
	public void DrawTextItem3(IQPoint p, IQTextItem ti)
	{
		this.handle.DrawTextItem3(p, ti);
	}
	
	public void FillRect(IQRectF param1, IQBrush param2)
	{
		this.handle.FillRect(param1, param2);
	}
	
	public void FillRect2(int32 x, int32 y, int32 w, int32 h, IQBrush param5)
	{
		this.handle.FillRect2(x, y, w, h, param5);
	}
	
	public void FillRect3(IQRect param1, IQBrush param2)
	{
		this.handle.FillRect3(param1, param2);
	}
	
	public void FillRect4(IQRectF param1, IQColor color)
	{
		this.handle.FillRect4(param1, color);
	}
	
	public void FillRect5(int32 x, int32 y, int32 w, int32 h, IQColor color)
	{
		this.handle.FillRect5(x, y, w, h, color);
	}
	
	public void FillRect6(IQRect param1, IQColor color)
	{
		this.handle.FillRect6(param1, color);
	}
	
	public void FillRect7(int32 x, int32 y, int32 w, int32 h, int64 c)
	{
		this.handle.FillRect7(x, y, w, h, c);
	}
	
	public void FillRect8(IQRect r, int64 c)
	{
		this.handle.FillRect8(r, c);
	}
	
	public void FillRect9(IQRectF r, int64 c)
	{
		this.handle.FillRect9(r, c);
	}
	
	public void FillRect10(int32 x, int32 y, int32 w, int32 h, int64 style)
	{
		this.handle.FillRect10(x, y, w, h, style);
	}
	
	public void FillRect11(IQRect r, int64 style)
	{
		this.handle.FillRect11(r, style);
	}
	
	public void FillRect12(IQRectF r, int64 style)
	{
		this.handle.FillRect12(r, style);
	}
	
	public void FillRect13(int32 x, int32 y, int32 w, int32 h, int64 preset)
	{
		this.handle.FillRect13(x, y, w, h, preset);
	}
	
	public void FillRect14(IQRect r, int64 preset)
	{
		this.handle.FillRect14(r, preset);
	}
	
	public void FillRect15(IQRectF r, int64 preset)
	{
		this.handle.FillRect15(r, preset);
	}
	
	public void EraseRect(IQRectF param1)
	{
		this.handle.EraseRect(param1);
	}
	
	public void EraseRect2(int32 x, int32 y, int32 w, int32 h)
	{
		this.handle.EraseRect2(x, y, w, h);
	}
	
	public void EraseRectWithQRect(IQRect param1)
	{
		this.handle.EraseRectWithQRect(param1);
	}
	
	public void SetRenderHint(int64 hint)
	{
		this.handle.SetRenderHint(hint);
	}
	
	public void SetRenderHints(int64 hints)
	{
		this.handle.SetRenderHints(hints);
	}
	
	public int64 RenderHints()
	{
		return this.handle.RenderHints();
	}
	
	public bool TestRenderHint(int64 hint)
	{
		return this.handle.TestRenderHint(hint);
	}
	
	public void* PaintEngine()
	{
		return this.handle.PaintEngine();
	}
	
	public void BeginNativePainting()
	{
		this.handle.BeginNativePainting();
	}
	
	public void EndNativePainting()
	{
		this.handle.EndNativePainting();
	}
	
	public void SetClipRect22(IQRectF param1, int64 op)
	{
		this.handle.SetClipRect22(param1, op);
	}
	
	public void SetClipRect23(IQRect param1, int64 op)
	{
		this.handle.SetClipRect23(param1, op);
	}
	
	public void SetClipRect5(int32 x, int32 y, int32 w, int32 h, int64 op)
	{
		this.handle.SetClipRect5(x, y, w, h, op);
	}
	
	public void SetClipRegion2(IQRegion param1, int64 op)
	{
		this.handle.SetClipRegion2(param1, op);
	}
	
	public void SetClipPath2(IQPainterPath path, int64 op)
	{
		this.handle.SetClipPath2(path, op);
	}
	
	public void SetTransform2(IQTransform transform, bool combine)
	{
		this.handle.SetTransform2(transform, combine);
	}
	
	public void SetWorldTransform2(IQTransform matrix, bool combine)
	{
		this.handle.SetWorldTransform2(matrix, combine);
	}
	
	public void DrawPolygon32(IQPointF points, int32 pointCount, int64 fillRule)
	{
		this.handle.DrawPolygon32(points, pointCount, fillRule);
	}
	
	public void DrawPolygon33(IQPoint points, int32 pointCount, int64 fillRule)
	{
		this.handle.DrawPolygon33(points, pointCount, fillRule);
	}
	
	public void DrawRoundedRect4(IQRectF rect, double xRadius, double yRadius, int64 mode)
	{
		this.handle.DrawRoundedRect4(rect, xRadius, yRadius, mode);
	}
	
	public void DrawRoundedRect7(int32 x, int32 y, int32 w, int32 h, double xRadius, double yRadius, int64 mode)
	{
		this.handle.DrawRoundedRect7(x, y, w, h, xRadius, yRadius, mode);
	}
	
	public void DrawRoundedRect42(IQRect rect, double xRadius, double yRadius, int64 mode)
	{
		this.handle.DrawRoundedRect42(rect, xRadius, yRadius, mode);
	}
	
	public void DrawTiledPixmap32(IQRectF rect, IQPixmap pm, IQPointF offset)
	{
		this.handle.DrawTiledPixmap32(rect, pm, offset);
	}
	
	public void DrawTiledPixmap6(int32 x, int32 y, int32 w, int32 h, IQPixmap param5, int32 sx)
	{
		this.handle.DrawTiledPixmap6(x, y, w, h, param5, sx);
	}
	
	public void DrawTiledPixmap7(int32 x, int32 y, int32 w, int32 h, IQPixmap param5, int32 sx, int32 sy)
	{
		this.handle.DrawTiledPixmap7(x, y, w, h, param5, sx, sy);
	}
	
	public void DrawTiledPixmap33(IQRect param1, IQPixmap param2, IQPoint param3)
	{
		this.handle.DrawTiledPixmap33(param1, param2, param3);
	}
	
	public void DrawPixmapFragments4(QPainter__PixmapFragmentPtr fragments, int32 fragmentCount, IQPixmap pixmap, int64 hints)
	{
		this.handle.DrawPixmapFragments4(fragments, fragmentCount, pixmap, hints);
	}
	
	public void DrawImage42(IQRectF targetRect, IQImage image, IQRectF sourceRect, int64 flags)
	{
		this.handle.DrawImage42(targetRect, image, sourceRect, flags);
	}
	
	public void DrawImage43(IQRect targetRect, IQImage image, IQRect sourceRect, int64 flags)
	{
		this.handle.DrawImage43(targetRect, image, sourceRect, flags);
	}
	
	public void DrawImage44(IQPointF p, IQImage image, IQRectF sr, int64 flags)
	{
		this.handle.DrawImage44(p, image, sr, flags);
	}
	
	public void DrawImage45(IQPoint p, IQImage image, IQRect sr, int64 flags)
	{
		this.handle.DrawImage45(p, image, sr, flags);
	}
	
	public void DrawImage46(int32 x, int32 y, IQImage image, int32 sx)
	{
		this.handle.DrawImage46(x, y, image, sx);
	}
	
	public void DrawImage52(int32 x, int32 y, IQImage image, int32 sx, int32 sy)
	{
		this.handle.DrawImage52(x, y, image, sx, sy);
	}
	
	public void DrawImage62(int32 x, int32 y, IQImage image, int32 sx, int32 sy, int32 sw)
	{
		this.handle.DrawImage62(x, y, image, sx, sy, sw);
	}
	
	public void DrawImage72(int32 x, int32 y, IQImage image, int32 sx, int32 sy, int32 sw, int32 sh)
	{
		this.handle.DrawImage72(x, y, image, sx, sy, sw, sh);
	}
	
	public void DrawImage82(int32 x, int32 y, IQImage image, int32 sx, int32 sy, int32 sw, int32 sh, int64 flags)
	{
		this.handle.DrawImage82(x, y, image, sx, sy, sw, sh, flags);
	}
	
	public void DrawText42(IQRectF r, int32 flags, String text, IQRectF br)
	{
		this.handle.DrawText42(r, flags, text, br);
	}
	
	public void DrawText43(IQRect r, int32 flags, String text, IQRect br)
	{
		this.handle.DrawText43(r, flags, text, br);
	}
	
	public void DrawText72(int32 x, int32 y, int32 w, int32 h, int32 flags, String text, IQRect br)
	{
		this.handle.DrawText72(x, y, w, h, flags, text, br);
	}
	
	public void DrawText32(IQRectF r, String text, IQTextOption o)
	{
		this.handle.DrawText32(r, text, o);
	}
	
	public void BoundingRect32(IQRectF rect, String text, IQTextOption o)
	{
		this.handle.BoundingRect32(rect, text, o);
	}
	
	public void SetRenderHint2(int64 hint, bool on)
	{
		this.handle.SetRenderHint2(hint, on);
	}
	
	public void SetRenderHints2(int64 hints, bool on)
	{
		this.handle.SetRenderHints2(hints, on);
	}
	
}
extension CQt
{
	[LinkName("QStylePainter_new")]
	public static extern void* QStylePainter_new(void* w);
	[LinkName("QStylePainter_new2")]
	public static extern void* QStylePainter_new2();
	[LinkName("QStylePainter_new3")]
	public static extern void* QStylePainter_new3(void* pd, void* w);
	[LinkName("QStylePainter_Begin")]
	public static extern bool QStylePainter_Begin(void* c_this, void* w);
	[LinkName("QStylePainter_Begin2")]
	public static extern bool QStylePainter_Begin2(void* c_this, void* pd, void* w);
	[LinkName("QStylePainter_DrawPrimitive")]
	public static extern void QStylePainter_DrawPrimitive(void* c_this, int64 pe, void* opt);
	[LinkName("QStylePainter_DrawControl")]
	public static extern void QStylePainter_DrawControl(void* c_this, int64 ce, void* opt);
	[LinkName("QStylePainter_DrawComplexControl")]
	public static extern void QStylePainter_DrawComplexControl(void* c_this, int64 cc, void* opt);
	[LinkName("QStylePainter_DrawItemText")]
	public static extern void QStylePainter_DrawItemText(void* c_this, void* r, int32 flags, void* pal, bool enabled, libqt_string text);
	[LinkName("QStylePainter_DrawItemPixmap")]
	public static extern void QStylePainter_DrawItemPixmap(void* c_this, void* r, int32 flags, void* pixmap);
	[LinkName("QStylePainter_Style")]
	public static extern void* QStylePainter_Style(void* c_this);
	[LinkName("QStylePainter_DrawItemText6")]
	public static extern void QStylePainter_DrawItemText6(void* c_this, void* r, int32 flags, void* pal, bool enabled, libqt_string text, int64 textRole);
	/// Delete this object from C++ memory
	[LinkName("QStylePainter_Delete")]
	public static extern void QStylePainter_Delete(void* self);
}