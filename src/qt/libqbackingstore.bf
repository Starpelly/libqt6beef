using System;
using System.Interop;
namespace Qt;

public interface IQBackingStore
{
	void* NativePtr { get; }
}
public class QBackingStore : IQBackingStore
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQWindow window)
	{
		this.nativePtr = CQt.QBackingStore_new((window == null) ? null : (void*)window.NativePtr);
	}
	
	public ~this()
	{
		CQt.QBackingStore_Delete(this.nativePtr);
	}
	
	public void* Window()
	{
		return CQt.QBackingStore_Window(this.nativePtr);
	}
	
	public void* PaintDevice()
	{
		return CQt.QBackingStore_PaintDevice(this.nativePtr);
	}
	
	public void Flush(IQRegion region)
	{
		CQt.QBackingStore_Flush(this.nativePtr, (region == default) ? default : (void*)region.NativePtr);
	}
	
	public void Resize(IQSize size)
	{
		CQt.QBackingStore_Resize(this.nativePtr, (size == default) ? default : (void*)size.NativePtr);
	}
	
	public void Size()
	{
		CQt.QBackingStore_Size(this.nativePtr);
	}
	
	public bool Scroll(IQRegion area, int32 dx, int32 dy)
	{
		return CQt.QBackingStore_Scroll(this.nativePtr, (area == default) ? default : (void*)area.NativePtr, dx, dy);
	}
	
	public void BeginPaint(IQRegion param1)
	{
		CQt.QBackingStore_BeginPaint(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void EndPaint()
	{
		CQt.QBackingStore_EndPaint(this.nativePtr);
	}
	
	public void SetStaticContents(IQRegion region)
	{
		CQt.QBackingStore_SetStaticContents(this.nativePtr, (region == default) ? default : (void*)region.NativePtr);
	}
	
	public void StaticContents()
	{
		CQt.QBackingStore_StaticContents(this.nativePtr);
	}
	
	public bool HasStaticContents()
	{
		return CQt.QBackingStore_HasStaticContents(this.nativePtr);
	}
	
	public void Flush2(IQRegion region, IQWindow window)
	{
		CQt.QBackingStore_Flush2(this.nativePtr, (region == default) ? default : (void*)region.NativePtr, (window == null) ? null : (void*)window.NativePtr);
	}
	
	public void Flush3(IQRegion region, IQWindow window, IQPoint offset)
	{
		CQt.QBackingStore_Flush3(this.nativePtr, (region == default) ? default : (void*)region.NativePtr, (window == null) ? null : (void*)window.NativePtr, (offset == default) ? default : (void*)offset.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QBackingStore_new")]
	public static extern void* QBackingStore_new(void* window);
	[LinkName("QBackingStore_Window")]
	public static extern void* QBackingStore_Window(void* c_this);
	[LinkName("QBackingStore_PaintDevice")]
	public static extern void* QBackingStore_PaintDevice(void* c_this);
	[LinkName("QBackingStore_Flush")]
	public static extern void QBackingStore_Flush(void* c_this, void* region);
	[LinkName("QBackingStore_Resize")]
	public static extern void QBackingStore_Resize(void* c_this, void* size);
	[LinkName("QBackingStore_Size")]
	public static extern void QBackingStore_Size(void* c_this);
	[LinkName("QBackingStore_Scroll")]
	public static extern bool QBackingStore_Scroll(void* c_this, void* area, int32 dx, int32 dy);
	[LinkName("QBackingStore_BeginPaint")]
	public static extern void QBackingStore_BeginPaint(void* c_this, void* param1);
	[LinkName("QBackingStore_EndPaint")]
	public static extern void QBackingStore_EndPaint(void* c_this);
	[LinkName("QBackingStore_SetStaticContents")]
	public static extern void QBackingStore_SetStaticContents(void* c_this, void* region);
	[LinkName("QBackingStore_StaticContents")]
	public static extern void QBackingStore_StaticContents(void* c_this);
	[LinkName("QBackingStore_HasStaticContents")]
	public static extern bool QBackingStore_HasStaticContents(void* c_this);
	[LinkName("QBackingStore_Flush2")]
	public static extern void QBackingStore_Flush2(void* c_this, void* region, void* window);
	[LinkName("QBackingStore_Flush3")]
	public static extern void QBackingStore_Flush3(void* c_this, void* region, void* window, void* offset);
	/// Delete this object from C++ memory
	[LinkName("QBackingStore_Delete")]
	public static extern void QBackingStore_Delete(void* self);
}