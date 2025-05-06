using System;
using System.Interop;
namespace Qt;

public struct QCheckBox : QAbstractButton
{
	[LinkName("QCheckBox_new")]
	public static extern QCheckBox* QCheckBox_new(QWidget* parent);
	[LinkName("QCheckBox_new2")]
	public static extern QCheckBox* QCheckBox_new2();
	[LinkName("QCheckBox_new3")]
	public static extern QCheckBox* QCheckBox_new3(libqt_string text);
	[LinkName("QCheckBox_new4")]
	public static extern QCheckBox* QCheckBox_new4(libqt_string text, QWidget* parent);
	[LinkName("QCheckBox_MetaObject")]
	public static extern QMetaObject* QCheckBox_MetaObject(Self* c_this);
	[LinkName("QCheckBox_Metacast")]
	public static extern void* QCheckBox_Metacast(Self* c_this, char8[] param1);
	[LinkName("QCheckBox_Metacall")]
	public static extern int32 QCheckBox_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QCheckBox_Tr")]
	public static extern libqt_string QCheckBox_Tr(char8[] s);
	[LinkName("QCheckBox_SizeHint")]
	public static extern QSize QCheckBox_SizeHint(Self* c_this);
	[LinkName("QCheckBox_MinimumSizeHint")]
	public static extern QSize QCheckBox_MinimumSizeHint(Self* c_this);
	[LinkName("QCheckBox_SetTristate")]
	public static extern void QCheckBox_SetTristate(Self* c_this);
	[LinkName("QCheckBox_IsTristate")]
	public static extern bool QCheckBox_IsTristate(Self* c_this);
	[LinkName("QCheckBox_CheckState")]
	public static extern int64 QCheckBox_CheckState(Self* c_this);
	[LinkName("QCheckBox_SetCheckState")]
	public static extern void QCheckBox_SetCheckState(Self* c_this, int64 state);
	[LinkName("QCheckBox_StateChanged")]
	public static extern void QCheckBox_StateChanged(Self* c_this, int32 param1);
	[LinkName("QCheckBox_Event")]
	public static extern bool QCheckBox_Event(Self* c_this, QEvent* e);
	[LinkName("QCheckBox_HitButton")]
	public static extern bool QCheckBox_HitButton(Self* c_this, QPoint* pos);
	[LinkName("QCheckBox_CheckStateSet")]
	public static extern void QCheckBox_CheckStateSet(Self* c_this);
	[LinkName("QCheckBox_NextCheckState")]
	public static extern void QCheckBox_NextCheckState(Self* c_this);
	[LinkName("QCheckBox_PaintEvent")]
	public static extern void QCheckBox_PaintEvent(Self* c_this, QPaintEvent* param1);
	[LinkName("QCheckBox_MouseMoveEvent")]
	public static extern void QCheckBox_MouseMoveEvent(Self* c_this, QMouseEvent* param1);
	[LinkName("QCheckBox_InitStyleOption")]
	public static extern void QCheckBox_InitStyleOption(Self* c_this, QStyleOptionButton* option);
	[LinkName("QCheckBox_Tr2")]
	public static extern libqt_string QCheckBox_Tr2(char8[] s, char8[] c);
	[LinkName("QCheckBox_Tr3")]
	public static extern libqt_string QCheckBox_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QCheckBox_SetTristate1")]
	public static extern void QCheckBox_SetTristate1(Self* c_this, bool y);
}