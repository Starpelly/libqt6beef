using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QImageIOHandler__ImageOption
{
	Size = 0,
	ClipRect = 1,
	Description = 2,
	ScaledClipRect = 3,
	ScaledSize = 4,
	CompressionRatio = 5,
	Gamma = 6,
	Quality = 7,
	Name = 8,
	SubType = 9,
	IncrementalReading = 10,
	Endianness = 11,
	Animation = 12,
	BackgroundColor = 13,
	ImageFormat = 14,
	SupportedSubTypes = 15,
	OptimizedWrite = 16,
	ProgressiveScanWrite = 17,
	ImageTransformation = 18,
}
[AllowDuplicates]
public enum QImageIOHandler__Transformation
{
	TransformationNone = 0,
	TransformationMirror = 1,
	TransformationFlip = 2,
	TransformationRotate180 = 3,
	TransformationRotate90 = 4,
	TransformationMirrorAndRotate90 = 5,
	TransformationFlipAndRotate90 = 6,
	TransformationRotate270 = 7,
}
[AllowDuplicates]
public enum QImageIOPlugin__Capability
{
	CanRead = 1,
	CanWrite = 2,
	CanReadIncremental = 4,
}
public struct QImageIOHandler
{
	[LinkName("QImageIOHandler_new")]
	public static extern QImageIOHandler* QImageIOHandler_new();
	[LinkName("QImageIOHandler_SetDevice")]
	public static extern void QImageIOHandler_SetDevice(Self* c_this, QIODevice* device);
	[LinkName("QImageIOHandler_Device")]
	public static extern QIODevice* QImageIOHandler_Device(Self* c_this);
	[LinkName("QImageIOHandler_SetFormat")]
	public static extern void QImageIOHandler_SetFormat(Self* c_this, libqt_string format);
	[LinkName("QImageIOHandler_SetFormatWithFormat")]
	public static extern void QImageIOHandler_SetFormatWithFormat(Self* c_this, libqt_string format);
	[LinkName("QImageIOHandler_Format")]
	public static extern libqt_string QImageIOHandler_Format(Self* c_this);
	[LinkName("QImageIOHandler_CanRead")]
	public static extern bool QImageIOHandler_CanRead(Self* c_this);
	[LinkName("QImageIOHandler_Read")]
	public static extern bool QImageIOHandler_Read(Self* c_this, QImage* image);
	[LinkName("QImageIOHandler_Write")]
	public static extern bool QImageIOHandler_Write(Self* c_this, QImage* image);
	[LinkName("QImageIOHandler_Option")]
	public static extern QVariant QImageIOHandler_Option(Self* c_this, int64 option);
	[LinkName("QImageIOHandler_SetOption")]
	public static extern void QImageIOHandler_SetOption(Self* c_this, int64 option, QVariant* value);
	[LinkName("QImageIOHandler_SupportsOption")]
	public static extern bool QImageIOHandler_SupportsOption(Self* c_this, int64 option);
	[LinkName("QImageIOHandler_JumpToNextImage")]
	public static extern bool QImageIOHandler_JumpToNextImage(Self* c_this);
	[LinkName("QImageIOHandler_JumpToImage")]
	public static extern bool QImageIOHandler_JumpToImage(Self* c_this, int32 imageNumber);
	[LinkName("QImageIOHandler_LoopCount")]
	public static extern int32 QImageIOHandler_LoopCount(Self* c_this);
	[LinkName("QImageIOHandler_ImageCount")]
	public static extern int32 QImageIOHandler_ImageCount(Self* c_this);
	[LinkName("QImageIOHandler_NextImageDelay")]
	public static extern int32 QImageIOHandler_NextImageDelay(Self* c_this);
	[LinkName("QImageIOHandler_CurrentImageNumber")]
	public static extern int32 QImageIOHandler_CurrentImageNumber(Self* c_this);
	[LinkName("QImageIOHandler_CurrentImageRect")]
	public static extern QRect QImageIOHandler_CurrentImageRect(Self* c_this);
	[LinkName("QImageIOHandler_AllocateImage")]
	public static extern bool QImageIOHandler_AllocateImage(QSize size, int64 format, QImage* image);
}
public struct QImageIOPlugin : QObject
{
	[LinkName("QImageIOPlugin_new")]
	public static extern QImageIOPlugin* QImageIOPlugin_new();
	[LinkName("QImageIOPlugin_new2")]
	public static extern QImageIOPlugin* QImageIOPlugin_new2(QObject* parent);
	[LinkName("QImageIOPlugin_MetaObject")]
	public static extern QMetaObject* QImageIOPlugin_MetaObject(Self* c_this);
	[LinkName("QImageIOPlugin_Metacast")]
	public static extern void* QImageIOPlugin_Metacast(Self* c_this, char8[] param1);
	[LinkName("QImageIOPlugin_Metacall")]
	public static extern int32 QImageIOPlugin_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QImageIOPlugin_Tr")]
	public static extern libqt_string QImageIOPlugin_Tr(char8[] s);
	[LinkName("QImageIOPlugin_Capabilities")]
	public static extern int64 QImageIOPlugin_Capabilities(Self* c_this, QIODevice* device, libqt_string format);
	[LinkName("QImageIOPlugin_Create")]
	public static extern QImageIOHandler* QImageIOPlugin_Create(Self* c_this, QIODevice* device, libqt_string format);
	[LinkName("QImageIOPlugin_Tr2")]
	public static extern libqt_string QImageIOPlugin_Tr2(char8[] s, char8[] c);
	[LinkName("QImageIOPlugin_Tr3")]
	public static extern libqt_string QImageIOPlugin_Tr3(char8[] s, char8[] c, int32 n);
}