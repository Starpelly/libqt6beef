using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QGlyphRun__GlyphRunFlag
{
	Overline = 1,
	Underline = 2,
	StrikeOut = 4,
	RightToLeft = 8,
	SplitLigature = 16,
}
public struct QGlyphRun
{
	[LinkName("QGlyphRun_new")]
	public static extern void* QGlyphRun_new();
	[LinkName("QGlyphRun_new2")]
	public static extern void* QGlyphRun_new2(QGlyphRun other);
	[LinkName("QGlyphRun_OperatorAssign")]
	public static extern void QGlyphRun_OperatorAssign(void* c_this, QGlyphRun other);
	[LinkName("QGlyphRun_Swap")]
	public static extern void QGlyphRun_Swap(void* c_this, QGlyphRun other);
	[LinkName("QGlyphRun_RawFont")]
	public static extern QRawFont QGlyphRun_RawFont(void* c_this);
	[LinkName("QGlyphRun_SetRawFont")]
	public static extern void QGlyphRun_SetRawFont(void* c_this, QRawFont rawFont);
	[LinkName("QGlyphRun_SetRawData")]
	public static extern void QGlyphRun_SetRawData(void* c_this, uint32 glyphIndexArray, QPointF glyphPositionArray, int32 size);
	[LinkName("QGlyphRun_GlyphIndexes")]
	public static extern uint32[] QGlyphRun_GlyphIndexes(void* c_this);
	[LinkName("QGlyphRun_SetGlyphIndexes")]
	public static extern void QGlyphRun_SetGlyphIndexes(void* c_this, uint32[] glyphIndexes);
	[LinkName("QGlyphRun_Positions")]
	public static extern QPointF[] QGlyphRun_Positions(void* c_this);
	[LinkName("QGlyphRun_SetPositions")]
	public static extern void QGlyphRun_SetPositions(void* c_this, QPointF[] positions);
	[LinkName("QGlyphRun_Clear")]
	public static extern void QGlyphRun_Clear(void* c_this);
	[LinkName("QGlyphRun_OperatorEqual")]
	public static extern bool QGlyphRun_OperatorEqual(void* c_this, QGlyphRun other);
	[LinkName("QGlyphRun_OperatorNotEqual")]
	public static extern bool QGlyphRun_OperatorNotEqual(void* c_this, QGlyphRun other);
	[LinkName("QGlyphRun_SetOverline")]
	public static extern void QGlyphRun_SetOverline(void* c_this, bool overline);
	[LinkName("QGlyphRun_Overline")]
	public static extern bool QGlyphRun_Overline(void* c_this);
	[LinkName("QGlyphRun_SetUnderline")]
	public static extern void QGlyphRun_SetUnderline(void* c_this, bool underline);
	[LinkName("QGlyphRun_Underline")]
	public static extern bool QGlyphRun_Underline(void* c_this);
	[LinkName("QGlyphRun_SetStrikeOut")]
	public static extern void QGlyphRun_SetStrikeOut(void* c_this, bool strikeOut);
	[LinkName("QGlyphRun_StrikeOut")]
	public static extern bool QGlyphRun_StrikeOut(void* c_this);
	[LinkName("QGlyphRun_SetRightToLeft")]
	public static extern void QGlyphRun_SetRightToLeft(void* c_this, bool on);
	[LinkName("QGlyphRun_IsRightToLeft")]
	public static extern bool QGlyphRun_IsRightToLeft(void* c_this);
	[LinkName("QGlyphRun_SetFlag")]
	public static extern void QGlyphRun_SetFlag(void* c_this, int64 flag);
	[LinkName("QGlyphRun_SetFlags")]
	public static extern void QGlyphRun_SetFlags(void* c_this, int64 flags);
	[LinkName("QGlyphRun_Flags")]
	public static extern int64 QGlyphRun_Flags(void* c_this);
	[LinkName("QGlyphRun_SetBoundingRect")]
	public static extern void QGlyphRun_SetBoundingRect(void* c_this, QRectF boundingRect);
	[LinkName("QGlyphRun_BoundingRect")]
	public static extern QRectF QGlyphRun_BoundingRect(void* c_this);
	[LinkName("QGlyphRun_IsEmpty")]
	public static extern bool QGlyphRun_IsEmpty(void* c_this);
	[LinkName("QGlyphRun_SetFlag2")]
	public static extern void QGlyphRun_SetFlag2(void* c_this, int64 flag, bool enabled);
}