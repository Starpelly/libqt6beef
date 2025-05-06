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
public struct QPainter
{
	[LinkName("QPainter_new")]
	public static extern QPainter* QPainter_new();
	[LinkName("QPainter_new2")]
	public static extern QPainter* QPainter_new2(QPaintDevice* param1);
	[LinkName("QPainter_Device")]
	public static extern QPaintDevice* QPainter_Device(Self* c_this);
	[LinkName("QPainter_Begin")]
	public static extern bool QPainter_Begin(Self* c_this, QPaintDevice* param1);
	[LinkName("QPainter_End")]
	public static extern bool QPainter_End(Self* c_this);
	[LinkName("QPainter_IsActive")]
	public static extern bool QPainter_IsActive(Self* c_this);
	[LinkName("QPainter_SetCompositionMode")]
	public static extern void QPainter_SetCompositionMode(Self* c_this, int64 mode);
	[LinkName("QPainter_CompositionMode")]
	public static extern int64 QPainter_CompositionMode(Self* c_this);
	[LinkName("QPainter_Font")]
	public static extern QFont* QPainter_Font(Self* c_this);
	[LinkName("QPainter_SetFont")]
	public static extern void QPainter_SetFont(Self* c_this, QFont* f);
	[LinkName("QPainter_FontMetrics")]
	public static extern QFontMetrics QPainter_FontMetrics(Self* c_this);
	[LinkName("QPainter_FontInfo")]
	public static extern QFontInfo QPainter_FontInfo(Self* c_this);
	[LinkName("QPainter_SetPen")]
	public static extern void QPainter_SetPen(Self* c_this, QColor* color);
	[LinkName("QPainter_SetPenWithPen")]
	public static extern void QPainter_SetPenWithPen(Self* c_this, QPen* pen);
	[LinkName("QPainter_SetPenWithStyle")]
	public static extern void QPainter_SetPenWithStyle(Self* c_this, int64 style);
	[LinkName("QPainter_Pen")]
	public static extern QPen* QPainter_Pen(Self* c_this);
	[LinkName("QPainter_SetBrush")]
	public static extern void QPainter_SetBrush(Self* c_this, QBrush* brush);
	[LinkName("QPainter_SetBrushWithStyle")]
	public static extern void QPainter_SetBrushWithStyle(Self* c_this, int64 style);
	[LinkName("QPainter_Brush")]
	public static extern QBrush* QPainter_Brush(Self* c_this);
	[LinkName("QPainter_SetBackgroundMode")]
	public static extern void QPainter_SetBackgroundMode(Self* c_this, int64 mode);
	[LinkName("QPainter_BackgroundMode")]
	public static extern int64 QPainter_BackgroundMode(Self* c_this);
	[LinkName("QPainter_BrushOrigin")]
	public static extern QPoint QPainter_BrushOrigin(Self* c_this);
	[LinkName("QPainter_SetBrushOrigin")]
	public static extern void QPainter_SetBrushOrigin(Self* c_this, int32 x, int32 y);
	[LinkName("QPainter_SetBrushOriginWithBrushOrigin")]
	public static extern void QPainter_SetBrushOriginWithBrushOrigin(Self* c_this, QPoint* brushOrigin);
	[LinkName("QPainter_SetBrushOrigin2")]
	public static extern void QPainter_SetBrushOrigin2(Self* c_this, QPointF* brushOrigin);
	[LinkName("QPainter_SetBackground")]
	public static extern void QPainter_SetBackground(Self* c_this, QBrush* bg);
	[LinkName("QPainter_Background")]
	public static extern QBrush* QPainter_Background(Self* c_this);
	[LinkName("QPainter_Opacity")]
	public static extern double QPainter_Opacity(Self* c_this);
	[LinkName("QPainter_SetOpacity")]
	public static extern void QPainter_SetOpacity(Self* c_this, double opacity);
	[LinkName("QPainter_ClipRegion")]
	public static extern QRegion QPainter_ClipRegion(Self* c_this);
	[LinkName("QPainter_ClipPath")]
	public static extern QPainterPath QPainter_ClipPath(Self* c_this);
	[LinkName("QPainter_SetClipRect")]
	public static extern void QPainter_SetClipRect(Self* c_this, QRectF* param1);
	[LinkName("QPainter_SetClipRectWithQRect")]
	public static extern void QPainter_SetClipRectWithQRect(Self* c_this, QRect* param1);
	[LinkName("QPainter_SetClipRect2")]
	public static extern void QPainter_SetClipRect2(Self* c_this, int32 x, int32 y, int32 w, int32 h);
	[LinkName("QPainter_SetClipRegion")]
	public static extern void QPainter_SetClipRegion(Self* c_this, QRegion* param1);
	[LinkName("QPainter_SetClipPath")]
	public static extern void QPainter_SetClipPath(Self* c_this, QPainterPath* path);
	[LinkName("QPainter_SetClipping")]
	public static extern void QPainter_SetClipping(Self* c_this, bool enable);
	[LinkName("QPainter_HasClipping")]
	public static extern bool QPainter_HasClipping(Self* c_this);
	[LinkName("QPainter_ClipBoundingRect")]
	public static extern QRectF QPainter_ClipBoundingRect(Self* c_this);
	[LinkName("QPainter_Save")]
	public static extern void QPainter_Save(Self* c_this);
	[LinkName("QPainter_Restore")]
	public static extern void QPainter_Restore(Self* c_this);
	[LinkName("QPainter_SetTransform")]
	public static extern void QPainter_SetTransform(Self* c_this, QTransform* transform);
	[LinkName("QPainter_Transform")]
	public static extern QTransform* QPainter_Transform(Self* c_this);
	[LinkName("QPainter_DeviceTransform")]
	public static extern QTransform* QPainter_DeviceTransform(Self* c_this);
	[LinkName("QPainter_ResetTransform")]
	public static extern void QPainter_ResetTransform(Self* c_this);
	[LinkName("QPainter_SetWorldTransform")]
	public static extern void QPainter_SetWorldTransform(Self* c_this, QTransform* matrix);
	[LinkName("QPainter_WorldTransform")]
	public static extern QTransform* QPainter_WorldTransform(Self* c_this);
	[LinkName("QPainter_CombinedTransform")]
	public static extern QTransform QPainter_CombinedTransform(Self* c_this);
	[LinkName("QPainter_SetWorldMatrixEnabled")]
	public static extern void QPainter_SetWorldMatrixEnabled(Self* c_this, bool enabled);
	[LinkName("QPainter_WorldMatrixEnabled")]
	public static extern bool QPainter_WorldMatrixEnabled(Self* c_this);
	[LinkName("QPainter_Scale")]
	public static extern void QPainter_Scale(Self* c_this, double sx, double sy);
	[LinkName("QPainter_Shear")]
	public static extern void QPainter_Shear(Self* c_this, double sh, double sv);
	[LinkName("QPainter_Rotate")]
	public static extern void QPainter_Rotate(Self* c_this, double a);
	[LinkName("QPainter_Translate")]
	public static extern void QPainter_Translate(Self* c_this, QPointF* offset);
	[LinkName("QPainter_TranslateWithOffset")]
	public static extern void QPainter_TranslateWithOffset(Self* c_this, QPoint* offset);
	[LinkName("QPainter_Translate2")]
	public static extern void QPainter_Translate2(Self* c_this, double dx, double dy);
	[LinkName("QPainter_Window")]
	public static extern QRect QPainter_Window(Self* c_this);
	[LinkName("QPainter_SetWindow")]
	public static extern void QPainter_SetWindow(Self* c_this, QRect* window);
	[LinkName("QPainter_SetWindow2")]
	public static extern void QPainter_SetWindow2(Self* c_this, int32 x, int32 y, int32 w, int32 h);
	[LinkName("QPainter_Viewport")]
	public static extern QRect QPainter_Viewport(Self* c_this);
	[LinkName("QPainter_SetViewport")]
	public static extern void QPainter_SetViewport(Self* c_this, QRect* viewport);
	[LinkName("QPainter_SetViewport2")]
	public static extern void QPainter_SetViewport2(Self* c_this, int32 x, int32 y, int32 w, int32 h);
	[LinkName("QPainter_SetViewTransformEnabled")]
	public static extern void QPainter_SetViewTransformEnabled(Self* c_this, bool enable);
	[LinkName("QPainter_ViewTransformEnabled")]
	public static extern bool QPainter_ViewTransformEnabled(Self* c_this);
	[LinkName("QPainter_StrokePath")]
	public static extern void QPainter_StrokePath(Self* c_this, QPainterPath* path, QPen* pen);
	[LinkName("QPainter_FillPath")]
	public static extern void QPainter_FillPath(Self* c_this, QPainterPath* path, QBrush* brush);
	[LinkName("QPainter_DrawPath")]
	public static extern void QPainter_DrawPath(Self* c_this, QPainterPath* path);
	[LinkName("QPainter_DrawPoint")]
	public static extern void QPainter_DrawPoint(Self* c_this, QPointF* pt);
	[LinkName("QPainter_DrawPointWithQPoint")]
	public static extern void QPainter_DrawPointWithQPoint(Self* c_this, QPoint* p);
	[LinkName("QPainter_DrawPoint2")]
	public static extern void QPainter_DrawPoint2(Self* c_this, int32 x, int32 y);
	[LinkName("QPainter_DrawPoints")]
	public static extern void QPainter_DrawPoints(Self* c_this, QPointF* points, int32 pointCount);
	[LinkName("QPainter_DrawPoints2")]
	public static extern void QPainter_DrawPoints2(Self* c_this, QPoint* points, int32 pointCount);
	[LinkName("QPainter_DrawLine")]
	public static extern void QPainter_DrawLine(Self* c_this, QLineF* line);
	[LinkName("QPainter_DrawLineWithLine")]
	public static extern void QPainter_DrawLineWithLine(Self* c_this, QLine* line);
	[LinkName("QPainter_DrawLine2")]
	public static extern void QPainter_DrawLine2(Self* c_this, int32 x1, int32 y1, int32 x2, int32 y2);
	[LinkName("QPainter_DrawLine3")]
	public static extern void QPainter_DrawLine3(Self* c_this, QPoint* p1, QPoint* p2);
	[LinkName("QPainter_DrawLine4")]
	public static extern void QPainter_DrawLine4(Self* c_this, QPointF* p1, QPointF* p2);
	[LinkName("QPainter_DrawLines")]
	public static extern void QPainter_DrawLines(Self* c_this, QLineF* lines, int32 lineCount);
	[LinkName("QPainter_DrawLinesWithLines")]
	public static extern void QPainter_DrawLinesWithLines(Self* c_this, QLineF[] lines);
	[LinkName("QPainter_DrawLines2")]
	public static extern void QPainter_DrawLines2(Self* c_this, QPointF* pointPairs, int32 lineCount);
	[LinkName("QPainter_DrawLinesWithPointPairs")]
	public static extern void QPainter_DrawLinesWithPointPairs(Self* c_this, QPointF[] pointPairs);
	[LinkName("QPainter_DrawLines3")]
	public static extern void QPainter_DrawLines3(Self* c_this, QLine* lines, int32 lineCount);
	[LinkName("QPainter_DrawLines4")]
	public static extern void QPainter_DrawLines4(Self* c_this, QLine[] lines);
	[LinkName("QPainter_DrawLines5")]
	public static extern void QPainter_DrawLines5(Self* c_this, QPoint* pointPairs, int32 lineCount);
	[LinkName("QPainter_DrawLines6")]
	public static extern void QPainter_DrawLines6(Self* c_this, QPoint[] pointPairs);
	[LinkName("QPainter_DrawRect")]
	public static extern void QPainter_DrawRect(Self* c_this, QRectF* rect);
	[LinkName("QPainter_DrawRect2")]
	public static extern void QPainter_DrawRect2(Self* c_this, int32 x1, int32 y1, int32 w, int32 h);
	[LinkName("QPainter_DrawRectWithRect")]
	public static extern void QPainter_DrawRectWithRect(Self* c_this, QRect* rect);
	[LinkName("QPainter_DrawRects")]
	public static extern void QPainter_DrawRects(Self* c_this, QRectF* rects, int32 rectCount);
	[LinkName("QPainter_DrawRectsWithRectangles")]
	public static extern void QPainter_DrawRectsWithRectangles(Self* c_this, QRectF[] rectangles);
	[LinkName("QPainter_DrawRects2")]
	public static extern void QPainter_DrawRects2(Self* c_this, QRect* rects, int32 rectCount);
	[LinkName("QPainter_DrawRects3")]
	public static extern void QPainter_DrawRects3(Self* c_this, QRect[] rectangles);
	[LinkName("QPainter_DrawEllipse")]
	public static extern void QPainter_DrawEllipse(Self* c_this, QRectF* r);
	[LinkName("QPainter_DrawEllipseWithQRect")]
	public static extern void QPainter_DrawEllipseWithQRect(Self* c_this, QRect* r);
	[LinkName("QPainter_DrawEllipse2")]
	public static extern void QPainter_DrawEllipse2(Self* c_this, int32 x, int32 y, int32 w, int32 h);
	[LinkName("QPainter_DrawEllipse3")]
	public static extern void QPainter_DrawEllipse3(Self* c_this, QPointF* center, double rx, double ry);
	[LinkName("QPainter_DrawEllipse4")]
	public static extern void QPainter_DrawEllipse4(Self* c_this, QPoint* center, int32 rx, int32 ry);
	[LinkName("QPainter_DrawPolyline")]
	public static extern void QPainter_DrawPolyline(Self* c_this, QPointF* points, int32 pointCount);
	[LinkName("QPainter_DrawPolyline2")]
	public static extern void QPainter_DrawPolyline2(Self* c_this, QPoint* points, int32 pointCount);
	[LinkName("QPainter_DrawPolygon")]
	public static extern void QPainter_DrawPolygon(Self* c_this, QPointF* points, int32 pointCount);
	[LinkName("QPainter_DrawPolygon2")]
	public static extern void QPainter_DrawPolygon2(Self* c_this, QPoint* points, int32 pointCount);
	[LinkName("QPainter_DrawConvexPolygon")]
	public static extern void QPainter_DrawConvexPolygon(Self* c_this, QPointF* points, int32 pointCount);
	[LinkName("QPainter_DrawConvexPolygon2")]
	public static extern void QPainter_DrawConvexPolygon2(Self* c_this, QPoint* points, int32 pointCount);
	[LinkName("QPainter_DrawArc")]
	public static extern void QPainter_DrawArc(Self* c_this, QRectF* rect, int32 a, int32 alen);
	[LinkName("QPainter_DrawArc2")]
	public static extern void QPainter_DrawArc2(Self* c_this, QRect* param1, int32 a, int32 alen);
	[LinkName("QPainter_DrawArc3")]
	public static extern void QPainter_DrawArc3(Self* c_this, int32 x, int32 y, int32 w, int32 h, int32 a, int32 alen);
	[LinkName("QPainter_DrawPie")]
	public static extern void QPainter_DrawPie(Self* c_this, QRectF* rect, int32 a, int32 alen);
	[LinkName("QPainter_DrawPie2")]
	public static extern void QPainter_DrawPie2(Self* c_this, int32 x, int32 y, int32 w, int32 h, int32 a, int32 alen);
	[LinkName("QPainter_DrawPie3")]
	public static extern void QPainter_DrawPie3(Self* c_this, QRect* param1, int32 a, int32 alen);
	[LinkName("QPainter_DrawChord")]
	public static extern void QPainter_DrawChord(Self* c_this, QRectF* rect, int32 a, int32 alen);
	[LinkName("QPainter_DrawChord2")]
	public static extern void QPainter_DrawChord2(Self* c_this, int32 x, int32 y, int32 w, int32 h, int32 a, int32 alen);
	[LinkName("QPainter_DrawChord3")]
	public static extern void QPainter_DrawChord3(Self* c_this, QRect* param1, int32 a, int32 alen);
	[LinkName("QPainter_DrawRoundedRect")]
	public static extern void QPainter_DrawRoundedRect(Self* c_this, QRectF* rect, double xRadius, double yRadius);
	[LinkName("QPainter_DrawRoundedRect2")]
	public static extern void QPainter_DrawRoundedRect2(Self* c_this, int32 x, int32 y, int32 w, int32 h, double xRadius, double yRadius);
	[LinkName("QPainter_DrawRoundedRect3")]
	public static extern void QPainter_DrawRoundedRect3(Self* c_this, QRect* rect, double xRadius, double yRadius);
	[LinkName("QPainter_DrawTiledPixmap")]
	public static extern void QPainter_DrawTiledPixmap(Self* c_this, QRectF* rect, QPixmap* pm);
	[LinkName("QPainter_DrawTiledPixmap2")]
	public static extern void QPainter_DrawTiledPixmap2(Self* c_this, int32 x, int32 y, int32 w, int32 h, QPixmap* param5);
	[LinkName("QPainter_DrawTiledPixmap3")]
	public static extern void QPainter_DrawTiledPixmap3(Self* c_this, QRect* param1, QPixmap* param2);
	[LinkName("QPainter_DrawPicture")]
	public static extern void QPainter_DrawPicture(Self* c_this, QPointF* p, QPicture* picture);
	[LinkName("QPainter_DrawPicture2")]
	public static extern void QPainter_DrawPicture2(Self* c_this, int32 x, int32 y, QPicture* picture);
	[LinkName("QPainter_DrawPicture3")]
	public static extern void QPainter_DrawPicture3(Self* c_this, QPoint* p, QPicture* picture);
	[LinkName("QPainter_DrawPixmap")]
	public static extern void QPainter_DrawPixmap(Self* c_this, QRectF* targetRect, QPixmap* pixmap, QRectF* sourceRect);
	[LinkName("QPainter_DrawPixmap2")]
	public static extern void QPainter_DrawPixmap2(Self* c_this, QRect* targetRect, QPixmap* pixmap, QRect* sourceRect);
	[LinkName("QPainter_DrawPixmap3")]
	public static extern void QPainter_DrawPixmap3(Self* c_this, int32 x, int32 y, int32 w, int32 h, QPixmap* pm, int32 sx, int32 sy, int32 sw, int32 sh);
	[LinkName("QPainter_DrawPixmap4")]
	public static extern void QPainter_DrawPixmap4(Self* c_this, int32 x, int32 y, QPixmap* pm, int32 sx, int32 sy, int32 sw, int32 sh);
	[LinkName("QPainter_DrawPixmap5")]
	public static extern void QPainter_DrawPixmap5(Self* c_this, QPointF* p, QPixmap* pm, QRectF* sr);
	[LinkName("QPainter_DrawPixmap6")]
	public static extern void QPainter_DrawPixmap6(Self* c_this, QPoint* p, QPixmap* pm, QRect* sr);
	[LinkName("QPainter_DrawPixmap7")]
	public static extern void QPainter_DrawPixmap7(Self* c_this, QPointF* p, QPixmap* pm);
	[LinkName("QPainter_DrawPixmap8")]
	public static extern void QPainter_DrawPixmap8(Self* c_this, QPoint* p, QPixmap* pm);
	[LinkName("QPainter_DrawPixmap9")]
	public static extern void QPainter_DrawPixmap9(Self* c_this, int32 x, int32 y, QPixmap* pm);
	[LinkName("QPainter_DrawPixmap10")]
	public static extern void QPainter_DrawPixmap10(Self* c_this, QRect* r, QPixmap* pm);
	[LinkName("QPainter_DrawPixmap11")]
	public static extern void QPainter_DrawPixmap11(Self* c_this, int32 x, int32 y, int32 w, int32 h, QPixmap* pm);
	[LinkName("QPainter_DrawPixmapFragments")]
	public static extern void QPainter_DrawPixmapFragments(Self* c_this, QPainter__PixmapFragment* fragments, int32 fragmentCount, QPixmap* pixmap);
	[LinkName("QPainter_DrawImage")]
	public static extern void QPainter_DrawImage(Self* c_this, QRectF* targetRect, QImage* image, QRectF* sourceRect);
	[LinkName("QPainter_DrawImage2")]
	public static extern void QPainter_DrawImage2(Self* c_this, QRect* targetRect, QImage* image, QRect* sourceRect);
	[LinkName("QPainter_DrawImage3")]
	public static extern void QPainter_DrawImage3(Self* c_this, QPointF* p, QImage* image, QRectF* sr);
	[LinkName("QPainter_DrawImage4")]
	public static extern void QPainter_DrawImage4(Self* c_this, QPoint* p, QImage* image, QRect* sr);
	[LinkName("QPainter_DrawImage5")]
	public static extern void QPainter_DrawImage5(Self* c_this, QRectF* r, QImage* image);
	[LinkName("QPainter_DrawImage6")]
	public static extern void QPainter_DrawImage6(Self* c_this, QRect* r, QImage* image);
	[LinkName("QPainter_DrawImage7")]
	public static extern void QPainter_DrawImage7(Self* c_this, QPointF* p, QImage* image);
	[LinkName("QPainter_DrawImage8")]
	public static extern void QPainter_DrawImage8(Self* c_this, QPoint* p, QImage* image);
	[LinkName("QPainter_DrawImage9")]
	public static extern void QPainter_DrawImage9(Self* c_this, int32 x, int32 y, QImage* image);
	[LinkName("QPainter_SetLayoutDirection")]
	public static extern void QPainter_SetLayoutDirection(Self* c_this, int64 direction);
	[LinkName("QPainter_LayoutDirection")]
	public static extern int64 QPainter_LayoutDirection(Self* c_this);
	[LinkName("QPainter_DrawGlyphRun")]
	public static extern void QPainter_DrawGlyphRun(Self* c_this, QPointF* position, QGlyphRun* glyphRun);
	[LinkName("QPainter_DrawStaticText")]
	public static extern void QPainter_DrawStaticText(Self* c_this, QPointF* topLeftPosition, QStaticText* staticText);
	[LinkName("QPainter_DrawStaticText2")]
	public static extern void QPainter_DrawStaticText2(Self* c_this, QPoint* topLeftPosition, QStaticText* staticText);
	[LinkName("QPainter_DrawStaticText3")]
	public static extern void QPainter_DrawStaticText3(Self* c_this, int32 left, int32 top, QStaticText* staticText);
	[LinkName("QPainter_DrawText")]
	public static extern void QPainter_DrawText(Self* c_this, QPointF* p, libqt_string s);
	[LinkName("QPainter_DrawText2")]
	public static extern void QPainter_DrawText2(Self* c_this, QPoint* p, libqt_string s);
	[LinkName("QPainter_DrawText3")]
	public static extern void QPainter_DrawText3(Self* c_this, int32 x, int32 y, libqt_string s);
	[LinkName("QPainter_DrawText4")]
	public static extern void QPainter_DrawText4(Self* c_this, QPointF* p, libqt_string str, int32 tf, int32 justificationPadding);
	[LinkName("QPainter_DrawText5")]
	public static extern void QPainter_DrawText5(Self* c_this, QRectF* r, int32 flags, libqt_string text);
	[LinkName("QPainter_DrawText6")]
	public static extern void QPainter_DrawText6(Self* c_this, QRect* r, int32 flags, libqt_string text);
	[LinkName("QPainter_DrawText7")]
	public static extern void QPainter_DrawText7(Self* c_this, int32 x, int32 y, int32 w, int32 h, int32 flags, libqt_string text);
	[LinkName("QPainter_DrawText8")]
	public static extern void QPainter_DrawText8(Self* c_this, QRectF* r, libqt_string text);
	[LinkName("QPainter_BoundingRect")]
	public static extern QRectF QPainter_BoundingRect(Self* c_this, QRectF* rect, int32 flags, libqt_string text);
	[LinkName("QPainter_BoundingRect2")]
	public static extern QRect QPainter_BoundingRect2(Self* c_this, QRect* rect, int32 flags, libqt_string text);
	[LinkName("QPainter_BoundingRect3")]
	public static extern QRect QPainter_BoundingRect3(Self* c_this, int32 x, int32 y, int32 w, int32 h, int32 flags, libqt_string text);
	[LinkName("QPainter_BoundingRect4")]
	public static extern QRectF QPainter_BoundingRect4(Self* c_this, QRectF* rect, libqt_string text);
	[LinkName("QPainter_DrawTextItem")]
	public static extern void QPainter_DrawTextItem(Self* c_this, QPointF* p, QTextItem* ti);
	[LinkName("QPainter_DrawTextItem2")]
	public static extern void QPainter_DrawTextItem2(Self* c_this, int32 x, int32 y, QTextItem* ti);
	[LinkName("QPainter_DrawTextItem3")]
	public static extern void QPainter_DrawTextItem3(Self* c_this, QPoint* p, QTextItem* ti);
	[LinkName("QPainter_FillRect")]
	public static extern void QPainter_FillRect(Self* c_this, QRectF* param1, QBrush* param2);
	[LinkName("QPainter_FillRect2")]
	public static extern void QPainter_FillRect2(Self* c_this, int32 x, int32 y, int32 w, int32 h, QBrush* param5);
	[LinkName("QPainter_FillRect3")]
	public static extern void QPainter_FillRect3(Self* c_this, QRect* param1, QBrush* param2);
	[LinkName("QPainter_FillRect4")]
	public static extern void QPainter_FillRect4(Self* c_this, QRectF* param1, QColor* color);
	[LinkName("QPainter_FillRect5")]
	public static extern void QPainter_FillRect5(Self* c_this, int32 x, int32 y, int32 w, int32 h, QColor* color);
	[LinkName("QPainter_FillRect6")]
	public static extern void QPainter_FillRect6(Self* c_this, QRect* param1, QColor* color);
	[LinkName("QPainter_FillRect7")]
	public static extern void QPainter_FillRect7(Self* c_this, int32 x, int32 y, int32 w, int32 h, int64 c);
	[LinkName("QPainter_FillRect8")]
	public static extern void QPainter_FillRect8(Self* c_this, QRect* r, int64 c);
	[LinkName("QPainter_FillRect9")]
	public static extern void QPainter_FillRect9(Self* c_this, QRectF* r, int64 c);
	[LinkName("QPainter_FillRect10")]
	public static extern void QPainter_FillRect10(Self* c_this, int32 x, int32 y, int32 w, int32 h, int64 style);
	[LinkName("QPainter_FillRect11")]
	public static extern void QPainter_FillRect11(Self* c_this, QRect* r, int64 style);
	[LinkName("QPainter_FillRect12")]
	public static extern void QPainter_FillRect12(Self* c_this, QRectF* r, int64 style);
	[LinkName("QPainter_FillRect13")]
	public static extern void QPainter_FillRect13(Self* c_this, int32 x, int32 y, int32 w, int32 h, int64 preset);
	[LinkName("QPainter_FillRect14")]
	public static extern void QPainter_FillRect14(Self* c_this, QRect* r, int64 preset);
	[LinkName("QPainter_FillRect15")]
	public static extern void QPainter_FillRect15(Self* c_this, QRectF* r, int64 preset);
	[LinkName("QPainter_EraseRect")]
	public static extern void QPainter_EraseRect(Self* c_this, QRectF* param1);
	[LinkName("QPainter_EraseRect2")]
	public static extern void QPainter_EraseRect2(Self* c_this, int32 x, int32 y, int32 w, int32 h);
	[LinkName("QPainter_EraseRectWithQRect")]
	public static extern void QPainter_EraseRectWithQRect(Self* c_this, QRect* param1);
	[LinkName("QPainter_SetRenderHint")]
	public static extern void QPainter_SetRenderHint(Self* c_this, int64 hint);
	[LinkName("QPainter_SetRenderHints")]
	public static extern void QPainter_SetRenderHints(Self* c_this, int64 hints);
	[LinkName("QPainter_RenderHints")]
	public static extern int64 QPainter_RenderHints(Self* c_this);
	[LinkName("QPainter_TestRenderHint")]
	public static extern bool QPainter_TestRenderHint(Self* c_this, int64 hint);
	[LinkName("QPainter_PaintEngine")]
	public static extern QPaintEngine* QPainter_PaintEngine(Self* c_this);
	[LinkName("QPainter_BeginNativePainting")]
	public static extern void QPainter_BeginNativePainting(Self* c_this);
	[LinkName("QPainter_EndNativePainting")]
	public static extern void QPainter_EndNativePainting(Self* c_this);
	[LinkName("QPainter_SetClipRect22")]
	public static extern void QPainter_SetClipRect22(Self* c_this, QRectF* param1, int64 op);
	[LinkName("QPainter_SetClipRect23")]
	public static extern void QPainter_SetClipRect23(Self* c_this, QRect* param1, int64 op);
	[LinkName("QPainter_SetClipRect5")]
	public static extern void QPainter_SetClipRect5(Self* c_this, int32 x, int32 y, int32 w, int32 h, int64 op);
	[LinkName("QPainter_SetClipRegion2")]
	public static extern void QPainter_SetClipRegion2(Self* c_this, QRegion* param1, int64 op);
	[LinkName("QPainter_SetClipPath2")]
	public static extern void QPainter_SetClipPath2(Self* c_this, QPainterPath* path, int64 op);
	[LinkName("QPainter_SetTransform2")]
	public static extern void QPainter_SetTransform2(Self* c_this, QTransform* transform, bool combine);
	[LinkName("QPainter_SetWorldTransform2")]
	public static extern void QPainter_SetWorldTransform2(Self* c_this, QTransform* matrix, bool combine);
	[LinkName("QPainter_DrawPolygon32")]
	public static extern void QPainter_DrawPolygon32(Self* c_this, QPointF* points, int32 pointCount, int64 fillRule);
	[LinkName("QPainter_DrawPolygon33")]
	public static extern void QPainter_DrawPolygon33(Self* c_this, QPoint* points, int32 pointCount, int64 fillRule);
	[LinkName("QPainter_DrawRoundedRect4")]
	public static extern void QPainter_DrawRoundedRect4(Self* c_this, QRectF* rect, double xRadius, double yRadius, int64 mode);
	[LinkName("QPainter_DrawRoundedRect7")]
	public static extern void QPainter_DrawRoundedRect7(Self* c_this, int32 x, int32 y, int32 w, int32 h, double xRadius, double yRadius, int64 mode);
	[LinkName("QPainter_DrawRoundedRect42")]
	public static extern void QPainter_DrawRoundedRect42(Self* c_this, QRect* rect, double xRadius, double yRadius, int64 mode);
	[LinkName("QPainter_DrawTiledPixmap32")]
	public static extern void QPainter_DrawTiledPixmap32(Self* c_this, QRectF* rect, QPixmap* pm, QPointF* offset);
	[LinkName("QPainter_DrawTiledPixmap6")]
	public static extern void QPainter_DrawTiledPixmap6(Self* c_this, int32 x, int32 y, int32 w, int32 h, QPixmap* param5, int32 sx);
	[LinkName("QPainter_DrawTiledPixmap7")]
	public static extern void QPainter_DrawTiledPixmap7(Self* c_this, int32 x, int32 y, int32 w, int32 h, QPixmap* param5, int32 sx, int32 sy);
	[LinkName("QPainter_DrawTiledPixmap33")]
	public static extern void QPainter_DrawTiledPixmap33(Self* c_this, QRect* param1, QPixmap* param2, QPoint* param3);
	[LinkName("QPainter_DrawPixmapFragments4")]
	public static extern void QPainter_DrawPixmapFragments4(Self* c_this, QPainter__PixmapFragment* fragments, int32 fragmentCount, QPixmap* pixmap, int64 hints);
	[LinkName("QPainter_DrawImage42")]
	public static extern void QPainter_DrawImage42(Self* c_this, QRectF* targetRect, QImage* image, QRectF* sourceRect, int64 flags);
	[LinkName("QPainter_DrawImage43")]
	public static extern void QPainter_DrawImage43(Self* c_this, QRect* targetRect, QImage* image, QRect* sourceRect, int64 flags);
	[LinkName("QPainter_DrawImage44")]
	public static extern void QPainter_DrawImage44(Self* c_this, QPointF* p, QImage* image, QRectF* sr, int64 flags);
	[LinkName("QPainter_DrawImage45")]
	public static extern void QPainter_DrawImage45(Self* c_this, QPoint* p, QImage* image, QRect* sr, int64 flags);
	[LinkName("QPainter_DrawImage46")]
	public static extern void QPainter_DrawImage46(Self* c_this, int32 x, int32 y, QImage* image, int32 sx);
	[LinkName("QPainter_DrawImage52")]
	public static extern void QPainter_DrawImage52(Self* c_this, int32 x, int32 y, QImage* image, int32 sx, int32 sy);
	[LinkName("QPainter_DrawImage62")]
	public static extern void QPainter_DrawImage62(Self* c_this, int32 x, int32 y, QImage* image, int32 sx, int32 sy, int32 sw);
	[LinkName("QPainter_DrawImage72")]
	public static extern void QPainter_DrawImage72(Self* c_this, int32 x, int32 y, QImage* image, int32 sx, int32 sy, int32 sw, int32 sh);
	[LinkName("QPainter_DrawImage82")]
	public static extern void QPainter_DrawImage82(Self* c_this, int32 x, int32 y, QImage* image, int32 sx, int32 sy, int32 sw, int32 sh, int64 flags);
	[LinkName("QPainter_DrawText42")]
	public static extern void QPainter_DrawText42(Self* c_this, QRectF* r, int32 flags, libqt_string text, QRectF* br);
	[LinkName("QPainter_DrawText43")]
	public static extern void QPainter_DrawText43(Self* c_this, QRect* r, int32 flags, libqt_string text, QRect* br);
	[LinkName("QPainter_DrawText72")]
	public static extern void QPainter_DrawText72(Self* c_this, int32 x, int32 y, int32 w, int32 h, int32 flags, libqt_string text, QRect* br);
	[LinkName("QPainter_DrawText32")]
	public static extern void QPainter_DrawText32(Self* c_this, QRectF* r, libqt_string text, QTextOption* o);
	[LinkName("QPainter_BoundingRect32")]
	public static extern QRectF QPainter_BoundingRect32(Self* c_this, QRectF* rect, libqt_string text, QTextOption* o);
	[LinkName("QPainter_SetRenderHint2")]
	public static extern void QPainter_SetRenderHint2(Self* c_this, int64 hint, bool on);
	[LinkName("QPainter_SetRenderHints2")]
	public static extern void QPainter_SetRenderHints2(Self* c_this, int64 hints, bool on);
}
public struct QPainter__PixmapFragment
{
	[LinkName("QPainter__PixmapFragment_Create")]
	public static extern QPainter__PixmapFragment QPainter__PixmapFragment_Create(QPointF* pos, QRectF* sourceRect);
	[LinkName("QPainter__PixmapFragment_Create3")]
	public static extern QPainter__PixmapFragment QPainter__PixmapFragment_Create3(QPointF* pos, QRectF* sourceRect, double scaleX);
	[LinkName("QPainter__PixmapFragment_Create4")]
	public static extern QPainter__PixmapFragment QPainter__PixmapFragment_Create4(QPointF* pos, QRectF* sourceRect, double scaleX, double scaleY);
	[LinkName("QPainter__PixmapFragment_Create5")]
	public static extern QPainter__PixmapFragment QPainter__PixmapFragment_Create5(QPointF* pos, QRectF* sourceRect, double scaleX, double scaleY, double rotation);
	[LinkName("QPainter__PixmapFragment_Create6")]
	public static extern QPainter__PixmapFragment QPainter__PixmapFragment_Create6(QPointF* pos, QRectF* sourceRect, double scaleX, double scaleY, double rotation, double opacity);
}