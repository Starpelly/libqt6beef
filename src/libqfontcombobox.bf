using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QFontComboBox__FontFilter
{
	AllFonts = 0,
	ScalableFonts = 1,
	NonScalableFonts = 2,
	MonospacedFonts = 4,
	ProportionalFonts = 8,
}
public struct QFontComboBox
{
	[LinkName("QFontComboBox_new")]
	public static extern void* QFontComboBox_new(QWidget parent);
	[LinkName("QFontComboBox_new2")]
	public static extern void* QFontComboBox_new2();
	[LinkName("QFontComboBox_MetaObject")]
	public static extern QMetaObject QFontComboBox_MetaObject(void* c_this);
	[LinkName("QFontComboBox_Metacast")]
	public static extern void QFontComboBox_Metacast(void* c_this, char8[] param1);
	[LinkName("QFontComboBox_Metacall")]
	public static extern int32 QFontComboBox_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QFontComboBox_Tr")]
	public static extern char8[] QFontComboBox_Tr(char8[] s);
	[LinkName("QFontComboBox_SetWritingSystem")]
	public static extern void QFontComboBox_SetWritingSystem(void* c_this, int64 writingSystem);
	[LinkName("QFontComboBox_WritingSystem")]
	public static extern int64 QFontComboBox_WritingSystem(void* c_this);
	[LinkName("QFontComboBox_SetFontFilters")]
	public static extern void QFontComboBox_SetFontFilters(void* c_this, int64 filters);
	[LinkName("QFontComboBox_FontFilters")]
	public static extern int64 QFontComboBox_FontFilters(void* c_this);
	[LinkName("QFontComboBox_CurrentFont")]
	public static extern QFont QFontComboBox_CurrentFont(void* c_this);
	[LinkName("QFontComboBox_SizeHint")]
	public static extern QSize QFontComboBox_SizeHint(void* c_this);
	[LinkName("QFontComboBox_SetSampleTextForSystem")]
	public static extern void QFontComboBox_SetSampleTextForSystem(void* c_this, int64 writingSystem, char8[] sampleText);
	[LinkName("QFontComboBox_SampleTextForSystem")]
	public static extern char8[] QFontComboBox_SampleTextForSystem(void* c_this, int64 writingSystem);
	[LinkName("QFontComboBox_SetSampleTextForFont")]
	public static extern void QFontComboBox_SetSampleTextForFont(void* c_this, char8[] fontFamily, char8[] sampleText);
	[LinkName("QFontComboBox_SampleTextForFont")]
	public static extern char8[] QFontComboBox_SampleTextForFont(void* c_this, char8[] fontFamily);
	[LinkName("QFontComboBox_SetDisplayFont")]
	public static extern void QFontComboBox_SetDisplayFont(void* c_this, char8[] fontFamily, QFont font);
	[LinkName("QFontComboBox_SetCurrentFont")]
	public static extern void QFontComboBox_SetCurrentFont(void* c_this, QFont f);
	[LinkName("QFontComboBox_CurrentFontChanged")]
	public static extern void QFontComboBox_CurrentFontChanged(void* c_this, QFont f);
	[LinkName("QFontComboBox_Event")]
	public static extern bool QFontComboBox_Event(void* c_this, QEvent e);
	[LinkName("QFontComboBox_Tr2")]
	public static extern char8[] QFontComboBox_Tr2(char8[] s, char8[] c);
	[LinkName("QFontComboBox_Tr3")]
	public static extern char8[] QFontComboBox_Tr3(char8[] s, char8[] c, int32 n);
}