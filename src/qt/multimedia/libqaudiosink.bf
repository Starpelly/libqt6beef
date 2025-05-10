using System;
using System.Interop;
namespace Qt;

public interface IQAudioSink
{
	void* NativePtr { get; }
}
public class QAudioSink : IQAudioSink, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QAudioSink_new();
	}
	
	public ~this()
	{
		CQt.QAudioSink_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QAudioSink_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QAudioSink_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QAudioSink_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QAudioSink_Tr(s);
	}
	
	public bool IsNull()
	{
		return CQt.QAudioSink_IsNull(this.nativePtr);
	}
	
	public void Format()
	{
		CQt.QAudioSink_Format(this.nativePtr);
	}
	
	public void Start(IQIODevice device)
	{
		CQt.QAudioSink_Start(this.nativePtr, (device == null) ? null : (void*)device.NativePtr);
	}
	
	public void* Start2()
	{
		return CQt.QAudioSink_Start2(this.nativePtr);
	}
	
	public void Stop()
	{
		CQt.QAudioSink_Stop(this.nativePtr);
	}
	
	public void Reset()
	{
		CQt.QAudioSink_Reset(this.nativePtr);
	}
	
	public void Suspend()
	{
		CQt.QAudioSink_Suspend(this.nativePtr);
	}
	
	public void Resume()
	{
		CQt.QAudioSink_Resume(this.nativePtr);
	}
	
	public void SetBufferSize(int32 bytes)
	{
		CQt.QAudioSink_SetBufferSize(this.nativePtr, bytes);
	}
	
	public int32 BufferSize()
	{
		return CQt.QAudioSink_BufferSize(this.nativePtr);
	}
	
	public int32 BytesFree()
	{
		return CQt.QAudioSink_BytesFree(this.nativePtr);
	}
	
	public int64 ProcessedUSecs()
	{
		return CQt.QAudioSink_ProcessedUSecs(this.nativePtr);
	}
	
	public int64 ElapsedUSecs()
	{
		return CQt.QAudioSink_ElapsedUSecs(this.nativePtr);
	}
	
	public int64 Error()
	{
		return CQt.QAudioSink_Error(this.nativePtr);
	}
	
	public int64 State()
	{
		return CQt.QAudioSink_State(this.nativePtr);
	}
	
	public void SetVolume(double volume)
	{
		CQt.QAudioSink_SetVolume(this.nativePtr, volume);
	}
	
	public double Volume()
	{
		return CQt.QAudioSink_Volume(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QAudioSink_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QAudioSink_Tr3(s, c, n);
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
	[LinkName("QAudioSink_new")]
	public static extern void* QAudioSink_new();
	[LinkName("QAudioSink_new2")]
	public static extern void* QAudioSink_new2(void* audioDeviceInfo);
	[LinkName("QAudioSink_new3")]
	public static extern void* QAudioSink_new3(void* format);
	[LinkName("QAudioSink_new4")]
	public static extern void* QAudioSink_new4(void* format, void* parent);
	[LinkName("QAudioSink_new5")]
	public static extern void* QAudioSink_new5(void* audioDeviceInfo, void* format);
	[LinkName("QAudioSink_new6")]
	public static extern void* QAudioSink_new6(void* audioDeviceInfo, void* format, void* parent);
	[LinkName("QAudioSink_MetaObject")]
	public static extern void* QAudioSink_MetaObject(void* c_this);
	[LinkName("QAudioSink_Metacast")]
	public static extern void* QAudioSink_Metacast(void* c_this, char8* param1);
	[LinkName("QAudioSink_Metacall")]
	public static extern int32 QAudioSink_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QAudioSink_Tr")]
	public static extern libqt_string QAudioSink_Tr(char8* s);
	[LinkName("QAudioSink_IsNull")]
	public static extern bool QAudioSink_IsNull(void* c_this);
	[LinkName("QAudioSink_Format")]
	public static extern void QAudioSink_Format(void* c_this);
	[LinkName("QAudioSink_Start")]
	public static extern void QAudioSink_Start(void* c_this, void* device);
	[LinkName("QAudioSink_Start2")]
	public static extern void* QAudioSink_Start2(void* c_this);
	[LinkName("QAudioSink_Stop")]
	public static extern void QAudioSink_Stop(void* c_this);
	[LinkName("QAudioSink_Reset")]
	public static extern void QAudioSink_Reset(void* c_this);
	[LinkName("QAudioSink_Suspend")]
	public static extern void QAudioSink_Suspend(void* c_this);
	[LinkName("QAudioSink_Resume")]
	public static extern void QAudioSink_Resume(void* c_this);
	[LinkName("QAudioSink_SetBufferSize")]
	public static extern void QAudioSink_SetBufferSize(void* c_this, int32 bytes);
	[LinkName("QAudioSink_BufferSize")]
	public static extern int32 QAudioSink_BufferSize(void* c_this);
	[LinkName("QAudioSink_BytesFree")]
	public static extern int32 QAudioSink_BytesFree(void* c_this);
	[LinkName("QAudioSink_ProcessedUSecs")]
	public static extern int64 QAudioSink_ProcessedUSecs(void* c_this);
	[LinkName("QAudioSink_ElapsedUSecs")]
	public static extern int64 QAudioSink_ElapsedUSecs(void* c_this);
	[LinkName("QAudioSink_Error")]
	public static extern int64 QAudioSink_Error(void* c_this);
	[LinkName("QAudioSink_State")]
	public static extern int64 QAudioSink_State(void* c_this);
	[LinkName("QAudioSink_SetVolume")]
	public static extern void QAudioSink_SetVolume(void* c_this, double volume);
	[LinkName("QAudioSink_Volume")]
	public static extern double QAudioSink_Volume(void* c_this);
	[LinkName("QAudioSink_Connect_StateChanged")]
	public static extern void QAudioSink_Connect_StateChanged(void* c_this, c_intptr slot);
	[LinkName("QAudioSink_Tr2")]
	public static extern libqt_string QAudioSink_Tr2(char8* s, char8* c);
	[LinkName("QAudioSink_Tr3")]
	public static extern libqt_string QAudioSink_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QAudioSink_Delete")]
	public static extern void QAudioSink_Delete(void* self);
}