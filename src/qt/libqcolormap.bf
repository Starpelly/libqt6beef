using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QColormap__Mode
{
	Direct = 0,
	Indexed = 1,
	Gray = 2,
}
public interface IQColormap
{
	void* NativePtr { get; }
}
public struct QColormapPtr : IQColormap, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQColormap colormap)
	{
		return .(CQt.QColormap_new((colormap == default || colormap.NativePtr == default) ? default : colormap.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QColormap_Delete(this.nativePtr);
	}
	
	public static void Initialize()
	{
		CQt.QColormap_Initialize();
	}
	
	public static void Cleanup()
	{
		CQt.QColormap_Cleanup();
	}
	
	public static void Instance()
	{
		CQt.QColormap_Instance();
	}
	
	public void OperatorAssign(IQColormap colormap)
	{
		CQt.QColormap_OperatorAssign(this.nativePtr, (colormap == default || colormap.NativePtr == default) ? default : colormap.NativePtr);
	}
	
	public int64 Mode()
	{
		return CQt.QColormap_Mode(this.nativePtr);
	}
	
	public int32 Depth()
	{
		return CQt.QColormap_Depth(this.nativePtr);
	}
	
	public int32 Size()
	{
		return CQt.QColormap_Size(this.nativePtr);
	}
	
	public uint32 Pixel(IQColor color)
	{
		return CQt.QColormap_Pixel(this.nativePtr, (color == default || color.NativePtr == default) ? default : color.NativePtr);
	}
	
	public void ColorAt(uint32 pixel)
	{
		CQt.QColormap_ColorAt(this.nativePtr, pixel);
	}
	
	public void[] Colormap()
	{
		return CQt.QColormap_Colormap(this.nativePtr);
	}
	
	public static void Instance1(int32 screen)
	{
		CQt.QColormap_Instance1(screen);
	}
	
}
public class QColormap
{
	public QColormapPtr handle;
	
	public static implicit operator QColormapPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQColormap colormap)
	{
		this.handle = QColormapPtr.New(colormap);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public static void Initialize()
	{
		QColormapPtr.Initialize();
	}
	
	public static void Cleanup()
	{
		QColormapPtr.Cleanup();
	}
	
	public static void Instance()
	{
		QColormapPtr.Instance();
	}
	
	public void OperatorAssign(IQColormap colormap)
	{
		this.handle.OperatorAssign(colormap);
	}
	
	public int64 Mode()
	{
		return this.handle.Mode();
	}
	
	public int32 Depth()
	{
		return this.handle.Depth();
	}
	
	public int32 Size()
	{
		return this.handle.Size();
	}
	
	public uint32 Pixel(IQColor color)
	{
		return this.handle.Pixel(color);
	}
	
	public void ColorAt(uint32 pixel)
	{
		this.handle.ColorAt(pixel);
	}
	
	public void[] Colormap()
	{
		return this.handle.Colormap();
	}
	
	public static void Instance1(int32 screen)
	{
		QColormapPtr.Instance1(screen);
	}
	
}
extension CQt
{
	[LinkName("QColormap_new")]
	public static extern void* QColormap_new(void* colormap);
	[LinkName("QColormap_Initialize")]
	public static extern void QColormap_Initialize();
	[LinkName("QColormap_Cleanup")]
	public static extern void QColormap_Cleanup();
	[LinkName("QColormap_Instance")]
	public static extern void QColormap_Instance();
	[LinkName("QColormap_OperatorAssign")]
	public static extern void QColormap_OperatorAssign(void* c_this, void* colormap);
	[LinkName("QColormap_Mode")]
	public static extern int64 QColormap_Mode(void* c_this);
	[LinkName("QColormap_Depth")]
	public static extern int32 QColormap_Depth(void* c_this);
	[LinkName("QColormap_Size")]
	public static extern int32 QColormap_Size(void* c_this);
	[LinkName("QColormap_Pixel")]
	public static extern uint32 QColormap_Pixel(void* c_this, void* color);
	[LinkName("QColormap_ColorAt")]
	public static extern void QColormap_ColorAt(void* c_this, uint32 pixel);
	[LinkName("QColormap_Colormap")]
	public static extern void[] QColormap_Colormap(void* c_this);
	[LinkName("QColormap_Instance1")]
	public static extern void QColormap_Instance1(int32 screen);
	/// Delete this object from C++ memory
	[LinkName("QColormap_Delete")]
	public static extern void QColormap_Delete(void* self);
}