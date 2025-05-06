using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QTextOption__TabType
{
	LeftTab = 0,
	RightTab = 1,
	CenterTab = 2,
	DelimiterTab = 3,
}
[AllowDuplicates]
public enum QTextOption__WrapMode
{
	NoWrap = 0,
	WordWrap = 1,
	ManualWrap = 2,
	WrapAnywhere = 3,
	WrapAtWordBoundaryOrAnywhere = 4,
}
[AllowDuplicates]
public enum QTextOption__Flag
{
	ShowTabsAndSpaces = 1,
	ShowLineAndParagraphSeparators = 2,
	AddSpaceForLineAndParagraphSeparators = 4,
	SuppressColors = 8,
	ShowDocumentTerminator = 16,
	IncludeTrailingSpaces = 2147483648,
}
public struct QTextOption
{
	[LinkName("QTextOption_new")]
	public static extern void* QTextOption_new();
	[LinkName("QTextOption_new2")]
	public static extern void* QTextOption_new2(int64 alignment);
	[LinkName("QTextOption_new3")]
	public static extern void* QTextOption_new3(QTextOption o);
	[LinkName("QTextOption_OperatorAssign")]
	public static extern void QTextOption_OperatorAssign(void* c_this, QTextOption o);
	[LinkName("QTextOption_SetAlignment")]
	public static extern void QTextOption_SetAlignment(void* c_this, int64 alignment);
	[LinkName("QTextOption_Alignment")]
	public static extern int64 QTextOption_Alignment(void* c_this);
	[LinkName("QTextOption_SetTextDirection")]
	public static extern void QTextOption_SetTextDirection(void* c_this, int64 aDirection);
	[LinkName("QTextOption_TextDirection")]
	public static extern int64 QTextOption_TextDirection(void* c_this);
	[LinkName("QTextOption_SetWrapMode")]
	public static extern void QTextOption_SetWrapMode(void* c_this, int64 wrap);
	[LinkName("QTextOption_WrapMode")]
	public static extern int64 QTextOption_WrapMode(void* c_this);
	[LinkName("QTextOption_SetFlags")]
	public static extern void QTextOption_SetFlags(void* c_this, int64 flags);
	[LinkName("QTextOption_Flags")]
	public static extern int64 QTextOption_Flags(void* c_this);
	[LinkName("QTextOption_SetTabStopDistance")]
	public static extern void QTextOption_SetTabStopDistance(void* c_this, double tabStopDistance);
	[LinkName("QTextOption_TabStopDistance")]
	public static extern double QTextOption_TabStopDistance(void* c_this);
	[LinkName("QTextOption_SetTabArray")]
	public static extern void QTextOption_SetTabArray(void* c_this, double[] tabStops);
	[LinkName("QTextOption_TabArray")]
	public static extern double[] QTextOption_TabArray(void* c_this);
	[LinkName("QTextOption_SetTabs")]
	public static extern void QTextOption_SetTabs(void* c_this, QTextOption__Tab[] tabStops);
	[LinkName("QTextOption_Tabs")]
	public static extern QTextOption__Tab[] QTextOption_Tabs(void* c_this);
	[LinkName("QTextOption_SetUseDesignMetrics")]
	public static extern void QTextOption_SetUseDesignMetrics(void* c_this, bool b);
	[LinkName("QTextOption_UseDesignMetrics")]
	public static extern bool QTextOption_UseDesignMetrics(void* c_this);
}
public struct QTextOption__Tab
{
	[LinkName("QTextOption__Tab_new")]
	public static extern void* QTextOption__Tab_new(QTextOption__Tab other);
	[LinkName("QTextOption__Tab_new2")]
	public static extern void* QTextOption__Tab_new2(QTextOption__Tab other);
	[LinkName("QTextOption__Tab_new3")]
	public static extern void* QTextOption__Tab_new3();
	[LinkName("QTextOption__Tab_new4")]
	public static extern void* QTextOption__Tab_new4(double pos, int64 tabType);
	[LinkName("QTextOption__Tab_new5")]
	public static extern void* QTextOption__Tab_new5(double pos, int64 tabType, QChar delim);
	[LinkName("QTextOption__Tab_OperatorEqual")]
	public static extern bool QTextOption__Tab_OperatorEqual(void* c_this, QTextOption__Tab other);
	[LinkName("QTextOption__Tab_OperatorNotEqual")]
	public static extern bool QTextOption__Tab_OperatorNotEqual(void* c_this, QTextOption__Tab other);
}