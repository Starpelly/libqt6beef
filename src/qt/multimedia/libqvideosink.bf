using System;
using System.Interop;
namespace Qt;

public struct QVideoSink : QObject
{
	[LinkName("QVideoSink_new")]
	public static extern QVideoSink* QVideoSink_new();
	[LinkName("QVideoSink_new2")]
	public static extern QVideoSink* QVideoSink_new2(QObject* parent);
	[LinkName("QVideoSink_MetaObject")]
	public static extern QMetaObject* QVideoSink_MetaObject(Self* c_this);
	[LinkName("QVideoSink_Metacast")]
	public static extern void* QVideoSink_Metacast(Self* c_this, char8[] param1);
	[LinkName("QVideoSink_Metacall")]
	public static extern int32 QVideoSink_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QVideoSink_Tr")]
	public static extern libqt_string QVideoSink_Tr(char8[] s);
	[LinkName("QVideoSink_VideoSize")]
	public static extern QSize QVideoSink_VideoSize(Self* c_this);
	[LinkName("QVideoSink_SubtitleText")]
	public static extern libqt_string QVideoSink_SubtitleText(Self* c_this);
	[LinkName("QVideoSink_SetSubtitleText")]
	public static extern void QVideoSink_SetSubtitleText(Self* c_this, libqt_string subtitle);
	[LinkName("QVideoSink_SetVideoFrame")]
	public static extern void QVideoSink_SetVideoFrame(Self* c_this, QVideoFrame* frame);
	[LinkName("QVideoSink_VideoFrame")]
	public static extern QVideoFrame QVideoSink_VideoFrame(Self* c_this);
	[LinkName("QVideoSink_VideoFrameChanged")]
	public static extern void QVideoSink_VideoFrameChanged(Self* c_this, QVideoFrame* frame);
	[LinkName("QVideoSink_SubtitleTextChanged")]
	public static extern void QVideoSink_SubtitleTextChanged(Self* c_this, libqt_string subtitleText);
	[LinkName("QVideoSink_VideoSizeChanged")]
	public static extern void QVideoSink_VideoSizeChanged(Self* c_this);
	[LinkName("QVideoSink_Tr2")]
	public static extern libqt_string QVideoSink_Tr2(char8[] s, char8[] c);
	[LinkName("QVideoSink_Tr3")]
	public static extern libqt_string QVideoSink_Tr3(char8[] s, char8[] c, int32 n);
}