using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QSoundEffect__Loop
{
	Infinite = -2,
}
[AllowDuplicates]
public enum QSoundEffect__Status
{
	Null = 0,
	Loading = 1,
	Ready = 2,
	Error = 3,
}
public interface IQSoundEffect
{
	void* NativePtr { get; }
}
public struct QSoundEffectPtr : IQSoundEffect, IDisposable, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QSoundEffect_new());
	}
	
	public void Dispose()
	{
		CQt.QSoundEffect_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QSoundEffect_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QSoundEffect_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QSoundEffect_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QSoundEffect_Tr(s);
	}
	
	public static libqt_string[] SupportedMimeTypes()
	{
		return CQt.QSoundEffect_SupportedMimeTypes();
	}
	
	public void Source()
	{
		CQt.QSoundEffect_Source(this.nativePtr);
	}
	
	public void SetSource(IQUrl url)
	{
		CQt.QSoundEffect_SetSource(this.nativePtr, (url == default || url.NativePtr == default) ? default : url.NativePtr);
	}
	
	public int32 LoopCount()
	{
		return CQt.QSoundEffect_LoopCount(this.nativePtr);
	}
	
	public int32 LoopsRemaining()
	{
		return CQt.QSoundEffect_LoopsRemaining(this.nativePtr);
	}
	
	public void SetLoopCount(int32 loopCount)
	{
		CQt.QSoundEffect_SetLoopCount(this.nativePtr, loopCount);
	}
	
	public void AudioDevice()
	{
		CQt.QSoundEffect_AudioDevice(this.nativePtr);
	}
	
	public void SetAudioDevice(IQAudioDevice device)
	{
		CQt.QSoundEffect_SetAudioDevice(this.nativePtr, (device == default || device.NativePtr == default) ? default : device.NativePtr);
	}
	
	public float Volume()
	{
		return CQt.QSoundEffect_Volume(this.nativePtr);
	}
	
	public void SetVolume(float volume)
	{
		CQt.QSoundEffect_SetVolume(this.nativePtr, volume);
	}
	
	public bool IsMuted()
	{
		return CQt.QSoundEffect_IsMuted(this.nativePtr);
	}
	
	public void SetMuted(bool muted)
	{
		CQt.QSoundEffect_SetMuted(this.nativePtr, muted);
	}
	
	public bool IsLoaded()
	{
		return CQt.QSoundEffect_IsLoaded(this.nativePtr);
	}
	
	public bool IsPlaying()
	{
		return CQt.QSoundEffect_IsPlaying(this.nativePtr);
	}
	
	public int64 Status()
	{
		return CQt.QSoundEffect_Status(this.nativePtr);
	}
	
	public void Play()
	{
		CQt.QSoundEffect_Play(this.nativePtr);
	}
	
	public void Stop()
	{
		CQt.QSoundEffect_Stop(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QSoundEffect_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QSoundEffect_Tr3(s, c, n);
	}
	
	public bool Event(IQEvent event)
	{
		return CQt.QObject_Event(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public bool EventFilter(IQObject watched, IQEvent event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, (watched == default || watched.NativePtr == default) ? default : watched.NativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(char8* name)
	{
		CQt.QObject_SetObjectName(this.nativePtr, name);
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
		CQt.QObject_MoveToThread(this.nativePtr, (thread == default || thread.NativePtr == default) ? default : thread.NativePtr);
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
		CQt.QObject_SetParent(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, (filterObj == default || filterObj.NativePtr == default) ? default : filterObj.NativePtr);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, (obj == default || obj.NativePtr == default) ? default : obj.NativePtr);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		CQt.QObject_Connect((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (method == default || method.NativePtr == default) ? default : method.NativePtr);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		CQt.QObject_Connect2(this.nativePtr, (sender == default || sender.NativePtr == default) ? default : sender.NativePtr, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return CQt.QObject_Disconnect((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (member == default || member.NativePtr == default) ? default : member.NativePtr);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection((param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
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
		return CQt.QObject_SetProperty(this.nativePtr, name, (value == default || value.NativePtr == default) ? default : value.NativePtr);
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
		return CQt.QObject_StartTimer2(this.nativePtr, interval, (int64)timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		CQt.QObject_Connect5((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (method == default || method.NativePtr == default) ? default : method.NativePtr, (int64)typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		CQt.QObject_Connect4(this.nativePtr, (sender == default || sender.NativePtr == default) ? default : sender.NativePtr, signal, member, (int64)typeVal);
	}
	
}
public class QSoundEffect
{
	public QSoundEffectPtr handle;
	
	public static implicit operator QSoundEffectPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QSoundEffectPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* MetaObject()
	{
		return this.handle.MetaObject();
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return this.handle.Metacast(param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return this.handle.Metacall(param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return QSoundEffectPtr.Tr(s);
	}
	
	public static libqt_string[] SupportedMimeTypes()
	{
		return QSoundEffectPtr.SupportedMimeTypes();
	}
	
	public void Source()
	{
		this.handle.Source();
	}
	
	public void SetSource(IQUrl url)
	{
		this.handle.SetSource(url);
	}
	
	public int32 LoopCount()
	{
		return this.handle.LoopCount();
	}
	
	public int32 LoopsRemaining()
	{
		return this.handle.LoopsRemaining();
	}
	
	public void SetLoopCount(int32 loopCount)
	{
		this.handle.SetLoopCount(loopCount);
	}
	
	public void AudioDevice()
	{
		this.handle.AudioDevice();
	}
	
	public void SetAudioDevice(IQAudioDevice device)
	{
		this.handle.SetAudioDevice(device);
	}
	
	public float Volume()
	{
		return this.handle.Volume();
	}
	
	public void SetVolume(float volume)
	{
		this.handle.SetVolume(volume);
	}
	
	public bool IsMuted()
	{
		return this.handle.IsMuted();
	}
	
	public void SetMuted(bool muted)
	{
		this.handle.SetMuted(muted);
	}
	
	public bool IsLoaded()
	{
		return this.handle.IsLoaded();
	}
	
	public bool IsPlaying()
	{
		return this.handle.IsPlaying();
	}
	
	public int64 Status()
	{
		return this.handle.Status();
	}
	
	public void Play()
	{
		this.handle.Play();
	}
	
	public void Stop()
	{
		this.handle.Stop();
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QSoundEffectPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QSoundEffectPtr.Tr3(s, c, n);
	}
	
	public virtual bool Event(IQEvent event)
	{
		return this.handle.Event(event);
	}
	
	public virtual bool EventFilter(IQObject watched, IQEvent event)
	{
		return this.handle.EventFilter(watched, event);
	}
	
	public libqt_string ObjectName()
	{
		return this.handle.ObjectName();
	}
	
	public void SetObjectName(char8* name)
	{
		this.handle.SetObjectName(name);
	}
	
	public bool IsWidgetType()
	{
		return this.handle.IsWidgetType();
	}
	
	public bool IsWindowType()
	{
		return this.handle.IsWindowType();
	}
	
	public bool IsQuickItemType()
	{
		return this.handle.IsQuickItemType();
	}
	
	public bool SignalsBlocked()
	{
		return this.handle.SignalsBlocked();
	}
	
	public bool BlockSignals(bool b)
	{
		return this.handle.BlockSignals(b);
	}
	
	public void* Thread()
	{
		return this.handle.Thread();
	}
	
	public void MoveToThread(IQThread thread)
	{
		this.handle.MoveToThread(thread);
	}
	
	public int32 StartTimer(int32 interval)
	{
		return this.handle.StartTimer(interval);
	}
	
	public void KillTimer(int32 id)
	{
		this.handle.KillTimer(id);
	}
	
	public void*[] Children()
	{
		return this.handle.Children();
	}
	
	public void SetParent(IQObject parent)
	{
		this.handle.SetParent(parent);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		this.handle.InstallEventFilter(filterObj);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		this.handle.RemoveEventFilter(obj);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		QSoundEffectPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QSoundEffectPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QSoundEffectPtr.DisconnectWithQMetaObjectConnection(param1);
	}
	
	public void DumpObjectTree()
	{
		this.handle.DumpObjectTree();
	}
	
	public void DumpObjectInfo()
	{
		this.handle.DumpObjectInfo();
	}
	
	public bool SetProperty(char8* name, IQVariant value)
	{
		return this.handle.SetProperty(name, value);
	}
	
	public void Property(char8* name)
	{
		this.handle.Property(name);
	}
	
	public libqt_string[] DynamicPropertyNames()
	{
		return this.handle.DynamicPropertyNames();
	}
	
	public void* BindingStorage()
	{
		return this.handle.BindingStorage();
	}
	
	public void* BindingStorage2()
	{
		return this.handle.BindingStorage2();
	}
	
	public void* Parent()
	{
		return this.handle.Parent();
	}
	
	public bool Inherits(char8* classname)
	{
		return this.handle.Inherits(classname);
	}
	
	public void DeleteLater()
	{
		this.handle.DeleteLater();
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return this.handle.StartTimer2(interval, timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		QSoundEffectPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QSoundEffect_new")]
	public static extern void* QSoundEffect_new();
	[LinkName("QSoundEffect_new2")]
	public static extern void* QSoundEffect_new2(void* audioDevice);
	[LinkName("QSoundEffect_new3")]
	public static extern void* QSoundEffect_new3(void* parent);
	[LinkName("QSoundEffect_new4")]
	public static extern void* QSoundEffect_new4(void* audioDevice, void* parent);
	[LinkName("QSoundEffect_MetaObject")]
	public static extern void* QSoundEffect_MetaObject(void* c_this);
	[LinkName("QSoundEffect_Metacast")]
	public static extern void* QSoundEffect_Metacast(void* c_this, char8* param1);
	[LinkName("QSoundEffect_Metacall")]
	public static extern int32 QSoundEffect_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QSoundEffect_Tr")]
	public static extern libqt_string QSoundEffect_Tr(char8* s);
	[LinkName("QSoundEffect_SupportedMimeTypes")]
	public static extern libqt_string[] QSoundEffect_SupportedMimeTypes();
	[LinkName("QSoundEffect_Source")]
	public static extern void QSoundEffect_Source(void* c_this);
	[LinkName("QSoundEffect_SetSource")]
	public static extern void QSoundEffect_SetSource(void* c_this, void* url);
	[LinkName("QSoundEffect_LoopCount")]
	public static extern int32 QSoundEffect_LoopCount(void* c_this);
	[LinkName("QSoundEffect_LoopsRemaining")]
	public static extern int32 QSoundEffect_LoopsRemaining(void* c_this);
	[LinkName("QSoundEffect_SetLoopCount")]
	public static extern void QSoundEffect_SetLoopCount(void* c_this, int32 loopCount);
	[LinkName("QSoundEffect_AudioDevice")]
	public static extern void QSoundEffect_AudioDevice(void* c_this);
	[LinkName("QSoundEffect_SetAudioDevice")]
	public static extern void QSoundEffect_SetAudioDevice(void* c_this, void* device);
	[LinkName("QSoundEffect_Volume")]
	public static extern float QSoundEffect_Volume(void* c_this);
	[LinkName("QSoundEffect_SetVolume")]
	public static extern void QSoundEffect_SetVolume(void* c_this, float volume);
	[LinkName("QSoundEffect_IsMuted")]
	public static extern bool QSoundEffect_IsMuted(void* c_this);
	[LinkName("QSoundEffect_SetMuted")]
	public static extern void QSoundEffect_SetMuted(void* c_this, bool muted);
	[LinkName("QSoundEffect_IsLoaded")]
	public static extern bool QSoundEffect_IsLoaded(void* c_this);
	[LinkName("QSoundEffect_IsPlaying")]
	public static extern bool QSoundEffect_IsPlaying(void* c_this);
	[LinkName("QSoundEffect_Status")]
	public static extern int64 QSoundEffect_Status(void* c_this);
	[LinkName("QSoundEffect_Connect_SourceChanged")]
	public static extern void QSoundEffect_Connect_SourceChanged(void* c_this, c_intptr slot);
	[LinkName("QSoundEffect_Connect_LoopCountChanged")]
	public static extern void QSoundEffect_Connect_LoopCountChanged(void* c_this, c_intptr slot);
	[LinkName("QSoundEffect_Connect_LoopsRemainingChanged")]
	public static extern void QSoundEffect_Connect_LoopsRemainingChanged(void* c_this, c_intptr slot);
	[LinkName("QSoundEffect_Connect_VolumeChanged")]
	public static extern void QSoundEffect_Connect_VolumeChanged(void* c_this, c_intptr slot);
	[LinkName("QSoundEffect_Connect_MutedChanged")]
	public static extern void QSoundEffect_Connect_MutedChanged(void* c_this, c_intptr slot);
	[LinkName("QSoundEffect_Connect_LoadedChanged")]
	public static extern void QSoundEffect_Connect_LoadedChanged(void* c_this, c_intptr slot);
	[LinkName("QSoundEffect_Connect_PlayingChanged")]
	public static extern void QSoundEffect_Connect_PlayingChanged(void* c_this, c_intptr slot);
	[LinkName("QSoundEffect_Connect_StatusChanged")]
	public static extern void QSoundEffect_Connect_StatusChanged(void* c_this, c_intptr slot);
	[LinkName("QSoundEffect_Connect_AudioDeviceChanged")]
	public static extern void QSoundEffect_Connect_AudioDeviceChanged(void* c_this, c_intptr slot);
	[LinkName("QSoundEffect_Play")]
	public static extern void QSoundEffect_Play(void* c_this);
	[LinkName("QSoundEffect_Stop")]
	public static extern void QSoundEffect_Stop(void* c_this);
	[LinkName("QSoundEffect_Tr2")]
	public static extern libqt_string QSoundEffect_Tr2(char8* s, char8* c);
	[LinkName("QSoundEffect_Tr3")]
	public static extern libqt_string QSoundEffect_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QSoundEffect_Delete")]
	public static extern void QSoundEffect_Delete(void* self);
}