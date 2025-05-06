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
	public static extern QRegularExpression* QRegularExpression_new();
	[LinkName("QRegularExpression_new2")]
	public static extern QRegularExpression* QRegularExpression_new2(libqt_string pattern);
	[LinkName("QRegularExpression_new3")]
	public static extern QRegularExpression* QRegularExpression_new3(QRegularExpression* re);
	[LinkName("QRegularExpression_new4")]
	public static extern QRegularExpression* QRegularExpression_new4(libqt_string pattern, int64 options);
	[LinkName("QRegularExpression_PatternOptions")]
	public static extern int64 QRegularExpression_PatternOptions(Self* c_this);
	[LinkName("QRegularExpression_SetPatternOptions")]
	public static extern void QRegularExpression_SetPatternOptions(Self* c_this, int64 options);
	[LinkName("QRegularExpression_OperatorAssign")]
	public static extern void QRegularExpression_OperatorAssign(Self* c_this, QRegularExpression* re);
	[LinkName("QRegularExpression_Swap")]
	public static extern void QRegularExpression_Swap(Self* c_this, QRegularExpression* other);
	[LinkName("QRegularExpression_Pattern")]
	public static extern libqt_string QRegularExpression_Pattern(Self* c_this);
	[LinkName("QRegularExpression_SetPattern")]
	public static extern void QRegularExpression_SetPattern(Self* c_this, libqt_string pattern);
	[LinkName("QRegularExpression_IsValid")]
	public static extern bool QRegularExpression_IsValid(Self* c_this);
	[LinkName("QRegularExpression_PatternErrorOffset")]
	public static extern int32 QRegularExpression_PatternErrorOffset(Self* c_this);
	[LinkName("QRegularExpression_ErrorString")]
	public static extern libqt_string QRegularExpression_ErrorString(Self* c_this);
	[LinkName("QRegularExpression_CaptureCount")]
	public static extern int32 QRegularExpression_CaptureCount(Self* c_this);
	[LinkName("QRegularExpression_NamedCaptureGroups")]
	public static extern libqt_string[] QRegularExpression_NamedCaptureGroups(Self* c_this);
	[LinkName("QRegularExpression_Match")]
	public static extern QRegularExpressionMatch QRegularExpression_Match(Self* c_this, libqt_string subject);
	[LinkName("QRegularExpression_GlobalMatch")]
	public static extern QRegularExpressionMatchIterator QRegularExpression_GlobalMatch(Self* c_this, libqt_string subject);
	[LinkName("QRegularExpression_Optimize")]
	public static extern void QRegularExpression_Optimize(Self* c_this);
	[LinkName("QRegularExpression_Escape")]
	public static extern libqt_string QRegularExpression_Escape(libqt_string str);
	[LinkName("QRegularExpression_WildcardToRegularExpression")]
	public static extern libqt_string QRegularExpression_WildcardToRegularExpression(libqt_string str);
	[LinkName("QRegularExpression_AnchoredPattern")]
	public static extern libqt_string QRegularExpression_AnchoredPattern(libqt_string expression);
	[LinkName("QRegularExpression_OperatorEqual")]
	public static extern bool QRegularExpression_OperatorEqual(Self* c_this, QRegularExpression* re);
	[LinkName("QRegularExpression_OperatorNotEqual")]
	public static extern bool QRegularExpression_OperatorNotEqual(Self* c_this, QRegularExpression* re);
	[LinkName("QRegularExpression_Match2")]
	public static extern QRegularExpressionMatch QRegularExpression_Match2(Self* c_this, libqt_string subject, int32 offset);
	[LinkName("QRegularExpression_Match3")]
	public static extern QRegularExpressionMatch QRegularExpression_Match3(Self* c_this, libqt_string subject, int32 offset, int64 matchType);
	[LinkName("QRegularExpression_Match4")]
	public static extern QRegularExpressionMatch QRegularExpression_Match4(Self* c_this, libqt_string subject, int32 offset, int64 matchType, int64 matchOptions);
	[LinkName("QRegularExpression_GlobalMatch2")]
	public static extern QRegularExpressionMatchIterator QRegularExpression_GlobalMatch2(Self* c_this, libqt_string subject, int32 offset);
	[LinkName("QRegularExpression_GlobalMatch3")]
	public static extern QRegularExpressionMatchIterator QRegularExpression_GlobalMatch3(Self* c_this, libqt_string subject, int32 offset, int64 matchType);
	[LinkName("QRegularExpression_GlobalMatch4")]
	public static extern QRegularExpressionMatchIterator QRegularExpression_GlobalMatch4(Self* c_this, libqt_string subject, int32 offset, int64 matchType, int64 matchOptions);
	[LinkName("QRegularExpression_WildcardToRegularExpression2")]
	public static extern libqt_string QRegularExpression_WildcardToRegularExpression2(libqt_string str, int64 options);
}
public struct QRegularExpressionMatch
{
	[LinkName("QRegularExpressionMatch_new")]
	public static extern QRegularExpressionMatch* QRegularExpressionMatch_new();
	[LinkName("QRegularExpressionMatch_new2")]
	public static extern QRegularExpressionMatch* QRegularExpressionMatch_new2(QRegularExpressionMatch* match);
	[LinkName("QRegularExpressionMatch_OperatorAssign")]
	public static extern void QRegularExpressionMatch_OperatorAssign(Self* c_this, QRegularExpressionMatch* match);
	[LinkName("QRegularExpressionMatch_Swap")]
	public static extern void QRegularExpressionMatch_Swap(Self* c_this, QRegularExpressionMatch* other);
	[LinkName("QRegularExpressionMatch_RegularExpression")]
	public static extern QRegularExpression QRegularExpressionMatch_RegularExpression(Self* c_this);
	[LinkName("QRegularExpressionMatch_MatchType")]
	public static extern int64 QRegularExpressionMatch_MatchType(Self* c_this);
	[LinkName("QRegularExpressionMatch_MatchOptions")]
	public static extern int64 QRegularExpressionMatch_MatchOptions(Self* c_this);
	[LinkName("QRegularExpressionMatch_HasMatch")]
	public static extern bool QRegularExpressionMatch_HasMatch(Self* c_this);
	[LinkName("QRegularExpressionMatch_HasPartialMatch")]
	public static extern bool QRegularExpressionMatch_HasPartialMatch(Self* c_this);
	[LinkName("QRegularExpressionMatch_IsValid")]
	public static extern bool QRegularExpressionMatch_IsValid(Self* c_this);
	[LinkName("QRegularExpressionMatch_LastCapturedIndex")]
	public static extern int32 QRegularExpressionMatch_LastCapturedIndex(Self* c_this);
	[LinkName("QRegularExpressionMatch_HasCaptured")]
	public static extern bool QRegularExpressionMatch_HasCaptured(Self* c_this, libqt_string name);
	[LinkName("QRegularExpressionMatch_HasCapturedWithNth")]
	public static extern bool QRegularExpressionMatch_HasCapturedWithNth(Self* c_this, int32 nth);
	[LinkName("QRegularExpressionMatch_Captured")]
	public static extern libqt_string QRegularExpressionMatch_Captured(Self* c_this);
	[LinkName("QRegularExpressionMatch_CapturedWithName")]
	public static extern libqt_string QRegularExpressionMatch_CapturedWithName(Self* c_this, libqt_string name);
	[LinkName("QRegularExpressionMatch_CapturedTexts")]
	public static extern libqt_string[] QRegularExpressionMatch_CapturedTexts(Self* c_this);
	[LinkName("QRegularExpressionMatch_CapturedStart")]
	public static extern int32 QRegularExpressionMatch_CapturedStart(Self* c_this);
	[LinkName("QRegularExpressionMatch_CapturedLength")]
	public static extern int32 QRegularExpressionMatch_CapturedLength(Self* c_this);
	[LinkName("QRegularExpressionMatch_CapturedEnd")]
	public static extern int32 QRegularExpressionMatch_CapturedEnd(Self* c_this);
	[LinkName("QRegularExpressionMatch_CapturedStartWithName")]
	public static extern int32 QRegularExpressionMatch_CapturedStartWithName(Self* c_this, libqt_string name);
	[LinkName("QRegularExpressionMatch_CapturedLengthWithName")]
	public static extern int32 QRegularExpressionMatch_CapturedLengthWithName(Self* c_this, libqt_string name);
	[LinkName("QRegularExpressionMatch_CapturedEndWithName")]
	public static extern int32 QRegularExpressionMatch_CapturedEndWithName(Self* c_this, libqt_string name);
	[LinkName("QRegularExpressionMatch_Captured1")]
	public static extern libqt_string QRegularExpressionMatch_Captured1(Self* c_this, int32 nth);
	[LinkName("QRegularExpressionMatch_CapturedStart1")]
	public static extern int32 QRegularExpressionMatch_CapturedStart1(Self* c_this, int32 nth);
	[LinkName("QRegularExpressionMatch_CapturedLength1")]
	public static extern int32 QRegularExpressionMatch_CapturedLength1(Self* c_this, int32 nth);
	[LinkName("QRegularExpressionMatch_CapturedEnd1")]
	public static extern int32 QRegularExpressionMatch_CapturedEnd1(Self* c_this, int32 nth);
}
public struct QRegularExpressionMatchIterator
{
	[LinkName("QRegularExpressionMatchIterator_new")]
	public static extern QRegularExpressionMatchIterator* QRegularExpressionMatchIterator_new();
	[LinkName("QRegularExpressionMatchIterator_new2")]
	public static extern QRegularExpressionMatchIterator* QRegularExpressionMatchIterator_new2(QRegularExpressionMatchIterator* iterator);
	[LinkName("QRegularExpressionMatchIterator_OperatorAssign")]
	public static extern void QRegularExpressionMatchIterator_OperatorAssign(Self* c_this, QRegularExpressionMatchIterator* iterator);
	[LinkName("QRegularExpressionMatchIterator_Swap")]
	public static extern void QRegularExpressionMatchIterator_Swap(Self* c_this, QRegularExpressionMatchIterator* other);
	[LinkName("QRegularExpressionMatchIterator_IsValid")]
	public static extern bool QRegularExpressionMatchIterator_IsValid(Self* c_this);
	[LinkName("QRegularExpressionMatchIterator_HasNext")]
	public static extern bool QRegularExpressionMatchIterator_HasNext(Self* c_this);
	[LinkName("QRegularExpressionMatchIterator_Next")]
	public static extern QRegularExpressionMatch QRegularExpressionMatchIterator_Next(Self* c_this);
	[LinkName("QRegularExpressionMatchIterator_PeekNext")]
	public static extern QRegularExpressionMatch QRegularExpressionMatchIterator_PeekNext(Self* c_this);
	[LinkName("QRegularExpressionMatchIterator_RegularExpression")]
	public static extern QRegularExpression QRegularExpressionMatchIterator_RegularExpression(Self* c_this);
	[LinkName("QRegularExpressionMatchIterator_MatchType")]
	public static extern int64 QRegularExpressionMatchIterator_MatchType(Self* c_this);
	[LinkName("QRegularExpressionMatchIterator_MatchOptions")]
	public static extern int64 QRegularExpressionMatchIterator_MatchOptions(Self* c_this);
}