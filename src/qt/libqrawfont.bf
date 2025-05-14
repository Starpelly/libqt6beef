using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QRawFont__AntialiasingType
{
	PixelAntialiasing = 0,
	SubPixelAntialiasing = 1,
}
[AllowDuplicates]
public enum QRawFont__LayoutFlag
{
	SeparateAdvances = 0,
	KernedAdvances = 1,
	UseDesignMetrics = 2,
}
public interface IQRawFont
{
	void* NativePtr { get; }
}
public struct QRawFontPtr : IQRawFont, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QRawFont_new());
	}
	
	public void Dispose()
	{
		CQt.QRawFont_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQRawFont other)
	{
		CQt.QRawFont_OperatorAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void Swap(IQRawFont other)
	{
		CQt.QRawFont_Swap(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QRawFont_IsValid(this.nativePtr);
	}
	
	public bool OperatorEqual(IQRawFont other)
	{
		return CQt.QRawFont_OperatorEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorNotEqual(IQRawFont other)
	{
		return CQt.QRawFont_OperatorNotEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public libqt_string FamilyName()
	{
		return CQt.QRawFont_FamilyName(this.nativePtr);
	}
	
	public libqt_string StyleName()
	{
		return CQt.QRawFont_StyleName(this.nativePtr);
	}
	
	public int64 Style()
	{
		return CQt.QRawFont_Style(this.nativePtr);
	}
	
	public int32 Weight()
	{
		return CQt.QRawFont_Weight(this.nativePtr);
	}
	
	public uint32[] GlyphIndexesForString(String text)
	{
		return CQt.QRawFont_GlyphIndexesForString(this.nativePtr, libqt_string(text));
	}
	
	public void[] AdvancesForGlyphIndexes(uint32[] glyphIndexes)
	{
		return CQt.QRawFont_AdvancesForGlyphIndexes(this.nativePtr, null);
	}
	
	public void[] AdvancesForGlyphIndexes2(uint32[] glyphIndexes, int64 layoutFlags)
	{
		return CQt.QRawFont_AdvancesForGlyphIndexes2(this.nativePtr, null, layoutFlags);
	}
	
	public bool GlyphIndexesForChars(IQChar chars, int32 numChars, uint32* glyphIndexes, int32* numGlyphs)
	{
		return CQt.QRawFont_GlyphIndexesForChars(this.nativePtr, (chars == default || chars.NativePtr == default) ? default : chars.NativePtr, numChars, glyphIndexes, numGlyphs);
	}
	
	public bool AdvancesForGlyphIndexes3(uint32* glyphIndexes, IQPointF advances, int32 numGlyphs)
	{
		return CQt.QRawFont_AdvancesForGlyphIndexes3(this.nativePtr, glyphIndexes, (advances == default || advances.NativePtr == default) ? default : advances.NativePtr, numGlyphs);
	}
	
	public bool AdvancesForGlyphIndexes4(uint32* glyphIndexes, IQPointF advances, int32 numGlyphs, int64 layoutFlags)
	{
		return CQt.QRawFont_AdvancesForGlyphIndexes4(this.nativePtr, glyphIndexes, (advances == default || advances.NativePtr == default) ? default : advances.NativePtr, numGlyphs, layoutFlags);
	}
	
	public void AlphaMapForGlyph(uint32 glyphIndex)
	{
		CQt.QRawFont_AlphaMapForGlyph(this.nativePtr, glyphIndex);
	}
	
	public void PathForGlyph(uint32 glyphIndex)
	{
		CQt.QRawFont_PathForGlyph(this.nativePtr, glyphIndex);
	}
	
	public void BoundingRect(uint32 glyphIndex)
	{
		CQt.QRawFont_BoundingRect(this.nativePtr, glyphIndex);
	}
	
	public void SetPixelSize(double pixelSize)
	{
		CQt.QRawFont_SetPixelSize(this.nativePtr, pixelSize);
	}
	
	public double PixelSize()
	{
		return CQt.QRawFont_PixelSize(this.nativePtr);
	}
	
	public int64 HintingPreference()
	{
		return CQt.QRawFont_HintingPreference(this.nativePtr);
	}
	
	public double Ascent()
	{
		return CQt.QRawFont_Ascent(this.nativePtr);
	}
	
	public double CapHeight()
	{
		return CQt.QRawFont_CapHeight(this.nativePtr);
	}
	
	public double Descent()
	{
		return CQt.QRawFont_Descent(this.nativePtr);
	}
	
	public double Leading()
	{
		return CQt.QRawFont_Leading(this.nativePtr);
	}
	
	public double XHeight()
	{
		return CQt.QRawFont_XHeight(this.nativePtr);
	}
	
	public double AverageCharWidth()
	{
		return CQt.QRawFont_AverageCharWidth(this.nativePtr);
	}
	
	public double MaxCharWidth()
	{
		return CQt.QRawFont_MaxCharWidth(this.nativePtr);
	}
	
	public double LineThickness()
	{
		return CQt.QRawFont_LineThickness(this.nativePtr);
	}
	
	public double UnderlinePosition()
	{
		return CQt.QRawFont_UnderlinePosition(this.nativePtr);
	}
	
	public double UnitsPerEm()
	{
		return CQt.QRawFont_UnitsPerEm(this.nativePtr);
	}
	
	public void LoadFromFile(String fileName, double pixelSize, int64 hintingPreference)
	{
		CQt.QRawFont_LoadFromFile(this.nativePtr, libqt_string(fileName), pixelSize, (int64)hintingPreference);
	}
	
	public void LoadFromData(String fontData, double pixelSize, int64 hintingPreference)
	{
		CQt.QRawFont_LoadFromData(this.nativePtr, libqt_string(fontData), pixelSize, (int64)hintingPreference);
	}
	
	public bool SupportsCharacter(uint32 ucs4)
	{
		return CQt.QRawFont_SupportsCharacter(this.nativePtr, ucs4);
	}
	
	public bool SupportsCharacterWithCharacter(IQChar character)
	{
		return CQt.QRawFont_SupportsCharacterWithCharacter(this.nativePtr, default);
	}
	
	public int64[] SupportedWritingSystems()
	{
		return CQt.QRawFont_SupportedWritingSystems(this.nativePtr);
	}
	
	public libqt_string FontTable(char8* tagName)
	{
		return CQt.QRawFont_FontTable(this.nativePtr, tagName);
	}
	
	public static void FromFont(IQFont font)
	{
		CQt.QRawFont_FromFont((font == default || font.NativePtr == default) ? default : font.NativePtr);
	}
	
	public void AlphaMapForGlyph2(uint32 glyphIndex, int64 antialiasingType)
	{
		CQt.QRawFont_AlphaMapForGlyph2(this.nativePtr, glyphIndex, (int64)antialiasingType);
	}
	
	public void AlphaMapForGlyph3(uint32 glyphIndex, int64 antialiasingType, IQTransform transform)
	{
		CQt.QRawFont_AlphaMapForGlyph3(this.nativePtr, glyphIndex, (int64)antialiasingType, (transform == default || transform.NativePtr == default) ? default : transform.NativePtr);
	}
	
	public static void FromFont2(IQFont font, int64 writingSystem)
	{
		CQt.QRawFont_FromFont2((font == default || font.NativePtr == default) ? default : font.NativePtr, (int64)writingSystem);
	}
	
}
public class QRawFont
{
	public QRawFontPtr handle;
	
	public static implicit operator QRawFontPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QRawFontPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQRawFont other)
	{
		this.handle.OperatorAssign(other);
	}
	
	public void Swap(IQRawFont other)
	{
		this.handle.Swap(other);
	}
	
	public bool IsValid()
	{
		return this.handle.IsValid();
	}
	
	public bool OperatorEqual(IQRawFont other)
	{
		return this.handle.OperatorEqual(other);
	}
	
	public bool OperatorNotEqual(IQRawFont other)
	{
		return this.handle.OperatorNotEqual(other);
	}
	
	public libqt_string FamilyName()
	{
		return this.handle.FamilyName();
	}
	
	public libqt_string StyleName()
	{
		return this.handle.StyleName();
	}
	
	public int64 Style()
	{
		return this.handle.Style();
	}
	
	public int32 Weight()
	{
		return this.handle.Weight();
	}
	
	public uint32[] GlyphIndexesForString(String text)
	{
		return this.handle.GlyphIndexesForString(text);
	}
	
	public void[] AdvancesForGlyphIndexes(uint32[] glyphIndexes)
	{
		return this.handle.AdvancesForGlyphIndexes(null);
	}
	
	public void[] AdvancesForGlyphIndexes2(uint32[] glyphIndexes, int64 layoutFlags)
	{
		return this.handle.AdvancesForGlyphIndexes2(null, layoutFlags);
	}
	
	public bool GlyphIndexesForChars(IQChar chars, int32 numChars, uint32* glyphIndexes, int32* numGlyphs)
	{
		return this.handle.GlyphIndexesForChars(chars, numChars, glyphIndexes, numGlyphs);
	}
	
	public bool AdvancesForGlyphIndexes3(uint32* glyphIndexes, IQPointF advances, int32 numGlyphs)
	{
		return this.handle.AdvancesForGlyphIndexes3(glyphIndexes, advances, numGlyphs);
	}
	
	public bool AdvancesForGlyphIndexes4(uint32* glyphIndexes, IQPointF advances, int32 numGlyphs, int64 layoutFlags)
	{
		return this.handle.AdvancesForGlyphIndexes4(glyphIndexes, advances, numGlyphs, layoutFlags);
	}
	
	public void AlphaMapForGlyph(uint32 glyphIndex)
	{
		this.handle.AlphaMapForGlyph(glyphIndex);
	}
	
	public void PathForGlyph(uint32 glyphIndex)
	{
		this.handle.PathForGlyph(glyphIndex);
	}
	
	public void BoundingRect(uint32 glyphIndex)
	{
		this.handle.BoundingRect(glyphIndex);
	}
	
	public void SetPixelSize(double pixelSize)
	{
		this.handle.SetPixelSize(pixelSize);
	}
	
	public double PixelSize()
	{
		return this.handle.PixelSize();
	}
	
	public int64 HintingPreference()
	{
		return this.handle.HintingPreference();
	}
	
	public double Ascent()
	{
		return this.handle.Ascent();
	}
	
	public double CapHeight()
	{
		return this.handle.CapHeight();
	}
	
	public double Descent()
	{
		return this.handle.Descent();
	}
	
	public double Leading()
	{
		return this.handle.Leading();
	}
	
	public double XHeight()
	{
		return this.handle.XHeight();
	}
	
	public double AverageCharWidth()
	{
		return this.handle.AverageCharWidth();
	}
	
	public double MaxCharWidth()
	{
		return this.handle.MaxCharWidth();
	}
	
	public double LineThickness()
	{
		return this.handle.LineThickness();
	}
	
	public double UnderlinePosition()
	{
		return this.handle.UnderlinePosition();
	}
	
	public double UnitsPerEm()
	{
		return this.handle.UnitsPerEm();
	}
	
	public void LoadFromFile(String fileName, double pixelSize, int64 hintingPreference)
	{
		this.handle.LoadFromFile(fileName, pixelSize, hintingPreference);
	}
	
	public void LoadFromData(String fontData, double pixelSize, int64 hintingPreference)
	{
		this.handle.LoadFromData(fontData, pixelSize, hintingPreference);
	}
	
	public bool SupportsCharacter(uint32 ucs4)
	{
		return this.handle.SupportsCharacter(ucs4);
	}
	
	public bool SupportsCharacterWithCharacter(IQChar character)
	{
		return this.handle.SupportsCharacterWithCharacter(default);
	}
	
	public int64[] SupportedWritingSystems()
	{
		return this.handle.SupportedWritingSystems();
	}
	
	public libqt_string FontTable(char8* tagName)
	{
		return this.handle.FontTable(tagName);
	}
	
	public static void FromFont(IQFont font)
	{
		QRawFontPtr.FromFont(font);
	}
	
	public void AlphaMapForGlyph2(uint32 glyphIndex, int64 antialiasingType)
	{
		this.handle.AlphaMapForGlyph2(glyphIndex, antialiasingType);
	}
	
	public void AlphaMapForGlyph3(uint32 glyphIndex, int64 antialiasingType, IQTransform transform)
	{
		this.handle.AlphaMapForGlyph3(glyphIndex, antialiasingType, transform);
	}
	
	public static void FromFont2(IQFont font, int64 writingSystem)
	{
		QRawFontPtr.FromFont2(font, writingSystem);
	}
	
}
extension CQt
{
	[LinkName("QRawFont_new")]
	public static extern void* QRawFont_new();
	[LinkName("QRawFont_new2")]
	public static extern void* QRawFont_new2(libqt_string fileName, double pixelSize);
	[LinkName("QRawFont_new3")]
	public static extern void* QRawFont_new3(libqt_string fontData, double pixelSize);
	[LinkName("QRawFont_new4")]
	public static extern void* QRawFont_new4(void* other);
	[LinkName("QRawFont_new5")]
	public static extern void* QRawFont_new5(libqt_string fileName, double pixelSize, int64 hintingPreference);
	[LinkName("QRawFont_new6")]
	public static extern void* QRawFont_new6(libqt_string fontData, double pixelSize, int64 hintingPreference);
	[LinkName("QRawFont_OperatorAssign")]
	public static extern void QRawFont_OperatorAssign(void* c_this, void* other);
	[LinkName("QRawFont_Swap")]
	public static extern void QRawFont_Swap(void* c_this, void* other);
	[LinkName("QRawFont_IsValid")]
	public static extern bool QRawFont_IsValid(void* c_this);
	[LinkName("QRawFont_OperatorEqual")]
	public static extern bool QRawFont_OperatorEqual(void* c_this, void* other);
	[LinkName("QRawFont_OperatorNotEqual")]
	public static extern bool QRawFont_OperatorNotEqual(void* c_this, void* other);
	[LinkName("QRawFont_FamilyName")]
	public static extern libqt_string QRawFont_FamilyName(void* c_this);
	[LinkName("QRawFont_StyleName")]
	public static extern libqt_string QRawFont_StyleName(void* c_this);
	[LinkName("QRawFont_Style")]
	public static extern int64 QRawFont_Style(void* c_this);
	[LinkName("QRawFont_Weight")]
	public static extern int32 QRawFont_Weight(void* c_this);
	[LinkName("QRawFont_GlyphIndexesForString")]
	public static extern uint32[] QRawFont_GlyphIndexesForString(void* c_this, libqt_string text);
	[LinkName("QRawFont_AdvancesForGlyphIndexes")]
	public static extern void[] QRawFont_AdvancesForGlyphIndexes(void* c_this, uint32[] glyphIndexes);
	[LinkName("QRawFont_AdvancesForGlyphIndexes2")]
	public static extern void[] QRawFont_AdvancesForGlyphIndexes2(void* c_this, uint32[] glyphIndexes, int64 layoutFlags);
	[LinkName("QRawFont_GlyphIndexesForChars")]
	public static extern bool QRawFont_GlyphIndexesForChars(void* c_this, void* chars, int32 numChars, uint32* glyphIndexes, int32* numGlyphs);
	[LinkName("QRawFont_AdvancesForGlyphIndexes3")]
	public static extern bool QRawFont_AdvancesForGlyphIndexes3(void* c_this, uint32* glyphIndexes, void* advances, int32 numGlyphs);
	[LinkName("QRawFont_AdvancesForGlyphIndexes4")]
	public static extern bool QRawFont_AdvancesForGlyphIndexes4(void* c_this, uint32* glyphIndexes, void* advances, int32 numGlyphs, int64 layoutFlags);
	[LinkName("QRawFont_AlphaMapForGlyph")]
	public static extern void QRawFont_AlphaMapForGlyph(void* c_this, uint32 glyphIndex);
	[LinkName("QRawFont_PathForGlyph")]
	public static extern void QRawFont_PathForGlyph(void* c_this, uint32 glyphIndex);
	[LinkName("QRawFont_BoundingRect")]
	public static extern void QRawFont_BoundingRect(void* c_this, uint32 glyphIndex);
	[LinkName("QRawFont_SetPixelSize")]
	public static extern void QRawFont_SetPixelSize(void* c_this, double pixelSize);
	[LinkName("QRawFont_PixelSize")]
	public static extern double QRawFont_PixelSize(void* c_this);
	[LinkName("QRawFont_HintingPreference")]
	public static extern int64 QRawFont_HintingPreference(void* c_this);
	[LinkName("QRawFont_Ascent")]
	public static extern double QRawFont_Ascent(void* c_this);
	[LinkName("QRawFont_CapHeight")]
	public static extern double QRawFont_CapHeight(void* c_this);
	[LinkName("QRawFont_Descent")]
	public static extern double QRawFont_Descent(void* c_this);
	[LinkName("QRawFont_Leading")]
	public static extern double QRawFont_Leading(void* c_this);
	[LinkName("QRawFont_XHeight")]
	public static extern double QRawFont_XHeight(void* c_this);
	[LinkName("QRawFont_AverageCharWidth")]
	public static extern double QRawFont_AverageCharWidth(void* c_this);
	[LinkName("QRawFont_MaxCharWidth")]
	public static extern double QRawFont_MaxCharWidth(void* c_this);
	[LinkName("QRawFont_LineThickness")]
	public static extern double QRawFont_LineThickness(void* c_this);
	[LinkName("QRawFont_UnderlinePosition")]
	public static extern double QRawFont_UnderlinePosition(void* c_this);
	[LinkName("QRawFont_UnitsPerEm")]
	public static extern double QRawFont_UnitsPerEm(void* c_this);
	[LinkName("QRawFont_LoadFromFile")]
	public static extern void QRawFont_LoadFromFile(void* c_this, libqt_string fileName, double pixelSize, int64 hintingPreference);
	[LinkName("QRawFont_LoadFromData")]
	public static extern void QRawFont_LoadFromData(void* c_this, libqt_string fontData, double pixelSize, int64 hintingPreference);
	[LinkName("QRawFont_SupportsCharacter")]
	public static extern bool QRawFont_SupportsCharacter(void* c_this, uint32 ucs4);
	[LinkName("QRawFont_SupportsCharacterWithCharacter")]
	public static extern bool QRawFont_SupportsCharacterWithCharacter(void* c_this, void character);
	[LinkName("QRawFont_SupportedWritingSystems")]
	public static extern int64[] QRawFont_SupportedWritingSystems(void* c_this);
	[LinkName("QRawFont_FontTable")]
	public static extern libqt_string QRawFont_FontTable(void* c_this, char8* tagName);
	[LinkName("QRawFont_FromFont")]
	public static extern void QRawFont_FromFont(void* font);
	[LinkName("QRawFont_AlphaMapForGlyph2")]
	public static extern void QRawFont_AlphaMapForGlyph2(void* c_this, uint32 glyphIndex, int64 antialiasingType);
	[LinkName("QRawFont_AlphaMapForGlyph3")]
	public static extern void QRawFont_AlphaMapForGlyph3(void* c_this, uint32 glyphIndex, int64 antialiasingType, void* transform);
	[LinkName("QRawFont_FromFont2")]
	public static extern void QRawFont_FromFont2(void* font, int64 writingSystem);
	/// Delete this object from C++ memory
	[LinkName("QRawFont_Delete")]
	public static extern void QRawFont_Delete(void* self);
}