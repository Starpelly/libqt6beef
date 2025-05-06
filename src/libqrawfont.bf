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
public struct QRawFont
{
	[LinkName("QRawFont_new")]
	public static extern void* QRawFont_new();
	[LinkName("QRawFont_new2")]
	public static extern void* QRawFont_new2(char8[] fileName, double pixelSize);
	[LinkName("QRawFont_new3")]
	public static extern void* QRawFont_new3(uint8[] fontData, double pixelSize);
	[LinkName("QRawFont_new4")]
	public static extern void* QRawFont_new4(QRawFont other);
	[LinkName("QRawFont_new5")]
	public static extern void* QRawFont_new5(char8[] fileName, double pixelSize, int64 hintingPreference);
	[LinkName("QRawFont_new6")]
	public static extern void* QRawFont_new6(uint8[] fontData, double pixelSize, int64 hintingPreference);
	[LinkName("QRawFont_OperatorAssign")]
	public static extern void QRawFont_OperatorAssign(void* c_this, QRawFont other);
	[LinkName("QRawFont_Swap")]
	public static extern void QRawFont_Swap(void* c_this, QRawFont other);
	[LinkName("QRawFont_IsValid")]
	public static extern bool QRawFont_IsValid(void* c_this);
	[LinkName("QRawFont_OperatorEqual")]
	public static extern bool QRawFont_OperatorEqual(void* c_this, QRawFont other);
	[LinkName("QRawFont_OperatorNotEqual")]
	public static extern bool QRawFont_OperatorNotEqual(void* c_this, QRawFont other);
	[LinkName("QRawFont_FamilyName")]
	public static extern char8[] QRawFont_FamilyName(void* c_this);
	[LinkName("QRawFont_StyleName")]
	public static extern char8[] QRawFont_StyleName(void* c_this);
	[LinkName("QRawFont_Style")]
	public static extern int64 QRawFont_Style(void* c_this);
	[LinkName("QRawFont_Weight")]
	public static extern int32 QRawFont_Weight(void* c_this);
	[LinkName("QRawFont_GlyphIndexesForString")]
	public static extern uint32[] QRawFont_GlyphIndexesForString(void* c_this, char8[] text);
	[LinkName("QRawFont_AdvancesForGlyphIndexes")]
	public static extern QPointF[] QRawFont_AdvancesForGlyphIndexes(void* c_this, uint32[] glyphIndexes);
	[LinkName("QRawFont_AdvancesForGlyphIndexes2")]
	public static extern QPointF[] QRawFont_AdvancesForGlyphIndexes2(void* c_this, uint32[] glyphIndexes, int64 layoutFlags);
	[LinkName("QRawFont_GlyphIndexesForChars")]
	public static extern bool QRawFont_GlyphIndexesForChars(void* c_this, QChar chars, int32 numChars, uint32 glyphIndexes, int32 numGlyphs);
	[LinkName("QRawFont_AdvancesForGlyphIndexes3")]
	public static extern bool QRawFont_AdvancesForGlyphIndexes3(void* c_this, uint32 glyphIndexes, QPointF advances, int32 numGlyphs);
	[LinkName("QRawFont_AdvancesForGlyphIndexes4")]
	public static extern bool QRawFont_AdvancesForGlyphIndexes4(void* c_this, uint32 glyphIndexes, QPointF advances, int32 numGlyphs, int64 layoutFlags);
	[LinkName("QRawFont_AlphaMapForGlyph")]
	public static extern QImage QRawFont_AlphaMapForGlyph(void* c_this, uint32 glyphIndex);
	[LinkName("QRawFont_PathForGlyph")]
	public static extern QPainterPath QRawFont_PathForGlyph(void* c_this, uint32 glyphIndex);
	[LinkName("QRawFont_BoundingRect")]
	public static extern QRectF QRawFont_BoundingRect(void* c_this, uint32 glyphIndex);
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
	public static extern void QRawFont_LoadFromFile(void* c_this, char8[] fileName, double pixelSize, int64 hintingPreference);
	[LinkName("QRawFont_LoadFromData")]
	public static extern void QRawFont_LoadFromData(void* c_this, uint8[] fontData, double pixelSize, int64 hintingPreference);
	[LinkName("QRawFont_SupportsCharacter")]
	public static extern bool QRawFont_SupportsCharacter(void* c_this, uint32 ucs4);
	[LinkName("QRawFont_SupportsCharacterWithCharacter")]
	public static extern bool QRawFont_SupportsCharacterWithCharacter(void* c_this, QChar character);
	[LinkName("QRawFont_SupportedWritingSystems")]
	public static extern int64[] QRawFont_SupportedWritingSystems(void* c_this);
	[LinkName("QRawFont_FontTable")]
	public static extern uint8[] QRawFont_FontTable(void* c_this, char8[] tagName);
	[LinkName("QRawFont_FromFont")]
	public static extern QRawFont QRawFont_FromFont(QFont font);
	[LinkName("QRawFont_AlphaMapForGlyph2")]
	public static extern QImage QRawFont_AlphaMapForGlyph2(void* c_this, uint32 glyphIndex, int64 antialiasingType);
	[LinkName("QRawFont_AlphaMapForGlyph3")]
	public static extern QImage QRawFont_AlphaMapForGlyph3(void* c_this, uint32 glyphIndex, int64 antialiasingType, QTransform transform);
	[LinkName("QRawFont_FromFont2")]
	public static extern QRawFont QRawFont_FromFont2(QFont font, int64 writingSystem);
}