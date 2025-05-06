using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QColorDialog__ColorDialogOption
{
	ShowAlphaChannel = 1,
	NoButtons = 2,
	DontUseNativeDialog = 4,
}
public struct QColorDialog
{
	[LinkName("QColorDialog_new")]
	public static extern void* QColorDialog_new(QWidget parent);
	[LinkName("QColorDialog_new2")]
	public static extern void* QColorDialog_new2();
	[LinkName("QColorDialog_new3")]
	public static extern void* QColorDialog_new3(QColor initial);
	[LinkName("QColorDialog_new4")]
	public static extern void* QColorDialog_new4(QColor initial, QWidget parent);
	[LinkName("QColorDialog_MetaObject")]
	public static extern QMetaObject QColorDialog_MetaObject(void* c_this);
	[LinkName("QColorDialog_Metacast")]
	public static extern void QColorDialog_Metacast(void* c_this, char8[] param1);
	[LinkName("QColorDialog_Metacall")]
	public static extern int32 QColorDialog_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QColorDialog_Tr")]
	public static extern char8[] QColorDialog_Tr(char8[] s);
	[LinkName("QColorDialog_SetCurrentColor")]
	public static extern void QColorDialog_SetCurrentColor(void* c_this, QColor color);
	[LinkName("QColorDialog_CurrentColor")]
	public static extern QColor QColorDialog_CurrentColor(void* c_this);
	[LinkName("QColorDialog_SelectedColor")]
	public static extern QColor QColorDialog_SelectedColor(void* c_this);
	[LinkName("QColorDialog_SetOption")]
	public static extern void QColorDialog_SetOption(void* c_this, int64 option);
	[LinkName("QColorDialog_TestOption")]
	public static extern bool QColorDialog_TestOption(void* c_this, int64 option);
	[LinkName("QColorDialog_SetOptions")]
	public static extern void QColorDialog_SetOptions(void* c_this, int64 options);
	[LinkName("QColorDialog_Options")]
	public static extern int64 QColorDialog_Options(void* c_this);
	[LinkName("QColorDialog_SetVisible")]
	public static extern void QColorDialog_SetVisible(void* c_this, bool visible);
	[LinkName("QColorDialog_GetColor")]
	public static extern QColor QColorDialog_GetColor();
	[LinkName("QColorDialog_CustomCount")]
	public static extern int32 QColorDialog_CustomCount();
	[LinkName("QColorDialog_CustomColor")]
	public static extern QColor QColorDialog_CustomColor(int32 index);
	[LinkName("QColorDialog_SetCustomColor")]
	public static extern void QColorDialog_SetCustomColor(int32 index, QColor color);
	[LinkName("QColorDialog_StandardColor")]
	public static extern QColor QColorDialog_StandardColor(int32 index);
	[LinkName("QColorDialog_SetStandardColor")]
	public static extern void QColorDialog_SetStandardColor(int32 index, QColor color);
	[LinkName("QColorDialog_CurrentColorChanged")]
	public static extern void QColorDialog_CurrentColorChanged(void* c_this, QColor color);
	[LinkName("QColorDialog_ColorSelected")]
	public static extern void QColorDialog_ColorSelected(void* c_this, QColor color);
	[LinkName("QColorDialog_ChangeEvent")]
	public static extern void QColorDialog_ChangeEvent(void* c_this, QEvent event);
	[LinkName("QColorDialog_Done")]
	public static extern void QColorDialog_Done(void* c_this, int32 result);
	[LinkName("QColorDialog_Tr2")]
	public static extern char8[] QColorDialog_Tr2(char8[] s, char8[] c);
	[LinkName("QColorDialog_Tr3")]
	public static extern char8[] QColorDialog_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QColorDialog_SetOption2")]
	public static extern void QColorDialog_SetOption2(void* c_this, int64 option, bool on);
	[LinkName("QColorDialog_GetColor1")]
	public static extern QColor QColorDialog_GetColor1(QColor initial);
	[LinkName("QColorDialog_GetColor2")]
	public static extern QColor QColorDialog_GetColor2(QColor initial, QWidget parent);
	[LinkName("QColorDialog_GetColor3")]
	public static extern QColor QColorDialog_GetColor3(QColor initial, QWidget parent, char8[] title);
	[LinkName("QColorDialog_GetColor4")]
	public static extern QColor QColorDialog_GetColor4(QColor initial, QWidget parent, char8[] title, int64 options);
}