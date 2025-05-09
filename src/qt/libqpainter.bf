using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QPainter__RenderHint
{
	Antialiasing = 1,
	TextAntialiasing = 2,
	SmoothPixmapTransform = 4,
	VerticalSubpixelPositioning = 8,
	LosslessImageRendering = 64,
	NonCosmeticBrushPatterns = 128,
}
[AllowDuplicates]
public enum QPainter__PixmapFragmentHint
{
	OpaqueHint = 1,
}
[AllowDuplicates]
public enum QPainter__CompositionMode
{
	CompositionMode_SourceOver = 0,
	CompositionMode_DestinationOver = 1,
	CompositionMode_Clear = 2,
	CompositionMode_Source = 3,
	CompositionMode_Destination = 4,
	CompositionMode_SourceIn = 5,
	CompositionMode_DestinationIn = 6,
	CompositionMode_SourceOut = 7,
	CompositionMode_DestinationOut = 8,
	CompositionMode_SourceAtop = 9,
	CompositionMode_DestinationAtop = 10,
	CompositionMode_Xor = 11,
	CompositionMode_Plus = 12,
	CompositionMode_Multiply = 13,
	CompositionMode_Screen = 14,
	CompositionMode_Overlay = 15,
	CompositionMode_Darken = 16,
	CompositionMode_Lighten = 17,
	CompositionMode_ColorDodge = 18,
	CompositionMode_ColorBurn = 19,
	CompositionMode_HardLight = 20,
	CompositionMode_SoftLight = 21,
	CompositionMode_Difference = 22,
	CompositionMode_Exclusion = 23,
	RasterOp_SourceOrDestination = 24,
	RasterOp_SourceAndDestination = 25,
	RasterOp_SourceXorDestination = 26,
	RasterOp_NotSourceAndNotDestination = 27,
	RasterOp_NotSourceOrNotDestination = 28,
	RasterOp_NotSourceXorDestination = 29,
	RasterOp_NotSource = 30,
	RasterOp_NotSourceAndDestination = 31,
	RasterOp_SourceAndNotDestination = 32,
	RasterOp_NotSourceOrDestination = 33,
	RasterOp_SourceOrNotDestination = 34,
	RasterOp_ClearDestination = 35,
	RasterOp_SetDestination = 36,
	RasterOp_NotDestination = 37,
}
public class QPainter
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QPainter_new();
	}
	
	public ~this()
	{
		CQt.QPainter_Delete(this.nativePtr);
	}
	
	public void* Device()
	{
		return CQt.QPainter_Device(this.nativePtr);
	}
	
	public bool Begin(void* param1)
	{
		return CQt.QPainter_Begin(this.nativePtr, param1);
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
	
	public void SetFont(void* f)
	{
		CQt.QPainter_SetFont(this.nativePtr, f);
	}
	
	public void FontMetrics()
	{
		CQt.QPainter_FontMetrics(this.nativePtr);
	}
	
	public void FontInfo()
	{
		CQt.QPainter_FontInfo(this.nativePtr);
	}
	
	public void SetPen(void* color)
	{
		CQt.QPainter_SetPen(this.nativePtr, color);
	}
	
	public void SetPenWithPen(void* pen)
	{
		CQt.QPainter_SetPenWithPen(this.nativePtr, pen);
	}
	
	public void SetPenWithStyle(int64 style)
	{
		CQt.QPainter_SetPenWithStyle(this.nativePtr, style);
	}
	
	public void* Pen()
	{
		return CQt.QPainter_Pen(this.nativePtr);
	}
	
	public void SetBrush(void* brush)
	{
		CQt.QPainter_SetBrush(this.nativePtr, brush);
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
	
	public void SetBrushOriginWithBrushOrigin(void* brushOrigin)
	{
		CQt.QPainter_SetBrushOriginWithBrushOrigin(this.nativePtr, brushOrigin);
	}
	
	public void SetBrushOrigin2(void* brushOrigin)
	{
		CQt.QPainter_SetBrushOrigin2(this.nativePtr, brushOrigin);
	}
	
	public void SetBackground(void* bg)
	{
		CQt.QPainter_SetBackground(this.nativePtr, bg);
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
	
	public void SetClipRect(void* param1)
	{
		CQt.QPainter_SetClipRect(this.nativePtr, param1);
	}
	
	public void SetClipRectWithQRect(void* param1)
	{
		CQt.QPainter_SetClipRectWithQRect(this.nativePtr, param1);
	}
	
	public void SetClipRect2(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QPainter_SetClipRect2(this.nativePtr, x, y, w, h);
	}
	
	public void SetClipRegion(void* param1)
	{
		CQt.QPainter_SetClipRegion(this.nativePtr, param1);
	}
	
	public void SetClipPath(void* path)
	{
		CQt.QPainter_SetClipPath(this.nativePtr, path);
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
	
	public void SetTransform(void* transform)
	{
		CQt.QPainter_SetTransform(this.nativePtr, transform);
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
	
	public void SetWorldTransform(void* matrix)
	{
		CQt.QPainter_SetWorldTransform(this.nativePtr, matrix);
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
	
	public void Translate(void* offset)
	{
		CQt.QPainter_Translate(this.nativePtr, offset);
	}
	
	public void TranslateWithOffset(void* offset)
	{
		CQt.QPainter_TranslateWithOffset(this.nativePtr, offset);
	}
	
	public void Translate2(double dx, double dy)
	{
		CQt.QPainter_Translate2(this.nativePtr, dx, dy);
	}
	
	public void Window()
	{
		CQt.QPainter_Window(this.nativePtr);
	}
	
	public void SetWindow(void* window)
	{
		CQt.QPainter_SetWindow(this.nativePtr, window);
	}
	
	public void SetWindow2(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QPainter_SetWindow2(this.nativePtr, x, y, w, h);
	}
	
	public void Viewport()
	{
		CQt.QPainter_Viewport(this.nativePtr);
	}
	
	public void SetViewport(void* viewport)
	{
		CQt.QPainter_SetViewport(this.nativePtr, viewport);
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
	
	public void StrokePath(void* path, void* pen)
	{
		CQt.QPainter_StrokePath(this.nativePtr, path, pen);
	}
	
	public void FillPath(void* path, void* brush)
	{
		CQt.QPainter_FillPath(this.nativePtr, path, brush);
	}
	
	public void DrawPath(void* path)
	{
		CQt.QPainter_DrawPath(this.nativePtr, path);
	}
	
	public void DrawPoint(void* pt)
	{
		CQt.QPainter_DrawPoint(this.nativePtr, pt);
	}
	
	public void DrawPointWithQPoint(void* p)
	{
		CQt.QPainter_DrawPointWithQPoint(this.nativePtr, p);
	}
	
	public void DrawPoint2(int32 x, int32 y)
	{
		CQt.QPainter_DrawPoint2(this.nativePtr, x, y);
	}
	
	public void DrawPoints(void* points, int32 pointCount)
	{
		CQt.QPainter_DrawPoints(this.nativePtr, points, pointCount);
	}
	
	public void DrawPoints2(void* points, int32 pointCount)
	{
		CQt.QPainter_DrawPoints2(this.nativePtr, points, pointCount);
	}
	
	public void DrawLine(void* line)
	{
		CQt.QPainter_DrawLine(this.nativePtr, line);
	}
	
	public void DrawLineWithLine(void* line)
	{
		CQt.QPainter_DrawLineWithLine(this.nativePtr, line);
	}
	
	public void DrawLine2(int32 x1, int32 y1, int32 x2, int32 y2)
	{
		CQt.QPainter_DrawLine2(this.nativePtr, x1, y1, x2, y2);
	}
	
	public void DrawLine3(void* p1, void* p2)
	{
		CQt.QPainter_DrawLine3(this.nativePtr, p1, p2);
	}
	
	public void DrawLine4(void* p1, void* p2)
	{
		CQt.QPainter_DrawLine4(this.nativePtr, p1, p2);
	}
	
	public void DrawLines(void* lines, int32 lineCount)
	{
		CQt.QPainter_DrawLines(this.nativePtr, lines, lineCount);
	}
	
	public void DrawLinesWithLines(void[] lines)
	{
		CQt.QPainter_DrawLinesWithLines(this.nativePtr, lines);
	}
	
	public void DrawLines2(void* pointPairs, int32 lineCount)
	{
		CQt.QPainter_DrawLines2(this.nativePtr, pointPairs, lineCount);
	}
	
	public void DrawLinesWithPointPairs(void[] pointPairs)
	{
		CQt.QPainter_DrawLinesWithPointPairs(this.nativePtr, pointPairs);
	}
	
	public void DrawLines3(void* lines, int32 lineCount)
	{
		CQt.QPainter_DrawLines3(this.nativePtr, lines, lineCount);
	}
	
	public void DrawLines4(void[] lines)
	{
		CQt.QPainter_DrawLines4(this.nativePtr, lines);
	}
	
	public void DrawLines5(void* pointPairs, int32 lineCount)
	{
		CQt.QPainter_DrawLines5(this.nativePtr, pointPairs, lineCount);
	}
	
	public void DrawLines6(void[] pointPairs)
	{
		CQt.QPainter_DrawLines6(this.nativePtr, pointPairs);
	}
	
	public void DrawRect(void* rect)
	{
		CQt.QPainter_DrawRect(this.nativePtr, rect);
	}
	
	public void DrawRect2(int32 x1, int32 y1, int32 w, int32 h)
	{
		CQt.QPainter_DrawRect2(this.nativePtr, x1, y1, w, h);
	}
	
	public void DrawRectWithRect(void* rect)
	{
		CQt.QPainter_DrawRectWithRect(this.nativePtr, rect);
	}
	
	public void DrawRects(void* rects, int32 rectCount)
	{
		CQt.QPainter_DrawRects(this.nativePtr, rects, rectCount);
	}
	
	public void DrawRectsWithRectangles(void[] rectangles)
	{
		CQt.QPainter_DrawRectsWithRectangles(this.nativePtr, rectangles);
	}
	
	public void DrawRects2(void* rects, int32 rectCount)
	{
		CQt.QPainter_DrawRects2(this.nativePtr, rects, rectCount);
	}
	
	public void DrawRects3(void[] rectangles)
	{
		CQt.QPainter_DrawRects3(this.nativePtr, rectangles);
	}
	
	public void DrawEllipse(void* r)
	{
		CQt.QPainter_DrawEllipse(this.nativePtr, r);
	}
	
	public void DrawEllipseWithQRect(void* r)
	{
		CQt.QPainter_DrawEllipseWithQRect(this.nativePtr, r);
	}
	
	public void DrawEllipse2(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QPainter_DrawEllipse2(this.nativePtr, x, y, w, h);
	}
	
	public void DrawEllipse3(void* center, double rx, double ry)
	{
		CQt.QPainter_DrawEllipse3(this.nativePtr, center, rx, ry);
	}
	
	public void DrawEllipse4(void* center, int32 rx, int32 ry)
	{
		CQt.QPainter_DrawEllipse4(this.nativePtr, center, rx, ry);
	}
	
	public void DrawPolyline(void* points, int32 pointCount)
	{
		CQt.QPainter_DrawPolyline(this.nativePtr, points, pointCount);
	}
	
	public void DrawPolyline2(void* points, int32 pointCount)
	{
		CQt.QPainter_DrawPolyline2(this.nativePtr, points, pointCount);
	}
	
	public void DrawPolygon(void* points, int32 pointCount)
	{
		CQt.QPainter_DrawPolygon(this.nativePtr, points, pointCount);
	}
	
	public void DrawPolygon2(void* points, int32 pointCount)
	{
		CQt.QPainter_DrawPolygon2(this.nativePtr, points, pointCount);
	}
	
	public void DrawConvexPolygon(void* points, int32 pointCount)
	{
		CQt.QPainter_DrawConvexPolygon(this.nativePtr, points, pointCount);
	}
	
	public void DrawConvexPolygon2(void* points, int32 pointCount)
	{
		CQt.QPainter_DrawConvexPolygon2(this.nativePtr, points, pointCount);
	}
	
	public void DrawArc(void* rect, int32 a, int32 alen)
	{
		CQt.QPainter_DrawArc(this.nativePtr, rect, a, alen);
	}
	
	public void DrawArc2(void* param1, int32 a, int32 alen)
	{
		CQt.QPainter_DrawArc2(this.nativePtr, param1, a, alen);
	}
	
	public void DrawArc3(int32 x, int32 y, int32 w, int32 h, int32 a, int32 alen)
	{
		CQt.QPainter_DrawArc3(this.nativePtr, x, y, w, h, a, alen);
	}
	
	public void DrawPie(void* rect, int32 a, int32 alen)
	{
		CQt.QPainter_DrawPie(this.nativePtr, rect, a, alen);
	}
	
	public void DrawPie2(int32 x, int32 y, int32 w, int32 h, int32 a, int32 alen)
	{
		CQt.QPainter_DrawPie2(this.nativePtr, x, y, w, h, a, alen);
	}
	
	public void DrawPie3(void* param1, int32 a, int32 alen)
	{
		CQt.QPainter_DrawPie3(this.nativePtr, param1, a, alen);
	}
	
	public void DrawChord(void* rect, int32 a, int32 alen)
	{
		CQt.QPainter_DrawChord(this.nativePtr, rect, a, alen);
	}
	
	public void DrawChord2(int32 x, int32 y, int32 w, int32 h, int32 a, int32 alen)
	{
		CQt.QPainter_DrawChord2(this.nativePtr, x, y, w, h, a, alen);
	}
	
	public void DrawChord3(void* param1, int32 a, int32 alen)
	{
		CQt.QPainter_DrawChord3(this.nativePtr, param1, a, alen);
	}
	
	public void DrawRoundedRect(void* rect, double xRadius, double yRadius)
	{
		CQt.QPainter_DrawRoundedRect(this.nativePtr, rect, xRadius, yRadius);
	}
	
	public void DrawRoundedRect2(int32 x, int32 y, int32 w, int32 h, double xRadius, double yRadius)
	{
		CQt.QPainter_DrawRoundedRect2(this.nativePtr, x, y, w, h, xRadius, yRadius);
	}
	
	public void DrawRoundedRect3(void* rect, double xRadius, double yRadius)
	{
		CQt.QPainter_DrawRoundedRect3(this.nativePtr, rect, xRadius, yRadius);
	}
	
	public void DrawTiledPixmap(void* rect, void* pm)
	{
		CQt.QPainter_DrawTiledPixmap(this.nativePtr, rect, pm);
	}
	
	public void DrawTiledPixmap2(int32 x, int32 y, int32 w, int32 h, void* param5)
	{
		CQt.QPainter_DrawTiledPixmap2(this.nativePtr, x, y, w, h, param5);
	}
	
	public void DrawTiledPixmap3(void* param1, void* param2)
	{
		CQt.QPainter_DrawTiledPixmap3(this.nativePtr, param1, param2);
	}
	
	public void DrawPicture(void* p, void* picture)
	{
		CQt.QPainter_DrawPicture(this.nativePtr, p, picture);
	}
	
	public void DrawPicture2(int32 x, int32 y, void* picture)
	{
		CQt.QPainter_DrawPicture2(this.nativePtr, x, y, picture);
	}
	
	public void DrawPicture3(void* p, void* picture)
	{
		CQt.QPainter_DrawPicture3(this.nativePtr, p, picture);
	}
	
	public void DrawPixmap(void* targetRect, void* pixmap, void* sourceRect)
	{
		CQt.QPainter_DrawPixmap(this.nativePtr, targetRect, pixmap, sourceRect);
	}
	
	public void DrawPixmap2(void* targetRect, void* pixmap, void* sourceRect)
	{
		CQt.QPainter_DrawPixmap2(this.nativePtr, targetRect, pixmap, sourceRect);
	}
	
	public void DrawPixmap3(int32 x, int32 y, int32 w, int32 h, void* pm, int32 sx, int32 sy, int32 sw, int32 sh)
	{
		CQt.QPainter_DrawPixmap3(this.nativePtr, x, y, w, h, pm, sx, sy, sw, sh);
	}
	
	public void DrawPixmap4(int32 x, int32 y, void* pm, int32 sx, int32 sy, int32 sw, int32 sh)
	{
		CQt.QPainter_DrawPixmap4(this.nativePtr, x, y, pm, sx, sy, sw, sh);
	}
	
	public void DrawPixmap5(void* p, void* pm, void* sr)
	{
		CQt.QPainter_DrawPixmap5(this.nativePtr, p, pm, sr);
	}
	
	public void DrawPixmap6(void* p, void* pm, void* sr)
	{
		CQt.QPainter_DrawPixmap6(this.nativePtr, p, pm, sr);
	}
	
	public void DrawPixmap7(void* p, void* pm)
	{
		CQt.QPainter_DrawPixmap7(this.nativePtr, p, pm);
	}
	
	public void DrawPixmap8(void* p, void* pm)
	{
		CQt.QPainter_DrawPixmap8(this.nativePtr, p, pm);
	}
	
	public void DrawPixmap9(int32 x, int32 y, void* pm)
	{
		CQt.QPainter_DrawPixmap9(this.nativePtr, x, y, pm);
	}
	
	public void DrawPixmap10(void* r, void* pm)
	{
		CQt.QPainter_DrawPixmap10(this.nativePtr, r, pm);
	}
	
	public void DrawPixmap11(int32 x, int32 y, int32 w, int32 h, void* pm)
	{
		CQt.QPainter_DrawPixmap11(this.nativePtr, x, y, w, h, pm);
	}
	
	public void DrawPixmapFragments(QPainter__PixmapFragment* fragments, int32 fragmentCount, void* pixmap)
	{
		CQt.QPainter_DrawPixmapFragments(this.nativePtr, fragments, fragmentCount, pixmap);
	}
	
	public void DrawImage(void* targetRect, void* image, void* sourceRect)
	{
		CQt.QPainter_DrawImage(this.nativePtr, targetRect, image, sourceRect);
	}
	
	public void DrawImage2(void* targetRect, void* image, void* sourceRect)
	{
		CQt.QPainter_DrawImage2(this.nativePtr, targetRect, image, sourceRect);
	}
	
	public void DrawImage3(void* p, void* image, void* sr)
	{
		CQt.QPainter_DrawImage3(this.nativePtr, p, image, sr);
	}
	
	public void DrawImage4(void* p, void* image, void* sr)
	{
		CQt.QPainter_DrawImage4(this.nativePtr, p, image, sr);
	}
	
	public void DrawImage5(void* r, void* image)
	{
		CQt.QPainter_DrawImage5(this.nativePtr, r, image);
	}
	
	public void DrawImage6(void* r, void* image)
	{
		CQt.QPainter_DrawImage6(this.nativePtr, r, image);
	}
	
	public void DrawImage7(void* p, void* image)
	{
		CQt.QPainter_DrawImage7(this.nativePtr, p, image);
	}
	
	public void DrawImage8(void* p, void* image)
	{
		CQt.QPainter_DrawImage8(this.nativePtr, p, image);
	}
	
	public void DrawImage9(int32 x, int32 y, void* image)
	{
		CQt.QPainter_DrawImage9(this.nativePtr, x, y, image);
	}
	
	public void SetLayoutDirection(int64 direction)
	{
		CQt.QPainter_SetLayoutDirection(this.nativePtr, direction);
	}
	
	public int64 LayoutDirection()
	{
		return CQt.QPainter_LayoutDirection(this.nativePtr);
	}
	
	public void DrawGlyphRun(void* position, void* glyphRun)
	{
		CQt.QPainter_DrawGlyphRun(this.nativePtr, position, glyphRun);
	}
	
	public void DrawStaticText(void* topLeftPosition, void* staticText)
	{
		CQt.QPainter_DrawStaticText(this.nativePtr, topLeftPosition, staticText);
	}
	
	public void DrawStaticText2(void* topLeftPosition, void* staticText)
	{
		CQt.QPainter_DrawStaticText2(this.nativePtr, topLeftPosition, staticText);
	}
	
	public void DrawStaticText3(int32 left, int32 top, void* staticText)
	{
		CQt.QPainter_DrawStaticText3(this.nativePtr, left, top, staticText);
	}
	
	public void DrawText(void* p, libqt_string s)
	{
		CQt.QPainter_DrawText(this.nativePtr, p, s);
	}
	
	public void DrawText2(void* p, libqt_string s)
	{
		CQt.QPainter_DrawText2(this.nativePtr, p, s);
	}
	
	public void DrawText3(int32 x, int32 y, libqt_string s)
	{
		CQt.QPainter_DrawText3(this.nativePtr, x, y, s);
	}
	
	public void DrawText4(void* p, libqt_string str, int32 tf, int32 justificationPadding)
	{
		CQt.QPainter_DrawText4(this.nativePtr, p, str, tf, justificationPadding);
	}
	
	public void DrawText5(void* r, int32 flags, libqt_string text)
	{
		CQt.QPainter_DrawText5(this.nativePtr, r, flags, text);
	}
	
	public void DrawText6(void* r, int32 flags, libqt_string text)
	{
		CQt.QPainter_DrawText6(this.nativePtr, r, flags, text);
	}
	
	public void DrawText7(int32 x, int32 y, int32 w, int32 h, int32 flags, libqt_string text)
	{
		CQt.QPainter_DrawText7(this.nativePtr, x, y, w, h, flags, text);
	}
	
	public void DrawText8(void* r, libqt_string text)
	{
		CQt.QPainter_DrawText8(this.nativePtr, r, text);
	}
	
	public void BoundingRect(void* rect, int32 flags, libqt_string text)
	{
		CQt.QPainter_BoundingRect(this.nativePtr, rect, flags, text);
	}
	
	public void BoundingRect2(void* rect, int32 flags, libqt_string text)
	{
		CQt.QPainter_BoundingRect2(this.nativePtr, rect, flags, text);
	}
	
	public void BoundingRect3(int32 x, int32 y, int32 w, int32 h, int32 flags, libqt_string text)
	{
		CQt.QPainter_BoundingRect3(this.nativePtr, x, y, w, h, flags, text);
	}
	
	public void BoundingRect4(void* rect, libqt_string text)
	{
		CQt.QPainter_BoundingRect4(this.nativePtr, rect, text);
	}
	
	public void DrawTextItem(void* p, void* ti)
	{
		CQt.QPainter_DrawTextItem(this.nativePtr, p, ti);
	}
	
	public void DrawTextItem2(int32 x, int32 y, void* ti)
	{
		CQt.QPainter_DrawTextItem2(this.nativePtr, x, y, ti);
	}
	
	public void DrawTextItem3(void* p, void* ti)
	{
		CQt.QPainter_DrawTextItem3(this.nativePtr, p, ti);
	}
	
	public void FillRect(void* param1, void* param2)
	{
		CQt.QPainter_FillRect(this.nativePtr, param1, param2);
	}
	
	public void FillRect2(int32 x, int32 y, int32 w, int32 h, void* param5)
	{
		CQt.QPainter_FillRect2(this.nativePtr, x, y, w, h, param5);
	}
	
	public void FillRect3(void* param1, void* param2)
	{
		CQt.QPainter_FillRect3(this.nativePtr, param1, param2);
	}
	
	public void FillRect4(void* param1, void* color)
	{
		CQt.QPainter_FillRect4(this.nativePtr, param1, color);
	}
	
	public void FillRect5(int32 x, int32 y, int32 w, int32 h, void* color)
	{
		CQt.QPainter_FillRect5(this.nativePtr, x, y, w, h, color);
	}
	
	public void FillRect6(void* param1, void* color)
	{
		CQt.QPainter_FillRect6(this.nativePtr, param1, color);
	}
	
	public void FillRect7(int32 x, int32 y, int32 w, int32 h, int64 c)
	{
		CQt.QPainter_FillRect7(this.nativePtr, x, y, w, h, c);
	}
	
	public void FillRect8(void* r, int64 c)
	{
		CQt.QPainter_FillRect8(this.nativePtr, r, c);
	}
	
	public void FillRect9(void* r, int64 c)
	{
		CQt.QPainter_FillRect9(this.nativePtr, r, c);
	}
	
	public void FillRect10(int32 x, int32 y, int32 w, int32 h, int64 style)
	{
		CQt.QPainter_FillRect10(this.nativePtr, x, y, w, h, style);
	}
	
	public void FillRect11(void* r, int64 style)
	{
		CQt.QPainter_FillRect11(this.nativePtr, r, style);
	}
	
	public void FillRect12(void* r, int64 style)
	{
		CQt.QPainter_FillRect12(this.nativePtr, r, style);
	}
	
	public void FillRect13(int32 x, int32 y, int32 w, int32 h, int64 preset)
	{
		CQt.QPainter_FillRect13(this.nativePtr, x, y, w, h, preset);
	}
	
	public void FillRect14(void* r, int64 preset)
	{
		CQt.QPainter_FillRect14(this.nativePtr, r, preset);
	}
	
	public void FillRect15(void* r, int64 preset)
	{
		CQt.QPainter_FillRect15(this.nativePtr, r, preset);
	}
	
	public void EraseRect(void* param1)
	{
		CQt.QPainter_EraseRect(this.nativePtr, param1);
	}
	
	public void EraseRect2(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QPainter_EraseRect2(this.nativePtr, x, y, w, h);
	}
	
	public void EraseRectWithQRect(void* param1)
	{
		CQt.QPainter_EraseRectWithQRect(this.nativePtr, param1);
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
	
	public void SetClipRect22(void* param1, int64 op)
	{
		CQt.QPainter_SetClipRect22(this.nativePtr, param1, op);
	}
	
	public void SetClipRect23(void* param1, int64 op)
	{
		CQt.QPainter_SetClipRect23(this.nativePtr, param1, op);
	}
	
	public void SetClipRect5(int32 x, int32 y, int32 w, int32 h, int64 op)
	{
		CQt.QPainter_SetClipRect5(this.nativePtr, x, y, w, h, op);
	}
	
	public void SetClipRegion2(void* param1, int64 op)
	{
		CQt.QPainter_SetClipRegion2(this.nativePtr, param1, op);
	}
	
	public void SetClipPath2(void* path, int64 op)
	{
		CQt.QPainter_SetClipPath2(this.nativePtr, path, op);
	}
	
	public void SetTransform2(void* transform, bool combine)
	{
		CQt.QPainter_SetTransform2(this.nativePtr, transform, combine);
	}
	
	public void SetWorldTransform2(void* matrix, bool combine)
	{
		CQt.QPainter_SetWorldTransform2(this.nativePtr, matrix, combine);
	}
	
	public void DrawPolygon32(void* points, int32 pointCount, int64 fillRule)
	{
		CQt.QPainter_DrawPolygon32(this.nativePtr, points, pointCount, fillRule);
	}
	
	public void DrawPolygon33(void* points, int32 pointCount, int64 fillRule)
	{
		CQt.QPainter_DrawPolygon33(this.nativePtr, points, pointCount, fillRule);
	}
	
	public void DrawRoundedRect4(void* rect, double xRadius, double yRadius, int64 mode)
	{
		CQt.QPainter_DrawRoundedRect4(this.nativePtr, rect, xRadius, yRadius, mode);
	}
	
	public void DrawRoundedRect7(int32 x, int32 y, int32 w, int32 h, double xRadius, double yRadius, int64 mode)
	{
		CQt.QPainter_DrawRoundedRect7(this.nativePtr, x, y, w, h, xRadius, yRadius, mode);
	}
	
	public void DrawRoundedRect42(void* rect, double xRadius, double yRadius, int64 mode)
	{
		CQt.QPainter_DrawRoundedRect42(this.nativePtr, rect, xRadius, yRadius, mode);
	}
	
	public void DrawTiledPixmap32(void* rect, void* pm, void* offset)
	{
		CQt.QPainter_DrawTiledPixmap32(this.nativePtr, rect, pm, offset);
	}
	
	public void DrawTiledPixmap6(int32 x, int32 y, int32 w, int32 h, void* param5, int32 sx)
	{
		CQt.QPainter_DrawTiledPixmap6(this.nativePtr, x, y, w, h, param5, sx);
	}
	
	public void DrawTiledPixmap7(int32 x, int32 y, int32 w, int32 h, void* param5, int32 sx, int32 sy)
	{
		CQt.QPainter_DrawTiledPixmap7(this.nativePtr, x, y, w, h, param5, sx, sy);
	}
	
	public void DrawTiledPixmap33(void* param1, void* param2, void* param3)
	{
		CQt.QPainter_DrawTiledPixmap33(this.nativePtr, param1, param2, param3);
	}
	
	public void DrawPixmapFragments4(QPainter__PixmapFragment* fragments, int32 fragmentCount, void* pixmap, int64 hints)
	{
		CQt.QPainter_DrawPixmapFragments4(this.nativePtr, fragments, fragmentCount, pixmap, hints);
	}
	
	public void DrawImage42(void* targetRect, void* image, void* sourceRect, int64 flags)
	{
		CQt.QPainter_DrawImage42(this.nativePtr, targetRect, image, sourceRect, flags);
	}
	
	public void DrawImage43(void* targetRect, void* image, void* sourceRect, int64 flags)
	{
		CQt.QPainter_DrawImage43(this.nativePtr, targetRect, image, sourceRect, flags);
	}
	
	public void DrawImage44(void* p, void* image, void* sr, int64 flags)
	{
		CQt.QPainter_DrawImage44(this.nativePtr, p, image, sr, flags);
	}
	
	public void DrawImage45(void* p, void* image, void* sr, int64 flags)
	{
		CQt.QPainter_DrawImage45(this.nativePtr, p, image, sr, flags);
	}
	
	public void DrawImage46(int32 x, int32 y, void* image, int32 sx)
	{
		CQt.QPainter_DrawImage46(this.nativePtr, x, y, image, sx);
	}
	
	public void DrawImage52(int32 x, int32 y, void* image, int32 sx, int32 sy)
	{
		CQt.QPainter_DrawImage52(this.nativePtr, x, y, image, sx, sy);
	}
	
	public void DrawImage62(int32 x, int32 y, void* image, int32 sx, int32 sy, int32 sw)
	{
		CQt.QPainter_DrawImage62(this.nativePtr, x, y, image, sx, sy, sw);
	}
	
	public void DrawImage72(int32 x, int32 y, void* image, int32 sx, int32 sy, int32 sw, int32 sh)
	{
		CQt.QPainter_DrawImage72(this.nativePtr, x, y, image, sx, sy, sw, sh);
	}
	
	public void DrawImage82(int32 x, int32 y, void* image, int32 sx, int32 sy, int32 sw, int32 sh, int64 flags)
	{
		CQt.QPainter_DrawImage82(this.nativePtr, x, y, image, sx, sy, sw, sh, flags);
	}
	
	public void DrawText42(void* r, int32 flags, libqt_string text, void* br)
	{
		CQt.QPainter_DrawText42(this.nativePtr, r, flags, text, br);
	}
	
	public void DrawText43(void* r, int32 flags, libqt_string text, void* br)
	{
		CQt.QPainter_DrawText43(this.nativePtr, r, flags, text, br);
	}
	
	public void DrawText72(int32 x, int32 y, int32 w, int32 h, int32 flags, libqt_string text, void* br)
	{
		CQt.QPainter_DrawText72(this.nativePtr, x, y, w, h, flags, text, br);
	}
	
	public void DrawText32(void* r, libqt_string text, void* o)
	{
		CQt.QPainter_DrawText32(this.nativePtr, r, text, o);
	}
	
	public void BoundingRect32(void* rect, libqt_string text, void* o)
	{
		CQt.QPainter_BoundingRect32(this.nativePtr, rect, text, o);
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
	[LinkName("QPainter_new")]
	public static extern void* QPainter_new();
	[LinkName("QPainter_new2")]
	public static extern void* QPainter_new2(void* param1);
	[LinkName("QPainter_Device")]
	public static extern void* QPainter_Device(void* c_this);
	[LinkName("QPainter_Begin")]
	public static extern bool QPainter_Begin(void* c_this, void* param1);
	[LinkName("QPainter_End")]
	public static extern bool QPainter_End(void* c_this);
	[LinkName("QPainter_IsActive")]
	public static extern bool QPainter_IsActive(void* c_this);
	[LinkName("QPainter_SetCompositionMode")]
	public static extern void QPainter_SetCompositionMode(void* c_this, int64 mode);
	[LinkName("QPainter_CompositionMode")]
	public static extern int64 QPainter_CompositionMode(void* c_this);
	[LinkName("QPainter_Font")]
	public static extern void* QPainter_Font(void* c_this);
	[LinkName("QPainter_SetFont")]
	public static extern void QPainter_SetFont(void* c_this, void* f);
	[LinkName("QPainter_FontMetrics")]
	public static extern void QPainter_FontMetrics(void* c_this);
	[LinkName("QPainter_FontInfo")]
	public static extern void QPainter_FontInfo(void* c_this);
	[LinkName("QPainter_SetPen")]
	public static extern void QPainter_SetPen(void* c_this, void* color);
	[LinkName("QPainter_SetPenWithPen")]
	public static extern void QPainter_SetPenWithPen(void* c_this, void* pen);
	[LinkName("QPainter_SetPenWithStyle")]
	public static extern void QPainter_SetPenWithStyle(void* c_this, int64 style);
	[LinkName("QPainter_Pen")]
	public static extern void* QPainter_Pen(void* c_this);
	[LinkName("QPainter_SetBrush")]
	public static extern void QPainter_SetBrush(void* c_this, void* brush);
	[LinkName("QPainter_SetBrushWithStyle")]
	public static extern void QPainter_SetBrushWithStyle(void* c_this, int64 style);
	[LinkName("QPainter_Brush")]
	public static extern void* QPainter_Brush(void* c_this);
	[LinkName("QPainter_SetBackgroundMode")]
	public static extern void QPainter_SetBackgroundMode(void* c_this, int64 mode);
	[LinkName("QPainter_BackgroundMode")]
	public static extern int64 QPainter_BackgroundMode(void* c_this);
	[LinkName("QPainter_BrushOrigin")]
	public static extern void QPainter_BrushOrigin(void* c_this);
	[LinkName("QPainter_SetBrushOrigin")]
	public static extern void QPainter_SetBrushOrigin(void* c_this, int32 x, int32 y);
	[LinkName("QPainter_SetBrushOriginWithBrushOrigin")]
	public static extern void QPainter_SetBrushOriginWithBrushOrigin(void* c_this, void* brushOrigin);
	[LinkName("QPainter_SetBrushOrigin2")]
	public static extern void QPainter_SetBrushOrigin2(void* c_this, void* brushOrigin);
	[LinkName("QPainter_SetBackground")]
	public static extern void QPainter_SetBackground(void* c_this, void* bg);
	[LinkName("QPainter_Background")]
	public static extern void* QPainter_Background(void* c_this);
	[LinkName("QPainter_Opacity")]
	public static extern double QPainter_Opacity(void* c_this);
	[LinkName("QPainter_SetOpacity")]
	public static extern void QPainter_SetOpacity(void* c_this, double opacity);
	[LinkName("QPainter_ClipRegion")]
	public static extern void QPainter_ClipRegion(void* c_this);
	[LinkName("QPainter_ClipPath")]
	public static extern void QPainter_ClipPath(void* c_this);
	[LinkName("QPainter_SetClipRect")]
	public static extern void QPainter_SetClipRect(void* c_this, void* param1);
	[LinkName("QPainter_SetClipRectWithQRect")]
	public static extern void QPainter_SetClipRectWithQRect(void* c_this, void* param1);
	[LinkName("QPainter_SetClipRect2")]
	public static extern void QPainter_SetClipRect2(void* c_this, int32 x, int32 y, int32 w, int32 h);
	[LinkName("QPainter_SetClipRegion")]
	public static extern void QPainter_SetClipRegion(void* c_this, void* param1);
	[LinkName("QPainter_SetClipPath")]
	public static extern void QPainter_SetClipPath(void* c_this, void* path);
	[LinkName("QPainter_SetClipping")]
	public static extern void QPainter_SetClipping(void* c_this, bool enable);
	[LinkName("QPainter_HasClipping")]
	public static extern bool QPainter_HasClipping(void* c_this);
	[LinkName("QPainter_ClipBoundingRect")]
	public static extern void QPainter_ClipBoundingRect(void* c_this);
	[LinkName("QPainter_Save")]
	public static extern void QPainter_Save(void* c_this);
	[LinkName("QPainter_Restore")]
	public static extern void QPainter_Restore(void* c_this);
	[LinkName("QPainter_SetTransform")]
	public static extern void QPainter_SetTransform(void* c_this, void* transform);
	[LinkName("QPainter_Transform")]
	public static extern void* QPainter_Transform(void* c_this);
	[LinkName("QPainter_DeviceTransform")]
	public static extern void* QPainter_DeviceTransform(void* c_this);
	[LinkName("QPainter_ResetTransform")]
	public static extern void QPainter_ResetTransform(void* c_this);
	[LinkName("QPainter_SetWorldTransform")]
	public static extern void QPainter_SetWorldTransform(void* c_this, void* matrix);
	[LinkName("QPainter_WorldTransform")]
	public static extern void* QPainter_WorldTransform(void* c_this);
	[LinkName("QPainter_CombinedTransform")]
	public static extern void QPainter_CombinedTransform(void* c_this);
	[LinkName("QPainter_SetWorldMatrixEnabled")]
	public static extern void QPainter_SetWorldMatrixEnabled(void* c_this, bool enabled);
	[LinkName("QPainter_WorldMatrixEnabled")]
	public static extern bool QPainter_WorldMatrixEnabled(void* c_this);
	[LinkName("QPainter_Scale")]
	public static extern void QPainter_Scale(void* c_this, double sx, double sy);
	[LinkName("QPainter_Shear")]
	public static extern void QPainter_Shear(void* c_this, double sh, double sv);
	[LinkName("QPainter_Rotate")]
	public static extern void QPainter_Rotate(void* c_this, double a);
	[LinkName("QPainter_Translate")]
	public static extern void QPainter_Translate(void* c_this, void* offset);
	[LinkName("QPainter_TranslateWithOffset")]
	public static extern void QPainter_TranslateWithOffset(void* c_this, void* offset);
	[LinkName("QPainter_Translate2")]
	public static extern void QPainter_Translate2(void* c_this, double dx, double dy);
	[LinkName("QPainter_Window")]
	public static extern void QPainter_Window(void* c_this);
	[LinkName("QPainter_SetWindow")]
	public static extern void QPainter_SetWindow(void* c_this, void* window);
	[LinkName("QPainter_SetWindow2")]
	public static extern void QPainter_SetWindow2(void* c_this, int32 x, int32 y, int32 w, int32 h);
	[LinkName("QPainter_Viewport")]
	public static extern void QPainter_Viewport(void* c_this);
	[LinkName("QPainter_SetViewport")]
	public static extern void QPainter_SetViewport(void* c_this, void* viewport);
	[LinkName("QPainter_SetViewport2")]
	public static extern void QPainter_SetViewport2(void* c_this, int32 x, int32 y, int32 w, int32 h);
	[LinkName("QPainter_SetViewTransformEnabled")]
	public static extern void QPainter_SetViewTransformEnabled(void* c_this, bool enable);
	[LinkName("QPainter_ViewTransformEnabled")]
	public static extern bool QPainter_ViewTransformEnabled(void* c_this);
	[LinkName("QPainter_StrokePath")]
	public static extern void QPainter_StrokePath(void* c_this, void* path, void* pen);
	[LinkName("QPainter_FillPath")]
	public static extern void QPainter_FillPath(void* c_this, void* path, void* brush);
	[LinkName("QPainter_DrawPath")]
	public static extern void QPainter_DrawPath(void* c_this, void* path);
	[LinkName("QPainter_DrawPoint")]
	public static extern void QPainter_DrawPoint(void* c_this, void* pt);
	[LinkName("QPainter_DrawPointWithQPoint")]
	public static extern void QPainter_DrawPointWithQPoint(void* c_this, void* p);
	[LinkName("QPainter_DrawPoint2")]
	public static extern void QPainter_DrawPoint2(void* c_this, int32 x, int32 y);
	[LinkName("QPainter_DrawPoints")]
	public static extern void QPainter_DrawPoints(void* c_this, void* points, int32 pointCount);
	[LinkName("QPainter_DrawPoints2")]
	public static extern void QPainter_DrawPoints2(void* c_this, void* points, int32 pointCount);
	[LinkName("QPainter_DrawLine")]
	public static extern void QPainter_DrawLine(void* c_this, void* line);
	[LinkName("QPainter_DrawLineWithLine")]
	public static extern void QPainter_DrawLineWithLine(void* c_this, void* line);
	[LinkName("QPainter_DrawLine2")]
	public static extern void QPainter_DrawLine2(void* c_this, int32 x1, int32 y1, int32 x2, int32 y2);
	[LinkName("QPainter_DrawLine3")]
	public static extern void QPainter_DrawLine3(void* c_this, void* p1, void* p2);
	[LinkName("QPainter_DrawLine4")]
	public static extern void QPainter_DrawLine4(void* c_this, void* p1, void* p2);
	[LinkName("QPainter_DrawLines")]
	public static extern void QPainter_DrawLines(void* c_this, void* lines, int32 lineCount);
	[LinkName("QPainter_DrawLinesWithLines")]
	public static extern void QPainter_DrawLinesWithLines(void* c_this, void[] lines);
	[LinkName("QPainter_DrawLines2")]
	public static extern void QPainter_DrawLines2(void* c_this, void* pointPairs, int32 lineCount);
	[LinkName("QPainter_DrawLinesWithPointPairs")]
	public static extern void QPainter_DrawLinesWithPointPairs(void* c_this, void[] pointPairs);
	[LinkName("QPainter_DrawLines3")]
	public static extern void QPainter_DrawLines3(void* c_this, void* lines, int32 lineCount);
	[LinkName("QPainter_DrawLines4")]
	public static extern void QPainter_DrawLines4(void* c_this, void[] lines);
	[LinkName("QPainter_DrawLines5")]
	public static extern void QPainter_DrawLines5(void* c_this, void* pointPairs, int32 lineCount);
	[LinkName("QPainter_DrawLines6")]
	public static extern void QPainter_DrawLines6(void* c_this, void[] pointPairs);
	[LinkName("QPainter_DrawRect")]
	public static extern void QPainter_DrawRect(void* c_this, void* rect);
	[LinkName("QPainter_DrawRect2")]
	public static extern void QPainter_DrawRect2(void* c_this, int32 x1, int32 y1, int32 w, int32 h);
	[LinkName("QPainter_DrawRectWithRect")]
	public static extern void QPainter_DrawRectWithRect(void* c_this, void* rect);
	[LinkName("QPainter_DrawRects")]
	public static extern void QPainter_DrawRects(void* c_this, void* rects, int32 rectCount);
	[LinkName("QPainter_DrawRectsWithRectangles")]
	public static extern void QPainter_DrawRectsWithRectangles(void* c_this, void[] rectangles);
	[LinkName("QPainter_DrawRects2")]
	public static extern void QPainter_DrawRects2(void* c_this, void* rects, int32 rectCount);
	[LinkName("QPainter_DrawRects3")]
	public static extern void QPainter_DrawRects3(void* c_this, void[] rectangles);
	[LinkName("QPainter_DrawEllipse")]
	public static extern void QPainter_DrawEllipse(void* c_this, void* r);
	[LinkName("QPainter_DrawEllipseWithQRect")]
	public static extern void QPainter_DrawEllipseWithQRect(void* c_this, void* r);
	[LinkName("QPainter_DrawEllipse2")]
	public static extern void QPainter_DrawEllipse2(void* c_this, int32 x, int32 y, int32 w, int32 h);
	[LinkName("QPainter_DrawEllipse3")]
	public static extern void QPainter_DrawEllipse3(void* c_this, void* center, double rx, double ry);
	[LinkName("QPainter_DrawEllipse4")]
	public static extern void QPainter_DrawEllipse4(void* c_this, void* center, int32 rx, int32 ry);
	[LinkName("QPainter_DrawPolyline")]
	public static extern void QPainter_DrawPolyline(void* c_this, void* points, int32 pointCount);
	[LinkName("QPainter_DrawPolyline2")]
	public static extern void QPainter_DrawPolyline2(void* c_this, void* points, int32 pointCount);
	[LinkName("QPainter_DrawPolygon")]
	public static extern void QPainter_DrawPolygon(void* c_this, void* points, int32 pointCount);
	[LinkName("QPainter_DrawPolygon2")]
	public static extern void QPainter_DrawPolygon2(void* c_this, void* points, int32 pointCount);
	[LinkName("QPainter_DrawConvexPolygon")]
	public static extern void QPainter_DrawConvexPolygon(void* c_this, void* points, int32 pointCount);
	[LinkName("QPainter_DrawConvexPolygon2")]
	public static extern void QPainter_DrawConvexPolygon2(void* c_this, void* points, int32 pointCount);
	[LinkName("QPainter_DrawArc")]
	public static extern void QPainter_DrawArc(void* c_this, void* rect, int32 a, int32 alen);
	[LinkName("QPainter_DrawArc2")]
	public static extern void QPainter_DrawArc2(void* c_this, void* param1, int32 a, int32 alen);
	[LinkName("QPainter_DrawArc3")]
	public static extern void QPainter_DrawArc3(void* c_this, int32 x, int32 y, int32 w, int32 h, int32 a, int32 alen);
	[LinkName("QPainter_DrawPie")]
	public static extern void QPainter_DrawPie(void* c_this, void* rect, int32 a, int32 alen);
	[LinkName("QPainter_DrawPie2")]
	public static extern void QPainter_DrawPie2(void* c_this, int32 x, int32 y, int32 w, int32 h, int32 a, int32 alen);
	[LinkName("QPainter_DrawPie3")]
	public static extern void QPainter_DrawPie3(void* c_this, void* param1, int32 a, int32 alen);
	[LinkName("QPainter_DrawChord")]
	public static extern void QPainter_DrawChord(void* c_this, void* rect, int32 a, int32 alen);
	[LinkName("QPainter_DrawChord2")]
	public static extern void QPainter_DrawChord2(void* c_this, int32 x, int32 y, int32 w, int32 h, int32 a, int32 alen);
	[LinkName("QPainter_DrawChord3")]
	public static extern void QPainter_DrawChord3(void* c_this, void* param1, int32 a, int32 alen);
	[LinkName("QPainter_DrawRoundedRect")]
	public static extern void QPainter_DrawRoundedRect(void* c_this, void* rect, double xRadius, double yRadius);
	[LinkName("QPainter_DrawRoundedRect2")]
	public static extern void QPainter_DrawRoundedRect2(void* c_this, int32 x, int32 y, int32 w, int32 h, double xRadius, double yRadius);
	[LinkName("QPainter_DrawRoundedRect3")]
	public static extern void QPainter_DrawRoundedRect3(void* c_this, void* rect, double xRadius, double yRadius);
	[LinkName("QPainter_DrawTiledPixmap")]
	public static extern void QPainter_DrawTiledPixmap(void* c_this, void* rect, void* pm);
	[LinkName("QPainter_DrawTiledPixmap2")]
	public static extern void QPainter_DrawTiledPixmap2(void* c_this, int32 x, int32 y, int32 w, int32 h, void* param5);
	[LinkName("QPainter_DrawTiledPixmap3")]
	public static extern void QPainter_DrawTiledPixmap3(void* c_this, void* param1, void* param2);
	[LinkName("QPainter_DrawPicture")]
	public static extern void QPainter_DrawPicture(void* c_this, void* p, void* picture);
	[LinkName("QPainter_DrawPicture2")]
	public static extern void QPainter_DrawPicture2(void* c_this, int32 x, int32 y, void* picture);
	[LinkName("QPainter_DrawPicture3")]
	public static extern void QPainter_DrawPicture3(void* c_this, void* p, void* picture);
	[LinkName("QPainter_DrawPixmap")]
	public static extern void QPainter_DrawPixmap(void* c_this, void* targetRect, void* pixmap, void* sourceRect);
	[LinkName("QPainter_DrawPixmap2")]
	public static extern void QPainter_DrawPixmap2(void* c_this, void* targetRect, void* pixmap, void* sourceRect);
	[LinkName("QPainter_DrawPixmap3")]
	public static extern void QPainter_DrawPixmap3(void* c_this, int32 x, int32 y, int32 w, int32 h, void* pm, int32 sx, int32 sy, int32 sw, int32 sh);
	[LinkName("QPainter_DrawPixmap4")]
	public static extern void QPainter_DrawPixmap4(void* c_this, int32 x, int32 y, void* pm, int32 sx, int32 sy, int32 sw, int32 sh);
	[LinkName("QPainter_DrawPixmap5")]
	public static extern void QPainter_DrawPixmap5(void* c_this, void* p, void* pm, void* sr);
	[LinkName("QPainter_DrawPixmap6")]
	public static extern void QPainter_DrawPixmap6(void* c_this, void* p, void* pm, void* sr);
	[LinkName("QPainter_DrawPixmap7")]
	public static extern void QPainter_DrawPixmap7(void* c_this, void* p, void* pm);
	[LinkName("QPainter_DrawPixmap8")]
	public static extern void QPainter_DrawPixmap8(void* c_this, void* p, void* pm);
	[LinkName("QPainter_DrawPixmap9")]
	public static extern void QPainter_DrawPixmap9(void* c_this, int32 x, int32 y, void* pm);
	[LinkName("QPainter_DrawPixmap10")]
	public static extern void QPainter_DrawPixmap10(void* c_this, void* r, void* pm);
	[LinkName("QPainter_DrawPixmap11")]
	public static extern void QPainter_DrawPixmap11(void* c_this, int32 x, int32 y, int32 w, int32 h, void* pm);
	[LinkName("QPainter_DrawPixmapFragments")]
	public static extern void QPainter_DrawPixmapFragments(void* c_this, QPainter__PixmapFragment* fragments, int32 fragmentCount, void* pixmap);
	[LinkName("QPainter_DrawImage")]
	public static extern void QPainter_DrawImage(void* c_this, void* targetRect, void* image, void* sourceRect);
	[LinkName("QPainter_DrawImage2")]
	public static extern void QPainter_DrawImage2(void* c_this, void* targetRect, void* image, void* sourceRect);
	[LinkName("QPainter_DrawImage3")]
	public static extern void QPainter_DrawImage3(void* c_this, void* p, void* image, void* sr);
	[LinkName("QPainter_DrawImage4")]
	public static extern void QPainter_DrawImage4(void* c_this, void* p, void* image, void* sr);
	[LinkName("QPainter_DrawImage5")]
	public static extern void QPainter_DrawImage5(void* c_this, void* r, void* image);
	[LinkName("QPainter_DrawImage6")]
	public static extern void QPainter_DrawImage6(void* c_this, void* r, void* image);
	[LinkName("QPainter_DrawImage7")]
	public static extern void QPainter_DrawImage7(void* c_this, void* p, void* image);
	[LinkName("QPainter_DrawImage8")]
	public static extern void QPainter_DrawImage8(void* c_this, void* p, void* image);
	[LinkName("QPainter_DrawImage9")]
	public static extern void QPainter_DrawImage9(void* c_this, int32 x, int32 y, void* image);
	[LinkName("QPainter_SetLayoutDirection")]
	public static extern void QPainter_SetLayoutDirection(void* c_this, int64 direction);
	[LinkName("QPainter_LayoutDirection")]
	public static extern int64 QPainter_LayoutDirection(void* c_this);
	[LinkName("QPainter_DrawGlyphRun")]
	public static extern void QPainter_DrawGlyphRun(void* c_this, void* position, void* glyphRun);
	[LinkName("QPainter_DrawStaticText")]
	public static extern void QPainter_DrawStaticText(void* c_this, void* topLeftPosition, void* staticText);
	[LinkName("QPainter_DrawStaticText2")]
	public static extern void QPainter_DrawStaticText2(void* c_this, void* topLeftPosition, void* staticText);
	[LinkName("QPainter_DrawStaticText3")]
	public static extern void QPainter_DrawStaticText3(void* c_this, int32 left, int32 top, void* staticText);
	[LinkName("QPainter_DrawText")]
	public static extern void QPainter_DrawText(void* c_this, void* p, libqt_string s);
	[LinkName("QPainter_DrawText2")]
	public static extern void QPainter_DrawText2(void* c_this, void* p, libqt_string s);
	[LinkName("QPainter_DrawText3")]
	public static extern void QPainter_DrawText3(void* c_this, int32 x, int32 y, libqt_string s);
	[LinkName("QPainter_DrawText4")]
	public static extern void QPainter_DrawText4(void* c_this, void* p, libqt_string str, int32 tf, int32 justificationPadding);
	[LinkName("QPainter_DrawText5")]
	public static extern void QPainter_DrawText5(void* c_this, void* r, int32 flags, libqt_string text);
	[LinkName("QPainter_DrawText6")]
	public static extern void QPainter_DrawText6(void* c_this, void* r, int32 flags, libqt_string text);
	[LinkName("QPainter_DrawText7")]
	public static extern void QPainter_DrawText7(void* c_this, int32 x, int32 y, int32 w, int32 h, int32 flags, libqt_string text);
	[LinkName("QPainter_DrawText8")]
	public static extern void QPainter_DrawText8(void* c_this, void* r, libqt_string text);
	[LinkName("QPainter_BoundingRect")]
	public static extern void QPainter_BoundingRect(void* c_this, void* rect, int32 flags, libqt_string text);
	[LinkName("QPainter_BoundingRect2")]
	public static extern void QPainter_BoundingRect2(void* c_this, void* rect, int32 flags, libqt_string text);
	[LinkName("QPainter_BoundingRect3")]
	public static extern void QPainter_BoundingRect3(void* c_this, int32 x, int32 y, int32 w, int32 h, int32 flags, libqt_string text);
	[LinkName("QPainter_BoundingRect4")]
	public static extern void QPainter_BoundingRect4(void* c_this, void* rect, libqt_string text);
	[LinkName("QPainter_DrawTextItem")]
	public static extern void QPainter_DrawTextItem(void* c_this, void* p, void* ti);
	[LinkName("QPainter_DrawTextItem2")]
	public static extern void QPainter_DrawTextItem2(void* c_this, int32 x, int32 y, void* ti);
	[LinkName("QPainter_DrawTextItem3")]
	public static extern void QPainter_DrawTextItem3(void* c_this, void* p, void* ti);
	[LinkName("QPainter_FillRect")]
	public static extern void QPainter_FillRect(void* c_this, void* param1, void* param2);
	[LinkName("QPainter_FillRect2")]
	public static extern void QPainter_FillRect2(void* c_this, int32 x, int32 y, int32 w, int32 h, void* param5);
	[LinkName("QPainter_FillRect3")]
	public static extern void QPainter_FillRect3(void* c_this, void* param1, void* param2);
	[LinkName("QPainter_FillRect4")]
	public static extern void QPainter_FillRect4(void* c_this, void* param1, void* color);
	[LinkName("QPainter_FillRect5")]
	public static extern void QPainter_FillRect5(void* c_this, int32 x, int32 y, int32 w, int32 h, void* color);
	[LinkName("QPainter_FillRect6")]
	public static extern void QPainter_FillRect6(void* c_this, void* param1, void* color);
	[LinkName("QPainter_FillRect7")]
	public static extern void QPainter_FillRect7(void* c_this, int32 x, int32 y, int32 w, int32 h, int64 c);
	[LinkName("QPainter_FillRect8")]
	public static extern void QPainter_FillRect8(void* c_this, void* r, int64 c);
	[LinkName("QPainter_FillRect9")]
	public static extern void QPainter_FillRect9(void* c_this, void* r, int64 c);
	[LinkName("QPainter_FillRect10")]
	public static extern void QPainter_FillRect10(void* c_this, int32 x, int32 y, int32 w, int32 h, int64 style);
	[LinkName("QPainter_FillRect11")]
	public static extern void QPainter_FillRect11(void* c_this, void* r, int64 style);
	[LinkName("QPainter_FillRect12")]
	public static extern void QPainter_FillRect12(void* c_this, void* r, int64 style);
	[LinkName("QPainter_FillRect13")]
	public static extern void QPainter_FillRect13(void* c_this, int32 x, int32 y, int32 w, int32 h, int64 preset);
	[LinkName("QPainter_FillRect14")]
	public static extern void QPainter_FillRect14(void* c_this, void* r, int64 preset);
	[LinkName("QPainter_FillRect15")]
	public static extern void QPainter_FillRect15(void* c_this, void* r, int64 preset);
	[LinkName("QPainter_EraseRect")]
	public static extern void QPainter_EraseRect(void* c_this, void* param1);
	[LinkName("QPainter_EraseRect2")]
	public static extern void QPainter_EraseRect2(void* c_this, int32 x, int32 y, int32 w, int32 h);
	[LinkName("QPainter_EraseRectWithQRect")]
	public static extern void QPainter_EraseRectWithQRect(void* c_this, void* param1);
	[LinkName("QPainter_SetRenderHint")]
	public static extern void QPainter_SetRenderHint(void* c_this, int64 hint);
	[LinkName("QPainter_SetRenderHints")]
	public static extern void QPainter_SetRenderHints(void* c_this, int64 hints);
	[LinkName("QPainter_RenderHints")]
	public static extern int64 QPainter_RenderHints(void* c_this);
	[LinkName("QPainter_TestRenderHint")]
	public static extern bool QPainter_TestRenderHint(void* c_this, int64 hint);
	[LinkName("QPainter_PaintEngine")]
	public static extern void* QPainter_PaintEngine(void* c_this);
	[LinkName("QPainter_BeginNativePainting")]
	public static extern void QPainter_BeginNativePainting(void* c_this);
	[LinkName("QPainter_EndNativePainting")]
	public static extern void QPainter_EndNativePainting(void* c_this);
	[LinkName("QPainter_SetClipRect22")]
	public static extern void QPainter_SetClipRect22(void* c_this, void* param1, int64 op);
	[LinkName("QPainter_SetClipRect23")]
	public static extern void QPainter_SetClipRect23(void* c_this, void* param1, int64 op);
	[LinkName("QPainter_SetClipRect5")]
	public static extern void QPainter_SetClipRect5(void* c_this, int32 x, int32 y, int32 w, int32 h, int64 op);
	[LinkName("QPainter_SetClipRegion2")]
	public static extern void QPainter_SetClipRegion2(void* c_this, void* param1, int64 op);
	[LinkName("QPainter_SetClipPath2")]
	public static extern void QPainter_SetClipPath2(void* c_this, void* path, int64 op);
	[LinkName("QPainter_SetTransform2")]
	public static extern void QPainter_SetTransform2(void* c_this, void* transform, bool combine);
	[LinkName("QPainter_SetWorldTransform2")]
	public static extern void QPainter_SetWorldTransform2(void* c_this, void* matrix, bool combine);
	[LinkName("QPainter_DrawPolygon32")]
	public static extern void QPainter_DrawPolygon32(void* c_this, void* points, int32 pointCount, int64 fillRule);
	[LinkName("QPainter_DrawPolygon33")]
	public static extern void QPainter_DrawPolygon33(void* c_this, void* points, int32 pointCount, int64 fillRule);
	[LinkName("QPainter_DrawRoundedRect4")]
	public static extern void QPainter_DrawRoundedRect4(void* c_this, void* rect, double xRadius, double yRadius, int64 mode);
	[LinkName("QPainter_DrawRoundedRect7")]
	public static extern void QPainter_DrawRoundedRect7(void* c_this, int32 x, int32 y, int32 w, int32 h, double xRadius, double yRadius, int64 mode);
	[LinkName("QPainter_DrawRoundedRect42")]
	public static extern void QPainter_DrawRoundedRect42(void* c_this, void* rect, double xRadius, double yRadius, int64 mode);
	[LinkName("QPainter_DrawTiledPixmap32")]
	public static extern void QPainter_DrawTiledPixmap32(void* c_this, void* rect, void* pm, void* offset);
	[LinkName("QPainter_DrawTiledPixmap6")]
	public static extern void QPainter_DrawTiledPixmap6(void* c_this, int32 x, int32 y, int32 w, int32 h, void* param5, int32 sx);
	[LinkName("QPainter_DrawTiledPixmap7")]
	public static extern void QPainter_DrawTiledPixmap7(void* c_this, int32 x, int32 y, int32 w, int32 h, void* param5, int32 sx, int32 sy);
	[LinkName("QPainter_DrawTiledPixmap33")]
	public static extern void QPainter_DrawTiledPixmap33(void* c_this, void* param1, void* param2, void* param3);
	[LinkName("QPainter_DrawPixmapFragments4")]
	public static extern void QPainter_DrawPixmapFragments4(void* c_this, QPainter__PixmapFragment* fragments, int32 fragmentCount, void* pixmap, int64 hints);
	[LinkName("QPainter_DrawImage42")]
	public static extern void QPainter_DrawImage42(void* c_this, void* targetRect, void* image, void* sourceRect, int64 flags);
	[LinkName("QPainter_DrawImage43")]
	public static extern void QPainter_DrawImage43(void* c_this, void* targetRect, void* image, void* sourceRect, int64 flags);
	[LinkName("QPainter_DrawImage44")]
	public static extern void QPainter_DrawImage44(void* c_this, void* p, void* image, void* sr, int64 flags);
	[LinkName("QPainter_DrawImage45")]
	public static extern void QPainter_DrawImage45(void* c_this, void* p, void* image, void* sr, int64 flags);
	[LinkName("QPainter_DrawImage46")]
	public static extern void QPainter_DrawImage46(void* c_this, int32 x, int32 y, void* image, int32 sx);
	[LinkName("QPainter_DrawImage52")]
	public static extern void QPainter_DrawImage52(void* c_this, int32 x, int32 y, void* image, int32 sx, int32 sy);
	[LinkName("QPainter_DrawImage62")]
	public static extern void QPainter_DrawImage62(void* c_this, int32 x, int32 y, void* image, int32 sx, int32 sy, int32 sw);
	[LinkName("QPainter_DrawImage72")]
	public static extern void QPainter_DrawImage72(void* c_this, int32 x, int32 y, void* image, int32 sx, int32 sy, int32 sw, int32 sh);
	[LinkName("QPainter_DrawImage82")]
	public static extern void QPainter_DrawImage82(void* c_this, int32 x, int32 y, void* image, int32 sx, int32 sy, int32 sw, int32 sh, int64 flags);
	[LinkName("QPainter_DrawText42")]
	public static extern void QPainter_DrawText42(void* c_this, void* r, int32 flags, libqt_string text, void* br);
	[LinkName("QPainter_DrawText43")]
	public static extern void QPainter_DrawText43(void* c_this, void* r, int32 flags, libqt_string text, void* br);
	[LinkName("QPainter_DrawText72")]
	public static extern void QPainter_DrawText72(void* c_this, int32 x, int32 y, int32 w, int32 h, int32 flags, libqt_string text, void* br);
	[LinkName("QPainter_DrawText32")]
	public static extern void QPainter_DrawText32(void* c_this, void* r, libqt_string text, void* o);
	[LinkName("QPainter_BoundingRect32")]
	public static extern void QPainter_BoundingRect32(void* c_this, void* rect, libqt_string text, void* o);
	[LinkName("QPainter_SetRenderHint2")]
	public static extern void QPainter_SetRenderHint2(void* c_this, int64 hint, bool on);
	[LinkName("QPainter_SetRenderHints2")]
	public static extern void QPainter_SetRenderHints2(void* c_this, int64 hints, bool on);
	/// Delete this object from C++ memory
	[LinkName("QPainter_Delete")]
	public static extern void QPainter_Delete(void* self);
}
public class QPainter__PixmapFragment
{
	protected void* nativePtr;
	
	public ~this()
	{
		CQt.QPainter__PixmapFragment_Delete(this.nativePtr);
	}
	
	public static QPainter__PixmapFragment Create(void* pos, void* sourceRect)
	{
		return CQt.QPainter__PixmapFragment_Create(pos, sourceRect);
	}
	
	public static QPainter__PixmapFragment Create3(void* pos, void* sourceRect, double scaleX)
	{
		return CQt.QPainter__PixmapFragment_Create3(pos, sourceRect, scaleX);
	}
	
	public static QPainter__PixmapFragment Create4(void* pos, void* sourceRect, double scaleX, double scaleY)
	{
		return CQt.QPainter__PixmapFragment_Create4(pos, sourceRect, scaleX, scaleY);
	}
	
	public static QPainter__PixmapFragment Create5(void* pos, void* sourceRect, double scaleX, double scaleY, double rotation)
	{
		return CQt.QPainter__PixmapFragment_Create5(pos, sourceRect, scaleX, scaleY, rotation);
	}
	
	public static QPainter__PixmapFragment Create6(void* pos, void* sourceRect, double scaleX, double scaleY, double rotation, double opacity)
	{
		return CQt.QPainter__PixmapFragment_Create6(pos, sourceRect, scaleX, scaleY, rotation, opacity);
	}
	
}
extension CQt
{
	[LinkName("QPainter__PixmapFragment_Create")]
	public static extern QPainter__PixmapFragment QPainter__PixmapFragment_Create(void* pos, void* sourceRect);
	[LinkName("QPainter__PixmapFragment_Create3")]
	public static extern QPainter__PixmapFragment QPainter__PixmapFragment_Create3(void* pos, void* sourceRect, double scaleX);
	[LinkName("QPainter__PixmapFragment_Create4")]
	public static extern QPainter__PixmapFragment QPainter__PixmapFragment_Create4(void* pos, void* sourceRect, double scaleX, double scaleY);
	[LinkName("QPainter__PixmapFragment_Create5")]
	public static extern QPainter__PixmapFragment QPainter__PixmapFragment_Create5(void* pos, void* sourceRect, double scaleX, double scaleY, double rotation);
	[LinkName("QPainter__PixmapFragment_Create6")]
	public static extern QPainter__PixmapFragment QPainter__PixmapFragment_Create6(void* pos, void* sourceRect, double scaleX, double scaleY, double rotation, double opacity);
	/// Delete this object from C++ memory
	[LinkName("QPainter__PixmapFragment_Delete")]
	public static extern void QPainter__PixmapFragment_Delete(void* self);
}