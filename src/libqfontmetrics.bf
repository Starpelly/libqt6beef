using System;
using System.Interop;
namespace Qt;

public struct QFontMetrics
{
	[LinkName("QFontMetrics_new")]
	public static extern void* QFontMetrics_new(QFont param1);
	[LinkName("QFontMetrics_new2")]
	public static extern void* QFontMetrics_new2(QFont font, QPaintDevice pd);
	[LinkName("QFontMetrics_new3")]
	public static extern void* QFontMetrics_new3(QFontMetrics param1);
	[LinkName("QFontMetrics_OperatorAssign")]
	public static extern void QFontMetrics_OperatorAssign(void* c_this, QFontMetrics param1);
	[LinkName("QFontMetrics_Swap")]
	public static extern void QFontMetrics_Swap(void* c_this, QFontMetrics other);
	[LinkName("QFontMetrics_Ascent")]
	public static extern int32 QFontMetrics_Ascent(void* c_this);
	[LinkName("QFontMetrics_CapHeight")]
	public static extern int32 QFontMetrics_CapHeight(void* c_this);
	[LinkName("QFontMetrics_Descent")]
	public static extern int32 QFontMetrics_Descent(void* c_this);
	[LinkName("QFontMetrics_Height")]
	public static extern int32 QFontMetrics_Height(void* c_this);
	[LinkName("QFontMetrics_Leading")]
	public static extern int32 QFontMetrics_Leading(void* c_this);
	[LinkName("QFontMetrics_LineSpacing")]
	public static extern int32 QFontMetrics_LineSpacing(void* c_this);
	[LinkName("QFontMetrics_MinLeftBearing")]
	public static extern int32 QFontMetrics_MinLeftBearing(void* c_this);
	[LinkName("QFontMetrics_MinRightBearing")]
	public static extern int32 QFontMetrics_MinRightBearing(void* c_this);
	[LinkName("QFontMetrics_MaxWidth")]
	public static extern int32 QFontMetrics_MaxWidth(void* c_this);
	[LinkName("QFontMetrics_XHeight")]
	public static extern int32 QFontMetrics_XHeight(void* c_this);
	[LinkName("QFontMetrics_AverageCharWidth")]
	public static extern int32 QFontMetrics_AverageCharWidth(void* c_this);
	[LinkName("QFontMetrics_InFont")]
	public static extern bool QFontMetrics_InFont(void* c_this, QChar param1);
	[LinkName("QFontMetrics_InFontUcs4")]
	public static extern bool QFontMetrics_InFontUcs4(void* c_this, uint32 ucs4);
	[LinkName("QFontMetrics_LeftBearing")]
	public static extern int32 QFontMetrics_LeftBearing(void* c_this, QChar param1);
	[LinkName("QFontMetrics_RightBearing")]
	public static extern int32 QFontMetrics_RightBearing(void* c_this, QChar param1);
	[LinkName("QFontMetrics_HorizontalAdvance")]
	public static extern int32 QFontMetrics_HorizontalAdvance(void* c_this, char8[] param1);
	[LinkName("QFontMetrics_HorizontalAdvance2")]
	public static extern int32 QFontMetrics_HorizontalAdvance2(void* c_this, char8[] param1, QTextOption textOption);
	[LinkName("QFontMetrics_HorizontalAdvanceWithQChar")]
	public static extern int32 QFontMetrics_HorizontalAdvanceWithQChar(void* c_this, QChar param1);
	[LinkName("QFontMetrics_BoundingRect")]
	public static extern QRect QFontMetrics_BoundingRect(void* c_this, QChar param1);
	[LinkName("QFontMetrics_BoundingRectWithText")]
	public static extern QRect QFontMetrics_BoundingRectWithText(void* c_this, char8[] text);
	[LinkName("QFontMetrics_BoundingRect2")]
	public static extern QRect QFontMetrics_BoundingRect2(void* c_this, char8[] text, QTextOption textOption);
	[LinkName("QFontMetrics_BoundingRect3")]
	public static extern QRect QFontMetrics_BoundingRect3(void* c_this, QRect r, int32 flags, char8[] text);
	[LinkName("QFontMetrics_BoundingRect4")]
	public static extern QRect QFontMetrics_BoundingRect4(void* c_this, int32 x, int32 y, int32 w, int32 h, int32 flags, char8[] text);
	[LinkName("QFontMetrics_Size")]
	public static extern QSize QFontMetrics_Size(void* c_this, int32 flags, char8[] str);
	[LinkName("QFontMetrics_TightBoundingRect")]
	public static extern QRect QFontMetrics_TightBoundingRect(void* c_this, char8[] text);
	[LinkName("QFontMetrics_TightBoundingRect2")]
	public static extern QRect QFontMetrics_TightBoundingRect2(void* c_this, char8[] text, QTextOption textOption);
	[LinkName("QFontMetrics_ElidedText")]
	public static extern char8[] QFontMetrics_ElidedText(void* c_this, char8[] text, int64 mode, int32 width);
	[LinkName("QFontMetrics_UnderlinePos")]
	public static extern int32 QFontMetrics_UnderlinePos(void* c_this);
	[LinkName("QFontMetrics_OverlinePos")]
	public static extern int32 QFontMetrics_OverlinePos(void* c_this);
	[LinkName("QFontMetrics_StrikeOutPos")]
	public static extern int32 QFontMetrics_StrikeOutPos(void* c_this);
	[LinkName("QFontMetrics_LineWidth")]
	public static extern int32 QFontMetrics_LineWidth(void* c_this);
	[LinkName("QFontMetrics_FontDpi")]
	public static extern double QFontMetrics_FontDpi(void* c_this);
	[LinkName("QFontMetrics_OperatorEqual")]
	public static extern bool QFontMetrics_OperatorEqual(void* c_this, QFontMetrics other);
	[LinkName("QFontMetrics_OperatorNotEqual")]
	public static extern bool QFontMetrics_OperatorNotEqual(void* c_this, QFontMetrics other);
	[LinkName("QFontMetrics_HorizontalAdvance22")]
	public static extern int32 QFontMetrics_HorizontalAdvance22(void* c_this, char8[] param1, int32 lenVal);
	[LinkName("QFontMetrics_BoundingRect42")]
	public static extern QRect QFontMetrics_BoundingRect42(void* c_this, QRect r, int32 flags, char8[] text, int32 tabstops);
	[LinkName("QFontMetrics_BoundingRect5")]
	public static extern QRect QFontMetrics_BoundingRect5(void* c_this, QRect r, int32 flags, char8[] text, int32 tabstops, int32 tabarray);
	[LinkName("QFontMetrics_BoundingRect7")]
	public static extern QRect QFontMetrics_BoundingRect7(void* c_this, int32 x, int32 y, int32 w, int32 h, int32 flags, char8[] text, int32 tabstops);
	[LinkName("QFontMetrics_BoundingRect8")]
	public static extern QRect QFontMetrics_BoundingRect8(void* c_this, int32 x, int32 y, int32 w, int32 h, int32 flags, char8[] text, int32 tabstops, int32 tabarray);
	[LinkName("QFontMetrics_Size3")]
	public static extern QSize QFontMetrics_Size3(void* c_this, int32 flags, char8[] str, int32 tabstops);
	[LinkName("QFontMetrics_Size4")]
	public static extern QSize QFontMetrics_Size4(void* c_this, int32 flags, char8[] str, int32 tabstops, int32 tabarray);
	[LinkName("QFontMetrics_ElidedText4")]
	public static extern char8[] QFontMetrics_ElidedText4(void* c_this, char8[] text, int64 mode, int32 width, int32 flags);
}
public struct QFontMetricsF
{
	[LinkName("QFontMetricsF_new")]
	public static extern void* QFontMetricsF_new(QFont font);
	[LinkName("QFontMetricsF_new2")]
	public static extern void* QFontMetricsF_new2(QFont font, QPaintDevice pd);
	[LinkName("QFontMetricsF_new3")]
	public static extern void* QFontMetricsF_new3(QFontMetrics param1);
	[LinkName("QFontMetricsF_new4")]
	public static extern void* QFontMetricsF_new4(QFontMetricsF param1);
	[LinkName("QFontMetricsF_OperatorAssign")]
	public static extern void QFontMetricsF_OperatorAssign(void* c_this, QFontMetricsF param1);
	[LinkName("QFontMetricsF_OperatorAssignWithQFontMetrics")]
	public static extern void QFontMetricsF_OperatorAssignWithQFontMetrics(void* c_this, QFontMetrics param1);
	[LinkName("QFontMetricsF_Swap")]
	public static extern void QFontMetricsF_Swap(void* c_this, QFontMetricsF other);
	[LinkName("QFontMetricsF_Ascent")]
	public static extern double QFontMetricsF_Ascent(void* c_this);
	[LinkName("QFontMetricsF_CapHeight")]
	public static extern double QFontMetricsF_CapHeight(void* c_this);
	[LinkName("QFontMetricsF_Descent")]
	public static extern double QFontMetricsF_Descent(void* c_this);
	[LinkName("QFontMetricsF_Height")]
	public static extern double QFontMetricsF_Height(void* c_this);
	[LinkName("QFontMetricsF_Leading")]
	public static extern double QFontMetricsF_Leading(void* c_this);
	[LinkName("QFontMetricsF_LineSpacing")]
	public static extern double QFontMetricsF_LineSpacing(void* c_this);
	[LinkName("QFontMetricsF_MinLeftBearing")]
	public static extern double QFontMetricsF_MinLeftBearing(void* c_this);
	[LinkName("QFontMetricsF_MinRightBearing")]
	public static extern double QFontMetricsF_MinRightBearing(void* c_this);
	[LinkName("QFontMetricsF_MaxWidth")]
	public static extern double QFontMetricsF_MaxWidth(void* c_this);
	[LinkName("QFontMetricsF_XHeight")]
	public static extern double QFontMetricsF_XHeight(void* c_this);
	[LinkName("QFontMetricsF_AverageCharWidth")]
	public static extern double QFontMetricsF_AverageCharWidth(void* c_this);
	[LinkName("QFontMetricsF_InFont")]
	public static extern bool QFontMetricsF_InFont(void* c_this, QChar param1);
	[LinkName("QFontMetricsF_InFontUcs4")]
	public static extern bool QFontMetricsF_InFontUcs4(void* c_this, uint32 ucs4);
	[LinkName("QFontMetricsF_LeftBearing")]
	public static extern double QFontMetricsF_LeftBearing(void* c_this, QChar param1);
	[LinkName("QFontMetricsF_RightBearing")]
	public static extern double QFontMetricsF_RightBearing(void* c_this, QChar param1);
	[LinkName("QFontMetricsF_HorizontalAdvance")]
	public static extern double QFontMetricsF_HorizontalAdvance(void* c_this, char8[] stringVal);
	[LinkName("QFontMetricsF_HorizontalAdvanceWithQChar")]
	public static extern double QFontMetricsF_HorizontalAdvanceWithQChar(void* c_this, QChar param1);
	[LinkName("QFontMetricsF_HorizontalAdvance2")]
	public static extern double QFontMetricsF_HorizontalAdvance2(void* c_this, char8[] stringVal, QTextOption textOption);
	[LinkName("QFontMetricsF_BoundingRect")]
	public static extern QRectF QFontMetricsF_BoundingRect(void* c_this, char8[] stringVal);
	[LinkName("QFontMetricsF_BoundingRect2")]
	public static extern QRectF QFontMetricsF_BoundingRect2(void* c_this, char8[] text, QTextOption textOption);
	[LinkName("QFontMetricsF_BoundingRectWithQChar")]
	public static extern QRectF QFontMetricsF_BoundingRectWithQChar(void* c_this, QChar param1);
	[LinkName("QFontMetricsF_BoundingRect3")]
	public static extern QRectF QFontMetricsF_BoundingRect3(void* c_this, QRectF r, int32 flags, char8[] stringVal);
	[LinkName("QFontMetricsF_Size")]
	public static extern QSizeF QFontMetricsF_Size(void* c_this, int32 flags, char8[] str);
	[LinkName("QFontMetricsF_TightBoundingRect")]
	public static extern QRectF QFontMetricsF_TightBoundingRect(void* c_this, char8[] text);
	[LinkName("QFontMetricsF_TightBoundingRect2")]
	public static extern QRectF QFontMetricsF_TightBoundingRect2(void* c_this, char8[] text, QTextOption textOption);
	[LinkName("QFontMetricsF_ElidedText")]
	public static extern char8[] QFontMetricsF_ElidedText(void* c_this, char8[] text, int64 mode, double width);
	[LinkName("QFontMetricsF_UnderlinePos")]
	public static extern double QFontMetricsF_UnderlinePos(void* c_this);
	[LinkName("QFontMetricsF_OverlinePos")]
	public static extern double QFontMetricsF_OverlinePos(void* c_this);
	[LinkName("QFontMetricsF_StrikeOutPos")]
	public static extern double QFontMetricsF_StrikeOutPos(void* c_this);
	[LinkName("QFontMetricsF_LineWidth")]
	public static extern double QFontMetricsF_LineWidth(void* c_this);
	[LinkName("QFontMetricsF_FontDpi")]
	public static extern double QFontMetricsF_FontDpi(void* c_this);
	[LinkName("QFontMetricsF_OperatorEqual")]
	public static extern bool QFontMetricsF_OperatorEqual(void* c_this, QFontMetricsF other);
	[LinkName("QFontMetricsF_OperatorNotEqual")]
	public static extern bool QFontMetricsF_OperatorNotEqual(void* c_this, QFontMetricsF other);
	[LinkName("QFontMetricsF_HorizontalAdvance22")]
	public static extern double QFontMetricsF_HorizontalAdvance22(void* c_this, char8[] stringVal, int32 length);
	[LinkName("QFontMetricsF_BoundingRect4")]
	public static extern QRectF QFontMetricsF_BoundingRect4(void* c_this, QRectF r, int32 flags, char8[] stringVal, int32 tabstops);
	[LinkName("QFontMetricsF_BoundingRect5")]
	public static extern QRectF QFontMetricsF_BoundingRect5(void* c_this, QRectF r, int32 flags, char8[] stringVal, int32 tabstops, int32 tabarray);
	[LinkName("QFontMetricsF_Size3")]
	public static extern QSizeF QFontMetricsF_Size3(void* c_this, int32 flags, char8[] str, int32 tabstops);
	[LinkName("QFontMetricsF_Size4")]
	public static extern QSizeF QFontMetricsF_Size4(void* c_this, int32 flags, char8[] str, int32 tabstops, int32 tabarray);
	[LinkName("QFontMetricsF_ElidedText4")]
	public static extern char8[] QFontMetricsF_ElidedText4(void* c_this, char8[] text, int64 mode, double width, int32 flags);
}