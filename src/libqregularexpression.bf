using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QRegularExpression__PatternOption
{
	NoPatternOption = 0,
	CaseInsensitiveOption = 1,
	DotMatchesEverythingOption = 2,
	MultilineOption = 4,
	ExtendedPatternSyntaxOption = 8,
	InvertedGreedinessOption = 16,
	DontCaptureOption = 32,
	UseUnicodePropertiesOption = 64,
}
[AllowDuplicates]
public enum QRegularExpression__MatchType
{
	NormalMatch = 0,
	PartialPreferCompleteMatch = 1,
	PartialPreferFirstMatch = 2,
	NoMatch = 3,
}
[AllowDuplicates]
public enum QRegularExpression__MatchOption
{
	NoMatchOption = 0,
	AnchorAtOffsetMatchOption = 1,
	AnchoredMatchOption = 1,
	DontCheckSubjectStringMatchOption = 2,
}
[AllowDuplicates]
public enum QRegularExpression__WildcardConversionOption
{
	DefaultWildcardConversion = 0,
	UnanchoredWildcardConversion = 1,
}
public struct QRegularExpression
{
	[LinkName("QRegularExpression_new")]
	public static extern void* QRegularExpression_new();
	[LinkName("QRegularExpression_new2")]
	public static extern void* QRegularExpression_new2(char8[] pattern);
	[LinkName("QRegularExpression_new3")]
	public static extern void* QRegularExpression_new3(QRegularExpression re);
	[LinkName("QRegularExpression_new4")]
	public static extern void* QRegularExpression_new4(char8[] pattern, int64 options);
	[LinkName("QRegularExpression_PatternOptions")]
	public static extern int64 QRegularExpression_PatternOptions(void* c_this);
	[LinkName("QRegularExpression_SetPatternOptions")]
	public static extern void QRegularExpression_SetPatternOptions(void* c_this, int64 options);
	[LinkName("QRegularExpression_OperatorAssign")]
	public static extern void QRegularExpression_OperatorAssign(void* c_this, QRegularExpression re);
	[LinkName("QRegularExpression_Swap")]
	public static extern void QRegularExpression_Swap(void* c_this, QRegularExpression other);
	[LinkName("QRegularExpression_Pattern")]
	public static extern char8[] QRegularExpression_Pattern(void* c_this);
	[LinkName("QRegularExpression_SetPattern")]
	public static extern void QRegularExpression_SetPattern(void* c_this, char8[] pattern);
	[LinkName("QRegularExpression_IsValid")]
	public static extern bool QRegularExpression_IsValid(void* c_this);
	[LinkName("QRegularExpression_PatternErrorOffset")]
	public static extern int32 QRegularExpression_PatternErrorOffset(void* c_this);
	[LinkName("QRegularExpression_ErrorString")]
	public static extern char8[] QRegularExpression_ErrorString(void* c_this);
	[LinkName("QRegularExpression_CaptureCount")]
	public static extern int32 QRegularExpression_CaptureCount(void* c_this);
	[LinkName("QRegularExpression_NamedCaptureGroups")]
	public static extern char8[][] QRegularExpression_NamedCaptureGroups(void* c_this);
	[LinkName("QRegularExpression_Match")]
	public static extern QRegularExpressionMatch QRegularExpression_Match(void* c_this, char8[] subject);
	[LinkName("QRegularExpression_GlobalMatch")]
	public static extern QRegularExpressionMatchIterator QRegularExpression_GlobalMatch(void* c_this, char8[] subject);
	[LinkName("QRegularExpression_Optimize")]
	public static extern void QRegularExpression_Optimize(void* c_this);
	[LinkName("QRegularExpression_Escape")]
	public static extern char8[] QRegularExpression_Escape(char8[] str);
	[LinkName("QRegularExpression_WildcardToRegularExpression")]
	public static extern char8[] QRegularExpression_WildcardToRegularExpression(char8[] str);
	[LinkName("QRegularExpression_AnchoredPattern")]
	public static extern char8[] QRegularExpression_AnchoredPattern(char8[] expression);
	[LinkName("QRegularExpression_OperatorEqual")]
	public static extern bool QRegularExpression_OperatorEqual(void* c_this, QRegularExpression re);
	[LinkName("QRegularExpression_OperatorNotEqual")]
	public static extern bool QRegularExpression_OperatorNotEqual(void* c_this, QRegularExpression re);
	[LinkName("QRegularExpression_Match2")]
	public static extern QRegularExpressionMatch QRegularExpression_Match2(void* c_this, char8[] subject, int32 offset);
	[LinkName("QRegularExpression_Match3")]
	public static extern QRegularExpressionMatch QRegularExpression_Match3(void* c_this, char8[] subject, int32 offset, int64 matchType);
	[LinkName("QRegularExpression_Match4")]
	public static extern QRegularExpressionMatch QRegularExpression_Match4(void* c_this, char8[] subject, int32 offset, int64 matchType, int64 matchOptions);
	[LinkName("QRegularExpression_GlobalMatch2")]
	public static extern QRegularExpressionMatchIterator QRegularExpression_GlobalMatch2(void* c_this, char8[] subject, int32 offset);
	[LinkName("QRegularExpression_GlobalMatch3")]
	public static extern QRegularExpressionMatchIterator QRegularExpression_GlobalMatch3(void* c_this, char8[] subject, int32 offset, int64 matchType);
	[LinkName("QRegularExpression_GlobalMatch4")]
	public static extern QRegularExpressionMatchIterator QRegularExpression_GlobalMatch4(void* c_this, char8[] subject, int32 offset, int64 matchType, int64 matchOptions);
	[LinkName("QRegularExpression_WildcardToRegularExpression2")]
	public static extern char8[] QRegularExpression_WildcardToRegularExpression2(char8[] str, int64 options);
}
public struct QRegularExpressionMatch
{
	[LinkName("QRegularExpressionMatch_new")]
	public static extern void* QRegularExpressionMatch_new();
	[LinkName("QRegularExpressionMatch_new2")]
	public static extern void* QRegularExpressionMatch_new2(QRegularExpressionMatch match);
	[LinkName("QRegularExpressionMatch_OperatorAssign")]
	public static extern void QRegularExpressionMatch_OperatorAssign(void* c_this, QRegularExpressionMatch match);
	[LinkName("QRegularExpressionMatch_Swap")]
	public static extern void QRegularExpressionMatch_Swap(void* c_this, QRegularExpressionMatch other);
	[LinkName("QRegularExpressionMatch_RegularExpression")]
	public static extern QRegularExpression QRegularExpressionMatch_RegularExpression(void* c_this);
	[LinkName("QRegularExpressionMatch_MatchType")]
	public static extern int64 QRegularExpressionMatch_MatchType(void* c_this);
	[LinkName("QRegularExpressionMatch_MatchOptions")]
	public static extern int64 QRegularExpressionMatch_MatchOptions(void* c_this);
	[LinkName("QRegularExpressionMatch_HasMatch")]
	public static extern bool QRegularExpressionMatch_HasMatch(void* c_this);
	[LinkName("QRegularExpressionMatch_HasPartialMatch")]
	public static extern bool QRegularExpressionMatch_HasPartialMatch(void* c_this);
	[LinkName("QRegularExpressionMatch_IsValid")]
	public static extern bool QRegularExpressionMatch_IsValid(void* c_this);
	[LinkName("QRegularExpressionMatch_LastCapturedIndex")]
	public static extern int32 QRegularExpressionMatch_LastCapturedIndex(void* c_this);
	[LinkName("QRegularExpressionMatch_HasCaptured")]
	public static extern bool QRegularExpressionMatch_HasCaptured(void* c_this, char8[] name);
	[LinkName("QRegularExpressionMatch_HasCapturedWithNth")]
	public static extern bool QRegularExpressionMatch_HasCapturedWithNth(void* c_this, int32 nth);
	[LinkName("QRegularExpressionMatch_Captured")]
	public static extern char8[] QRegularExpressionMatch_Captured(void* c_this);
	[LinkName("QRegularExpressionMatch_CapturedWithName")]
	public static extern char8[] QRegularExpressionMatch_CapturedWithName(void* c_this, char8[] name);
	[LinkName("QRegularExpressionMatch_CapturedTexts")]
	public static extern char8[][] QRegularExpressionMatch_CapturedTexts(void* c_this);
	[LinkName("QRegularExpressionMatch_CapturedStart")]
	public static extern int32 QRegularExpressionMatch_CapturedStart(void* c_this);
	[LinkName("QRegularExpressionMatch_CapturedLength")]
	public static extern int32 QRegularExpressionMatch_CapturedLength(void* c_this);
	[LinkName("QRegularExpressionMatch_CapturedEnd")]
	public static extern int32 QRegularExpressionMatch_CapturedEnd(void* c_this);
	[LinkName("QRegularExpressionMatch_CapturedStartWithName")]
	public static extern int32 QRegularExpressionMatch_CapturedStartWithName(void* c_this, char8[] name);
	[LinkName("QRegularExpressionMatch_CapturedLengthWithName")]
	public static extern int32 QRegularExpressionMatch_CapturedLengthWithName(void* c_this, char8[] name);
	[LinkName("QRegularExpressionMatch_CapturedEndWithName")]
	public static extern int32 QRegularExpressionMatch_CapturedEndWithName(void* c_this, char8[] name);
	[LinkName("QRegularExpressionMatch_Captured1")]
	public static extern char8[] QRegularExpressionMatch_Captured1(void* c_this, int32 nth);
	[LinkName("QRegularExpressionMatch_CapturedStart1")]
	public static extern int32 QRegularExpressionMatch_CapturedStart1(void* c_this, int32 nth);
	[LinkName("QRegularExpressionMatch_CapturedLength1")]
	public static extern int32 QRegularExpressionMatch_CapturedLength1(void* c_this, int32 nth);
	[LinkName("QRegularExpressionMatch_CapturedEnd1")]
	public static extern int32 QRegularExpressionMatch_CapturedEnd1(void* c_this, int32 nth);
}
public struct QRegularExpressionMatchIterator
{
	[LinkName("QRegularExpressionMatchIterator_new")]
	public static extern void* QRegularExpressionMatchIterator_new();
	[LinkName("QRegularExpressionMatchIterator_new2")]
	public static extern void* QRegularExpressionMatchIterator_new2(QRegularExpressionMatchIterator iterator);
	[LinkName("QRegularExpressionMatchIterator_OperatorAssign")]
	public static extern void QRegularExpressionMatchIterator_OperatorAssign(void* c_this, QRegularExpressionMatchIterator iterator);
	[LinkName("QRegularExpressionMatchIterator_Swap")]
	public static extern void QRegularExpressionMatchIterator_Swap(void* c_this, QRegularExpressionMatchIterator other);
	[LinkName("QRegularExpressionMatchIterator_IsValid")]
	public static extern bool QRegularExpressionMatchIterator_IsValid(void* c_this);
	[LinkName("QRegularExpressionMatchIterator_HasNext")]
	public static extern bool QRegularExpressionMatchIterator_HasNext(void* c_this);
	[LinkName("QRegularExpressionMatchIterator_Next")]
	public static extern QRegularExpressionMatch QRegularExpressionMatchIterator_Next(void* c_this);
	[LinkName("QRegularExpressionMatchIterator_PeekNext")]
	public static extern QRegularExpressionMatch QRegularExpressionMatchIterator_PeekNext(void* c_this);
	[LinkName("QRegularExpressionMatchIterator_RegularExpression")]
	public static extern QRegularExpression QRegularExpressionMatchIterator_RegularExpression(void* c_this);
	[LinkName("QRegularExpressionMatchIterator_MatchType")]
	public static extern int64 QRegularExpressionMatchIterator_MatchType(void* c_this);
	[LinkName("QRegularExpressionMatchIterator_MatchOptions")]
	public static extern int64 QRegularExpressionMatchIterator_MatchOptions(void* c_this);
}