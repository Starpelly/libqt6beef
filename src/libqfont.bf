using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QFont__StyleHint
{
	Helvetica = 0,
	SansSerif = 0,
	Times = 1,
	Serif = 1,
	Courier = 2,
	TypeWriter = 2,
	OldEnglish = 3,
	Decorative = 3,
	System = 4,
	AnyStyle = 5,
	Cursive = 6,
	Monospace = 7,
	Fantasy = 8,
}
[AllowDuplicates]
public enum QFont__StyleStrategy
{
	PreferDefault = 1,
	PreferBitmap = 2,
	PreferDevice = 4,
	PreferOutline = 8,
	ForceOutline = 16,
	PreferMatch = 32,
	PreferQuality = 64,
	PreferAntialias = 128,
	NoAntialias = 256,
	NoSubpixelAntialias = 2048,
	PreferNoShaping = 4096,
	NoFontMerging = 32768,
}
[AllowDuplicates]
public enum QFont__HintingPreference
{
	PreferDefaultHinting = 0,
	PreferNoHinting = 1,
	PreferVerticalHinting = 2,
	PreferFullHinting = 3,
}
[AllowDuplicates]
public enum QFont__Weight
{
	Thin = 100,
	ExtraLight = 200,
	Light = 300,
	Normal = 400,
	Medium = 500,
	DemiBold = 600,
	Bold = 700,
	ExtraBold = 800,
	Black = 900,
}
[AllowDuplicates]
public enum QFont__Style
{
	StyleNormal = 0,
	StyleItalic = 1,
	StyleOblique = 2,
}
[AllowDuplicates]
public enum QFont__Stretch
{
	AnyStretch = 0,
	UltraCondensed = 50,
	ExtraCondensed = 62,
	Condensed = 75,
	SemiCondensed = 87,
	Unstretched = 100,
	SemiExpanded = 112,
	Expanded = 125,
	ExtraExpanded = 150,
	UltraExpanded = 200,
}
[AllowDuplicates]
public enum QFont__Capitalization
{
	MixedCase = 0,
	AllUppercase = 1,
	AllLowercase = 2,
	SmallCaps = 3,
	Capitalize = 4,
}
[AllowDuplicates]
public enum QFont__SpacingType
{
	PercentageSpacing = 0,
	AbsoluteSpacing = 1,
}
[AllowDuplicates]
public enum QFont__ResolveProperties
{
	NoPropertiesResolved = 0,
	FamilyResolved = 1,
	SizeResolved = 2,
	StyleHintResolved = 4,
	StyleStrategyResolved = 8,
	WeightResolved = 16,
	StyleResolved = 32,
	UnderlineResolved = 64,
	OverlineResolved = 128,
	StrikeOutResolved = 256,
	FixedPitchResolved = 512,
	StretchResolved = 1024,
	KerningResolved = 2048,
	CapitalizationResolved = 4096,
	LetterSpacingResolved = 8192,
	WordSpacingResolved = 16384,
	HintingPreferenceResolved = 32768,
	StyleNameResolved = 65536,
	FamiliesResolved = 131072,
	AllPropertiesResolved = 262143,
}
public struct QFont
{
	[LinkName("QFont_new")]
	public static extern void* QFont_new();
	[LinkName("QFont_new2")]
	public static extern void* QFont_new2(char8[] family);
	[LinkName("QFont_new3")]
	public static extern void* QFont_new3(char8[][] families);
	[LinkName("QFont_new4")]
	public static extern void* QFont_new4(QFont font, QPaintDevice pd);
	[LinkName("QFont_new5")]
	public static extern void* QFont_new5(QFont font);
	[LinkName("QFont_new6")]
	public static extern void* QFont_new6(char8[] family, int32 pointSize);
	[LinkName("QFont_new7")]
	public static extern void* QFont_new7(char8[] family, int32 pointSize, int32 weight);
	[LinkName("QFont_new8")]
	public static extern void* QFont_new8(char8[] family, int32 pointSize, int32 weight, bool italic);
	[LinkName("QFont_new9")]
	public static extern void* QFont_new9(char8[][] families, int32 pointSize);
	[LinkName("QFont_new10")]
	public static extern void* QFont_new10(char8[][] families, int32 pointSize, int32 weight);
	[LinkName("QFont_new11")]
	public static extern void* QFont_new11(char8[][] families, int32 pointSize, int32 weight, bool italic);
	[LinkName("QFont_Swap")]
	public static extern void QFont_Swap(void* c_this, QFont other);
	[LinkName("QFont_Family")]
	public static extern char8[] QFont_Family(void* c_this);
	[LinkName("QFont_SetFamily")]
	public static extern void QFont_SetFamily(void* c_this, char8[] family);
	[LinkName("QFont_Families")]
	public static extern char8[][] QFont_Families(void* c_this);
	[LinkName("QFont_SetFamilies")]
	public static extern void QFont_SetFamilies(void* c_this, char8[][] families);
	[LinkName("QFont_StyleName")]
	public static extern char8[] QFont_StyleName(void* c_this);
	[LinkName("QFont_SetStyleName")]
	public static extern void QFont_SetStyleName(void* c_this, char8[] styleName);
	[LinkName("QFont_PointSize")]
	public static extern int32 QFont_PointSize(void* c_this);
	[LinkName("QFont_SetPointSize")]
	public static extern void QFont_SetPointSize(void* c_this, int32 pointSize);
	[LinkName("QFont_PointSizeF")]
	public static extern double QFont_PointSizeF(void* c_this);
	[LinkName("QFont_SetPointSizeF")]
	public static extern void QFont_SetPointSizeF(void* c_this, double pointSizeF);
	[LinkName("QFont_PixelSize")]
	public static extern int32 QFont_PixelSize(void* c_this);
	[LinkName("QFont_SetPixelSize")]
	public static extern void QFont_SetPixelSize(void* c_this, int32 pixelSize);
	[LinkName("QFont_Weight")]
	public static extern int64 QFont_Weight(void* c_this);
	[LinkName("QFont_SetWeight")]
	public static extern void QFont_SetWeight(void* c_this, int64 weight);
	[LinkName("QFont_Bold")]
	public static extern bool QFont_Bold(void* c_this);
	[LinkName("QFont_SetBold")]
	public static extern void QFont_SetBold(void* c_this, bool bold);
	[LinkName("QFont_SetStyle")]
	public static extern void QFont_SetStyle(void* c_this, int64 style);
	[LinkName("QFont_Style")]
	public static extern int64 QFont_Style(void* c_this);
	[LinkName("QFont_Italic")]
	public static extern bool QFont_Italic(void* c_this);
	[LinkName("QFont_SetItalic")]
	public static extern void QFont_SetItalic(void* c_this, bool b);
	[LinkName("QFont_Underline")]
	public static extern bool QFont_Underline(void* c_this);
	[LinkName("QFont_SetUnderline")]
	public static extern void QFont_SetUnderline(void* c_this, bool underline);
	[LinkName("QFont_Overline")]
	public static extern bool QFont_Overline(void* c_this);
	[LinkName("QFont_SetOverline")]
	public static extern void QFont_SetOverline(void* c_this, bool overline);
	[LinkName("QFont_StrikeOut")]
	public static extern bool QFont_StrikeOut(void* c_this);
	[LinkName("QFont_SetStrikeOut")]
	public static extern void QFont_SetStrikeOut(void* c_this, bool strikeOut);
	[LinkName("QFont_FixedPitch")]
	public static extern bool QFont_FixedPitch(void* c_this);
	[LinkName("QFont_SetFixedPitch")]
	public static extern void QFont_SetFixedPitch(void* c_this, bool fixedPitch);
	[LinkName("QFont_Kerning")]
	public static extern bool QFont_Kerning(void* c_this);
	[LinkName("QFont_SetKerning")]
	public static extern void QFont_SetKerning(void* c_this, bool kerning);
	[LinkName("QFont_StyleHint")]
	public static extern int64 QFont_StyleHint(void* c_this);
	[LinkName("QFont_StyleStrategy")]
	public static extern int64 QFont_StyleStrategy(void* c_this);
	[LinkName("QFont_SetStyleHint")]
	public static extern void QFont_SetStyleHint(void* c_this, int64 param1);
	[LinkName("QFont_SetStyleStrategy")]
	public static extern void QFont_SetStyleStrategy(void* c_this, int64 s);
	[LinkName("QFont_Stretch")]
	public static extern int32 QFont_Stretch(void* c_this);
	[LinkName("QFont_SetStretch")]
	public static extern void QFont_SetStretch(void* c_this, int32 stretch);
	[LinkName("QFont_LetterSpacing")]
	public static extern double QFont_LetterSpacing(void* c_this);
	[LinkName("QFont_LetterSpacingType")]
	public static extern int64 QFont_LetterSpacingType(void* c_this);
	[LinkName("QFont_SetLetterSpacing")]
	public static extern void QFont_SetLetterSpacing(void* c_this, int64 typeVal, double spacing);
	[LinkName("QFont_WordSpacing")]
	public static extern double QFont_WordSpacing(void* c_this);
	[LinkName("QFont_SetWordSpacing")]
	public static extern void QFont_SetWordSpacing(void* c_this, double spacing);
	[LinkName("QFont_SetCapitalization")]
	public static extern void QFont_SetCapitalization(void* c_this, int64 capitalization);
	[LinkName("QFont_Capitalization")]
	public static extern int64 QFont_Capitalization(void* c_this);
	[LinkName("QFont_SetHintingPreference")]
	public static extern void QFont_SetHintingPreference(void* c_this, int64 hintingPreference);
	[LinkName("QFont_HintingPreference")]
	public static extern int64 QFont_HintingPreference(void* c_this);
	[LinkName("QFont_ExactMatch")]
	public static extern bool QFont_ExactMatch(void* c_this);
	[LinkName("QFont_OperatorAssign")]
	public static extern void QFont_OperatorAssign(void* c_this, QFont param1);
	[LinkName("QFont_OperatorEqual")]
	public static extern bool QFont_OperatorEqual(void* c_this, QFont param1);
	[LinkName("QFont_OperatorNotEqual")]
	public static extern bool QFont_OperatorNotEqual(void* c_this, QFont param1);
	[LinkName("QFont_OperatorLesser")]
	public static extern bool QFont_OperatorLesser(void* c_this, QFont param1);
	[LinkName("QFont_ToQVariant")]
	public static extern QVariant QFont_ToQVariant(void* c_this);
	[LinkName("QFont_IsCopyOf")]
	public static extern bool QFont_IsCopyOf(void* c_this, QFont param1);
	[LinkName("QFont_Key")]
	public static extern char8[] QFont_Key(void* c_this);
	[LinkName("QFont_ToString")]
	public static extern char8[] QFont_ToString(void* c_this);
	[LinkName("QFont_FromString")]
	public static extern bool QFont_FromString(void* c_this, char8[] param1);
	[LinkName("QFont_Substitute")]
	public static extern char8[] QFont_Substitute(char8[] param1);
	[LinkName("QFont_Substitutes")]
	public static extern char8[][] QFont_Substitutes(char8[] param1);
	[LinkName("QFont_Substitutions")]
	public static extern char8[][] QFont_Substitutions();
	[LinkName("QFont_InsertSubstitution")]
	public static extern void QFont_InsertSubstitution(char8[] param1, char8[] param2);
	[LinkName("QFont_InsertSubstitutions")]
	public static extern void QFont_InsertSubstitutions(char8[] param1, char8[][] param2);
	[LinkName("QFont_RemoveSubstitutions")]
	public static extern void QFont_RemoveSubstitutions(char8[] param1);
	[LinkName("QFont_Initialize")]
	public static extern void QFont_Initialize();
	[LinkName("QFont_Cleanup")]
	public static extern void QFont_Cleanup();
	[LinkName("QFont_CacheStatistics")]
	public static extern void QFont_CacheStatistics();
	[LinkName("QFont_DefaultFamily")]
	public static extern char8[] QFont_DefaultFamily(void* c_this);
	[LinkName("QFont_Resolve")]
	public static extern QFont QFont_Resolve(void* c_this, QFont param1);
	[LinkName("QFont_ResolveMask")]
	public static extern uint32 QFont_ResolveMask(void* c_this);
	[LinkName("QFont_SetResolveMask")]
	public static extern void QFont_SetResolveMask(void* c_this, uint32 mask);
	[LinkName("QFont_SetLegacyWeight")]
	public static extern void QFont_SetLegacyWeight(void* c_this, int32 legacyWeight);
	[LinkName("QFont_LegacyWeight")]
	public static extern int32 QFont_LegacyWeight(void* c_this);
	[LinkName("QFont_SetStyleHint2")]
	public static extern void QFont_SetStyleHint2(void* c_this, int64 param1, int64 param2);
}