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
public interface IQFont
{
	void* NativePtr { get; }
}
public class QFont : IQFont
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QFont_new();
	}
	
	public ~this()
	{
		CQt.QFont_Delete(this.nativePtr);
	}
	
	public void Swap(IQFont other)
	{
		CQt.QFont_Swap(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public libqt_string Family()
	{
		return CQt.QFont_Family(this.nativePtr);
	}
	
	public void SetFamily(String family)
	{
		CQt.QFont_SetFamily(this.nativePtr, libqt_string(family));
	}
	
	public libqt_string[] Families()
	{
		return CQt.QFont_Families(this.nativePtr);
	}
	
	public void SetFamilies(String[] families)
	{
		CQt.QFont_SetFamilies(this.nativePtr, null);
	}
	
	public libqt_string StyleName()
	{
		return CQt.QFont_StyleName(this.nativePtr);
	}
	
	public void SetStyleName(String styleName)
	{
		CQt.QFont_SetStyleName(this.nativePtr, libqt_string(styleName));
	}
	
	public int32 PointSize()
	{
		return CQt.QFont_PointSize(this.nativePtr);
	}
	
	public void SetPointSize(int32 pointSize)
	{
		CQt.QFont_SetPointSize(this.nativePtr, pointSize);
	}
	
	public double PointSizeF()
	{
		return CQt.QFont_PointSizeF(this.nativePtr);
	}
	
	public void SetPointSizeF(double pointSizeF)
	{
		CQt.QFont_SetPointSizeF(this.nativePtr, pointSizeF);
	}
	
	public int32 PixelSize()
	{
		return CQt.QFont_PixelSize(this.nativePtr);
	}
	
	public void SetPixelSize(int32 pixelSize)
	{
		CQt.QFont_SetPixelSize(this.nativePtr, pixelSize);
	}
	
	public int64 Weight()
	{
		return CQt.QFont_Weight(this.nativePtr);
	}
	
	public void SetWeight(int64 weight)
	{
		CQt.QFont_SetWeight(this.nativePtr, weight);
	}
	
	public bool Bold()
	{
		return CQt.QFont_Bold(this.nativePtr);
	}
	
	public void SetBold(bool bold)
	{
		CQt.QFont_SetBold(this.nativePtr, bold);
	}
	
	public void SetStyle(int64 style)
	{
		CQt.QFont_SetStyle(this.nativePtr, style);
	}
	
	public int64 Style()
	{
		return CQt.QFont_Style(this.nativePtr);
	}
	
	public bool Italic()
	{
		return CQt.QFont_Italic(this.nativePtr);
	}
	
	public void SetItalic(bool b)
	{
		CQt.QFont_SetItalic(this.nativePtr, b);
	}
	
	public bool Underline()
	{
		return CQt.QFont_Underline(this.nativePtr);
	}
	
	public void SetUnderline(bool underline)
	{
		CQt.QFont_SetUnderline(this.nativePtr, underline);
	}
	
	public bool Overline()
	{
		return CQt.QFont_Overline(this.nativePtr);
	}
	
	public void SetOverline(bool overline)
	{
		CQt.QFont_SetOverline(this.nativePtr, overline);
	}
	
	public bool StrikeOut()
	{
		return CQt.QFont_StrikeOut(this.nativePtr);
	}
	
	public void SetStrikeOut(bool strikeOut)
	{
		CQt.QFont_SetStrikeOut(this.nativePtr, strikeOut);
	}
	
	public bool FixedPitch()
	{
		return CQt.QFont_FixedPitch(this.nativePtr);
	}
	
	public void SetFixedPitch(bool fixedPitch)
	{
		CQt.QFont_SetFixedPitch(this.nativePtr, fixedPitch);
	}
	
	public bool Kerning()
	{
		return CQt.QFont_Kerning(this.nativePtr);
	}
	
	public void SetKerning(bool kerning)
	{
		CQt.QFont_SetKerning(this.nativePtr, kerning);
	}
	
	public int64 StyleHint()
	{
		return CQt.QFont_StyleHint(this.nativePtr);
	}
	
	public int64 StyleStrategy()
	{
		return CQt.QFont_StyleStrategy(this.nativePtr);
	}
	
	public void SetStyleHint(int64 param1)
	{
		CQt.QFont_SetStyleHint(this.nativePtr, param1);
	}
	
	public void SetStyleStrategy(int64 s)
	{
		CQt.QFont_SetStyleStrategy(this.nativePtr, s);
	}
	
	public int32 Stretch()
	{
		return CQt.QFont_Stretch(this.nativePtr);
	}
	
	public void SetStretch(int32 stretch)
	{
		CQt.QFont_SetStretch(this.nativePtr, stretch);
	}
	
	public double LetterSpacing()
	{
		return CQt.QFont_LetterSpacing(this.nativePtr);
	}
	
	public int64 LetterSpacingType()
	{
		return CQt.QFont_LetterSpacingType(this.nativePtr);
	}
	
	public void SetLetterSpacing(int64 typeVal, double spacing)
	{
		CQt.QFont_SetLetterSpacing(this.nativePtr, typeVal, spacing);
	}
	
	public double WordSpacing()
	{
		return CQt.QFont_WordSpacing(this.nativePtr);
	}
	
	public void SetWordSpacing(double spacing)
	{
		CQt.QFont_SetWordSpacing(this.nativePtr, spacing);
	}
	
	public void SetCapitalization(int64 capitalization)
	{
		CQt.QFont_SetCapitalization(this.nativePtr, capitalization);
	}
	
	public int64 Capitalization()
	{
		return CQt.QFont_Capitalization(this.nativePtr);
	}
	
	public void SetHintingPreference(int64 hintingPreference)
	{
		CQt.QFont_SetHintingPreference(this.nativePtr, hintingPreference);
	}
	
	public int64 HintingPreference()
	{
		return CQt.QFont_HintingPreference(this.nativePtr);
	}
	
	public bool ExactMatch()
	{
		return CQt.QFont_ExactMatch(this.nativePtr);
	}
	
	public void OperatorAssign(IQFont param1)
	{
		CQt.QFont_OperatorAssign(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public bool OperatorEqual(IQFont param1)
	{
		return CQt.QFont_OperatorEqual(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public bool OperatorNotEqual(IQFont param1)
	{
		return CQt.QFont_OperatorNotEqual(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public bool OperatorLesser(IQFont param1)
	{
		return CQt.QFont_OperatorLesser(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void ToQVariant()
	{
		CQt.QFont_ToQVariant(this.nativePtr);
	}
	
	public bool IsCopyOf(IQFont param1)
	{
		return CQt.QFont_IsCopyOf(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public libqt_string Key()
	{
		return CQt.QFont_Key(this.nativePtr);
	}
	
	public libqt_string ToString()
	{
		return CQt.QFont_ToString(this.nativePtr);
	}
	
	public bool FromString(String param1)
	{
		return CQt.QFont_FromString(this.nativePtr, libqt_string(param1));
	}
	
	public static libqt_string Substitute(String param1)
	{
		return CQt.QFont_Substitute(libqt_string(param1));
	}
	
	public static libqt_string[] Substitutes(String param1)
	{
		return CQt.QFont_Substitutes(libqt_string(param1));
	}
	
	public static libqt_string[] Substitutions()
	{
		return CQt.QFont_Substitutions();
	}
	
	public static void InsertSubstitution(String param1, String param2)
	{
		CQt.QFont_InsertSubstitution(libqt_string(param1), libqt_string(param2));
	}
	
	public static void InsertSubstitutions(String param1, String[] param2)
	{
		CQt.QFont_InsertSubstitutions(libqt_string(param1), null);
	}
	
	public static void RemoveSubstitutions(String param1)
	{
		CQt.QFont_RemoveSubstitutions(libqt_string(param1));
	}
	
	public static void Initialize()
	{
		CQt.QFont_Initialize();
	}
	
	public static void Cleanup()
	{
		CQt.QFont_Cleanup();
	}
	
	public static void CacheStatistics()
	{
		CQt.QFont_CacheStatistics();
	}
	
	public libqt_string DefaultFamily()
	{
		return CQt.QFont_DefaultFamily(this.nativePtr);
	}
	
	public void Resolve(IQFont param1)
	{
		CQt.QFont_Resolve(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public uint32 ResolveMask()
	{
		return CQt.QFont_ResolveMask(this.nativePtr);
	}
	
	public void SetResolveMask(uint32 mask)
	{
		CQt.QFont_SetResolveMask(this.nativePtr, mask);
	}
	
	public void SetLegacyWeight(int32 legacyWeight)
	{
		CQt.QFont_SetLegacyWeight(this.nativePtr, legacyWeight);
	}
	
	public int32 LegacyWeight()
	{
		return CQt.QFont_LegacyWeight(this.nativePtr);
	}
	
	public void SetStyleHint2(int64 param1, int64 param2)
	{
		CQt.QFont_SetStyleHint2(this.nativePtr, param1, param2);
	}
	
}
extension CQt
{
	[LinkName("QFont_new")]
	public static extern void* QFont_new();
	[LinkName("QFont_new2")]
	public static extern void* QFont_new2(libqt_string family);
	[LinkName("QFont_new3")]
	public static extern void* QFont_new3(libqt_string[] families);
	[LinkName("QFont_new4")]
	public static extern void* QFont_new4(void* font, void* pd);
	[LinkName("QFont_new5")]
	public static extern void* QFont_new5(void* font);
	[LinkName("QFont_new6")]
	public static extern void* QFont_new6(libqt_string family, int32 pointSize);
	[LinkName("QFont_new7")]
	public static extern void* QFont_new7(libqt_string family, int32 pointSize, int32 weight);
	[LinkName("QFont_new8")]
	public static extern void* QFont_new8(libqt_string family, int32 pointSize, int32 weight, bool italic);
	[LinkName("QFont_new9")]
	public static extern void* QFont_new9(libqt_string[] families, int32 pointSize);
	[LinkName("QFont_new10")]
	public static extern void* QFont_new10(libqt_string[] families, int32 pointSize, int32 weight);
	[LinkName("QFont_new11")]
	public static extern void* QFont_new11(libqt_string[] families, int32 pointSize, int32 weight, bool italic);
	[LinkName("QFont_Swap")]
	public static extern void QFont_Swap(void* c_this, void* other);
	[LinkName("QFont_Family")]
	public static extern libqt_string QFont_Family(void* c_this);
	[LinkName("QFont_SetFamily")]
	public static extern void QFont_SetFamily(void* c_this, libqt_string family);
	[LinkName("QFont_Families")]
	public static extern libqt_string[] QFont_Families(void* c_this);
	[LinkName("QFont_SetFamilies")]
	public static extern void QFont_SetFamilies(void* c_this, libqt_string[] families);
	[LinkName("QFont_StyleName")]
	public static extern libqt_string QFont_StyleName(void* c_this);
	[LinkName("QFont_SetStyleName")]
	public static extern void QFont_SetStyleName(void* c_this, libqt_string styleName);
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
	public static extern void QFont_OperatorAssign(void* c_this, void* param1);
	[LinkName("QFont_OperatorEqual")]
	public static extern bool QFont_OperatorEqual(void* c_this, void* param1);
	[LinkName("QFont_OperatorNotEqual")]
	public static extern bool QFont_OperatorNotEqual(void* c_this, void* param1);
	[LinkName("QFont_OperatorLesser")]
	public static extern bool QFont_OperatorLesser(void* c_this, void* param1);
	[LinkName("QFont_ToQVariant")]
	public static extern void QFont_ToQVariant(void* c_this);
	[LinkName("QFont_IsCopyOf")]
	public static extern bool QFont_IsCopyOf(void* c_this, void* param1);
	[LinkName("QFont_Key")]
	public static extern libqt_string QFont_Key(void* c_this);
	[LinkName("QFont_ToString")]
	public static extern libqt_string QFont_ToString(void* c_this);
	[LinkName("QFont_FromString")]
	public static extern bool QFont_FromString(void* c_this, libqt_string param1);
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
	public static extern libqt_string QFont_DefaultFamily(void* c_this);
	[LinkName("QFont_Resolve")]
	public static extern void QFont_Resolve(void* c_this, void* param1);
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
	/// Delete this object from C++ memory
	[LinkName("QFont_Delete")]
	public static extern void QFont_Delete(void* self);
}