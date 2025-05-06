using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QTextItem__RenderFlag
{
	RightToLeft = 1,
	Overline = 16,
	Underline = 32,
	StrikeOut = 64,
	Dummy = 4294967295,
}
[AllowDuplicates]
public enum QPaintEngine__PaintEngineFeature
{
	PrimitiveTransform = 1,
	PatternTransform = 2,
	PixmapTransform = 4,
	PatternBrush = 8,
	LinearGradientFill = 16,
	RadialGradientFill = 32,
	ConicalGradientFill = 64,
	AlphaBlend = 128,
	PorterDuff = 256,
	PainterPaths = 512,
	Antialiasing = 1024,
	BrushStroke = 2048,
	ConstantOpacity = 4096,
	MaskedBrush = 8192,
	PerspectiveTransform = 16384,
	BlendModes = 32768,
	ObjectBoundingModeGradients = 65536,
	RasterOpModes = 131072,
	PaintOutsidePaintEvent = 536870912,
	AllFeatures = 4294967295,
}
[AllowDuplicates]
public enum QPaintEngine__DirtyFlag
{
	DirtyPen = 1,
	DirtyBrush = 2,
	DirtyBrushOrigin = 4,
	DirtyFont = 8,
	DirtyBackground = 16,
	DirtyBackgroundMode = 32,
	DirtyTransform = 64,
	DirtyClipRegion = 128,
	DirtyClipPath = 256,
	DirtyHints = 512,
	DirtyCompositionMode = 1024,
	DirtyClipEnabled = 2048,
	DirtyOpacity = 4096,
	AllDirty = 65535,
}
[AllowDuplicates]
public enum QPaintEngine__PolygonDrawMode
{
	OddEvenMode = 0,
	WindingMode = 1,
	ConvexMode = 2,
	PolylineMode = 3,
}
[AllowDuplicates]
public enum QPaintEngine__Type
{
	X11 = 0,
	Windows = 1,
	QuickDraw = 2,
	CoreGraphics = 3,
	MacPrinter = 4,
	QWindowSystem = 5,
	OpenGL = 6,
	Picture = 7,
	SVG = 8,
	Raster = 9,
	Direct3D = 10,
	Pdf = 11,
	OpenVG = 12,
	OpenGL2 = 13,
	PaintBuffer = 14,
	Blitter = 15,
	Direct2D = 16,
	User = 50,
	MaxUser = 100,
}
public struct QTextItem
{
	[LinkName("QTextItem_new")]
	public static extern QTextItem* QTextItem_new(QTextItem* other);
	[LinkName("QTextItem_new2")]
	public static extern QTextItem* QTextItem_new2(QTextItem* other);
	[LinkName("QTextItem_Descent")]
	public static extern double QTextItem_Descent(Self* c_this);
	[LinkName("QTextItem_Ascent")]
	public static extern double QTextItem_Ascent(Self* c_this);
	[LinkName("QTextItem_Width")]
	public static extern double QTextItem_Width(Self* c_this);
	[LinkName("QTextItem_RenderFlags")]
	public static extern int64 QTextItem_RenderFlags(Self* c_this);
	[LinkName("QTextItem_Text")]
	public static extern libqt_string QTextItem_Text(Self* c_this);
	[LinkName("QTextItem_Font")]
	public static extern QFont QTextItem_Font(Self* c_this);
}
public struct QPaintEngine
{
	[LinkName("QPaintEngine_new")]
	public static extern QPaintEngine* QPaintEngine_new();
	[LinkName("QPaintEngine_new2")]
	public static extern QPaintEngine* QPaintEngine_new2(int64 features);
	[LinkName("QPaintEngine_IsActive")]
	public static extern bool QPaintEngine_IsActive(Self* c_this);
	[LinkName("QPaintEngine_SetActive")]
	public static extern void QPaintEngine_SetActive(Self* c_this, bool newState);
	[LinkName("QPaintEngine_Begin")]
	public static extern bool QPaintEngine_Begin(Self* c_this, QPaintDevice* pdev);
	[LinkName("QPaintEngine_End")]
	public static extern bool QPaintEngine_End(Self* c_this);
	[LinkName("QPaintEngine_UpdateState")]
	public static extern void QPaintEngine_UpdateState(Self* c_this, QPaintEngineState* state);
	[LinkName("QPaintEngine_DrawRects")]
	public static extern void QPaintEngine_DrawRects(Self* c_this, QRect* rects, int32 rectCount);
	[LinkName("QPaintEngine_DrawRects2")]
	public static extern void QPaintEngine_DrawRects2(Self* c_this, QRectF* rects, int32 rectCount);
	[LinkName("QPaintEngine_DrawLines")]
	public static extern void QPaintEngine_DrawLines(Self* c_this, QLine* lines, int32 lineCount);
	[LinkName("QPaintEngine_DrawLines2")]
	public static extern void QPaintEngine_DrawLines2(Self* c_this, QLineF* lines, int32 lineCount);
	[LinkName("QPaintEngine_DrawEllipse")]
	public static extern void QPaintEngine_DrawEllipse(Self* c_this, QRectF* r);
	[LinkName("QPaintEngine_DrawEllipseWithQRect")]
	public static extern void QPaintEngine_DrawEllipseWithQRect(Self* c_this, QRect* r);
	[LinkName("QPaintEngine_DrawPath")]
	public static extern void QPaintEngine_DrawPath(Self* c_this, QPainterPath* path);
	[LinkName("QPaintEngine_DrawPoints")]
	public static extern void QPaintEngine_DrawPoints(Self* c_this, QPointF* points, int32 pointCount);
	[LinkName("QPaintEngine_DrawPoints2")]
	public static extern void QPaintEngine_DrawPoints2(Self* c_this, QPoint* points, int32 pointCount);
	[LinkName("QPaintEngine_DrawPolygon")]
	public static extern void QPaintEngine_DrawPolygon(Self* c_this, QPointF* points, int32 pointCount, int64 mode);
	[LinkName("QPaintEngine_DrawPolygon2")]
	public static extern void QPaintEngine_DrawPolygon2(Self* c_this, QPoint* points, int32 pointCount, int64 mode);
	[LinkName("QPaintEngine_DrawPixmap")]
	public static extern void QPaintEngine_DrawPixmap(Self* c_this, QRectF* r, QPixmap* pm, QRectF* sr);
	[LinkName("QPaintEngine_DrawTextItem")]
	public static extern void QPaintEngine_DrawTextItem(Self* c_this, QPointF* p, QTextItem* textItem);
	[LinkName("QPaintEngine_DrawTiledPixmap")]
	public static extern void QPaintEngine_DrawTiledPixmap(Self* c_this, QRectF* r, QPixmap* pixmap, QPointF* s);
	[LinkName("QPaintEngine_DrawImage")]
	public static extern void QPaintEngine_DrawImage(Self* c_this, QRectF* r, QImage* pm, QRectF* sr, int64 flags);
	[LinkName("QPaintEngine_SetPaintDevice")]
	public static extern void QPaintEngine_SetPaintDevice(Self* c_this, QPaintDevice* device);
	[LinkName("QPaintEngine_PaintDevice")]
	public static extern QPaintDevice* QPaintEngine_PaintDevice(Self* c_this);
	[LinkName("QPaintEngine_SetSystemClip")]
	public static extern void QPaintEngine_SetSystemClip(Self* c_this, QRegion* baseClip);
	[LinkName("QPaintEngine_SystemClip")]
	public static extern QRegion QPaintEngine_SystemClip(Self* c_this);
	[LinkName("QPaintEngine_SetSystemRect")]
	public static extern void QPaintEngine_SetSystemRect(Self* c_this, QRect* rect);
	[LinkName("QPaintEngine_SystemRect")]
	public static extern QRect QPaintEngine_SystemRect(Self* c_this);
	[LinkName("QPaintEngine_CoordinateOffset")]
	public static extern QPoint QPaintEngine_CoordinateOffset(Self* c_this);
	[LinkName("QPaintEngine_Type")]
	public static extern int64 QPaintEngine_Type(Self* c_this);
	[LinkName("QPaintEngine_FixNegRect")]
	public static extern void QPaintEngine_FixNegRect(Self* c_this, int32* x, int32* y, int32* w, int32* h);
	[LinkName("QPaintEngine_TestDirty")]
	public static extern bool QPaintEngine_TestDirty(Self* c_this, int64 df);
	[LinkName("QPaintEngine_SetDirty")]
	public static extern void QPaintEngine_SetDirty(Self* c_this, int64 df);
	[LinkName("QPaintEngine_ClearDirty")]
	public static extern void QPaintEngine_ClearDirty(Self* c_this, int64 df);
	[LinkName("QPaintEngine_HasFeature")]
	public static extern bool QPaintEngine_HasFeature(Self* c_this, int64 feature);
	[LinkName("QPaintEngine_Painter")]
	public static extern QPainter* QPaintEngine_Painter(Self* c_this);
	[LinkName("QPaintEngine_SyncState")]
	public static extern void QPaintEngine_SyncState(Self* c_this);
	[LinkName("QPaintEngine_IsExtended")]
	public static extern bool QPaintEngine_IsExtended(Self* c_this);
	[LinkName("QPaintEngine_CreatePixmap")]
	public static extern QPixmap QPaintEngine_CreatePixmap(Self* c_this, QSize size);
	[LinkName("QPaintEngine_CreatePixmapFromImage")]
	public static extern QPixmap QPaintEngine_CreatePixmapFromImage(Self* c_this, QImage image, int64 flags);
}
public struct QPaintEngineState
{
	[LinkName("QPaintEngineState_new")]
	public static extern QPaintEngineState* QPaintEngineState_new(QPaintEngineState* other);
	[LinkName("QPaintEngineState_new2")]
	public static extern QPaintEngineState* QPaintEngineState_new2(QPaintEngineState* other);
	[LinkName("QPaintEngineState_State")]
	public static extern int64 QPaintEngineState_State(Self* c_this);
	[LinkName("QPaintEngineState_Pen")]
	public static extern QPen QPaintEngineState_Pen(Self* c_this);
	[LinkName("QPaintEngineState_Brush")]
	public static extern QBrush QPaintEngineState_Brush(Self* c_this);
	[LinkName("QPaintEngineState_BrushOrigin")]
	public static extern QPointF QPaintEngineState_BrushOrigin(Self* c_this);
	[LinkName("QPaintEngineState_BackgroundBrush")]
	public static extern QBrush QPaintEngineState_BackgroundBrush(Self* c_this);
	[LinkName("QPaintEngineState_BackgroundMode")]
	public static extern int64 QPaintEngineState_BackgroundMode(Self* c_this);
	[LinkName("QPaintEngineState_Font")]
	public static extern QFont QPaintEngineState_Font(Self* c_this);
	[LinkName("QPaintEngineState_Transform")]
	public static extern QTransform QPaintEngineState_Transform(Self* c_this);
	[LinkName("QPaintEngineState_ClipOperation")]
	public static extern int64 QPaintEngineState_ClipOperation(Self* c_this);
	[LinkName("QPaintEngineState_ClipRegion")]
	public static extern QRegion QPaintEngineState_ClipRegion(Self* c_this);
	[LinkName("QPaintEngineState_ClipPath")]
	public static extern QPainterPath QPaintEngineState_ClipPath(Self* c_this);
	[LinkName("QPaintEngineState_IsClipEnabled")]
	public static extern bool QPaintEngineState_IsClipEnabled(Self* c_this);
	[LinkName("QPaintEngineState_RenderHints")]
	public static extern int64 QPaintEngineState_RenderHints(Self* c_this);
	[LinkName("QPaintEngineState_CompositionMode")]
	public static extern int64 QPaintEngineState_CompositionMode(Self* c_this);
	[LinkName("QPaintEngineState_Opacity")]
	public static extern double QPaintEngineState_Opacity(Self* c_this);
	[LinkName("QPaintEngineState_Painter")]
	public static extern QPainter* QPaintEngineState_Painter(Self* c_this);
	[LinkName("QPaintEngineState_BrushNeedsResolving")]
	public static extern bool QPaintEngineState_BrushNeedsResolving(Self* c_this);
	[LinkName("QPaintEngineState_PenNeedsResolving")]
	public static extern bool QPaintEngineState_PenNeedsResolving(Self* c_this);
}