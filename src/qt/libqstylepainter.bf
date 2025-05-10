using System;
using System.Interop;
namespace Qt;

public class QStylePainter
{
	protected void* nativePtr;
	
	public this(void* w)
	{
		this.nativePtr = CQt.QStylePainter_new(w);
	}
	
	public ~this()
	{
		CQt.QStylePainter_Delete(this.nativePtr);
	}
	
	public bool Begin(void* w)
	{
		return CQt.QStylePainter_Begin(this.nativePtr, w);
	}
	
	public bool Begin2(void* pd, void* w)
	{
		return CQt.QStylePainter_Begin2(this.nativePtr, pd, w);
	}
	
	public void DrawPrimitive(int64 pe, void* opt)
	{
		CQt.QStylePainter_DrawPrimitive(this.nativePtr, pe, opt);
	}
	
	public void DrawControl(int64 ce, void* opt)
	{
		CQt.QStylePainter_DrawControl(this.nativePtr, ce, opt);
	}
	
	public void DrawComplexControl(int64 cc, void* opt)
	{
		CQt.QStylePainter_DrawComplexControl(this.nativePtr, cc, opt);
	}
	
	public void DrawItemText(void* r, int32 flags, void* pal, bool enabled, libqt_string text)
	{
		CQt.QStylePainter_DrawItemText(this.nativePtr, r, flags, pal, enabled, text);
	}
	
	public void DrawItemPixmap(void* r, int32 flags, void* pixmap)
	{
		CQt.QStylePainter_DrawItemPixmap(this.nativePtr, r, flags, pixmap);
	}
	
	public void* Style()
	{
		return CQt.QStylePainter_Style(this.nativePtr);
	}
	
	public void DrawItemText6(void* r, int32 flags, void* pal, bool enabled, libqt_string text, int64 textRole)
	{
		CQt.QStylePainter_DrawItemText6(this.nativePtr, r, flags, pal, enabled, text, textRole);
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