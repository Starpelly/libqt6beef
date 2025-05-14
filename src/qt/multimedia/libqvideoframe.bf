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
public interface IQVideoFrame
{
	void* NativePtr { get; }
}
public struct QVideoFramePtr : IQVideoFrame, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QVideoFrame_new());
	}
	
	public void Dispose()
	{
		CQt.QVideoFrame_Delete(this.nativePtr);
	}
	
	public void Swap(IQVideoFrame other)
	{
		CQt.QVideoFrame_Swap(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void OperatorAssign(IQVideoFrame other)
	{
		CQt.QVideoFrame_OperatorAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorEqual(IQVideoFrame other)
	{
		return CQt.QVideoFrame_OperatorEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorNotEqual(IQVideoFrame other)
	{
		return CQt.QVideoFrame_OperatorNotEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QVideoFrame_IsValid(this.nativePtr);
	}
	
	public int64 PixelFormat()
	{
		return CQt.QVideoFrame_PixelFormat(this.nativePtr);
	}
	
	public void SurfaceFormat()
	{
		CQt.QVideoFrame_SurfaceFormat(this.nativePtr);
	}
	
	public int64 HandleType()
	{
		return CQt.QVideoFrame_HandleType(this.nativePtr);
	}
	
	public void Size()
	{
		CQt.QVideoFrame_Size(this.nativePtr);
	}
	
	public int32 Width()
	{
		return CQt.QVideoFrame_Width(this.nativePtr);
	}
	
	public int32 Height()
	{
		return CQt.QVideoFrame_Height(this.nativePtr);
	}
	
	public bool IsMapped()
	{
		return CQt.QVideoFrame_IsMapped(this.nativePtr);
	}
	
	public bool IsReadable()
	{
		return CQt.QVideoFrame_IsReadable(this.nativePtr);
	}
	
	public bool IsWritable()
	{
		return CQt.QVideoFrame_IsWritable(this.nativePtr);
	}
	
	public int64 MapMode()
	{
		return CQt.QVideoFrame_MapMode(this.nativePtr);
	}
	
	public bool Map(int64 mode)
	{
		return CQt.QVideoFrame_Map(this.nativePtr, (int64)mode);
	}
	
	public void Unmap()
	{
		CQt.QVideoFrame_Unmap(this.nativePtr);
	}
	
	public int32 BytesPerLine(int32 plane)
	{
		return CQt.QVideoFrame_BytesPerLine(this.nativePtr, plane);
	}
	
	public uint8* Bits(int32 plane)
	{
		return CQt.QVideoFrame_Bits(this.nativePtr, plane);
	}
	
	public uint8* BitsWithPlane(int32 plane)
	{
		return CQt.QVideoFrame_BitsWithPlane(this.nativePtr, plane);
	}
	
	public int32 MappedBytes(int32 plane)
	{
		return CQt.QVideoFrame_MappedBytes(this.nativePtr, plane);
	}
	
	public int32 PlaneCount()
	{
		return CQt.QVideoFrame_PlaneCount(this.nativePtr);
	}
	
	public int64 StartTime()
	{
		return CQt.QVideoFrame_StartTime(this.nativePtr);
	}
	
	public void SetStartTime(int64 time)
	{
		CQt.QVideoFrame_SetStartTime(this.nativePtr, time);
	}
	
	public int64 EndTime()
	{
		return CQt.QVideoFrame_EndTime(this.nativePtr);
	}
	
	public void SetEndTime(int64 time)
	{
		CQt.QVideoFrame_SetEndTime(this.nativePtr, time);
	}
	
	public void SetRotationAngle(int64 rotationAngle)
	{
		CQt.QVideoFrame_SetRotationAngle(this.nativePtr, (int64)rotationAngle);
	}
	
	public int64 RotationAngle()
	{
		return CQt.QVideoFrame_RotationAngle(this.nativePtr);
	}
	
	public void SetMirrored(bool mirrored)
	{
		CQt.QVideoFrame_SetMirrored(this.nativePtr, mirrored);
	}
	
	public bool Mirrored()
	{
		return CQt.QVideoFrame_Mirrored(this.nativePtr);
	}
	
	public void ToImage()
	{
		CQt.QVideoFrame_ToImage(this.nativePtr);
	}
	
	public libqt_string SubtitleText()
	{
		return CQt.QVideoFrame_SubtitleText(this.nativePtr);
	}
	
	public void SetSubtitleText(String text)
	{
		CQt.QVideoFrame_SetSubtitleText(this.nativePtr, libqt_string(text));
	}
	
	public void Paint(IQPainter painter, IQRectF rect, QVideoFrame__PaintOptionsPtr options)
	{
		CQt.QVideoFrame_Paint(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, (options == default || options.NativePtr == default) ? default : options.NativePtr);
	}
	
}
public class QVideoFrame
{
	public QVideoFramePtr handle;
	
	public static implicit operator QVideoFramePtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QVideoFramePtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void Swap(IQVideoFrame other)
	{
		this.handle.Swap(other);
	}
	
	public void OperatorAssign(IQVideoFrame other)
	{
		this.handle.OperatorAssign(other);
	}
	
	public bool OperatorEqual(IQVideoFrame other)
	{
		return this.handle.OperatorEqual(other);
	}
	
	public bool OperatorNotEqual(IQVideoFrame other)
	{
		return this.handle.OperatorNotEqual(other);
	}
	
	public bool IsValid()
	{
		return this.handle.IsValid();
	}
	
	public int64 PixelFormat()
	{
		return this.handle.PixelFormat();
	}
	
	public void SurfaceFormat()
	{
		this.handle.SurfaceFormat();
	}
	
	public int64 HandleType()
	{
		return this.handle.HandleType();
	}
	
	public void Size()
	{
		this.handle.Size();
	}
	
	public int32 Width()
	{
		return this.handle.Width();
	}
	
	public int32 Height()
	{
		return this.handle.Height();
	}
	
	public bool IsMapped()
	{
		return this.handle.IsMapped();
	}
	
	public bool IsReadable()
	{
		return this.handle.IsReadable();
	}
	
	public bool IsWritable()
	{
		return this.handle.IsWritable();
	}
	
	public int64 MapMode()
	{
		return this.handle.MapMode();
	}
	
	public bool Map(int64 mode)
	{
		return this.handle.Map(mode);
	}
	
	public void Unmap()
	{
		this.handle.Unmap();
	}
	
	public int32 BytesPerLine(int32 plane)
	{
		return this.handle.BytesPerLine(plane);
	}
	
	public uint8* Bits(int32 plane)
	{
		return this.handle.Bits(plane);
	}
	
	public uint8* BitsWithPlane(int32 plane)
	{
		return this.handle.BitsWithPlane(plane);
	}
	
	public int32 MappedBytes(int32 plane)
	{
		return this.handle.MappedBytes(plane);
	}
	
	public int32 PlaneCount()
	{
		return this.handle.PlaneCount();
	}
	
	public int64 StartTime()
	{
		return this.handle.StartTime();
	}
	
	public void SetStartTime(int64 time)
	{
		this.handle.SetStartTime(time);
	}
	
	public int64 EndTime()
	{
		return this.handle.EndTime();
	}
	
	public void SetEndTime(int64 time)
	{
		this.handle.SetEndTime(time);
	}
	
	public void SetRotationAngle(int64 rotationAngle)
	{
		this.handle.SetRotationAngle(rotationAngle);
	}
	
	public int64 RotationAngle()
	{
		return this.handle.RotationAngle();
	}
	
	public void SetMirrored(bool mirrored)
	{
		this.handle.SetMirrored(mirrored);
	}
	
	public bool Mirrored()
	{
		return this.handle.Mirrored();
	}
	
	public void ToImage()
	{
		this.handle.ToImage();
	}
	
	public libqt_string SubtitleText()
	{
		return this.handle.SubtitleText();
	}
	
	public void SetSubtitleText(String text)
	{
		this.handle.SetSubtitleText(text);
	}
	
	public void Paint(IQPainter painter, IQRectF rect, QVideoFrame__PaintOptionsPtr options)
	{
		this.handle.Paint(painter, rect, options);
	}
	
}
extension CQt
{
	[LinkName("QVideoFrame_new")]
	public static extern void* QVideoFrame_new();
	[LinkName("QVideoFrame_new2")]
	public static extern void* QVideoFrame_new2(void* format);
	[LinkName("QVideoFrame_new3")]
	public static extern void* QVideoFrame_new3(void* other);
	[LinkName("QVideoFrame_Swap")]
	public static extern void QVideoFrame_Swap(void* c_this, void* other);
	[LinkName("QVideoFrame_OperatorAssign")]
	public static extern void QVideoFrame_OperatorAssign(void* c_this, void* other);
	[LinkName("QVideoFrame_OperatorEqual")]
	public static extern bool QVideoFrame_OperatorEqual(void* c_this, void* other);
	[LinkName("QVideoFrame_OperatorNotEqual")]
	public static extern bool QVideoFrame_OperatorNotEqual(void* c_this, void* other);
	[LinkName("QVideoFrame_IsValid")]
	public static extern bool QVideoFrame_IsValid(void* c_this);
	[LinkName("QVideoFrame_PixelFormat")]
	public static extern int64 QVideoFrame_PixelFormat(void* c_this);
	[LinkName("QVideoFrame_SurfaceFormat")]
	public static extern void QVideoFrame_SurfaceFormat(void* c_this);
	[LinkName("QVideoFrame_HandleType")]
	public static extern int64 QVideoFrame_HandleType(void* c_this);
	[LinkName("QVideoFrame_Size")]
	public static extern void QVideoFrame_Size(void* c_this);
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
	public static extern uint8* QVideoFrame_Bits(void* c_this, int32 plane);
	[LinkName("QVideoFrame_BitsWithPlane")]
	public static extern uint8* QVideoFrame_BitsWithPlane(void* c_this, int32 plane);
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
	public static extern void QVideoFrame_ToImage(void* c_this);
	[LinkName("QVideoFrame_SubtitleText")]
	public static extern libqt_string QVideoFrame_SubtitleText(void* c_this);
	[LinkName("QVideoFrame_SetSubtitleText")]
	public static extern void QVideoFrame_SetSubtitleText(void* c_this, libqt_string text);
	[LinkName("QVideoFrame_Paint")]
	public static extern void QVideoFrame_Paint(void* c_this, void* painter, void* rect, void* options);
	/// Delete this object from C++ memory
	[LinkName("QVideoFrame_Delete")]
	public static extern void QVideoFrame_Delete(void* self);
}
public interface IQVideoFrame__PaintOptions
{
	void* NativePtr { get; }
}
public struct QVideoFrame__PaintOptionsPtr : IQVideoFrame__PaintOptions, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(QVideoFrame__PaintOptionsPtr other)
	{
		return .(CQt.QVideoFrame__PaintOptions_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	public void Dispose()
	{
		CQt.QVideoFrame__PaintOptions_Delete(this.nativePtr);
	}
}
public class QVideoFrame__PaintOptions
{
	public QVideoFrame__PaintOptionsPtr handle;
	
	public static implicit operator QVideoFrame__PaintOptionsPtr(Self self)
	{
		return self.handle;
	}
	
	public this(QVideoFrame__PaintOptionsPtr other)
	{
		this.handle = QVideoFrame__PaintOptionsPtr.New(other);
	}
	public ~this()
	{
		this.handle.Dispose();
	}
}
extension CQt
{
	[LinkName("QVideoFrame__PaintOptions_new")]
	public static extern void* QVideoFrame__PaintOptions_new(void* other);
	[LinkName("QVideoFrame__PaintOptions_new2")]
	public static extern void* QVideoFrame__PaintOptions_new2(void* other);
	/// Delete this object from C++ memory
	[LinkName("QVideoFrame__PaintOptions_Delete")]
	public static extern void QVideoFrame__PaintOptions_Delete(void* self);
}