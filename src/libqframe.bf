using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QFrame__Shape
{
	NoFrame = 0,
	Box = 1,
	Panel = 2,
	WinPanel = 3,
	HLine = 4,
	VLine = 5,
	StyledPanel = 6,
}
[AllowDuplicates]
public enum QFrame__Shadow
{
	Plain = 16,
	Raised = 32,
	Sunken = 48,
}
[AllowDuplicates]
public enum QFrame__StyleMask
{
	Shadow_Mask = 240,
	Shape_Mask = 15,
}
public struct QFrame
{
	[LinkName("QFrame_new")]
	public static extern void* QFrame_new(QWidget parent);
	[LinkName("QFrame_new2")]
	public static extern void* QFrame_new2();
	[LinkName("QFrame_new3")]
	public static extern void* QFrame_new3(QWidget parent, int64 f);
	[LinkName("QFrame_MetaObject")]
	public static extern QMetaObject QFrame_MetaObject(void* c_this);
	[LinkName("QFrame_Metacast")]
	public static extern void QFrame_Metacast(void* c_this, char8[] param1);
	[LinkName("QFrame_Metacall")]
	public static extern int32 QFrame_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QFrame_Tr")]
	public static extern char8[] QFrame_Tr(char8[] s);
	[LinkName("QFrame_FrameStyle")]
	public static extern int32 QFrame_FrameStyle(void* c_this);
	[LinkName("QFrame_SetFrameStyle")]
	public static extern void QFrame_SetFrameStyle(void* c_this, int32 frameStyle);
	[LinkName("QFrame_FrameWidth")]
	public static extern int32 QFrame_FrameWidth(void* c_this);
	[LinkName("QFrame_SizeHint")]
	public static extern QSize QFrame_SizeHint(void* c_this);
	[LinkName("QFrame_FrameShape")]
	public static extern int64 QFrame_FrameShape(void* c_this);
	[LinkName("QFrame_SetFrameShape")]
	public static extern void QFrame_SetFrameShape(void* c_this, int64 frameShape);
	[LinkName("QFrame_FrameShadow")]
	public static extern int64 QFrame_FrameShadow(void* c_this);
	[LinkName("QFrame_SetFrameShadow")]
	public static extern void QFrame_SetFrameShadow(void* c_this, int64 frameShadow);
	[LinkName("QFrame_LineWidth")]
	public static extern int32 QFrame_LineWidth(void* c_this);
	[LinkName("QFrame_SetLineWidth")]
	public static extern void QFrame_SetLineWidth(void* c_this, int32 lineWidth);
	[LinkName("QFrame_MidLineWidth")]
	public static extern int32 QFrame_MidLineWidth(void* c_this);
	[LinkName("QFrame_SetMidLineWidth")]
	public static extern void QFrame_SetMidLineWidth(void* c_this, int32 midLineWidth);
	[LinkName("QFrame_FrameRect")]
	public static extern QRect QFrame_FrameRect(void* c_this);
	[LinkName("QFrame_SetFrameRect")]
	public static extern void QFrame_SetFrameRect(void* c_this, QRect frameRect);
	[LinkName("QFrame_Event")]
	public static extern bool QFrame_Event(void* c_this, QEvent e);
	[LinkName("QFrame_PaintEvent")]
	public static extern void QFrame_PaintEvent(void* c_this, QPaintEvent param1);
	[LinkName("QFrame_ChangeEvent")]
	public static extern void QFrame_ChangeEvent(void* c_this, QEvent param1);
	[LinkName("QFrame_DrawFrame")]
	public static extern void QFrame_DrawFrame(void* c_this, QPainter param1);
	[LinkName("QFrame_InitStyleOption")]
	public static extern void QFrame_InitStyleOption(void* c_this, QStyleOptionFrame option);
	[LinkName("QFrame_Tr2")]
	public static extern char8[] QFrame_Tr2(char8[] s, char8[] c);
	[LinkName("QFrame_Tr3")]
	public static extern char8[] QFrame_Tr3(char8[] s, char8[] c, int32 n);
}