using System;
using System.Interop;
namespace Qt;

public interface IQMediaCaptureSession
{
	void* NativePtr { get; }
}
public class QMediaCaptureSession : IQMediaCaptureSession, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QMediaCaptureSession_new();
	}
	
	public ~this()
	{
		CQt.QMediaCaptureSession_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QMediaCaptureSession_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QMediaCaptureSession_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QMediaCaptureSession_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QMediaCaptureSession_Tr(s);
	}
	
	public void* AudioInput()
	{
		return CQt.QMediaCaptureSession_AudioInput(this.nativePtr);
	}
	
	public void SetAudioInput(IQAudioInput input)
	{
		CQt.QMediaCaptureSession_SetAudioInput(this.nativePtr, (input == null) ? null : (void*)input.NativePtr);
	}
	
	public void* Camera()
	{
		return CQt.QMediaCaptureSession_Camera(this.nativePtr);
	}
	
	public void SetCamera(IQCamera camera)
	{
		CQt.QMediaCaptureSession_SetCamera(this.nativePtr, (camera == null) ? null : (void*)camera.NativePtr);
	}
	
	public void* ImageCapture()
	{
		return CQt.QMediaCaptureSession_ImageCapture(this.nativePtr);
	}
	
	public void SetImageCapture(IQImageCapture imageCapture)
	{
		CQt.QMediaCaptureSession_SetImageCapture(this.nativePtr, (imageCapture == null) ? null : (void*)imageCapture.NativePtr);
	}
	
	public void* Recorder()
	{
		return CQt.QMediaCaptureSession_Recorder(this.nativePtr);
	}
	
	public void SetRecorder(IQMediaRecorder recorder)
	{
		CQt.QMediaCaptureSession_SetRecorder(this.nativePtr, (recorder == null) ? null : (void*)recorder.NativePtr);
	}
	
	public void SetVideoOutput(IQObject output)
	{
		CQt.QMediaCaptureSession_SetVideoOutput(this.nativePtr, (output == null) ? null : (void*)output.NativePtr);
	}
	
	public void* VideoOutput()
	{
		return CQt.QMediaCaptureSession_VideoOutput(this.nativePtr);
	}
	
	public void SetVideoSink(IQVideoSink sink)
	{
		CQt.QMediaCaptureSession_SetVideoSink(this.nativePtr, (sink == null) ? null : (void*)sink.NativePtr);
	}
	
	public void* VideoSink()
	{
		return CQt.QMediaCaptureSession_VideoSink(this.nativePtr);
	}
	
	public void SetAudioOutput(IQAudioOutput output)
	{
		CQt.QMediaCaptureSession_SetAudioOutput(this.nativePtr, (output == null) ? null : (void*)output.NativePtr);
	}
	
	public void* AudioOutput()
	{
		return CQt.QMediaCaptureSession_AudioOutput(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QMediaCaptureSession_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QMediaCaptureSession_Tr3(s, c, n);
	}
	
	public virtual bool Event(IQEvent event)
	{
		return CQt.QObject_Event(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual bool EventFilter(IQObject watched, IQEvent event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, (watched == null) ? null : (void*)watched.NativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(IQAnyStringView name)
	{
		CQt.QObject_SetObjectName(this.nativePtr, (name == default) ? default : (char8*)name.NativePtr);
	}
	
	public bool IsWidgetType()
	{
		return CQt.QObject_IsWidgetType(this.nativePtr);
	}
	
	public bool IsWindowType()
	{
		return CQt.QObject_IsWindowType(this.nativePtr);
	}
	
	public bool IsQuickItemType()
	{
		return CQt.QObject_IsQuickItemType(this.nativePtr);
	}
	
	public bool SignalsBlocked()
	{
		return CQt.QObject_SignalsBlocked(this.nativePtr);
	}
	
	public bool BlockSignals(bool b)
	{
		return CQt.QObject_BlockSignals(this.nativePtr, b);
	}
	
	public void* Thread()
	{
		return CQt.QObject_Thread(this.nativePtr);
	}
	
	public void MoveToThread(IQThread thread)
	{
		CQt.QObject_MoveToThread(this.nativePtr, (thread == null) ? null : (void*)thread.NativePtr);
	}
	
	public int32 StartTimer(int32 interval)
	{
		return CQt.QObject_StartTimer(this.nativePtr, interval);
	}
	
	public void KillTimer(int32 id)
	{
		CQt.QObject_KillTimer(this.nativePtr, id);
	}
	
	public void*[] Children()
	{
		return CQt.QObject_Children(this.nativePtr);
	}
	
	public void SetParent(IQObject parent)
	{
		CQt.QObject_SetParent(this.nativePtr, (parent == null) ? null : (void*)parent.NativePtr);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, (filterObj == null) ? null : (void*)filterObj.NativePtr);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, (obj == null) ? null : (void*)obj.NativePtr);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		CQt.QObject_Connect((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (method == default) ? default : (void*)method.NativePtr);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		CQt.QObject_Connect2(this.nativePtr, (sender == null) ? null : (void*)sender.NativePtr, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return CQt.QObject_Disconnect((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (member == default) ? default : (void*)member.NativePtr);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__Connection param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection((param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void DumpObjectTree()
	{
		CQt.QObject_DumpObjectTree(this.nativePtr);
	}
	
	public void DumpObjectInfo()
	{
		CQt.QObject_DumpObjectInfo(this.nativePtr);
	}
	
	public bool SetProperty(char8* name, IQVariant value)
	{
		return CQt.QObject_SetProperty(this.nativePtr, name, (value == default) ? default : (void*)value.NativePtr);
	}
	
	public void Property(char8* name)
	{
		CQt.QObject_Property(this.nativePtr, name);
	}
	
	public libqt_string[] DynamicPropertyNames()
	{
		return CQt.QObject_DynamicPropertyNames(this.nativePtr);
	}
	
	public void* BindingStorage()
	{
		return CQt.QObject_BindingStorage(this.nativePtr);
	}
	
	public void* BindingStorage2()
	{
		return CQt.QObject_BindingStorage2(this.nativePtr);
	}
	
	public void* Parent()
	{
		return CQt.QObject_Parent(this.nativePtr);
	}
	
	public bool Inherits(char8* classname)
	{
		return CQt.QObject_Inherits(this.nativePtr, classname);
	}
	
	public void DeleteLater()
	{
		CQt.QObject_DeleteLater(this.nativePtr);
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return CQt.QObject_StartTimer2(this.nativePtr, interval, timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		CQt.QObject_Connect5((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (method == default) ? default : (void*)method.NativePtr, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		CQt.QObject_Connect4(this.nativePtr, (sender == null) ? null : (void*)sender.NativePtr, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QMediaCaptureSession_new")]
	public static extern void* QMediaCaptureSession_new();
	[LinkName("QMediaCaptureSession_new2")]
	public static extern void* QMediaCaptureSession_new2(void* parent);
	[LinkName("QMediaCaptureSession_MetaObject")]
	public static extern void* QMediaCaptureSession_MetaObject(void* c_this);
	[LinkName("QMediaCaptureSession_Metacast")]
	public static extern void* QMediaCaptureSession_Metacast(void* c_this, char8* param1);
	[LinkName("QMediaCaptureSession_Metacall")]
	public static extern int32 QMediaCaptureSession_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QMediaCaptureSession_Tr")]
	public static extern libqt_string QMediaCaptureSession_Tr(char8* s);
	[LinkName("QMediaCaptureSession_AudioInput")]
	public static extern void* QMediaCaptureSession_AudioInput(void* c_this);
	[LinkName("QMediaCaptureSession_SetAudioInput")]
	public static extern void QMediaCaptureSession_SetAudioInput(void* c_this, void* input);
	[LinkName("QMediaCaptureSession_Camera")]
	public static extern void* QMediaCaptureSession_Camera(void* c_this);
	[LinkName("QMediaCaptureSession_SetCamera")]
	public static extern void QMediaCaptureSession_SetCamera(void* c_this, void* camera);
	[LinkName("QMediaCaptureSession_ImageCapture")]
	public static extern void* QMediaCaptureSession_ImageCapture(void* c_this);
	[LinkName("QMediaCaptureSession_SetImageCapture")]
	public static extern void QMediaCaptureSession_SetImageCapture(void* c_this, void* imageCapture);
	[LinkName("QMediaCaptureSession_Recorder")]
	public static extern void* QMediaCaptureSession_Recorder(void* c_this);
	[LinkName("QMediaCaptureSession_SetRecorder")]
	public static extern void QMediaCaptureSession_SetRecorder(void* c_this, void* recorder);
	[LinkName("QMediaCaptureSession_SetVideoOutput")]
	public static extern void QMediaCaptureSession_SetVideoOutput(void* c_this, void* output);
	[LinkName("QMediaCaptureSession_VideoOutput")]
	public static extern void* QMediaCaptureSession_VideoOutput(void* c_this);
	[LinkName("QMediaCaptureSession_SetVideoSink")]
	public static extern void QMediaCaptureSession_SetVideoSink(void* c_this, void* sink);
	[LinkName("QMediaCaptureSession_VideoSink")]
	public static extern void* QMediaCaptureSession_VideoSink(void* c_this);
	[LinkName("QMediaCaptureSession_SetAudioOutput")]
	public static extern void QMediaCaptureSession_SetAudioOutput(void* c_this, void* output);
	[LinkName("QMediaCaptureSession_AudioOutput")]
	public static extern void* QMediaCaptureSession_AudioOutput(void* c_this);
	[LinkName("QMediaCaptureSession_Connect_AudioInputChanged")]
	public static extern void QMediaCaptureSession_Connect_AudioInputChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaCaptureSession_Connect_CameraChanged")]
	public static extern void QMediaCaptureSession_Connect_CameraChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaCaptureSession_Connect_ImageCaptureChanged")]
	public static extern void QMediaCaptureSession_Connect_ImageCaptureChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaCaptureSession_Connect_RecorderChanged")]
	public static extern void QMediaCaptureSession_Connect_RecorderChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaCaptureSession_Connect_VideoOutputChanged")]
	public static extern void QMediaCaptureSession_Connect_VideoOutputChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaCaptureSession_Connect_AudioOutputChanged")]
	public static extern void QMediaCaptureSession_Connect_AudioOutputChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaCaptureSession_Tr2")]
	public static extern libqt_string QMediaCaptureSession_Tr2(char8* s, char8* c);
	[LinkName("QMediaCaptureSession_Tr3")]
	public static extern libqt_string QMediaCaptureSession_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QMediaCaptureSession_Delete")]
	public static extern void QMediaCaptureSession_Delete(void* self);
}