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
public class QColor
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QColor_new(other);
	}
	
	public ~this()
	{
		CQt.QColor_Delete(this.nativePtr);
	}
	
	public static void FromString(void name)
	{
		CQt.QColor_FromString(name);
	}
	
	public void OperatorAssign(int64 color)
	{
		CQt.QColor_OperatorAssign(this.nativePtr, color);
	}
	
	public bool IsValid()
	{
		return CQt.QColor_IsValid(this.nativePtr);
	}
	
	public libqt_string Name()
	{
		return CQt.QColor_Name(this.nativePtr);
	}
	
	public void SetNamedColor(libqt_string name)
	{
		CQt.QColor_SetNamedColor(this.nativePtr, name);
	}
	
	public static libqt_string[] ColorNames()
	{
		return CQt.QColor_ColorNames();
	}
	
	public int64 Spec()
	{
		return CQt.QColor_Spec(this.nativePtr);
	}
	
	public int32 Alpha()
	{
		return CQt.QColor_Alpha(this.nativePtr);
	}
	
	public void SetAlpha(int32 alpha)
	{
		CQt.QColor_SetAlpha(this.nativePtr, alpha);
	}
	
	public float AlphaF()
	{
		return CQt.QColor_AlphaF(this.nativePtr);
	}
	
	public void SetAlphaF(float alpha)
	{
		CQt.QColor_SetAlphaF(this.nativePtr, alpha);
	}
	
	public int32 Red()
	{
		return CQt.QColor_Red(this.nativePtr);
	}
	
	public int32 Green()
	{
		return CQt.QColor_Green(this.nativePtr);
	}
	
	public int32 Blue()
	{
		return CQt.QColor_Blue(this.nativePtr);
	}
	
	public void SetRed(int32 red)
	{
		CQt.QColor_SetRed(this.nativePtr, red);
	}
	
	public void SetGreen(int32 green)
	{
		CQt.QColor_SetGreen(this.nativePtr, green);
	}
	
	public void SetBlue(int32 blue)
	{
		CQt.QColor_SetBlue(this.nativePtr, blue);
	}
	
	public float RedF()
	{
		return CQt.QColor_RedF(this.nativePtr);
	}
	
	public float GreenF()
	{
		return CQt.QColor_GreenF(this.nativePtr);
	}
	
	public float BlueF()
	{
		return CQt.QColor_BlueF(this.nativePtr);
	}
	
	public void SetRedF(float red)
	{
		CQt.QColor_SetRedF(this.nativePtr, red);
	}
	
	public void SetGreenF(float green)
	{
		CQt.QColor_SetGreenF(this.nativePtr, green);
	}
	
	public void SetBlueF(float blue)
	{
		CQt.QColor_SetBlueF(this.nativePtr, blue);
	}
	
	public void GetRgb(int32* r, int32* g, int32* b)
	{
		CQt.QColor_GetRgb(this.nativePtr, r, g, b);
	}
	
	public void SetRgb(int32 r, int32 g, int32 b)
	{
		CQt.QColor_SetRgb(this.nativePtr, r, g, b);
	}
	
	public void GetRgbF(float* r, float* g, float* b)
	{
		CQt.QColor_GetRgbF(this.nativePtr, r, g, b);
	}
	
	public void SetRgbF(float r, float g, float b)
	{
		CQt.QColor_SetRgbF(this.nativePtr, r, g, b);
	}
	
	public void Rgba64()
	{
		CQt.QColor_Rgba64(this.nativePtr);
	}
	
	public void SetRgba64(void rgba)
	{
		CQt.QColor_SetRgba64(this.nativePtr, rgba);
	}
	
	public uint32 Rgba()
	{
		return CQt.QColor_Rgba(this.nativePtr);
	}
	
	public void SetRgba(uint32 rgba)
	{
		CQt.QColor_SetRgba(this.nativePtr, rgba);
	}
	
	public uint32 Rgb()
	{
		return CQt.QColor_Rgb(this.nativePtr);
	}
	
	public void SetRgbWithRgb(uint32 rgb)
	{
		CQt.QColor_SetRgbWithRgb(this.nativePtr, rgb);
	}
	
	public int32 Hue()
	{
		return CQt.QColor_Hue(this.nativePtr);
	}
	
	public int32 Saturation()
	{
		return CQt.QColor_Saturation(this.nativePtr);
	}
	
	public int32 HsvHue()
	{
		return CQt.QColor_HsvHue(this.nativePtr);
	}
	
	public int32 HsvSaturation()
	{
		return CQt.QColor_HsvSaturation(this.nativePtr);
	}
	
	public int32 Value()
	{
		return CQt.QColor_Value(this.nativePtr);
	}
	
	public float HueF()
	{
		return CQt.QColor_HueF(this.nativePtr);
	}
	
	public float SaturationF()
	{
		return CQt.QColor_SaturationF(this.nativePtr);
	}
	
	public float HsvHueF()
	{
		return CQt.QColor_HsvHueF(this.nativePtr);
	}
	
	public float HsvSaturationF()
	{
		return CQt.QColor_HsvSaturationF(this.nativePtr);
	}
	
	public float ValueF()
	{
		return CQt.QColor_ValueF(this.nativePtr);
	}
	
	public void GetHsv(int32* h, int32* s, int32* v)
	{
		CQt.QColor_GetHsv(this.nativePtr, h, s, v);
	}
	
	public void SetHsv(int32 h, int32 s, int32 v)
	{
		CQt.QColor_SetHsv(this.nativePtr, h, s, v);
	}
	
	public void GetHsvF(float* h, float* s, float* v)
	{
		CQt.QColor_GetHsvF(this.nativePtr, h, s, v);
	}
	
	public void SetHsvF(float h, float s, float v)
	{
		CQt.QColor_SetHsvF(this.nativePtr, h, s, v);
	}
	
	public int32 Cyan()
	{
		return CQt.QColor_Cyan(this.nativePtr);
	}
	
	public int32 Magenta()
	{
		return CQt.QColor_Magenta(this.nativePtr);
	}
	
	public int32 Yellow()
	{
		return CQt.QColor_Yellow(this.nativePtr);
	}
	
	public int32 Black()
	{
		return CQt.QColor_Black(this.nativePtr);
	}
	
	public float CyanF()
	{
		return CQt.QColor_CyanF(this.nativePtr);
	}
	
	public float MagentaF()
	{
		return CQt.QColor_MagentaF(this.nativePtr);
	}
	
	public float YellowF()
	{
		return CQt.QColor_YellowF(this.nativePtr);
	}
	
	public float BlackF()
	{
		return CQt.QColor_BlackF(this.nativePtr);
	}
	
	public void GetCmyk(int32* c, int32* m, int32* y, int32* k)
	{
		CQt.QColor_GetCmyk(this.nativePtr, c, m, y, k);
	}
	
	public void SetCmyk(int32 c, int32 m, int32 y, int32 k)
	{
		CQt.QColor_SetCmyk(this.nativePtr, c, m, y, k);
	}
	
	public void GetCmykF(float* c, float* m, float* y, float* k)
	{
		CQt.QColor_GetCmykF(this.nativePtr, c, m, y, k);
	}
	
	public void SetCmykF(float c, float m, float y, float k)
	{
		CQt.QColor_SetCmykF(this.nativePtr, c, m, y, k);
	}
	
	public int32 HslHue()
	{
		return CQt.QColor_HslHue(this.nativePtr);
	}
	
	public int32 HslSaturation()
	{
		return CQt.QColor_HslSaturation(this.nativePtr);
	}
	
	public int32 Lightness()
	{
		return CQt.QColor_Lightness(this.nativePtr);
	}
	
	public float HslHueF()
	{
		return CQt.QColor_HslHueF(this.nativePtr);
	}
	
	public float HslSaturationF()
	{
		return CQt.QColor_HslSaturationF(this.nativePtr);
	}
	
	public float LightnessF()
	{
		return CQt.QColor_LightnessF(this.nativePtr);
	}
	
	public void GetHsl(int32* h, int32* s, int32* l)
	{
		CQt.QColor_GetHsl(this.nativePtr, h, s, l);
	}
	
	public void SetHsl(int32 h, int32 s, int32 l)
	{
		CQt.QColor_SetHsl(this.nativePtr, h, s, l);
	}
	
	public void GetHslF(float* h, float* s, float* l)
	{
		CQt.QColor_GetHslF(this.nativePtr, h, s, l);
	}
	
	public void SetHslF(float h, float s, float l)
	{
		CQt.QColor_SetHslF(this.nativePtr, h, s, l);
	}
	
	public void ToRgb()
	{
		CQt.QColor_ToRgb(this.nativePtr);
	}
	
	public void ToHsv()
	{
		CQt.QColor_ToHsv(this.nativePtr);
	}
	
	public void ToCmyk()
	{
		CQt.QColor_ToCmyk(this.nativePtr);
	}
	
	public void ToHsl()
	{
		CQt.QColor_ToHsl(this.nativePtr);
	}
	
	public void ToExtendedRgb()
	{
		CQt.QColor_ToExtendedRgb(this.nativePtr);
	}
	
	public void ConvertTo(int64 colorSpec)
	{
		CQt.QColor_ConvertTo(this.nativePtr, colorSpec);
	}
	
	public static void FromRgb(uint32 rgb)
	{
		CQt.QColor_FromRgb(rgb);
	}
	
	public static void FromRgba(uint32 rgba)
	{
		CQt.QColor_FromRgba(rgba);
	}
	
	public static void FromRgb2(int32 r, int32 g, int32 b)
	{
		CQt.QColor_FromRgb2(r, g, b);
	}
	
	public static void FromRgbF(float r, float g, float b)
	{
		CQt.QColor_FromRgbF(r, g, b);
	}
	
	public static void FromRgba64(uint16 r, uint16 g, uint16 b)
	{
		CQt.QColor_FromRgba64(r, g, b);
	}
	
	public static void FromRgba64WithRgba(void rgba)
	{
		CQt.QColor_FromRgba64WithRgba(rgba);
	}
	
	public static void FromHsv(int32 h, int32 s, int32 v)
	{
		CQt.QColor_FromHsv(h, s, v);
	}
	
	public static void FromHsvF(float h, float s, float v)
	{
		CQt.QColor_FromHsvF(h, s, v);
	}
	
	public static void FromCmyk(int32 c, int32 m, int32 y, int32 k)
	{
		CQt.QColor_FromCmyk(c, m, y, k);
	}
	
	public static void FromCmykF(float c, float m, float y, float k)
	{
		CQt.QColor_FromCmykF(c, m, y, k);
	}
	
	public static void FromHsl(int32 h, int32 s, int32 l)
	{
		CQt.QColor_FromHsl(h, s, l);
	}
	
	public static void FromHslF(float h, float s, float l)
	{
		CQt.QColor_FromHslF(h, s, l);
	}
	
	public void Lighter()
	{
		CQt.QColor_Lighter(this.nativePtr);
	}
	
	public void Darker()
	{
		CQt.QColor_Darker(this.nativePtr);
	}
	
	public bool OperatorEqual(void* c)
	{
		return CQt.QColor_OperatorEqual(this.nativePtr, c);
	}
	
	public bool OperatorNotEqual(void* c)
	{
		return CQt.QColor_OperatorNotEqual(this.nativePtr, c);
	}
	
	public void ToQVariant()
	{
		CQt.QColor_ToQVariant(this.nativePtr);
	}
	
	public static bool IsValidColor(libqt_string name)
	{
		return CQt.QColor_IsValidColor(name);
	}
	
	public static bool IsValidColorName(void param1)
	{
		return CQt.QColor_IsValidColorName(param1);
	}
	
	public libqt_string Name1(int64 format)
	{
		return CQt.QColor_Name1(this.nativePtr, format);
	}
	
	public void GetRgb4(int32* r, int32* g, int32* b, int32* a)
	{
		CQt.QColor_GetRgb4(this.nativePtr, r, g, b, a);
	}
	
	public void SetRgb4(int32 r, int32 g, int32 b, int32 a)
	{
		CQt.QColor_SetRgb4(this.nativePtr, r, g, b, a);
	}
	
	public void GetRgbF4(float* r, float* g, float* b, float* a)
	{
		CQt.QColor_GetRgbF4(this.nativePtr, r, g, b, a);
	}
	
	public void SetRgbF4(float r, float g, float b, float a)
	{
		CQt.QColor_SetRgbF4(this.nativePtr, r, g, b, a);
	}
	
	public void GetHsv4(int32* h, int32* s, int32* v, int32* a)
	{
		CQt.QColor_GetHsv4(this.nativePtr, h, s, v, a);
	}
	
	public void SetHsv4(int32 h, int32 s, int32 v, int32 a)
	{
		CQt.QColor_SetHsv4(this.nativePtr, h, s, v, a);
	}
	
	public void GetHsvF4(float* h, float* s, float* v, float* a)
	{
		CQt.QColor_GetHsvF4(this.nativePtr, h, s, v, a);
	}
	
	public void SetHsvF4(float h, float s, float v, float a)
	{
		CQt.QColor_SetHsvF4(this.nativePtr, h, s, v, a);
	}
	
	public void GetCmyk5(int32* c, int32* m, int32* y, int32* k, int32* a)
	{
		CQt.QColor_GetCmyk5(this.nativePtr, c, m, y, k, a);
	}
	
	public void SetCmyk5(int32 c, int32 m, int32 y, int32 k, int32 a)
	{
		CQt.QColor_SetCmyk5(this.nativePtr, c, m, y, k, a);
	}
	
	public void GetCmykF5(float* c, float* m, float* y, float* k, float* a)
	{
		CQt.QColor_GetCmykF5(this.nativePtr, c, m, y, k, a);
	}
	
	public void SetCmykF5(float c, float m, float y, float k, float a)
	{
		CQt.QColor_SetCmykF5(this.nativePtr, c, m, y, k, a);
	}
	
	public void GetHsl4(int32* h, int32* s, int32* l, int32* a)
	{
		CQt.QColor_GetHsl4(this.nativePtr, h, s, l, a);
	}
	
	public void SetHsl4(int32 h, int32 s, int32 l, int32 a)
	{
		CQt.QColor_SetHsl4(this.nativePtr, h, s, l, a);
	}
	
	public void GetHslF4(float* h, float* s, float* l, float* a)
	{
		CQt.QColor_GetHslF4(this.nativePtr, h, s, l, a);
	}
	
	public void SetHslF4(float h, float s, float l, float a)
	{
		CQt.QColor_SetHslF4(this.nativePtr, h, s, l, a);
	}
	
	public static void FromRgb4(int32 r, int32 g, int32 b, int32 a)
	{
		CQt.QColor_FromRgb4(r, g, b, a);
	}
	
	public static void FromRgbF4(float r, float g, float b, float a)
	{
		CQt.QColor_FromRgbF4(r, g, b, a);
	}
	
	public static void FromRgba644(uint16 r, uint16 g, uint16 b, uint16 a)
	{
		CQt.QColor_FromRgba644(r, g, b, a);
	}
	
	public static void FromHsv4(int32 h, int32 s, int32 v, int32 a)
	{
		CQt.QColor_FromHsv4(h, s, v, a);
	}
	
	public static void FromHsvF4(float h, float s, float v, float a)
	{
		CQt.QColor_FromHsvF4(h, s, v, a);
	}
	
	public static void FromCmyk5(int32 c, int32 m, int32 y, int32 k, int32 a)
	{
		CQt.QColor_FromCmyk5(c, m, y, k, a);
	}
	
	public static void FromCmykF5(float c, float m, float y, float k, float a)
	{
		CQt.QColor_FromCmykF5(c, m, y, k, a);
	}
	
	public static void FromHsl4(int32 h, int32 s, int32 l, int32 a)
	{
		CQt.QColor_FromHsl4(h, s, l, a);
	}
	
	public static void FromHslF4(float h, float s, float l, float a)
	{
		CQt.QColor_FromHslF4(h, s, l, a);
	}
	
	public void Lighter1(int32 f)
	{
		CQt.QColor_Lighter1(this.nativePtr, f);
	}
	
	public void Darker1(int32 f)
	{
		CQt.QColor_Darker1(this.nativePtr, f);
	}
	
}
extension CQt
{
	[LinkName("QColor_new")]
	public static extern void* QColor_new(void* other);
	[LinkName("QColor_new2")]
	public static extern void* QColor_new2(void* other);
	[LinkName("QColor_new3")]
	public static extern void* QColor_new3();
	[LinkName("QColor_new4")]
	public static extern void* QColor_new4(int64 color);
	[LinkName("QColor_new5")]
	public static extern void* QColor_new5(int32 r, int32 g, int32 b);
	[LinkName("QColor_new6")]
	public static extern void* QColor_new6(uint32 rgb);
	[LinkName("QColor_new7")]
	public static extern void* QColor_new7(void rgba64);
	[LinkName("QColor_new8")]
	public static extern void* QColor_new8(libqt_string name);
	[LinkName("QColor_new9")]
	public static extern void* QColor_new9(char8[] aname);
	[LinkName("QColor_new10")]
	public static extern void* QColor_new10(int64 spec);
	[LinkName("QColor_new11")]
	public static extern void* QColor_new11(int64 spec, uint16 a1, uint16 a2, uint16 a3, uint16 a4);
	[LinkName("QColor_new12")]
	public static extern void* QColor_new12(void* param1);
	[LinkName("QColor_new13")]
	public static extern void* QColor_new13(int32 r, int32 g, int32 b, int32 a);
	[LinkName("QColor_new14")]
	public static extern void* QColor_new14(int64 spec, uint16 a1, uint16 a2, uint16 a3, uint16 a4, uint16 a5);
	[LinkName("QColor_FromString")]
	public static extern void QColor_FromString(void name);
	[LinkName("QColor_OperatorAssign")]
	public static extern void QColor_OperatorAssign(void* c_this, int64 color);
	[LinkName("QColor_IsValid")]
	public static extern bool QColor_IsValid(void* c_this);
	[LinkName("QColor_Name")]
	public static extern libqt_string QColor_Name(void* c_this);
	[LinkName("QColor_SetNamedColor")]
	public static extern void QColor_SetNamedColor(void* c_this, libqt_string name);
	[LinkName("QColor_ColorNames")]
	public static extern libqt_string[] QColor_ColorNames();
	[LinkName("QColor_Spec")]
	public static extern int64 QColor_Spec(void* c_this);
	[LinkName("QColor_Alpha")]
	public static extern int32 QColor_Alpha(void* c_this);
	[LinkName("QColor_SetAlpha")]
	public static extern void QColor_SetAlpha(void* c_this, int32 alpha);
	[LinkName("QColor_AlphaF")]
	public static extern float QColor_AlphaF(void* c_this);
	[LinkName("QColor_SetAlphaF")]
	public static extern void QColor_SetAlphaF(void* c_this, float alpha);
	[LinkName("QColor_Red")]
	public static extern int32 QColor_Red(void* c_this);
	[LinkName("QColor_Green")]
	public static extern int32 QColor_Green(void* c_this);
	[LinkName("QColor_Blue")]
	public static extern int32 QColor_Blue(void* c_this);
	[LinkName("QColor_SetRed")]
	public static extern void QColor_SetRed(void* c_this, int32 red);
	[LinkName("QColor_SetGreen")]
	public static extern void QColor_SetGreen(void* c_this, int32 green);
	[LinkName("QColor_SetBlue")]
	public static extern void QColor_SetBlue(void* c_this, int32 blue);
	[LinkName("QColor_RedF")]
	public static extern float QColor_RedF(void* c_this);
	[LinkName("QColor_GreenF")]
	public static extern float QColor_GreenF(void* c_this);
	[LinkName("QColor_BlueF")]
	public static extern float QColor_BlueF(void* c_this);
	[LinkName("QColor_SetRedF")]
	public static extern void QColor_SetRedF(void* c_this, float red);
	[LinkName("QColor_SetGreenF")]
	public static extern void QColor_SetGreenF(void* c_this, float green);
	[LinkName("QColor_SetBlueF")]
	public static extern void QColor_SetBlueF(void* c_this, float blue);
	[LinkName("QColor_GetRgb")]
	public static extern void QColor_GetRgb(void* c_this, int32* r, int32* g, int32* b);
	[LinkName("QColor_SetRgb")]
	public static extern void QColor_SetRgb(void* c_this, int32 r, int32 g, int32 b);
	[LinkName("QColor_GetRgbF")]
	public static extern void QColor_GetRgbF(void* c_this, float* r, float* g, float* b);
	[LinkName("QColor_SetRgbF")]
	public static extern void QColor_SetRgbF(void* c_this, float r, float g, float b);
	[LinkName("QColor_Rgba64")]
	public static extern void QColor_Rgba64(void* c_this);
	[LinkName("QColor_SetRgba64")]
	public static extern void QColor_SetRgba64(void* c_this, void rgba);
	[LinkName("QColor_Rgba")]
	public static extern uint32 QColor_Rgba(void* c_this);
	[LinkName("QColor_SetRgba")]
	public static extern void QColor_SetRgba(void* c_this, uint32 rgba);
	[LinkName("QColor_Rgb")]
	public static extern uint32 QColor_Rgb(void* c_this);
	[LinkName("QColor_SetRgbWithRgb")]
	public static extern void QColor_SetRgbWithRgb(void* c_this, uint32 rgb);
	[LinkName("QColor_Hue")]
	public static extern int32 QColor_Hue(void* c_this);
	[LinkName("QColor_Saturation")]
	public static extern int32 QColor_Saturation(void* c_this);
	[LinkName("QColor_HsvHue")]
	public static extern int32 QColor_HsvHue(void* c_this);
	[LinkName("QColor_HsvSaturation")]
	public static extern int32 QColor_HsvSaturation(void* c_this);
	[LinkName("QColor_Value")]
	public static extern int32 QColor_Value(void* c_this);
	[LinkName("QColor_HueF")]
	public static extern float QColor_HueF(void* c_this);
	[LinkName("QColor_SaturationF")]
	public static extern float QColor_SaturationF(void* c_this);
	[LinkName("QColor_HsvHueF")]
	public static extern float QColor_HsvHueF(void* c_this);
	[LinkName("QColor_HsvSaturationF")]
	public static extern float QColor_HsvSaturationF(void* c_this);
	[LinkName("QColor_ValueF")]
	public static extern float QColor_ValueF(void* c_this);
	[LinkName("QColor_GetHsv")]
	public static extern void QColor_GetHsv(void* c_this, int32* h, int32* s, int32* v);
	[LinkName("QColor_SetHsv")]
	public static extern void QColor_SetHsv(void* c_this, int32 h, int32 s, int32 v);
	[LinkName("QColor_GetHsvF")]
	public static extern void QColor_GetHsvF(void* c_this, float* h, float* s, float* v);
	[LinkName("QColor_SetHsvF")]
	public static extern void QColor_SetHsvF(void* c_this, float h, float s, float v);
	[LinkName("QColor_Cyan")]
	public static extern int32 QColor_Cyan(void* c_this);
	[LinkName("QColor_Magenta")]
	public static extern int32 QColor_Magenta(void* c_this);
	[LinkName("QColor_Yellow")]
	public static extern int32 QColor_Yellow(void* c_this);
	[LinkName("QColor_Black")]
	public static extern int32 QColor_Black(void* c_this);
	[LinkName("QColor_CyanF")]
	public static extern float QColor_CyanF(void* c_this);
	[LinkName("QColor_MagentaF")]
	public static extern float QColor_MagentaF(void* c_this);
	[LinkName("QColor_YellowF")]
	public static extern float QColor_YellowF(void* c_this);
	[LinkName("QColor_BlackF")]
	public static extern float QColor_BlackF(void* c_this);
	[LinkName("QColor_GetCmyk")]
	public static extern void QColor_GetCmyk(void* c_this, int32* c, int32* m, int32* y, int32* k);
	[LinkName("QColor_SetCmyk")]
	public static extern void QColor_SetCmyk(void* c_this, int32 c, int32 m, int32 y, int32 k);
	[LinkName("QColor_GetCmykF")]
	public static extern void QColor_GetCmykF(void* c_this, float* c, float* m, float* y, float* k);
	[LinkName("QColor_SetCmykF")]
	public static extern void QColor_SetCmykF(void* c_this, float c, float m, float y, float k);
	[LinkName("QColor_HslHue")]
	public static extern int32 QColor_HslHue(void* c_this);
	[LinkName("QColor_HslSaturation")]
	public static extern int32 QColor_HslSaturation(void* c_this);
	[LinkName("QColor_Lightness")]
	public static extern int32 QColor_Lightness(void* c_this);
	[LinkName("QColor_HslHueF")]
	public static extern float QColor_HslHueF(void* c_this);
	[LinkName("QColor_HslSaturationF")]
	public static extern float QColor_HslSaturationF(void* c_this);
	[LinkName("QColor_LightnessF")]
	public static extern float QColor_LightnessF(void* c_this);
	[LinkName("QColor_GetHsl")]
	public static extern void QColor_GetHsl(void* c_this, int32* h, int32* s, int32* l);
	[LinkName("QColor_SetHsl")]
	public static extern void QColor_SetHsl(void* c_this, int32 h, int32 s, int32 l);
	[LinkName("QColor_GetHslF")]
	public static extern void QColor_GetHslF(void* c_this, float* h, float* s, float* l);
	[LinkName("QColor_SetHslF")]
	public static extern void QColor_SetHslF(void* c_this, float h, float s, float l);
	[LinkName("QColor_ToRgb")]
	public static extern void QColor_ToRgb(void* c_this);
	[LinkName("QColor_ToHsv")]
	public static extern void QColor_ToHsv(void* c_this);
	[LinkName("QColor_ToCmyk")]
	public static extern void QColor_ToCmyk(void* c_this);
	[LinkName("QColor_ToHsl")]
	public static extern void QColor_ToHsl(void* c_this);
	[LinkName("QColor_ToExtendedRgb")]
	public static extern void QColor_ToExtendedRgb(void* c_this);
	[LinkName("QColor_ConvertTo")]
	public static extern void QColor_ConvertTo(void* c_this, int64 colorSpec);
	[LinkName("QColor_FromRgb")]
	public static extern void QColor_FromRgb(uint32 rgb);
	[LinkName("QColor_FromRgba")]
	public static extern void QColor_FromRgba(uint32 rgba);
	[LinkName("QColor_FromRgb2")]
	public static extern void QColor_FromRgb2(int32 r, int32 g, int32 b);
	[LinkName("QColor_FromRgbF")]
	public static extern void QColor_FromRgbF(float r, float g, float b);
	[LinkName("QColor_FromRgba64")]
	public static extern void QColor_FromRgba64(uint16 r, uint16 g, uint16 b);
	[LinkName("QColor_FromRgba64WithRgba")]
	public static extern void QColor_FromRgba64WithRgba(void rgba);
	[LinkName("QColor_FromHsv")]
	public static extern void QColor_FromHsv(int32 h, int32 s, int32 v);
	[LinkName("QColor_FromHsvF")]
	public static extern void QColor_FromHsvF(float h, float s, float v);
	[LinkName("QColor_FromCmyk")]
	public static extern void QColor_FromCmyk(int32 c, int32 m, int32 y, int32 k);
	[LinkName("QColor_FromCmykF")]
	public static extern void QColor_FromCmykF(float c, float m, float y, float k);
	[LinkName("QColor_FromHsl")]
	public static extern void QColor_FromHsl(int32 h, int32 s, int32 l);
	[LinkName("QColor_FromHslF")]
	public static extern void QColor_FromHslF(float h, float s, float l);
	[LinkName("QColor_Lighter")]
	public static extern void QColor_Lighter(void* c_this);
	[LinkName("QColor_Darker")]
	public static extern void QColor_Darker(void* c_this);
	[LinkName("QColor_OperatorEqual")]
	public static extern bool QColor_OperatorEqual(void* c_this, void* c);
	[LinkName("QColor_OperatorNotEqual")]
	public static extern bool QColor_OperatorNotEqual(void* c_this, void* c);
	[LinkName("QColor_ToQVariant")]
	public static extern void QColor_ToQVariant(void* c_this);
	[LinkName("QColor_IsValidColor")]
	public static extern bool QColor_IsValidColor(libqt_string name);
	[LinkName("QColor_IsValidColorName")]
	public static extern bool QColor_IsValidColorName(void param1);
	[LinkName("QColor_Name1")]
	public static extern libqt_string QColor_Name1(void* c_this, int64 format);
	[LinkName("QColor_GetRgb4")]
	public static extern void QColor_GetRgb4(void* c_this, int32* r, int32* g, int32* b, int32* a);
	[LinkName("QColor_SetRgb4")]
	public static extern void QColor_SetRgb4(void* c_this, int32 r, int32 g, int32 b, int32 a);
	[LinkName("QColor_GetRgbF4")]
	public static extern void QColor_GetRgbF4(void* c_this, float* r, float* g, float* b, float* a);
	[LinkName("QColor_SetRgbF4")]
	public static extern void QColor_SetRgbF4(void* c_this, float r, float g, float b, float a);
	[LinkName("QColor_GetHsv4")]
	public static extern void QColor_GetHsv4(void* c_this, int32* h, int32* s, int32* v, int32* a);
	[LinkName("QColor_SetHsv4")]
	public static extern void QColor_SetHsv4(void* c_this, int32 h, int32 s, int32 v, int32 a);
	[LinkName("QColor_GetHsvF4")]
	public static extern void QColor_GetHsvF4(void* c_this, float* h, float* s, float* v, float* a);
	[LinkName("QColor_SetHsvF4")]
	public static extern void QColor_SetHsvF4(void* c_this, float h, float s, float v, float a);
	[LinkName("QColor_GetCmyk5")]
	public static extern void QColor_GetCmyk5(void* c_this, int32* c, int32* m, int32* y, int32* k, int32* a);
	[LinkName("QColor_SetCmyk5")]
	public static extern void QColor_SetCmyk5(void* c_this, int32 c, int32 m, int32 y, int32 k, int32 a);
	[LinkName("QColor_GetCmykF5")]
	public static extern void QColor_GetCmykF5(void* c_this, float* c, float* m, float* y, float* k, float* a);
	[LinkName("QColor_SetCmykF5")]
	public static extern void QColor_SetCmykF5(void* c_this, float c, float m, float y, float k, float a);
	[LinkName("QColor_GetHsl4")]
	public static extern void QColor_GetHsl4(void* c_this, int32* h, int32* s, int32* l, int32* a);
	[LinkName("QColor_SetHsl4")]
	public static extern void QColor_SetHsl4(void* c_this, int32 h, int32 s, int32 l, int32 a);
	[LinkName("QColor_GetHslF4")]
	public static extern void QColor_GetHslF4(void* c_this, float* h, float* s, float* l, float* a);
	[LinkName("QColor_SetHslF4")]
	public static extern void QColor_SetHslF4(void* c_this, float h, float s, float l, float a);
	[LinkName("QColor_FromRgb4")]
	public static extern void QColor_FromRgb4(int32 r, int32 g, int32 b, int32 a);
	[LinkName("QColor_FromRgbF4")]
	public static extern void QColor_FromRgbF4(float r, float g, float b, float a);
	[LinkName("QColor_FromRgba644")]
	public static extern void QColor_FromRgba644(uint16 r, uint16 g, uint16 b, uint16 a);
	[LinkName("QColor_FromHsv4")]
	public static extern void QColor_FromHsv4(int32 h, int32 s, int32 v, int32 a);
	[LinkName("QColor_FromHsvF4")]
	public static extern void QColor_FromHsvF4(float h, float s, float v, float a);
	[LinkName("QColor_FromCmyk5")]
	public static extern void QColor_FromCmyk5(int32 c, int32 m, int32 y, int32 k, int32 a);
	[LinkName("QColor_FromCmykF5")]
	public static extern void QColor_FromCmykF5(float c, float m, float y, float k, float a);
	[LinkName("QColor_FromHsl4")]
	public static extern void QColor_FromHsl4(int32 h, int32 s, int32 l, int32 a);
	[LinkName("QColor_FromHslF4")]
	public static extern void QColor_FromHslF4(float h, float s, float l, float a);
	[LinkName("QColor_Lighter1")]
	public static extern void QColor_Lighter1(void* c_this, int32 f);
	[LinkName("QColor_Darker1")]
	public static extern void QColor_Darker1(void* c_this, int32 f);
	/// Delete this object from C++ memory
	[LinkName("QColor_Delete")]
	public static extern void QColor_Delete(void* self);
}