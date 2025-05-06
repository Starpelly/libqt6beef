using System;
using System.Interop;
namespace Qt;

public struct QToolTip
{
	[LinkName("QToolTip_new")]
	public static extern void* QToolTip_new(QToolTip other);
	[LinkName("QToolTip_new2")]
	public static extern void* QToolTip_new2(QToolTip other);
	[LinkName("QToolTip_ShowText")]
	public static extern void QToolTip_ShowText(QPoint pos, char8[] text);
	[LinkName("QToolTip_HideText")]
	public static extern void QToolTip_HideText();
	[LinkName("QToolTip_IsVisible")]
	public static extern bool QToolTip_IsVisible();
	[LinkName("QToolTip_Text")]
	public static extern char8[] QToolTip_Text();
	[LinkName("QToolTip_Palette")]
	public static extern QPalette QToolTip_Palette();
	[LinkName("QToolTip_SetPalette")]
	public static extern void QToolTip_SetPalette(QPalette palette);
	[LinkName("QToolTip_Font")]
	public static extern QFont QToolTip_Font();
	[LinkName("QToolTip_SetFont")]
	public static extern void QToolTip_SetFont(QFont font);
	[LinkName("QToolTip_ShowText3")]
	public static extern void QToolTip_ShowText3(QPoint pos, char8[] text, QWidget w);
	[LinkName("QToolTip_ShowText4")]
	public static extern void QToolTip_ShowText4(QPoint pos, char8[] text, QWidget w, QRect rect);
	[LinkName("QToolTip_ShowText5")]
	public static extern void QToolTip_ShowText5(QPoint pos, char8[] text, QWidget w, QRect rect, int32 msecShowTime);
}