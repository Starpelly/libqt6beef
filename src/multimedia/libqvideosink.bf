using System;
using System.Interop;
namespace Qt;

public struct QVideoSink
{
	[LinkName("QVideoSink_new")]
	public static extern void* QVideoSink_new();
	[LinkName("QVideoSink_new2")]
	public static extern void* QVideoSink_new2(QObject parent);
	[LinkName("QVideoSink_MetaObject")]
	public static extern QMetaObject QVideoSink_MetaObject(void* c_this);
	[LinkName("QVideoSink_Metacast")]
	public static extern void QVideoSink_Metacast(void* c_this, char8[] param1);
	[LinkName("QVideoSink_Metacall")]
	public static extern int32 QVideoSink_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QVideoSink_Tr")]
	public static extern char8[] QVideoSink_Tr(char8[] s);
	[LinkName("QVideoSink_VideoSize")]
	public static extern QSize QVideoSink_VideoSize(void* c_this);
	[LinkName("QVideoSink_SubtitleText")]
	public static extern char8[] QVideoSink_SubtitleText(void* c_this);
	[LinkName("QVideoSink_SetSubtitleText")]
	public static extern void QVideoSink_SetSubtitleText(void* c_this, char8[] subtitle);
	[LinkName("QVideoSink_SetVideoFrame")]
	public static extern void QVideoSink_SetVideoFrame(void* c_this, QVideoFrame frame);
	[LinkName("QVideoSink_VideoFrame")]
	public static extern QVideoFrame QVideoSink_VideoFrame(void* c_this);
	[LinkName("QVideoSink_VideoFrameChanged")]
	public static extern void QVideoSink_VideoFrameChanged(void* c_this, QVideoFrame frame);
	[LinkName("QVideoSink_SubtitleTextChanged")]
	public static extern void QVideoSink_SubtitleTextChanged(void* c_this, char8[] subtitleText);
	[LinkName("QVideoSink_VideoSizeChanged")]
	public static extern void QVideoSink_VideoSizeChanged(void* c_this);
	[LinkName("QVideoSink_Tr2")]
	public static extern char8[] QVideoSink_Tr2(char8[] s, char8[] c);
	[LinkName("QVideoSink_Tr3")]
	public static extern char8[] QVideoSink_Tr3(char8[] s, char8[] c, int32 n);
}