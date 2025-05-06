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
public struct QFontComboBox : QComboBox
{
	[LinkName("QFontComboBox_new")]
	public static extern QFontComboBox* QFontComboBox_new(QWidget* parent);
	[LinkName("QFontComboBox_new2")]
	public static extern QFontComboBox* QFontComboBox_new2();
	[LinkName("QFontComboBox_MetaObject")]
	public static extern QMetaObject* QFontComboBox_MetaObject(Self* c_this);
	[LinkName("QFontComboBox_Metacast")]
	public static extern void* QFontComboBox_Metacast(Self* c_this, char8[] param1);
	[LinkName("QFontComboBox_Metacall")]
	public static extern int32 QFontComboBox_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QFontComboBox_Tr")]
	public static extern libqt_string QFontComboBox_Tr(char8[] s);
	[LinkName("QFontComboBox_SetWritingSystem")]
	public static extern void QFontComboBox_SetWritingSystem(Self* c_this, int64 writingSystem);
	[LinkName("QFontComboBox_WritingSystem")]
	public static extern int64 QFontComboBox_WritingSystem(Self* c_this);
	[LinkName("QFontComboBox_SetFontFilters")]
	public static extern void QFontComboBox_SetFontFilters(Self* c_this, int64 filters);
	[LinkName("QFontComboBox_FontFilters")]
	public static extern int64 QFontComboBox_FontFilters(Self* c_this);
	[LinkName("QFontComboBox_CurrentFont")]
	public static extern QFont QFontComboBox_CurrentFont(Self* c_this);
	[LinkName("QFontComboBox_SizeHint")]
	public static extern QSize QFontComboBox_SizeHint(Self* c_this);
	[LinkName("QFontComboBox_SetSampleTextForSystem")]
	public static extern void QFontComboBox_SetSampleTextForSystem(Self* c_this, int64 writingSystem, libqt_string sampleText);
	[LinkName("QFontComboBox_SampleTextForSystem")]
	public static extern libqt_string QFontComboBox_SampleTextForSystem(Self* c_this, int64 writingSystem);
	[LinkName("QFontComboBox_SetSampleTextForFont")]
	public static extern void QFontComboBox_SetSampleTextForFont(Self* c_this, libqt_string fontFamily, libqt_string sampleText);
	[LinkName("QFontComboBox_SampleTextForFont")]
	public static extern libqt_string QFontComboBox_SampleTextForFont(Self* c_this, libqt_string fontFamily);
	[LinkName("QFontComboBox_SetDisplayFont")]
	public static extern void QFontComboBox_SetDisplayFont(Self* c_this, libqt_string fontFamily, QFont* font);
	[LinkName("QFontComboBox_SetCurrentFont")]
	public static extern void QFontComboBox_SetCurrentFont(Self* c_this, QFont* f);
	[LinkName("QFontComboBox_CurrentFontChanged")]
	public static extern void QFontComboBox_CurrentFontChanged(Self* c_this, QFont* f);
	[LinkName("QFontComboBox_Event")]
	public static extern bool QFontComboBox_Event(Self* c_this, QEvent* e);
	[LinkName("QFontComboBox_Tr2")]
	public static extern libqt_string QFontComboBox_Tr2(char8[] s, char8[] c);
	[LinkName("QFontComboBox_Tr3")]
	public static extern libqt_string QFontComboBox_Tr3(char8[] s, char8[] c, int32 n);
}