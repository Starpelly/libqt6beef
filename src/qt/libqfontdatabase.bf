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
public interface IQFontDatabase
{
	void* NativePtr { get; }
}
public class QFontDatabase : IQFontDatabase
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQFontDatabase other)
	{
		this.nativePtr = CQt.QFontDatabase_new((other == default) ? default : (void*)other.NativePtr);
	}
	
	public ~this()
	{
		CQt.QFontDatabase_Delete(this.nativePtr);
	}
	
	public static int32[] StandardSizes()
	{
		return CQt.QFontDatabase_StandardSizes();
	}
	
	public static int64[] WritingSystems()
	{
		return CQt.QFontDatabase_WritingSystems();
	}
	
	public static int64[] WritingSystemsWithFamily(String family)
	{
		return CQt.QFontDatabase_WritingSystemsWithFamily(libqt_string(family));
	}
	
	public static libqt_string[] Families()
	{
		return CQt.QFontDatabase_Families();
	}
	
	public static libqt_string[] Styles(String family)
	{
		return CQt.QFontDatabase_Styles(libqt_string(family));
	}
	
	public static int32[] PointSizes(String family)
	{
		return CQt.QFontDatabase_PointSizes(libqt_string(family));
	}
	
	public static int32[] SmoothSizes(String family, String style)
	{
		return CQt.QFontDatabase_SmoothSizes(libqt_string(family), libqt_string(style));
	}
	
	public static libqt_string StyleString(IQFont font)
	{
		return CQt.QFontDatabase_StyleString((font == default) ? default : (void*)font.NativePtr);
	}
	
	public static libqt_string StyleStringWithFontInfo(IQFontInfo fontInfo)
	{
		return CQt.QFontDatabase_StyleStringWithFontInfo((fontInfo == default) ? default : (void*)fontInfo.NativePtr);
	}
	
	public static void Font(String family, String style, int32 pointSize)
	{
		CQt.QFontDatabase_Font(libqt_string(family), libqt_string(style), pointSize);
	}
	
	public static bool IsBitmapScalable(String family)
	{
		return CQt.QFontDatabase_IsBitmapScalable(libqt_string(family));
	}
	
	public static bool IsSmoothlyScalable(String family)
	{
		return CQt.QFontDatabase_IsSmoothlyScalable(libqt_string(family));
	}
	
	public static bool IsScalable(String family)
	{
		return CQt.QFontDatabase_IsScalable(libqt_string(family));
	}
	
	public static bool IsFixedPitch(String family)
	{
		return CQt.QFontDatabase_IsFixedPitch(libqt_string(family));
	}
	
	public static bool Italic(String family, String style)
	{
		return CQt.QFontDatabase_Italic(libqt_string(family), libqt_string(style));
	}
	
	public static bool Bold(String family, String style)
	{
		return CQt.QFontDatabase_Bold(libqt_string(family), libqt_string(style));
	}
	
	public static int32 Weight(String family, String style)
	{
		return CQt.QFontDatabase_Weight(libqt_string(family), libqt_string(style));
	}
	
	public static bool HasFamily(String family)
	{
		return CQt.QFontDatabase_HasFamily(libqt_string(family));
	}
	
	public static bool IsPrivateFamily(String family)
	{
		return CQt.QFontDatabase_IsPrivateFamily(libqt_string(family));
	}
	
	public static libqt_string WritingSystemName(int64 writingSystem)
	{
		return CQt.QFontDatabase_WritingSystemName(writingSystem);
	}
	
	public static libqt_string WritingSystemSample(int64 writingSystem)
	{
		return CQt.QFontDatabase_WritingSystemSample(writingSystem);
	}
	
	public static int32 AddApplicationFont(String fileName)
	{
		return CQt.QFontDatabase_AddApplicationFont(libqt_string(fileName));
	}
	
	public static int32 AddApplicationFontFromData(String fontData)
	{
		return CQt.QFontDatabase_AddApplicationFontFromData(libqt_string(fontData));
	}
	
	public static libqt_string[] ApplicationFontFamilies(int32 id)
	{
		return CQt.QFontDatabase_ApplicationFontFamilies(id);
	}
	
	public static bool RemoveApplicationFont(int32 id)
	{
		return CQt.QFontDatabase_RemoveApplicationFont(id);
	}
	
	public static bool RemoveAllApplicationFonts()
	{
		return CQt.QFontDatabase_RemoveAllApplicationFonts();
	}
	
	public static void SystemFont(int64 typeVal)
	{
		CQt.QFontDatabase_SystemFont(typeVal);
	}
	
	public static libqt_string[] Families1(int64 writingSystem)
	{
		return CQt.QFontDatabase_Families1(writingSystem);
	}
	
	public static int32[] PointSizes2(String family, String style)
	{
		return CQt.QFontDatabase_PointSizes2(libqt_string(family), libqt_string(style));
	}
	
	public static bool IsBitmapScalable2(String family, String style)
	{
		return CQt.QFontDatabase_IsBitmapScalable2(libqt_string(family), libqt_string(style));
	}
	
	public static bool IsSmoothlyScalable2(String family, String style)
	{
		return CQt.QFontDatabase_IsSmoothlyScalable2(libqt_string(family), libqt_string(style));
	}
	
	public static bool IsScalable2(String family, String style)
	{
		return CQt.QFontDatabase_IsScalable2(libqt_string(family), libqt_string(style));
	}
	
	public static bool IsFixedPitch2(String family, String style)
	{
		return CQt.QFontDatabase_IsFixedPitch2(libqt_string(family), libqt_string(style));
	}
	
}
extension CQt
{
	[LinkName("QFontDatabase_new")]
	public static extern void* QFontDatabase_new(void* other);
	[LinkName("QFontDatabase_new2")]
	public static extern void* QFontDatabase_new2(void* other);
	[LinkName("QFontDatabase_new3")]
	public static extern void* QFontDatabase_new3();
	[LinkName("QFontDatabase_StandardSizes")]
	public static extern int32[] QFontDatabase_StandardSizes();
	[LinkName("QFontDatabase_WritingSystems")]
	public static extern int64[] QFontDatabase_WritingSystems();
	[LinkName("QFontDatabase_WritingSystemsWithFamily")]
	public static extern int64[] QFontDatabase_WritingSystemsWithFamily(libqt_string family);
	[LinkName("QFontDatabase_Families")]
	public static extern libqt_string[] QFontDatabase_Families();
	[LinkName("QFontDatabase_Styles")]
	public static extern libqt_string[] QFontDatabase_Styles(libqt_string family);
	[LinkName("QFontDatabase_PointSizes")]
	public static extern int32[] QFontDatabase_PointSizes(libqt_string family);
	[LinkName("QFontDatabase_SmoothSizes")]
	public static extern int32[] QFontDatabase_SmoothSizes(libqt_string family, libqt_string style);
	[LinkName("QFontDatabase_StyleString")]
	public static extern libqt_string QFontDatabase_StyleString(void* font);
	[LinkName("QFontDatabase_StyleStringWithFontInfo")]
	public static extern libqt_string QFontDatabase_StyleStringWithFontInfo(void* fontInfo);
	[LinkName("QFontDatabase_Font")]
	public static extern void QFontDatabase_Font(libqt_string family, libqt_string style, int32 pointSize);
	[LinkName("QFontDatabase_IsBitmapScalable")]
	public static extern bool QFontDatabase_IsBitmapScalable(libqt_string family);
	[LinkName("QFontDatabase_IsSmoothlyScalable")]
	public static extern bool QFontDatabase_IsSmoothlyScalable(libqt_string family);
	[LinkName("QFontDatabase_IsScalable")]
	public static extern bool QFontDatabase_IsScalable(libqt_string family);
	[LinkName("QFontDatabase_IsFixedPitch")]
	public static extern bool QFontDatabase_IsFixedPitch(libqt_string family);
	[LinkName("QFontDatabase_Italic")]
	public static extern bool QFontDatabase_Italic(libqt_string family, libqt_string style);
	[LinkName("QFontDatabase_Bold")]
	public static extern bool QFontDatabase_Bold(libqt_string family, libqt_string style);
	[LinkName("QFontDatabase_Weight")]
	public static extern int32 QFontDatabase_Weight(libqt_string family, libqt_string style);
	[LinkName("QFontDatabase_HasFamily")]
	public static extern bool QFontDatabase_HasFamily(libqt_string family);
	[LinkName("QFontDatabase_IsPrivateFamily")]
	public static extern bool QFontDatabase_IsPrivateFamily(libqt_string family);
	[LinkName("QFontDatabase_WritingSystemName")]
	public static extern libqt_string QFontDatabase_WritingSystemName(int64 writingSystem);
	[LinkName("QFontDatabase_WritingSystemSample")]
	public static extern libqt_string QFontDatabase_WritingSystemSample(int64 writingSystem);
	[LinkName("QFontDatabase_AddApplicationFont")]
	public static extern int32 QFontDatabase_AddApplicationFont(libqt_string fileName);
	[LinkName("QFontDatabase_AddApplicationFontFromData")]
	public static extern int32 QFontDatabase_AddApplicationFontFromData(libqt_string fontData);
	[LinkName("QFontDatabase_ApplicationFontFamilies")]
	public static extern libqt_string[] QFontDatabase_ApplicationFontFamilies(int32 id);
	[LinkName("QFontDatabase_RemoveApplicationFont")]
	public static extern bool QFontDatabase_RemoveApplicationFont(int32 id);
	[LinkName("QFontDatabase_RemoveAllApplicationFonts")]
	public static extern bool QFontDatabase_RemoveAllApplicationFonts();
	[LinkName("QFontDatabase_SystemFont")]
	public static extern void QFontDatabase_SystemFont(int64 typeVal);
	[LinkName("QFontDatabase_Families1")]
	public static extern libqt_string[] QFontDatabase_Families1(int64 writingSystem);
	[LinkName("QFontDatabase_PointSizes2")]
	public static extern int32[] QFontDatabase_PointSizes2(libqt_string family, libqt_string style);
	[LinkName("QFontDatabase_IsBitmapScalable2")]
	public static extern bool QFontDatabase_IsBitmapScalable2(libqt_string family, libqt_string style);
	[LinkName("QFontDatabase_IsSmoothlyScalable2")]
	public static extern bool QFontDatabase_IsSmoothlyScalable2(libqt_string family, libqt_string style);
	[LinkName("QFontDatabase_IsScalable2")]
	public static extern bool QFontDatabase_IsScalable2(libqt_string family, libqt_string style);
	[LinkName("QFontDatabase_IsFixedPitch2")]
	public static extern bool QFontDatabase_IsFixedPitch2(libqt_string family, libqt_string style);
	/// Delete this object from C++ memory
	[LinkName("QFontDatabase_Delete")]
	public static extern void QFontDatabase_Delete(void* self);
}