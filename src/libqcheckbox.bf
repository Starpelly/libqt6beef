using System;
using System.Interop;
namespace Qt;

public struct QCheckBox
{
	[LinkName("QCheckBox_new")]
	public static extern void* QCheckBox_new(QWidget parent);
	[LinkName("QCheckBox_new2")]
	public static extern void* QCheckBox_new2();
	[LinkName("QCheckBox_new3")]
	public static extern void* QCheckBox_new3(char8[] text);
	[LinkName("QCheckBox_new4")]
	public static extern void* QCheckBox_new4(char8[] text, QWidget parent);
	[LinkName("QCheckBox_MetaObject")]
	public static extern QMetaObject QCheckBox_MetaObject(void* c_this);
	[LinkName("QCheckBox_Metacast")]
	public static extern void QCheckBox_Metacast(void* c_this, char8[] param1);
	[LinkName("QCheckBox_Metacall")]
	public static extern int32 QCheckBox_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QCheckBox_Tr")]
	public static extern char8[] QCheckBox_Tr(char8[] s);
	[LinkName("QCheckBox_SizeHint")]
	public static extern QSize QCheckBox_SizeHint(void* c_this);
	[LinkName("QCheckBox_MinimumSizeHint")]
	public static extern QSize QCheckBox_MinimumSizeHint(void* c_this);
	[LinkName("QCheckBox_SetTristate")]
	public static extern void QCheckBox_SetTristate(void* c_this);
	[LinkName("QCheckBox_IsTristate")]
	public static extern bool QCheckBox_IsTristate(void* c_this);
	[LinkName("QCheckBox_CheckState")]
	public static extern int64 QCheckBox_CheckState(void* c_this);
	[LinkName("QCheckBox_SetCheckState")]
	public static extern void QCheckBox_SetCheckState(void* c_this, int64 state);
	[LinkName("QCheckBox_StateChanged")]
	public static extern void QCheckBox_StateChanged(void* c_this, int32 param1);
	[LinkName("QCheckBox_Event")]
	public static extern bool QCheckBox_Event(void* c_this, QEvent e);
	[LinkName("QCheckBox_HitButton")]
	public static extern bool QCheckBox_HitButton(void* c_this, QPoint pos);
	[LinkName("QCheckBox_CheckStateSet")]
	public static extern void QCheckBox_CheckStateSet(void* c_this);
	[LinkName("QCheckBox_NextCheckState")]
	public static extern void QCheckBox_NextCheckState(void* c_this);
	[LinkName("QCheckBox_PaintEvent")]
	public static extern void QCheckBox_PaintEvent(void* c_this, QPaintEvent param1);
	[LinkName("QCheckBox_MouseMoveEvent")]
	public static extern void QCheckBox_MouseMoveEvent(void* c_this, QMouseEvent param1);
	[LinkName("QCheckBox_InitStyleOption")]
	public static extern void QCheckBox_InitStyleOption(void* c_this, QStyleOptionButton option);
	[LinkName("QCheckBox_Tr2")]
	public static extern char8[] QCheckBox_Tr2(char8[] s, char8[] c);
	[LinkName("QCheckBox_Tr3")]
	public static extern char8[] QCheckBox_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QCheckBox_SetTristate1")]
	public static extern void QCheckBox_SetTristate1(void* c_this, bool y);
}