using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QLCDNumber__Mode
{
	Hex = 0,
	Dec = 1,
	Oct = 2,
	Bin = 3,
}
[AllowDuplicates]
public enum QLCDNumber__SegmentStyle
{
	Outline = 0,
	Filled = 1,
	Flat = 2,
}
public struct QLCDNumber : QFrame
{
	[LinkName("QLCDNumber_new")]
	public static extern QLCDNumber* QLCDNumber_new(QWidget* parent);
	[LinkName("QLCDNumber_new2")]
	public static extern QLCDNumber* QLCDNumber_new2();
	[LinkName("QLCDNumber_new3")]
	public static extern QLCDNumber* QLCDNumber_new3(uint32 numDigits);
	[LinkName("QLCDNumber_new4")]
	public static extern QLCDNumber* QLCDNumber_new4(uint32 numDigits, QWidget* parent);
	[LinkName("QLCDNumber_MetaObject")]
	public static extern QMetaObject* QLCDNumber_MetaObject(Self* c_this);
	[LinkName("QLCDNumber_Metacast")]
	public static extern void* QLCDNumber_Metacast(Self* c_this, char8[] param1);
	[LinkName("QLCDNumber_Metacall")]
	public static extern int32 QLCDNumber_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QLCDNumber_Tr")]
	public static extern libqt_string QLCDNumber_Tr(char8[] s);
	[LinkName("QLCDNumber_SmallDecimalPoint")]
	public static extern bool QLCDNumber_SmallDecimalPoint(Self* c_this);
	[LinkName("QLCDNumber_DigitCount")]
	public static extern int32 QLCDNumber_DigitCount(Self* c_this);
	[LinkName("QLCDNumber_SetDigitCount")]
	public static extern void QLCDNumber_SetDigitCount(Self* c_this, int32 nDigits);
	[LinkName("QLCDNumber_CheckOverflow")]
	public static extern bool QLCDNumber_CheckOverflow(Self* c_this, double num);
	[LinkName("QLCDNumber_CheckOverflowWithNum")]
	public static extern bool QLCDNumber_CheckOverflowWithNum(Self* c_this, int32 num);
	[LinkName("QLCDNumber_Mode")]
	public static extern int64 QLCDNumber_Mode(Self* c_this);
	[LinkName("QLCDNumber_SetMode")]
	public static extern void QLCDNumber_SetMode(Self* c_this, int64 mode);
	[LinkName("QLCDNumber_SegmentStyle")]
	public static extern int64 QLCDNumber_SegmentStyle(Self* c_this);
	[LinkName("QLCDNumber_SetSegmentStyle")]
	public static extern void QLCDNumber_SetSegmentStyle(Self* c_this, int64 segmentStyle);
	[LinkName("QLCDNumber_Value")]
	public static extern double QLCDNumber_Value(Self* c_this);
	[LinkName("QLCDNumber_IntValue")]
	public static extern int32 QLCDNumber_IntValue(Self* c_this);
	[LinkName("QLCDNumber_SizeHint")]
	public static extern QSize QLCDNumber_SizeHint(Self* c_this);
	[LinkName("QLCDNumber_Display")]
	public static extern void QLCDNumber_Display(Self* c_this, libqt_string str);
	[LinkName("QLCDNumber_DisplayWithNum")]
	public static extern void QLCDNumber_DisplayWithNum(Self* c_this, int32 num);
	[LinkName("QLCDNumber_Display2")]
	public static extern void QLCDNumber_Display2(Self* c_this, double num);
	[LinkName("QLCDNumber_SetHexMode")]
	public static extern void QLCDNumber_SetHexMode(Self* c_this);
	[LinkName("QLCDNumber_SetDecMode")]
	public static extern void QLCDNumber_SetDecMode(Self* c_this);
	[LinkName("QLCDNumber_SetOctMode")]
	public static extern void QLCDNumber_SetOctMode(Self* c_this);
	[LinkName("QLCDNumber_SetBinMode")]
	public static extern void QLCDNumber_SetBinMode(Self* c_this);
	[LinkName("QLCDNumber_SetSmallDecimalPoint")]
	public static extern void QLCDNumber_SetSmallDecimalPoint(Self* c_this, bool smallDecimalPoint);
	[LinkName("QLCDNumber_Overflow")]
	public static extern void QLCDNumber_Overflow(Self* c_this);
	[LinkName("QLCDNumber_Event")]
	public static extern bool QLCDNumber_Event(Self* c_this, QEvent* e);
	[LinkName("QLCDNumber_PaintEvent")]
	public static extern void QLCDNumber_PaintEvent(Self* c_this, QPaintEvent* param1);
	[LinkName("QLCDNumber_Tr2")]
	public static extern libqt_string QLCDNumber_Tr2(char8[] s, char8[] c);
	[LinkName("QLCDNumber_Tr3")]
	public static extern libqt_string QLCDNumber_Tr3(char8[] s, char8[] c, int32 n);
}