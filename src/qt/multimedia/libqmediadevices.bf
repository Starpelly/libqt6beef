using System;
using System.Interop;
namespace Qt;

public interface IQMediaDevices
{
	void* NativePtr { get; }
}
public class QMediaDevices : IQMediaDevices, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QMediaDevices_new();
	}
	
	public ~this()
	{
		CQt.QMediaDevices_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QMediaDevices_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QMediaDevices_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QMediaDevices_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QMediaDevices_Tr(s);
	}
	
	public static void[] AudioInputs()
	{
		return CQt.QMediaDevices_AudioInputs();
	}
	
	public static void[] AudioOutputs()
	{
		return CQt.QMediaDevices_AudioOutputs();
	}
	
	public static void[] VideoInputs()
	{
		return CQt.QMediaDevices_VideoInputs();
	}
	
	public static void DefaultAudioInput()
	{
		CQt.QMediaDevices_DefaultAudioInput();
	}
	
	public static void DefaultAudioOutput()
	{
		CQt.QMediaDevices_DefaultAudioOutput();
	}
	
	public static void DefaultVideoInput()
	{
		CQt.QMediaDevices_DefaultVideoInput();
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QMediaDevices_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QMediaDevices_Tr3(s, c, n);
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
	[LinkName("QMediaDevices_new")]
	public static extern void* QMediaDevices_new();
	[LinkName("QMediaDevices_new2")]
	public static extern void* QMediaDevices_new2(void* parent);
	[LinkName("QMediaDevices_MetaObject")]
	public static extern void* QMediaDevices_MetaObject(void* c_this);
	[LinkName("QMediaDevices_Metacast")]
	public static extern void* QMediaDevices_Metacast(void* c_this, char8* param1);
	[LinkName("QMediaDevices_Metacall")]
	public static extern int32 QMediaDevices_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QMediaDevices_Tr")]
	public static extern libqt_string QMediaDevices_Tr(char8* s);
	[LinkName("QMediaDevices_AudioInputs")]
	public static extern void[] QMediaDevices_AudioInputs();
	[LinkName("QMediaDevices_AudioOutputs")]
	public static extern void[] QMediaDevices_AudioOutputs();
	[LinkName("QMediaDevices_VideoInputs")]
	public static extern void[] QMediaDevices_VideoInputs();
	[LinkName("QMediaDevices_DefaultAudioInput")]
	public static extern void QMediaDevices_DefaultAudioInput();
	[LinkName("QMediaDevices_DefaultAudioOutput")]
	public static extern void QMediaDevices_DefaultAudioOutput();
	[LinkName("QMediaDevices_DefaultVideoInput")]
	public static extern void QMediaDevices_DefaultVideoInput();
	[LinkName("QMediaDevices_Connect_AudioInputsChanged")]
	public static extern void QMediaDevices_Connect_AudioInputsChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaDevices_Connect_AudioOutputsChanged")]
	public static extern void QMediaDevices_Connect_AudioOutputsChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaDevices_Connect_VideoInputsChanged")]
	public static extern void QMediaDevices_Connect_VideoInputsChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaDevices_Tr2")]
	public static extern libqt_string QMediaDevices_Tr2(char8* s, char8* c);
	[LinkName("QMediaDevices_Tr3")]
	public static extern libqt_string QMediaDevices_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QMediaDevices_Delete")]
	public static extern void QMediaDevices_Delete(void* self);
}