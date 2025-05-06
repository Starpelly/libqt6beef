using System;
using System.Interop;
namespace Qt;

public struct QBackingStore
{
	[LinkName("QBackingStore_new")]
	public static extern void* QBackingStore_new(QWindow window);
	[LinkName("QBackingStore_Window")]
	public static extern QWindow QBackingStore_Window(void* c_this);
	[LinkName("QBackingStore_PaintDevice")]
	public static extern QPaintDevice QBackingStore_PaintDevice(void* c_this);
	[LinkName("QBackingStore_Flush")]
	public static extern void QBackingStore_Flush(void* c_this, QRegion region);
	[LinkName("QBackingStore_Resize")]
	public static extern void QBackingStore_Resize(void* c_this, QSize size);
	[LinkName("QBackingStore_Size")]
	public static extern QSize QBackingStore_Size(void* c_this);
	[LinkName("QBackingStore_Scroll")]
	public static extern bool QBackingStore_Scroll(void* c_this, QRegion area, int32 dx, int32 dy);
	[LinkName("QBackingStore_BeginPaint")]
	public static extern void QBackingStore_BeginPaint(void* c_this, QRegion param1);
	[LinkName("QBackingStore_EndPaint")]
	public static extern void QBackingStore_EndPaint(void* c_this);
	[LinkName("QBackingStore_SetStaticContents")]
	public static extern void QBackingStore_SetStaticContents(void* c_this, QRegion region);
	[LinkName("QBackingStore_StaticContents")]
	public static extern QRegion QBackingStore_StaticContents(void* c_this);
	[LinkName("QBackingStore_HasStaticContents")]
	public static extern bool QBackingStore_HasStaticContents(void* c_this);
	[LinkName("QBackingStore_Flush2")]
	public static extern void QBackingStore_Flush2(void* c_this, QRegion region, QWindow window);
	[LinkName("QBackingStore_Flush3")]
	public static extern void QBackingStore_Flush3(void* c_this, QRegion region, QWindow window, QPoint offset);
}