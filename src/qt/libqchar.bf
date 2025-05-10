using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QChar__SpecialCharacter
{
	Null = 0,
	Tabulation = 9,
	LineFeed = 10,
	FormFeed = 12,
	CarriageReturn = 13,
	Space = 32,
	Nbsp = 160,
	SoftHyphen = 173,
	ReplacementCharacter = 65533,
	ObjectReplacementCharacter = 65532,
	ByteOrderMark = 65279,
	ByteOrderSwapped = 65534,
	ParagraphSeparator = 8233,
	LineSeparator = 8232,
	VisualTabCharacter = 8594,
	LastValidCodePoint = 1114111,
}
[AllowDuplicates]
public enum QChar__Category
{
	Mark_NonSpacing = 0,
	Mark_SpacingCombining = 1,
	Mark_Enclosing = 2,
	Number_DecimalDigit = 3,
	Number_Letter = 4,
	Number_Other = 5,
	Separator_Space = 6,
	Separator_Line = 7,
	Separator_Paragraph = 8,
	Other_Control = 9,
	Other_Format = 10,
	Other_Surrogate = 11,
	Other_PrivateUse = 12,
	Other_NotAssigned = 13,
	Letter_Uppercase = 14,
	Letter_Lowercase = 15,
	Letter_Titlecase = 16,
	Letter_Modifier = 17,
	Letter_Other = 18,
	Punctuation_Connector = 19,
	Punctuation_Dash = 20,
	Punctuation_Open = 21,
	Punctuation_Close = 22,
	Punctuation_InitialQuote = 23,
	Punctuation_FinalQuote = 24,
	Punctuation_Other = 25,
	Symbol_Math = 26,
	Symbol_Currency = 27,
	Symbol_Modifier = 28,
	Symbol_Other = 29,
}
[AllowDuplicates]
public enum QChar__Script
{
	Script_Unknown = 0,
	Script_Inherited = 1,
	Script_Common = 2,
	Script_Latin = 3,
	Script_Greek = 4,
	Script_Cyrillic = 5,
	Script_Armenian = 6,
	Script_Hebrew = 7,
	Script_Arabic = 8,
	Script_Syriac = 9,
	Script_Thaana = 10,
	Script_Devanagari = 11,
	Script_Bengali = 12,
	Script_Gurmukhi = 13,
	Script_Gujarati = 14,
	Script_Oriya = 15,
	Script_Tamil = 16,
	Script_Telugu = 17,
	Script_Kannada = 18,
	Script_Malayalam = 19,
	Script_Sinhala = 20,
	Script_Thai = 21,
	Script_Lao = 22,
	Script_Tibetan = 23,
	Script_Myanmar = 24,
	Script_Georgian = 25,
	Script_Hangul = 26,
	Script_Ethiopic = 27,
	Script_Cherokee = 28,
	Script_CanadianAboriginal = 29,
	Script_Ogham = 30,
	Script_Runic = 31,
	Script_Khmer = 32,
	Script_Mongolian = 33,
	Script_Hiragana = 34,
	Script_Katakana = 35,
	Script_Bopomofo = 36,
	Script_Han = 37,
	Script_Yi = 38,
	Script_OldItalic = 39,
	Script_Gothic = 40,
	Script_Deseret = 41,
	Script_Tagalog = 42,
	Script_Hanunoo = 43,
	Script_Buhid = 44,
	Script_Tagbanwa = 45,
	Script_Coptic = 46,
	Script_Limbu = 47,
	Script_TaiLe = 48,
	Script_LinearB = 49,
	Script_Ugaritic = 50,
	Script_Shavian = 51,
	Script_Osmanya = 52,
	Script_Cypriot = 53,
	Script_Braille = 54,
	Script_Buginese = 55,
	Script_NewTaiLue = 56,
	Script_Glagolitic = 57,
	Script_Tifinagh = 58,
	Script_SylotiNagri = 59,
	Script_OldPersian = 60,
	Script_Kharoshthi = 61,
	Script_Balinese = 62,
	Script_Cuneiform = 63,
	Script_Phoenician = 64,
	Script_PhagsPa = 65,
	Script_Nko = 66,
	Script_Sundanese = 67,
	Script_Lepcha = 68,
	Script_OlChiki = 69,
	Script_Vai = 70,
	Script_Saurashtra = 71,
	Script_KayahLi = 72,
	Script_Rejang = 73,
	Script_Lycian = 74,
	Script_Carian = 75,
	Script_Lydian = 76,
	Script_Cham = 77,
	Script_TaiTham = 78,
	Script_TaiViet = 79,
	Script_Avestan = 80,
	Script_EgyptianHieroglyphs = 81,
	Script_Samaritan = 82,
	Script_Lisu = 83,
	Script_Bamum = 84,
	Script_Javanese = 85,
	Script_MeeteiMayek = 86,
	Script_ImperialAramaic = 87,
	Script_OldSouthArabian = 88,
	Script_InscriptionalParthian = 89,
	Script_InscriptionalPahlavi = 90,
	Script_OldTurkic = 91,
	Script_Kaithi = 92,
	Script_Batak = 93,
	Script_Brahmi = 94,
	Script_Mandaic = 95,
	Script_Chakma = 96,
	Script_MeroiticCursive = 97,
	Script_MeroiticHieroglyphs = 98,
	Script_Miao = 99,
	Script_Sharada = 100,
	Script_SoraSompeng = 101,
	Script_Takri = 102,
	Script_CaucasianAlbanian = 103,
	Script_BassaVah = 104,
	Script_Duployan = 105,
	Script_Elbasan = 106,
	Script_Grantha = 107,
	Script_PahawhHmong = 108,
	Script_Khojki = 109,
	Script_LinearA = 110,
	Script_Mahajani = 111,
	Script_Manichaean = 112,
	Script_MendeKikakui = 113,
	Script_Modi = 114,
	Script_Mro = 115,
	Script_OldNorthArabian = 116,
	Script_Nabataean = 117,
	Script_Palmyrene = 118,
	Script_PauCinHau = 119,
	Script_OldPermic = 120,
	Script_PsalterPahlavi = 121,
	Script_Siddham = 122,
	Script_Khudawadi = 123,
	Script_Tirhuta = 124,
	Script_WarangCiti = 125,
	Script_Ahom = 126,
	Script_AnatolianHieroglyphs = 127,
	Script_Hatran = 128,
	Script_Multani = 129,
	Script_OldHungarian = 130,
	Script_SignWriting = 131,
	Script_Adlam = 132,
	Script_Bhaiksuki = 133,
	Script_Marchen = 134,
	Script_Newa = 135,
	Script_Osage = 136,
	Script_Tangut = 137,
	Script_MasaramGondi = 138,
	Script_Nushu = 139,
	Script_Soyombo = 140,
	Script_ZanabazarSquare = 141,
	Script_Dogra = 142,
	Script_GunjalaGondi = 143,
	Script_HanifiRohingya = 144,
	Script_Makasar = 145,
	Script_Medefaidrin = 146,
	Script_OldSogdian = 147,
	Script_Sogdian = 148,
	Script_Elymaic = 149,
	Script_Nandinagari = 150,
	Script_NyiakengPuachueHmong = 151,
	Script_Wancho = 152,
	Script_Chorasmian = 153,
	Script_DivesAkuru = 154,
	Script_KhitanSmallScript = 155,
	Script_Yezidi = 156,
	Script_CyproMinoan = 157,
	Script_OldUyghur = 158,
	Script_Tangsa = 159,
	Script_Toto = 160,
	Script_Vithkuqi = 161,
	ScriptCount = 162,
}
[AllowDuplicates]
public enum QChar__Direction
{
	DirL = 0,
	DirR = 1,
	DirEN = 2,
	DirES = 3,
	DirET = 4,
	DirAN = 5,
	DirCS = 6,
	DirB = 7,
	DirS = 8,
	DirWS = 9,
	DirON = 10,
	DirLRE = 11,
	DirLRO = 12,
	DirAL = 13,
	DirRLE = 14,
	DirRLO = 15,
	DirPDF = 16,
	DirNSM = 17,
	DirBN = 18,
	DirLRI = 19,
	DirRLI = 20,
	DirFSI = 21,
	DirPDI = 22,
}
[AllowDuplicates]
public enum QChar__Decomposition
{
	NoDecomposition = 0,
	Canonical = 1,
	Font = 2,
	NoBreak = 3,
	Initial = 4,
	Medial = 5,
	Final = 6,
	Isolated = 7,
	Circle = 8,
	Super = 9,
	Sub = 10,
	Vertical = 11,
	Wide = 12,
	Narrow = 13,
	Small = 14,
	Square = 15,
	Compat = 16,
	Fraction = 17,
}
[AllowDuplicates]
public enum QChar__JoiningType
{
	Joining_None = 0,
	Joining_Causing = 1,
	Joining_Dual = 2,
	Joining_Right = 3,
	Joining_Left = 4,
	Joining_Transparent = 5,
}
[AllowDuplicates]
public enum QChar__CombiningClass
{
	Combining_BelowLeftAttached = 200,
	Combining_BelowAttached = 202,
	Combining_BelowRightAttached = 204,
	Combining_LeftAttached = 208,
	Combining_RightAttached = 210,
	Combining_AboveLeftAttached = 212,
	Combining_AboveAttached = 214,
	Combining_AboveRightAttached = 216,
	Combining_BelowLeft = 218,
	Combining_Below = 220,
	Combining_BelowRight = 222,
	Combining_Left = 224,
	Combining_Right = 226,
	Combining_AboveLeft = 228,
	Combining_Above = 230,
	Combining_AboveRight = 232,
	Combining_DoubleBelow = 233,
	Combining_DoubleAbove = 234,
	Combining_IotaSubscript = 240,
}
[AllowDuplicates]
public enum QChar__UnicodeVersion
{
	Unicode_Unassigned = 0,
	Unicode_1_1 = 1,
	Unicode_2_0 = 2,
	Unicode_2_1_2 = 3,
	Unicode_3_0 = 4,
	Unicode_3_1 = 5,
	Unicode_3_2 = 6,
	Unicode_4_0 = 7,
	Unicode_4_1 = 8,
	Unicode_5_0 = 9,
	Unicode_5_1 = 10,
	Unicode_5_2 = 11,
	Unicode_6_0 = 12,
	Unicode_6_1 = 13,
	Unicode_6_2 = 14,
	Unicode_6_3 = 15,
	Unicode_7_0 = 16,
	Unicode_8_0 = 17,
	Unicode_9_0 = 18,
	Unicode_10_0 = 19,
	Unicode_11_0 = 20,
	Unicode_12_0 = 21,
	Unicode_12_1 = 22,
	Unicode_13_0 = 23,
	Unicode_14_0 = 24,
}
public interface IQLatin1Char
{
	void* NativePtr { get; }
}
public class QLatin1Char : IQLatin1Char
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQLatin1Char other)
	{
		this.nativePtr = CQt.QLatin1Char_new((other == default) ? default : (void*)other.NativePtr);
	}
	
	public ~this()
	{
		CQt.QLatin1Char_Delete(this.nativePtr);
	}
	
	public int8 ToLatin1()
	{
		return CQt.QLatin1Char_ToLatin1(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QLatin1Char_new")]
	public static extern void* QLatin1Char_new(void* other);
	[LinkName("QLatin1Char_new2")]
	public static extern void* QLatin1Char_new2(void* other);
	[LinkName("QLatin1Char_new3")]
	public static extern void* QLatin1Char_new3(int8 c);
	[LinkName("QLatin1Char_new4")]
	public static extern void* QLatin1Char_new4(void* param1);
	[LinkName("QLatin1Char_ToLatin1")]
	public static extern int8 QLatin1Char_ToLatin1(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QLatin1Char_Delete")]
	public static extern void QLatin1Char_Delete(void* self);
}
public interface IQChar
{
	void* NativePtr { get; }
}
public class QChar : IQChar
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQChar other)
	{
		this.nativePtr = CQt.QChar_new((other == default) ? default : (void*)other.NativePtr);
	}
	
	public ~this()
	{
		CQt.QChar_Delete(this.nativePtr);
	}
	
	public int64 Category()
	{
		return CQt.QChar_Category(this.nativePtr);
	}
	
	public int64 Direction()
	{
		return CQt.QChar_Direction(this.nativePtr);
	}
	
	public int64 JoiningType()
	{
		return CQt.QChar_JoiningType(this.nativePtr);
	}
	
	public uint8 CombiningClass()
	{
		return CQt.QChar_CombiningClass(this.nativePtr);
	}
	
	public void MirroredChar()
	{
		CQt.QChar_MirroredChar(this.nativePtr);
	}
	
	public bool HasMirrored()
	{
		return CQt.QChar_HasMirrored(this.nativePtr);
	}
	
	public libqt_string Decomposition()
	{
		return CQt.QChar_Decomposition(this.nativePtr);
	}
	
	public int64 DecompositionTag()
	{
		return CQt.QChar_DecompositionTag(this.nativePtr);
	}
	
	public int32 DigitValue()
	{
		return CQt.QChar_DigitValue(this.nativePtr);
	}
	
	public void ToLower()
	{
		CQt.QChar_ToLower(this.nativePtr);
	}
	
	public void ToUpper()
	{
		CQt.QChar_ToUpper(this.nativePtr);
	}
	
	public void ToTitleCase()
	{
		CQt.QChar_ToTitleCase(this.nativePtr);
	}
	
	public void ToCaseFolded()
	{
		CQt.QChar_ToCaseFolded(this.nativePtr);
	}
	
	public int64 Script()
	{
		return CQt.QChar_Script(this.nativePtr);
	}
	
	public int64 UnicodeVersion()
	{
		return CQt.QChar_UnicodeVersion(this.nativePtr);
	}
	
	public int8 ToLatin1()
	{
		return CQt.QChar_ToLatin1(this.nativePtr);
	}
	
	public static void FromLatin1(int8 c)
	{
		CQt.QChar_FromLatin1(c);
	}
	
	public bool IsNull()
	{
		return CQt.QChar_IsNull(this.nativePtr);
	}
	
	public bool IsPrint()
	{
		return CQt.QChar_IsPrint(this.nativePtr);
	}
	
	public bool IsSpace()
	{
		return CQt.QChar_IsSpace(this.nativePtr);
	}
	
	public bool IsMark()
	{
		return CQt.QChar_IsMark(this.nativePtr);
	}
	
	public bool IsPunct()
	{
		return CQt.QChar_IsPunct(this.nativePtr);
	}
	
	public bool IsSymbol()
	{
		return CQt.QChar_IsSymbol(this.nativePtr);
	}
	
	public bool IsLetter()
	{
		return CQt.QChar_IsLetter(this.nativePtr);
	}
	
	public bool IsNumber()
	{
		return CQt.QChar_IsNumber(this.nativePtr);
	}
	
	public bool IsLetterOrNumber()
	{
		return CQt.QChar_IsLetterOrNumber(this.nativePtr);
	}
	
	public bool IsDigit()
	{
		return CQt.QChar_IsDigit(this.nativePtr);
	}
	
	public bool IsLower()
	{
		return CQt.QChar_IsLower(this.nativePtr);
	}
	
	public bool IsUpper()
	{
		return CQt.QChar_IsUpper(this.nativePtr);
	}
	
	public bool IsTitleCase()
	{
		return CQt.QChar_IsTitleCase(this.nativePtr);
	}
	
	public bool IsNonCharacter()
	{
		return CQt.QChar_IsNonCharacter(this.nativePtr);
	}
	
	public bool IsHighSurrogate()
	{
		return CQt.QChar_IsHighSurrogate(this.nativePtr);
	}
	
	public bool IsLowSurrogate()
	{
		return CQt.QChar_IsLowSurrogate(this.nativePtr);
	}
	
	public bool IsSurrogate()
	{
		return CQt.QChar_IsSurrogate(this.nativePtr);
	}
	
	public uint8 Cell()
	{
		return CQt.QChar_Cell(this.nativePtr);
	}
	
	public uint8 Row()
	{
		return CQt.QChar_Row(this.nativePtr);
	}
	
	public void SetCell(uint8 acell)
	{
		CQt.QChar_SetCell(this.nativePtr, acell);
	}
	
	public void SetRow(uint8 arow)
	{
		CQt.QChar_SetRow(this.nativePtr, arow);
	}
	
	public static int64 CurrentUnicodeVersion()
	{
		return CQt.QChar_CurrentUnicodeVersion();
	}
	
}
extension CQt
{
	[LinkName("QChar_new")]
	public static extern void* QChar_new(void* other);
	[LinkName("QChar_new2")]
	public static extern void* QChar_new2(void* other);
	[LinkName("QChar_new3")]
	public static extern void* QChar_new3();
	[LinkName("QChar_new4")]
	public static extern void* QChar_new4(uint16 rc);
	[LinkName("QChar_new5")]
	public static extern void* QChar_new5(uint8 c, uint8 r);
	[LinkName("QChar_new6")]
	public static extern void* QChar_new6(int16 rc);
	[LinkName("QChar_new7")]
	public static extern void* QChar_new7(uint32 rc);
	[LinkName("QChar_new8")]
	public static extern void* QChar_new8(int32 rc);
	[LinkName("QChar_new9")]
	public static extern void* QChar_new9(int64 s);
	[LinkName("QChar_new10")]
	public static extern void* QChar_new10(void ch);
	[LinkName("QChar_new11")]
	public static extern void* QChar_new11(int8 c);
	[LinkName("QChar_new12")]
	public static extern void* QChar_new12(uint8 c);
	[LinkName("QChar_new13")]
	public static extern void* QChar_new13(void* param1);
	[LinkName("QChar_Category")]
	public static extern int64 QChar_Category(void* c_this);
	[LinkName("QChar_Direction")]
	public static extern int64 QChar_Direction(void* c_this);
	[LinkName("QChar_JoiningType")]
	public static extern int64 QChar_JoiningType(void* c_this);
	[LinkName("QChar_CombiningClass")]
	public static extern uint8 QChar_CombiningClass(void* c_this);
	[LinkName("QChar_MirroredChar")]
	public static extern void QChar_MirroredChar(void* c_this);
	[LinkName("QChar_HasMirrored")]
	public static extern bool QChar_HasMirrored(void* c_this);
	[LinkName("QChar_Decomposition")]
	public static extern libqt_string QChar_Decomposition(void* c_this);
	[LinkName("QChar_DecompositionTag")]
	public static extern int64 QChar_DecompositionTag(void* c_this);
	[LinkName("QChar_DigitValue")]
	public static extern int32 QChar_DigitValue(void* c_this);
	[LinkName("QChar_ToLower")]
	public static extern void QChar_ToLower(void* c_this);
	[LinkName("QChar_ToUpper")]
	public static extern void QChar_ToUpper(void* c_this);
	[LinkName("QChar_ToTitleCase")]
	public static extern void QChar_ToTitleCase(void* c_this);
	[LinkName("QChar_ToCaseFolded")]
	public static extern void QChar_ToCaseFolded(void* c_this);
	[LinkName("QChar_Script")]
	public static extern int64 QChar_Script(void* c_this);
	[LinkName("QChar_UnicodeVersion")]
	public static extern int64 QChar_UnicodeVersion(void* c_this);
	[LinkName("QChar_ToLatin1")]
	public static extern int8 QChar_ToLatin1(void* c_this);
	[LinkName("QChar_FromLatin1")]
	public static extern void QChar_FromLatin1(int8 c);
	[LinkName("QChar_IsNull")]
	public static extern bool QChar_IsNull(void* c_this);
	[LinkName("QChar_IsPrint")]
	public static extern bool QChar_IsPrint(void* c_this);
	[LinkName("QChar_IsSpace")]
	public static extern bool QChar_IsSpace(void* c_this);
	[LinkName("QChar_IsMark")]
	public static extern bool QChar_IsMark(void* c_this);
	[LinkName("QChar_IsPunct")]
	public static extern bool QChar_IsPunct(void* c_this);
	[LinkName("QChar_IsSymbol")]
	public static extern bool QChar_IsSymbol(void* c_this);
	[LinkName("QChar_IsLetter")]
	public static extern bool QChar_IsLetter(void* c_this);
	[LinkName("QChar_IsNumber")]
	public static extern bool QChar_IsNumber(void* c_this);
	[LinkName("QChar_IsLetterOrNumber")]
	public static extern bool QChar_IsLetterOrNumber(void* c_this);
	[LinkName("QChar_IsDigit")]
	public static extern bool QChar_IsDigit(void* c_this);
	[LinkName("QChar_IsLower")]
	public static extern bool QChar_IsLower(void* c_this);
	[LinkName("QChar_IsUpper")]
	public static extern bool QChar_IsUpper(void* c_this);
	[LinkName("QChar_IsTitleCase")]
	public static extern bool QChar_IsTitleCase(void* c_this);
	[LinkName("QChar_IsNonCharacter")]
	public static extern bool QChar_IsNonCharacter(void* c_this);
	[LinkName("QChar_IsHighSurrogate")]
	public static extern bool QChar_IsHighSurrogate(void* c_this);
	[LinkName("QChar_IsLowSurrogate")]
	public static extern bool QChar_IsLowSurrogate(void* c_this);
	[LinkName("QChar_IsSurrogate")]
	public static extern bool QChar_IsSurrogate(void* c_this);
	[LinkName("QChar_Cell")]
	public static extern uint8 QChar_Cell(void* c_this);
	[LinkName("QChar_Row")]
	public static extern uint8 QChar_Row(void* c_this);
	[LinkName("QChar_SetCell")]
	public static extern void QChar_SetCell(void* c_this, uint8 acell);
	[LinkName("QChar_SetRow")]
	public static extern void QChar_SetRow(void* c_this, uint8 arow);
	[LinkName("QChar_CurrentUnicodeVersion")]
	public static extern int64 QChar_CurrentUnicodeVersion();
	/// Delete this object from C++ memory
	[LinkName("QChar_Delete")]
	public static extern void QChar_Delete(void* self);
}