using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QFontDialog__FontDialogOption
{
	NoButtons = 1,
	DontUseNativeDialog = 2,
	ScalableFonts = 4,
	NonScalableFonts = 8,
	MonospacedFonts = 16,
	ProportionalFonts = 32,
}
public struct QFontDialog
{
	[LinkName("QFontDialog_new")]
	public static extern void* QFontDialog_new(QWidget parent);
	[LinkName("QFontDialog_new2")]
	public static extern void* QFontDialog_new2();
	[LinkName("QFontDialog_new3")]
	public static extern void* QFontDialog_new3(QFont initial);
	[LinkName("QFontDialog_new4")]
	public static extern void* QFontDialog_new4(QFont initial, QWidget parent);
	[LinkName("QFontDialog_MetaObject")]
	public static extern QMetaObject QFontDialog_MetaObject(void* c_this);
	[LinkName("QFontDialog_Metacast")]
	public static extern void QFontDialog_Metacast(void* c_this, char8[] param1);
	[LinkName("QFontDialog_Metacall")]
	public static extern int32 QFontDialog_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QFontDialog_Tr")]
	public static extern char8[] QFontDialog_Tr(char8[] s);
	[LinkName("QFontDialog_SetCurrentFont")]
	public static extern void QFontDialog_SetCurrentFont(void* c_this, QFont font);
	[LinkName("QFontDialog_CurrentFont")]
	public static extern QFont QFontDialog_CurrentFont(void* c_this);
	[LinkName("QFontDialog_SelectedFont")]
	public static extern QFont QFontDialog_SelectedFont(void* c_this);
	[LinkName("QFontDialog_SetOption")]
	public static extern void QFontDialog_SetOption(void* c_this, int64 option);
	[LinkName("QFontDialog_TestOption")]
	public static extern bool QFontDialog_TestOption(void* c_this, int64 option);
	[LinkName("QFontDialog_SetOptions")]
	public static extern void QFontDialog_SetOptions(void* c_this, int64 options);
	[LinkName("QFontDialog_Options")]
	public static extern int64 QFontDialog_Options(void* c_this);
	[LinkName("QFontDialog_SetVisible")]
	public static extern void QFontDialog_SetVisible(void* c_this, bool visible);
	[LinkName("QFontDialog_GetFont")]
	public static extern QFont QFontDialog_GetFont(bool ok);
	[LinkName("QFontDialog_GetFont2")]
	public static extern QFont QFontDialog_GetFont2(bool ok, QFont initial);
	[LinkName("QFontDialog_CurrentFontChanged")]
	public static extern void QFontDialog_CurrentFontChanged(void* c_this, QFont font);
	[LinkName("QFontDialog_FontSelected")]
	public static extern void QFontDialog_FontSelected(void* c_this, QFont font);
	[LinkName("QFontDialog_ChangeEvent")]
	public static extern void QFontDialog_ChangeEvent(void* c_this, QEvent event);
	[LinkName("QFontDialog_Done")]
	public static extern void QFontDialog_Done(void* c_this, int32 result);
	[LinkName("QFontDialog_EventFilter")]
	public static extern bool QFontDialog_EventFilter(void* c_this, QObject object, QEvent event);
	[LinkName("QFontDialog_Tr2")]
	public static extern char8[] QFontDialog_Tr2(char8[] s, char8[] c);
	[LinkName("QFontDialog_Tr3")]
	public static extern char8[] QFontDialog_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QFontDialog_SetOption2")]
	public static extern void QFontDialog_SetOption2(void* c_this, int64 option, bool on);
	[LinkName("QFontDialog_GetFont22")]
	public static extern QFont QFontDialog_GetFont22(bool ok, QWidget parent);
	[LinkName("QFontDialog_GetFont3")]
	public static extern QFont QFontDialog_GetFont3(bool ok, QFont initial, QWidget parent);
	[LinkName("QFontDialog_GetFont4")]
	public static extern QFont QFontDialog_GetFont4(bool ok, QFont initial, QWidget parent, char8[] title);
	[LinkName("QFontDialog_GetFont5")]
	public static extern QFont QFontDialog_GetFont5(bool ok, QFont initial, QWidget parent, char8[] title, int64 options);
}