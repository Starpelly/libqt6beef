using System;
using System.Interop;
namespace Qt;

public interface IQStylePainter
{
	void* NativePtr { get; }
}
public class QStylePainter : IQStylePainter, IQPainter
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQWidget w)
	{
		this.nativePtr = CQt.QStylePainter_new((w == null) ? null : (void*)w.NativePtr);
	}
	
	public ~this()
	{
		CQt.QStylePainter_Delete(this.nativePtr);
	}
	
	public bool Begin(IQWidget w)
	{
		return CQt.QStylePainter_Begin(this.nativePtr, (w == null) ? null : (void*)w.NativePtr);
	}
	
	public bool Begin2(IQPaintDevice pd, IQWidget w)
	{
		return CQt.QStylePainter_Begin2(this.nativePtr, (pd == null) ? null : (void*)pd.NativePtr, (w == null) ? null : (void*)w.NativePtr);
	}
	
	public void DrawPrimitive(int64 pe, IQStyleOption opt)
	{
		CQt.QStylePainter_DrawPrimitive(this.nativePtr, pe, (opt == default) ? default : (void*)opt.NativePtr);
	}
	
	public void DrawControl(int64 ce, IQStyleOption opt)
	{
		CQt.QStylePainter_DrawControl(this.nativePtr, ce, (opt == default) ? default : (void*)opt.NativePtr);
	}
	
	public void DrawComplexControl(int64 cc, IQStyleOptionComplex opt)
	{
		CQt.QStylePainter_DrawComplexControl(this.nativePtr, cc, (opt == default) ? default : (void*)opt.NativePtr);
	}
	
	public void DrawItemText(IQRect r, int32 flags, IQPalette pal, bool enabled, String text)
	{
		CQt.QStylePainter_DrawItemText(this.nativePtr, (r == default) ? default : (void*)r.NativePtr, flags, (pal == default) ? default : (void*)pal.NativePtr, enabled, libqt_string(text));
	}
	
	public void DrawItemPixmap(IQRect r, int32 flags, IQPixmap pixmap)
	{
		CQt.QStylePainter_DrawItemPixmap(this.nativePtr, (r == default) ? default : (void*)r.NativePtr, flags, (pixmap == default) ? default : (void*)pixmap.NativePtr);
	}
	
	public void* Style()
	{
		return CQt.QStylePainter_Style(this.nativePtr);
	}
	
	public void DrawItemText6(IQRect r, int32 flags, IQPalette pal, bool enabled, String text, int64 textRole)
	{
		CQt.QStylePainter_DrawItemText6(this.nativePtr, (r == default) ? default : (void*)r.NativePtr, flags, (pal == default) ? default : (void*)pal.NativePtr, enabled, libqt_string(text), textRole);
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
		CQt.QPainter_SetCompositionMode(this.nativePtr, mode);
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
		CQt.QPainter_SetFont(this.nativePtr, (f == default) ? default : (void*)f.NativePtr);
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
		CQt.QPainter_SetPen(this.nativePtr, (color == default) ? default : (void*)color.NativePtr);
	}
	
	public void SetPenWithPen(IQPen pen)
	{
		CQt.QPainter_SetPenWithPen(this.nativePtr, (pen == default) ? default : (void*)pen.NativePtr);
	}
	
	public void SetPenWithStyle(int64 style)
	{
		CQt.QPainter_SetPenWithStyle(this.nativePtr, style);
	}
	
	public void* Pen()
	{
		return CQt.QPainter_Pen(this.nativePtr);
	}
	
	public void SetBrush(IQBrush brush)
	{
		CQt.QPainter_SetBrush(this.nativePtr, (brush == default) ? default : (void*)brush.NativePtr);
	}
	
	public void SetBrushWithStyle(int64 style)
	{
		CQt.QPainter_SetBrushWithStyle(this.nativePtr, style);
	}
	
	public void* Brush()
	{
		return CQt.QPainter_Brush(this.nativePtr);
	}
	
	public void SetBackgroundMode(int64 mode)
	{
		CQt.QPainter_SetBackgroundMode(this.nativePtr, mode);
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
		CQt.QPainter_SetBrushOriginWithBrushOrigin(this.nativePtr, (brushOrigin == default) ? default : (void*)brushOrigin.NativePtr);
	}
	
	public void SetBrushOrigin2(IQPointF brushOrigin)
	{
		CQt.QPainter_SetBrushOrigin2(this.nativePtr, (brushOrigin == default) ? default : (void*)brushOrigin.NativePtr);
	}
	
	public void SetBackground(IQBrush bg)
	{
		CQt.QPainter_SetBackground(this.nativePtr, (bg == default) ? default : (void*)bg.NativePtr);
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
		CQt.QPainter_SetClipRect(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void SetClipRectWithQRect(IQRect param1)
	{
		CQt.QPainter_SetClipRectWithQRect(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void SetClipRect2(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QPainter_SetClipRect2(this.nativePtr, x, y, w, h);
	}
	
	public void SetClipRegion(IQRegion param1)
	{
		CQt.QPainter_SetClipRegion(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void SetClipPath(IQPainterPath path)
	{
		CQt.QPainter_SetClipPath(this.nativePtr, (path == default) ? default : (void*)path.NativePtr);
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
		CQt.QPainter_SetTransform(this.nativePtr, (transform == default) ? default : (void*)transform.NativePtr);
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
		CQt.QPainter_SetWorldTransform(this.nativePtr, (matrix == default) ? default : (void*)matrix.NativePtr);
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
		CQt.QPainter_Translate(this.nativePtr, (offset == default) ? default : (void*)offset.NativePtr);
	}
	
	public void TranslateWithOffset(IQPoint offset)
	{
		CQt.QPainter_TranslateWithOffset(this.nativePtr, (offset == default) ? default : (void*)offset.NativePtr);
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
		CQt.QPainter_SetWindow(this.nativePtr, (window == default) ? default : (void*)window.NativePtr);
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
		CQt.QPainter_SetViewport(this.nativePtr, (viewport == default) ? default : (void*)viewport.NativePtr);
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
		CQt.QPainter_StrokePath(this.nativePtr, (path == default) ? default : (void*)path.NativePtr, (pen == default) ? default : (void*)pen.NativePtr);
	}
	
	public void FillPath(IQPainterPath path, IQBrush brush)
	{
		CQt.QPainter_FillPath(this.nativePtr, (path == default) ? default : (void*)path.NativePtr, (brush == default) ? default : (void*)brush.NativePtr);
	}
	
	public void DrawPath(IQPainterPath path)
	{
		CQt.QPainter_DrawPath(this.nativePtr, (path == default) ? default : (void*)path.NativePtr);
	}
	
	public void DrawPoint(IQPointF pt)
	{
		CQt.QPainter_DrawPoint(this.nativePtr, (pt == default) ? default : (void*)pt.NativePtr);
	}
	
	public void DrawPointWithQPoint(IQPoint p)
	{
		CQt.QPainter_DrawPointWithQPoint(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
	}
	
	public void DrawPoint2(int32 x, int32 y)
	{
		CQt.QPainter_DrawPoint2(this.nativePtr, x, y);
	}
	
	public void DrawPoints(IQPointF points, int32 pointCount)
	{
		CQt.QPainter_DrawPoints(this.nativePtr, (points == null) ? null : (void*)points.NativePtr, pointCount);
	}
	
	public void DrawPoints2(IQPoint points, int32 pointCount)
	{
		CQt.QPainter_DrawPoints2(this.nativePtr, (points == null) ? null : (void*)points.NativePtr, pointCount);
	}
	
	public void DrawLine(IQLineF line)
	{
		CQt.QPainter_DrawLine(this.nativePtr, (line == default) ? default : (void*)line.NativePtr);
	}
	
	public void DrawLineWithLine(IQLine line)
	{
		CQt.QPainter_DrawLineWithLine(this.nativePtr, (line == default) ? default : (void*)line.NativePtr);
	}
	
	public void DrawLine2(int32 x1, int32 y1, int32 x2, int32 y2)
	{
		CQt.QPainter_DrawLine2(this.nativePtr, x1, y1, x2, y2);
	}
	
	public void DrawLine3(IQPoint p1, IQPoint p2)
	{
		CQt.QPainter_DrawLine3(this.nativePtr, (p1 == default) ? default : (void*)p1.NativePtr, (p2 == default) ? default : (void*)p2.NativePtr);
	}
	
	public void DrawLine4(IQPointF p1, IQPointF p2)
	{
		CQt.QPainter_DrawLine4(this.nativePtr, (p1 == default) ? default : (void*)p1.NativePtr, (p2 == default) ? default : (void*)p2.NativePtr);
	}
	
	public void DrawLines(IQLineF lines, int32 lineCount)
	{
		CQt.QPainter_DrawLines(this.nativePtr, (lines == null) ? null : (void*)lines.NativePtr, lineCount);
	}
	
	public void DrawLinesWithLines(IQLineF[] lines)
	{
		CQt.QPainter_DrawLinesWithLines(this.nativePtr, null);
	}
	
	public void DrawLines2(IQPointF pointPairs, int32 lineCount)
	{
		CQt.QPainter_DrawLines2(this.nativePtr, (pointPairs == null) ? null : (void*)pointPairs.NativePtr, lineCount);
	}
	
	public void DrawLinesWithPointPairs(IQPointF[] pointPairs)
	{
		CQt.QPainter_DrawLinesWithPointPairs(this.nativePtr, null);
	}
	
	public void DrawLines3(IQLine lines, int32 lineCount)
	{
		CQt.QPainter_DrawLines3(this.nativePtr, (lines == null) ? null : (void*)lines.NativePtr, lineCount);
	}
	
	public void DrawLines4(IQLine[] lines)
	{
		CQt.QPainter_DrawLines4(this.nativePtr, null);
	}
	
	public void DrawLines5(IQPoint pointPairs, int32 lineCount)
	{
		CQt.QPainter_DrawLines5(this.nativePtr, (pointPairs == null) ? null : (void*)pointPairs.NativePtr, lineCount);
	}
	
	public void DrawLines6(IQPoint[] pointPairs)
	{
		CQt.QPainter_DrawLines6(this.nativePtr, null);
	}
	
	public void DrawRect(IQRectF rect)
	{
		CQt.QPainter_DrawRect(this.nativePtr, (rect == default) ? default : (void*)rect.NativePtr);
	}
	
	public void DrawRect2(int32 x1, int32 y1, int32 w, int32 h)
	{
		CQt.QPainter_DrawRect2(this.nativePtr, x1, y1, w, h);
	}
	
	public void DrawRectWithRect(IQRect rect)
	{
		CQt.QPainter_DrawRectWithRect(this.nativePtr, (rect == default) ? default : (void*)rect.NativePtr);
	}
	
	public void DrawRects(IQRectF rects, int32 rectCount)
	{
		CQt.QPainter_DrawRects(this.nativePtr, (rects == null) ? null : (void*)rects.NativePtr, rectCount);
	}
	
	public void DrawRectsWithRectangles(IQRectF[] rectangles)
	{
		CQt.QPainter_DrawRectsWithRectangles(this.nativePtr, null);
	}
	
	public void DrawRects2(IQRect rects, int32 rectCount)
	{
		CQt.QPainter_DrawRects2(this.nativePtr, (rects == null) ? null : (void*)rects.NativePtr, rectCount);
	}
	
	public void DrawRects3(IQRect[] rectangles)
	{
		CQt.QPainter_DrawRects3(this.nativePtr, null);
	}
	
	public void DrawEllipse(IQRectF r)
	{
		CQt.QPainter_DrawEllipse(this.nativePtr, (r == default) ? default : (void*)r.NativePtr);
	}
	
	public void DrawEllipseWithQRect(IQRect r)
	{
		CQt.QPainter_DrawEllipseWithQRect(this.nativePtr, (r == default) ? default : (void*)r.NativePtr);
	}
	
	public void DrawEllipse2(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QPainter_DrawEllipse2(this.nativePtr, x, y, w, h);
	}
	
	public void DrawEllipse3(IQPointF center, double rx, double ry)
	{
		CQt.QPainter_DrawEllipse3(this.nativePtr, (center == default) ? default : (void*)center.NativePtr, rx, ry);
	}
	
	public void DrawEllipse4(IQPoint center, int32 rx, int32 ry)
	{
		CQt.QPainter_DrawEllipse4(this.nativePtr, (center == default) ? default : (void*)center.NativePtr, rx, ry);
	}
	
	public void DrawPolyline(IQPointF points, int32 pointCount)
	{
		CQt.QPainter_DrawPolyline(this.nativePtr, (points == null) ? null : (void*)points.NativePtr, pointCount);
	}
	
	public void DrawPolyline2(IQPoint points, int32 pointCount)
	{
		CQt.QPainter_DrawPolyline2(this.nativePtr, (points == null) ? null : (void*)points.NativePtr, pointCount);
	}
	
	public void DrawPolygon(IQPointF points, int32 pointCount)
	{
		CQt.QPainter_DrawPolygon(this.nativePtr, (points == null) ? null : (void*)points.NativePtr, pointCount);
	}
	
	public void DrawPolygon2(IQPoint points, int32 pointCount)
	{
		CQt.QPainter_DrawPolygon2(this.nativePtr, (points == null) ? null : (void*)points.NativePtr, pointCount);
	}
	
	public void DrawConvexPolygon(IQPointF points, int32 pointCount)
	{
		CQt.QPainter_DrawConvexPolygon(this.nativePtr, (points == null) ? null : (void*)points.NativePtr, pointCount);
	}
	
	public void DrawConvexPolygon2(IQPoint points, int32 pointCount)
	{
		CQt.QPainter_DrawConvexPolygon2(this.nativePtr, (points == null) ? null : (void*)points.NativePtr, pointCount);
	}
	
	public void DrawArc(IQRectF rect, int32 a, int32 alen)
	{
		CQt.QPainter_DrawArc(this.nativePtr, (rect == default) ? default : (void*)rect.NativePtr, a, alen);
	}
	
	public void DrawArc2(IQRect param1, int32 a, int32 alen)
	{
		CQt.QPainter_DrawArc2(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr, a, alen);
	}
	
	public void DrawArc3(int32 x, int32 y, int32 w, int32 h, int32 a, int32 alen)
	{
		CQt.QPainter_DrawArc3(this.nativePtr, x, y, w, h, a, alen);
	}
	
	public void DrawPie(IQRectF rect, int32 a, int32 alen)
	{
		CQt.QPainter_DrawPie(this.nativePtr, (rect == default) ? default : (void*)rect.NativePtr, a, alen);
	}
	
	public void DrawPie2(int32 x, int32 y, int32 w, int32 h, int32 a, int32 alen)
	{
		CQt.QPainter_DrawPie2(this.nativePtr, x, y, w, h, a, alen);
	}
	
	public void DrawPie3(IQRect param1, int32 a, int32 alen)
	{
		CQt.QPainter_DrawPie3(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr, a, alen);
	}
	
	public void DrawChord(IQRectF rect, int32 a, int32 alen)
	{
		CQt.QPainter_DrawChord(this.nativePtr, (rect == default) ? default : (void*)rect.NativePtr, a, alen);
	}
	
	public void DrawChord2(int32 x, int32 y, int32 w, int32 h, int32 a, int32 alen)
	{
		CQt.QPainter_DrawChord2(this.nativePtr, x, y, w, h, a, alen);
	}
	
	public void DrawChord3(IQRect param1, int32 a, int32 alen)
	{
		CQt.QPainter_DrawChord3(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr, a, alen);
	}
	
	public void DrawRoundedRect(IQRectF rect, double xRadius, double yRadius)
	{
		CQt.QPainter_DrawRoundedRect(this.nativePtr, (rect == default) ? default : (void*)rect.NativePtr, xRadius, yRadius);
	}
	
	public void DrawRoundedRect2(int32 x, int32 y, int32 w, int32 h, double xRadius, double yRadius)
	{
		CQt.QPainter_DrawRoundedRect2(this.nativePtr, x, y, w, h, xRadius, yRadius);
	}
	
	public void DrawRoundedRect3(IQRect rect, double xRadius, double yRadius)
	{
		CQt.QPainter_DrawRoundedRect3(this.nativePtr, (rect == default) ? default : (void*)rect.NativePtr, xRadius, yRadius);
	}
	
	public void DrawTiledPixmap(IQRectF rect, IQPixmap pm)
	{
		CQt.QPainter_DrawTiledPixmap(this.nativePtr, (rect == default) ? default : (void*)rect.NativePtr, (pm == default) ? default : (void*)pm.NativePtr);
	}
	
	public void DrawTiledPixmap2(int32 x, int32 y, int32 w, int32 h, IQPixmap param5)
	{
		CQt.QPainter_DrawTiledPixmap2(this.nativePtr, x, y, w, h, (param5 == default) ? default : (void*)param5.NativePtr);
	}
	
	public void DrawTiledPixmap3(IQRect param1, IQPixmap param2)
	{
		CQt.QPainter_DrawTiledPixmap3(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr, (param2 == default) ? default : (void*)param2.NativePtr);
	}
	
	public void DrawPicture(IQPointF p, IQPicture picture)
	{
		CQt.QPainter_DrawPicture(this.nativePtr, (p == default) ? default : (void*)p.NativePtr, (picture == default) ? default : (void*)picture.NativePtr);
	}
	
	public void DrawPicture2(int32 x, int32 y, IQPicture picture)
	{
		CQt.QPainter_DrawPicture2(this.nativePtr, x, y, (picture == default) ? default : (void*)picture.NativePtr);
	}
	
	public void DrawPicture3(IQPoint p, IQPicture picture)
	{
		CQt.QPainter_DrawPicture3(this.nativePtr, (p == default) ? default : (void*)p.NativePtr, (picture == default) ? default : (void*)picture.NativePtr);
	}
	
	public void DrawPixmap(IQRectF targetRect, IQPixmap pixmap, IQRectF sourceRect)
	{
		CQt.QPainter_DrawPixmap(this.nativePtr, (targetRect == default) ? default : (void*)targetRect.NativePtr, (pixmap == default) ? default : (void*)pixmap.NativePtr, (sourceRect == default) ? default : (void*)sourceRect.NativePtr);
	}
	
	public void DrawPixmap2(IQRect targetRect, IQPixmap pixmap, IQRect sourceRect)
	{
		CQt.QPainter_DrawPixmap2(this.nativePtr, (targetRect == default) ? default : (void*)targetRect.NativePtr, (pixmap == default) ? default : (void*)pixmap.NativePtr, (sourceRect == default) ? default : (void*)sourceRect.NativePtr);
	}
	
	public void DrawPixmap3(int32 x, int32 y, int32 w, int32 h, IQPixmap pm, int32 sx, int32 sy, int32 sw, int32 sh)
	{
		CQt.QPainter_DrawPixmap3(this.nativePtr, x, y, w, h, (pm == default) ? default : (void*)pm.NativePtr, sx, sy, sw, sh);
	}
	
	public void DrawPixmap4(int32 x, int32 y, IQPixmap pm, int32 sx, int32 sy, int32 sw, int32 sh)
	{
		CQt.QPainter_DrawPixmap4(this.nativePtr, x, y, (pm == default) ? default : (void*)pm.NativePtr, sx, sy, sw, sh);
	}
	
	public void DrawPixmap5(IQPointF p, IQPixmap pm, IQRectF sr)
	{
		CQt.QPainter_DrawPixmap5(this.nativePtr, (p == default) ? default : (void*)p.NativePtr, (pm == default) ? default : (void*)pm.NativePtr, (sr == default) ? default : (void*)sr.NativePtr);
	}
	
	public void DrawPixmap6(IQPoint p, IQPixmap pm, IQRect sr)
	{
		CQt.QPainter_DrawPixmap6(this.nativePtr, (p == default) ? default : (void*)p.NativePtr, (pm == default) ? default : (void*)pm.NativePtr, (sr == default) ? default : (void*)sr.NativePtr);
	}
	
	public void DrawPixmap7(IQPointF p, IQPixmap pm)
	{
		CQt.QPainter_DrawPixmap7(this.nativePtr, (p == default) ? default : (void*)p.NativePtr, (pm == default) ? default : (void*)pm.NativePtr);
	}
	
	public void DrawPixmap8(IQPoint p, IQPixmap pm)
	{
		CQt.QPainter_DrawPixmap8(this.nativePtr, (p == default) ? default : (void*)p.NativePtr, (pm == default) ? default : (void*)pm.NativePtr);
	}
	
	public void DrawPixmap9(int32 x, int32 y, IQPixmap pm)
	{
		CQt.QPainter_DrawPixmap9(this.nativePtr, x, y, (pm == default) ? default : (void*)pm.NativePtr);
	}
	
	public void DrawPixmap10(IQRect r, IQPixmap pm)
	{
		CQt.QPainter_DrawPixmap10(this.nativePtr, (r == default) ? default : (void*)r.NativePtr, (pm == default) ? default : (void*)pm.NativePtr);
	}
	
	public void DrawPixmap11(int32 x, int32 y, int32 w, int32 h, IQPixmap pm)
	{
		CQt.QPainter_DrawPixmap11(this.nativePtr, x, y, w, h, (pm == default) ? default : (void*)pm.NativePtr);
	}
	
	public void DrawPixmapFragments(QPainter__PixmapFragment fragments, int32 fragmentCount, IQPixmap pixmap)
	{
		CQt.QPainter_DrawPixmapFragments(this.nativePtr, (fragments == null) ? null : (void*)fragments.NativePtr, fragmentCount, (pixmap == default) ? default : (void*)pixmap.NativePtr);
	}
	
	public void DrawImage(IQRectF targetRect, IQImage image, IQRectF sourceRect)
	{
		CQt.QPainter_DrawImage(this.nativePtr, (targetRect == default) ? default : (void*)targetRect.NativePtr, (image == default) ? default : (void*)image.NativePtr, (sourceRect == default) ? default : (void*)sourceRect.NativePtr);
	}
	
	public void DrawImage2(IQRect targetRect, IQImage image, IQRect sourceRect)
	{
		CQt.QPainter_DrawImage2(this.nativePtr, (targetRect == default) ? default : (void*)targetRect.NativePtr, (image == default) ? default : (void*)image.NativePtr, (sourceRect == default) ? default : (void*)sourceRect.NativePtr);
	}
	
	public void DrawImage3(IQPointF p, IQImage image, IQRectF sr)
	{
		CQt.QPainter_DrawImage3(this.nativePtr, (p == default) ? default : (void*)p.NativePtr, (image == default) ? default : (void*)image.NativePtr, (sr == default) ? default : (void*)sr.NativePtr);
	}
	
	public void DrawImage4(IQPoint p, IQImage image, IQRect sr)
	{
		CQt.QPainter_DrawImage4(this.nativePtr, (p == default) ? default : (void*)p.NativePtr, (image == default) ? default : (void*)image.NativePtr, (sr == default) ? default : (void*)sr.NativePtr);
	}
	
	public void DrawImage5(IQRectF r, IQImage image)
	{
		CQt.QPainter_DrawImage5(this.nativePtr, (r == default) ? default : (void*)r.NativePtr, (image == default) ? default : (void*)image.NativePtr);
	}
	
	public void DrawImage6(IQRect r, IQImage image)
	{
		CQt.QPainter_DrawImage6(this.nativePtr, (r == default) ? default : (void*)r.NativePtr, (image == default) ? default : (void*)image.NativePtr);
	}
	
	public void DrawImage7(IQPointF p, IQImage image)
	{
		CQt.QPainter_DrawImage7(this.nativePtr, (p == default) ? default : (void*)p.NativePtr, (image == default) ? default : (void*)image.NativePtr);
	}
	
	public void DrawImage8(IQPoint p, IQImage image)
	{
		CQt.QPainter_DrawImage8(this.nativePtr, (p == default) ? default : (void*)p.NativePtr, (image == default) ? default : (void*)image.NativePtr);
	}
	
	public void DrawImage9(int32 x, int32 y, IQImage image)
	{
		CQt.QPainter_DrawImage9(this.nativePtr, x, y, (image == default) ? default : (void*)image.NativePtr);
	}
	
	public void SetLayoutDirection(int64 direction)
	{
		CQt.QPainter_SetLayoutDirection(this.nativePtr, direction);
	}
	
	public int64 LayoutDirection()
	{
		return CQt.QPainter_LayoutDirection(this.nativePtr);
	}
	
	public void DrawGlyphRun(IQPointF position, IQGlyphRun glyphRun)
	{
		CQt.QPainter_DrawGlyphRun(this.nativePtr, (position == default) ? default : (void*)position.NativePtr, (glyphRun == default) ? default : (void*)glyphRun.NativePtr);
	}
	
	public void DrawStaticText(IQPointF topLeftPosition, IQStaticText staticText)
	{
		CQt.QPainter_DrawStaticText(this.nativePtr, (topLeftPosition == default) ? default : (void*)topLeftPosition.NativePtr, (staticText == default) ? default : (void*)staticText.NativePtr);
	}
	
	public void DrawStaticText2(IQPoint topLeftPosition, IQStaticText staticText)
	{
		CQt.QPainter_DrawStaticText2(this.nativePtr, (topLeftPosition == default) ? default : (void*)topLeftPosition.NativePtr, (staticText == default) ? default : (void*)staticText.NativePtr);
	}
	
	public void DrawStaticText3(int32 left, int32 top, IQStaticText staticText)
	{
		CQt.QPainter_DrawStaticText3(this.nativePtr, left, top, (staticText == default) ? default : (void*)staticText.NativePtr);
	}
	
	public void DrawText(IQPointF p, String s)
	{
		CQt.QPainter_DrawText(this.nativePtr, (p == default) ? default : (void*)p.NativePtr, libqt_string(s));
	}
	
	public void DrawText2(IQPoint p, String s)
	{
		CQt.QPainter_DrawText2(this.nativePtr, (p == default) ? default : (void*)p.NativePtr, libqt_string(s));
	}
	
	public void DrawText3(int32 x, int32 y, String s)
	{
		CQt.QPainter_DrawText3(this.nativePtr, x, y, libqt_string(s));
	}
	
	public void DrawText4(IQPointF p, String str, int32 tf, int32 justificationPadding)
	{
		CQt.QPainter_DrawText4(this.nativePtr, (p == default) ? default : (void*)p.NativePtr, libqt_string(str), tf, justificationPadding);
	}
	
	public void DrawText5(IQRectF r, int32 flags, String text)
	{
		CQt.QPainter_DrawText5(this.nativePtr, (r == default) ? default : (void*)r.NativePtr, flags, libqt_string(text));
	}
	
	public void DrawText6(IQRect r, int32 flags, String text)
	{
		CQt.QPainter_DrawText6(this.nativePtr, (r == default) ? default : (void*)r.NativePtr, flags, libqt_string(text));
	}
	
	public void DrawText7(int32 x, int32 y, int32 w, int32 h, int32 flags, String text)
	{
		CQt.QPainter_DrawText7(this.nativePtr, x, y, w, h, flags, libqt_string(text));
	}
	
	public void DrawText8(IQRectF r, String text)
	{
		CQt.QPainter_DrawText8(this.nativePtr, (r == default) ? default : (void*)r.NativePtr, libqt_string(text));
	}
	
	public void BoundingRect(IQRectF rect, int32 flags, String text)
	{
		CQt.QPainter_BoundingRect(this.nativePtr, (rect == default) ? default : (void*)rect.NativePtr, flags, libqt_string(text));
	}
	
	public void BoundingRect2(IQRect rect, int32 flags, String text)
	{
		CQt.QPainter_BoundingRect2(this.nativePtr, (rect == default) ? default : (void*)rect.NativePtr, flags, libqt_string(text));
	}
	
	public void BoundingRect3(int32 x, int32 y, int32 w, int32 h, int32 flags, String text)
	{
		CQt.QPainter_BoundingRect3(this.nativePtr, x, y, w, h, flags, libqt_string(text));
	}
	
	public void BoundingRect4(IQRectF rect, String text)
	{
		CQt.QPainter_BoundingRect4(this.nativePtr, (rect == default) ? default : (void*)rect.NativePtr, libqt_string(text));
	}
	
	public void DrawTextItem(IQPointF p, IQTextItem ti)
	{
		CQt.QPainter_DrawTextItem(this.nativePtr, (p == default) ? default : (void*)p.NativePtr, (ti == default) ? default : (void*)ti.NativePtr);
	}
	
	public void DrawTextItem2(int32 x, int32 y, IQTextItem ti)
	{
		CQt.QPainter_DrawTextItem2(this.nativePtr, x, y, (ti == default) ? default : (void*)ti.NativePtr);
	}
	
	public void DrawTextItem3(IQPoint p, IQTextItem ti)
	{
		CQt.QPainter_DrawTextItem3(this.nativePtr, (p == default) ? default : (void*)p.NativePtr, (ti == default) ? default : (void*)ti.NativePtr);
	}
	
	public void FillRect(IQRectF param1, IQBrush param2)
	{
		CQt.QPainter_FillRect(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr, (param2 == default) ? default : (void*)param2.NativePtr);
	}
	
	public void FillRect2(int32 x, int32 y, int32 w, int32 h, IQBrush param5)
	{
		CQt.QPainter_FillRect2(this.nativePtr, x, y, w, h, (param5 == default) ? default : (void*)param5.NativePtr);
	}
	
	public void FillRect3(IQRect param1, IQBrush param2)
	{
		CQt.QPainter_FillRect3(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr, (param2 == default) ? default : (void*)param2.NativePtr);
	}
	
	public void FillRect4(IQRectF param1, IQColor color)
	{
		CQt.QPainter_FillRect4(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr, (color == default) ? default : (void*)color.NativePtr);
	}
	
	public void FillRect5(int32 x, int32 y, int32 w, int32 h, IQColor color)
	{
		CQt.QPainter_FillRect5(this.nativePtr, x, y, w, h, (color == default) ? default : (void*)color.NativePtr);
	}
	
	public void FillRect6(IQRect param1, IQColor color)
	{
		CQt.QPainter_FillRect6(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr, (color == default) ? default : (void*)color.NativePtr);
	}
	
	public void FillRect7(int32 x, int32 y, int32 w, int32 h, int64 c)
	{
		CQt.QPainter_FillRect7(this.nativePtr, x, y, w, h, c);
	}
	
	public void FillRect8(IQRect r, int64 c)
	{
		CQt.QPainter_FillRect8(this.nativePtr, (r == default) ? default : (void*)r.NativePtr, c);
	}
	
	public void FillRect9(IQRectF r, int64 c)
	{
		CQt.QPainter_FillRect9(this.nativePtr, (r == default) ? default : (void*)r.NativePtr, c);
	}
	
	public void FillRect10(int32 x, int32 y, int32 w, int32 h, int64 style)
	{
		CQt.QPainter_FillRect10(this.nativePtr, x, y, w, h, style);
	}
	
	public void FillRect11(IQRect r, int64 style)
	{
		CQt.QPainter_FillRect11(this.nativePtr, (r == default) ? default : (void*)r.NativePtr, style);
	}
	
	public void FillRect12(IQRectF r, int64 style)
	{
		CQt.QPainter_FillRect12(this.nativePtr, (r == default) ? default : (void*)r.NativePtr, style);
	}
	
	public void FillRect13(int32 x, int32 y, int32 w, int32 h, int64 preset)
	{
		CQt.QPainter_FillRect13(this.nativePtr, x, y, w, h, preset);
	}
	
	public void FillRect14(IQRect r, int64 preset)
	{
		CQt.QPainter_FillRect14(this.nativePtr, (r == default) ? default : (void*)r.NativePtr, preset);
	}
	
	public void FillRect15(IQRectF r, int64 preset)
	{
		CQt.QPainter_FillRect15(this.nativePtr, (r == default) ? default : (void*)r.NativePtr, preset);
	}
	
	public void EraseRect(IQRectF param1)
	{
		CQt.QPainter_EraseRect(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void EraseRect2(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QPainter_EraseRect2(this.nativePtr, x, y, w, h);
	}
	
	public void EraseRectWithQRect(IQRect param1)
	{
		CQt.QPainter_EraseRectWithQRect(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void SetRenderHint(int64 hint)
	{
		CQt.QPainter_SetRenderHint(this.nativePtr, hint);
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
		return CQt.QPainter_TestRenderHint(this.nativePtr, hint);
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
		CQt.QPainter_SetClipRect22(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr, op);
	}
	
	public void SetClipRect23(IQRect param1, int64 op)
	{
		CQt.QPainter_SetClipRect23(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr, op);
	}
	
	public void SetClipRect5(int32 x, int32 y, int32 w, int32 h, int64 op)
	{
		CQt.QPainter_SetClipRect5(this.nativePtr, x, y, w, h, op);
	}
	
	public void SetClipRegion2(IQRegion param1, int64 op)
	{
		CQt.QPainter_SetClipRegion2(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr, op);
	}
	
	public void SetClipPath2(IQPainterPath path, int64 op)
	{
		CQt.QPainter_SetClipPath2(this.nativePtr, (path == default) ? default : (void*)path.NativePtr, op);
	}
	
	public void SetTransform2(IQTransform transform, bool combine)
	{
		CQt.QPainter_SetTransform2(this.nativePtr, (transform == default) ? default : (void*)transform.NativePtr, combine);
	}
	
	public void SetWorldTransform2(IQTransform matrix, bool combine)
	{
		CQt.QPainter_SetWorldTransform2(this.nativePtr, (matrix == default) ? default : (void*)matrix.NativePtr, combine);
	}
	
	public void DrawPolygon32(IQPointF points, int32 pointCount, int64 fillRule)
	{
		CQt.QPainter_DrawPolygon32(this.nativePtr, (points == null) ? null : (void*)points.NativePtr, pointCount, fillRule);
	}
	
	public void DrawPolygon33(IQPoint points, int32 pointCount, int64 fillRule)
	{
		CQt.QPainter_DrawPolygon33(this.nativePtr, (points == null) ? null : (void*)points.NativePtr, pointCount, fillRule);
	}
	
	public void DrawRoundedRect4(IQRectF rect, double xRadius, double yRadius, int64 mode)
	{
		CQt.QPainter_DrawRoundedRect4(this.nativePtr, (rect == default) ? default : (void*)rect.NativePtr, xRadius, yRadius, mode);
	}
	
	public void DrawRoundedRect7(int32 x, int32 y, int32 w, int32 h, double xRadius, double yRadius, int64 mode)
	{
		CQt.QPainter_DrawRoundedRect7(this.nativePtr, x, y, w, h, xRadius, yRadius, mode);
	}
	
	public void DrawRoundedRect42(IQRect rect, double xRadius, double yRadius, int64 mode)
	{
		CQt.QPainter_DrawRoundedRect42(this.nativePtr, (rect == default) ? default : (void*)rect.NativePtr, xRadius, yRadius, mode);
	}
	
	public void DrawTiledPixmap32(IQRectF rect, IQPixmap pm, IQPointF offset)
	{
		CQt.QPainter_DrawTiledPixmap32(this.nativePtr, (rect == default) ? default : (void*)rect.NativePtr, (pm == default) ? default : (void*)pm.NativePtr, (offset == default) ? default : (void*)offset.NativePtr);
	}
	
	public void DrawTiledPixmap6(int32 x, int32 y, int32 w, int32 h, IQPixmap param5, int32 sx)
	{
		CQt.QPainter_DrawTiledPixmap6(this.nativePtr, x, y, w, h, (param5 == default) ? default : (void*)param5.NativePtr, sx);
	}
	
	public void DrawTiledPixmap7(int32 x, int32 y, int32 w, int32 h, IQPixmap param5, int32 sx, int32 sy)
	{
		CQt.QPainter_DrawTiledPixmap7(this.nativePtr, x, y, w, h, (param5 == default) ? default : (void*)param5.NativePtr, sx, sy);
	}
	
	public void DrawTiledPixmap33(IQRect param1, IQPixmap param2, IQPoint param3)
	{
		CQt.QPainter_DrawTiledPixmap33(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr, (param2 == default) ? default : (void*)param2.NativePtr, (param3 == default) ? default : (void*)param3.NativePtr);
	}
	
	public void DrawPixmapFragments4(QPainter__PixmapFragment fragments, int32 fragmentCount, IQPixmap pixmap, int64 hints)
	{
		CQt.QPainter_DrawPixmapFragments4(this.nativePtr, (fragments == null) ? null : (void*)fragments.NativePtr, fragmentCount, (pixmap == default) ? default : (void*)pixmap.NativePtr, hints);
	}
	
	public void DrawImage42(IQRectF targetRect, IQImage image, IQRectF sourceRect, int64 flags)
	{
		CQt.QPainter_DrawImage42(this.nativePtr, (targetRect == default) ? default : (void*)targetRect.NativePtr, (image == default) ? default : (void*)image.NativePtr, (sourceRect == default) ? default : (void*)sourceRect.NativePtr, flags);
	}
	
	public void DrawImage43(IQRect targetRect, IQImage image, IQRect sourceRect, int64 flags)
	{
		CQt.QPainter_DrawImage43(this.nativePtr, (targetRect == default) ? default : (void*)targetRect.NativePtr, (image == default) ? default : (void*)image.NativePtr, (sourceRect == default) ? default : (void*)sourceRect.NativePtr, flags);
	}
	
	public void DrawImage44(IQPointF p, IQImage image, IQRectF sr, int64 flags)
	{
		CQt.QPainter_DrawImage44(this.nativePtr, (p == default) ? default : (void*)p.NativePtr, (image == default) ? default : (void*)image.NativePtr, (sr == default) ? default : (void*)sr.NativePtr, flags);
	}
	
	public void DrawImage45(IQPoint p, IQImage image, IQRect sr, int64 flags)
	{
		CQt.QPainter_DrawImage45(this.nativePtr, (p == default) ? default : (void*)p.NativePtr, (image == default) ? default : (void*)image.NativePtr, (sr == default) ? default : (void*)sr.NativePtr, flags);
	}
	
	public void DrawImage46(int32 x, int32 y, IQImage image, int32 sx)
	{
		CQt.QPainter_DrawImage46(this.nativePtr, x, y, (image == default) ? default : (void*)image.NativePtr, sx);
	}
	
	public void DrawImage52(int32 x, int32 y, IQImage image, int32 sx, int32 sy)
	{
		CQt.QPainter_DrawImage52(this.nativePtr, x, y, (image == default) ? default : (void*)image.NativePtr, sx, sy);
	}
	
	public void DrawImage62(int32 x, int32 y, IQImage image, int32 sx, int32 sy, int32 sw)
	{
		CQt.QPainter_DrawImage62(this.nativePtr, x, y, (image == default) ? default : (void*)image.NativePtr, sx, sy, sw);
	}
	
	public void DrawImage72(int32 x, int32 y, IQImage image, int32 sx, int32 sy, int32 sw, int32 sh)
	{
		CQt.QPainter_DrawImage72(this.nativePtr, x, y, (image == default) ? default : (void*)image.NativePtr, sx, sy, sw, sh);
	}
	
	public void DrawImage82(int32 x, int32 y, IQImage image, int32 sx, int32 sy, int32 sw, int32 sh, int64 flags)
	{
		CQt.QPainter_DrawImage82(this.nativePtr, x, y, (image == default) ? default : (void*)image.NativePtr, sx, sy, sw, sh, flags);
	}
	
	public void DrawText42(IQRectF r, int32 flags, String text, IQRectF br)
	{
		CQt.QPainter_DrawText42(this.nativePtr, (r == default) ? default : (void*)r.NativePtr, flags, libqt_string(text), (br == null) ? null : (void*)br.NativePtr);
	}
	
	public void DrawText43(IQRect r, int32 flags, String text, IQRect br)
	{
		CQt.QPainter_DrawText43(this.nativePtr, (r == default) ? default : (void*)r.NativePtr, flags, libqt_string(text), (br == null) ? null : (void*)br.NativePtr);
	}
	
	public void DrawText72(int32 x, int32 y, int32 w, int32 h, int32 flags, String text, IQRect br)
	{
		CQt.QPainter_DrawText72(this.nativePtr, x, y, w, h, flags, libqt_string(text), (br == null) ? null : (void*)br.NativePtr);
	}
	
	public void DrawText32(IQRectF r, String text, IQTextOption o)
	{
		CQt.QPainter_DrawText32(this.nativePtr, (r == default) ? default : (void*)r.NativePtr, libqt_string(text), (o == default) ? default : (void*)o.NativePtr);
	}
	
	public void BoundingRect32(IQRectF rect, String text, IQTextOption o)
	{
		CQt.QPainter_BoundingRect32(this.nativePtr, (rect == default) ? default : (void*)rect.NativePtr, libqt_string(text), (o == default) ? default : (void*)o.NativePtr);
	}
	
	public void SetRenderHint2(int64 hint, bool on)
	{
		CQt.QPainter_SetRenderHint2(this.nativePtr, hint, on);
	}
	
	public void SetRenderHints2(int64 hints, bool on)
	{
		CQt.QPainter_SetRenderHints2(this.nativePtr, hints, on);
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