using System;
using System.Interop;
namespace Qt;

public struct QProxyStyle
{
	[LinkName("QProxyStyle_new")]
	public static extern void* QProxyStyle_new();
	[LinkName("QProxyStyle_new2")]
	public static extern void* QProxyStyle_new2(char8[] key);
	[LinkName("QProxyStyle_new3")]
	public static extern void* QProxyStyle_new3(QStyle style);
	[LinkName("QProxyStyle_MetaObject")]
	public static extern QMetaObject QProxyStyle_MetaObject(void* c_this);
	[LinkName("QProxyStyle_Metacast")]
	public static extern void QProxyStyle_Metacast(void* c_this, char8[] param1);
	[LinkName("QProxyStyle_Metacall")]
	public static extern int32 QProxyStyle_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QProxyStyle_Tr")]
	public static extern char8[] QProxyStyle_Tr(char8[] s);
	[LinkName("QProxyStyle_BaseStyle")]
	public static extern QStyle QProxyStyle_BaseStyle(void* c_this);
	[LinkName("QProxyStyle_SetBaseStyle")]
	public static extern void QProxyStyle_SetBaseStyle(void* c_this, QStyle style);
	[LinkName("QProxyStyle_DrawPrimitive")]
	public static extern void QProxyStyle_DrawPrimitive(void* c_this, int64 element, QStyleOption option, QPainter painter, QWidget widget);
	[LinkName("QProxyStyle_DrawControl")]
	public static extern void QProxyStyle_DrawControl(void* c_this, int64 element, QStyleOption option, QPainter painter, QWidget widget);
	[LinkName("QProxyStyle_DrawComplexControl")]
	public static extern void QProxyStyle_DrawComplexControl(void* c_this, int64 control, QStyleOptionComplex option, QPainter painter, QWidget widget);
	[LinkName("QProxyStyle_DrawItemText")]
	public static extern void QProxyStyle_DrawItemText(void* c_this, QPainter painter, QRect rect, int32 flags, QPalette pal, bool enabled, char8[] text, int64 textRole);
	[LinkName("QProxyStyle_DrawItemPixmap")]
	public static extern void QProxyStyle_DrawItemPixmap(void* c_this, QPainter painter, QRect rect, int32 alignment, QPixmap pixmap);
	[LinkName("QProxyStyle_SizeFromContents")]
	public static extern QSize QProxyStyle_SizeFromContents(void* c_this, int64 typeVal, QStyleOption option, QSize size, QWidget widget);
	[LinkName("QProxyStyle_SubElementRect")]
	public static extern QRect QProxyStyle_SubElementRect(void* c_this, int64 element, QStyleOption option, QWidget widget);
	[LinkName("QProxyStyle_SubControlRect")]
	public static extern QRect QProxyStyle_SubControlRect(void* c_this, int64 cc, QStyleOptionComplex opt, int64 sc, QWidget widget);
	[LinkName("QProxyStyle_ItemTextRect")]
	public static extern QRect QProxyStyle_ItemTextRect(void* c_this, QFontMetrics fm, QRect r, int32 flags, bool enabled, char8[] text);
	[LinkName("QProxyStyle_ItemPixmapRect")]
	public static extern QRect QProxyStyle_ItemPixmapRect(void* c_this, QRect r, int32 flags, QPixmap pixmap);
	[LinkName("QProxyStyle_HitTestComplexControl")]
	public static extern int64 QProxyStyle_HitTestComplexControl(void* c_this, int64 control, QStyleOptionComplex option, QPoint pos, QWidget widget);
	[LinkName("QProxyStyle_StyleHint")]
	public static extern int32 QProxyStyle_StyleHint(void* c_this, int64 hint, QStyleOption option, QWidget widget, QStyleHintReturn returnData);
	[LinkName("QProxyStyle_PixelMetric")]
	public static extern int32 QProxyStyle_PixelMetric(void* c_this, int64 metric, QStyleOption option, QWidget widget);
	[LinkName("QProxyStyle_LayoutSpacing")]
	public static extern int32 QProxyStyle_LayoutSpacing(void* c_this, int64 control1, int64 control2, int64 orientation, QStyleOption option, QWidget widget);
	[LinkName("QProxyStyle_StandardIcon")]
	public static extern QIcon QProxyStyle_StandardIcon(void* c_this, int64 standardIcon, QStyleOption option, QWidget widget);
	[LinkName("QProxyStyle_StandardPixmap")]
	public static extern QPixmap QProxyStyle_StandardPixmap(void* c_this, int64 standardPixmap, QStyleOption opt, QWidget widget);
	[LinkName("QProxyStyle_GeneratedIconPixmap")]
	public static extern QPixmap QProxyStyle_GeneratedIconPixmap(void* c_this, int64 iconMode, QPixmap pixmap, QStyleOption opt);
	[LinkName("QProxyStyle_StandardPalette")]
	public static extern QPalette QProxyStyle_StandardPalette(void* c_this);
	[LinkName("QProxyStyle_Polish")]
	public static extern void QProxyStyle_Polish(void* c_this, QWidget widget);
	[LinkName("QProxyStyle_PolishWithPal")]
	public static extern void QProxyStyle_PolishWithPal(void* c_this, QPalette pal);
	[LinkName("QProxyStyle_PolishWithApp")]
	public static extern void QProxyStyle_PolishWithApp(void* c_this, QApplication app);
	[LinkName("QProxyStyle_Unpolish")]
	public static extern void QProxyStyle_Unpolish(void* c_this, QWidget widget);
	[LinkName("QProxyStyle_UnpolishWithApp")]
	public static extern void QProxyStyle_UnpolishWithApp(void* c_this, QApplication app);
	[LinkName("QProxyStyle_Event")]
	public static extern bool QProxyStyle_Event(void* c_this, QEvent e);
	[LinkName("QProxyStyle_Tr2")]
	public static extern char8[] QProxyStyle_Tr2(char8[] s, char8[] c);
	[LinkName("QProxyStyle_Tr3")]
	public static extern char8[] QProxyStyle_Tr3(char8[] s, char8[] c, int32 n);
}