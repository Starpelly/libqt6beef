using System;
using System.Interop;
namespace Qt;

public struct QMediaDevices
{
	[LinkName("QMediaDevices_new")]
	public static extern void* QMediaDevices_new();
	[LinkName("QMediaDevices_new2")]
	public static extern void* QMediaDevices_new2(QObject parent);
	[LinkName("QMediaDevices_MetaObject")]
	public static extern QMetaObject QMediaDevices_MetaObject(void* c_this);
	[LinkName("QMediaDevices_Metacast")]
	public static extern void QMediaDevices_Metacast(void* c_this, char8[] param1);
	[LinkName("QMediaDevices_Metacall")]
	public static extern int32 QMediaDevices_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QMediaDevices_Tr")]
	public static extern char8[] QMediaDevices_Tr(char8[] s);
	[LinkName("QMediaDevices_AudioInputs")]
	public static extern QAudioDevice[] QMediaDevices_AudioInputs();
	[LinkName("QMediaDevices_AudioOutputs")]
	public static extern QAudioDevice[] QMediaDevices_AudioOutputs();
	[LinkName("QMediaDevices_VideoInputs")]
	public static extern QCameraDevice[] QMediaDevices_VideoInputs();
	[LinkName("QMediaDevices_DefaultAudioInput")]
	public static extern QAudioDevice QMediaDevices_DefaultAudioInput();
	[LinkName("QMediaDevices_DefaultAudioOutput")]
	public static extern QAudioDevice QMediaDevices_DefaultAudioOutput();
	[LinkName("QMediaDevices_DefaultVideoInput")]
	public static extern QCameraDevice QMediaDevices_DefaultVideoInput();
	[LinkName("QMediaDevices_AudioInputsChanged")]
	public static extern void QMediaDevices_AudioInputsChanged(void* c_this);
	[LinkName("QMediaDevices_AudioOutputsChanged")]
	public static extern void QMediaDevices_AudioOutputsChanged(void* c_this);
	[LinkName("QMediaDevices_VideoInputsChanged")]
	public static extern void QMediaDevices_VideoInputsChanged(void* c_this);
	[LinkName("QMediaDevices_Tr2")]
	public static extern char8[] QMediaDevices_Tr2(char8[] s, char8[] c);
	[LinkName("QMediaDevices_Tr3")]
	public static extern char8[] QMediaDevices_Tr3(char8[] s, char8[] c, int32 n);
}