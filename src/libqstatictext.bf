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
	public static extern void* QStaticText_new();
	[LinkName("QStaticText_new2")]
	public static extern void* QStaticText_new2(char8[] text);
	[LinkName("QStaticText_new3")]
	public static extern void* QStaticText_new3(QStaticText other);
	[LinkName("QStaticText_OperatorAssign")]
	public static extern void QStaticText_OperatorAssign(void* c_this, QStaticText param1);
	[LinkName("QStaticText_Swap")]
	public static extern void QStaticText_Swap(void* c_this, QStaticText other);
	[LinkName("QStaticText_SetText")]
	public static extern void QStaticText_SetText(void* c_this, char8[] text);
	[LinkName("QStaticText_Text")]
	public static extern char8[] QStaticText_Text(void* c_this);
	[LinkName("QStaticText_SetTextFormat")]
	public static extern void QStaticText_SetTextFormat(void* c_this, int64 textFormat);
	[LinkName("QStaticText_TextFormat")]
	public static extern int64 QStaticText_TextFormat(void* c_this);
	[LinkName("QStaticText_SetTextWidth")]
	public static extern void QStaticText_SetTextWidth(void* c_this, double textWidth);
	[LinkName("QStaticText_TextWidth")]
	public static extern double QStaticText_TextWidth(void* c_this);
	[LinkName("QStaticText_SetTextOption")]
	public static extern void QStaticText_SetTextOption(void* c_this, QTextOption textOption);
	[LinkName("QStaticText_TextOption")]
	public static extern QTextOption QStaticText_TextOption(void* c_this);
	[LinkName("QStaticText_Size")]
	public static extern QSizeF QStaticText_Size(void* c_this);
	[LinkName("QStaticText_Prepare")]
	public static extern void QStaticText_Prepare(void* c_this);
	[LinkName("QStaticText_SetPerformanceHint")]
	public static extern void QStaticText_SetPerformanceHint(void* c_this, int64 performanceHint);
	[LinkName("QStaticText_PerformanceHint")]
	public static extern int64 QStaticText_PerformanceHint(void* c_this);
	[LinkName("QStaticText_OperatorEqual")]
	public static extern bool QStaticText_OperatorEqual(void* c_this, QStaticText param1);
	[LinkName("QStaticText_OperatorNotEqual")]
	public static extern bool QStaticText_OperatorNotEqual(void* c_this, QStaticText param1);
	[LinkName("QStaticText_Prepare1")]
	public static extern void QStaticText_Prepare1(void* c_this, QTransform matrix);
	[LinkName("QStaticText_Prepare2")]
	public static extern void QStaticText_Prepare2(void* c_this, QTransform matrix, QFont font);
}