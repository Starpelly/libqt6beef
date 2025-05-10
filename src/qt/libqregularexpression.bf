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
public interface IQRegularExpression
{
	void* NativePtr { get; }
}
public class QRegularExpression : IQRegularExpression
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QRegularExpression_new();
	}
	
	public ~this()
	{
		CQt.QRegularExpression_Delete(this.nativePtr);
	}
	
	public int64 PatternOptions()
	{
		return CQt.QRegularExpression_PatternOptions(this.nativePtr);
	}
	
	public void SetPatternOptions(int64 options)
	{
		CQt.QRegularExpression_SetPatternOptions(this.nativePtr, options);
	}
	
	public void OperatorAssign(IQRegularExpression re)
	{
		CQt.QRegularExpression_OperatorAssign(this.nativePtr, (re == default) ? default : (void*)re.NativePtr);
	}
	
	public void Swap(IQRegularExpression other)
	{
		CQt.QRegularExpression_Swap(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public libqt_string Pattern()
	{
		return CQt.QRegularExpression_Pattern(this.nativePtr);
	}
	
	public void SetPattern(String pattern)
	{
		CQt.QRegularExpression_SetPattern(this.nativePtr, libqt_string(pattern));
	}
	
	public bool IsValid()
	{
		return CQt.QRegularExpression_IsValid(this.nativePtr);
	}
	
	public int32 PatternErrorOffset()
	{
		return CQt.QRegularExpression_PatternErrorOffset(this.nativePtr);
	}
	
	public libqt_string ErrorString()
	{
		return CQt.QRegularExpression_ErrorString(this.nativePtr);
	}
	
	public int32 CaptureCount()
	{
		return CQt.QRegularExpression_CaptureCount(this.nativePtr);
	}
	
	public libqt_string[] NamedCaptureGroups()
	{
		return CQt.QRegularExpression_NamedCaptureGroups(this.nativePtr);
	}
	
	public void Match(String subject)
	{
		CQt.QRegularExpression_Match(this.nativePtr, libqt_string(subject));
	}
	
	public void GlobalMatch(String subject)
	{
		CQt.QRegularExpression_GlobalMatch(this.nativePtr, libqt_string(subject));
	}
	
	public void Optimize()
	{
		CQt.QRegularExpression_Optimize(this.nativePtr);
	}
	
	public static libqt_string Escape(String str)
	{
		return CQt.QRegularExpression_Escape(libqt_string(str));
	}
	
	public static libqt_string WildcardToRegularExpression(String str)
	{
		return CQt.QRegularExpression_WildcardToRegularExpression(libqt_string(str));
	}
	
	public static libqt_string AnchoredPattern(String expression)
	{
		return CQt.QRegularExpression_AnchoredPattern(libqt_string(expression));
	}
	
	public bool OperatorEqual(IQRegularExpression re)
	{
		return CQt.QRegularExpression_OperatorEqual(this.nativePtr, (re == default) ? default : (void*)re.NativePtr);
	}
	
	public bool OperatorNotEqual(IQRegularExpression re)
	{
		return CQt.QRegularExpression_OperatorNotEqual(this.nativePtr, (re == default) ? default : (void*)re.NativePtr);
	}
	
	public void Match2(String subject, int32 offset)
	{
		CQt.QRegularExpression_Match2(this.nativePtr, libqt_string(subject), offset);
	}
	
	public void Match3(String subject, int32 offset, int64 matchType)
	{
		CQt.QRegularExpression_Match3(this.nativePtr, libqt_string(subject), offset, matchType);
	}
	
	public void Match4(String subject, int32 offset, int64 matchType, int64 matchOptions)
	{
		CQt.QRegularExpression_Match4(this.nativePtr, libqt_string(subject), offset, matchType, matchOptions);
	}
	
	public void GlobalMatch2(String subject, int32 offset)
	{
		CQt.QRegularExpression_GlobalMatch2(this.nativePtr, libqt_string(subject), offset);
	}
	
	public void GlobalMatch3(String subject, int32 offset, int64 matchType)
	{
		CQt.QRegularExpression_GlobalMatch3(this.nativePtr, libqt_string(subject), offset, matchType);
	}
	
	public void GlobalMatch4(String subject, int32 offset, int64 matchType, int64 matchOptions)
	{
		CQt.QRegularExpression_GlobalMatch4(this.nativePtr, libqt_string(subject), offset, matchType, matchOptions);
	}
	
	public static libqt_string WildcardToRegularExpression2(String str, int64 options)
	{
		return CQt.QRegularExpression_WildcardToRegularExpression2(libqt_string(str), options);
	}
	
}
extension CQt
{
	[LinkName("QRegularExpression_new")]
	public static extern void* QRegularExpression_new();
	[LinkName("QRegularExpression_new2")]
	public static extern void* QRegularExpression_new2(libqt_string pattern);
	[LinkName("QRegularExpression_new3")]
	public static extern void* QRegularExpression_new3(void* re);
	[LinkName("QRegularExpression_new4")]
	public static extern void* QRegularExpression_new4(libqt_string pattern, int64 options);
	[LinkName("QRegularExpression_PatternOptions")]
	public static extern int64 QRegularExpression_PatternOptions(void* c_this);
	[LinkName("QRegularExpression_SetPatternOptions")]
	public static extern void QRegularExpression_SetPatternOptions(void* c_this, int64 options);
	[LinkName("QRegularExpression_OperatorAssign")]
	public static extern void QRegularExpression_OperatorAssign(void* c_this, void* re);
	[LinkName("QRegularExpression_Swap")]
	public static extern void QRegularExpression_Swap(void* c_this, void* other);
	[LinkName("QRegularExpression_Pattern")]
	public static extern libqt_string QRegularExpression_Pattern(void* c_this);
	[LinkName("QRegularExpression_SetPattern")]
	public static extern void QRegularExpression_SetPattern(void* c_this, libqt_string pattern);
	[LinkName("QRegularExpression_IsValid")]
	public static extern bool QRegularExpression_IsValid(void* c_this);
	[LinkName("QRegularExpression_PatternErrorOffset")]
	public static extern int32 QRegularExpression_PatternErrorOffset(void* c_this);
	[LinkName("QRegularExpression_ErrorString")]
	public static extern libqt_string QRegularExpression_ErrorString(void* c_this);
	[LinkName("QRegularExpression_CaptureCount")]
	public static extern int32 QRegularExpression_CaptureCount(void* c_this);
	[LinkName("QRegularExpression_NamedCaptureGroups")]
	public static extern libqt_string[] QRegularExpression_NamedCaptureGroups(void* c_this);
	[LinkName("QRegularExpression_Match")]
	public static extern void QRegularExpression_Match(void* c_this, libqt_string subject);
	[LinkName("QRegularExpression_GlobalMatch")]
	public static extern void QRegularExpression_GlobalMatch(void* c_this, libqt_string subject);
	[LinkName("QRegularExpression_Optimize")]
	public static extern void QRegularExpression_Optimize(void* c_this);
	[LinkName("QRegularExpression_Escape")]
	public static extern libqt_string QRegularExpression_Escape(libqt_string str);
	[LinkName("QRegularExpression_WildcardToRegularExpression")]
	public static extern libqt_string QRegularExpression_WildcardToRegularExpression(libqt_string str);
	[LinkName("QRegularExpression_AnchoredPattern")]
	public static extern libqt_string QRegularExpression_AnchoredPattern(libqt_string expression);
	[LinkName("QRegularExpression_OperatorEqual")]
	public static extern bool QRegularExpression_OperatorEqual(void* c_this, void* re);
	[LinkName("QRegularExpression_OperatorNotEqual")]
	public static extern bool QRegularExpression_OperatorNotEqual(void* c_this, void* re);
	[LinkName("QRegularExpression_Match2")]
	public static extern void QRegularExpression_Match2(void* c_this, libqt_string subject, int32 offset);
	[LinkName("QRegularExpression_Match3")]
	public static extern void QRegularExpression_Match3(void* c_this, libqt_string subject, int32 offset, int64 matchType);
	[LinkName("QRegularExpression_Match4")]
	public static extern void QRegularExpression_Match4(void* c_this, libqt_string subject, int32 offset, int64 matchType, int64 matchOptions);
	[LinkName("QRegularExpression_GlobalMatch2")]
	public static extern void QRegularExpression_GlobalMatch2(void* c_this, libqt_string subject, int32 offset);
	[LinkName("QRegularExpression_GlobalMatch3")]
	public static extern void QRegularExpression_GlobalMatch3(void* c_this, libqt_string subject, int32 offset, int64 matchType);
	[LinkName("QRegularExpression_GlobalMatch4")]
	public static extern void QRegularExpression_GlobalMatch4(void* c_this, libqt_string subject, int32 offset, int64 matchType, int64 matchOptions);
	[LinkName("QRegularExpression_WildcardToRegularExpression2")]
	public static extern libqt_string QRegularExpression_WildcardToRegularExpression2(libqt_string str, int64 options);
	/// Delete this object from C++ memory
	[LinkName("QRegularExpression_Delete")]
	public static extern void QRegularExpression_Delete(void* self);
}
public interface IQRegularExpressionMatch
{
	void* NativePtr { get; }
}
public class QRegularExpressionMatch : IQRegularExpressionMatch
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QRegularExpressionMatch_new();
	}
	
	public ~this()
	{
		CQt.QRegularExpressionMatch_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQRegularExpressionMatch match)
	{
		CQt.QRegularExpressionMatch_OperatorAssign(this.nativePtr, (match == default) ? default : (void*)match.NativePtr);
	}
	
	public void Swap(IQRegularExpressionMatch other)
	{
		CQt.QRegularExpressionMatch_Swap(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public void RegularExpression()
	{
		CQt.QRegularExpressionMatch_RegularExpression(this.nativePtr);
	}
	
	public int64 MatchType()
	{
		return CQt.QRegularExpressionMatch_MatchType(this.nativePtr);
	}
	
	public int64 MatchOptions()
	{
		return CQt.QRegularExpressionMatch_MatchOptions(this.nativePtr);
	}
	
	public bool HasMatch()
	{
		return CQt.QRegularExpressionMatch_HasMatch(this.nativePtr);
	}
	
	public bool HasPartialMatch()
	{
		return CQt.QRegularExpressionMatch_HasPartialMatch(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QRegularExpressionMatch_IsValid(this.nativePtr);
	}
	
	public int32 LastCapturedIndex()
	{
		return CQt.QRegularExpressionMatch_LastCapturedIndex(this.nativePtr);
	}
	
	public bool HasCaptured(String name)
	{
		return CQt.QRegularExpressionMatch_HasCaptured(this.nativePtr, libqt_string(name));
	}
	
	public bool HasCapturedWithNth(int32 nth)
	{
		return CQt.QRegularExpressionMatch_HasCapturedWithNth(this.nativePtr, nth);
	}
	
	public libqt_string Captured()
	{
		return CQt.QRegularExpressionMatch_Captured(this.nativePtr);
	}
	
	public libqt_string CapturedWithName(String name)
	{
		return CQt.QRegularExpressionMatch_CapturedWithName(this.nativePtr, libqt_string(name));
	}
	
	public libqt_string[] CapturedTexts()
	{
		return CQt.QRegularExpressionMatch_CapturedTexts(this.nativePtr);
	}
	
	public int32 CapturedStart()
	{
		return CQt.QRegularExpressionMatch_CapturedStart(this.nativePtr);
	}
	
	public int32 CapturedLength()
	{
		return CQt.QRegularExpressionMatch_CapturedLength(this.nativePtr);
	}
	
	public int32 CapturedEnd()
	{
		return CQt.QRegularExpressionMatch_CapturedEnd(this.nativePtr);
	}
	
	public int32 CapturedStartWithName(String name)
	{
		return CQt.QRegularExpressionMatch_CapturedStartWithName(this.nativePtr, libqt_string(name));
	}
	
	public int32 CapturedLengthWithName(String name)
	{
		return CQt.QRegularExpressionMatch_CapturedLengthWithName(this.nativePtr, libqt_string(name));
	}
	
	public int32 CapturedEndWithName(String name)
	{
		return CQt.QRegularExpressionMatch_CapturedEndWithName(this.nativePtr, libqt_string(name));
	}
	
	public libqt_string Captured1(int32 nth)
	{
		return CQt.QRegularExpressionMatch_Captured1(this.nativePtr, nth);
	}
	
	public int32 CapturedStart1(int32 nth)
	{
		return CQt.QRegularExpressionMatch_CapturedStart1(this.nativePtr, nth);
	}
	
	public int32 CapturedLength1(int32 nth)
	{
		return CQt.QRegularExpressionMatch_CapturedLength1(this.nativePtr, nth);
	}
	
	public int32 CapturedEnd1(int32 nth)
	{
		return CQt.QRegularExpressionMatch_CapturedEnd1(this.nativePtr, nth);
	}
	
}
extension CQt
{
	[LinkName("QRegularExpressionMatch_new")]
	public static extern void* QRegularExpressionMatch_new();
	[LinkName("QRegularExpressionMatch_new2")]
	public static extern void* QRegularExpressionMatch_new2(void* match);
	[LinkName("QRegularExpressionMatch_OperatorAssign")]
	public static extern void QRegularExpressionMatch_OperatorAssign(void* c_this, void* match);
	[LinkName("QRegularExpressionMatch_Swap")]
	public static extern void QRegularExpressionMatch_Swap(void* c_this, void* other);
	[LinkName("QRegularExpressionMatch_RegularExpression")]
	public static extern void QRegularExpressionMatch_RegularExpression(void* c_this);
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
	public static extern bool QRegularExpressionMatch_HasCaptured(void* c_this, libqt_string name);
	[LinkName("QRegularExpressionMatch_HasCapturedWithNth")]
	public static extern bool QRegularExpressionMatch_HasCapturedWithNth(void* c_this, int32 nth);
	[LinkName("QRegularExpressionMatch_Captured")]
	public static extern libqt_string QRegularExpressionMatch_Captured(void* c_this);
	[LinkName("QRegularExpressionMatch_CapturedWithName")]
	public static extern libqt_string QRegularExpressionMatch_CapturedWithName(void* c_this, libqt_string name);
	[LinkName("QRegularExpressionMatch_CapturedTexts")]
	public static extern libqt_string[] QRegularExpressionMatch_CapturedTexts(void* c_this);
	[LinkName("QRegularExpressionMatch_CapturedStart")]
	public static extern int32 QRegularExpressionMatch_CapturedStart(void* c_this);
	[LinkName("QRegularExpressionMatch_CapturedLength")]
	public static extern int32 QRegularExpressionMatch_CapturedLength(void* c_this);
	[LinkName("QRegularExpressionMatch_CapturedEnd")]
	public static extern int32 QRegularExpressionMatch_CapturedEnd(void* c_this);
	[LinkName("QRegularExpressionMatch_CapturedStartWithName")]
	public static extern int32 QRegularExpressionMatch_CapturedStartWithName(void* c_this, libqt_string name);
	[LinkName("QRegularExpressionMatch_CapturedLengthWithName")]
	public static extern int32 QRegularExpressionMatch_CapturedLengthWithName(void* c_this, libqt_string name);
	[LinkName("QRegularExpressionMatch_CapturedEndWithName")]
	public static extern int32 QRegularExpressionMatch_CapturedEndWithName(void* c_this, libqt_string name);
	[LinkName("QRegularExpressionMatch_Captured1")]
	public static extern libqt_string QRegularExpressionMatch_Captured1(void* c_this, int32 nth);
	[LinkName("QRegularExpressionMatch_CapturedStart1")]
	public static extern int32 QRegularExpressionMatch_CapturedStart1(void* c_this, int32 nth);
	[LinkName("QRegularExpressionMatch_CapturedLength1")]
	public static extern int32 QRegularExpressionMatch_CapturedLength1(void* c_this, int32 nth);
	[LinkName("QRegularExpressionMatch_CapturedEnd1")]
	public static extern int32 QRegularExpressionMatch_CapturedEnd1(void* c_this, int32 nth);
	/// Delete this object from C++ memory
	[LinkName("QRegularExpressionMatch_Delete")]
	public static extern void QRegularExpressionMatch_Delete(void* self);
}
public interface IQRegularExpressionMatchIterator
{
	void* NativePtr { get; }
}
public class QRegularExpressionMatchIterator : IQRegularExpressionMatchIterator
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QRegularExpressionMatchIterator_new();
	}
	
	public ~this()
	{
		CQt.QRegularExpressionMatchIterator_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQRegularExpressionMatchIterator iterator)
	{
		CQt.QRegularExpressionMatchIterator_OperatorAssign(this.nativePtr, (iterator == default) ? default : (void*)iterator.NativePtr);
	}
	
	public void Swap(IQRegularExpressionMatchIterator other)
	{
		CQt.QRegularExpressionMatchIterator_Swap(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QRegularExpressionMatchIterator_IsValid(this.nativePtr);
	}
	
	public bool HasNext()
	{
		return CQt.QRegularExpressionMatchIterator_HasNext(this.nativePtr);
	}
	
	public void Next()
	{
		CQt.QRegularExpressionMatchIterator_Next(this.nativePtr);
	}
	
	public void PeekNext()
	{
		CQt.QRegularExpressionMatchIterator_PeekNext(this.nativePtr);
	}
	
	public void RegularExpression()
	{
		CQt.QRegularExpressionMatchIterator_RegularExpression(this.nativePtr);
	}
	
	public int64 MatchType()
	{
		return CQt.QRegularExpressionMatchIterator_MatchType(this.nativePtr);
	}
	
	public int64 MatchOptions()
	{
		return CQt.QRegularExpressionMatchIterator_MatchOptions(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QRegularExpressionMatchIterator_new")]
	public static extern void* QRegularExpressionMatchIterator_new();
	[LinkName("QRegularExpressionMatchIterator_new2")]
	public static extern void* QRegularExpressionMatchIterator_new2(void* iterator);
	[LinkName("QRegularExpressionMatchIterator_OperatorAssign")]
	public static extern void QRegularExpressionMatchIterator_OperatorAssign(void* c_this, void* iterator);
	[LinkName("QRegularExpressionMatchIterator_Swap")]
	public static extern void QRegularExpressionMatchIterator_Swap(void* c_this, void* other);
	[LinkName("QRegularExpressionMatchIterator_IsValid")]
	public static extern bool QRegularExpressionMatchIterator_IsValid(void* c_this);
	[LinkName("QRegularExpressionMatchIterator_HasNext")]
	public static extern bool QRegularExpressionMatchIterator_HasNext(void* c_this);
	[LinkName("QRegularExpressionMatchIterator_Next")]
	public static extern void QRegularExpressionMatchIterator_Next(void* c_this);
	[LinkName("QRegularExpressionMatchIterator_PeekNext")]
	public static extern void QRegularExpressionMatchIterator_PeekNext(void* c_this);
	[LinkName("QRegularExpressionMatchIterator_RegularExpression")]
	public static extern void QRegularExpressionMatchIterator_RegularExpression(void* c_this);
	[LinkName("QRegularExpressionMatchIterator_MatchType")]
	public static extern int64 QRegularExpressionMatchIterator_MatchType(void* c_this);
	[LinkName("QRegularExpressionMatchIterator_MatchOptions")]
	public static extern int64 QRegularExpressionMatchIterator_MatchOptions(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QRegularExpressionMatchIterator_Delete")]
	public static extern void QRegularExpressionMatchIterator_Delete(void* self);
}