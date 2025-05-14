using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QSurface__SurfaceClass
{
	Window = 0,
	Offscreen = 1,
}
[AllowDuplicates]
public enum QSurface__SurfaceType
{
	RasterSurface = 0,
	OpenGLSurface = 1,
	RasterGLSurface = 2,
	OpenVGSurface = 3,
	VulkanSurface = 4,
	MetalSurface = 5,
	Direct3DSurface = 6,
}
public interface IQSurface
{
	void* NativePtr { get; }
}
public struct QSurfacePtr : IQSurface, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public void Dispose()
	{
		CQt.QSurface_Delete(this.nativePtr);
	}
	
	public int64 SurfaceClass()
	{
		return CQt.QSurface_SurfaceClass(this.nativePtr);
	}
	
	public void Format()
	{
		CQt.QSurface_Format(this.nativePtr);
	}
	
	public int64 SurfaceType()
	{
		return CQt.QSurface_SurfaceType(this.nativePtr);
	}
	
	public bool SupportsOpenGL()
	{
		return CQt.QSurface_SupportsOpenGL(this.nativePtr);
	}
	
	public void Size()
	{
		CQt.QSurface_Size(this.nativePtr);
	}
	
}
public class QSurface
{
	public QSurfacePtr handle;
	
	public static implicit operator QSurfacePtr(Self self)
	{
		return self.handle;
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public int64 SurfaceClass()
	{
		return this.handle.SurfaceClass();
	}
	
	public virtual void Format()
	{
		this.handle.Format();
	}
	
	public virtual int64 SurfaceType()
	{
		return this.handle.SurfaceType();
	}
	
	public bool SupportsOpenGL()
	{
		return this.handle.SupportsOpenGL();
	}
	
	public virtual void Size()
	{
		this.handle.Size();
	}
	
}
extension CQt
{
	[LinkName("QSurface_SurfaceClass")]
	public static extern int64 QSurface_SurfaceClass(void* c_this);
	[LinkName("QSurface_Format")]
	public static extern void QSurface_Format(void* c_this);
	[LinkName("QSurface_SurfaceType")]
	public static extern int64 QSurface_SurfaceType(void* c_this);
	[LinkName("QSurface_SupportsOpenGL")]
	public static extern bool QSurface_SupportsOpenGL(void* c_this);
	[LinkName("QSurface_Size")]
	public static extern void QSurface_Size(void* c_this);
	[LinkName("QSurface_OperatorAssign")]
	public static extern void QSurface_OperatorAssign(void* c_this, void* param1);
	/// Delete this object from C++ memory
	[LinkName("QSurface_Delete")]
	public static extern void QSurface_Delete(void* self);
}