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
	public static extern QCameraFormat* QCameraFormat_new();
	[LinkName("QCameraFormat_new2")]
	public static extern QCameraFormat* QCameraFormat_new2(QCameraFormat* other);
	[LinkName("QCameraFormat_OperatorAssign")]
	public static extern void QCameraFormat_OperatorAssign(Self* c_this, QCameraFormat* other);
	[LinkName("QCameraFormat_PixelFormat")]
	public static extern int64 QCameraFormat_PixelFormat(Self* c_this);
	[LinkName("QCameraFormat_Resolution")]
	public static extern QSize QCameraFormat_Resolution(Self* c_this);
	[LinkName("QCameraFormat_MinFrameRate")]
	public static extern float QCameraFormat_MinFrameRate(Self* c_this);
	[LinkName("QCameraFormat_MaxFrameRate")]
	public static extern float QCameraFormat_MaxFrameRate(Self* c_this);
	[LinkName("QCameraFormat_IsNull")]
	public static extern bool QCameraFormat_IsNull(Self* c_this);
	[LinkName("QCameraFormat_OperatorEqual")]
	public static extern bool QCameraFormat_OperatorEqual(Self* c_this, QCameraFormat* other);
	[LinkName("QCameraFormat_OperatorNotEqual")]
	public static extern bool QCameraFormat_OperatorNotEqual(Self* c_this, QCameraFormat* other);
}
public struct QCameraDevice
{
	[LinkName("QCameraDevice_new")]
	public static extern QCameraDevice* QCameraDevice_new();
	[LinkName("QCameraDevice_new2")]
	public static extern QCameraDevice* QCameraDevice_new2(QCameraDevice* other);
	[LinkName("QCameraDevice_OperatorAssign")]
	public static extern void QCameraDevice_OperatorAssign(Self* c_this, QCameraDevice* other);
	[LinkName("QCameraDevice_OperatorEqual")]
	public static extern bool QCameraDevice_OperatorEqual(Self* c_this, QCameraDevice* other);
	[LinkName("QCameraDevice_OperatorNotEqual")]
	public static extern bool QCameraDevice_OperatorNotEqual(Self* c_this, QCameraDevice* other);
	[LinkName("QCameraDevice_IsNull")]
	public static extern bool QCameraDevice_IsNull(Self* c_this);
	[LinkName("QCameraDevice_Id")]
	public static extern libqt_string QCameraDevice_Id(Self* c_this);
	[LinkName("QCameraDevice_Description")]
	public static extern libqt_string QCameraDevice_Description(Self* c_this);
	[LinkName("QCameraDevice_IsDefault")]
	public static extern bool QCameraDevice_IsDefault(Self* c_this);
	[LinkName("QCameraDevice_Position")]
	public static extern int64 QCameraDevice_Position(Self* c_this);
	[LinkName("QCameraDevice_PhotoResolutions")]
	public static extern QSize[] QCameraDevice_PhotoResolutions(Self* c_this);
	[LinkName("QCameraDevice_VideoFormats")]
	public static extern QCameraFormat[] QCameraDevice_VideoFormats(Self* c_this);
}