using System;
using System.Interop;
namespace Qt;

public struct QFontMetrics
{
	[LinkName("QFontMetrics_new")]
	public static extern QFontMetrics* QFontMetrics_new(QFont* param1);
	[LinkName("QFontMetrics_new2")]
	public static extern QFontMetrics* QFontMetrics_new2(QFont* font, QPaintDevice* pd);
	[LinkName("QFontMetrics_new3")]
	public static extern QFontMetrics* QFontMetrics_new3(QFontMetrics* param1);
	[LinkName("QFontMetrics_OperatorAssign")]
	public static extern void QFontMetrics_OperatorAssign(Self* c_this, QFontMetrics* param1);
	[LinkName("QFontMetrics_Swap")]
	public static extern void QFontMetrics_Swap(Self* c_this, QFontMetrics* other);
	[LinkName("QFontMetrics_Ascent")]
	public static extern int32 QFontMetrics_Ascent(Self* c_this);
	[LinkName("QFontMetrics_CapHeight")]
	public static extern int32 QFontMetrics_CapHeight(Self* c_this);
	[LinkName("QFontMetrics_Descent")]
	public static extern int32 QFontMetrics_Descent(Self* c_this);
	[LinkName("QFontMetrics_Height")]
	public static extern int32 QFontMetrics_Height(Self* c_this);
	[LinkName("QFontMetrics_Leading")]
	public static extern int32 QFontMetrics_Leading(Self* c_this);
	[LinkName("QFontMetrics_LineSpacing")]
	public static extern int32 QFontMetrics_LineSpacing(Self* c_this);
	[LinkName("QFontMetrics_MinLeftBearing")]
	public static extern int32 QFontMetrics_MinLeftBearing(Self* c_this);
	[LinkName("QFontMetrics_MinRightBearing")]
	public static extern int32 QFontMetrics_MinRightBearing(Self* c_this);
	[LinkName("QFontMetrics_MaxWidth")]
	public static extern int32 QFontMetrics_MaxWidth(Self* c_this);
	[LinkName("QFontMetrics_XHeight")]
	public static extern int32 QFontMetrics_XHeight(Self* c_this);
	[LinkName("QFontMetrics_AverageCharWidth")]
	public static extern int32 QFontMetrics_AverageCharWidth(Self* c_this);
	[LinkName("QFontMetrics_InFont")]
	public static extern bool QFontMetrics_InFont(Self* c_this, QChar param1);
	[LinkName("QFontMetrics_InFontUcs4")]
	public static extern bool QFontMetrics_InFontUcs4(Self* c_this, uint32 ucs4);
	[LinkName("QFontMetrics_LeftBearing")]
	public static extern int32 QFontMetrics_LeftBearing(Self* c_this, QChar param1);
	[LinkName("QFontMetrics_RightBearing")]
	public static extern int32 QFontMetrics_RightBearing(Self* c_this, QChar param1);
	[LinkName("QFontMetrics_HorizontalAdvance")]
	public static extern int32 QFontMetrics_HorizontalAdvance(Self* c_this, libqt_string param1);
	[LinkName("QFontMetrics_HorizontalAdvance2")]
	public static extern int32 QFontMetrics_HorizontalAdvance2(Self* c_this, libqt_string param1, QTextOption* textOption);
	[LinkName("QFontMetrics_HorizontalAdvanceWithQChar")]
	public static extern int32 QFontMetrics_HorizontalAdvanceWithQChar(Self* c_this, QChar param1);
	[LinkName("QFontMetrics_BoundingRect")]
	public static extern QRect QFontMetrics_BoundingRect(Self* c_this, QChar param1);
	[LinkName("QFontMetrics_BoundingRectWithText")]
	public static extern QRect QFontMetrics_BoundingRectWithText(Self* c_this, libqt_string text);
	[LinkName("QFontMetrics_BoundingRect2")]
	public static extern QRect QFontMetrics_BoundingRect2(Self* c_this, libqt_string text, QTextOption* textOption);
	[LinkName("QFontMetrics_BoundingRect3")]
	public static extern QRect QFontMetrics_BoundingRect3(Self* c_this, QRect* r, int32 flags, libqt_string text);
	[LinkName("QFontMetrics_BoundingRect4")]
	public static extern QRect QFontMetrics_BoundingRect4(Self* c_this, int32 x, int32 y, int32 w, int32 h, int32 flags, libqt_string text);
	[LinkName("QFontMetrics_Size")]
	public static extern QSize QFontMetrics_Size(Self* c_this, int32 flags, libqt_string str);
	[LinkName("QFontMetrics_TightBoundingRect")]
	public static extern QRect QFontMetrics_TightBoundingRect(Self* c_this, libqt_string text);
	[LinkName("QFontMetrics_TightBoundingRect2")]
	public static extern QRect QFontMetrics_TightBoundingRect2(Self* c_this, libqt_string text, QTextOption* textOption);
	[LinkName("QFontMetrics_ElidedText")]
	public static extern libqt_string QFontMetrics_ElidedText(Self* c_this, libqt_string text, int64 mode, int32 width);
	[LinkName("QFontMetrics_UnderlinePos")]
	public static extern int32 QFontMetrics_UnderlinePos(Self* c_this);
	[LinkName("QFontMetrics_OverlinePos")]
	public static extern int32 QFontMetrics_OverlinePos(Self* c_this);
	[LinkName("QFontMetrics_StrikeOutPos")]
	public static extern int32 QFontMetrics_StrikeOutPos(Self* c_this);
	[LinkName("QFontMetrics_LineWidth")]
	public static extern int32 QFontMetrics_LineWidth(Self* c_this);
	[LinkName("QFontMetrics_FontDpi")]
	public static extern double QFontMetrics_FontDpi(Self* c_this);
	[LinkName("QFontMetrics_OperatorEqual")]
	public static extern bool QFontMetrics_OperatorEqual(Self* c_this, QFontMetrics* other);
	[LinkName("QFontMetrics_OperatorNotEqual")]
	public static extern bool QFontMetrics_OperatorNotEqual(Self* c_this, QFontMetrics* other);
	[LinkName("QFontMetrics_HorizontalAdvance22")]
	public static extern int32 QFontMetrics_HorizontalAdvance22(Self* c_this, libqt_string param1, int32 lenVal);
	[LinkName("QFontMetrics_BoundingRect42")]
	public static extern QRect QFontMetrics_BoundingRect42(Self* c_this, QRect* r, int32 flags, libqt_string text, int32 tabstops);
	[LinkName("QFontMetrics_BoundingRect5")]
	public static extern QRect QFontMetrics_BoundingRect5(Self* c_this, QRect* r, int32 flags, libqt_string text, int32 tabstops, int32* tabarray);
	[LinkName("QFontMetrics_BoundingRect7")]
	public static extern QRect QFontMetrics_BoundingRect7(Self* c_this, int32 x, int32 y, int32 w, int32 h, int32 flags, libqt_string text, int32 tabstops);
	[LinkName("QFontMetrics_BoundingRect8")]
	public static extern QRect QFontMetrics_BoundingRect8(Self* c_this, int32 x, int32 y, int32 w, int32 h, int32 flags, libqt_string text, int32 tabstops, int32* tabarray);
	[LinkName("QFontMetrics_Size3")]
	public static extern QSize QFontMetrics_Size3(Self* c_this, int32 flags, libqt_string str, int32 tabstops);
	[LinkName("QFontMetrics_Size4")]
	public static extern QSize QFontMetrics_Size4(Self* c_this, int32 flags, libqt_string str, int32 tabstops, int32* tabarray);
	[LinkName("QFontMetrics_ElidedText4")]
	public static extern libqt_string QFontMetrics_ElidedText4(Self* c_this, libqt_string text, int64 mode, int32 width, int32 flags);
}
public struct QFontMetricsF
{
	[LinkName("QFontMetricsF_new")]
	public static extern QFontMetricsF* QFontMetricsF_new(QFont* font);
	[LinkName("QFontMetricsF_new2")]
	public static extern QFontMetricsF* QFontMetricsF_new2(QFont* font, QPaintDevice* pd);
	[LinkName("QFontMetricsF_new3")]
	public static extern QFontMetricsF* QFontMetricsF_new3(QFontMetrics* param1);
	[LinkName("QFontMetricsF_new4")]
	public static extern QFontMetricsF* QFontMetricsF_new4(QFontMetricsF* param1);
	[LinkName("QFontMetricsF_OperatorAssign")]
	public static extern void QFontMetricsF_OperatorAssign(Self* c_this, QFontMetricsF* param1);
	[LinkName("QFontMetricsF_OperatorAssignWithQFontMetrics")]
	public static extern void QFontMetricsF_OperatorAssignWithQFontMetrics(Self* c_this, QFontMetrics* param1);
	[LinkName("QFontMetricsF_Swap")]
	public static extern void QFontMetricsF_Swap(Self* c_this, QFontMetricsF* other);
	[LinkName("QFontMetricsF_Ascent")]
	public static extern double QFontMetricsF_Ascent(Self* c_this);
	[LinkName("QFontMetricsF_CapHeight")]
	public static extern double QFontMetricsF_CapHeight(Self* c_this);
	[LinkName("QFontMetricsF_Descent")]
	public static extern double QFontMetricsF_Descent(Self* c_this);
	[LinkName("QFontMetricsF_Height")]
	public static extern double QFontMetricsF_Height(Self* c_this);
	[LinkName("QFontMetricsF_Leading")]
	public static extern double QFontMetricsF_Leading(Self* c_this);
	[LinkName("QFontMetricsF_LineSpacing")]
	public static extern double QFontMetricsF_LineSpacing(Self* c_this);
	[LinkName("QFontMetricsF_MinLeftBearing")]
	public static extern double QFontMetricsF_MinLeftBearing(Self* c_this);
	[LinkName("QFontMetricsF_MinRightBearing")]
	public static extern double QFontMetricsF_MinRightBearing(Self* c_this);
	[LinkName("QFontMetricsF_MaxWidth")]
	public static extern double QFontMetricsF_MaxWidth(Self* c_this);
	[LinkName("QFontMetricsF_XHeight")]
	public static extern double QFontMetricsF_XHeight(Self* c_this);
	[LinkName("QFontMetricsF_AverageCharWidth")]
	public static extern double QFontMetricsF_AverageCharWidth(Self* c_this);
	[LinkName("QFontMetricsF_InFont")]
	public static extern bool QFontMetricsF_InFont(Self* c_this, QChar param1);
	[LinkName("QFontMetricsF_InFontUcs4")]
	public static extern bool QFontMetricsF_InFontUcs4(Self* c_this, uint32 ucs4);
	[LinkName("QFontMetricsF_LeftBearing")]
	public static extern double QFontMetricsF_LeftBearing(Self* c_this, QChar param1);
	[LinkName("QFontMetricsF_RightBearing")]
	public static extern double QFontMetricsF_RightBearing(Self* c_this, QChar param1);
	[LinkName("QFontMetricsF_HorizontalAdvance")]
	public static extern double QFontMetricsF_HorizontalAdvance(Self* c_this, libqt_string stringVal);
	[LinkName("QFontMetricsF_HorizontalAdvanceWithQChar")]
	public static extern double QFontMetricsF_HorizontalAdvanceWithQChar(Self* c_this, QChar param1);
	[LinkName("QFontMetricsF_HorizontalAdvance2")]
	public static extern double QFontMetricsF_HorizontalAdvance2(Self* c_this, libqt_string stringVal, QTextOption* textOption);
	[LinkName("QFontMetricsF_BoundingRect")]
	public static extern QRectF QFontMetricsF_BoundingRect(Self* c_this, libqt_string stringVal);
	[LinkName("QFontMetricsF_BoundingRect2")]
	public static extern QRectF QFontMetricsF_BoundingRect2(Self* c_this, libqt_string text, QTextOption* textOption);
	[LinkName("QFontMetricsF_BoundingRectWithQChar")]
	public static extern QRectF QFontMetricsF_BoundingRectWithQChar(Self* c_this, QChar param1);
	[LinkName("QFontMetricsF_BoundingRect3")]
	public static extern QRectF QFontMetricsF_BoundingRect3(Self* c_this, QRectF* r, int32 flags, libqt_string stringVal);
	[LinkName("QFontMetricsF_Size")]
	public static extern QSizeF QFontMetricsF_Size(Self* c_this, int32 flags, libqt_string str);
	[LinkName("QFontMetricsF_TightBoundingRect")]
	public static extern QRectF QFontMetricsF_TightBoundingRect(Self* c_this, libqt_string text);
	[LinkName("QFontMetricsF_TightBoundingRect2")]
	public static extern QRectF QFontMetricsF_TightBoundingRect2(Self* c_this, libqt_string text, QTextOption* textOption);
	[LinkName("QFontMetricsF_ElidedText")]
	public static extern libqt_string QFontMetricsF_ElidedText(Self* c_this, libqt_string text, int64 mode, double width);
	[LinkName("QFontMetricsF_UnderlinePos")]
	public static extern double QFontMetricsF_UnderlinePos(Self* c_this);
	[LinkName("QFontMetricsF_OverlinePos")]
	public static extern double QFontMetricsF_OverlinePos(Self* c_this);
	[LinkName("QFontMetricsF_StrikeOutPos")]
	public static extern double QFontMetricsF_StrikeOutPos(Self* c_this);
	[LinkName("QFontMetricsF_LineWidth")]
	public static extern double QFontMetricsF_LineWidth(Self* c_this);
	[LinkName("QFontMetricsF_FontDpi")]
	public static extern double QFontMetricsF_FontDpi(Self* c_this);
	[LinkName("QFontMetricsF_OperatorEqual")]
	public static extern bool QFontMetricsF_OperatorEqual(Self* c_this, QFontMetricsF* other);
	[LinkName("QFontMetricsF_OperatorNotEqual")]
	public static extern bool QFontMetricsF_OperatorNotEqual(Self* c_this, QFontMetricsF* other);
	[LinkName("QFontMetricsF_HorizontalAdvance22")]
	public static extern double QFontMetricsF_HorizontalAdvance22(Self* c_this, libqt_string stringVal, int32 length);
	[LinkName("QFontMetricsF_BoundingRect4")]
	public static extern QRectF QFontMetricsF_BoundingRect4(Self* c_this, QRectF* r, int32 flags, libqt_string stringVal, int32 tabstops);
	[LinkName("QFontMetricsF_BoundingRect5")]
	public static extern QRectF QFontMetricsF_BoundingRect5(Self* c_this, QRectF* r, int32 flags, libqt_string stringVal, int32 tabstops, int32* tabarray);
	[LinkName("QFontMetricsF_Size3")]
	public static extern QSizeF QFontMetricsF_Size3(Self* c_this, int32 flags, libqt_string str, int32 tabstops);
	[LinkName("QFontMetricsF_Size4")]
	public static extern QSizeF QFontMetricsF_Size4(Self* c_this, int32 flags, libqt_string str, int32 tabstops, int32* tabarray);
	[LinkName("QFontMetricsF_ElidedText4")]
	public static extern libqt_string QFontMetricsF_ElidedText4(Self* c_this, libqt_string text, int64 mode, double width, int32 flags);
}