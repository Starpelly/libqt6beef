using System;
using System.Interop;
namespace Qt;

public struct QBackingStore
{
	[LinkName("QBackingStore_new")]
	public static extern QBackingStore* QBackingStore_new(QWindow* window);
	[LinkName("QBackingStore_Window")]
	public static extern QWindow* QBackingStore_Window(Self* c_this);
	[LinkName("QBackingStore_PaintDevice")]
	public static extern QPaintDevice* QBackingStore_PaintDevice(Self* c_this);
	[LinkName("QBackingStore_Flush")]
	public static extern void QBackingStore_Flush(Self* c_this, QRegion* region);
	[LinkName("QBackingStore_Resize")]
	public static extern void QBackingStore_Resize(Self* c_this, QSize* size);
	[LinkName("QBackingStore_Size")]
	public static extern QSize QBackingStore_Size(Self* c_this);
	[LinkName("QBackingStore_Scroll")]
	public static extern bool QBackingStore_Scroll(Self* c_this, QRegion* area, int32 dx, int32 dy);
	[LinkName("QBackingStore_BeginPaint")]
	public static extern void QBackingStore_BeginPaint(Self* c_this, QRegion* param1);
	[LinkName("QBackingStore_EndPaint")]
	public static extern void QBackingStore_EndPaint(Self* c_this);
	[LinkName("QBackingStore_SetStaticContents")]
	public static extern void QBackingStore_SetStaticContents(Self* c_this, QRegion* region);
	[LinkName("QBackingStore_StaticContents")]
	public static extern QRegion QBackingStore_StaticContents(Self* c_this);
	[LinkName("QBackingStore_HasStaticContents")]
	public static extern bool QBackingStore_HasStaticContents(Self* c_this);
	[LinkName("QBackingStore_Flush2")]
	public static extern void QBackingStore_Flush2(Self* c_this, QRegion* region, QWindow* window);
	[LinkName("QBackingStore_Flush3")]
	public static extern void QBackingStore_Flush3(Self* c_this, QRegion* region, QWindow* window, QPoint* offset);
}