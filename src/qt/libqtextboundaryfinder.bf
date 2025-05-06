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
	public static extern QTextBoundaryFinder* QTextBoundaryFinder_new();
	[LinkName("QTextBoundaryFinder_new2")]
	public static extern QTextBoundaryFinder* QTextBoundaryFinder_new2(QTextBoundaryFinder* other);
	[LinkName("QTextBoundaryFinder_new3")]
	public static extern QTextBoundaryFinder* QTextBoundaryFinder_new3(int64 typeVal, libqt_string stringVal);
	[LinkName("QTextBoundaryFinder_new4")]
	public static extern QTextBoundaryFinder* QTextBoundaryFinder_new4(int64 typeVal, QChar* chars, int32 length);
	[LinkName("QTextBoundaryFinder_new5")]
	public static extern QTextBoundaryFinder* QTextBoundaryFinder_new5(int64 typeVal, QChar* chars, int32 length, uint8* buffer);
	[LinkName("QTextBoundaryFinder_new6")]
	public static extern QTextBoundaryFinder* QTextBoundaryFinder_new6(int64 typeVal, QChar* chars, int32 length, uint8* buffer, int32 bufferSize);
	[LinkName("QTextBoundaryFinder_OperatorAssign")]
	public static extern void QTextBoundaryFinder_OperatorAssign(Self* c_this, QTextBoundaryFinder* other);
	[LinkName("QTextBoundaryFinder_IsValid")]
	public static extern bool QTextBoundaryFinder_IsValid(Self* c_this);
	[LinkName("QTextBoundaryFinder_Type")]
	public static extern int64 QTextBoundaryFinder_Type(Self* c_this);
	[LinkName("QTextBoundaryFinder_String")]
	public static extern libqt_string QTextBoundaryFinder_String(Self* c_this);
	[LinkName("QTextBoundaryFinder_ToStart")]
	public static extern void QTextBoundaryFinder_ToStart(Self* c_this);
	[LinkName("QTextBoundaryFinder_ToEnd")]
	public static extern void QTextBoundaryFinder_ToEnd(Self* c_this);
	[LinkName("QTextBoundaryFinder_Position")]
	public static extern int32 QTextBoundaryFinder_Position(Self* c_this);
	[LinkName("QTextBoundaryFinder_SetPosition")]
	public static extern void QTextBoundaryFinder_SetPosition(Self* c_this, int32 position);
	[LinkName("QTextBoundaryFinder_ToNextBoundary")]
	public static extern int32 QTextBoundaryFinder_ToNextBoundary(Self* c_this);
	[LinkName("QTextBoundaryFinder_ToPreviousBoundary")]
	public static extern int32 QTextBoundaryFinder_ToPreviousBoundary(Self* c_this);
	[LinkName("QTextBoundaryFinder_IsAtBoundary")]
	public static extern bool QTextBoundaryFinder_IsAtBoundary(Self* c_this);
	[LinkName("QTextBoundaryFinder_BoundaryReasons")]
	public static extern int64 QTextBoundaryFinder_BoundaryReasons(Self* c_this);
}