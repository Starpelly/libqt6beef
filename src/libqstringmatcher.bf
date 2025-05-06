using System;
using System.Interop;
namespace Qt;

public struct QStringMatcher
{
	[LinkName("QStringMatcher_new")]
	public static extern void* QStringMatcher_new();
	[LinkName("QStringMatcher_new2")]
	public static extern void* QStringMatcher_new2(char8[] pattern);
	[LinkName("QStringMatcher_new3")]
	public static extern void* QStringMatcher_new3(QChar uc, int32 lenVal);
	[LinkName("QStringMatcher_new4")]
	public static extern void* QStringMatcher_new4(QStringMatcher other);
	[LinkName("QStringMatcher_new5")]
	public static extern void* QStringMatcher_new5(char8[] pattern, int64 cs);
	[LinkName("QStringMatcher_new6")]
	public static extern void* QStringMatcher_new6(QChar uc, int32 lenVal, int64 cs);
	[LinkName("QStringMatcher_OperatorAssign")]
	public static extern void QStringMatcher_OperatorAssign(void* c_this, QStringMatcher other);
	[LinkName("QStringMatcher_SetPattern")]
	public static extern void QStringMatcher_SetPattern(void* c_this, char8[] pattern);
	[LinkName("QStringMatcher_SetCaseSensitivity")]
	public static extern void QStringMatcher_SetCaseSensitivity(void* c_this, int64 cs);
	[LinkName("QStringMatcher_IndexIn")]
	public static extern int32 QStringMatcher_IndexIn(void* c_this, char8[] str);
	[LinkName("QStringMatcher_IndexIn2")]
	public static extern int32 QStringMatcher_IndexIn2(void* c_this, QChar str, int32 length);
	[LinkName("QStringMatcher_Pattern")]
	public static extern char8[] QStringMatcher_Pattern(void* c_this);
	[LinkName("QStringMatcher_CaseSensitivity")]
	public static extern int64 QStringMatcher_CaseSensitivity(void* c_this);
	[LinkName("QStringMatcher_IndexIn22")]
	public static extern int32 QStringMatcher_IndexIn22(void* c_this, char8[] str, int32 from);
	[LinkName("QStringMatcher_IndexIn3")]
	public static extern int32 QStringMatcher_IndexIn3(void* c_this, QChar str, int32 length, int32 from);
}