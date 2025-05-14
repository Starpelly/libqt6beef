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
public interface IQTextItem
{
	void* NativePtr { get; }
}
public struct QTextItemPtr : IQTextItem, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQTextItem other)
	{
		return .(CQt.QTextItem_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
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
public class QTextItem
{
	public QTextItemPtr handle;
	
	public static implicit operator QTextItemPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQTextItem other)
	{
		this.handle = QTextItemPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public double Descent()
	{
		return this.handle.Descent();
	}
	
	public double Ascent()
	{
		return this.handle.Ascent();
	}
	
	public double Width()
	{
		return this.handle.Width();
	}
	
	public int64 RenderFlags()
	{
		return this.handle.RenderFlags();
	}
	
	public libqt_string Text()
	{
		return this.handle.Text();
	}
	
	public void Font()
	{
		this.handle.Font();
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
public interface IQPaintEngine
{
	void* NativePtr { get; }
}
public struct QPaintEnginePtr : IQPaintEngine, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QPaintEngine_new());
	}
	
	public void Dispose()
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
	
	public bool Begin(IQPaintDevice pdev)
	{
		return CQt.QPaintEngine_Begin(this.nativePtr, (pdev == default || pdev.NativePtr == default) ? default : pdev.NativePtr);
	}
	
	public bool End()
	{
		return CQt.QPaintEngine_End(this.nativePtr);
	}
	
	public void UpdateState(IQPaintEngineState state)
	{
		CQt.QPaintEngine_UpdateState(this.nativePtr, (state == default || state.NativePtr == default) ? default : state.NativePtr);
	}
	
	public void DrawRects(IQRect rects, int32 rectCount)
	{
		CQt.QPaintEngine_DrawRects(this.nativePtr, (rects == default || rects.NativePtr == default) ? default : rects.NativePtr, rectCount);
	}
	
	public void DrawRects2(IQRectF rects, int32 rectCount)
	{
		CQt.QPaintEngine_DrawRects2(this.nativePtr, (rects == default || rects.NativePtr == default) ? default : rects.NativePtr, rectCount);
	}
	
	public void DrawLines(IQLine lines, int32 lineCount)
	{
		CQt.QPaintEngine_DrawLines(this.nativePtr, (lines == default || lines.NativePtr == default) ? default : lines.NativePtr, lineCount);
	}
	
	public void DrawLines2(IQLineF lines, int32 lineCount)
	{
		CQt.QPaintEngine_DrawLines2(this.nativePtr, (lines == default || lines.NativePtr == default) ? default : lines.NativePtr, lineCount);
	}
	
	public void DrawEllipse(IQRectF r)
	{
		CQt.QPaintEngine_DrawEllipse(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr);
	}
	
	public void DrawEllipseWithQRect(IQRect r)
	{
		CQt.QPaintEngine_DrawEllipseWithQRect(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr);
	}
	
	public void DrawPath(IQPainterPath path)
	{
		CQt.QPaintEngine_DrawPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void DrawPoints(IQPointF points, int32 pointCount)
	{
		CQt.QPaintEngine_DrawPoints(this.nativePtr, (points == default || points.NativePtr == default) ? default : points.NativePtr, pointCount);
	}
	
	public void DrawPoints2(IQPoint points, int32 pointCount)
	{
		CQt.QPaintEngine_DrawPoints2(this.nativePtr, (points == default || points.NativePtr == default) ? default : points.NativePtr, pointCount);
	}
	
	public void DrawPolygon(IQPointF points, int32 pointCount, int64 mode)
	{
		CQt.QPaintEngine_DrawPolygon(this.nativePtr, (points == default || points.NativePtr == default) ? default : points.NativePtr, pointCount, (int64)mode);
	}
	
	public void DrawPolygon2(IQPoint points, int32 pointCount, int64 mode)
	{
		CQt.QPaintEngine_DrawPolygon2(this.nativePtr, (points == default || points.NativePtr == default) ? default : points.NativePtr, pointCount, (int64)mode);
	}
	
	public void DrawPixmap(IQRectF r, IQPixmap pm, IQRectF sr)
	{
		CQt.QPaintEngine_DrawPixmap(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr, (pm == default || pm.NativePtr == default) ? default : pm.NativePtr, (sr == default || sr.NativePtr == default) ? default : sr.NativePtr);
	}
	
	public void DrawTextItem(IQPointF p, IQTextItem textItem)
	{
		CQt.QPaintEngine_DrawTextItem(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr, (textItem == default || textItem.NativePtr == default) ? default : textItem.NativePtr);
	}
	
	public void DrawTiledPixmap(IQRectF r, IQPixmap pixmap, IQPointF s)
	{
		CQt.QPaintEngine_DrawTiledPixmap(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr, (pixmap == default || pixmap.NativePtr == default) ? default : pixmap.NativePtr, (s == default || s.NativePtr == default) ? default : s.NativePtr);
	}
	
	public void DrawImage(IQRectF r, IQImage pm, IQRectF sr, int64 flags)
	{
		CQt.QPaintEngine_DrawImage(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr, (pm == default || pm.NativePtr == default) ? default : pm.NativePtr, (sr == default || sr.NativePtr == default) ? default : sr.NativePtr, flags);
	}
	
	public void SetPaintDevice(IQPaintDevice device)
	{
		CQt.QPaintEngine_SetPaintDevice(this.nativePtr, (device == default || device.NativePtr == default) ? default : device.NativePtr);
	}
	
	public void* PaintDevice()
	{
		return CQt.QPaintEngine_PaintDevice(this.nativePtr);
	}
	
	public void SetSystemClip(IQRegion baseClip)
	{
		CQt.QPaintEngine_SetSystemClip(this.nativePtr, (baseClip == default || baseClip.NativePtr == default) ? default : baseClip.NativePtr);
	}
	
	public void SystemClip()
	{
		CQt.QPaintEngine_SystemClip(this.nativePtr);
	}
	
	public void SetSystemRect(IQRect rect)
	{
		CQt.QPaintEngine_SetSystemRect(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void SystemRect()
	{
		CQt.QPaintEngine_SystemRect(this.nativePtr);
	}
	
	public void CoordinateOffset()
	{
		CQt.QPaintEngine_CoordinateOffset(this.nativePtr);
	}
	
	public int64 Type()
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
	
	public void CreatePixmap(IQSize size)
	{
		CQt.QPaintEngine_CreatePixmap(this.nativePtr, default);
	}
	
	public void CreatePixmapFromImage(IQImage image, int64 flags)
	{
		CQt.QPaintEngine_CreatePixmapFromImage(this.nativePtr, default, flags);
	}
	
}
public class QPaintEngine
{
	public QPaintEnginePtr handle;
	
	public static implicit operator QPaintEnginePtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QPaintEnginePtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public bool IsActive()
	{
		return this.handle.IsActive();
	}
	
	public void SetActive(bool newState)
	{
		this.handle.SetActive(newState);
	}
	
	public virtual bool Begin(IQPaintDevice pdev)
	{
		return this.handle.Begin(pdev);
	}
	
	public virtual bool End()
	{
		return this.handle.End();
	}
	
	public virtual void UpdateState(IQPaintEngineState state)
	{
		this.handle.UpdateState(state);
	}
	
	public virtual void DrawRects(IQRect rects, int32 rectCount)
	{
		this.handle.DrawRects(rects, rectCount);
	}
	
	public virtual void DrawRects2(IQRectF rects, int32 rectCount)
	{
		this.handle.DrawRects2(rects, rectCount);
	}
	
	public virtual void DrawLines(IQLine lines, int32 lineCount)
	{
		this.handle.DrawLines(lines, lineCount);
	}
	
	public virtual void DrawLines2(IQLineF lines, int32 lineCount)
	{
		this.handle.DrawLines2(lines, lineCount);
	}
	
	public virtual void DrawEllipse(IQRectF r)
	{
		this.handle.DrawEllipse(r);
	}
	
	public virtual void DrawEllipseWithQRect(IQRect r)
	{
		this.handle.DrawEllipseWithQRect(r);
	}
	
	public virtual void DrawPath(IQPainterPath path)
	{
		this.handle.DrawPath(path);
	}
	
	public virtual void DrawPoints(IQPointF points, int32 pointCount)
	{
		this.handle.DrawPoints(points, pointCount);
	}
	
	public virtual void DrawPoints2(IQPoint points, int32 pointCount)
	{
		this.handle.DrawPoints2(points, pointCount);
	}
	
	public virtual void DrawPolygon(IQPointF points, int32 pointCount, int64 mode)
	{
		this.handle.DrawPolygon(points, pointCount, mode);
	}
	
	public virtual void DrawPolygon2(IQPoint points, int32 pointCount, int64 mode)
	{
		this.handle.DrawPolygon2(points, pointCount, mode);
	}
	
	public virtual void DrawPixmap(IQRectF r, IQPixmap pm, IQRectF sr)
	{
		this.handle.DrawPixmap(r, pm, sr);
	}
	
	public virtual void DrawTextItem(IQPointF p, IQTextItem textItem)
	{
		this.handle.DrawTextItem(p, textItem);
	}
	
	public virtual void DrawTiledPixmap(IQRectF r, IQPixmap pixmap, IQPointF s)
	{
		this.handle.DrawTiledPixmap(r, pixmap, s);
	}
	
	public virtual void DrawImage(IQRectF r, IQImage pm, IQRectF sr, int64 flags)
	{
		this.handle.DrawImage(r, pm, sr, flags);
	}
	
	public void SetPaintDevice(IQPaintDevice device)
	{
		this.handle.SetPaintDevice(device);
	}
	
	public void* PaintDevice()
	{
		return this.handle.PaintDevice();
	}
	
	public void SetSystemClip(IQRegion baseClip)
	{
		this.handle.SetSystemClip(baseClip);
	}
	
	public void SystemClip()
	{
		this.handle.SystemClip();
	}
	
	public void SetSystemRect(IQRect rect)
	{
		this.handle.SetSystemRect(rect);
	}
	
	public void SystemRect()
	{
		this.handle.SystemRect();
	}
	
	public virtual void CoordinateOffset()
	{
		this.handle.CoordinateOffset();
	}
	
	public virtual int64 Type()
	{
		return this.handle.Type();
	}
	
	public void FixNegRect(int32* x, int32* y, int32* w, int32* h)
	{
		this.handle.FixNegRect(x, y, w, h);
	}
	
	public bool TestDirty(int64 df)
	{
		return this.handle.TestDirty(df);
	}
	
	public void SetDirty(int64 df)
	{
		this.handle.SetDirty(df);
	}
	
	public void ClearDirty(int64 df)
	{
		this.handle.ClearDirty(df);
	}
	
	public bool HasFeature(int64 feature)
	{
		return this.handle.HasFeature(feature);
	}
	
	public void* Painter()
	{
		return this.handle.Painter();
	}
	
	public void SyncState()
	{
		this.handle.SyncState();
	}
	
	public bool IsExtended()
	{
		return this.handle.IsExtended();
	}
	
	public virtual void CreatePixmap(IQSize size)
	{
		this.handle.CreatePixmap(default);
	}
	
	public virtual void CreatePixmapFromImage(IQImage image, int64 flags)
	{
		this.handle.CreatePixmapFromImage(default, flags);
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
public interface IQPaintEngineState
{
	void* NativePtr { get; }
}
public struct QPaintEngineStatePtr : IQPaintEngineState, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQPaintEngineState other)
	{
		return .(CQt.QPaintEngineState_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
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
public class QPaintEngineState
{
	public QPaintEngineStatePtr handle;
	
	public static implicit operator QPaintEngineStatePtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQPaintEngineState other)
	{
		this.handle = QPaintEngineStatePtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public int64 State()
	{
		return this.handle.State();
	}
	
	public void Pen()
	{
		this.handle.Pen();
	}
	
	public void Brush()
	{
		this.handle.Brush();
	}
	
	public void BrushOrigin()
	{
		this.handle.BrushOrigin();
	}
	
	public void BackgroundBrush()
	{
		this.handle.BackgroundBrush();
	}
	
	public int64 BackgroundMode()
	{
		return this.handle.BackgroundMode();
	}
	
	public void Font()
	{
		this.handle.Font();
	}
	
	public void Transform()
	{
		this.handle.Transform();
	}
	
	public int64 ClipOperation()
	{
		return this.handle.ClipOperation();
	}
	
	public void ClipRegion()
	{
		this.handle.ClipRegion();
	}
	
	public void ClipPath()
	{
		this.handle.ClipPath();
	}
	
	public bool IsClipEnabled()
	{
		return this.handle.IsClipEnabled();
	}
	
	public int64 RenderHints()
	{
		return this.handle.RenderHints();
	}
	
	public int64 CompositionMode()
	{
		return this.handle.CompositionMode();
	}
	
	public double Opacity()
	{
		return this.handle.Opacity();
	}
	
	public void* Painter()
	{
		return this.handle.Painter();
	}
	
	public bool BrushNeedsResolving()
	{
		return this.handle.BrushNeedsResolving();
	}
	
	public bool PenNeedsResolving()
	{
		return this.handle.PenNeedsResolving();
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