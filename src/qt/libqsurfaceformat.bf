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
public interface IQSurfaceFormat
{
	void* NativePtr { get; }
}
public struct QSurfaceFormatPtr : IQSurfaceFormat, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QSurfaceFormat_new());
	}
	
	public void Dispose()
	{
		CQt.QSurfaceFormat_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQSurfaceFormat other)
	{
		CQt.QSurfaceFormat_OperatorAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void SetDepthBufferSize(int32 size)
	{
		CQt.QSurfaceFormat_SetDepthBufferSize(this.nativePtr, size);
	}
	
	public int32 DepthBufferSize()
	{
		return CQt.QSurfaceFormat_DepthBufferSize(this.nativePtr);
	}
	
	public void SetStencilBufferSize(int32 size)
	{
		CQt.QSurfaceFormat_SetStencilBufferSize(this.nativePtr, size);
	}
	
	public int32 StencilBufferSize()
	{
		return CQt.QSurfaceFormat_StencilBufferSize(this.nativePtr);
	}
	
	public void SetRedBufferSize(int32 size)
	{
		CQt.QSurfaceFormat_SetRedBufferSize(this.nativePtr, size);
	}
	
	public int32 RedBufferSize()
	{
		return CQt.QSurfaceFormat_RedBufferSize(this.nativePtr);
	}
	
	public void SetGreenBufferSize(int32 size)
	{
		CQt.QSurfaceFormat_SetGreenBufferSize(this.nativePtr, size);
	}
	
	public int32 GreenBufferSize()
	{
		return CQt.QSurfaceFormat_GreenBufferSize(this.nativePtr);
	}
	
	public void SetBlueBufferSize(int32 size)
	{
		CQt.QSurfaceFormat_SetBlueBufferSize(this.nativePtr, size);
	}
	
	public int32 BlueBufferSize()
	{
		return CQt.QSurfaceFormat_BlueBufferSize(this.nativePtr);
	}
	
	public void SetAlphaBufferSize(int32 size)
	{
		CQt.QSurfaceFormat_SetAlphaBufferSize(this.nativePtr, size);
	}
	
	public int32 AlphaBufferSize()
	{
		return CQt.QSurfaceFormat_AlphaBufferSize(this.nativePtr);
	}
	
	public void SetSamples(int32 numSamples)
	{
		CQt.QSurfaceFormat_SetSamples(this.nativePtr, numSamples);
	}
	
	public int32 Samples()
	{
		return CQt.QSurfaceFormat_Samples(this.nativePtr);
	}
	
	public void SetSwapBehavior(int64 behavior)
	{
		CQt.QSurfaceFormat_SetSwapBehavior(this.nativePtr, (int64)behavior);
	}
	
	public int64 SwapBehavior()
	{
		return CQt.QSurfaceFormat_SwapBehavior(this.nativePtr);
	}
	
	public bool HasAlpha()
	{
		return CQt.QSurfaceFormat_HasAlpha(this.nativePtr);
	}
	
	public void SetProfile(int64 profile)
	{
		CQt.QSurfaceFormat_SetProfile(this.nativePtr, (int64)profile);
	}
	
	public int64 Profile()
	{
		return CQt.QSurfaceFormat_Profile(this.nativePtr);
	}
	
	public void SetRenderableType(int64 typeVal)
	{
		CQt.QSurfaceFormat_SetRenderableType(this.nativePtr, (int64)typeVal);
	}
	
	public int64 RenderableType()
	{
		return CQt.QSurfaceFormat_RenderableType(this.nativePtr);
	}
	
	public void SetMajorVersion(int32 majorVersion)
	{
		CQt.QSurfaceFormat_SetMajorVersion(this.nativePtr, majorVersion);
	}
	
	public int32 MajorVersion()
	{
		return CQt.QSurfaceFormat_MajorVersion(this.nativePtr);
	}
	
	public void SetMinorVersion(int32 minorVersion)
	{
		CQt.QSurfaceFormat_SetMinorVersion(this.nativePtr, minorVersion);
	}
	
	public int32 MinorVersion()
	{
		return CQt.QSurfaceFormat_MinorVersion(this.nativePtr);
	}
	
	public void* Version()
	{
		return CQt.QSurfaceFormat_Version(this.nativePtr);
	}
	
	public void SetVersion(int32 major, int32 minor)
	{
		CQt.QSurfaceFormat_SetVersion(this.nativePtr, major, minor);
	}
	
	public bool Stereo()
	{
		return CQt.QSurfaceFormat_Stereo(this.nativePtr);
	}
	
	public void SetStereo(bool enable)
	{
		CQt.QSurfaceFormat_SetStereo(this.nativePtr, enable);
	}
	
	public void SetOptions(int64 options)
	{
		CQt.QSurfaceFormat_SetOptions(this.nativePtr, options);
	}
	
	public void SetOption(int64 option)
	{
		CQt.QSurfaceFormat_SetOption(this.nativePtr, (int64)option);
	}
	
	public bool TestOption(int64 option)
	{
		return CQt.QSurfaceFormat_TestOption(this.nativePtr, (int64)option);
	}
	
	public int64 Options()
	{
		return CQt.QSurfaceFormat_Options(this.nativePtr);
	}
	
	public int32 SwapInterval()
	{
		return CQt.QSurfaceFormat_SwapInterval(this.nativePtr);
	}
	
	public void SetSwapInterval(int32 interval)
	{
		CQt.QSurfaceFormat_SetSwapInterval(this.nativePtr, interval);
	}
	
	public void* ColorSpace()
	{
		return CQt.QSurfaceFormat_ColorSpace(this.nativePtr);
	}
	
	public void SetColorSpace(IQColorSpace colorSpace)
	{
		CQt.QSurfaceFormat_SetColorSpace(this.nativePtr, (colorSpace == default || colorSpace.NativePtr == default) ? default : colorSpace.NativePtr);
	}
	
	public void SetColorSpaceWithColorSpace(int64 colorSpace)
	{
		CQt.QSurfaceFormat_SetColorSpaceWithColorSpace(this.nativePtr, (int64)colorSpace);
	}
	
	public static void SetDefaultFormat(IQSurfaceFormat format)
	{
		CQt.QSurfaceFormat_SetDefaultFormat((format == default || format.NativePtr == default) ? default : format.NativePtr);
	}
	
	public static void DefaultFormat()
	{
		CQt.QSurfaceFormat_DefaultFormat();
	}
	
	public void SetOption2(int64 option, bool on)
	{
		CQt.QSurfaceFormat_SetOption2(this.nativePtr, (int64)option, on);
	}
	
}
public class QSurfaceFormat
{
	public QSurfaceFormatPtr handle;
	
	public static implicit operator QSurfaceFormatPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QSurfaceFormatPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQSurfaceFormat other)
	{
		this.handle.OperatorAssign(other);
	}
	
	public void SetDepthBufferSize(int32 size)
	{
		this.handle.SetDepthBufferSize(size);
	}
	
	public int32 DepthBufferSize()
	{
		return this.handle.DepthBufferSize();
	}
	
	public void SetStencilBufferSize(int32 size)
	{
		this.handle.SetStencilBufferSize(size);
	}
	
	public int32 StencilBufferSize()
	{
		return this.handle.StencilBufferSize();
	}
	
	public void SetRedBufferSize(int32 size)
	{
		this.handle.SetRedBufferSize(size);
	}
	
	public int32 RedBufferSize()
	{
		return this.handle.RedBufferSize();
	}
	
	public void SetGreenBufferSize(int32 size)
	{
		this.handle.SetGreenBufferSize(size);
	}
	
	public int32 GreenBufferSize()
	{
		return this.handle.GreenBufferSize();
	}
	
	public void SetBlueBufferSize(int32 size)
	{
		this.handle.SetBlueBufferSize(size);
	}
	
	public int32 BlueBufferSize()
	{
		return this.handle.BlueBufferSize();
	}
	
	public void SetAlphaBufferSize(int32 size)
	{
		this.handle.SetAlphaBufferSize(size);
	}
	
	public int32 AlphaBufferSize()
	{
		return this.handle.AlphaBufferSize();
	}
	
	public void SetSamples(int32 numSamples)
	{
		this.handle.SetSamples(numSamples);
	}
	
	public int32 Samples()
	{
		return this.handle.Samples();
	}
	
	public void SetSwapBehavior(int64 behavior)
	{
		this.handle.SetSwapBehavior(behavior);
	}
	
	public int64 SwapBehavior()
	{
		return this.handle.SwapBehavior();
	}
	
	public bool HasAlpha()
	{
		return this.handle.HasAlpha();
	}
	
	public void SetProfile(int64 profile)
	{
		this.handle.SetProfile(profile);
	}
	
	public int64 Profile()
	{
		return this.handle.Profile();
	}
	
	public void SetRenderableType(int64 typeVal)
	{
		this.handle.SetRenderableType(typeVal);
	}
	
	public int64 RenderableType()
	{
		return this.handle.RenderableType();
	}
	
	public void SetMajorVersion(int32 majorVersion)
	{
		this.handle.SetMajorVersion(majorVersion);
	}
	
	public int32 MajorVersion()
	{
		return this.handle.MajorVersion();
	}
	
	public void SetMinorVersion(int32 minorVersion)
	{
		this.handle.SetMinorVersion(minorVersion);
	}
	
	public int32 MinorVersion()
	{
		return this.handle.MinorVersion();
	}
	
	public void* Version()
	{
		return this.handle.Version();
	}
	
	public void SetVersion(int32 major, int32 minor)
	{
		this.handle.SetVersion(major, minor);
	}
	
	public bool Stereo()
	{
		return this.handle.Stereo();
	}
	
	public void SetStereo(bool enable)
	{
		this.handle.SetStereo(enable);
	}
	
	public void SetOptions(int64 options)
	{
		this.handle.SetOptions(options);
	}
	
	public void SetOption(int64 option)
	{
		this.handle.SetOption(option);
	}
	
	public bool TestOption(int64 option)
	{
		return this.handle.TestOption(option);
	}
	
	public int64 Options()
	{
		return this.handle.Options();
	}
	
	public int32 SwapInterval()
	{
		return this.handle.SwapInterval();
	}
	
	public void SetSwapInterval(int32 interval)
	{
		this.handle.SetSwapInterval(interval);
	}
	
	public void* ColorSpace()
	{
		return this.handle.ColorSpace();
	}
	
	public void SetColorSpace(IQColorSpace colorSpace)
	{
		this.handle.SetColorSpace(colorSpace);
	}
	
	public void SetColorSpaceWithColorSpace(int64 colorSpace)
	{
		this.handle.SetColorSpaceWithColorSpace(colorSpace);
	}
	
	public static void SetDefaultFormat(IQSurfaceFormat format)
	{
		QSurfaceFormatPtr.SetDefaultFormat(format);
	}
	
	public static void DefaultFormat()
	{
		QSurfaceFormatPtr.DefaultFormat();
	}
	
	public void SetOption2(int64 option, bool on)
	{
		this.handle.SetOption2(option, on);
	}
	
}
extension CQt
{
	[LinkName("QSurfaceFormat_new")]
	public static extern void* QSurfaceFormat_new();
	[LinkName("QSurfaceFormat_new2")]
	public static extern void* QSurfaceFormat_new2(int64 options);
	[LinkName("QSurfaceFormat_new3")]
	public static extern void* QSurfaceFormat_new3(void* other);
	[LinkName("QSurfaceFormat_OperatorAssign")]
	public static extern void QSurfaceFormat_OperatorAssign(void* c_this, void* other);
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
	public static extern void* QSurfaceFormat_ColorSpace(void* c_this);
	[LinkName("QSurfaceFormat_SetColorSpace")]
	public static extern void QSurfaceFormat_SetColorSpace(void* c_this, void* colorSpace);
	[LinkName("QSurfaceFormat_SetColorSpaceWithColorSpace")]
	public static extern void QSurfaceFormat_SetColorSpaceWithColorSpace(void* c_this, int64 colorSpace);
	[LinkName("QSurfaceFormat_SetDefaultFormat")]
	public static extern void QSurfaceFormat_SetDefaultFormat(void* format);
	[LinkName("QSurfaceFormat_DefaultFormat")]
	public static extern void QSurfaceFormat_DefaultFormat();
	[LinkName("QSurfaceFormat_SetOption2")]
	public static extern void QSurfaceFormat_SetOption2(void* c_this, int64 option, bool on);
	/// Delete this object from C++ memory
	[LinkName("QSurfaceFormat_Delete")]
	public static extern void QSurfaceFormat_Delete(void* self);
}