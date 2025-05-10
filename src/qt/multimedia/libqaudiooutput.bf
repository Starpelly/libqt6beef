using System;
using System.Interop;
namespace Qt;

public class QAudioOutput
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QAudioOutput_new();
	}
	
	public ~this()
	{
		CQt.QAudioOutput_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QAudioOutput_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QAudioOutput_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QAudioOutput_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QAudioOutput_Tr(s);
	}
	
	public void Device()
	{
		CQt.QAudioOutput_Device(this.nativePtr);
	}
	
	public float Volume()
	{
		return CQt.QAudioOutput_Volume(this.nativePtr);
	}
	
	public bool IsMuted()
	{
		return CQt.QAudioOutput_IsMuted(this.nativePtr);
	}
	
	public void SetDevice(void* device)
	{
		CQt.QAudioOutput_SetDevice(this.nativePtr, device);
	}
	
	public void SetVolume(float volume)
	{
		CQt.QAudioOutput_SetVolume(this.nativePtr, volume);
	}
	
	public void SetMuted(bool muted)
	{
		CQt.QAudioOutput_SetMuted(this.nativePtr, muted);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QAudioOutput_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QAudioOutput_Tr3(s, c, n);
	}
	
	public virtual bool Event(void* event)
	{
		return CQt.QObject_Event(this.nativePtr, event);
	}
	
	public virtual bool EventFilter(void* watched, void* event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, watched, event);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(void name)
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
	
	public void MoveToThread(void* thread)
	{
		CQt.QObject_MoveToThread(this.nativePtr, thread);
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
	
	public void SetParent(void* parent)
	{
		CQt.QObject_SetParent(this.nativePtr, parent);
	}
	
	public void InstallEventFilter(void* filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, filterObj);
	}
	
	public void RemoveEventFilter(void* obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, obj);
	}
	
	public static QMetaObject__Connection Connect(void* sender, void* signal, void* receiver, void* method)
	{
		return CQt.QObject_Connect(sender, signal, receiver, method);
	}
	
	public QMetaObject__Connection Connect2(void* sender, char8[] signal, char8[] member)
	{
		return CQt.QObject_Connect2(this.nativePtr, sender, signal, member);
	}
	
	public static bool Disconnect(void* sender, void* signal, void* receiver, void* member)
	{
		return CQt.QObject_Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__Connection* param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection(param1);
	}
	
	public void DumpObjectTree()
	{
		CQt.QObject_DumpObjectTree(this.nativePtr);
	}
	
	public void DumpObjectInfo()
	{
		CQt.QObject_DumpObjectInfo(this.nativePtr);
	}
	
	public bool SetProperty(char8[] name, void* value)
	{
		return CQt.QObject_SetProperty(this.nativePtr, name, value);
	}
	
	public void Property(char8[] name)
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
	
	public bool Inherits(char8[] classname)
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
	
	public static QMetaObject__Connection Connect5(void* sender, void* signal, void* receiver, void* method, int64 typeVal)
	{
		return CQt.QObject_Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public QMetaObject__Connection Connect4(void* sender, char8[] signal, char8[] member, int64 typeVal)
	{
		return CQt.QObject_Connect4(this.nativePtr, sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QAudioOutput_new")]
	public static extern void* QAudioOutput_new();
	[LinkName("QAudioOutput_new2")]
	public static extern void* QAudioOutput_new2(void* device);
	[LinkName("QAudioOutput_new3")]
	public static extern void* QAudioOutput_new3(void* parent);
	[LinkName("QAudioOutput_new4")]
	public static extern void* QAudioOutput_new4(void* device, void* parent);
	[LinkName("QAudioOutput_MetaObject")]
	public static extern void* QAudioOutput_MetaObject(void* c_this);
	[LinkName("QAudioOutput_Metacast")]
	public static extern void* QAudioOutput_Metacast(void* c_this, char8[] param1);
	[LinkName("QAudioOutput_Metacall")]
	public static extern int32 QAudioOutput_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QAudioOutput_Tr")]
	public static extern libqt_string QAudioOutput_Tr(char8[] s);
	[LinkName("QAudioOutput_Device")]
	public static extern void QAudioOutput_Device(void* c_this);
	[LinkName("QAudioOutput_Volume")]
	public static extern float QAudioOutput_Volume(void* c_this);
	[LinkName("QAudioOutput_IsMuted")]
	public static extern bool QAudioOutput_IsMuted(void* c_this);
	[LinkName("QAudioOutput_SetDevice")]
	public static extern void QAudioOutput_SetDevice(void* c_this, void* device);
	[LinkName("QAudioOutput_SetVolume")]
	public static extern void QAudioOutput_SetVolume(void* c_this, float volume);
	[LinkName("QAudioOutput_SetMuted")]
	public static extern void QAudioOutput_SetMuted(void* c_this, bool muted);
	[LinkName("QAudioOutput_Connect_DeviceChanged")]
	public static extern void QAudioOutput_Connect_DeviceChanged(void* c_this, c_intptr slot);
	[LinkName("QAudioOutput_Connect_VolumeChanged")]
	public static extern void QAudioOutput_Connect_VolumeChanged(void* c_this, c_intptr slot);
	[LinkName("QAudioOutput_Connect_MutedChanged")]
	public static extern void QAudioOutput_Connect_MutedChanged(void* c_this, c_intptr slot);
	[LinkName("QAudioOutput_Tr2")]
	public static extern libqt_string QAudioOutput_Tr2(char8[] s, char8[] c);
	[LinkName("QAudioOutput_Tr3")]
	public static extern libqt_string QAudioOutput_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QAudioOutput_Delete")]
	public static extern void QAudioOutput_Delete(void* self);
}