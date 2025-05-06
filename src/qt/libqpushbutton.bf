using System;
using System.Interop;
namespace Qt;

public struct QPushButton : QAbstractButton
{
	[LinkName("QPushButton_new")]
	public static extern QPushButton* QPushButton_new(QWidget* parent);
	[LinkName("QPushButton_new2")]
	public static extern QPushButton* QPushButton_new2();
	[LinkName("QPushButton_new3")]
	public static extern QPushButton* QPushButton_new3(libqt_string text);
	[LinkName("QPushButton_new4")]
	public static extern QPushButton* QPushButton_new4(QIcon* icon, libqt_string text);
	[LinkName("QPushButton_new5")]
	public static extern QPushButton* QPushButton_new5(libqt_string text, QWidget* parent);
	[LinkName("QPushButton_new6")]
	public static extern QPushButton* QPushButton_new6(QIcon* icon, libqt_string text, QWidget* parent);
	[LinkName("QPushButton_MetaObject")]
	public static extern QMetaObject* QPushButton_MetaObject(Self* c_this);
	[LinkName("QPushButton_Metacast")]
	public static extern void* QPushButton_Metacast(Self* c_this, char8[] param1);
	[LinkName("QPushButton_Metacall")]
	public static extern int32 QPushButton_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QPushButton_Tr")]
	public static extern libqt_string QPushButton_Tr(char8[] s);
	[LinkName("QPushButton_SizeHint")]
	public static extern QSize QPushButton_SizeHint(Self* c_this);
	[LinkName("QPushButton_MinimumSizeHint")]
	public static extern QSize QPushButton_MinimumSizeHint(Self* c_this);
	[LinkName("QPushButton_AutoDefault")]
	public static extern bool QPushButton_AutoDefault(Self* c_this);
	[LinkName("QPushButton_SetAutoDefault")]
	public static extern void QPushButton_SetAutoDefault(Self* c_this, bool autoDefault);
	[LinkName("QPushButton_IsDefault")]
	public static extern bool QPushButton_IsDefault(Self* c_this);
	[LinkName("QPushButton_SetDefault")]
	public static extern void QPushButton_SetDefault(Self* c_this, bool defaultVal);
	[LinkName("QPushButton_SetMenu")]
	public static extern void QPushButton_SetMenu(Self* c_this, QMenu* menu);
	[LinkName("QPushButton_Menu")]
	public static extern QMenu* QPushButton_Menu(Self* c_this);
	[LinkName("QPushButton_SetFlat")]
	public static extern void QPushButton_SetFlat(Self* c_this, bool flat);
	[LinkName("QPushButton_IsFlat")]
	public static extern bool QPushButton_IsFlat(Self* c_this);
	[LinkName("QPushButton_ShowMenu")]
	public static extern void QPushButton_ShowMenu(Self* c_this);
	[LinkName("QPushButton_Event")]
	public static extern bool QPushButton_Event(Self* c_this, QEvent* e);
	[LinkName("QPushButton_PaintEvent")]
	public static extern void QPushButton_PaintEvent(Self* c_this, QPaintEvent* param1);
	[LinkName("QPushButton_KeyPressEvent")]
	public static extern void QPushButton_KeyPressEvent(Self* c_this, QKeyEvent* param1);
	[LinkName("QPushButton_FocusInEvent")]
	public static extern void QPushButton_FocusInEvent(Self* c_this, QFocusEvent* param1);
	[LinkName("QPushButton_FocusOutEvent")]
	public static extern void QPushButton_FocusOutEvent(Self* c_this, QFocusEvent* param1);
	[LinkName("QPushButton_MouseMoveEvent")]
	public static extern void QPushButton_MouseMoveEvent(Self* c_this, QMouseEvent* param1);
	[LinkName("QPushButton_InitStyleOption")]
	public static extern void QPushButton_InitStyleOption(Self* c_this, QStyleOptionButton* option);
	[LinkName("QPushButton_HitButton")]
	public static extern bool QPushButton_HitButton(Self* c_this, QPoint* pos);
	[LinkName("QPushButton_Tr2")]
	public static extern libqt_string QPushButton_Tr2(char8[] s, char8[] c);
	[LinkName("QPushButton_Tr3")]
	public static extern libqt_string QPushButton_Tr3(char8[] s, char8[] c, int32 n);
}