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
	public static extern QVideoFrame* QVideoFrame_new();
	[LinkName("QVideoFrame_new2")]
	public static extern QVideoFrame* QVideoFrame_new2(QVideoFrameFormat* format);
	[LinkName("QVideoFrame_new3")]
	public static extern QVideoFrame* QVideoFrame_new3(QVideoFrame* other);
	[LinkName("QVideoFrame_Swap")]
	public static extern void QVideoFrame_Swap(Self* c_this, QVideoFrame* other);
	[LinkName("QVideoFrame_OperatorAssign")]
	public static extern void QVideoFrame_OperatorAssign(Self* c_this, QVideoFrame* other);
	[LinkName("QVideoFrame_OperatorEqual")]
	public static extern bool QVideoFrame_OperatorEqual(Self* c_this, QVideoFrame* other);
	[LinkName("QVideoFrame_OperatorNotEqual")]
	public static extern bool QVideoFrame_OperatorNotEqual(Self* c_this, QVideoFrame* other);
	[LinkName("QVideoFrame_IsValid")]
	public static extern bool QVideoFrame_IsValid(Self* c_this);
	[LinkName("QVideoFrame_PixelFormat")]
	public static extern int64 QVideoFrame_PixelFormat(Self* c_this);
	[LinkName("QVideoFrame_SurfaceFormat")]
	public static extern QVideoFrameFormat QVideoFrame_SurfaceFormat(Self* c_this);
	[LinkName("QVideoFrame_HandleType")]
	public static extern int64 QVideoFrame_HandleType(Self* c_this);
	[LinkName("QVideoFrame_Size")]
	public static extern QSize QVideoFrame_Size(Self* c_this);
	[LinkName("QVideoFrame_Width")]
	public static extern int32 QVideoFrame_Width(Self* c_this);
	[LinkName("QVideoFrame_Height")]
	public static extern int32 QVideoFrame_Height(Self* c_this);
	[LinkName("QVideoFrame_IsMapped")]
	public static extern bool QVideoFrame_IsMapped(Self* c_this);
	[LinkName("QVideoFrame_IsReadable")]
	public static extern bool QVideoFrame_IsReadable(Self* c_this);
	[LinkName("QVideoFrame_IsWritable")]
	public static extern bool QVideoFrame_IsWritable(Self* c_this);
	[LinkName("QVideoFrame_MapMode")]
	public static extern int64 QVideoFrame_MapMode(Self* c_this);
	[LinkName("QVideoFrame_Map")]
	public static extern bool QVideoFrame_Map(Self* c_this, int64 mode);
	[LinkName("QVideoFrame_Unmap")]
	public static extern void QVideoFrame_Unmap(Self* c_this);
	[LinkName("QVideoFrame_BytesPerLine")]
	public static extern int32 QVideoFrame_BytesPerLine(Self* c_this, int32 plane);
	[LinkName("QVideoFrame_Bits")]
	public static extern uint8* QVideoFrame_Bits(Self* c_this, int32 plane);
	[LinkName("QVideoFrame_BitsWithPlane")]
	public static extern uint8* QVideoFrame_BitsWithPlane(Self* c_this, int32 plane);
	[LinkName("QVideoFrame_MappedBytes")]
	public static extern int32 QVideoFrame_MappedBytes(Self* c_this, int32 plane);
	[LinkName("QVideoFrame_PlaneCount")]
	public static extern int32 QVideoFrame_PlaneCount(Self* c_this);
	[LinkName("QVideoFrame_StartTime")]
	public static extern int64 QVideoFrame_StartTime(Self* c_this);
	[LinkName("QVideoFrame_SetStartTime")]
	public static extern void QVideoFrame_SetStartTime(Self* c_this, int64 time);
	[LinkName("QVideoFrame_EndTime")]
	public static extern int64 QVideoFrame_EndTime(Self* c_this);
	[LinkName("QVideoFrame_SetEndTime")]
	public static extern void QVideoFrame_SetEndTime(Self* c_this, int64 time);
	[LinkName("QVideoFrame_SetRotationAngle")]
	public static extern void QVideoFrame_SetRotationAngle(Self* c_this, int64 rotationAngle);
	[LinkName("QVideoFrame_RotationAngle")]
	public static extern int64 QVideoFrame_RotationAngle(Self* c_this);
	[LinkName("QVideoFrame_SetMirrored")]
	public static extern void QVideoFrame_SetMirrored(Self* c_this, bool mirrored);
	[LinkName("QVideoFrame_Mirrored")]
	public static extern bool QVideoFrame_Mirrored(Self* c_this);
	[LinkName("QVideoFrame_ToImage")]
	public static extern QImage QVideoFrame_ToImage(Self* c_this);
	[LinkName("QVideoFrame_SubtitleText")]
	public static extern libqt_string QVideoFrame_SubtitleText(Self* c_this);
	[LinkName("QVideoFrame_SetSubtitleText")]
	public static extern void QVideoFrame_SetSubtitleText(Self* c_this, libqt_string text);
	[LinkName("QVideoFrame_Paint")]
	public static extern void QVideoFrame_Paint(Self* c_this, QPainter* painter, QRectF* rect, QVideoFrame__PaintOptions* options);
}
public struct QVideoFrame__PaintOptions
{
	[LinkName("QVideoFrame__PaintOptions_new")]
	public static extern QVideoFrame__PaintOptions* QVideoFrame__PaintOptions_new(QVideoFrame__PaintOptions* other);
	[LinkName("QVideoFrame__PaintOptions_new2")]
	public static extern QVideoFrame__PaintOptions* QVideoFrame__PaintOptions_new2(QVideoFrame__PaintOptions* other);
}