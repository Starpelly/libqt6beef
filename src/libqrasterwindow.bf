using System;
using System.Interop;
namespace Qt;

public struct QRasterWindow
{
	[LinkName("QRasterWindow_new")]
	public static extern void* QRasterWindow_new();
	[LinkName("QRasterWindow_new2")]
	public static extern void* QRasterWindow_new2(QWindow parent);
	[LinkName("QRasterWindow_MetaObject")]
	public static extern QMetaObject QRasterWindow_MetaObject(void* c_this);
	[LinkName("QRasterWindow_Metacast")]
	public static extern void QRasterWindow_Metacast(void* c_this, char8[] param1);
	[LinkName("QRasterWindow_Metacall")]
	public static extern int32 QRasterWindow_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QRasterWindow_Tr")]
	public static extern char8[] QRasterWindow_Tr(char8[] s);
	[LinkName("QRasterWindow_Metric")]
	public static extern int32 QRasterWindow_Metric(void* c_this, int64 metric);
	[LinkName("QRasterWindow_Redirected")]
	public static extern QPaintDevice QRasterWindow_Redirected(void* c_this, QPoint param1);
	[LinkName("QRasterWindow_Tr2")]
	public static extern char8[] QRasterWindow_Tr2(char8[] s, char8[] c);
	[LinkName("QRasterWindow_Tr3")]
	public static extern char8[] QRasterWindow_Tr3(char8[] s, char8[] c, int32 n);
}