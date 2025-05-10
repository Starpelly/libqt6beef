using System;
using System.Interop;
namespace Qt;

public class QRgba64
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QRgba64_new();
	}
	
	public ~this()
	{
		CQt.QRgba64_Delete(this.nativePtr);
	}
	
	public static void FromRgba64(uint64 c)
	{
		CQt.QRgba64_FromRgba64(c);
	}
	
	public static void FromRgba642(uint16 red, uint16 green, uint16 blue, uint16 alpha)
	{
		CQt.QRgba64_FromRgba642(red, green, blue, alpha);
	}
	
	public static void FromRgba(uint8 red, uint8 green, uint8 blue, uint8 alpha)
	{
		CQt.QRgba64_FromRgba(red, green, blue, alpha);
	}
	
	public static void FromArgb32(uint32 rgb)
	{
		CQt.QRgba64_FromArgb32(rgb);
	}
	
	public bool IsOpaque()
	{
		return CQt.QRgba64_IsOpaque(this.nativePtr);
	}
	
	public bool IsTransparent()
	{
		return CQt.QRgba64_IsTransparent(this.nativePtr);
	}
	
	public uint16 Red()
	{
		return CQt.QRgba64_Red(this.nativePtr);
	}
	
	public uint16 Green()
	{
		return CQt.QRgba64_Green(this.nativePtr);
	}
	
	public uint16 Blue()
	{
		return CQt.QRgba64_Blue(this.nativePtr);
	}
	
	public uint16 Alpha()
	{
		return CQt.QRgba64_Alpha(this.nativePtr);
	}
	
	public void SetRed(uint16 _red)
	{
		CQt.QRgba64_SetRed(this.nativePtr, _red);
	}
	
	public void SetGreen(uint16 _green)
	{
		CQt.QRgba64_SetGreen(this.nativePtr, _green);
	}
	
	public void SetBlue(uint16 _blue)
	{
		CQt.QRgba64_SetBlue(this.nativePtr, _blue);
	}
	
	public void SetAlpha(uint16 _alpha)
	{
		CQt.QRgba64_SetAlpha(this.nativePtr, _alpha);
	}
	
	public uint8 Red8()
	{
		return CQt.QRgba64_Red8(this.nativePtr);
	}
	
	public uint8 Green8()
	{
		return CQt.QRgba64_Green8(this.nativePtr);
	}
	
	public uint8 Blue8()
	{
		return CQt.QRgba64_Blue8(this.nativePtr);
	}
	
	public uint8 Alpha8()
	{
		return CQt.QRgba64_Alpha8(this.nativePtr);
	}
	
	public uint32 ToArgb32()
	{
		return CQt.QRgba64_ToArgb32(this.nativePtr);
	}
	
	public uint16 ToRgb16()
	{
		return CQt.QRgba64_ToRgb16(this.nativePtr);
	}
	
	public void Premultiplied()
	{
		CQt.QRgba64_Premultiplied(this.nativePtr);
	}
	
	public void Unpremultiplied()
	{
		CQt.QRgba64_Unpremultiplied(this.nativePtr);
	}
	
	public uint64 ToUnsignedLongLong()
	{
		return CQt.QRgba64_ToUnsignedLongLong(this.nativePtr);
	}
	
	public void OperatorAssign(uint64 _rgba)
	{
		CQt.QRgba64_OperatorAssign(this.nativePtr, _rgba);
	}
	
}
extension CQt
{
	[LinkName("QRgba64_new")]
	public static extern void* QRgba64_new();
	[LinkName("QRgba64_new2")]
	public static extern void* QRgba64_new2(void* param1);
	[LinkName("QRgba64_FromRgba64")]
	public static extern void QRgba64_FromRgba64(uint64 c);
	[LinkName("QRgba64_FromRgba642")]
	public static extern void QRgba64_FromRgba642(uint16 red, uint16 green, uint16 blue, uint16 alpha);
	[LinkName("QRgba64_FromRgba")]
	public static extern void QRgba64_FromRgba(uint8 red, uint8 green, uint8 blue, uint8 alpha);
	[LinkName("QRgba64_FromArgb32")]
	public static extern void QRgba64_FromArgb32(uint32 rgb);
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
	public static extern void QRgba64_Premultiplied(void* c_this);
	[LinkName("QRgba64_Unpremultiplied")]
	public static extern void QRgba64_Unpremultiplied(void* c_this);
	[LinkName("QRgba64_ToUnsignedLongLong")]
	public static extern uint64 QRgba64_ToUnsignedLongLong(void* c_this);
	[LinkName("QRgba64_OperatorAssign")]
	public static extern void QRgba64_OperatorAssign(void* c_this, uint64 _rgba);
	/// Delete this object from C++ memory
	[LinkName("QRgba64_Delete")]
	public static extern void QRgba64_Delete(void* self);
}