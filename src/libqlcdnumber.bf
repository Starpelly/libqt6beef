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
public struct QLCDNumber
{
	[LinkName("QLCDNumber_new")]
	public static extern void* QLCDNumber_new(QWidget parent);
	[LinkName("QLCDNumber_new2")]
	public static extern void* QLCDNumber_new2();
	[LinkName("QLCDNumber_new3")]
	public static extern void* QLCDNumber_new3(uint32 numDigits);
	[LinkName("QLCDNumber_new4")]
	public static extern void* QLCDNumber_new4(uint32 numDigits, QWidget parent);
	[LinkName("QLCDNumber_MetaObject")]
	public static extern QMetaObject QLCDNumber_MetaObject(void* c_this);
	[LinkName("QLCDNumber_Metacast")]
	public static extern void QLCDNumber_Metacast(void* c_this, char8[] param1);
	[LinkName("QLCDNumber_Metacall")]
	public static extern int32 QLCDNumber_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QLCDNumber_Tr")]
	public static extern char8[] QLCDNumber_Tr(char8[] s);
	[LinkName("QLCDNumber_SmallDecimalPoint")]
	public static extern bool QLCDNumber_SmallDecimalPoint(void* c_this);
	[LinkName("QLCDNumber_DigitCount")]
	public static extern int32 QLCDNumber_DigitCount(void* c_this);
	[LinkName("QLCDNumber_SetDigitCount")]
	public static extern void QLCDNumber_SetDigitCount(void* c_this, int32 nDigits);
	[LinkName("QLCDNumber_CheckOverflow")]
	public static extern bool QLCDNumber_CheckOverflow(void* c_this, double num);
	[LinkName("QLCDNumber_CheckOverflowWithNum")]
	public static extern bool QLCDNumber_CheckOverflowWithNum(void* c_this, int32 num);
	[LinkName("QLCDNumber_Mode")]
	public static extern int64 QLCDNumber_Mode(void* c_this);
	[LinkName("QLCDNumber_SetMode")]
	public static extern void QLCDNumber_SetMode(void* c_this, int64 mode);
	[LinkName("QLCDNumber_SegmentStyle")]
	public static extern int64 QLCDNumber_SegmentStyle(void* c_this);
	[LinkName("QLCDNumber_SetSegmentStyle")]
	public static extern void QLCDNumber_SetSegmentStyle(void* c_this, int64 segmentStyle);
	[LinkName("QLCDNumber_Value")]
	public static extern double QLCDNumber_Value(void* c_this);
	[LinkName("QLCDNumber_IntValue")]
	public static extern int32 QLCDNumber_IntValue(void* c_this);
	[LinkName("QLCDNumber_SizeHint")]
	public static extern QSize QLCDNumber_SizeHint(void* c_this);
	[LinkName("QLCDNumber_Display")]
	public static extern void QLCDNumber_Display(void* c_this, char8[] str);
	[LinkName("QLCDNumber_DisplayWithNum")]
	public static extern void QLCDNumber_DisplayWithNum(void* c_this, int32 num);
	[LinkName("QLCDNumber_Display2")]
	public static extern void QLCDNumber_Display2(void* c_this, double num);
	[LinkName("QLCDNumber_SetHexMode")]
	public static extern void QLCDNumber_SetHexMode(void* c_this);
	[LinkName("QLCDNumber_SetDecMode")]
	public static extern void QLCDNumber_SetDecMode(void* c_this);
	[LinkName("QLCDNumber_SetOctMode")]
	public static extern void QLCDNumber_SetOctMode(void* c_this);
	[LinkName("QLCDNumber_SetBinMode")]
	public static extern void QLCDNumber_SetBinMode(void* c_this);
	[LinkName("QLCDNumber_SetSmallDecimalPoint")]
	public static extern void QLCDNumber_SetSmallDecimalPoint(void* c_this, bool smallDecimalPoint);
	[LinkName("QLCDNumber_Overflow")]
	public static extern void QLCDNumber_Overflow(void* c_this);
	[LinkName("QLCDNumber_Event")]
	public static extern bool QLCDNumber_Event(void* c_this, QEvent e);
	[LinkName("QLCDNumber_PaintEvent")]
	public static extern void QLCDNumber_PaintEvent(void* c_this, QPaintEvent param1);
	[LinkName("QLCDNumber_Tr2")]
	public static extern char8[] QLCDNumber_Tr2(char8[] s, char8[] c);
	[LinkName("QLCDNumber_Tr3")]
	public static extern char8[] QLCDNumber_Tr3(char8[] s, char8[] c, int32 n);
}