using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QSurfaceFormat__FormatOption
{
	StereoBuffers = 1,
	DebugContext = 2,
	DeprecatedFunctions = 4,
	ResetNotification = 8,
	ProtectedContent = 16,
}
[AllowDuplicates]
public enum QSurfaceFormat__SwapBehavior
{
	DefaultSwapBehavior = 0,
	SingleBuffer = 1,
	DoubleBuffer = 2,
	TripleBuffer = 3,
}
[AllowDuplicates]
public enum QSurfaceFormat__RenderableType
{
	DefaultRenderableType = 0,
	OpenGL = 1,
	OpenGLES = 2,
	OpenVG = 4,
}
[AllowDuplicates]
public enum QSurfaceFormat__OpenGLContextProfile
{
	NoProfile = 0,
	CoreProfile = 1,
	CompatibilityProfile = 2,
}
[AllowDuplicates]
public enum QSurfaceFormat__ColorSpace
{
	DefaultColorSpace = 0,
	sRGBColorSpace = 1,
}
public struct QSurfaceFormat
{
	[LinkName("QSurfaceFormat_new")]
	public static extern void* QSurfaceFormat_new();
	[LinkName("QSurfaceFormat_new2")]
	public static extern void* QSurfaceFormat_new2(int64 options);
	[LinkName("QSurfaceFormat_new3")]
	public static extern void* QSurfaceFormat_new3(QSurfaceFormat other);
	[LinkName("QSurfaceFormat_OperatorAssign")]
	public static extern void QSurfaceFormat_OperatorAssign(void* c_this, QSurfaceFormat other);
	[LinkName("QSurfaceFormat_SetDepthBufferSize")]
	public static extern void QSurfaceFormat_SetDepthBufferSize(void* c_this, int32 size);
	[LinkName("QSurfaceFormat_DepthBufferSize")]
	public static extern int32 QSurfaceFormat_DepthBufferSize(void* c_this);
	[LinkName("QSurfaceFormat_SetStencilBufferSize")]
	public static extern void QSurfaceFormat_SetStencilBufferSize(void* c_this, int32 size);
	[LinkName("QSurfaceFormat_StencilBufferSize")]
	public static extern int32 QSurfaceFormat_StencilBufferSize(void* c_this);
	[LinkName("QSurfaceFormat_SetRedBufferSize")]
	public static extern void QSurfaceFormat_SetRedBufferSize(void* c_this, int32 size);
	[LinkName("QSurfaceFormat_RedBufferSize")]
	public static extern int32 QSurfaceFormat_RedBufferSize(void* c_this);
	[LinkName("QSurfaceFormat_SetGreenBufferSize")]
	public static extern void QSurfaceFormat_SetGreenBufferSize(void* c_this, int32 size);
	[LinkName("QSurfaceFormat_GreenBufferSize")]
	public static extern int32 QSurfaceFormat_GreenBufferSize(void* c_this);
	[LinkName("QSurfaceFormat_SetBlueBufferSize")]
	public static extern void QSurfaceFormat_SetBlueBufferSize(void* c_this, int32 size);
	[LinkName("QSurfaceFormat_BlueBufferSize")]
	public static extern int32 QSurfaceFormat_BlueBufferSize(void* c_this);
	[LinkName("QSurfaceFormat_SetAlphaBufferSize")]
	public static extern void QSurfaceFormat_SetAlphaBufferSize(void* c_this, int32 size);
	[LinkName("QSurfaceFormat_AlphaBufferSize")]
	public static extern int32 QSurfaceFormat_AlphaBufferSize(void* c_this);
	[LinkName("QSurfaceFormat_SetSamples")]
	public static extern void QSurfaceFormat_SetSamples(void* c_this, int32 numSamples);
	[LinkName("QSurfaceFormat_Samples")]
	public static extern int32 QSurfaceFormat_Samples(void* c_this);
	[LinkName("QSurfaceFormat_SetSwapBehavior")]
	public static extern void QSurfaceFormat_SetSwapBehavior(void* c_this, int64 behavior);
	[LinkName("QSurfaceFormat_SwapBehavior")]
	public static extern int64 QSurfaceFormat_SwapBehavior(void* c_this);
	[LinkName("QSurfaceFormat_HasAlpha")]
	public static extern bool QSurfaceFormat_HasAlpha(void* c_this);
	[LinkName("QSurfaceFormat_SetProfile")]
	public static extern void QSurfaceFormat_SetProfile(void* c_this, int64 profile);
	[LinkName("QSurfaceFormat_Profile")]
	public static extern int64 QSurfaceFormat_Profile(void* c_this);
	[LinkName("QSurfaceFormat_SetRenderableType")]
	public static extern void QSurfaceFormat_SetRenderableType(void* c_this, int64 typeVal);
	[LinkName("QSurfaceFormat_RenderableType")]
	public static extern int64 QSurfaceFormat_RenderableType(void* c_this);
	[LinkName("QSurfaceFormat_SetMajorVersion")]
	public static extern void QSurfaceFormat_SetMajorVersion(void* c_this, int32 majorVersion);
	[LinkName("QSurfaceFormat_MajorVersion")]
	public static extern int32 QSurfaceFormat_MajorVersion(void* c_this);
	[LinkName("QSurfaceFormat_SetMinorVersion")]
	public static extern void QSurfaceFormat_SetMinorVersion(void* c_this, int32 minorVersion);
	[LinkName("QSurfaceFormat_MinorVersion")]
	public static extern int32 QSurfaceFormat_MinorVersion(void* c_this);
	[LinkName("QSurfaceFormat_Version")]
	public static extern void* QSurfaceFormat_Version(void* c_this);
	[LinkName("QSurfaceFormat_SetVersion")]
	public static extern void QSurfaceFormat_SetVersion(void* c_this, int32 major, int32 minor);
	[LinkName("QSurfaceFormat_Stereo")]
	public static extern bool QSurfaceFormat_Stereo(void* c_this);
	[LinkName("QSurfaceFormat_SetStereo")]
	public static extern void QSurfaceFormat_SetStereo(void* c_this, bool enable);
	[LinkName("QSurfaceFormat_SetOptions")]
	public static extern void QSurfaceFormat_SetOptions(void* c_this, int64 options);
	[LinkName("QSurfaceFormat_SetOption")]
	public static extern void QSurfaceFormat_SetOption(void* c_this, int64 option);
	[LinkName("QSurfaceFormat_TestOption")]
	public static extern bool QSurfaceFormat_TestOption(void* c_this, int64 option);
	[LinkName("QSurfaceFormat_Options")]
	public static extern int64 QSurfaceFormat_Options(void* c_this);
	[LinkName("QSurfaceFormat_SwapInterval")]
	public static extern int32 QSurfaceFormat_SwapInterval(void* c_this);
	[LinkName("QSurfaceFormat_SetSwapInterval")]
	public static extern void QSurfaceFormat_SetSwapInterval(void* c_this, int32 interval);
	[LinkName("QSurfaceFormat_ColorSpace")]
	public static extern QColorSpace QSurfaceFormat_ColorSpace(void* c_this);
	[LinkName("QSurfaceFormat_SetColorSpace")]
	public static extern void QSurfaceFormat_SetColorSpace(void* c_this, QColorSpace colorSpace);
	[LinkName("QSurfaceFormat_SetColorSpaceWithColorSpace")]
	public static extern void QSurfaceFormat_SetColorSpaceWithColorSpace(void* c_this, int64 colorSpace);
	[LinkName("QSurfaceFormat_SetDefaultFormat")]
	public static extern void QSurfaceFormat_SetDefaultFormat(QSurfaceFormat format);
	[LinkName("QSurfaceFormat_DefaultFormat")]
	public static extern QSurfaceFormat QSurfaceFormat_DefaultFormat();
	[LinkName("QSurfaceFormat_SetOption2")]
	public static extern void QSurfaceFormat_SetOption2(void* c_this, int64 option, bool on);
}