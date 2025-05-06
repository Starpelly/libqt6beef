using System;
using System.Interop;
namespace Qt;

public struct QVideoWidget : QWidget
{
	[LinkName("QVideoWidget_new")]
	public static extern QVideoWidget* QVideoWidget_new(QWidget* parent);
	[LinkName("QVideoWidget_new2")]
	public static extern QVideoWidget* QVideoWidget_new2();
	[LinkName("QVideoWidget_MetaObject")]
	public static extern QMetaObject* QVideoWidget_MetaObject(Self* c_this);
	[LinkName("QVideoWidget_Metacast")]
	public static extern void* QVideoWidget_Metacast(Self* c_this, char8[] param1);
	[LinkName("QVideoWidget_Metacall")]
	public static extern int32 QVideoWidget_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QVideoWidget_Tr")]
	public static extern libqt_string QVideoWidget_Tr(char8[] s);
	[LinkName("QVideoWidget_VideoSink")]
	public static extern QVideoSink* QVideoWidget_VideoSink(Self* c_this);
	[LinkName("QVideoWidget_AspectRatioMode")]
	public static extern int64 QVideoWidget_AspectRatioMode(Self* c_this);
	[LinkName("QVideoWidget_SizeHint")]
	public static extern QSize QVideoWidget_SizeHint(Self* c_this);
	[LinkName("QVideoWidget_SetFullScreen")]
	public static extern void QVideoWidget_SetFullScreen(Self* c_this, bool fullScreen);
	[LinkName("QVideoWidget_SetAspectRatioMode")]
	public static extern void QVideoWidget_SetAspectRatioMode(Self* c_this, int64 mode);
	[LinkName("QVideoWidget_Connect_FullScreenChanged")]
	public static extern void QVideoWidget_Connect_FullScreenChanged(Self* c_this, c_intptr slot);
	[LinkName("QVideoWidget_Connect_AspectRatioModeChanged")]
	public static extern void QVideoWidget_Connect_AspectRatioModeChanged(Self* c_this, c_intptr slot);
	[LinkName("QVideoWidget_Event")]
	public static extern bool QVideoWidget_Event(Self* c_this, QEvent* event);
	[LinkName("QVideoWidget_ShowEvent")]
	public static extern void QVideoWidget_ShowEvent(Self* c_this, QShowEvent* event);
	[LinkName("QVideoWidget_HideEvent")]
	public static extern void QVideoWidget_HideEvent(Self* c_this, QHideEvent* event);
	[LinkName("QVideoWidget_ResizeEvent")]
	public static extern void QVideoWidget_ResizeEvent(Self* c_this, QResizeEvent* event);
	[LinkName("QVideoWidget_MoveEvent")]
	public static extern void QVideoWidget_MoveEvent(Self* c_this, QMoveEvent* event);
	[LinkName("QVideoWidget_Tr2")]
	public static extern libqt_string QVideoWidget_Tr2(char8[] s, char8[] c);
	[LinkName("QVideoWidget_Tr3")]
	public static extern libqt_string QVideoWidget_Tr3(char8[] s, char8[] c, int32 n);
}