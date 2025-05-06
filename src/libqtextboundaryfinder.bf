using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QTextBoundaryFinder__BoundaryType
{
	Grapheme = 0,
	Word = 1,
	Sentence = 2,
	Line = 3,
}
[AllowDuplicates]
public enum QTextBoundaryFinder__BoundaryReason
{
	NotAtBoundary = 0,
	BreakOpportunity = 31,
	StartOfItem = 32,
	EndOfItem = 64,
	MandatoryBreak = 128,
	SoftHyphen = 256,
}
public struct QTextBoundaryFinder
{
	[LinkName("QTextBoundaryFinder_new")]
	public static extern void* QTextBoundaryFinder_new();
	[LinkName("QTextBoundaryFinder_new2")]
	public static extern void* QTextBoundaryFinder_new2(QTextBoundaryFinder other);
	[LinkName("QTextBoundaryFinder_new3")]
	public static extern void* QTextBoundaryFinder_new3(int64 typeVal, char8[] stringVal);
	[LinkName("QTextBoundaryFinder_new4")]
	public static extern void* QTextBoundaryFinder_new4(int64 typeVal, QChar chars, int32 length);
	[LinkName("QTextBoundaryFinder_new5")]
	public static extern void* QTextBoundaryFinder_new5(int64 typeVal, QChar chars, int32 length, uint8 buffer);
	[LinkName("QTextBoundaryFinder_new6")]
	public static extern void* QTextBoundaryFinder_new6(int64 typeVal, QChar chars, int32 length, uint8 buffer, int32 bufferSize);
	[LinkName("QTextBoundaryFinder_OperatorAssign")]
	public static extern void QTextBoundaryFinder_OperatorAssign(void* c_this, QTextBoundaryFinder other);
	[LinkName("QTextBoundaryFinder_IsValid")]
	public static extern bool QTextBoundaryFinder_IsValid(void* c_this);
	[LinkName("QTextBoundaryFinder_Type")]
	public static extern int64 QTextBoundaryFinder_Type(void* c_this);
	[LinkName("QTextBoundaryFinder_String")]
	public static extern char8[] QTextBoundaryFinder_String(void* c_this);
	[LinkName("QTextBoundaryFinder_ToStart")]
	public static extern void QTextBoundaryFinder_ToStart(void* c_this);
	[LinkName("QTextBoundaryFinder_ToEnd")]
	public static extern void QTextBoundaryFinder_ToEnd(void* c_this);
	[LinkName("QTextBoundaryFinder_Position")]
	public static extern int32 QTextBoundaryFinder_Position(void* c_this);
	[LinkName("QTextBoundaryFinder_SetPosition")]
	public static extern void QTextBoundaryFinder_SetPosition(void* c_this, int32 position);
	[LinkName("QTextBoundaryFinder_ToNextBoundary")]
	public static extern int32 QTextBoundaryFinder_ToNextBoundary(void* c_this);
	[LinkName("QTextBoundaryFinder_ToPreviousBoundary")]
	public static extern int32 QTextBoundaryFinder_ToPreviousBoundary(void* c_this);
	[LinkName("QTextBoundaryFinder_IsAtBoundary")]
	public static extern bool QTextBoundaryFinder_IsAtBoundary(void* c_this);
	[LinkName("QTextBoundaryFinder_BoundaryReasons")]
	public static extern int64 QTextBoundaryFinder_BoundaryReasons(void* c_this);
}