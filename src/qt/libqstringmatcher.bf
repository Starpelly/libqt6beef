using System;
using System.Interop;
namespace Qt;

public struct QStringMatcher
{
	[LinkName("QStringMatcher_new")]
	public static extern QStringMatcher* QStringMatcher_new();
	[LinkName("QStringMatcher_new2")]
	public static extern QStringMatcher* QStringMatcher_new2(libqt_string pattern);
	[LinkName("QStringMatcher_new3")]
	public static extern QStringMatcher* QStringMatcher_new3(QChar* uc, int32 lenVal);
	[LinkName("QStringMatcher_new4")]
	public static extern QStringMatcher* QStringMatcher_new4(QStringMatcher* other);
	[LinkName("QStringMatcher_new5")]
	public static extern QStringMatcher* QStringMatcher_new5(libqt_string pattern, int64 cs);
	[LinkName("QStringMatcher_new6")]
	public static extern QStringMatcher* QStringMatcher_new6(QChar* uc, int32 lenVal, int64 cs);
	[LinkName("QStringMatcher_OperatorAssign")]
	public static extern void QStringMatcher_OperatorAssign(Self* c_this, QStringMatcher* other);
	[LinkName("QStringMatcher_SetPattern")]
	public static extern void QStringMatcher_SetPattern(Self* c_this, libqt_string pattern);
	[LinkName("QStringMatcher_SetCaseSensitivity")]
	public static extern void QStringMatcher_SetCaseSensitivity(Self* c_this, int64 cs);
	[LinkName("QStringMatcher_IndexIn")]
	public static extern int32 QStringMatcher_IndexIn(Self* c_this, libqt_string str);
	[LinkName("QStringMatcher_IndexIn2")]
	public static extern int32 QStringMatcher_IndexIn2(Self* c_this, QChar* str, int32 length);
	[LinkName("QStringMatcher_Pattern")]
	public static extern libqt_string QStringMatcher_Pattern(Self* c_this);
	[LinkName("QStringMatcher_CaseSensitivity")]
	public static extern int64 QStringMatcher_CaseSensitivity(Self* c_this);
	[LinkName("QStringMatcher_IndexIn22")]
	public static extern int32 QStringMatcher_IndexIn22(Self* c_this, libqt_string str, int32 from);
	[LinkName("QStringMatcher_IndexIn3")]
	public static extern int32 QStringMatcher_IndexIn3(Self* c_this, QChar* str, int32 length, int32 from);
}