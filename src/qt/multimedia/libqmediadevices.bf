using System;
using System.Interop;
namespace Qt;

public struct QMediaDevices : QObject
{
	[LinkName("QMediaDevices_new")]
	public static extern QMediaDevices* QMediaDevices_new();
	[LinkName("QMediaDevices_new2")]
	public static extern QMediaDevices* QMediaDevices_new2(QObject* parent);
	[LinkName("QMediaDevices_MetaObject")]
	public static extern QMetaObject* QMediaDevices_MetaObject(Self* c_this);
	[LinkName("QMediaDevices_Metacast")]
	public static extern void* QMediaDevices_Metacast(Self* c_this, char8[] param1);
	[LinkName("QMediaDevices_Metacall")]
	public static extern int32 QMediaDevices_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QMediaDevices_Tr")]
	public static extern libqt_string QMediaDevices_Tr(char8[] s);
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
	public static extern void QMediaDevices_AudioInputsChanged(Self* c_this);
	[LinkName("QMediaDevices_AudioOutputsChanged")]
	public static extern void QMediaDevices_AudioOutputsChanged(Self* c_this);
	[LinkName("QMediaDevices_VideoInputsChanged")]
	public static extern void QMediaDevices_VideoInputsChanged(Self* c_this);
	[LinkName("QMediaDevices_Tr2")]
	public static extern libqt_string QMediaDevices_Tr2(char8[] s, char8[] c);
	[LinkName("QMediaDevices_Tr3")]
	public static extern libqt_string QMediaDevices_Tr3(char8[] s, char8[] c, int32 n);
}