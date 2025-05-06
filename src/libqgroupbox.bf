using System;
using System.Interop;
namespace Qt;

public struct QGroupBox
{
	[LinkName("QGroupBox_new")]
	public static extern void* QGroupBox_new(QWidget parent);
	[LinkName("QGroupBox_new2")]
	public static extern void* QGroupBox_new2();
	[LinkName("QGroupBox_new3")]
	public static extern void* QGroupBox_new3(char8[] title);
	[LinkName("QGroupBox_new4")]
	public static extern void* QGroupBox_new4(char8[] title, QWidget parent);
	[LinkName("QGroupBox_MetaObject")]
	public static extern QMetaObject QGroupBox_MetaObject(void* c_this);
	[LinkName("QGroupBox_Metacast")]
	public static extern void QGroupBox_Metacast(void* c_this, char8[] param1);
	[LinkName("QGroupBox_Metacall")]
	public static extern int32 QGroupBox_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QGroupBox_Tr")]
	public static extern char8[] QGroupBox_Tr(char8[] s);
	[LinkName("QGroupBox_Title")]
	public static extern char8[] QGroupBox_Title(void* c_this);
	[LinkName("QGroupBox_SetTitle")]
	public static extern void QGroupBox_SetTitle(void* c_this, char8[] title);
	[LinkName("QGroupBox_Alignment")]
	public static extern int64 QGroupBox_Alignment(void* c_this);
	[LinkName("QGroupBox_SetAlignment")]
	public static extern void QGroupBox_SetAlignment(void* c_this, int32 alignment);
	[LinkName("QGroupBox_MinimumSizeHint")]
	public static extern QSize QGroupBox_MinimumSizeHint(void* c_this);
	[LinkName("QGroupBox_IsFlat")]
	public static extern bool QGroupBox_IsFlat(void* c_this);
	[LinkName("QGroupBox_SetFlat")]
	public static extern void QGroupBox_SetFlat(void* c_this, bool flat);
	[LinkName("QGroupBox_IsCheckable")]
	public static extern bool QGroupBox_IsCheckable(void* c_this);
	[LinkName("QGroupBox_SetCheckable")]
	public static extern void QGroupBox_SetCheckable(void* c_this, bool checkable);
	[LinkName("QGroupBox_IsChecked")]
	public static extern bool QGroupBox_IsChecked(void* c_this);
	[LinkName("QGroupBox_SetChecked")]
	public static extern void QGroupBox_SetChecked(void* c_this, bool _checked);
	[LinkName("QGroupBox_Clicked")]
	public static extern void QGroupBox_Clicked(void* c_this);
	[LinkName("QGroupBox_Toggled")]
	public static extern void QGroupBox_Toggled(void* c_this, bool param1);
	[LinkName("QGroupBox_Event")]
	public static extern bool QGroupBox_Event(void* c_this, QEvent event);
	[LinkName("QGroupBox_ChildEvent")]
	public static extern void QGroupBox_ChildEvent(void* c_this, QChildEvent event);
	[LinkName("QGroupBox_ResizeEvent")]
	public static extern void QGroupBox_ResizeEvent(void* c_this, QResizeEvent event);
	[LinkName("QGroupBox_PaintEvent")]
	public static extern void QGroupBox_PaintEvent(void* c_this, QPaintEvent event);
	[LinkName("QGroupBox_FocusInEvent")]
	public static extern void QGroupBox_FocusInEvent(void* c_this, QFocusEvent event);
	[LinkName("QGroupBox_ChangeEvent")]
	public static extern void QGroupBox_ChangeEvent(void* c_this, QEvent event);
	[LinkName("QGroupBox_MousePressEvent")]
	public static extern void QGroupBox_MousePressEvent(void* c_this, QMouseEvent event);
	[LinkName("QGroupBox_MouseMoveEvent")]
	public static extern void QGroupBox_MouseMoveEvent(void* c_this, QMouseEvent event);
	[LinkName("QGroupBox_MouseReleaseEvent")]
	public static extern void QGroupBox_MouseReleaseEvent(void* c_this, QMouseEvent event);
	[LinkName("QGroupBox_InitStyleOption")]
	public static extern void QGroupBox_InitStyleOption(void* c_this, QStyleOptionGroupBox option);
	[LinkName("QGroupBox_Tr2")]
	public static extern char8[] QGroupBox_Tr2(char8[] s, char8[] c);
	[LinkName("QGroupBox_Tr3")]
	public static extern char8[] QGroupBox_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QGroupBox_Clicked1")]
	public static extern void QGroupBox_Clicked1(void* c_this, bool _checked);
}