using System;
using System.Interop;
namespace Qt;

public struct QRadioButton : QAbstractButton
{
	[LinkName("QRadioButton_new")]
	public static extern QRadioButton* QRadioButton_new(QWidget* parent);
	[LinkName("QRadioButton_new2")]
	public static extern QRadioButton* QRadioButton_new2();
	[LinkName("QRadioButton_new3")]
	public static extern QRadioButton* QRadioButton_new3(libqt_string text);
	[LinkName("QRadioButton_new4")]
	public static extern QRadioButton* QRadioButton_new4(libqt_string text, QWidget* parent);
	[LinkName("QRadioButton_MetaObject")]
	public static extern QMetaObject* QRadioButton_MetaObject(Self* c_this);
	[LinkName("QRadioButton_Metacast")]
	public static extern void* QRadioButton_Metacast(Self* c_this, char8[] param1);
	[LinkName("QRadioButton_Metacall")]
	public static extern int32 QRadioButton_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QRadioButton_Tr")]
	public static extern libqt_string QRadioButton_Tr(char8[] s);
	[LinkName("QRadioButton_SizeHint")]
	public static extern QSize QRadioButton_SizeHint(Self* c_this);
	[LinkName("QRadioButton_MinimumSizeHint")]
	public static extern QSize QRadioButton_MinimumSizeHint(Self* c_this);
	[LinkName("QRadioButton_Event")]
	public static extern bool QRadioButton_Event(Self* c_this, QEvent* e);
	[LinkName("QRadioButton_HitButton")]
	public static extern bool QRadioButton_HitButton(Self* c_this, QPoint* param1);
	[LinkName("QRadioButton_PaintEvent")]
	public static extern void QRadioButton_PaintEvent(Self* c_this, QPaintEvent* param1);
	[LinkName("QRadioButton_MouseMoveEvent")]
	public static extern void QRadioButton_MouseMoveEvent(Self* c_this, QMouseEvent* param1);
	[LinkName("QRadioButton_InitStyleOption")]
	public static extern void QRadioButton_InitStyleOption(Self* c_this, QStyleOptionButton* button);
	[LinkName("QRadioButton_Tr2")]
	public static extern libqt_string QRadioButton_Tr2(char8[] s, char8[] c);
	[LinkName("QRadioButton_Tr3")]
	public static extern libqt_string QRadioButton_Tr3(char8[] s, char8[] c, int32 n);
}