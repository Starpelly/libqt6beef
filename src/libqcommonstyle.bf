using System;
using System.Interop;
namespace Qt;

public struct QCommonStyle
{
	[LinkName("QCommonStyle_new")]
	public static extern void* QCommonStyle_new();
	[LinkName("QCommonStyle_MetaObject")]
	public static extern QMetaObject QCommonStyle_MetaObject(void* c_this);
	[LinkName("QCommonStyle_Metacast")]
	public static extern void QCommonStyle_Metacast(void* c_this, char8[] param1);
	[LinkName("QCommonStyle_Metacall")]
	public static extern int32 QCommonStyle_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QCommonStyle_Tr")]
	public static extern char8[] QCommonStyle_Tr(char8[] s);
	[LinkName("QCommonStyle_DrawPrimitive")]
	public static extern void QCommonStyle_DrawPrimitive(void* c_this, int64 pe, QStyleOption opt, QPainter p, QWidget w);
	[LinkName("QCommonStyle_DrawControl")]
	public static extern void QCommonStyle_DrawControl(void* c_this, int64 element, QStyleOption opt, QPainter p, QWidget w);
	[LinkName("QCommonStyle_SubElementRect")]
	public static extern QRect QCommonStyle_SubElementRect(void* c_this, int64 r, QStyleOption opt, QWidget widget);
	[LinkName("QCommonStyle_DrawComplexControl")]
	public static extern void QCommonStyle_DrawComplexControl(void* c_this, int64 cc, QStyleOptionComplex opt, QPainter p, QWidget w);
	[LinkName("QCommonStyle_HitTestComplexControl")]
	public static extern int64 QCommonStyle_HitTestComplexControl(void* c_this, int64 cc, QStyleOptionComplex opt, QPoint pt, QWidget w);
	[LinkName("QCommonStyle_SubControlRect")]
	public static extern QRect QCommonStyle_SubControlRect(void* c_this, int64 cc, QStyleOptionComplex opt, int64 sc, QWidget w);
	[LinkName("QCommonStyle_SizeFromContents")]
	public static extern QSize QCommonStyle_SizeFromContents(void* c_this, int64 ct, QStyleOption opt, QSize contentsSize, QWidget widget);
	[LinkName("QCommonStyle_PixelMetric")]
	public static extern int32 QCommonStyle_PixelMetric(void* c_this, int64 m, QStyleOption opt, QWidget widget);
	[LinkName("QCommonStyle_StyleHint")]
	public static extern int32 QCommonStyle_StyleHint(void* c_this, int64 sh, QStyleOption opt, QWidget w, QStyleHintReturn shret);
	[LinkName("QCommonStyle_StandardIcon")]
	public static extern QIcon QCommonStyle_StandardIcon(void* c_this, int64 standardIcon, QStyleOption opt, QWidget widget);
	[LinkName("QCommonStyle_StandardPixmap")]
	public static extern QPixmap QCommonStyle_StandardPixmap(void* c_this, int64 sp, QStyleOption opt, QWidget widget);
	[LinkName("QCommonStyle_GeneratedIconPixmap")]
	public static extern QPixmap QCommonStyle_GeneratedIconPixmap(void* c_this, int64 iconMode, QPixmap pixmap, QStyleOption opt);
	[LinkName("QCommonStyle_LayoutSpacing")]
	public static extern int32 QCommonStyle_LayoutSpacing(void* c_this, int64 control1, int64 control2, int64 orientation, QStyleOption option, QWidget widget);
	[LinkName("QCommonStyle_Polish")]
	public static extern void QCommonStyle_Polish(void* c_this, QPalette param1);
	[LinkName("QCommonStyle_PolishWithApp")]
	public static extern void QCommonStyle_PolishWithApp(void* c_this, QApplication app);
	[LinkName("QCommonStyle_PolishWithWidget")]
	public static extern void QCommonStyle_PolishWithWidget(void* c_this, QWidget widget);
	[LinkName("QCommonStyle_Unpolish")]
	public static extern void QCommonStyle_Unpolish(void* c_this, QWidget widget);
	[LinkName("QCommonStyle_UnpolishWithApplication")]
	public static extern void QCommonStyle_UnpolishWithApplication(void* c_this, QApplication application);
	[LinkName("QCommonStyle_Tr2")]
	public static extern char8[] QCommonStyle_Tr2(char8[] s, char8[] c);
	[LinkName("QCommonStyle_Tr3")]
	public static extern char8[] QCommonStyle_Tr3(char8[] s, char8[] c, int32 n);
}