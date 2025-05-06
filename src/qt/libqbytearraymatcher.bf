using System;
using System.Interop;
namespace Qt;

public struct QByteArrayMatcher
{
	[LinkName("QByteArrayMatcher_new")]
	public static extern QByteArrayMatcher* QByteArrayMatcher_new();
	[LinkName("QByteArrayMatcher_new2")]
	public static extern QByteArrayMatcher* QByteArrayMatcher_new2(libqt_string pattern);
	[LinkName("QByteArrayMatcher_new3")]
	public static extern QByteArrayMatcher* QByteArrayMatcher_new3(QByteArrayView pattern);
	[LinkName("QByteArrayMatcher_new4")]
	public static extern QByteArrayMatcher* QByteArrayMatcher_new4(char8[] pattern);
	[LinkName("QByteArrayMatcher_new5")]
	public static extern QByteArrayMatcher* QByteArrayMatcher_new5(QByteArrayMatcher* other);
	[LinkName("QByteArrayMatcher_new6")]
	public static extern QByteArrayMatcher* QByteArrayMatcher_new6(char8[] pattern, int32 length);
	[LinkName("QByteArrayMatcher_OperatorAssign")]
	public static extern void QByteArrayMatcher_OperatorAssign(Self* c_this, QByteArrayMatcher* other);
	[LinkName("QByteArrayMatcher_SetPattern")]
	public static extern void QByteArrayMatcher_SetPattern(Self* c_this, libqt_string pattern);
	[LinkName("QByteArrayMatcher_IndexIn")]
	public static extern int32 QByteArrayMatcher_IndexIn(Self* c_this, char8[] str, int32 lenVal);
	[LinkName("QByteArrayMatcher_IndexInWithData")]
	public static extern int32 QByteArrayMatcher_IndexInWithData(Self* c_this, QByteArrayView data);
	[LinkName("QByteArrayMatcher_Pattern")]
	public static extern libqt_string QByteArrayMatcher_Pattern(Self* c_this);
	[LinkName("QByteArrayMatcher_IndexIn3")]
	public static extern int32 QByteArrayMatcher_IndexIn3(Self* c_this, char8[] str, int32 lenVal, int32 from);
	[LinkName("QByteArrayMatcher_IndexIn2")]
	public static extern int32 QByteArrayMatcher_IndexIn2(Self* c_this, QByteArrayView data, int32 from);
}
public struct QStaticByteArrayMatcherBase
{
	[LinkName("QStaticByteArrayMatcherBase_new")]
	public static extern QStaticByteArrayMatcherBase* QStaticByteArrayMatcherBase_new(QStaticByteArrayMatcherBase* other);
}