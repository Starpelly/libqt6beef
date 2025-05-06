using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QTextLayout__CursorMode
{
	SkipCharacters = 0,
	SkipWords = 1,
}
[AllowDuplicates]
public enum QTextLine__Edge
{
	Leading = 0,
	Trailing = 1,
}
[AllowDuplicates]
public enum QTextLine__CursorPosition
{
	CursorBetweenCharacters = 0,
	CursorOnCharacter = 1,
}
public struct QTextInlineObject
{
	[LinkName("QTextInlineObject_new")]
	public static extern QTextInlineObject* QTextInlineObject_new(QTextInlineObject* other);
	[LinkName("QTextInlineObject_new2")]
	public static extern QTextInlineObject* QTextInlineObject_new2(QTextInlineObject* other);
	[LinkName("QTextInlineObject_new3")]
	public static extern QTextInlineObject* QTextInlineObject_new3();
	[LinkName("QTextInlineObject_IsValid")]
	public static extern bool QTextInlineObject_IsValid(Self* c_this);
	[LinkName("QTextInlineObject_Rect")]
	public static extern QRectF QTextInlineObject_Rect(Self* c_this);
	[LinkName("QTextInlineObject_Width")]
	public static extern double QTextInlineObject_Width(Self* c_this);
	[LinkName("QTextInlineObject_Ascent")]
	public static extern double QTextInlineObject_Ascent(Self* c_this);
	[LinkName("QTextInlineObject_Descent")]
	public static extern double QTextInlineObject_Descent(Self* c_this);
	[LinkName("QTextInlineObject_Height")]
	public static extern double QTextInlineObject_Height(Self* c_this);
	[LinkName("QTextInlineObject_TextDirection")]
	public static extern int64 QTextInlineObject_TextDirection(Self* c_this);
	[LinkName("QTextInlineObject_SetWidth")]
	public static extern void QTextInlineObject_SetWidth(Self* c_this, double w);
	[LinkName("QTextInlineObject_SetAscent")]
	public static extern void QTextInlineObject_SetAscent(Self* c_this, double a);
	[LinkName("QTextInlineObject_SetDescent")]
	public static extern void QTextInlineObject_SetDescent(Self* c_this, double d);
	[LinkName("QTextInlineObject_TextPosition")]
	public static extern int32 QTextInlineObject_TextPosition(Self* c_this);
	[LinkName("QTextInlineObject_FormatIndex")]
	public static extern int32 QTextInlineObject_FormatIndex(Self* c_this);
	[LinkName("QTextInlineObject_Format")]
	public static extern QTextFormat QTextInlineObject_Format(Self* c_this);
}
public struct QTextLayout
{
	[LinkName("QTextLayout_new")]
	public static extern QTextLayout* QTextLayout_new();
	[LinkName("QTextLayout_new2")]
	public static extern QTextLayout* QTextLayout_new2(libqt_string text);
	[LinkName("QTextLayout_new3")]
	public static extern QTextLayout* QTextLayout_new3(libqt_string text, QFont* font);
	[LinkName("QTextLayout_new4")]
	public static extern QTextLayout* QTextLayout_new4(QTextBlock* b);
	[LinkName("QTextLayout_new5")]
	public static extern QTextLayout* QTextLayout_new5(libqt_string text, QFont* font, QPaintDevice* paintdevice);
	[LinkName("QTextLayout_SetFont")]
	public static extern void QTextLayout_SetFont(Self* c_this, QFont* f);
	[LinkName("QTextLayout_Font")]
	public static extern QFont QTextLayout_Font(Self* c_this);
	[LinkName("QTextLayout_SetRawFont")]
	public static extern void QTextLayout_SetRawFont(Self* c_this, QRawFont* rawFont);
	[LinkName("QTextLayout_SetText")]
	public static extern void QTextLayout_SetText(Self* c_this, libqt_string stringVal);
	[LinkName("QTextLayout_Text")]
	public static extern libqt_string QTextLayout_Text(Self* c_this);
	[LinkName("QTextLayout_SetTextOption")]
	public static extern void QTextLayout_SetTextOption(Self* c_this, QTextOption* option);
	[LinkName("QTextLayout_TextOption")]
	public static extern QTextOption* QTextLayout_TextOption(Self* c_this);
	[LinkName("QTextLayout_SetPreeditArea")]
	public static extern void QTextLayout_SetPreeditArea(Self* c_this, int32 position, libqt_string text);
	[LinkName("QTextLayout_PreeditAreaPosition")]
	public static extern int32 QTextLayout_PreeditAreaPosition(Self* c_this);
	[LinkName("QTextLayout_PreeditAreaText")]
	public static extern libqt_string QTextLayout_PreeditAreaText(Self* c_this);
	[LinkName("QTextLayout_SetFormats")]
	public static extern void QTextLayout_SetFormats(Self* c_this, QTextLayout__FormatRange[] overrides);
	[LinkName("QTextLayout_Formats")]
	public static extern QTextLayout__FormatRange[] QTextLayout_Formats(Self* c_this);
	[LinkName("QTextLayout_ClearFormats")]
	public static extern void QTextLayout_ClearFormats(Self* c_this);
	[LinkName("QTextLayout_SetCacheEnabled")]
	public static extern void QTextLayout_SetCacheEnabled(Self* c_this, bool enable);
	[LinkName("QTextLayout_CacheEnabled")]
	public static extern bool QTextLayout_CacheEnabled(Self* c_this);
	[LinkName("QTextLayout_SetCursorMoveStyle")]
	public static extern void QTextLayout_SetCursorMoveStyle(Self* c_this, int64 style);
	[LinkName("QTextLayout_CursorMoveStyle")]
	public static extern int64 QTextLayout_CursorMoveStyle(Self* c_this);
	[LinkName("QTextLayout_BeginLayout")]
	public static extern void QTextLayout_BeginLayout(Self* c_this);
	[LinkName("QTextLayout_EndLayout")]
	public static extern void QTextLayout_EndLayout(Self* c_this);
	[LinkName("QTextLayout_ClearLayout")]
	public static extern void QTextLayout_ClearLayout(Self* c_this);
	[LinkName("QTextLayout_CreateLine")]
	public static extern QTextLine QTextLayout_CreateLine(Self* c_this);
	[LinkName("QTextLayout_LineCount")]
	public static extern int32 QTextLayout_LineCount(Self* c_this);
	[LinkName("QTextLayout_LineAt")]
	public static extern QTextLine QTextLayout_LineAt(Self* c_this, int32 i);
	[LinkName("QTextLayout_LineForTextPosition")]
	public static extern QTextLine QTextLayout_LineForTextPosition(Self* c_this, int32 pos);
	[LinkName("QTextLayout_IsValidCursorPosition")]
	public static extern bool QTextLayout_IsValidCursorPosition(Self* c_this, int32 pos);
	[LinkName("QTextLayout_NextCursorPosition")]
	public static extern int32 QTextLayout_NextCursorPosition(Self* c_this, int32 oldPos);
	[LinkName("QTextLayout_PreviousCursorPosition")]
	public static extern int32 QTextLayout_PreviousCursorPosition(Self* c_this, int32 oldPos);
	[LinkName("QTextLayout_LeftCursorPosition")]
	public static extern int32 QTextLayout_LeftCursorPosition(Self* c_this, int32 oldPos);
	[LinkName("QTextLayout_RightCursorPosition")]
	public static extern int32 QTextLayout_RightCursorPosition(Self* c_this, int32 oldPos);
	[LinkName("QTextLayout_Draw")]
	public static extern void QTextLayout_Draw(Self* c_this, QPainter* p, QPointF* pos);
	[LinkName("QTextLayout_DrawCursor")]
	public static extern void QTextLayout_DrawCursor(Self* c_this, QPainter* p, QPointF* pos, int32 cursorPosition);
	[LinkName("QTextLayout_DrawCursor2")]
	public static extern void QTextLayout_DrawCursor2(Self* c_this, QPainter* p, QPointF* pos, int32 cursorPosition, int32 width);
	[LinkName("QTextLayout_Position")]
	public static extern QPointF QTextLayout_Position(Self* c_this);
	[LinkName("QTextLayout_SetPosition")]
	public static extern void QTextLayout_SetPosition(Self* c_this, QPointF* p);
	[LinkName("QTextLayout_BoundingRect")]
	public static extern QRectF QTextLayout_BoundingRect(Self* c_this);
	[LinkName("QTextLayout_MinimumWidth")]
	public static extern double QTextLayout_MinimumWidth(Self* c_this);
	[LinkName("QTextLayout_MaximumWidth")]
	public static extern double QTextLayout_MaximumWidth(Self* c_this);
	[LinkName("QTextLayout_GlyphRuns")]
	public static extern QGlyphRun[] QTextLayout_GlyphRuns(Self* c_this);
	[LinkName("QTextLayout_SetFlags")]
	public static extern void QTextLayout_SetFlags(Self* c_this, int32 flags);
	[LinkName("QTextLayout_NextCursorPosition2")]
	public static extern int32 QTextLayout_NextCursorPosition2(Self* c_this, int32 oldPos, int64 mode);
	[LinkName("QTextLayout_PreviousCursorPosition2")]
	public static extern int32 QTextLayout_PreviousCursorPosition2(Self* c_this, int32 oldPos, int64 mode);
	[LinkName("QTextLayout_Draw3")]
	public static extern void QTextLayout_Draw3(Self* c_this, QPainter* p, QPointF* pos, QTextLayout__FormatRange[] selections);
	[LinkName("QTextLayout_Draw4")]
	public static extern void QTextLayout_Draw4(Self* c_this, QPainter* p, QPointF* pos, QTextLayout__FormatRange[] selections, QRectF* clip);
	[LinkName("QTextLayout_GlyphRuns1")]
	public static extern QGlyphRun[] QTextLayout_GlyphRuns1(Self* c_this, int32 from);
	[LinkName("QTextLayout_GlyphRuns2")]
	public static extern QGlyphRun[] QTextLayout_GlyphRuns2(Self* c_this, int32 from, int32 length);
}
public struct QTextLine
{
	[LinkName("QTextLine_new")]
	public static extern QTextLine* QTextLine_new(QTextLine* other);
	[LinkName("QTextLine_new2")]
	public static extern QTextLine* QTextLine_new2(QTextLine* other);
	[LinkName("QTextLine_new3")]
	public static extern QTextLine* QTextLine_new3();
	[LinkName("QTextLine_IsValid")]
	public static extern bool QTextLine_IsValid(Self* c_this);
	[LinkName("QTextLine_Rect")]
	public static extern QRectF QTextLine_Rect(Self* c_this);
	[LinkName("QTextLine_X")]
	public static extern double QTextLine_X(Self* c_this);
	[LinkName("QTextLine_Y")]
	public static extern double QTextLine_Y(Self* c_this);
	[LinkName("QTextLine_Width")]
	public static extern double QTextLine_Width(Self* c_this);
	[LinkName("QTextLine_Ascent")]
	public static extern double QTextLine_Ascent(Self* c_this);
	[LinkName("QTextLine_Descent")]
	public static extern double QTextLine_Descent(Self* c_this);
	[LinkName("QTextLine_Height")]
	public static extern double QTextLine_Height(Self* c_this);
	[LinkName("QTextLine_Leading")]
	public static extern double QTextLine_Leading(Self* c_this);
	[LinkName("QTextLine_SetLeadingIncluded")]
	public static extern void QTextLine_SetLeadingIncluded(Self* c_this, bool included);
	[LinkName("QTextLine_LeadingIncluded")]
	public static extern bool QTextLine_LeadingIncluded(Self* c_this);
	[LinkName("QTextLine_NaturalTextWidth")]
	public static extern double QTextLine_NaturalTextWidth(Self* c_this);
	[LinkName("QTextLine_HorizontalAdvance")]
	public static extern double QTextLine_HorizontalAdvance(Self* c_this);
	[LinkName("QTextLine_NaturalTextRect")]
	public static extern QRectF QTextLine_NaturalTextRect(Self* c_this);
	[LinkName("QTextLine_CursorToX")]
	public static extern double QTextLine_CursorToX(Self* c_this, int32* cursorPos);
	[LinkName("QTextLine_CursorToXWithCursorPos")]
	public static extern double QTextLine_CursorToXWithCursorPos(Self* c_this, int32 cursorPos);
	[LinkName("QTextLine_XToCursor")]
	public static extern int32 QTextLine_XToCursor(Self* c_this, double x);
	[LinkName("QTextLine_SetLineWidth")]
	public static extern void QTextLine_SetLineWidth(Self* c_this, double width);
	[LinkName("QTextLine_SetNumColumns")]
	public static extern void QTextLine_SetNumColumns(Self* c_this, int32 columns);
	[LinkName("QTextLine_SetNumColumns2")]
	public static extern void QTextLine_SetNumColumns2(Self* c_this, int32 columns, double alignmentWidth);
	[LinkName("QTextLine_SetPosition")]
	public static extern void QTextLine_SetPosition(Self* c_this, QPointF* pos);
	[LinkName("QTextLine_Position")]
	public static extern QPointF QTextLine_Position(Self* c_this);
	[LinkName("QTextLine_TextStart")]
	public static extern int32 QTextLine_TextStart(Self* c_this);
	[LinkName("QTextLine_TextLength")]
	public static extern int32 QTextLine_TextLength(Self* c_this);
	[LinkName("QTextLine_LineNumber")]
	public static extern int32 QTextLine_LineNumber(Self* c_this);
	[LinkName("QTextLine_Draw")]
	public static extern void QTextLine_Draw(Self* c_this, QPainter* painter, QPointF* position);
	[LinkName("QTextLine_GlyphRuns")]
	public static extern QGlyphRun[] QTextLine_GlyphRuns(Self* c_this);
	[LinkName("QTextLine_CursorToX2")]
	public static extern double QTextLine_CursorToX2(Self* c_this, int32* cursorPos, int64 edge);
	[LinkName("QTextLine_CursorToX22")]
	public static extern double QTextLine_CursorToX22(Self* c_this, int32 cursorPos, int64 edge);
	[LinkName("QTextLine_XToCursor2")]
	public static extern int32 QTextLine_XToCursor2(Self* c_this, double x, int64 param2);
	[LinkName("QTextLine_GlyphRuns1")]
	public static extern QGlyphRun[] QTextLine_GlyphRuns1(Self* c_this, int32 from);
	[LinkName("QTextLine_GlyphRuns2")]
	public static extern QGlyphRun[] QTextLine_GlyphRuns2(Self* c_this, int32 from, int32 length);
}
public struct QTextLayout__FormatRange
{
	[LinkName("QTextLayout__FormatRange_new")]
	public static extern QTextLayout__FormatRange* QTextLayout__FormatRange_new(QTextLayout__FormatRange* param1);
	[LinkName("QTextLayout__FormatRange_OperatorAssign")]
	public static extern void QTextLayout__FormatRange_OperatorAssign(Self* c_this, QTextLayout__FormatRange* param1);
}