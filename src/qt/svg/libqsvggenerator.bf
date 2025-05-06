using System;
using System.Interop;
namespace Qt;

public struct QSvgGenerator : QPaintDevice
{
	[LinkName("QSvgGenerator_new")]
	public static extern QSvgGenerator* QSvgGenerator_new();
	[LinkName("QSvgGenerator_Title")]
	public static extern libqt_string QSvgGenerator_Title(Self* c_this);
	[LinkName("QSvgGenerator_SetTitle")]
	public static extern void QSvgGenerator_SetTitle(Self* c_this, libqt_string title);
	[LinkName("QSvgGenerator_Description")]
	public static extern libqt_string QSvgGenerator_Description(Self* c_this);
	[LinkName("QSvgGenerator_SetDescription")]
	public static extern void QSvgGenerator_SetDescription(Self* c_this, libqt_string description);
	[LinkName("QSvgGenerator_Size")]
	public static extern QSize QSvgGenerator_Size(Self* c_this);
	[LinkName("QSvgGenerator_SetSize")]
	public static extern void QSvgGenerator_SetSize(Self* c_this, QSize* size);
	[LinkName("QSvgGenerator_ViewBox")]
	public static extern QRect QSvgGenerator_ViewBox(Self* c_this);
	[LinkName("QSvgGenerator_ViewBoxF")]
	public static extern QRectF QSvgGenerator_ViewBoxF(Self* c_this);
	[LinkName("QSvgGenerator_SetViewBox")]
	public static extern void QSvgGenerator_SetViewBox(Self* c_this, QRect* viewBox);
	[LinkName("QSvgGenerator_SetViewBoxWithViewBox")]
	public static extern void QSvgGenerator_SetViewBoxWithViewBox(Self* c_this, QRectF* viewBox);
	[LinkName("QSvgGenerator_FileName")]
	public static extern libqt_string QSvgGenerator_FileName(Self* c_this);
	[LinkName("QSvgGenerator_SetFileName")]
	public static extern void QSvgGenerator_SetFileName(Self* c_this, libqt_string fileName);
	[LinkName("QSvgGenerator_OutputDevice")]
	public static extern QIODevice* QSvgGenerator_OutputDevice(Self* c_this);
	[LinkName("QSvgGenerator_SetOutputDevice")]
	public static extern void QSvgGenerator_SetOutputDevice(Self* c_this, QIODevice* outputDevice);
	[LinkName("QSvgGenerator_SetResolution")]
	public static extern void QSvgGenerator_SetResolution(Self* c_this, int32 dpi);
	[LinkName("QSvgGenerator_Resolution")]
	public static extern int32 QSvgGenerator_Resolution(Self* c_this);
	[LinkName("QSvgGenerator_PaintEngine")]
	public static extern QPaintEngine* QSvgGenerator_PaintEngine(Self* c_this);
	[LinkName("QSvgGenerator_Metric")]
	public static extern int32 QSvgGenerator_Metric(Self* c_this, int64 metric);
}