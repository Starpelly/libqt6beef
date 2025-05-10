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
public class QTextItem
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QTextItem_new(other);
	}
	
	public ~this()
	{
		CQt.QTextItem_Delete(this.nativePtr);
	}
	
	public double Descent()
	{
		return CQt.QTextItem_Descent(this.nativePtr);
	}
	
	public double Ascent()
	{
		return CQt.QTextItem_Ascent(this.nativePtr);
	}
	
	public double Width()
	{
		return CQt.QTextItem_Width(this.nativePtr);
	}
	
	public int64 RenderFlags()
	{
		return CQt.QTextItem_RenderFlags(this.nativePtr);
	}
	
	public libqt_string Text()
	{
		return CQt.QTextItem_Text(this.nativePtr);
	}
	
	public void Font()
	{
		CQt.QTextItem_Font(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QTextItem_new")]
	public static extern void* QTextItem_new(void* other);
	[LinkName("QTextItem_new2")]
	public static extern void* QTextItem_new2(void* other);
	[LinkName("QTextItem_Descent")]
	public static extern double QTextItem_Descent(void* c_this);
	[LinkName("QTextItem_Ascent")]
	public static extern double QTextItem_Ascent(void* c_this);
	[LinkName("QTextItem_Width")]
	public static extern double QTextItem_Width(void* c_this);
	[LinkName("QTextItem_RenderFlags")]
	public static extern int64 QTextItem_RenderFlags(void* c_this);
	[LinkName("QTextItem_Text")]
	public static extern libqt_string QTextItem_Text(void* c_this);
	[LinkName("QTextItem_Font")]
	public static extern void QTextItem_Font(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QTextItem_Delete")]
	public static extern void QTextItem_Delete(void* self);
}
public class QPaintEngine
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QPaintEngine_new();
	}
	
	public ~this()
	{
		CQt.QPaintEngine_Delete(this.nativePtr);
	}
	
	public bool IsActive()
	{
		return CQt.QPaintEngine_IsActive(this.nativePtr);
	}
	
	public void SetActive(bool newState)
	{
		CQt.QPaintEngine_SetActive(this.nativePtr, newState);
	}
	
	public virtual bool Begin(void* pdev)
	{
		return CQt.QPaintEngine_Begin(this.nativePtr, pdev);
	}
	
	public virtual bool End()
	{
		return CQt.QPaintEngine_End(this.nativePtr);
	}
	
	public virtual void UpdateState(void* state)
	{
		CQt.QPaintEngine_UpdateState(this.nativePtr, state);
	}
	
	public virtual void DrawRects(void* rects, int32 rectCount)
	{
		CQt.QPaintEngine_DrawRects(this.nativePtr, rects, rectCount);
	}
	
	public virtual void DrawRects2(void* rects, int32 rectCount)
	{
		CQt.QPaintEngine_DrawRects2(this.nativePtr, rects, rectCount);
	}
	
	public virtual void DrawLines(void* lines, int32 lineCount)
	{
		CQt.QPaintEngine_DrawLines(this.nativePtr, lines, lineCount);
	}
	
	public virtual void DrawLines2(void* lines, int32 lineCount)
	{
		CQt.QPaintEngine_DrawLines2(this.nativePtr, lines, lineCount);
	}
	
	public virtual void DrawEllipse(void* r)
	{
		CQt.QPaintEngine_DrawEllipse(this.nativePtr, r);
	}
	
	public virtual void DrawEllipseWithQRect(void* r)
	{
		CQt.QPaintEngine_DrawEllipseWithQRect(this.nativePtr, r);
	}
	
	public virtual void DrawPath(void* path)
	{
		CQt.QPaintEngine_DrawPath(this.nativePtr, path);
	}
	
	public virtual void DrawPoints(void* points, int32 pointCount)
	{
		CQt.QPaintEngine_DrawPoints(this.nativePtr, points, pointCount);
	}
	
	public virtual void DrawPoints2(void* points, int32 pointCount)
	{
		CQt.QPaintEngine_DrawPoints2(this.nativePtr, points, pointCount);
	}
	
	public virtual void DrawPolygon(void* points, int32 pointCount, int64 mode)
	{
		CQt.QPaintEngine_DrawPolygon(this.nativePtr, points, pointCount, mode);
	}
	
	public virtual void DrawPolygon2(void* points, int32 pointCount, int64 mode)
	{
		CQt.QPaintEngine_DrawPolygon2(this.nativePtr, points, pointCount, mode);
	}
	
	public virtual void DrawPixmap(void* r, void* pm, void* sr)
	{
		CQt.QPaintEngine_DrawPixmap(this.nativePtr, r, pm, sr);
	}
	
	public virtual void DrawTextItem(void* p, void* textItem)
	{
		CQt.QPaintEngine_DrawTextItem(this.nativePtr, p, textItem);
	}
	
	public virtual void DrawTiledPixmap(void* r, void* pixmap, void* s)
	{
		CQt.QPaintEngine_DrawTiledPixmap(this.nativePtr, r, pixmap, s);
	}
	
	public virtual void DrawImage(void* r, void* pm, void* sr, int64 flags)
	{
		CQt.QPaintEngine_DrawImage(this.nativePtr, r, pm, sr, flags);
	}
	
	public void SetPaintDevice(void* device)
	{
		CQt.QPaintEngine_SetPaintDevice(this.nativePtr, device);
	}
	
	public void* PaintDevice()
	{
		return CQt.QPaintEngine_PaintDevice(this.nativePtr);
	}
	
	public void SetSystemClip(void* baseClip)
	{
		CQt.QPaintEngine_SetSystemClip(this.nativePtr, baseClip);
	}
	
	public void SystemClip()
	{
		CQt.QPaintEngine_SystemClip(this.nativePtr);
	}
	
	public void SetSystemRect(void* rect)
	{
		CQt.QPaintEngine_SetSystemRect(this.nativePtr, rect);
	}
	
	public void SystemRect()
	{
		CQt.QPaintEngine_SystemRect(this.nativePtr);
	}
	
	public virtual void CoordinateOffset()
	{
		CQt.QPaintEngine_CoordinateOffset(this.nativePtr);
	}
	
	public virtual int64 Type()
	{
		return CQt.QPaintEngine_Type(this.nativePtr);
	}
	
	public void FixNegRect(int32* x, int32* y, int32* w, int32* h)
	{
		CQt.QPaintEngine_FixNegRect(this.nativePtr, x, y, w, h);
	}
	
	public bool TestDirty(int64 df)
	{
		return CQt.QPaintEngine_TestDirty(this.nativePtr, df);
	}
	
	public void SetDirty(int64 df)
	{
		CQt.QPaintEngine_SetDirty(this.nativePtr, df);
	}
	
	public void ClearDirty(int64 df)
	{
		CQt.QPaintEngine_ClearDirty(this.nativePtr, df);
	}
	
	public bool HasFeature(int64 feature)
	{
		return CQt.QPaintEngine_HasFeature(this.nativePtr, feature);
	}
	
	public void* Painter()
	{
		return CQt.QPaintEngine_Painter(this.nativePtr);
	}
	
	public void SyncState()
	{
		CQt.QPaintEngine_SyncState(this.nativePtr);
	}
	
	public bool IsExtended()
	{
		return CQt.QPaintEngine_IsExtended(this.nativePtr);
	}
	
	public virtual void CreatePixmap(void size)
	{
		CQt.QPaintEngine_CreatePixmap(this.nativePtr, size);
	}
	
	public virtual void CreatePixmapFromImage(void image, int64 flags)
	{
		CQt.QPaintEngine_CreatePixmapFromImage(this.nativePtr, image, flags);
	}
	
}
extension CQt
{
	[LinkName("QPaintEngine_new")]
	public static extern void* QPaintEngine_new();
	[LinkName("QPaintEngine_new2")]
	public static extern void* QPaintEngine_new2(int64 features);
	[LinkName("QPaintEngine_IsActive")]
	public static extern bool QPaintEngine_IsActive(void* c_this);
	[LinkName("QPaintEngine_SetActive")]
	public static extern void QPaintEngine_SetActive(void* c_this, bool newState);
	[LinkName("QPaintEngine_Begin")]
	public static extern bool QPaintEngine_Begin(void* c_this, void* pdev);
	[LinkName("QPaintEngine_End")]
	public static extern bool QPaintEngine_End(void* c_this);
	[LinkName("QPaintEngine_UpdateState")]
	public static extern void QPaintEngine_UpdateState(void* c_this, void* state);
	[LinkName("QPaintEngine_DrawRects")]
	public static extern void QPaintEngine_DrawRects(void* c_this, void* rects, int32 rectCount);
	[LinkName("QPaintEngine_DrawRects2")]
	public static extern void QPaintEngine_DrawRects2(void* c_this, void* rects, int32 rectCount);
	[LinkName("QPaintEngine_DrawLines")]
	public static extern void QPaintEngine_DrawLines(void* c_this, void* lines, int32 lineCount);
	[LinkName("QPaintEngine_DrawLines2")]
	public static extern void QPaintEngine_DrawLines2(void* c_this, void* lines, int32 lineCount);
	[LinkName("QPaintEngine_DrawEllipse")]
	public static extern void QPaintEngine_DrawEllipse(void* c_this, void* r);
	[LinkName("QPaintEngine_DrawEllipseWithQRect")]
	public static extern void QPaintEngine_DrawEllipseWithQRect(void* c_this, void* r);
	[LinkName("QPaintEngine_DrawPath")]
	public static extern void QPaintEngine_DrawPath(void* c_this, void* path);
	[LinkName("QPaintEngine_DrawPoints")]
	public static extern void QPaintEngine_DrawPoints(void* c_this, void* points, int32 pointCount);
	[LinkName("QPaintEngine_DrawPoints2")]
	public static extern void QPaintEngine_DrawPoints2(void* c_this, void* points, int32 pointCount);
	[LinkName("QPaintEngine_DrawPolygon")]
	public static extern void QPaintEngine_DrawPolygon(void* c_this, void* points, int32 pointCount, int64 mode);
	[LinkName("QPaintEngine_DrawPolygon2")]
	public static extern void QPaintEngine_DrawPolygon2(void* c_this, void* points, int32 pointCount, int64 mode);
	[LinkName("QPaintEngine_DrawPixmap")]
	public static extern void QPaintEngine_DrawPixmap(void* c_this, void* r, void* pm, void* sr);
	[LinkName("QPaintEngine_DrawTextItem")]
	public static extern void QPaintEngine_DrawTextItem(void* c_this, void* p, void* textItem);
	[LinkName("QPaintEngine_DrawTiledPixmap")]
	public static extern void QPaintEngine_DrawTiledPixmap(void* c_this, void* r, void* pixmap, void* s);
	[LinkName("QPaintEngine_DrawImage")]
	public static extern void QPaintEngine_DrawImage(void* c_this, void* r, void* pm, void* sr, int64 flags);
	[LinkName("QPaintEngine_SetPaintDevice")]
	public static extern void QPaintEngine_SetPaintDevice(void* c_this, void* device);
	[LinkName("QPaintEngine_PaintDevice")]
	public static extern void* QPaintEngine_PaintDevice(void* c_this);
	[LinkName("QPaintEngine_SetSystemClip")]
	public static extern void QPaintEngine_SetSystemClip(void* c_this, void* baseClip);
	[LinkName("QPaintEngine_SystemClip")]
	public static extern void QPaintEngine_SystemClip(void* c_this);
	[LinkName("QPaintEngine_SetSystemRect")]
	public static extern void QPaintEngine_SetSystemRect(void* c_this, void* rect);
	[LinkName("QPaintEngine_SystemRect")]
	public static extern void QPaintEngine_SystemRect(void* c_this);
	[LinkName("QPaintEngine_CoordinateOffset")]
	public static extern void QPaintEngine_CoordinateOffset(void* c_this);
	[LinkName("QPaintEngine_Type")]
	public static extern int64 QPaintEngine_Type(void* c_this);
	[LinkName("QPaintEngine_FixNegRect")]
	public static extern void QPaintEngine_FixNegRect(void* c_this, int32* x, int32* y, int32* w, int32* h);
	[LinkName("QPaintEngine_TestDirty")]
	public static extern bool QPaintEngine_TestDirty(void* c_this, int64 df);
	[LinkName("QPaintEngine_SetDirty")]
	public static extern void QPaintEngine_SetDirty(void* c_this, int64 df);
	[LinkName("QPaintEngine_ClearDirty")]
	public static extern void QPaintEngine_ClearDirty(void* c_this, int64 df);
	[LinkName("QPaintEngine_HasFeature")]
	public static extern bool QPaintEngine_HasFeature(void* c_this, int64 feature);
	[LinkName("QPaintEngine_Painter")]
	public static extern void* QPaintEngine_Painter(void* c_this);
	[LinkName("QPaintEngine_SyncState")]
	public static extern void QPaintEngine_SyncState(void* c_this);
	[LinkName("QPaintEngine_IsExtended")]
	public static extern bool QPaintEngine_IsExtended(void* c_this);
	[LinkName("QPaintEngine_CreatePixmap")]
	public static extern void QPaintEngine_CreatePixmap(void* c_this, void size);
	[LinkName("QPaintEngine_CreatePixmapFromImage")]
	public static extern void QPaintEngine_CreatePixmapFromImage(void* c_this, void image, int64 flags);
	/// Delete this object from C++ memory
	[LinkName("QPaintEngine_Delete")]
	public static extern void QPaintEngine_Delete(void* self);
}
public class QPaintEngineState
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QPaintEngineState_new(other);
	}
	
	public ~this()
	{
		CQt.QPaintEngineState_Delete(this.nativePtr);
	}
	
	public int64 State()
	{
		return CQt.QPaintEngineState_State(this.nativePtr);
	}
	
	public void Pen()
	{
		CQt.QPaintEngineState_Pen(this.nativePtr);
	}
	
	public void Brush()
	{
		CQt.QPaintEngineState_Brush(this.nativePtr);
	}
	
	public void BrushOrigin()
	{
		CQt.QPaintEngineState_BrushOrigin(this.nativePtr);
	}
	
	public void BackgroundBrush()
	{
		CQt.QPaintEngineState_BackgroundBrush(this.nativePtr);
	}
	
	public int64 BackgroundMode()
	{
		return CQt.QPaintEngineState_BackgroundMode(this.nativePtr);
	}
	
	public void Font()
	{
		CQt.QPaintEngineState_Font(this.nativePtr);
	}
	
	public void Transform()
	{
		CQt.QPaintEngineState_Transform(this.nativePtr);
	}
	
	public int64 ClipOperation()
	{
		return CQt.QPaintEngineState_ClipOperation(this.nativePtr);
	}
	
	public void ClipRegion()
	{
		CQt.QPaintEngineState_ClipRegion(this.nativePtr);
	}
	
	public void ClipPath()
	{
		CQt.QPaintEngineState_ClipPath(this.nativePtr);
	}
	
	public bool IsClipEnabled()
	{
		return CQt.QPaintEngineState_IsClipEnabled(this.nativePtr);
	}
	
	public int64 RenderHints()
	{
		return CQt.QPaintEngineState_RenderHints(this.nativePtr);
	}
	
	public int64 CompositionMode()
	{
		return CQt.QPaintEngineState_CompositionMode(this.nativePtr);
	}
	
	public double Opacity()
	{
		return CQt.QPaintEngineState_Opacity(this.nativePtr);
	}
	
	public void* Painter()
	{
		return CQt.QPaintEngineState_Painter(this.nativePtr);
	}
	
	public bool BrushNeedsResolving()
	{
		return CQt.QPaintEngineState_BrushNeedsResolving(this.nativePtr);
	}
	
	public bool PenNeedsResolving()
	{
		return CQt.QPaintEngineState_PenNeedsResolving(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QPaintEngineState_new")]
	public static extern void* QPaintEngineState_new(void* other);
	[LinkName("QPaintEngineState_new2")]
	public static extern void* QPaintEngineState_new2(void* other);
	[LinkName("QPaintEngineState_State")]
	public static extern int64 QPaintEngineState_State(void* c_this);
	[LinkName("QPaintEngineState_Pen")]
	public static extern void QPaintEngineState_Pen(void* c_this);
	[LinkName("QPaintEngineState_Brush")]
	public static extern void QPaintEngineState_Brush(void* c_this);
	[LinkName("QPaintEngineState_BrushOrigin")]
	public static extern void QPaintEngineState_BrushOrigin(void* c_this);
	[LinkName("QPaintEngineState_BackgroundBrush")]
	public static extern void QPaintEngineState_BackgroundBrush(void* c_this);
	[LinkName("QPaintEngineState_BackgroundMode")]
	public static extern int64 QPaintEngineState_BackgroundMode(void* c_this);
	[LinkName("QPaintEngineState_Font")]
	public static extern void QPaintEngineState_Font(void* c_this);
	[LinkName("QPaintEngineState_Transform")]
	public static extern void QPaintEngineState_Transform(void* c_this);
	[LinkName("QPaintEngineState_ClipOperation")]
	public static extern int64 QPaintEngineState_ClipOperation(void* c_this);
	[LinkName("QPaintEngineState_ClipRegion")]
	public static extern void QPaintEngineState_ClipRegion(void* c_this);
	[LinkName("QPaintEngineState_ClipPath")]
	public static extern void QPaintEngineState_ClipPath(void* c_this);
	[LinkName("QPaintEngineState_IsClipEnabled")]
	public static extern bool QPaintEngineState_IsClipEnabled(void* c_this);
	[LinkName("QPaintEngineState_RenderHints")]
	public static extern int64 QPaintEngineState_RenderHints(void* c_this);
	[LinkName("QPaintEngineState_CompositionMode")]
	public static extern int64 QPaintEngineState_CompositionMode(void* c_this);
	[LinkName("QPaintEngineState_Opacity")]
	public static extern double QPaintEngineState_Opacity(void* c_this);
	[LinkName("QPaintEngineState_Painter")]
	public static extern void* QPaintEngineState_Painter(void* c_this);
	[LinkName("QPaintEngineState_BrushNeedsResolving")]
	public static extern bool QPaintEngineState_BrushNeedsResolving(void* c_this);
	[LinkName("QPaintEngineState_PenNeedsResolving")]
	public static extern bool QPaintEngineState_PenNeedsResolving(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QPaintEngineState_Delete")]
	public static extern void QPaintEngineState_Delete(void* self);
}