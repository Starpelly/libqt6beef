using System;
using System.Interop;
namespace Qt;

public struct QVideoWidget
{
	[LinkName("QVideoWidget_new")]
	public static extern void* QVideoWidget_new(QWidget parent);
	[LinkName("QVideoWidget_new2")]
	public static extern void* QVideoWidget_new2();
	[LinkName("QVideoWidget_MetaObject")]
	public static extern QMetaObject QVideoWidget_MetaObject(void* c_this);
	[LinkName("QVideoWidget_Metacast")]
	public static extern void QVideoWidget_Metacast(void* c_this, char8[] param1);
	[LinkName("QVideoWidget_Metacall")]
	public static extern int32 QVideoWidget_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QVideoWidget_Tr")]
	public static extern char8[] QVideoWidget_Tr(char8[] s);
	[LinkName("QVideoWidget_VideoSink")]
	public static extern QVideoSink QVideoWidget_VideoSink(void* c_this);
	[LinkName("QVideoWidget_AspectRatioMode")]
	public static extern int64 QVideoWidget_AspectRatioMode(void* c_this);
	[LinkName("QVideoWidget_SizeHint")]
	public static extern QSize QVideoWidget_SizeHint(void* c_this);
	[LinkName("QVideoWidget_SetFullScreen")]
	public static extern void QVideoWidget_SetFullScreen(void* c_this, bool fullScreen);
	[LinkName("QVideoWidget_SetAspectRatioMode")]
	public static extern void QVideoWidget_SetAspectRatioMode(void* c_this, int64 mode);
	[LinkName("QVideoWidget_FullScreenChanged")]
	public static extern void QVideoWidget_FullScreenChanged(void* c_this, bool fullScreen);
	[LinkName("QVideoWidget_AspectRatioModeChanged")]
	public static extern void QVideoWidget_AspectRatioModeChanged(void* c_this, int64 mode);
	[LinkName("QVideoWidget_Event")]
	public static extern bool QVideoWidget_Event(void* c_this, QEvent event);
	[LinkName("QVideoWidget_ShowEvent")]
	public static extern void QVideoWidget_ShowEvent(void* c_this, QShowEvent event);
	[LinkName("QVideoWidget_HideEvent")]
	public static extern void QVideoWidget_HideEvent(void* c_this, QHideEvent event);
	[LinkName("QVideoWidget_ResizeEvent")]
	public static extern void QVideoWidget_ResizeEvent(void* c_this, QResizeEvent event);
	[LinkName("QVideoWidget_MoveEvent")]
	public static extern void QVideoWidget_MoveEvent(void* c_this, QMoveEvent event);
	[LinkName("QVideoWidget_Tr2")]
	public static extern char8[] QVideoWidget_Tr2(char8[] s, char8[] c);
	[LinkName("QVideoWidget_Tr3")]
	public static extern char8[] QVideoWidget_Tr3(char8[] s, char8[] c, int32 n);
}