using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QPixelFormat__ColorModel
{
	RGB = 0,
	BGR = 1,
	Indexed = 2,
	Grayscale = 3,
	CMYK = 4,
	HSL = 5,
	HSV = 6,
	YUV = 7,
	Alpha = 8,
}
[AllowDuplicates]
public enum QPixelFormat__AlphaUsage
{
	UsesAlpha = 0,
	IgnoresAlpha = 1,
}
[AllowDuplicates]
public enum QPixelFormat__AlphaPosition
{
	AtBeginning = 0,
	AtEnd = 1,
}
[AllowDuplicates]
public enum QPixelFormat__AlphaPremultiplied
{
	NotPremultiplied = 0,
	Premultiplied = 1,
}
[AllowDuplicates]
public enum QPixelFormat__TypeInterpretation
{
	UnsignedInteger = 0,
	UnsignedShort = 1,
	UnsignedByte = 2,
	FloatingPoint = 3,
}
[AllowDuplicates]
public enum QPixelFormat__YUVLayout
{
	YUV444 = 0,
	YUV422 = 1,
	YUV411 = 2,
	YUV420P = 3,
	YUV420SP = 4,
	YV12 = 5,
	UYVY = 6,
	YUYV = 7,
	NV12 = 8,
	NV21 = 9,
	IMC1 = 10,
	IMC2 = 11,
	IMC3 = 12,
	IMC4 = 13,
	Y8 = 14,
	Y16 = 15,
}
[AllowDuplicates]
public enum QPixelFormat__ByteOrder
{
	LittleEndian = 0,
	BigEndian = 1,
	CurrentSystemEndian = 2,
}
public class QPixelFormat
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QPixelFormat_new(other);
	}
	
	public ~this()
	{
		CQt.QPixelFormat_Delete(this.nativePtr);
	}
	
	public int64 ColorModel()
	{
		return CQt.QPixelFormat_ColorModel(this.nativePtr);
	}
	
	public uint8 ChannelCount()
	{
		return CQt.QPixelFormat_ChannelCount(this.nativePtr);
	}
	
	public uint8 RedSize()
	{
		return CQt.QPixelFormat_RedSize(this.nativePtr);
	}
	
	public uint8 GreenSize()
	{
		return CQt.QPixelFormat_GreenSize(this.nativePtr);
	}
	
	public uint8 BlueSize()
	{
		return CQt.QPixelFormat_BlueSize(this.nativePtr);
	}
	
	public uint8 CyanSize()
	{
		return CQt.QPixelFormat_CyanSize(this.nativePtr);
	}
	
	public uint8 MagentaSize()
	{
		return CQt.QPixelFormat_MagentaSize(this.nativePtr);
	}
	
	public uint8 YellowSize()
	{
		return CQt.QPixelFormat_YellowSize(this.nativePtr);
	}
	
	public uint8 BlackSize()
	{
		return CQt.QPixelFormat_BlackSize(this.nativePtr);
	}
	
	public uint8 HueSize()
	{
		return CQt.QPixelFormat_HueSize(this.nativePtr);
	}
	
	public uint8 SaturationSize()
	{
		return CQt.QPixelFormat_SaturationSize(this.nativePtr);
	}
	
	public uint8 LightnessSize()
	{
		return CQt.QPixelFormat_LightnessSize(this.nativePtr);
	}
	
	public uint8 BrightnessSize()
	{
		return CQt.QPixelFormat_BrightnessSize(this.nativePtr);
	}
	
	public uint8 AlphaSize()
	{
		return CQt.QPixelFormat_AlphaSize(this.nativePtr);
	}
	
	public uint8 BitsPerPixel()
	{
		return CQt.QPixelFormat_BitsPerPixel(this.nativePtr);
	}
	
	public int64 AlphaUsage()
	{
		return CQt.QPixelFormat_AlphaUsage(this.nativePtr);
	}
	
	public int64 AlphaPosition()
	{
		return CQt.QPixelFormat_AlphaPosition(this.nativePtr);
	}
	
	public int64 Premultiplied()
	{
		return CQt.QPixelFormat_Premultiplied(this.nativePtr);
	}
	
	public int64 TypeInterpretation()
	{
		return CQt.QPixelFormat_TypeInterpretation(this.nativePtr);
	}
	
	public int64 ByteOrder()
	{
		return CQt.QPixelFormat_ByteOrder(this.nativePtr);
	}
	
	public int64 YuvLayout()
	{
		return CQt.QPixelFormat_YuvLayout(this.nativePtr);
	}
	
	public uint8 SubEnum()
	{
		return CQt.QPixelFormat_SubEnum(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QPixelFormat_new")]
	public static extern void* QPixelFormat_new(void* other);
	[LinkName("QPixelFormat_new2")]
	public static extern void* QPixelFormat_new2(void* other);
	[LinkName("QPixelFormat_new3")]
	public static extern void* QPixelFormat_new3();
	[LinkName("QPixelFormat_new4")]
	public static extern void* QPixelFormat_new4(int64 colorModel, uint8 firstSize, uint8 secondSize, uint8 thirdSize, uint8 fourthSize, uint8 fifthSize, uint8 alphaSize, int64 alphaUsage, int64 alphaPosition, int64 premultiplied, int64 typeInterpretation);
	[LinkName("QPixelFormat_new5")]
	public static extern void* QPixelFormat_new5(void* param1);
	[LinkName("QPixelFormat_new6")]
	public static extern void* QPixelFormat_new6(int64 colorModel, uint8 firstSize, uint8 secondSize, uint8 thirdSize, uint8 fourthSize, uint8 fifthSize, uint8 alphaSize, int64 alphaUsage, int64 alphaPosition, int64 premultiplied, int64 typeInterpretation, int64 byteOrder);
	[LinkName("QPixelFormat_new7")]
	public static extern void* QPixelFormat_new7(int64 colorModel, uint8 firstSize, uint8 secondSize, uint8 thirdSize, uint8 fourthSize, uint8 fifthSize, uint8 alphaSize, int64 alphaUsage, int64 alphaPosition, int64 premultiplied, int64 typeInterpretation, int64 byteOrder, uint8 subEnum);
	[LinkName("QPixelFormat_ColorModel")]
	public static extern int64 QPixelFormat_ColorModel(void* c_this);
	[LinkName("QPixelFormat_ChannelCount")]
	public static extern uint8 QPixelFormat_ChannelCount(void* c_this);
	[LinkName("QPixelFormat_RedSize")]
	public static extern uint8 QPixelFormat_RedSize(void* c_this);
	[LinkName("QPixelFormat_GreenSize")]
	public static extern uint8 QPixelFormat_GreenSize(void* c_this);
	[LinkName("QPixelFormat_BlueSize")]
	public static extern uint8 QPixelFormat_BlueSize(void* c_this);
	[LinkName("QPixelFormat_CyanSize")]
	public static extern uint8 QPixelFormat_CyanSize(void* c_this);
	[LinkName("QPixelFormat_MagentaSize")]
	public static extern uint8 QPixelFormat_MagentaSize(void* c_this);
	[LinkName("QPixelFormat_YellowSize")]
	public static extern uint8 QPixelFormat_YellowSize(void* c_this);
	[LinkName("QPixelFormat_BlackSize")]
	public static extern uint8 QPixelFormat_BlackSize(void* c_this);
	[LinkName("QPixelFormat_HueSize")]
	public static extern uint8 QPixelFormat_HueSize(void* c_this);
	[LinkName("QPixelFormat_SaturationSize")]
	public static extern uint8 QPixelFormat_SaturationSize(void* c_this);
	[LinkName("QPixelFormat_LightnessSize")]
	public static extern uint8 QPixelFormat_LightnessSize(void* c_this);
	[LinkName("QPixelFormat_BrightnessSize")]
	public static extern uint8 QPixelFormat_BrightnessSize(void* c_this);
	[LinkName("QPixelFormat_AlphaSize")]
	public static extern uint8 QPixelFormat_AlphaSize(void* c_this);
	[LinkName("QPixelFormat_BitsPerPixel")]
	public static extern uint8 QPixelFormat_BitsPerPixel(void* c_this);
	[LinkName("QPixelFormat_AlphaUsage")]
	public static extern int64 QPixelFormat_AlphaUsage(void* c_this);
	[LinkName("QPixelFormat_AlphaPosition")]
	public static extern int64 QPixelFormat_AlphaPosition(void* c_this);
	[LinkName("QPixelFormat_Premultiplied")]
	public static extern int64 QPixelFormat_Premultiplied(void* c_this);
	[LinkName("QPixelFormat_TypeInterpretation")]
	public static extern int64 QPixelFormat_TypeInterpretation(void* c_this);
	[LinkName("QPixelFormat_ByteOrder")]
	public static extern int64 QPixelFormat_ByteOrder(void* c_this);
	[LinkName("QPixelFormat_YuvLayout")]
	public static extern int64 QPixelFormat_YuvLayout(void* c_this);
	[LinkName("QPixelFormat_SubEnum")]
	public static extern uint8 QPixelFormat_SubEnum(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QPixelFormat_Delete")]
	public static extern void QPixelFormat_Delete(void* self);
}