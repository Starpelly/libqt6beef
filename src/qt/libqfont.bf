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
	public static extern QFont* QFont_new();
	[LinkName("QFont_new2")]
	public static extern QFont* QFont_new2(libqt_string family);
	[LinkName("QFont_new3")]
	public static extern QFont* QFont_new3(libqt_string[] families);
	[LinkName("QFont_new4")]
	public static extern QFont* QFont_new4(QFont* font, QPaintDevice* pd);
	[LinkName("QFont_new5")]
	public static extern QFont* QFont_new5(QFont* font);
	[LinkName("QFont_new6")]
	public static extern QFont* QFont_new6(libqt_string family, int32 pointSize);
	[LinkName("QFont_new7")]
	public static extern QFont* QFont_new7(libqt_string family, int32 pointSize, int32 weight);
	[LinkName("QFont_new8")]
	public static extern QFont* QFont_new8(libqt_string family, int32 pointSize, int32 weight, bool italic);
	[LinkName("QFont_new9")]
	public static extern QFont* QFont_new9(libqt_string[] families, int32 pointSize);
	[LinkName("QFont_new10")]
	public static extern QFont* QFont_new10(libqt_string[] families, int32 pointSize, int32 weight);
	[LinkName("QFont_new11")]
	public static extern QFont* QFont_new11(libqt_string[] families, int32 pointSize, int32 weight, bool italic);
	[LinkName("QFont_Swap")]
	public static extern void QFont_Swap(Self* c_this, QFont* other);
	[LinkName("QFont_Family")]
	public static extern libqt_string QFont_Family(Self* c_this);
	[LinkName("QFont_SetFamily")]
	public static extern void QFont_SetFamily(Self* c_this, libqt_string family);
	[LinkName("QFont_Families")]
	public static extern libqt_string[] QFont_Families(Self* c_this);
	[LinkName("QFont_SetFamilies")]
	public static extern void QFont_SetFamilies(Self* c_this, libqt_string[] families);
	[LinkName("QFont_StyleName")]
	public static extern libqt_string QFont_StyleName(Self* c_this);
	[LinkName("QFont_SetStyleName")]
	public static extern void QFont_SetStyleName(Self* c_this, libqt_string styleName);
	[LinkName("QFont_PointSize")]
	public static extern int32 QFont_PointSize(Self* c_this);
	[LinkName("QFont_SetPointSize")]
	public static extern void QFont_SetPointSize(Self* c_this, int32 pointSize);
	[LinkName("QFont_PointSizeF")]
	public static extern double QFont_PointSizeF(Self* c_this);
	[LinkName("QFont_SetPointSizeF")]
	public static extern void QFont_SetPointSizeF(Self* c_this, double pointSizeF);
	[LinkName("QFont_PixelSize")]
	public static extern int32 QFont_PixelSize(Self* c_this);
	[LinkName("QFont_SetPixelSize")]
	public static extern void QFont_SetPixelSize(Self* c_this, int32 pixelSize);
	[LinkName("QFont_Weight")]
	public static extern int64 QFont_Weight(Self* c_this);
	[LinkName("QFont_SetWeight")]
	public static extern void QFont_SetWeight(Self* c_this, int64 weight);
	[LinkName("QFont_Bold")]
	public static extern bool QFont_Bold(Self* c_this);
	[LinkName("QFont_SetBold")]
	public static extern void QFont_SetBold(Self* c_this, bool bold);
	[LinkName("QFont_SetStyle")]
	public static extern void QFont_SetStyle(Self* c_this, int64 style);
	[LinkName("QFont_Style")]
	public static extern int64 QFont_Style(Self* c_this);
	[LinkName("QFont_Italic")]
	public static extern bool QFont_Italic(Self* c_this);
	[LinkName("QFont_SetItalic")]
	public static extern void QFont_SetItalic(Self* c_this, bool b);
	[LinkName("QFont_Underline")]
	public static extern bool QFont_Underline(Self* c_this);
	[LinkName("QFont_SetUnderline")]
	public static extern void QFont_SetUnderline(Self* c_this, bool underline);
	[LinkName("QFont_Overline")]
	public static extern bool QFont_Overline(Self* c_this);
	[LinkName("QFont_SetOverline")]
	public static extern void QFont_SetOverline(Self* c_this, bool overline);
	[LinkName("QFont_StrikeOut")]
	public static extern bool QFont_StrikeOut(Self* c_this);
	[LinkName("QFont_SetStrikeOut")]
	public static extern void QFont_SetStrikeOut(Self* c_this, bool strikeOut);
	[LinkName("QFont_FixedPitch")]
	public static extern bool QFont_FixedPitch(Self* c_this);
	[LinkName("QFont_SetFixedPitch")]
	public static extern void QFont_SetFixedPitch(Self* c_this, bool fixedPitch);
	[LinkName("QFont_Kerning")]
	public static extern bool QFont_Kerning(Self* c_this);
	[LinkName("QFont_SetKerning")]
	public static extern void QFont_SetKerning(Self* c_this, bool kerning);
	[LinkName("QFont_StyleHint")]
	public static extern int64 QFont_StyleHint(Self* c_this);
	[LinkName("QFont_StyleStrategy")]
	public static extern int64 QFont_StyleStrategy(Self* c_this);
	[LinkName("QFont_SetStyleHint")]
	public static extern void QFont_SetStyleHint(Self* c_this, int64 param1);
	[LinkName("QFont_SetStyleStrategy")]
	public static extern void QFont_SetStyleStrategy(Self* c_this, int64 s);
	[LinkName("QFont_Stretch")]
	public static extern int32 QFont_Stretch(Self* c_this);
	[LinkName("QFont_SetStretch")]
	public static extern void QFont_SetStretch(Self* c_this, int32 stretch);
	[LinkName("QFont_LetterSpacing")]
	public static extern double QFont_LetterSpacing(Self* c_this);
	[LinkName("QFont_LetterSpacingType")]
	public static extern int64 QFont_LetterSpacingType(Self* c_this);
	[LinkName("QFont_SetLetterSpacing")]
	public static extern void QFont_SetLetterSpacing(Self* c_this, int64 typeVal, double spacing);
	[LinkName("QFont_WordSpacing")]
	public static extern double QFont_WordSpacing(Self* c_this);
	[LinkName("QFont_SetWordSpacing")]
	public static extern void QFont_SetWordSpacing(Self* c_this, double spacing);
	[LinkName("QFont_SetCapitalization")]
	public static extern void QFont_SetCapitalization(Self* c_this, int64 capitalization);
	[LinkName("QFont_Capitalization")]
	public static extern int64 QFont_Capitalization(Self* c_this);
	[LinkName("QFont_SetHintingPreference")]
	public static extern void QFont_SetHintingPreference(Self* c_this, int64 hintingPreference);
	[LinkName("QFont_HintingPreference")]
	public static extern int64 QFont_HintingPreference(Self* c_this);
	[LinkName("QFont_ExactMatch")]
	public static extern bool QFont_ExactMatch(Self* c_this);
	[LinkName("QFont_OperatorAssign")]
	public static extern void QFont_OperatorAssign(Self* c_this, QFont* param1);
	[LinkName("QFont_OperatorEqual")]
	public static extern bool QFont_OperatorEqual(Self* c_this, QFont* param1);
	[LinkName("QFont_OperatorNotEqual")]
	public static extern bool QFont_OperatorNotEqual(Self* c_this, QFont* param1);
	[LinkName("QFont_OperatorLesser")]
	public static extern bool QFont_OperatorLesser(Self* c_this, QFont* param1);
	[LinkName("QFont_ToQVariant")]
	public static extern QVariant QFont_ToQVariant(Self* c_this);
	[LinkName("QFont_IsCopyOf")]
	public static extern bool QFont_IsCopyOf(Self* c_this, QFont* param1);
	[LinkName("QFont_Key")]
	public static extern libqt_string QFont_Key(Self* c_this);
	[LinkName("QFont_ToString")]
	public static extern libqt_string QFont_ToString(Self* c_this);
	[LinkName("QFont_FromString")]
	public static extern bool QFont_FromString(Self* c_this, libqt_string param1);
	[LinkName("QFont_Substitute")]
	public static extern libqt_string QFont_Substitute(libqt_string param1);
	[LinkName("QFont_Substitutes")]
	public static extern libqt_string[] QFont_Substitutes(libqt_string param1);
	[LinkName("QFont_Substitutions")]
	public static extern libqt_string[] QFont_Substitutions();
	[LinkName("QFont_InsertSubstitution")]
	public static extern void QFont_InsertSubstitution(libqt_string param1, libqt_string param2);
	[LinkName("QFont_InsertSubstitutions")]
	public static extern void QFont_InsertSubstitutions(libqt_string param1, libqt_string[] param2);
	[LinkName("QFont_RemoveSubstitutions")]
	public static extern void QFont_RemoveSubstitutions(libqt_string param1);
	[LinkName("QFont_Initialize")]
	public static extern void QFont_Initialize();
	[LinkName("QFont_Cleanup")]
	public static extern void QFont_Cleanup();
	[LinkName("QFont_CacheStatistics")]
	public static extern void QFont_CacheStatistics();
	[LinkName("QFont_DefaultFamily")]
	public static extern libqt_string QFont_DefaultFamily(Self* c_this);
	[LinkName("QFont_Resolve")]
	public static extern QFont QFont_Resolve(Self* c_this, QFont* param1);
	[LinkName("QFont_ResolveMask")]
	public static extern uint32 QFont_ResolveMask(Self* c_this);
	[LinkName("QFont_SetResolveMask")]
	public static extern void QFont_SetResolveMask(Self* c_this, uint32 mask);
	[LinkName("QFont_SetLegacyWeight")]
	public static extern void QFont_SetLegacyWeight(Self* c_this, int32 legacyWeight);
	[LinkName("QFont_LegacyWeight")]
	public static extern int32 QFont_LegacyWeight(Self* c_this);
	[LinkName("QFont_SetStyleHint2")]
	public static extern void QFont_SetStyleHint2(Self* c_this, int64 param1, int64 param2);
}