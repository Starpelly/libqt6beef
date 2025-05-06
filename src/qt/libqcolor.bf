using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QColor__Spec
{
	Invalid = 0,
	Rgb = 1,
	Hsv = 2,
	Cmyk = 3,
	Hsl = 4,
	ExtendedRgb = 5,
}
[AllowDuplicates]
public enum QColor__NameFormat
{
	HexRgb = 0,
	HexArgb = 1,
}
public struct QColor
{
	[LinkName("QColor_new")]
	public static extern QColor* QColor_new(QColor* other);
	[LinkName("QColor_new2")]
	public static extern QColor* QColor_new2(QColor* other);
	[LinkName("QColor_new3")]
	public static extern QColor* QColor_new3();
	[LinkName("QColor_new4")]
	public static extern QColor* QColor_new4(int64 color);
	[LinkName("QColor_new5")]
	public static extern QColor* QColor_new5(int32 r, int32 g, int32 b);
	[LinkName("QColor_new6")]
	public static extern QColor* QColor_new6(uint32 rgb);
	[LinkName("QColor_new7")]
	public static extern QColor* QColor_new7(QRgba64 rgba64);
	[LinkName("QColor_new8")]
	public static extern QColor* QColor_new8(libqt_string name);
	[LinkName("QColor_new9")]
	public static extern QColor* QColor_new9(char8[] aname);
	[LinkName("QColor_new10")]
	public static extern QColor* QColor_new10(int64 spec);
	[LinkName("QColor_new11")]
	public static extern QColor* QColor_new11(int64 spec, uint16 a1, uint16 a2, uint16 a3, uint16 a4);
	[LinkName("QColor_new12")]
	public static extern QColor* QColor_new12(QColor* param1);
	[LinkName("QColor_new13")]
	public static extern QColor* QColor_new13(int32 r, int32 g, int32 b, int32 a);
	[LinkName("QColor_new14")]
	public static extern QColor* QColor_new14(int64 spec, uint16 a1, uint16 a2, uint16 a3, uint16 a4, uint16 a5);
	[LinkName("QColor_FromString")]
	public static extern QColor QColor_FromString(QAnyStringView name);
	[LinkName("QColor_OperatorAssign")]
	public static extern void QColor_OperatorAssign(Self* c_this, int64 color);
	[LinkName("QColor_IsValid")]
	public static extern bool QColor_IsValid(Self* c_this);
	[LinkName("QColor_Name")]
	public static extern libqt_string QColor_Name(Self* c_this);
	[LinkName("QColor_SetNamedColor")]
	public static extern void QColor_SetNamedColor(Self* c_this, libqt_string name);
	[LinkName("QColor_ColorNames")]
	public static extern libqt_string[] QColor_ColorNames();
	[LinkName("QColor_Spec")]
	public static extern int64 QColor_Spec(Self* c_this);
	[LinkName("QColor_Alpha")]
	public static extern int32 QColor_Alpha(Self* c_this);
	[LinkName("QColor_SetAlpha")]
	public static extern void QColor_SetAlpha(Self* c_this, int32 alpha);
	[LinkName("QColor_AlphaF")]
	public static extern float QColor_AlphaF(Self* c_this);
	[LinkName("QColor_SetAlphaF")]
	public static extern void QColor_SetAlphaF(Self* c_this, float alpha);
	[LinkName("QColor_Red")]
	public static extern int32 QColor_Red(Self* c_this);
	[LinkName("QColor_Green")]
	public static extern int32 QColor_Green(Self* c_this);
	[LinkName("QColor_Blue")]
	public static extern int32 QColor_Blue(Self* c_this);
	[LinkName("QColor_SetRed")]
	public static extern void QColor_SetRed(Self* c_this, int32 red);
	[LinkName("QColor_SetGreen")]
	public static extern void QColor_SetGreen(Self* c_this, int32 green);
	[LinkName("QColor_SetBlue")]
	public static extern void QColor_SetBlue(Self* c_this, int32 blue);
	[LinkName("QColor_RedF")]
	public static extern float QColor_RedF(Self* c_this);
	[LinkName("QColor_GreenF")]
	public static extern float QColor_GreenF(Self* c_this);
	[LinkName("QColor_BlueF")]
	public static extern float QColor_BlueF(Self* c_this);
	[LinkName("QColor_SetRedF")]
	public static extern void QColor_SetRedF(Self* c_this, float red);
	[LinkName("QColor_SetGreenF")]
	public static extern void QColor_SetGreenF(Self* c_this, float green);
	[LinkName("QColor_SetBlueF")]
	public static extern void QColor_SetBlueF(Self* c_this, float blue);
	[LinkName("QColor_GetRgb")]
	public static extern void QColor_GetRgb(Self* c_this, int32* r, int32* g, int32* b);
	[LinkName("QColor_SetRgb")]
	public static extern void QColor_SetRgb(Self* c_this, int32 r, int32 g, int32 b);
	[LinkName("QColor_GetRgbF")]
	public static extern void QColor_GetRgbF(Self* c_this, float* r, float* g, float* b);
	[LinkName("QColor_SetRgbF")]
	public static extern void QColor_SetRgbF(Self* c_this, float r, float g, float b);
	[LinkName("QColor_Rgba64")]
	public static extern QRgba64 QColor_Rgba64(Self* c_this);
	[LinkName("QColor_SetRgba64")]
	public static extern void QColor_SetRgba64(Self* c_this, QRgba64 rgba);
	[LinkName("QColor_Rgba")]
	public static extern uint32 QColor_Rgba(Self* c_this);
	[LinkName("QColor_SetRgba")]
	public static extern void QColor_SetRgba(Self* c_this, uint32 rgba);
	[LinkName("QColor_Rgb")]
	public static extern uint32 QColor_Rgb(Self* c_this);
	[LinkName("QColor_SetRgbWithRgb")]
	public static extern void QColor_SetRgbWithRgb(Self* c_this, uint32 rgb);
	[LinkName("QColor_Hue")]
	public static extern int32 QColor_Hue(Self* c_this);
	[LinkName("QColor_Saturation")]
	public static extern int32 QColor_Saturation(Self* c_this);
	[LinkName("QColor_HsvHue")]
	public static extern int32 QColor_HsvHue(Self* c_this);
	[LinkName("QColor_HsvSaturation")]
	public static extern int32 QColor_HsvSaturation(Self* c_this);
	[LinkName("QColor_Value")]
	public static extern int32 QColor_Value(Self* c_this);
	[LinkName("QColor_HueF")]
	public static extern float QColor_HueF(Self* c_this);
	[LinkName("QColor_SaturationF")]
	public static extern float QColor_SaturationF(Self* c_this);
	[LinkName("QColor_HsvHueF")]
	public static extern float QColor_HsvHueF(Self* c_this);
	[LinkName("QColor_HsvSaturationF")]
	public static extern float QColor_HsvSaturationF(Self* c_this);
	[LinkName("QColor_ValueF")]
	public static extern float QColor_ValueF(Self* c_this);
	[LinkName("QColor_GetHsv")]
	public static extern void QColor_GetHsv(Self* c_this, int32* h, int32* s, int32* v);
	[LinkName("QColor_SetHsv")]
	public static extern void QColor_SetHsv(Self* c_this, int32 h, int32 s, int32 v);
	[LinkName("QColor_GetHsvF")]
	public static extern void QColor_GetHsvF(Self* c_this, float* h, float* s, float* v);
	[LinkName("QColor_SetHsvF")]
	public static extern void QColor_SetHsvF(Self* c_this, float h, float s, float v);
	[LinkName("QColor_Cyan")]
	public static extern int32 QColor_Cyan(Self* c_this);
	[LinkName("QColor_Magenta")]
	public static extern int32 QColor_Magenta(Self* c_this);
	[LinkName("QColor_Yellow")]
	public static extern int32 QColor_Yellow(Self* c_this);
	[LinkName("QColor_Black")]
	public static extern int32 QColor_Black(Self* c_this);
	[LinkName("QColor_CyanF")]
	public static extern float QColor_CyanF(Self* c_this);
	[LinkName("QColor_MagentaF")]
	public static extern float QColor_MagentaF(Self* c_this);
	[LinkName("QColor_YellowF")]
	public static extern float QColor_YellowF(Self* c_this);
	[LinkName("QColor_BlackF")]
	public static extern float QColor_BlackF(Self* c_this);
	[LinkName("QColor_GetCmyk")]
	public static extern void QColor_GetCmyk(Self* c_this, int32* c, int32* m, int32* y, int32* k);
	[LinkName("QColor_SetCmyk")]
	public static extern void QColor_SetCmyk(Self* c_this, int32 c, int32 m, int32 y, int32 k);
	[LinkName("QColor_GetCmykF")]
	public static extern void QColor_GetCmykF(Self* c_this, float* c, float* m, float* y, float* k);
	[LinkName("QColor_SetCmykF")]
	public static extern void QColor_SetCmykF(Self* c_this, float c, float m, float y, float k);
	[LinkName("QColor_HslHue")]
	public static extern int32 QColor_HslHue(Self* c_this);
	[LinkName("QColor_HslSaturation")]
	public static extern int32 QColor_HslSaturation(Self* c_this);
	[LinkName("QColor_Lightness")]
	public static extern int32 QColor_Lightness(Self* c_this);
	[LinkName("QColor_HslHueF")]
	public static extern float QColor_HslHueF(Self* c_this);
	[LinkName("QColor_HslSaturationF")]
	public static extern float QColor_HslSaturationF(Self* c_this);
	[LinkName("QColor_LightnessF")]
	public static extern float QColor_LightnessF(Self* c_this);
	[LinkName("QColor_GetHsl")]
	public static extern void QColor_GetHsl(Self* c_this, int32* h, int32* s, int32* l);
	[LinkName("QColor_SetHsl")]
	public static extern void QColor_SetHsl(Self* c_this, int32 h, int32 s, int32 l);
	[LinkName("QColor_GetHslF")]
	public static extern void QColor_GetHslF(Self* c_this, float* h, float* s, float* l);
	[LinkName("QColor_SetHslF")]
	public static extern void QColor_SetHslF(Self* c_this, float h, float s, float l);
	[LinkName("QColor_ToRgb")]
	public static extern QColor QColor_ToRgb(Self* c_this);
	[LinkName("QColor_ToHsv")]
	public static extern QColor QColor_ToHsv(Self* c_this);
	[LinkName("QColor_ToCmyk")]
	public static extern QColor QColor_ToCmyk(Self* c_this);
	[LinkName("QColor_ToHsl")]
	public static extern QColor QColor_ToHsl(Self* c_this);
	[LinkName("QColor_ToExtendedRgb")]
	public static extern QColor QColor_ToExtendedRgb(Self* c_this);
	[LinkName("QColor_ConvertTo")]
	public static extern QColor QColor_ConvertTo(Self* c_this, int64 colorSpec);
	[LinkName("QColor_FromRgb")]
	public static extern QColor QColor_FromRgb(uint32 rgb);
	[LinkName("QColor_FromRgba")]
	public static extern QColor QColor_FromRgba(uint32 rgba);
	[LinkName("QColor_FromRgb2")]
	public static extern QColor QColor_FromRgb2(int32 r, int32 g, int32 b);
	[LinkName("QColor_FromRgbF")]
	public static extern QColor QColor_FromRgbF(float r, float g, float b);
	[LinkName("QColor_FromRgba64")]
	public static extern QColor QColor_FromRgba64(uint16 r, uint16 g, uint16 b);
	[LinkName("QColor_FromRgba64WithRgba")]
	public static extern QColor QColor_FromRgba64WithRgba(QRgba64 rgba);
	[LinkName("QColor_FromHsv")]
	public static extern QColor QColor_FromHsv(int32 h, int32 s, int32 v);
	[LinkName("QColor_FromHsvF")]
	public static extern QColor QColor_FromHsvF(float h, float s, float v);
	[LinkName("QColor_FromCmyk")]
	public static extern QColor QColor_FromCmyk(int32 c, int32 m, int32 y, int32 k);
	[LinkName("QColor_FromCmykF")]
	public static extern QColor QColor_FromCmykF(float c, float m, float y, float k);
	[LinkName("QColor_FromHsl")]
	public static extern QColor QColor_FromHsl(int32 h, int32 s, int32 l);
	[LinkName("QColor_FromHslF")]
	public static extern QColor QColor_FromHslF(float h, float s, float l);
	[LinkName("QColor_Lighter")]
	public static extern QColor QColor_Lighter(Self* c_this);
	[LinkName("QColor_Darker")]
	public static extern QColor QColor_Darker(Self* c_this);
	[LinkName("QColor_OperatorEqual")]
	public static extern bool QColor_OperatorEqual(Self* c_this, QColor* c);
	[LinkName("QColor_OperatorNotEqual")]
	public static extern bool QColor_OperatorNotEqual(Self* c_this, QColor* c);
	[LinkName("QColor_ToQVariant")]
	public static extern QVariant QColor_ToQVariant(Self* c_this);
	[LinkName("QColor_IsValidColor")]
	public static extern bool QColor_IsValidColor(libqt_string name);
	[LinkName("QColor_IsValidColorName")]
	public static extern bool QColor_IsValidColorName(QAnyStringView param1);
	[LinkName("QColor_Name1")]
	public static extern libqt_string QColor_Name1(Self* c_this, int64 format);
	[LinkName("QColor_GetRgb4")]
	public static extern void QColor_GetRgb4(Self* c_this, int32* r, int32* g, int32* b, int32* a);
	[LinkName("QColor_SetRgb4")]
	public static extern void QColor_SetRgb4(Self* c_this, int32 r, int32 g, int32 b, int32 a);
	[LinkName("QColor_GetRgbF4")]
	public static extern void QColor_GetRgbF4(Self* c_this, float* r, float* g, float* b, float* a);
	[LinkName("QColor_SetRgbF4")]
	public static extern void QColor_SetRgbF4(Self* c_this, float r, float g, float b, float a);
	[LinkName("QColor_GetHsv4")]
	public static extern void QColor_GetHsv4(Self* c_this, int32* h, int32* s, int32* v, int32* a);
	[LinkName("QColor_SetHsv4")]
	public static extern void QColor_SetHsv4(Self* c_this, int32 h, int32 s, int32 v, int32 a);
	[LinkName("QColor_GetHsvF4")]
	public static extern void QColor_GetHsvF4(Self* c_this, float* h, float* s, float* v, float* a);
	[LinkName("QColor_SetHsvF4")]
	public static extern void QColor_SetHsvF4(Self* c_this, float h, float s, float v, float a);
	[LinkName("QColor_GetCmyk5")]
	public static extern void QColor_GetCmyk5(Self* c_this, int32* c, int32* m, int32* y, int32* k, int32* a);
	[LinkName("QColor_SetCmyk5")]
	public static extern void QColor_SetCmyk5(Self* c_this, int32 c, int32 m, int32 y, int32 k, int32 a);
	[LinkName("QColor_GetCmykF5")]
	public static extern void QColor_GetCmykF5(Self* c_this, float* c, float* m, float* y, float* k, float* a);
	[LinkName("QColor_SetCmykF5")]
	public static extern void QColor_SetCmykF5(Self* c_this, float c, float m, float y, float k, float a);
	[LinkName("QColor_GetHsl4")]
	public static extern void QColor_GetHsl4(Self* c_this, int32* h, int32* s, int32* l, int32* a);
	[LinkName("QColor_SetHsl4")]
	public static extern void QColor_SetHsl4(Self* c_this, int32 h, int32 s, int32 l, int32 a);
	[LinkName("QColor_GetHslF4")]
	public static extern void QColor_GetHslF4(Self* c_this, float* h, float* s, float* l, float* a);
	[LinkName("QColor_SetHslF4")]
	public static extern void QColor_SetHslF4(Self* c_this, float h, float s, float l, float a);
	[LinkName("QColor_FromRgb4")]
	public static extern QColor QColor_FromRgb4(int32 r, int32 g, int32 b, int32 a);
	[LinkName("QColor_FromRgbF4")]
	public static extern QColor QColor_FromRgbF4(float r, float g, float b, float a);
	[LinkName("QColor_FromRgba644")]
	public static extern QColor QColor_FromRgba644(uint16 r, uint16 g, uint16 b, uint16 a);
	[LinkName("QColor_FromHsv4")]
	public static extern QColor QColor_FromHsv4(int32 h, int32 s, int32 v, int32 a);
	[LinkName("QColor_FromHsvF4")]
	public static extern QColor QColor_FromHsvF4(float h, float s, float v, float a);
	[LinkName("QColor_FromCmyk5")]
	public static extern QColor QColor_FromCmyk5(int32 c, int32 m, int32 y, int32 k, int32 a);
	[LinkName("QColor_FromCmykF5")]
	public static extern QColor QColor_FromCmykF5(float c, float m, float y, float k, float a);
	[LinkName("QColor_FromHsl4")]
	public static extern QColor QColor_FromHsl4(int32 h, int32 s, int32 l, int32 a);
	[LinkName("QColor_FromHslF4")]
	public static extern QColor QColor_FromHslF4(float h, float s, float l, float a);
	[LinkName("QColor_Lighter1")]
	public static extern QColor QColor_Lighter1(Self* c_this, int32 f);
	[LinkName("QColor_Darker1")]
	public static extern QColor QColor_Darker1(Self* c_this, int32 f);
}