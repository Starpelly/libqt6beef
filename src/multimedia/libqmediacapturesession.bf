using System;
using System.Interop;
namespace Qt;

public struct QMediaCaptureSession
{
	[LinkName("QMediaCaptureSession_new")]
	public static extern void* QMediaCaptureSession_new();
	[LinkName("QMediaCaptureSession_new2")]
	public static extern void* QMediaCaptureSession_new2(QObject parent);
	[LinkName("QMediaCaptureSession_MetaObject")]
	public static extern QMetaObject QMediaCaptureSession_MetaObject(void* c_this);
	[LinkName("QMediaCaptureSession_Metacast")]
	public static extern void QMediaCaptureSession_Metacast(void* c_this, char8[] param1);
	[LinkName("QMediaCaptureSession_Metacall")]
	public static extern int32 QMediaCaptureSession_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QMediaCaptureSession_Tr")]
	public static extern char8[] QMediaCaptureSession_Tr(char8[] s);
	[LinkName("QMediaCaptureSession_AudioInput")]
	public static extern QAudioInput QMediaCaptureSession_AudioInput(void* c_this);
	[LinkName("QMediaCaptureSession_SetAudioInput")]
	public static extern void QMediaCaptureSession_SetAudioInput(void* c_this, QAudioInput input);
	[LinkName("QMediaCaptureSession_Camera")]
	public static extern QCamera QMediaCaptureSession_Camera(void* c_this);
	[LinkName("QMediaCaptureSession_SetCamera")]
	public static extern void QMediaCaptureSession_SetCamera(void* c_this, QCamera camera);
	[LinkName("QMediaCaptureSession_ImageCapture")]
	public static extern QImageCapture QMediaCaptureSession_ImageCapture(void* c_this);
	[LinkName("QMediaCaptureSession_SetImageCapture")]
	public static extern void QMediaCaptureSession_SetImageCapture(void* c_this, QImageCapture imageCapture);
	[LinkName("QMediaCaptureSession_Recorder")]
	public static extern QMediaRecorder QMediaCaptureSession_Recorder(void* c_this);
	[LinkName("QMediaCaptureSession_SetRecorder")]
	public static extern void QMediaCaptureSession_SetRecorder(void* c_this, QMediaRecorder recorder);
	[LinkName("QMediaCaptureSession_SetVideoOutput")]
	public static extern void QMediaCaptureSession_SetVideoOutput(void* c_this, QObject output);
	[LinkName("QMediaCaptureSession_VideoOutput")]
	public static extern QObject QMediaCaptureSession_VideoOutput(void* c_this);
	[LinkName("QMediaCaptureSession_SetVideoSink")]
	public static extern void QMediaCaptureSession_SetVideoSink(void* c_this, QVideoSink sink);
	[LinkName("QMediaCaptureSession_VideoSink")]
	public static extern QVideoSink QMediaCaptureSession_VideoSink(void* c_this);
	[LinkName("QMediaCaptureSession_SetAudioOutput")]
	public static extern void QMediaCaptureSession_SetAudioOutput(void* c_this, QAudioOutput output);
	[LinkName("QMediaCaptureSession_AudioOutput")]
	public static extern QAudioOutput QMediaCaptureSession_AudioOutput(void* c_this);
	[LinkName("QMediaCaptureSession_AudioInputChanged")]
	public static extern void QMediaCaptureSession_AudioInputChanged(void* c_this);
	[LinkName("QMediaCaptureSession_CameraChanged")]
	public static extern void QMediaCaptureSession_CameraChanged(void* c_this);
	[LinkName("QMediaCaptureSession_ImageCaptureChanged")]
	public static extern void QMediaCaptureSession_ImageCaptureChanged(void* c_this);
	[LinkName("QMediaCaptureSession_RecorderChanged")]
	public static extern void QMediaCaptureSession_RecorderChanged(void* c_this);
	[LinkName("QMediaCaptureSession_VideoOutputChanged")]
	public static extern void QMediaCaptureSession_VideoOutputChanged(void* c_this);
	[LinkName("QMediaCaptureSession_AudioOutputChanged")]
	public static extern void QMediaCaptureSession_AudioOutputChanged(void* c_this);
	[LinkName("QMediaCaptureSession_Tr2")]
	public static extern char8[] QMediaCaptureSession_Tr2(char8[] s, char8[] c);
	[LinkName("QMediaCaptureSession_Tr3")]
	public static extern char8[] QMediaCaptureSession_Tr3(char8[] s, char8[] c, int32 n);
}