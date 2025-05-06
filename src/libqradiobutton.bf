using System;
using System.Interop;
namespace Qt;

public struct QRadioButton
{
	[LinkName("QRadioButton_new")]
	public static extern void* QRadioButton_new(QWidget parent);
	[LinkName("QRadioButton_new2")]
	public static extern void* QRadioButton_new2();
	[LinkName("QRadioButton_new3")]
	public static extern void* QRadioButton_new3(char8[] text);
	[LinkName("QRadioButton_new4")]
	public static extern void* QRadioButton_new4(char8[] text, QWidget parent);
	[LinkName("QRadioButton_MetaObject")]
	public static extern QMetaObject QRadioButton_MetaObject(void* c_this);
	[LinkName("QRadioButton_Metacast")]
	public static extern void QRadioButton_Metacast(void* c_this, char8[] param1);
	[LinkName("QRadioButton_Metacall")]
	public static extern int32 QRadioButton_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QRadioButton_Tr")]
	public static extern char8[] QRadioButton_Tr(char8[] s);
	[LinkName("QRadioButton_SizeHint")]
	public static extern QSize QRadioButton_SizeHint(void* c_this);
	[LinkName("QRadioButton_MinimumSizeHint")]
	public static extern QSize QRadioButton_MinimumSizeHint(void* c_this);
	[LinkName("QRadioButton_Event")]
	public static extern bool QRadioButton_Event(void* c_this, QEvent e);
	[LinkName("QRadioButton_HitButton")]
	public static extern bool QRadioButton_HitButton(void* c_this, QPoint param1);
	[LinkName("QRadioButton_PaintEvent")]
	public static extern void QRadioButton_PaintEvent(void* c_this, QPaintEvent param1);
	[LinkName("QRadioButton_MouseMoveEvent")]
	public static extern void QRadioButton_MouseMoveEvent(void* c_this, QMouseEvent param1);
	[LinkName("QRadioButton_InitStyleOption")]
	public static extern void QRadioButton_InitStyleOption(void* c_this, QStyleOptionButton button);
	[LinkName("QRadioButton_Tr2")]
	public static extern char8[] QRadioButton_Tr2(char8[] s, char8[] c);
	[LinkName("QRadioButton_Tr3")]
	public static extern char8[] QRadioButton_Tr3(char8[] s, char8[] c, int32 n);
}