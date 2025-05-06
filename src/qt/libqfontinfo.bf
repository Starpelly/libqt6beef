using System;
using System.Interop;
namespace Qt;

public struct QFontInfo
{
	[LinkName("QFontInfo_new")]
	public static extern QFontInfo* QFontInfo_new(QFont* param1);
	[LinkName("QFontInfo_new2")]
	public static extern QFontInfo* QFontInfo_new2(QFontInfo* param1);
	[LinkName("QFontInfo_OperatorAssign")]
	public static extern void QFontInfo_OperatorAssign(Self* c_this, QFontInfo* param1);
	[LinkName("QFontInfo_Swap")]
	public static extern void QFontInfo_Swap(Self* c_this, QFontInfo* other);
	[LinkName("QFontInfo_Family")]
	public static extern libqt_string QFontInfo_Family(Self* c_this);
	[LinkName("QFontInfo_StyleName")]
	public static extern libqt_string QFontInfo_StyleName(Self* c_this);
	[LinkName("QFontInfo_PixelSize")]
	public static extern int32 QFontInfo_PixelSize(Self* c_this);
	[LinkName("QFontInfo_PointSize")]
	public static extern int32 QFontInfo_PointSize(Self* c_this);
	[LinkName("QFontInfo_PointSizeF")]
	public static extern double QFontInfo_PointSizeF(Self* c_this);
	[LinkName("QFontInfo_Italic")]
	public static extern bool QFontInfo_Italic(Self* c_this);
	[LinkName("QFontInfo_Style")]
	public static extern int64 QFontInfo_Style(Self* c_this);
	[LinkName("QFontInfo_Weight")]
	public static extern int32 QFontInfo_Weight(Self* c_this);
	[LinkName("QFontInfo_Bold")]
	public static extern bool QFontInfo_Bold(Self* c_this);
	[LinkName("QFontInfo_Underline")]
	public static extern bool QFontInfo_Underline(Self* c_this);
	[LinkName("QFontInfo_Overline")]
	public static extern bool QFontInfo_Overline(Self* c_this);
	[LinkName("QFontInfo_StrikeOut")]
	public static extern bool QFontInfo_StrikeOut(Self* c_this);
	[LinkName("QFontInfo_FixedPitch")]
	public static extern bool QFontInfo_FixedPitch(Self* c_this);
	[LinkName("QFontInfo_StyleHint")]
	public static extern int64 QFontInfo_StyleHint(Self* c_this);
	[LinkName("QFontInfo_LegacyWeight")]
	public static extern int32 QFontInfo_LegacyWeight(Self* c_this);
	[LinkName("QFontInfo_ExactMatch")]
	public static extern bool QFontInfo_ExactMatch(Self* c_this);
}