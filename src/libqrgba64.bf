using System;
using System.Interop;
namespace Qt;

public struct QRgba64
{
	[LinkName("QRgba64_new")]
	public static extern void* QRgba64_new();
	[LinkName("QRgba64_new2")]
	public static extern void* QRgba64_new2(QRgba64 param1);
	[LinkName("QRgba64_FromRgba64")]
	public static extern QRgba64 QRgba64_FromRgba64(uint64 c);
	[LinkName("QRgba64_FromRgba642")]
	public static extern QRgba64 QRgba64_FromRgba642(uint16 red, uint16 green, uint16 blue, uint16 alpha);
	[LinkName("QRgba64_FromRgba")]
	public static extern QRgba64 QRgba64_FromRgba(uint8 red, uint8 green, uint8 blue, uint8 alpha);
	[LinkName("QRgba64_FromArgb32")]
	public static extern QRgba64 QRgba64_FromArgb32(uint32 rgb);
	[LinkName("QRgba64_IsOpaque")]
	public static extern bool QRgba64_IsOpaque(void* c_this);
	[LinkName("QRgba64_IsTransparent")]
	public static extern bool QRgba64_IsTransparent(void* c_this);
	[LinkName("QRgba64_Red")]
	public static extern uint16 QRgba64_Red(void* c_this);
	[LinkName("QRgba64_Green")]
	public static extern uint16 QRgba64_Green(void* c_this);
	[LinkName("QRgba64_Blue")]
	public static extern uint16 QRgba64_Blue(void* c_this);
	[LinkName("QRgba64_Alpha")]
	public static extern uint16 QRgba64_Alpha(void* c_this);
	[LinkName("QRgba64_SetRed")]
	public static extern void QRgba64_SetRed(void* c_this, uint16 _red);
	[LinkName("QRgba64_SetGreen")]
	public static extern void QRgba64_SetGreen(void* c_this, uint16 _green);
	[LinkName("QRgba64_SetBlue")]
	public static extern void QRgba64_SetBlue(void* c_this, uint16 _blue);
	[LinkName("QRgba64_SetAlpha")]
	public static extern void QRgba64_SetAlpha(void* c_this, uint16 _alpha);
	[LinkName("QRgba64_Red8")]
	public static extern uint8 QRgba64_Red8(void* c_this);
	[LinkName("QRgba64_Green8")]
	public static extern uint8 QRgba64_Green8(void* c_this);
	[LinkName("QRgba64_Blue8")]
	public static extern uint8 QRgba64_Blue8(void* c_this);
	[LinkName("QRgba64_Alpha8")]
	public static extern uint8 QRgba64_Alpha8(void* c_this);
	[LinkName("QRgba64_ToArgb32")]
	public static extern uint32 QRgba64_ToArgb32(void* c_this);
	[LinkName("QRgba64_ToRgb16")]
	public static extern uint16 QRgba64_ToRgb16(void* c_this);
	[LinkName("QRgba64_Premultiplied")]
	public static extern QRgba64 QRgba64_Premultiplied(void* c_this);
	[LinkName("QRgba64_Unpremultiplied")]
	public static extern QRgba64 QRgba64_Unpremultiplied(void* c_this);
	[LinkName("QRgba64_ToUnsignedLongLong")]
	public static extern uint64 QRgba64_ToUnsignedLongLong(void* c_this);
	[LinkName("QRgba64_OperatorAssign")]
	public static extern void QRgba64_OperatorAssign(void* c_this, uint64 _rgba);
}