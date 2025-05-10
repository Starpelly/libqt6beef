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
public class QCameraFormat
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QCameraFormat_new();
	}
	
	public ~this()
	{
		CQt.QCameraFormat_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* other)
	{
		CQt.QCameraFormat_OperatorAssign(this.nativePtr, other);
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
	
	public bool OperatorEqual(void* other)
	{
		return CQt.QCameraFormat_OperatorEqual(this.nativePtr, other);
	}
	
	public bool OperatorNotEqual(void* other)
	{
		return CQt.QCameraFormat_OperatorNotEqual(this.nativePtr, other);
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
public class QCameraDevice
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QCameraDevice_new();
	}
	
	public ~this()
	{
		CQt.QCameraDevice_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* other)
	{
		CQt.QCameraDevice_OperatorAssign(this.nativePtr, other);
	}
	
	public bool OperatorEqual(void* other)
	{
		return CQt.QCameraDevice_OperatorEqual(this.nativePtr, other);
	}
	
	public bool OperatorNotEqual(void* other)
	{
		return CQt.QCameraDevice_OperatorNotEqual(this.nativePtr, other);
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