using System;
using System.Interop;
namespace Qt;

public struct QGroupBox : QWidget
{
	[LinkName("QGroupBox_new")]
	public static extern QGroupBox* QGroupBox_new(QWidget* parent);
	[LinkName("QGroupBox_new2")]
	public static extern QGroupBox* QGroupBox_new2();
	[LinkName("QGroupBox_new3")]
	public static extern QGroupBox* QGroupBox_new3(libqt_string title);
	[LinkName("QGroupBox_new4")]
	public static extern QGroupBox* QGroupBox_new4(libqt_string title, QWidget* parent);
	[LinkName("QGroupBox_MetaObject")]
	public static extern QMetaObject* QGroupBox_MetaObject(Self* c_this);
	[LinkName("QGroupBox_Metacast")]
	public static extern void* QGroupBox_Metacast(Self* c_this, char8[] param1);
	[LinkName("QGroupBox_Metacall")]
	public static extern int32 QGroupBox_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QGroupBox_Tr")]
	public static extern libqt_string QGroupBox_Tr(char8[] s);
	[LinkName("QGroupBox_Title")]
	public static extern libqt_string QGroupBox_Title(Self* c_this);
	[LinkName("QGroupBox_SetTitle")]
	public static extern void QGroupBox_SetTitle(Self* c_this, libqt_string title);
	[LinkName("QGroupBox_Alignment")]
	public static extern int64 QGroupBox_Alignment(Self* c_this);
	[LinkName("QGroupBox_SetAlignment")]
	public static extern void QGroupBox_SetAlignment(Self* c_this, int32 alignment);
	[LinkName("QGroupBox_MinimumSizeHint")]
	public static extern QSize QGroupBox_MinimumSizeHint(Self* c_this);
	[LinkName("QGroupBox_IsFlat")]
	public static extern bool QGroupBox_IsFlat(Self* c_this);
	[LinkName("QGroupBox_SetFlat")]
	public static extern void QGroupBox_SetFlat(Self* c_this, bool flat);
	[LinkName("QGroupBox_IsCheckable")]
	public static extern bool QGroupBox_IsCheckable(Self* c_this);
	[LinkName("QGroupBox_SetCheckable")]
	public static extern void QGroupBox_SetCheckable(Self* c_this, bool checkable);
	[LinkName("QGroupBox_IsChecked")]
	public static extern bool QGroupBox_IsChecked(Self* c_this);
	[LinkName("QGroupBox_SetChecked")]
	public static extern void QGroupBox_SetChecked(Self* c_this, bool _checked);
	[LinkName("QGroupBox_Clicked")]
	public static extern void QGroupBox_Clicked(Self* c_this);
	[LinkName("QGroupBox_Toggled")]
	public static extern void QGroupBox_Toggled(Self* c_this, bool param1);
	[LinkName("QGroupBox_Event")]
	public static extern bool QGroupBox_Event(Self* c_this, QEvent* event);
	[LinkName("QGroupBox_ChildEvent")]
	public static extern void QGroupBox_ChildEvent(Self* c_this, QChildEvent* event);
	[LinkName("QGroupBox_ResizeEvent")]
	public static extern void QGroupBox_ResizeEvent(Self* c_this, QResizeEvent* event);
	[LinkName("QGroupBox_PaintEvent")]
	public static extern void QGroupBox_PaintEvent(Self* c_this, QPaintEvent* event);
	[LinkName("QGroupBox_FocusInEvent")]
	public static extern void QGroupBox_FocusInEvent(Self* c_this, QFocusEvent* event);
	[LinkName("QGroupBox_ChangeEvent")]
	public static extern void QGroupBox_ChangeEvent(Self* c_this, QEvent* event);
	[LinkName("QGroupBox_MousePressEvent")]
	public static extern void QGroupBox_MousePressEvent(Self* c_this, QMouseEvent* event);
	[LinkName("QGroupBox_MouseMoveEvent")]
	public static extern void QGroupBox_MouseMoveEvent(Self* c_this, QMouseEvent* event);
	[LinkName("QGroupBox_MouseReleaseEvent")]
	public static extern void QGroupBox_MouseReleaseEvent(Self* c_this, QMouseEvent* event);
	[LinkName("QGroupBox_InitStyleOption")]
	public static extern void QGroupBox_InitStyleOption(Self* c_this, QStyleOptionGroupBox* option);
	[LinkName("QGroupBox_Tr2")]
	public static extern libqt_string QGroupBox_Tr2(char8[] s, char8[] c);
	[LinkName("QGroupBox_Tr3")]
	public static extern libqt_string QGroupBox_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QGroupBox_Clicked1")]
	public static extern void QGroupBox_Clicked1(Self* c_this, bool _checked);
}