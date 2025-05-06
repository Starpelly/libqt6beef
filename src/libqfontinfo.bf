using System;
using System.Interop;
namespace Qt;

public struct QFontInfo
{
	[LinkName("QFontInfo_new")]
	public static extern void* QFontInfo_new(QFont param1);
	[LinkName("QFontInfo_new2")]
	public static extern void* QFontInfo_new2(QFontInfo param1);
	[LinkName("QFontInfo_OperatorAssign")]
	public static extern void QFontInfo_OperatorAssign(void* c_this, QFontInfo param1);
	[LinkName("QFontInfo_Swap")]
	public static extern void QFontInfo_Swap(void* c_this, QFontInfo other);
	[LinkName("QFontInfo_Family")]
	public static extern char8[] QFontInfo_Family(void* c_this);
	[LinkName("QFontInfo_StyleName")]
	public static extern char8[] QFontInfo_StyleName(void* c_this);
	[LinkName("QFontInfo_PixelSize")]
	public static extern int32 QFontInfo_PixelSize(void* c_this);
	[LinkName("QFontInfo_PointSize")]
	public static extern int32 QFontInfo_PointSize(void* c_this);
	[LinkName("QFontInfo_PointSizeF")]
	public static extern double QFontInfo_PointSizeF(void* c_this);
	[LinkName("QFontInfo_Italic")]
	public static extern bool QFontInfo_Italic(void* c_this);
	[LinkName("QFontInfo_Style")]
	public static extern int64 QFontInfo_Style(void* c_this);
	[LinkName("QFontInfo_Weight")]
	public static extern int32 QFontInfo_Weight(void* c_this);
	[LinkName("QFontInfo_Bold")]
	public static extern bool QFontInfo_Bold(void* c_this);
	[LinkName("QFontInfo_Underline")]
	public static extern bool QFontInfo_Underline(void* c_this);
	[LinkName("QFontInfo_Overline")]
	public static extern bool QFontInfo_Overline(void* c_this);
	[LinkName("QFontInfo_StrikeOut")]
	public static extern bool QFontInfo_StrikeOut(void* c_this);
	[LinkName("QFontInfo_FixedPitch")]
	public static extern bool QFontInfo_FixedPitch(void* c_this);
	[LinkName("QFontInfo_StyleHint")]
	public static extern int64 QFontInfo_StyleHint(void* c_this);
	[LinkName("QFontInfo_LegacyWeight")]
	public static extern int32 QFontInfo_LegacyWeight(void* c_this);
	[LinkName("QFontInfo_ExactMatch")]
	public static extern bool QFontInfo_ExactMatch(void* c_this);
}