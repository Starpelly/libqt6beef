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
public struct QColorDialog : QDialog
{
	[LinkName("QColorDialog_new")]
	public static extern QColorDialog* QColorDialog_new(QWidget* parent);
	[LinkName("QColorDialog_new2")]
	public static extern QColorDialog* QColorDialog_new2();
	[LinkName("QColorDialog_new3")]
	public static extern QColorDialog* QColorDialog_new3(QColor* initial);
	[LinkName("QColorDialog_new4")]
	public static extern QColorDialog* QColorDialog_new4(QColor* initial, QWidget* parent);
	[LinkName("QColorDialog_MetaObject")]
	public static extern QMetaObject* QColorDialog_MetaObject(Self* c_this);
	[LinkName("QColorDialog_Metacast")]
	public static extern void* QColorDialog_Metacast(Self* c_this, char8[] param1);
	[LinkName("QColorDialog_Metacall")]
	public static extern int32 QColorDialog_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QColorDialog_Tr")]
	public static extern libqt_string QColorDialog_Tr(char8[] s);
	[LinkName("QColorDialog_SetCurrentColor")]
	public static extern void QColorDialog_SetCurrentColor(Self* c_this, QColor* color);
	[LinkName("QColorDialog_CurrentColor")]
	public static extern QColor QColorDialog_CurrentColor(Self* c_this);
	[LinkName("QColorDialog_SelectedColor")]
	public static extern QColor QColorDialog_SelectedColor(Self* c_this);
	[LinkName("QColorDialog_SetOption")]
	public static extern void QColorDialog_SetOption(Self* c_this, int64 option);
	[LinkName("QColorDialog_TestOption")]
	public static extern bool QColorDialog_TestOption(Self* c_this, int64 option);
	[LinkName("QColorDialog_SetOptions")]
	public static extern void QColorDialog_SetOptions(Self* c_this, int64 options);
	[LinkName("QColorDialog_Options")]
	public static extern int64 QColorDialog_Options(Self* c_this);
	[LinkName("QColorDialog_SetVisible")]
	public static extern void QColorDialog_SetVisible(Self* c_this, bool visible);
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
	[LinkName("QColorDialog_Connect_CurrentColorChanged")]
	public static extern void QColorDialog_Connect_CurrentColorChanged(Self* c_this, c_intptr slot);
	[LinkName("QColorDialog_Connect_ColorSelected")]
	public static extern void QColorDialog_Connect_ColorSelected(Self* c_this, c_intptr slot);
	[LinkName("QColorDialog_ChangeEvent")]
	public static extern void QColorDialog_ChangeEvent(Self* c_this, QEvent* event);
	[LinkName("QColorDialog_Done")]
	public static extern void QColorDialog_Done(Self* c_this, int32 result);
	[LinkName("QColorDialog_Tr2")]
	public static extern libqt_string QColorDialog_Tr2(char8[] s, char8[] c);
	[LinkName("QColorDialog_Tr3")]
	public static extern libqt_string QColorDialog_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QColorDialog_SetOption2")]
	public static extern void QColorDialog_SetOption2(Self* c_this, int64 option, bool on);
	[LinkName("QColorDialog_GetColor1")]
	public static extern QColor QColorDialog_GetColor1(QColor* initial);
	[LinkName("QColorDialog_GetColor2")]
	public static extern QColor QColorDialog_GetColor2(QColor* initial, QWidget* parent);
	[LinkName("QColorDialog_GetColor3")]
	public static extern QColor QColorDialog_GetColor3(QColor* initial, QWidget* parent, libqt_string title);
	[LinkName("QColorDialog_GetColor4")]
	public static extern QColor QColorDialog_GetColor4(QColor* initial, QWidget* parent, libqt_string title, int64 options);
}