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
	public static extern QRawFont* QRawFont_new();
	[LinkName("QRawFont_new2")]
	public static extern QRawFont* QRawFont_new2(libqt_string fileName, double pixelSize);
	[LinkName("QRawFont_new3")]
	public static extern QRawFont* QRawFont_new3(libqt_string fontData, double pixelSize);
	[LinkName("QRawFont_new4")]
	public static extern QRawFont* QRawFont_new4(QRawFont* other);
	[LinkName("QRawFont_new5")]
	public static extern QRawFont* QRawFont_new5(libqt_string fileName, double pixelSize, int64 hintingPreference);
	[LinkName("QRawFont_new6")]
	public static extern QRawFont* QRawFont_new6(libqt_string fontData, double pixelSize, int64 hintingPreference);
	[LinkName("QRawFont_OperatorAssign")]
	public static extern void QRawFont_OperatorAssign(Self* c_this, QRawFont* other);
	[LinkName("QRawFont_Swap")]
	public static extern void QRawFont_Swap(Self* c_this, QRawFont* other);
	[LinkName("QRawFont_IsValid")]
	public static extern bool QRawFont_IsValid(Self* c_this);
	[LinkName("QRawFont_OperatorEqual")]
	public static extern bool QRawFont_OperatorEqual(Self* c_this, QRawFont* other);
	[LinkName("QRawFont_OperatorNotEqual")]
	public static extern bool QRawFont_OperatorNotEqual(Self* c_this, QRawFont* other);
	[LinkName("QRawFont_FamilyName")]
	public static extern libqt_string QRawFont_FamilyName(Self* c_this);
	[LinkName("QRawFont_StyleName")]
	public static extern libqt_string QRawFont_StyleName(Self* c_this);
	[LinkName("QRawFont_Style")]
	public static extern int64 QRawFont_Style(Self* c_this);
	[LinkName("QRawFont_Weight")]
	public static extern int32 QRawFont_Weight(Self* c_this);
	[LinkName("QRawFont_GlyphIndexesForString")]
	public static extern uint32[] QRawFont_GlyphIndexesForString(Self* c_this, libqt_string text);
	[LinkName("QRawFont_AdvancesForGlyphIndexes")]
	public static extern QPointF[] QRawFont_AdvancesForGlyphIndexes(Self* c_this, uint32[] glyphIndexes);
	[LinkName("QRawFont_AdvancesForGlyphIndexes2")]
	public static extern QPointF[] QRawFont_AdvancesForGlyphIndexes2(Self* c_this, uint32[] glyphIndexes, int64 layoutFlags);
	[LinkName("QRawFont_GlyphIndexesForChars")]
	public static extern bool QRawFont_GlyphIndexesForChars(Self* c_this, QChar* chars, int32 numChars, uint32* glyphIndexes, int32* numGlyphs);
	[LinkName("QRawFont_AdvancesForGlyphIndexes3")]
	public static extern bool QRawFont_AdvancesForGlyphIndexes3(Self* c_this, uint32* glyphIndexes, QPointF* advances, int32 numGlyphs);
	[LinkName("QRawFont_AdvancesForGlyphIndexes4")]
	public static extern bool QRawFont_AdvancesForGlyphIndexes4(Self* c_this, uint32* glyphIndexes, QPointF* advances, int32 numGlyphs, int64 layoutFlags);
	[LinkName("QRawFont_AlphaMapForGlyph")]
	public static extern QImage QRawFont_AlphaMapForGlyph(Self* c_this, uint32 glyphIndex);
	[LinkName("QRawFont_PathForGlyph")]
	public static extern QPainterPath QRawFont_PathForGlyph(Self* c_this, uint32 glyphIndex);
	[LinkName("QRawFont_BoundingRect")]
	public static extern QRectF QRawFont_BoundingRect(Self* c_this, uint32 glyphIndex);
	[LinkName("QRawFont_SetPixelSize")]
	public static extern void QRawFont_SetPixelSize(Self* c_this, double pixelSize);
	[LinkName("QRawFont_PixelSize")]
	public static extern double QRawFont_PixelSize(Self* c_this);
	[LinkName("QRawFont_HintingPreference")]
	public static extern int64 QRawFont_HintingPreference(Self* c_this);
	[LinkName("QRawFont_Ascent")]
	public static extern double QRawFont_Ascent(Self* c_this);
	[LinkName("QRawFont_CapHeight")]
	public static extern double QRawFont_CapHeight(Self* c_this);
	[LinkName("QRawFont_Descent")]
	public static extern double QRawFont_Descent(Self* c_this);
	[LinkName("QRawFont_Leading")]
	public static extern double QRawFont_Leading(Self* c_this);
	[LinkName("QRawFont_XHeight")]
	public static extern double QRawFont_XHeight(Self* c_this);
	[LinkName("QRawFont_AverageCharWidth")]
	public static extern double QRawFont_AverageCharWidth(Self* c_this);
	[LinkName("QRawFont_MaxCharWidth")]
	public static extern double QRawFont_MaxCharWidth(Self* c_this);
	[LinkName("QRawFont_LineThickness")]
	public static extern double QRawFont_LineThickness(Self* c_this);
	[LinkName("QRawFont_UnderlinePosition")]
	public static extern double QRawFont_UnderlinePosition(Self* c_this);
	[LinkName("QRawFont_UnitsPerEm")]
	public static extern double QRawFont_UnitsPerEm(Self* c_this);
	[LinkName("QRawFont_LoadFromFile")]
	public static extern void QRawFont_LoadFromFile(Self* c_this, libqt_string fileName, double pixelSize, int64 hintingPreference);
	[LinkName("QRawFont_LoadFromData")]
	public static extern void QRawFont_LoadFromData(Self* c_this, libqt_string fontData, double pixelSize, int64 hintingPreference);
	[LinkName("QRawFont_SupportsCharacter")]
	public static extern bool QRawFont_SupportsCharacter(Self* c_this, uint32 ucs4);
	[LinkName("QRawFont_SupportsCharacterWithCharacter")]
	public static extern bool QRawFont_SupportsCharacterWithCharacter(Self* c_this, QChar character);
	[LinkName("QRawFont_SupportedWritingSystems")]
	public static extern int64[] QRawFont_SupportedWritingSystems(Self* c_this);
	[LinkName("QRawFont_FontTable")]
	public static extern libqt_string QRawFont_FontTable(Self* c_this, char8[] tagName);
	[LinkName("QRawFont_FromFont")]
	public static extern QRawFont QRawFont_FromFont(QFont* font);
	[LinkName("QRawFont_AlphaMapForGlyph2")]
	public static extern QImage QRawFont_AlphaMapForGlyph2(Self* c_this, uint32 glyphIndex, int64 antialiasingType);
	[LinkName("QRawFont_AlphaMapForGlyph3")]
	public static extern QImage QRawFont_AlphaMapForGlyph3(Self* c_this, uint32 glyphIndex, int64 antialiasingType, QTransform* transform);
	[LinkName("QRawFont_FromFont2")]
	public static extern QRawFont QRawFont_FromFont2(QFont* font, int64 writingSystem);
}