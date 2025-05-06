using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QCameraDevice__Position
{
	UnspecifiedPosition = 0,
	BackFace = 1,
	FrontFace = 2,
}
public struct QCameraFormat
{
	[LinkName("QCameraFormat_new")]
	public static extern void* QCameraFormat_new();
	[LinkName("QCameraFormat_new2")]
	public static extern void* QCameraFormat_new2(QCameraFormat other);
	[LinkName("QCameraFormat_OperatorAssign")]
	public static extern void QCameraFormat_OperatorAssign(void* c_this, QCameraFormat other);
	[LinkName("QCameraFormat_PixelFormat")]
	public static extern int64 QCameraFormat_PixelFormat(void* c_this);
	[LinkName("QCameraFormat_Resolution")]
	public static extern QSize QCameraFormat_Resolution(void* c_this);
	[LinkName("QCameraFormat_MinFrameRate")]
	public static extern float QCameraFormat_MinFrameRate(void* c_this);
	[LinkName("QCameraFormat_MaxFrameRate")]
	public static extern float QCameraFormat_MaxFrameRate(void* c_this);
	[LinkName("QCameraFormat_IsNull")]
	public static extern bool QCameraFormat_IsNull(void* c_this);
	[LinkName("QCameraFormat_OperatorEqual")]
	public static extern bool QCameraFormat_OperatorEqual(void* c_this, QCameraFormat other);
	[LinkName("QCameraFormat_OperatorNotEqual")]
	public static extern bool QCameraFormat_OperatorNotEqual(void* c_this, QCameraFormat other);
}
public struct QCameraDevice
{
	[LinkName("QCameraDevice_new")]
	public static extern void* QCameraDevice_new();
	[LinkName("QCameraDevice_new2")]
	public static extern void* QCameraDevice_new2(QCameraDevice other);
	[LinkName("QCameraDevice_OperatorAssign")]
	public static extern void QCameraDevice_OperatorAssign(void* c_this, QCameraDevice other);
	[LinkName("QCameraDevice_OperatorEqual")]
	public static extern bool QCameraDevice_OperatorEqual(void* c_this, QCameraDevice other);
	[LinkName("QCameraDevice_OperatorNotEqual")]
	public static extern bool QCameraDevice_OperatorNotEqual(void* c_this, QCameraDevice other);
	[LinkName("QCameraDevice_IsNull")]
	public static extern bool QCameraDevice_IsNull(void* c_this);
	[LinkName("QCameraDevice_Id")]
	public static extern uint8[] QCameraDevice_Id(void* c_this);
	[LinkName("QCameraDevice_Description")]
	public static extern char8[] QCameraDevice_Description(void* c_this);
	[LinkName("QCameraDevice_IsDefault")]
	public static extern bool QCameraDevice_IsDefault(void* c_this);
	[LinkName("QCameraDevice_Position")]
	public static extern int64 QCameraDevice_Position(void* c_this);
	[LinkName("QCameraDevice_PhotoResolutions")]
	public static extern QSize[] QCameraDevice_PhotoResolutions(void* c_this);
	[LinkName("QCameraDevice_VideoFormats")]
	public static extern QCameraFormat[] QCameraDevice_VideoFormats(void* c_this);
}