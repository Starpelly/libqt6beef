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
public struct QPixelFormat
{
	[LinkName("QPixelFormat_new")]
	public static extern QPixelFormat* QPixelFormat_new(QPixelFormat* other);
	[LinkName("QPixelFormat_new2")]
	public static extern QPixelFormat* QPixelFormat_new2(QPixelFormat* other);
	[LinkName("QPixelFormat_new3")]
	public static extern QPixelFormat* QPixelFormat_new3();
	[LinkName("QPixelFormat_new4")]
	public static extern QPixelFormat* QPixelFormat_new4(int64 colorModel, uint8 firstSize, uint8 secondSize, uint8 thirdSize, uint8 fourthSize, uint8 fifthSize, uint8 alphaSize, int64 alphaUsage, int64 alphaPosition, int64 premultiplied, int64 typeInterpretation);
	[LinkName("QPixelFormat_new5")]
	public static extern QPixelFormat* QPixelFormat_new5(QPixelFormat* param1);
	[LinkName("QPixelFormat_new6")]
	public static extern QPixelFormat* QPixelFormat_new6(int64 colorModel, uint8 firstSize, uint8 secondSize, uint8 thirdSize, uint8 fourthSize, uint8 fifthSize, uint8 alphaSize, int64 alphaUsage, int64 alphaPosition, int64 premultiplied, int64 typeInterpretation, int64 byteOrder);
	[LinkName("QPixelFormat_new7")]
	public static extern QPixelFormat* QPixelFormat_new7(int64 colorModel, uint8 firstSize, uint8 secondSize, uint8 thirdSize, uint8 fourthSize, uint8 fifthSize, uint8 alphaSize, int64 alphaUsage, int64 alphaPosition, int64 premultiplied, int64 typeInterpretation, int64 byteOrder, uint8 subEnum);
	[LinkName("QPixelFormat_ColorModel")]
	public static extern int64 QPixelFormat_ColorModel(Self* c_this);
	[LinkName("QPixelFormat_ChannelCount")]
	public static extern uint8 QPixelFormat_ChannelCount(Self* c_this);
	[LinkName("QPixelFormat_RedSize")]
	public static extern uint8 QPixelFormat_RedSize(Self* c_this);
	[LinkName("QPixelFormat_GreenSize")]
	public static extern uint8 QPixelFormat_GreenSize(Self* c_this);
	[LinkName("QPixelFormat_BlueSize")]
	public static extern uint8 QPixelFormat_BlueSize(Self* c_this);
	[LinkName("QPixelFormat_CyanSize")]
	public static extern uint8 QPixelFormat_CyanSize(Self* c_this);
	[LinkName("QPixelFormat_MagentaSize")]
	public static extern uint8 QPixelFormat_MagentaSize(Self* c_this);
	[LinkName("QPixelFormat_YellowSize")]
	public static extern uint8 QPixelFormat_YellowSize(Self* c_this);
	[LinkName("QPixelFormat_BlackSize")]
	public static extern uint8 QPixelFormat_BlackSize(Self* c_this);
	[LinkName("QPixelFormat_HueSize")]
	public static extern uint8 QPixelFormat_HueSize(Self* c_this);
	[LinkName("QPixelFormat_SaturationSize")]
	public static extern uint8 QPixelFormat_SaturationSize(Self* c_this);
	[LinkName("QPixelFormat_LightnessSize")]
	public static extern uint8 QPixelFormat_LightnessSize(Self* c_this);
	[LinkName("QPixelFormat_BrightnessSize")]
	public static extern uint8 QPixelFormat_BrightnessSize(Self* c_this);
	[LinkName("QPixelFormat_AlphaSize")]
	public static extern uint8 QPixelFormat_AlphaSize(Self* c_this);
	[LinkName("QPixelFormat_BitsPerPixel")]
	public static extern uint8 QPixelFormat_BitsPerPixel(Self* c_this);
	[LinkName("QPixelFormat_AlphaUsage")]
	public static extern int64 QPixelFormat_AlphaUsage(Self* c_this);
	[LinkName("QPixelFormat_AlphaPosition")]
	public static extern int64 QPixelFormat_AlphaPosition(Self* c_this);
	[LinkName("QPixelFormat_Premultiplied")]
	public static extern int64 QPixelFormat_Premultiplied(Self* c_this);
	[LinkName("QPixelFormat_TypeInterpretation")]
	public static extern int64 QPixelFormat_TypeInterpretation(Self* c_this);
	[LinkName("QPixelFormat_ByteOrder")]
	public static extern int64 QPixelFormat_ByteOrder(Self* c_this);
	[LinkName("QPixelFormat_YuvLayout")]
	public static extern int64 QPixelFormat_YuvLayout(Self* c_this);
	[LinkName("QPixelFormat_SubEnum")]
	public static extern uint8 QPixelFormat_SubEnum(Self* c_this);
}