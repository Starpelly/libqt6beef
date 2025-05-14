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
public interface IQCameraFormat
{
	void* NativePtr { get; }
}
public struct QCameraFormatPtr : IQCameraFormat, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QCameraFormat_new());
	}
	
	public void Dispose()
	{
		CQt.QCameraFormat_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQCameraFormat other)
	{
		CQt.QCameraFormat_OperatorAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public int64 PixelFormat()
	{
		return CQt.QCameraFormat_PixelFormat(this.nativePtr);
	}
	
	public void Resolution()
	{
		CQt.QCameraFormat_Resolution(this.nativePtr);
	}
	
	public float MinFrameRate()
	{
		return CQt.QCameraFormat_MinFrameRate(this.nativePtr);
	}
	
	public float MaxFrameRate()
	{
		return CQt.QCameraFormat_MaxFrameRate(this.nativePtr);
	}
	
	public bool IsNull()
	{
		return CQt.QCameraFormat_IsNull(this.nativePtr);
	}
	
	public bool OperatorEqual(IQCameraFormat other)
	{
		return CQt.QCameraFormat_OperatorEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorNotEqual(IQCameraFormat other)
	{
		return CQt.QCameraFormat_OperatorNotEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
}
public class QCameraFormat
{
	public QCameraFormatPtr handle;
	
	public static implicit operator QCameraFormatPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QCameraFormatPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQCameraFormat other)
	{
		this.handle.OperatorAssign(other);
	}
	
	public int64 PixelFormat()
	{
		return this.handle.PixelFormat();
	}
	
	public void Resolution()
	{
		this.handle.Resolution();
	}
	
	public float MinFrameRate()
	{
		return this.handle.MinFrameRate();
	}
	
	public float MaxFrameRate()
	{
		return this.handle.MaxFrameRate();
	}
	
	public bool IsNull()
	{
		return this.handle.IsNull();
	}
	
	public bool OperatorEqual(IQCameraFormat other)
	{
		return this.handle.OperatorEqual(other);
	}
	
	public bool OperatorNotEqual(IQCameraFormat other)
	{
		return this.handle.OperatorNotEqual(other);
	}
	
}
extension CQt
{
	[LinkName("QCameraFormat_new")]
	public static extern void* QCameraFormat_new();
	[LinkName("QCameraFormat_new2")]
	public static extern void* QCameraFormat_new2(void* other);
	[LinkName("QCameraFormat_OperatorAssign")]
	public static extern void QCameraFormat_OperatorAssign(void* c_this, void* other);
	[LinkName("QCameraFormat_PixelFormat")]
	public static extern int64 QCameraFormat_PixelFormat(void* c_this);
	[LinkName("QCameraFormat_Resolution")]
	public static extern void QCameraFormat_Resolution(void* c_this);
	[LinkName("QCameraFormat_MinFrameRate")]
	public static extern float QCameraFormat_MinFrameRate(void* c_this);
	[LinkName("QCameraFormat_MaxFrameRate")]
	public static extern float QCameraFormat_MaxFrameRate(void* c_this);
	[LinkName("QCameraFormat_IsNull")]
	public static extern bool QCameraFormat_IsNull(void* c_this);
	[LinkName("QCameraFormat_OperatorEqual")]
	public static extern bool QCameraFormat_OperatorEqual(void* c_this, void* other);
	[LinkName("QCameraFormat_OperatorNotEqual")]
	public static extern bool QCameraFormat_OperatorNotEqual(void* c_this, void* other);
	/// Delete this object from C++ memory
	[LinkName("QCameraFormat_Delete")]
	public static extern void QCameraFormat_Delete(void* self);
}
public interface IQCameraDevice
{
	void* NativePtr { get; }
}
public struct QCameraDevicePtr : IQCameraDevice, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QCameraDevice_new());
	}
	
	public void Dispose()
	{
		CQt.QCameraDevice_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQCameraDevice other)
	{
		CQt.QCameraDevice_OperatorAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorEqual(IQCameraDevice other)
	{
		return CQt.QCameraDevice_OperatorEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorNotEqual(IQCameraDevice other)
	{
		return CQt.QCameraDevice_OperatorNotEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool IsNull()
	{
		return CQt.QCameraDevice_IsNull(this.nativePtr);
	}
	
	public libqt_string Id()
	{
		return CQt.QCameraDevice_Id(this.nativePtr);
	}
	
	public libqt_string Description()
	{
		return CQt.QCameraDevice_Description(this.nativePtr);
	}
	
	public bool IsDefault()
	{
		return CQt.QCameraDevice_IsDefault(this.nativePtr);
	}
	
	public int64 Position()
	{
		return CQt.QCameraDevice_Position(this.nativePtr);
	}
	
	public void[] PhotoResolutions()
	{
		return CQt.QCameraDevice_PhotoResolutions(this.nativePtr);
	}
	
	public void[] VideoFormats()
	{
		return CQt.QCameraDevice_VideoFormats(this.nativePtr);
	}
	
}
public class QCameraDevice
{
	public QCameraDevicePtr handle;
	
	public static implicit operator QCameraDevicePtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QCameraDevicePtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQCameraDevice other)
	{
		this.handle.OperatorAssign(other);
	}
	
	public bool OperatorEqual(IQCameraDevice other)
	{
		return this.handle.OperatorEqual(other);
	}
	
	public bool OperatorNotEqual(IQCameraDevice other)
	{
		return this.handle.OperatorNotEqual(other);
	}
	
	public bool IsNull()
	{
		return this.handle.IsNull();
	}
	
	public libqt_string Id()
	{
		return this.handle.Id();
	}
	
	public libqt_string Description()
	{
		return this.handle.Description();
	}
	
	public bool IsDefault()
	{
		return this.handle.IsDefault();
	}
	
	public int64 Position()
	{
		return this.handle.Position();
	}
	
	public void[] PhotoResolutions()
	{
		return this.handle.PhotoResolutions();
	}
	
	public void[] VideoFormats()
	{
		return this.handle.VideoFormats();
	}
	
}
extension CQt
{
	[LinkName("QCameraDevice_new")]
	public static extern void* QCameraDevice_new();
	[LinkName("QCameraDevice_new2")]
	public static extern void* QCameraDevice_new2(void* other);
	[LinkName("QCameraDevice_OperatorAssign")]
	public static extern void QCameraDevice_OperatorAssign(void* c_this, void* other);
	[LinkName("QCameraDevice_OperatorEqual")]
	public static extern bool QCameraDevice_OperatorEqual(void* c_this, void* other);
	[LinkName("QCameraDevice_OperatorNotEqual")]
	public static extern bool QCameraDevice_OperatorNotEqual(void* c_this, void* other);
	[LinkName("QCameraDevice_IsNull")]
	public static extern bool QCameraDevice_IsNull(void* c_this);
	[LinkName("QCameraDevice_Id")]
	public static extern libqt_string QCameraDevice_Id(void* c_this);
	[LinkName("QCameraDevice_Description")]
	public static extern libqt_string QCameraDevice_Description(void* c_this);
	[LinkName("QCameraDevice_IsDefault")]
	public static extern bool QCameraDevice_IsDefault(void* c_this);
	[LinkName("QCameraDevice_Position")]
	public static extern int64 QCameraDevice_Position(void* c_this);
	[LinkName("QCameraDevice_PhotoResolutions")]
	public static extern void[] QCameraDevice_PhotoResolutions(void* c_this);
	[LinkName("QCameraDevice_VideoFormats")]
	public static extern void[] QCameraDevice_VideoFormats(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QCameraDevice_Delete")]
	public static extern void QCameraDevice_Delete(void* self);
}