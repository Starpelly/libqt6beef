using System;
using System.Interop;
namespace Qt;

public struct QStylePainter
{
	[LinkName("QStylePainter_new")]
	public static extern void* QStylePainter_new(QWidget w);
	[LinkName("QStylePainter_new2")]
	public static extern void* QStylePainter_new2();
	[LinkName("QStylePainter_new3")]
	public static extern void* QStylePainter_new3(QPaintDevice pd, QWidget w);
	[LinkName("QStylePainter_Begin")]
	public static extern bool QStylePainter_Begin(void* c_this, QWidget w);
	[LinkName("QStylePainter_Begin2")]
	public static extern bool QStylePainter_Begin2(void* c_this, QPaintDevice pd, QWidget w);
	[LinkName("QStylePainter_DrawPrimitive")]
	public static extern void QStylePainter_DrawPrimitive(void* c_this, int64 pe, QStyleOption opt);
	[LinkName("QStylePainter_DrawControl")]
	public static extern void QStylePainter_DrawControl(void* c_this, int64 ce, QStyleOption opt);
	[LinkName("QStylePainter_DrawComplexControl")]
	public static extern void QStylePainter_DrawComplexControl(void* c_this, int64 cc, QStyleOptionComplex opt);
	[LinkName("QStylePainter_DrawItemText")]
	public static extern void QStylePainter_DrawItemText(void* c_this, QRect r, int32 flags, QPalette pal, bool enabled, char8[] text);
	[LinkName("QStylePainter_DrawItemPixmap")]
	public static extern void QStylePainter_DrawItemPixmap(void* c_this, QRect r, int32 flags, QPixmap pixmap);
	[LinkName("QStylePainter_Style")]
	public static extern QStyle QStylePainter_Style(void* c_this);
	[LinkName("QStylePainter_DrawItemText6")]
	public static extern void QStylePainter_DrawItemText6(void* c_this, QRect r, int32 flags, QPalette pal, bool enabled, char8[] text, int64 textRole);
}