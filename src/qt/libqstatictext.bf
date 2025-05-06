using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QStaticText__PerformanceHint
{
	ModerateCaching = 0,
	AggressiveCaching = 1,
}
public struct QStaticText
{
	[LinkName("QStaticText_new")]
	public static extern QStaticText* QStaticText_new();
	[LinkName("QStaticText_new2")]
	public static extern QStaticText* QStaticText_new2(libqt_string text);
	[LinkName("QStaticText_new3")]
	public static extern QStaticText* QStaticText_new3(QStaticText* other);
	[LinkName("QStaticText_OperatorAssign")]
	public static extern void QStaticText_OperatorAssign(Self* c_this, QStaticText* param1);
	[LinkName("QStaticText_Swap")]
	public static extern void QStaticText_Swap(Self* c_this, QStaticText* other);
	[LinkName("QStaticText_SetText")]
	public static extern void QStaticText_SetText(Self* c_this, libqt_string text);
	[LinkName("QStaticText_Text")]
	public static extern libqt_string QStaticText_Text(Self* c_this);
	[LinkName("QStaticText_SetTextFormat")]
	public static extern void QStaticText_SetTextFormat(Self* c_this, int64 textFormat);
	[LinkName("QStaticText_TextFormat")]
	public static extern int64 QStaticText_TextFormat(Self* c_this);
	[LinkName("QStaticText_SetTextWidth")]
	public static extern void QStaticText_SetTextWidth(Self* c_this, double textWidth);
	[LinkName("QStaticText_TextWidth")]
	public static extern double QStaticText_TextWidth(Self* c_this);
	[LinkName("QStaticText_SetTextOption")]
	public static extern void QStaticText_SetTextOption(Self* c_this, QTextOption* textOption);
	[LinkName("QStaticText_TextOption")]
	public static extern QTextOption QStaticText_TextOption(Self* c_this);
	[LinkName("QStaticText_Size")]
	public static extern QSizeF QStaticText_Size(Self* c_this);
	[LinkName("QStaticText_Prepare")]
	public static extern void QStaticText_Prepare(Self* c_this);
	[LinkName("QStaticText_SetPerformanceHint")]
	public static extern void QStaticText_SetPerformanceHint(Self* c_this, int64 performanceHint);
	[LinkName("QStaticText_PerformanceHint")]
	public static extern int64 QStaticText_PerformanceHint(Self* c_this);
	[LinkName("QStaticText_OperatorEqual")]
	public static extern bool QStaticText_OperatorEqual(Self* c_this, QStaticText* param1);
	[LinkName("QStaticText_OperatorNotEqual")]
	public static extern bool QStaticText_OperatorNotEqual(Self* c_this, QStaticText* param1);
	[LinkName("QStaticText_Prepare1")]
	public static extern void QStaticText_Prepare1(Self* c_this, QTransform* matrix);
	[LinkName("QStaticText_Prepare2")]
	public static extern void QStaticText_Prepare2(Self* c_this, QTransform* matrix, QFont* font);
}