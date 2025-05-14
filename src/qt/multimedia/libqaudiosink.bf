using System;
using System.Interop;
namespace Qt;

public interface IQAudioSink
{
	void* NativePtr { get; }
}
public struct QAudioSinkPtr : IQAudioSink, IDisposable, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QAudioSink_new());
	}
	
	public void Dispose()
	{
		CQt.QAudioSink_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QAudioSink_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QAudioSink_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QAudioSink_Metacall(this.nativePtr, (int64)param1, param2, param3);
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
		CQt.QAudioSink_Start(this.nativePtr, (device == default || device.NativePtr == default) ? default : device.NativePtr);
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
public class QAudioSink
{
	public QAudioSinkPtr handle;
	
	public static implicit operator QAudioSinkPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QAudioSinkPtr.New();
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
		return QAudioSinkPtr.Tr(s);
	}
	
	public bool IsNull()
	{
		return this.handle.IsNull();
	}
	
	public void Format()
	{
		this.handle.Format();
	}
	
	public void Start(IQIODevice device)
	{
		this.handle.Start(device);
	}
	
	public void* Start2()
	{
		return this.handle.Start2();
	}
	
	public void Stop()
	{
		this.handle.Stop();
	}
	
	public void Reset()
	{
		this.handle.Reset();
	}
	
	public void Suspend()
	{
		this.handle.Suspend();
	}
	
	public void Resume()
	{
		this.handle.Resume();
	}
	
	public void SetBufferSize(int32 bytes)
	{
		this.handle.SetBufferSize(bytes);
	}
	
	public int32 BufferSize()
	{
		return this.handle.BufferSize();
	}
	
	public int32 BytesFree()
	{
		return this.handle.BytesFree();
	}
	
	public int64 ProcessedUSecs()
	{
		return this.handle.ProcessedUSecs();
	}
	
	public int64 ElapsedUSecs()
	{
		return this.handle.ElapsedUSecs();
	}
	
	public int64 Error()
	{
		return this.handle.Error();
	}
	
	public int64 State()
	{
		return this.handle.State();
	}
	
	public void SetVolume(double volume)
	{
		this.handle.SetVolume(volume);
	}
	
	public double Volume()
	{
		return this.handle.Volume();
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QAudioSinkPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QAudioSinkPtr.Tr3(s, c, n);
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
		QAudioSinkPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QAudioSinkPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QAudioSinkPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QAudioSinkPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
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