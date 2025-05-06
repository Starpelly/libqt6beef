using System;
using System.Interop;
namespace Qt;

public struct QByteArrayMatcher
{
	[LinkName("QByteArrayMatcher_new")]
	public static extern void* QByteArrayMatcher_new();
	[LinkName("QByteArrayMatcher_new2")]
	public static extern void* QByteArrayMatcher_new2(uint8[] pattern);
	[LinkName("QByteArrayMatcher_new3")]
	public static extern void* QByteArrayMatcher_new3(char8[] pattern);
	[LinkName("QByteArrayMatcher_new4")]
	public static extern void* QByteArrayMatcher_new4(char8[] pattern);
	[LinkName("QByteArrayMatcher_new5")]
	public static extern void* QByteArrayMatcher_new5(QByteArrayMatcher other);
	[LinkName("QByteArrayMatcher_new6")]
	public static extern void* QByteArrayMatcher_new6(char8[] pattern, int32 length);
	[LinkName("QByteArrayMatcher_OperatorAssign")]
	public static extern void QByteArrayMatcher_OperatorAssign(void* c_this, QByteArrayMatcher other);
	[LinkName("QByteArrayMatcher_SetPattern")]
	public static extern void QByteArrayMatcher_SetPattern(void* c_this, uint8[] pattern);
	[LinkName("QByteArrayMatcher_IndexIn")]
	public static extern int32 QByteArrayMatcher_IndexIn(void* c_this, char8[] str, int32 lenVal);
	[LinkName("QByteArrayMatcher_IndexInWithData")]
	public static extern int32 QByteArrayMatcher_IndexInWithData(void* c_this, char8[] data);
	[LinkName("QByteArrayMatcher_Pattern")]
	public static extern uint8[] QByteArrayMatcher_Pattern(void* c_this);
	[LinkName("QByteArrayMatcher_IndexIn3")]
	public static extern int32 QByteArrayMatcher_IndexIn3(void* c_this, char8[] str, int32 lenVal, int32 from);
	[LinkName("QByteArrayMatcher_IndexIn2")]
	public static extern int32 QByteArrayMatcher_IndexIn2(void* c_this, char8[] data, int32 from);
}
public struct QStaticByteArrayMatcherBase
{
	[LinkName("QStaticByteArrayMatcherBase_new")]
	public static extern void* QStaticByteArrayMatcherBase_new(QStaticByteArrayMatcherBase other);
}