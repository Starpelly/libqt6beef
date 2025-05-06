using System;
using System.Interop;
namespace Qt;

public struct QMediaCaptureSession : QObject
{
	[LinkName("QMediaCaptureSession_new")]
	public static extern QMediaCaptureSession* QMediaCaptureSession_new();
	[LinkName("QMediaCaptureSession_new2")]
	public static extern QMediaCaptureSession* QMediaCaptureSession_new2(QObject* parent);
	[LinkName("QMediaCaptureSession_MetaObject")]
	public static extern QMetaObject* QMediaCaptureSession_MetaObject(Self* c_this);
	[LinkName("QMediaCaptureSession_Metacast")]
	public static extern void* QMediaCaptureSession_Metacast(Self* c_this, char8[] param1);
	[LinkName("QMediaCaptureSession_Metacall")]
	public static extern int32 QMediaCaptureSession_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QMediaCaptureSession_Tr")]
	public static extern libqt_string QMediaCaptureSession_Tr(char8[] s);
	[LinkName("QMediaCaptureSession_AudioInput")]
	public static extern QAudioInput* QMediaCaptureSession_AudioInput(Self* c_this);
	[LinkName("QMediaCaptureSession_SetAudioInput")]
	public static extern void QMediaCaptureSession_SetAudioInput(Self* c_this, QAudioInput* input);
	[LinkName("QMediaCaptureSession_Camera")]
	public static extern QCamera* QMediaCaptureSession_Camera(Self* c_this);
	[LinkName("QMediaCaptureSession_SetCamera")]
	public static extern void QMediaCaptureSession_SetCamera(Self* c_this, QCamera* camera);
	[LinkName("QMediaCaptureSession_ImageCapture")]
	public static extern QImageCapture* QMediaCaptureSession_ImageCapture(Self* c_this);
	[LinkName("QMediaCaptureSession_SetImageCapture")]
	public static extern void QMediaCaptureSession_SetImageCapture(Self* c_this, QImageCapture* imageCapture);
	[LinkName("QMediaCaptureSession_Recorder")]
	public static extern QMediaRecorder* QMediaCaptureSession_Recorder(Self* c_this);
	[LinkName("QMediaCaptureSession_SetRecorder")]
	public static extern void QMediaCaptureSession_SetRecorder(Self* c_this, QMediaRecorder* recorder);
	[LinkName("QMediaCaptureSession_SetVideoOutput")]
	public static extern void QMediaCaptureSession_SetVideoOutput(Self* c_this, QObject* output);
	[LinkName("QMediaCaptureSession_VideoOutput")]
	public static extern QObject* QMediaCaptureSession_VideoOutput(Self* c_this);
	[LinkName("QMediaCaptureSession_SetVideoSink")]
	public static extern void QMediaCaptureSession_SetVideoSink(Self* c_this, QVideoSink* sink);
	[LinkName("QMediaCaptureSession_VideoSink")]
	public static extern QVideoSink* QMediaCaptureSession_VideoSink(Self* c_this);
	[LinkName("QMediaCaptureSession_SetAudioOutput")]
	public static extern void QMediaCaptureSession_SetAudioOutput(Self* c_this, QAudioOutput* output);
	[LinkName("QMediaCaptureSession_AudioOutput")]
	public static extern QAudioOutput* QMediaCaptureSession_AudioOutput(Self* c_this);
	[LinkName("QMediaCaptureSession_Connect_AudioInputChanged")]
	public static extern void QMediaCaptureSession_Connect_AudioInputChanged(Self* c_this, c_intptr slot);
	[LinkName("QMediaCaptureSession_Connect_CameraChanged")]
	public static extern void QMediaCaptureSession_Connect_CameraChanged(Self* c_this, c_intptr slot);
	[LinkName("QMediaCaptureSession_Connect_ImageCaptureChanged")]
	public static extern void QMediaCaptureSession_Connect_ImageCaptureChanged(Self* c_this, c_intptr slot);
	[LinkName("QMediaCaptureSession_Connect_RecorderChanged")]
	public static extern void QMediaCaptureSession_Connect_RecorderChanged(Self* c_this, c_intptr slot);
	[LinkName("QMediaCaptureSession_Connect_VideoOutputChanged")]
	public static extern void QMediaCaptureSession_Connect_VideoOutputChanged(Self* c_this, c_intptr slot);
	[LinkName("QMediaCaptureSession_Connect_AudioOutputChanged")]
	public static extern void QMediaCaptureSession_Connect_AudioOutputChanged(Self* c_this, c_intptr slot);
	[LinkName("QMediaCaptureSession_Tr2")]
	public static extern libqt_string QMediaCaptureSession_Tr2(char8[] s, char8[] c);
	[LinkName("QMediaCaptureSession_Tr3")]
	public static extern libqt_string QMediaCaptureSession_Tr3(char8[] s, char8[] c, int32 n);
}