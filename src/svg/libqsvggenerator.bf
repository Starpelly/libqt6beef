using System;
using System.Interop;
namespace Qt;

public struct QSvgGenerator
{
	[LinkName("QSvgGenerator_new")]
	public static extern void* QSvgGenerator_new();
	[LinkName("QSvgGenerator_Title")]
	public static extern char8[] QSvgGenerator_Title(void* c_this);
	[LinkName("QSvgGenerator_SetTitle")]
	public static extern void QSvgGenerator_SetTitle(void* c_this, char8[] title);
	[LinkName("QSvgGenerator_Description")]
	public static extern char8[] QSvgGenerator_Description(void* c_this);
	[LinkName("QSvgGenerator_SetDescription")]
	public static extern void QSvgGenerator_SetDescription(void* c_this, char8[] description);
	[LinkName("QSvgGenerator_Size")]
	public static extern QSize QSvgGenerator_Size(void* c_this);
	[LinkName("QSvgGenerator_SetSize")]
	public static extern void QSvgGenerator_SetSize(void* c_this, QSize size);
	[LinkName("QSvgGenerator_ViewBox")]
	public static extern QRect QSvgGenerator_ViewBox(void* c_this);
	[LinkName("QSvgGenerator_ViewBoxF")]
	public static extern QRectF QSvgGenerator_ViewBoxF(void* c_this);
	[LinkName("QSvgGenerator_SetViewBox")]
	public static extern void QSvgGenerator_SetViewBox(void* c_this, QRect viewBox);
	[LinkName("QSvgGenerator_SetViewBoxWithViewBox")]
	public static extern void QSvgGenerator_SetViewBoxWithViewBox(void* c_this, QRectF viewBox);
	[LinkName("QSvgGenerator_FileName")]
	public static extern char8[] QSvgGenerator_FileName(void* c_this);
	[LinkName("QSvgGenerator_SetFileName")]
	public static extern void QSvgGenerator_SetFileName(void* c_this, char8[] fileName);
	[LinkName("QSvgGenerator_OutputDevice")]
	public static extern QIODevice QSvgGenerator_OutputDevice(void* c_this);
	[LinkName("QSvgGenerator_SetOutputDevice")]
	public static extern void QSvgGenerator_SetOutputDevice(void* c_this, QIODevice outputDevice);
	[LinkName("QSvgGenerator_SetResolution")]
	public static extern void QSvgGenerator_SetResolution(void* c_this, int32 dpi);
	[LinkName("QSvgGenerator_Resolution")]
	public static extern int32 QSvgGenerator_Resolution(void* c_this);
	[LinkName("QSvgGenerator_PaintEngine")]
	public static extern QPaintEngine QSvgGenerator_PaintEngine(void* c_this);
	[LinkName("QSvgGenerator_Metric")]
	public static extern int32 QSvgGenerator_Metric(void* c_this, int64 metric);
}