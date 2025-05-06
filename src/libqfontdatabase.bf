using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QFontDatabase__WritingSystem
{
	Any = 0,
	Latin = 1,
	Greek = 2,
	Cyrillic = 3,
	Armenian = 4,
	Hebrew = 5,
	Arabic = 6,
	Syriac = 7,
	Thaana = 8,
	Devanagari = 9,
	Bengali = 10,
	Gurmukhi = 11,
	Gujarati = 12,
	Oriya = 13,
	Tamil = 14,
	Telugu = 15,
	Kannada = 16,
	Malayalam = 17,
	Sinhala = 18,
	Thai = 19,
	Lao = 20,
	Tibetan = 21,
	Myanmar = 22,
	Georgian = 23,
	Khmer = 24,
	SimplifiedChinese = 25,
	TraditionalChinese = 26,
	Japanese = 27,
	Korean = 28,
	Vietnamese = 29,
	Symbol = 30,
	Other = 30,
	Ogham = 31,
	Runic = 32,
	Nko = 33,
	WritingSystemsCount = 34,
}
[AllowDuplicates]
public enum QFontDatabase__SystemFont
{
	GeneralFont = 0,
	FixedFont = 1,
	TitleFont = 2,
	SmallestReadableFont = 3,
}
public struct QFontDatabase
{
	[LinkName("QFontDatabase_new")]
	public static extern void* QFontDatabase_new(QFontDatabase other);
	[LinkName("QFontDatabase_new2")]
	public static extern void* QFontDatabase_new2(QFontDatabase other);
	[LinkName("QFontDatabase_new3")]
	public static extern void* QFontDatabase_new3();
	[LinkName("QFontDatabase_StandardSizes")]
	public static extern int32[] QFontDatabase_StandardSizes();
	[LinkName("QFontDatabase_WritingSystems")]
	public static extern int64[] QFontDatabase_WritingSystems();
	[LinkName("QFontDatabase_WritingSystemsWithFamily")]
	public static extern int64[] QFontDatabase_WritingSystemsWithFamily(char8[] family);
	[LinkName("QFontDatabase_Families")]
	public static extern char8[][] QFontDatabase_Families();
	[LinkName("QFontDatabase_Styles")]
	public static extern char8[][] QFontDatabase_Styles(char8[] family);
	[LinkName("QFontDatabase_PointSizes")]
	public static extern int32[] QFontDatabase_PointSizes(char8[] family);
	[LinkName("QFontDatabase_SmoothSizes")]
	public static extern int32[] QFontDatabase_SmoothSizes(char8[] family, char8[] style);
	[LinkName("QFontDatabase_StyleString")]
	public static extern char8[] QFontDatabase_StyleString(QFont font);
	[LinkName("QFontDatabase_StyleStringWithFontInfo")]
	public static extern char8[] QFontDatabase_StyleStringWithFontInfo(QFontInfo fontInfo);
	[LinkName("QFontDatabase_Font")]
	public static extern QFont QFontDatabase_Font(char8[] family, char8[] style, int32 pointSize);
	[LinkName("QFontDatabase_IsBitmapScalable")]
	public static extern bool QFontDatabase_IsBitmapScalable(char8[] family);
	[LinkName("QFontDatabase_IsSmoothlyScalable")]
	public static extern bool QFontDatabase_IsSmoothlyScalable(char8[] family);
	[LinkName("QFontDatabase_IsScalable")]
	public static extern bool QFontDatabase_IsScalable(char8[] family);
	[LinkName("QFontDatabase_IsFixedPitch")]
	public static extern bool QFontDatabase_IsFixedPitch(char8[] family);
	[LinkName("QFontDatabase_Italic")]
	public static extern bool QFontDatabase_Italic(char8[] family, char8[] style);
	[LinkName("QFontDatabase_Bold")]
	public static extern bool QFontDatabase_Bold(char8[] family, char8[] style);
	[LinkName("QFontDatabase_Weight")]
	public static extern int32 QFontDatabase_Weight(char8[] family, char8[] style);
	[LinkName("QFontDatabase_HasFamily")]
	public static extern bool QFontDatabase_HasFamily(char8[] family);
	[LinkName("QFontDatabase_IsPrivateFamily")]
	public static extern bool QFontDatabase_IsPrivateFamily(char8[] family);
	[LinkName("QFontDatabase_WritingSystemName")]
	public static extern char8[] QFontDatabase_WritingSystemName(int64 writingSystem);
	[LinkName("QFontDatabase_WritingSystemSample")]
	public static extern char8[] QFontDatabase_WritingSystemSample(int64 writingSystem);
	[LinkName("QFontDatabase_AddApplicationFont")]
	public static extern int32 QFontDatabase_AddApplicationFont(char8[] fileName);
	[LinkName("QFontDatabase_AddApplicationFontFromData")]
	public static extern int32 QFontDatabase_AddApplicationFontFromData(uint8[] fontData);
	[LinkName("QFontDatabase_ApplicationFontFamilies")]
	public static extern char8[][] QFontDatabase_ApplicationFontFamilies(int32 id);
	[LinkName("QFontDatabase_RemoveApplicationFont")]
	public static extern bool QFontDatabase_RemoveApplicationFont(int32 id);
	[LinkName("QFontDatabase_RemoveAllApplicationFonts")]
	public static extern bool QFontDatabase_RemoveAllApplicationFonts();
	[LinkName("QFontDatabase_SystemFont")]
	public static extern QFont QFontDatabase_SystemFont(int64 typeVal);
	[LinkName("QFontDatabase_Families1")]
	public static extern char8[][] QFontDatabase_Families1(int64 writingSystem);
	[LinkName("QFontDatabase_PointSizes2")]
	public static extern int32[] QFontDatabase_PointSizes2(char8[] family, char8[] style);
	[LinkName("QFontDatabase_IsBitmapScalable2")]
	public static extern bool QFontDatabase_IsBitmapScalable2(char8[] family, char8[] style);
	[LinkName("QFontDatabase_IsSmoothlyScalable2")]
	public static extern bool QFontDatabase_IsSmoothlyScalable2(char8[] family, char8[] style);
	[LinkName("QFontDatabase_IsScalable2")]
	public static extern bool QFontDatabase_IsScalable2(char8[] family, char8[] style);
	[LinkName("QFontDatabase_IsFixedPitch2")]
	public static extern bool QFontDatabase_IsFixedPitch2(char8[] family, char8[] style);
}