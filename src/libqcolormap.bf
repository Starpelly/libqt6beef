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
public struct QColormap
{
	[LinkName("QColormap_new")]
	public static extern void* QColormap_new(QColormap colormap);
	[LinkName("QColormap_Initialize")]
	public static extern void QColormap_Initialize();
	[LinkName("QColormap_Cleanup")]
	public static extern void QColormap_Cleanup();
	[LinkName("QColormap_Instance")]
	public static extern QColormap QColormap_Instance();
	[LinkName("QColormap_OperatorAssign")]
	public static extern void QColormap_OperatorAssign(void* c_this, QColormap colormap);
	[LinkName("QColormap_Mode")]
	public static extern int64 QColormap_Mode(void* c_this);
	[LinkName("QColormap_Depth")]
	public static extern int32 QColormap_Depth(void* c_this);
	[LinkName("QColormap_Size")]
	public static extern int32 QColormap_Size(void* c_this);
	[LinkName("QColormap_Pixel")]
	public static extern uint32 QColormap_Pixel(void* c_this, QColor color);
	[LinkName("QColormap_ColorAt")]
	public static extern QColor QColormap_ColorAt(void* c_this, uint32 pixel);
	[LinkName("QColormap_Colormap")]
	public static extern QColor[] QColormap_Colormap(void* c_this);
	[LinkName("QColormap_Instance1")]
	public static extern QColormap QColormap_Instance1(int32 screen);
}