using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QProgressBar__Direction
{
	TopToBottom = 0,
	BottomToTop = 1,
}
public struct QProgressBar
{
	[LinkName("QProgressBar_new")]
	public static extern void* QProgressBar_new(QWidget parent);
	[LinkName("QProgressBar_new2")]
	public static extern void* QProgressBar_new2();
	[LinkName("QProgressBar_MetaObject")]
	public static extern QMetaObject QProgressBar_MetaObject(void* c_this);
	[LinkName("QProgressBar_Metacast")]
	public static extern void QProgressBar_Metacast(void* c_this, char8[] param1);
	[LinkName("QProgressBar_Metacall")]
	public static extern int32 QProgressBar_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QProgressBar_Tr")]
	public static extern char8[] QProgressBar_Tr(char8[] s);
	[LinkName("QProgressBar_Minimum")]
	public static extern int32 QProgressBar_Minimum(void* c_this);
	[LinkName("QProgressBar_Maximum")]
	public static extern int32 QProgressBar_Maximum(void* c_this);
	[LinkName("QProgressBar_Value")]
	public static extern int32 QProgressBar_Value(void* c_this);
	[LinkName("QProgressBar_Text")]
	public static extern char8[] QProgressBar_Text(void* c_this);
	[LinkName("QProgressBar_SetTextVisible")]
	public static extern void QProgressBar_SetTextVisible(void* c_this, bool visible);
	[LinkName("QProgressBar_IsTextVisible")]
	public static extern bool QProgressBar_IsTextVisible(void* c_this);
	[LinkName("QProgressBar_Alignment")]
	public static extern int64 QProgressBar_Alignment(void* c_this);
	[LinkName("QProgressBar_SetAlignment")]
	public static extern void QProgressBar_SetAlignment(void* c_this, int64 alignment);
	[LinkName("QProgressBar_SizeHint")]
	public static extern QSize QProgressBar_SizeHint(void* c_this);
	[LinkName("QProgressBar_MinimumSizeHint")]
	public static extern QSize QProgressBar_MinimumSizeHint(void* c_this);
	[LinkName("QProgressBar_Orientation")]
	public static extern int64 QProgressBar_Orientation(void* c_this);
	[LinkName("QProgressBar_SetInvertedAppearance")]
	public static extern void QProgressBar_SetInvertedAppearance(void* c_this, bool invert);
	[LinkName("QProgressBar_InvertedAppearance")]
	public static extern bool QProgressBar_InvertedAppearance(void* c_this);
	[LinkName("QProgressBar_SetTextDirection")]
	public static extern void QProgressBar_SetTextDirection(void* c_this, int64 textDirection);
	[LinkName("QProgressBar_TextDirection")]
	public static extern int64 QProgressBar_TextDirection(void* c_this);
	[LinkName("QProgressBar_SetFormat")]
	public static extern void QProgressBar_SetFormat(void* c_this, char8[] format);
	[LinkName("QProgressBar_ResetFormat")]
	public static extern void QProgressBar_ResetFormat(void* c_this);
	[LinkName("QProgressBar_Format")]
	public static extern char8[] QProgressBar_Format(void* c_this);
	[LinkName("QProgressBar_Reset")]
	public static extern void QProgressBar_Reset(void* c_this);
	[LinkName("QProgressBar_SetRange")]
	public static extern void QProgressBar_SetRange(void* c_this, int32 minimum, int32 maximum);
	[LinkName("QProgressBar_SetMinimum")]
	public static extern void QProgressBar_SetMinimum(void* c_this, int32 minimum);
	[LinkName("QProgressBar_SetMaximum")]
	public static extern void QProgressBar_SetMaximum(void* c_this, int32 maximum);
	[LinkName("QProgressBar_SetValue")]
	public static extern void QProgressBar_SetValue(void* c_this, int32 value);
	[LinkName("QProgressBar_SetOrientation")]
	public static extern void QProgressBar_SetOrientation(void* c_this, int64 orientation);
	[LinkName("QProgressBar_ValueChanged")]
	public static extern void QProgressBar_ValueChanged(void* c_this, int32 value);
	[LinkName("QProgressBar_Event")]
	public static extern bool QProgressBar_Event(void* c_this, QEvent e);
	[LinkName("QProgressBar_PaintEvent")]
	public static extern void QProgressBar_PaintEvent(void* c_this, QPaintEvent param1);
	[LinkName("QProgressBar_InitStyleOption")]
	public static extern void QProgressBar_InitStyleOption(void* c_this, QStyleOptionProgressBar option);
	[LinkName("QProgressBar_Tr2")]
	public static extern char8[] QProgressBar_Tr2(char8[] s, char8[] c);
	[LinkName("QProgressBar_Tr3")]
	public static extern char8[] QProgressBar_Tr3(char8[] s, char8[] c, int32 n);
}