using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QVideoFrame__HandleType
{
	NoHandle = 0,
	RhiTextureHandle = 1,
}
[AllowDuplicates]
public enum QVideoFrame__MapMode
{
	NotMapped = 0,
	ReadOnly = 1,
	WriteOnly = 2,
	ReadWrite = 3,
}
[AllowDuplicates]
public enum QVideoFrame__RotationAngle
{
	Rotation0 = 0,
	Rotation90 = 90,
	Rotation180 = 180,
	Rotation270 = 270,
}
[AllowDuplicates]
public enum QVideoFrame__PaintOptions__PaintFlag
{
	DontDrawSubtitles = 1,
}
public struct QVideoFrame
{
	[LinkName("QVideoFrame_new")]
	public static extern void* QVideoFrame_new();
	[LinkName("QVideoFrame_new2")]
	public static extern void* QVideoFrame_new2(QVideoFrameFormat format);
	[LinkName("QVideoFrame_new3")]
	public static extern void* QVideoFrame_new3(QVideoFrame other);
	[LinkName("QVideoFrame_Swap")]
	public static extern void QVideoFrame_Swap(void* c_this, QVideoFrame other);
	[LinkName("QVideoFrame_OperatorAssign")]
	public static extern void QVideoFrame_OperatorAssign(void* c_this, QVideoFrame other);
	[LinkName("QVideoFrame_OperatorEqual")]
	public static extern bool QVideoFrame_OperatorEqual(void* c_this, QVideoFrame other);
	[LinkName("QVideoFrame_OperatorNotEqual")]
	public static extern bool QVideoFrame_OperatorNotEqual(void* c_this, QVideoFrame other);
	[LinkName("QVideoFrame_IsValid")]
	public static extern bool QVideoFrame_IsValid(void* c_this);
	[LinkName("QVideoFrame_PixelFormat")]
	public static extern int64 QVideoFrame_PixelFormat(void* c_this);
	[LinkName("QVideoFrame_SurfaceFormat")]
	public static extern QVideoFrameFormat QVideoFrame_SurfaceFormat(void* c_this);
	[LinkName("QVideoFrame_HandleType")]
	public static extern int64 QVideoFrame_HandleType(void* c_this);
	[LinkName("QVideoFrame_Size")]
	public static extern QSize QVideoFrame_Size(void* c_this);
	[LinkName("QVideoFrame_Width")]
	public static extern int32 QVideoFrame_Width(void* c_this);
	[LinkName("QVideoFrame_Height")]
	public static extern int32 QVideoFrame_Height(void* c_this);
	[LinkName("QVideoFrame_IsMapped")]
	public static extern bool QVideoFrame_IsMapped(void* c_this);
	[LinkName("QVideoFrame_IsReadable")]
	public static extern bool QVideoFrame_IsReadable(void* c_this);
	[LinkName("QVideoFrame_IsWritable")]
	public static extern bool QVideoFrame_IsWritable(void* c_this);
	[LinkName("QVideoFrame_MapMode")]
	public static extern int64 QVideoFrame_MapMode(void* c_this);
	[LinkName("QVideoFrame_Map")]
	public static extern bool QVideoFrame_Map(void* c_this, int64 mode);
	[LinkName("QVideoFrame_Unmap")]
	public static extern void QVideoFrame_Unmap(void* c_this);
	[LinkName("QVideoFrame_BytesPerLine")]
	public static extern int32 QVideoFrame_BytesPerLine(void* c_this, int32 plane);
	[LinkName("QVideoFrame_Bits")]
	public static extern uint8 QVideoFrame_Bits(void* c_this, int32 plane);
	[LinkName("QVideoFrame_BitsWithPlane")]
	public static extern uint8 QVideoFrame_BitsWithPlane(void* c_this, int32 plane);
	[LinkName("QVideoFrame_MappedBytes")]
	public static extern int32 QVideoFrame_MappedBytes(void* c_this, int32 plane);
	[LinkName("QVideoFrame_PlaneCount")]
	public static extern int32 QVideoFrame_PlaneCount(void* c_this);
	[LinkName("QVideoFrame_StartTime")]
	public static extern int64 QVideoFrame_StartTime(void* c_this);
	[LinkName("QVideoFrame_SetStartTime")]
	public static extern void QVideoFrame_SetStartTime(void* c_this, int64 time);
	[LinkName("QVideoFrame_EndTime")]
	public static extern int64 QVideoFrame_EndTime(void* c_this);
	[LinkName("QVideoFrame_SetEndTime")]
	public static extern void QVideoFrame_SetEndTime(void* c_this, int64 time);
	[LinkName("QVideoFrame_SetRotationAngle")]
	public static extern void QVideoFrame_SetRotationAngle(void* c_this, int64 rotationAngle);
	[LinkName("QVideoFrame_RotationAngle")]
	public static extern int64 QVideoFrame_RotationAngle(void* c_this);
	[LinkName("QVideoFrame_SetMirrored")]
	public static extern void QVideoFrame_SetMirrored(void* c_this, bool mirrored);
	[LinkName("QVideoFrame_Mirrored")]
	public static extern bool QVideoFrame_Mirrored(void* c_this);
	[LinkName("QVideoFrame_ToImage")]
	public static extern QImage QVideoFrame_ToImage(void* c_this);
	[LinkName("QVideoFrame_SubtitleText")]
	public static extern char8[] QVideoFrame_SubtitleText(void* c_this);
	[LinkName("QVideoFrame_SetSubtitleText")]
	public static extern void QVideoFrame_SetSubtitleText(void* c_this, char8[] text);
	[LinkName("QVideoFrame_Paint")]
	public static extern void QVideoFrame_Paint(void* c_this, QPainter painter, QRectF rect, QVideoFrame__PaintOptions options);
}
public struct QVideoFrame__PaintOptions
{
	[LinkName("QVideoFrame__PaintOptions_new")]
	public static extern void* QVideoFrame__PaintOptions_new(QVideoFrame__PaintOptions other);
	[LinkName("QVideoFrame__PaintOptions_new2")]
	public static extern void* QVideoFrame__PaintOptions_new2(QVideoFrame__PaintOptions other);
}