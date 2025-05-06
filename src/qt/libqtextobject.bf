using System;
using System.Interop;
namespace Qt;

public struct QTextObject : QObject
{
	[LinkName("QTextObject_MetaObject")]
	public static extern QMetaObject* QTextObject_MetaObject(Self* c_this);
	[LinkName("QTextObject_Metacast")]
	public static extern void* QTextObject_Metacast(Self* c_this, char8[] param1);
	[LinkName("QTextObject_Metacall")]
	public static extern int32 QTextObject_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QTextObject_Tr")]
	public static extern libqt_string QTextObject_Tr(char8[] s);
	[LinkName("QTextObject_SetFormat")]
	public static extern void QTextObject_SetFormat(Self* c_this, QTextFormat* format);
	[LinkName("QTextObject_Format")]
	public static extern QTextFormat QTextObject_Format(Self* c_this);
	[LinkName("QTextObject_FormatIndex")]
	public static extern int32 QTextObject_FormatIndex(Self* c_this);
	[LinkName("QTextObject_Document")]
	public static extern QTextDocument* QTextObject_Document(Self* c_this);
	[LinkName("QTextObject_ObjectIndex")]
	public static extern int32 QTextObject_ObjectIndex(Self* c_this);
	[LinkName("QTextObject_Tr2")]
	public static extern libqt_string QTextObject_Tr2(char8[] s, char8[] c);
	[LinkName("QTextObject_Tr3")]
	public static extern libqt_string QTextObject_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QTextBlockGroup : QTextObject
{
	[LinkName("QTextBlockGroup_MetaObject")]
	public static extern QMetaObject* QTextBlockGroup_MetaObject(Self* c_this);
	[LinkName("QTextBlockGroup_Metacast")]
	public static extern void* QTextBlockGroup_Metacast(Self* c_this, char8[] param1);
	[LinkName("QTextBlockGroup_Metacall")]
	public static extern int32 QTextBlockGroup_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QTextBlockGroup_Tr")]
	public static extern libqt_string QTextBlockGroup_Tr(char8[] s);
	[LinkName("QTextBlockGroup_BlockInserted")]
	public static extern void QTextBlockGroup_BlockInserted(Self* c_this, QTextBlock* block);
	[LinkName("QTextBlockGroup_BlockRemoved")]
	public static extern void QTextBlockGroup_BlockRemoved(Self* c_this, QTextBlock* block);
	[LinkName("QTextBlockGroup_BlockFormatChanged")]
	public static extern void QTextBlockGroup_BlockFormatChanged(Self* c_this, QTextBlock* block);
	[LinkName("QTextBlockGroup_BlockList")]
	public static extern QTextBlock[] QTextBlockGroup_BlockList(Self* c_this);
	[LinkName("QTextBlockGroup_Tr2")]
	public static extern libqt_string QTextBlockGroup_Tr2(char8[] s, char8[] c);
	[LinkName("QTextBlockGroup_Tr3")]
	public static extern libqt_string QTextBlockGroup_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QTextFrameLayoutData
{
	[LinkName("QTextFrameLayoutData_OperatorAssign")]
	public static extern void QTextFrameLayoutData_OperatorAssign(Self* c_this, QTextFrameLayoutData* param1);
}
public struct QTextFrame : QTextObject
{
	[LinkName("QTextFrame_new")]
	public static extern QTextFrame* QTextFrame_new(QTextDocument* doc);
	[LinkName("QTextFrame_MetaObject")]
	public static extern QMetaObject* QTextFrame_MetaObject(Self* c_this);
	[LinkName("QTextFrame_Metacast")]
	public static extern void* QTextFrame_Metacast(Self* c_this, char8[] param1);
	[LinkName("QTextFrame_Metacall")]
	public static extern int32 QTextFrame_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QTextFrame_Tr")]
	public static extern libqt_string QTextFrame_Tr(char8[] s);
	[LinkName("QTextFrame_SetFrameFormat")]
	public static extern void QTextFrame_SetFrameFormat(Self* c_this, QTextFrameFormat* format);
	[LinkName("QTextFrame_FrameFormat")]
	public static extern QTextFrameFormat QTextFrame_FrameFormat(Self* c_this);
	[LinkName("QTextFrame_FirstCursorPosition")]
	public static extern QTextCursor QTextFrame_FirstCursorPosition(Self* c_this);
	[LinkName("QTextFrame_LastCursorPosition")]
	public static extern QTextCursor QTextFrame_LastCursorPosition(Self* c_this);
	[LinkName("QTextFrame_FirstPosition")]
	public static extern int32 QTextFrame_FirstPosition(Self* c_this);
	[LinkName("QTextFrame_LastPosition")]
	public static extern int32 QTextFrame_LastPosition(Self* c_this);
	[LinkName("QTextFrame_LayoutData")]
	public static extern QTextFrameLayoutData* QTextFrame_LayoutData(Self* c_this);
	[LinkName("QTextFrame_SetLayoutData")]
	public static extern void QTextFrame_SetLayoutData(Self* c_this, QTextFrameLayoutData* data);
	[LinkName("QTextFrame_ChildFrames")]
	public static extern QTextFrame*[] QTextFrame_ChildFrames(Self* c_this);
	[LinkName("QTextFrame_ParentFrame")]
	public static extern QTextFrame* QTextFrame_ParentFrame(Self* c_this);
	[LinkName("QTextFrame_Begin")]
	public static extern QTextFrame__iterator QTextFrame_Begin(Self* c_this);
	[LinkName("QTextFrame_End")]
	public static extern QTextFrame__iterator QTextFrame_End(Self* c_this);
	[LinkName("QTextFrame_Tr2")]
	public static extern libqt_string QTextFrame_Tr2(char8[] s, char8[] c);
	[LinkName("QTextFrame_Tr3")]
	public static extern libqt_string QTextFrame_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QTextBlockUserData
{
	[LinkName("QTextBlockUserData_OperatorAssign")]
	public static extern void QTextBlockUserData_OperatorAssign(Self* c_this, QTextBlockUserData* param1);
}
public struct QTextBlock
{
	[LinkName("QTextBlock_new")]
	public static extern QTextBlock* QTextBlock_new();
	[LinkName("QTextBlock_new2")]
	public static extern QTextBlock* QTextBlock_new2(QTextBlock* o);
	[LinkName("QTextBlock_OperatorAssign")]
	public static extern void QTextBlock_OperatorAssign(Self* c_this, QTextBlock* o);
	[LinkName("QTextBlock_IsValid")]
	public static extern bool QTextBlock_IsValid(Self* c_this);
	[LinkName("QTextBlock_OperatorEqual")]
	public static extern bool QTextBlock_OperatorEqual(Self* c_this, QTextBlock* o);
	[LinkName("QTextBlock_OperatorNotEqual")]
	public static extern bool QTextBlock_OperatorNotEqual(Self* c_this, QTextBlock* o);
	[LinkName("QTextBlock_OperatorLesser")]
	public static extern bool QTextBlock_OperatorLesser(Self* c_this, QTextBlock* o);
	[LinkName("QTextBlock_Position")]
	public static extern int32 QTextBlock_Position(Self* c_this);
	[LinkName("QTextBlock_Length")]
	public static extern int32 QTextBlock_Length(Self* c_this);
	[LinkName("QTextBlock_Contains")]
	public static extern bool QTextBlock_Contains(Self* c_this, int32 position);
	[LinkName("QTextBlock_Layout")]
	public static extern QTextLayout* QTextBlock_Layout(Self* c_this);
	[LinkName("QTextBlock_ClearLayout")]
	public static extern void QTextBlock_ClearLayout(Self* c_this);
	[LinkName("QTextBlock_BlockFormat")]
	public static extern QTextBlockFormat QTextBlock_BlockFormat(Self* c_this);
	[LinkName("QTextBlock_BlockFormatIndex")]
	public static extern int32 QTextBlock_BlockFormatIndex(Self* c_this);
	[LinkName("QTextBlock_CharFormat")]
	public static extern QTextCharFormat QTextBlock_CharFormat(Self* c_this);
	[LinkName("QTextBlock_CharFormatIndex")]
	public static extern int32 QTextBlock_CharFormatIndex(Self* c_this);
	[LinkName("QTextBlock_TextDirection")]
	public static extern int64 QTextBlock_TextDirection(Self* c_this);
	[LinkName("QTextBlock_Text")]
	public static extern libqt_string QTextBlock_Text(Self* c_this);
	[LinkName("QTextBlock_TextFormats")]
	public static extern QTextLayout__FormatRange[] QTextBlock_TextFormats(Self* c_this);
	[LinkName("QTextBlock_Document")]
	public static extern QTextDocument* QTextBlock_Document(Self* c_this);
	[LinkName("QTextBlock_TextList")]
	public static extern QTextList* QTextBlock_TextList(Self* c_this);
	[LinkName("QTextBlock_UserData")]
	public static extern QTextBlockUserData* QTextBlock_UserData(Self* c_this);
	[LinkName("QTextBlock_SetUserData")]
	public static extern void QTextBlock_SetUserData(Self* c_this, QTextBlockUserData* data);
	[LinkName("QTextBlock_UserState")]
	public static extern int32 QTextBlock_UserState(Self* c_this);
	[LinkName("QTextBlock_SetUserState")]
	public static extern void QTextBlock_SetUserState(Self* c_this, int32 state);
	[LinkName("QTextBlock_Revision")]
	public static extern int32 QTextBlock_Revision(Self* c_this);
	[LinkName("QTextBlock_SetRevision")]
	public static extern void QTextBlock_SetRevision(Self* c_this, int32 rev);
	[LinkName("QTextBlock_IsVisible")]
	public static extern bool QTextBlock_IsVisible(Self* c_this);
	[LinkName("QTextBlock_SetVisible")]
	public static extern void QTextBlock_SetVisible(Self* c_this, bool visible);
	[LinkName("QTextBlock_BlockNumber")]
	public static extern int32 QTextBlock_BlockNumber(Self* c_this);
	[LinkName("QTextBlock_FirstLineNumber")]
	public static extern int32 QTextBlock_FirstLineNumber(Self* c_this);
	[LinkName("QTextBlock_SetLineCount")]
	public static extern void QTextBlock_SetLineCount(Self* c_this, int32 count);
	[LinkName("QTextBlock_LineCount")]
	public static extern int32 QTextBlock_LineCount(Self* c_this);
	[LinkName("QTextBlock_Begin")]
	public static extern QTextBlock__iterator QTextBlock_Begin(Self* c_this);
	[LinkName("QTextBlock_End")]
	public static extern QTextBlock__iterator QTextBlock_End(Self* c_this);
	[LinkName("QTextBlock_Next")]
	public static extern QTextBlock QTextBlock_Next(Self* c_this);
	[LinkName("QTextBlock_Previous")]
	public static extern QTextBlock QTextBlock_Previous(Self* c_this);
	[LinkName("QTextBlock_FragmentIndex")]
	public static extern int32 QTextBlock_FragmentIndex(Self* c_this);
}
public struct QTextFragment
{
	[LinkName("QTextFragment_new")]
	public static extern QTextFragment* QTextFragment_new();
	[LinkName("QTextFragment_new2")]
	public static extern QTextFragment* QTextFragment_new2(QTextFragment* o);
	[LinkName("QTextFragment_OperatorAssign")]
	public static extern void QTextFragment_OperatorAssign(Self* c_this, QTextFragment* o);
	[LinkName("QTextFragment_IsValid")]
	public static extern bool QTextFragment_IsValid(Self* c_this);
	[LinkName("QTextFragment_OperatorEqual")]
	public static extern bool QTextFragment_OperatorEqual(Self* c_this, QTextFragment* o);
	[LinkName("QTextFragment_OperatorNotEqual")]
	public static extern bool QTextFragment_OperatorNotEqual(Self* c_this, QTextFragment* o);
	[LinkName("QTextFragment_OperatorLesser")]
	public static extern bool QTextFragment_OperatorLesser(Self* c_this, QTextFragment* o);
	[LinkName("QTextFragment_Position")]
	public static extern int32 QTextFragment_Position(Self* c_this);
	[LinkName("QTextFragment_Length")]
	public static extern int32 QTextFragment_Length(Self* c_this);
	[LinkName("QTextFragment_Contains")]
	public static extern bool QTextFragment_Contains(Self* c_this, int32 position);
	[LinkName("QTextFragment_CharFormat")]
	public static extern QTextCharFormat QTextFragment_CharFormat(Self* c_this);
	[LinkName("QTextFragment_CharFormatIndex")]
	public static extern int32 QTextFragment_CharFormatIndex(Self* c_this);
	[LinkName("QTextFragment_Text")]
	public static extern libqt_string QTextFragment_Text(Self* c_this);
	[LinkName("QTextFragment_GlyphRuns")]
	public static extern QGlyphRun[] QTextFragment_GlyphRuns(Self* c_this);
	[LinkName("QTextFragment_GlyphRuns1")]
	public static extern QGlyphRun[] QTextFragment_GlyphRuns1(Self* c_this, int32 from);
	[LinkName("QTextFragment_GlyphRuns2")]
	public static extern QGlyphRun[] QTextFragment_GlyphRuns2(Self* c_this, int32 from, int32 length);
}
public struct QTextFrame__iterator
{
	[LinkName("QTextFrame__iterator_new")]
	public static extern QTextFrame__iterator* QTextFrame__iterator_new(QTextFrame__iterator* other);
	[LinkName("QTextFrame__iterator_new2")]
	public static extern QTextFrame__iterator* QTextFrame__iterator_new2(QTextFrame__iterator* other);
	[LinkName("QTextFrame__iterator_new3")]
	public static extern QTextFrame__iterator* QTextFrame__iterator_new3();
	[LinkName("QTextFrame__iterator_new4")]
	public static extern QTextFrame__iterator* QTextFrame__iterator_new4(QTextFrame__iterator* param1);
	[LinkName("QTextFrame__iterator_ParentFrame")]
	public static extern QTextFrame* QTextFrame__iterator_ParentFrame(Self* c_this);
	[LinkName("QTextFrame__iterator_CurrentFrame")]
	public static extern QTextFrame* QTextFrame__iterator_CurrentFrame(Self* c_this);
	[LinkName("QTextFrame__iterator_CurrentBlock")]
	public static extern QTextBlock QTextFrame__iterator_CurrentBlock(Self* c_this);
	[LinkName("QTextFrame__iterator_AtEnd")]
	public static extern bool QTextFrame__iterator_AtEnd(Self* c_this);
	[LinkName("QTextFrame__iterator_OperatorEqual")]
	public static extern bool QTextFrame__iterator_OperatorEqual(Self* c_this, QTextFrame__iterator* o);
	[LinkName("QTextFrame__iterator_OperatorNotEqual")]
	public static extern bool QTextFrame__iterator_OperatorNotEqual(Self* c_this, QTextFrame__iterator* o);
	[LinkName("QTextFrame__iterator_OperatorPlusPlus")]
	public static extern QTextFrame__iterator* QTextFrame__iterator_OperatorPlusPlus(Self* c_this);
	[LinkName("QTextFrame__iterator_OperatorPlusPlusWithInt")]
	public static extern QTextFrame__iterator QTextFrame__iterator_OperatorPlusPlusWithInt(Self* c_this, int32 param1);
	[LinkName("QTextFrame__iterator_OperatorMinusMinus")]
	public static extern QTextFrame__iterator* QTextFrame__iterator_OperatorMinusMinus(Self* c_this);
	[LinkName("QTextFrame__iterator_OperatorMinusMinusWithInt")]
	public static extern QTextFrame__iterator QTextFrame__iterator_OperatorMinusMinusWithInt(Self* c_this, int32 param1);
}
public struct QTextBlock__iterator
{
	[LinkName("QTextBlock__iterator_new")]
	public static extern QTextBlock__iterator* QTextBlock__iterator_new(QTextBlock__iterator* other);
	[LinkName("QTextBlock__iterator_new2")]
	public static extern QTextBlock__iterator* QTextBlock__iterator_new2(QTextBlock__iterator* other);
	[LinkName("QTextBlock__iterator_new3")]
	public static extern QTextBlock__iterator* QTextBlock__iterator_new3();
	[LinkName("QTextBlock__iterator_new4")]
	public static extern QTextBlock__iterator* QTextBlock__iterator_new4(QTextBlock__iterator* param1);
	[LinkName("QTextBlock__iterator_Fragment")]
	public static extern QTextFragment QTextBlock__iterator_Fragment(Self* c_this);
	[LinkName("QTextBlock__iterator_AtEnd")]
	public static extern bool QTextBlock__iterator_AtEnd(Self* c_this);
	[LinkName("QTextBlock__iterator_OperatorEqual")]
	public static extern bool QTextBlock__iterator_OperatorEqual(Self* c_this, QTextBlock__iterator* o);
	[LinkName("QTextBlock__iterator_OperatorNotEqual")]
	public static extern bool QTextBlock__iterator_OperatorNotEqual(Self* c_this, QTextBlock__iterator* o);
	[LinkName("QTextBlock__iterator_OperatorPlusPlus")]
	public static extern QTextBlock__iterator* QTextBlock__iterator_OperatorPlusPlus(Self* c_this);
	[LinkName("QTextBlock__iterator_OperatorPlusPlusWithInt")]
	public static extern QTextBlock__iterator QTextBlock__iterator_OperatorPlusPlusWithInt(Self* c_this, int32 param1);
	[LinkName("QTextBlock__iterator_OperatorMinusMinus")]
	public static extern QTextBlock__iterator* QTextBlock__iterator_OperatorMinusMinus(Self* c_this);
	[LinkName("QTextBlock__iterator_OperatorMinusMinusWithInt")]
	public static extern QTextBlock__iterator QTextBlock__iterator_OperatorMinusMinusWithInt(Self* c_this, int32 param1);
}