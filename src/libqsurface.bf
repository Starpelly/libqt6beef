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
public struct QSurface
{
	[LinkName("QSurface_SurfaceClass")]
	public static extern int64 QSurface_SurfaceClass(void* c_this);
	[LinkName("QSurface_Format")]
	public static extern QSurfaceFormat QSurface_Format(void* c_this);
	[LinkName("QSurface_SurfaceType")]
	public static extern int64 QSurface_SurfaceType(void* c_this);
	[LinkName("QSurface_SupportsOpenGL")]
	public static extern bool QSurface_SupportsOpenGL(void* c_this);
	[LinkName("QSurface_Size")]
	public static extern QSize QSurface_Size(void* c_this);
	[LinkName("QSurface_OperatorAssign")]
	public static extern void QSurface_OperatorAssign(void* c_this, QSurface param1);
}