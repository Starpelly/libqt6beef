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
	public static extern QTextOption* QTextOption_new();
	[LinkName("QTextOption_new2")]
	public static extern QTextOption* QTextOption_new2(int64 alignment);
	[LinkName("QTextOption_new3")]
	public static extern QTextOption* QTextOption_new3(QTextOption* o);
	[LinkName("QTextOption_OperatorAssign")]
	public static extern void QTextOption_OperatorAssign(Self* c_this, QTextOption* o);
	[LinkName("QTextOption_SetAlignment")]
	public static extern void QTextOption_SetAlignment(Self* c_this, int64 alignment);
	[LinkName("QTextOption_Alignment")]
	public static extern int64 QTextOption_Alignment(Self* c_this);
	[LinkName("QTextOption_SetTextDirection")]
	public static extern void QTextOption_SetTextDirection(Self* c_this, int64 aDirection);
	[LinkName("QTextOption_TextDirection")]
	public static extern int64 QTextOption_TextDirection(Self* c_this);
	[LinkName("QTextOption_SetWrapMode")]
	public static extern void QTextOption_SetWrapMode(Self* c_this, int64 wrap);
	[LinkName("QTextOption_WrapMode")]
	public static extern int64 QTextOption_WrapMode(Self* c_this);
	[LinkName("QTextOption_SetFlags")]
	public static extern void QTextOption_SetFlags(Self* c_this, int64 flags);
	[LinkName("QTextOption_Flags")]
	public static extern int64 QTextOption_Flags(Self* c_this);
	[LinkName("QTextOption_SetTabStopDistance")]
	public static extern void QTextOption_SetTabStopDistance(Self* c_this, double tabStopDistance);
	[LinkName("QTextOption_TabStopDistance")]
	public static extern double QTextOption_TabStopDistance(Self* c_this);
	[LinkName("QTextOption_SetTabArray")]
	public static extern void QTextOption_SetTabArray(Self* c_this, double[] tabStops);
	[LinkName("QTextOption_TabArray")]
	public static extern double[] QTextOption_TabArray(Self* c_this);
	[LinkName("QTextOption_SetTabs")]
	public static extern void QTextOption_SetTabs(Self* c_this, QTextOption__Tab[] tabStops);
	[LinkName("QTextOption_Tabs")]
	public static extern QTextOption__Tab[] QTextOption_Tabs(Self* c_this);
	[LinkName("QTextOption_SetUseDesignMetrics")]
	public static extern void QTextOption_SetUseDesignMetrics(Self* c_this, bool b);
	[LinkName("QTextOption_UseDesignMetrics")]
	public static extern bool QTextOption_UseDesignMetrics(Self* c_this);
}
public struct QTextOption__Tab
{
	[LinkName("QTextOption__Tab_new")]
	public static extern QTextOption__Tab* QTextOption__Tab_new(QTextOption__Tab* other);
	[LinkName("QTextOption__Tab_new2")]
	public static extern QTextOption__Tab* QTextOption__Tab_new2(QTextOption__Tab* other);
	[LinkName("QTextOption__Tab_new3")]
	public static extern QTextOption__Tab* QTextOption__Tab_new3();
	[LinkName("QTextOption__Tab_new4")]
	public static extern QTextOption__Tab* QTextOption__Tab_new4(double pos, int64 tabType);
	[LinkName("QTextOption__Tab_new5")]
	public static extern QTextOption__Tab* QTextOption__Tab_new5(double pos, int64 tabType, QChar delim);
	[LinkName("QTextOption__Tab_OperatorEqual")]
	public static extern bool QTextOption__Tab_OperatorEqual(Self* c_this, QTextOption__Tab* other);
	[LinkName("QTextOption__Tab_OperatorNotEqual")]
	public static extern bool QTextOption__Tab_OperatorNotEqual(Self* c_this, QTextOption__Tab* other);
}