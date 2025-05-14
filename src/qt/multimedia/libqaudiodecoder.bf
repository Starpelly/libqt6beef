using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QAudioDecoder__Error
{
	NoError = 0,
	ResourceError = 1,
	FormatError = 2,
	AccessDeniedError = 3,
	NotSupportedError = 4,
}
public interface IQAudioDecoder
{
	void* NativePtr { get; }
}
public struct QAudioDecoderPtr : IQAudioDecoder, IDisposable, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QAudioDecoder_new());
	}
	
	public void Dispose()
	{
		CQt.QAudioDecoder_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QAudioDecoder_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QAudioDecoder_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QAudioDecoder_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QAudioDecoder_Tr(s);
	}
	
	public bool IsSupported()
	{
		return CQt.QAudioDecoder_IsSupported(this.nativePtr);
	}
	
	public bool IsDecoding()
	{
		return CQt.QAudioDecoder_IsDecoding(this.nativePtr);
	}
	
	public void Source()
	{
		CQt.QAudioDecoder_Source(this.nativePtr);
	}
	
	public void SetSource(IQUrl fileName)
	{
		CQt.QAudioDecoder_SetSource(this.nativePtr, (fileName == default || fileName.NativePtr == default) ? default : fileName.NativePtr);
	}
	
	public void* SourceDevice()
	{
		return CQt.QAudioDecoder_SourceDevice(this.nativePtr);
	}
	
	public void SetSourceDevice(IQIODevice device)
	{
		CQt.QAudioDecoder_SetSourceDevice(this.nativePtr, (device == default || device.NativePtr == default) ? default : device.NativePtr);
	}
	
	public void AudioFormat()
	{
		CQt.QAudioDecoder_AudioFormat(this.nativePtr);
	}
	
	public void SetAudioFormat(IQAudioFormat format)
	{
		CQt.QAudioDecoder_SetAudioFormat(this.nativePtr, (format == default || format.NativePtr == default) ? default : format.NativePtr);
	}
	
	public int64 Error()
	{
		return CQt.QAudioDecoder_Error(this.nativePtr);
	}
	
	public libqt_string ErrorString()
	{
		return CQt.QAudioDecoder_ErrorString(this.nativePtr);
	}
	
	public void Read()
	{
		CQt.QAudioDecoder_Read(this.nativePtr);
	}
	
	public bool BufferAvailable()
	{
		return CQt.QAudioDecoder_BufferAvailable(this.nativePtr);
	}
	
	public int64 Position()
	{
		return CQt.QAudioDecoder_Position(this.nativePtr);
	}
	
	public int64 Duration()
	{
		return CQt.QAudioDecoder_Duration(this.nativePtr);
	}
	
	public void Start()
	{
		CQt.QAudioDecoder_Start(this.nativePtr);
	}
	
	public void Stop()
	{
		CQt.QAudioDecoder_Stop(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QAudioDecoder_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QAudioDecoder_Tr3(s, c, n);
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
public class QAudioDecoder
{
	public QAudioDecoderPtr handle;
	
	public static implicit operator QAudioDecoderPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QAudioDecoderPtr.New();
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
		return QAudioDecoderPtr.Tr(s);
	}
	
	public bool IsSupported()
	{
		return this.handle.IsSupported();
	}
	
	public bool IsDecoding()
	{
		return this.handle.IsDecoding();
	}
	
	public void Source()
	{
		this.handle.Source();
	}
	
	public void SetSource(IQUrl fileName)
	{
		this.handle.SetSource(fileName);
	}
	
	public void* SourceDevice()
	{
		return this.handle.SourceDevice();
	}
	
	public void SetSourceDevice(IQIODevice device)
	{
		this.handle.SetSourceDevice(device);
	}
	
	public void AudioFormat()
	{
		this.handle.AudioFormat();
	}
	
	public void SetAudioFormat(IQAudioFormat format)
	{
		this.handle.SetAudioFormat(format);
	}
	
	public int64 Error()
	{
		return this.handle.Error();
	}
	
	public libqt_string ErrorString()
	{
		return this.handle.ErrorString();
	}
	
	public void Read()
	{
		this.handle.Read();
	}
	
	public bool BufferAvailable()
	{
		return this.handle.BufferAvailable();
	}
	
	public int64 Position()
	{
		return this.handle.Position();
	}
	
	public int64 Duration()
	{
		return this.handle.Duration();
	}
	
	public void Start()
	{
		this.handle.Start();
	}
	
	public void Stop()
	{
		this.handle.Stop();
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QAudioDecoderPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QAudioDecoderPtr.Tr3(s, c, n);
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
		QAudioDecoderPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QAudioDecoderPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QAudioDecoderPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QAudioDecoderPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QAudioDecoder_new")]
	public static extern void* QAudioDecoder_new();
	[LinkName("QAudioDecoder_new2")]
	public static extern void* QAudioDecoder_new2(void* parent);
	[LinkName("QAudioDecoder_MetaObject")]
	public static extern void* QAudioDecoder_MetaObject(void* c_this);
	[LinkName("QAudioDecoder_Metacast")]
	public static extern void* QAudioDecoder_Metacast(void* c_this, char8* param1);
	[LinkName("QAudioDecoder_Metacall")]
	public static extern int32 QAudioDecoder_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QAudioDecoder_Tr")]
	public static extern libqt_string QAudioDecoder_Tr(char8* s);
	[LinkName("QAudioDecoder_IsSupported")]
	public static extern bool QAudioDecoder_IsSupported(void* c_this);
	[LinkName("QAudioDecoder_IsDecoding")]
	public static extern bool QAudioDecoder_IsDecoding(void* c_this);
	[LinkName("QAudioDecoder_Source")]
	public static extern void QAudioDecoder_Source(void* c_this);
	[LinkName("QAudioDecoder_SetSource")]
	public static extern void QAudioDecoder_SetSource(void* c_this, void* fileName);
	[LinkName("QAudioDecoder_SourceDevice")]
	public static extern void* QAudioDecoder_SourceDevice(void* c_this);
	[LinkName("QAudioDecoder_SetSourceDevice")]
	public static extern void QAudioDecoder_SetSourceDevice(void* c_this, void* device);
	[LinkName("QAudioDecoder_AudioFormat")]
	public static extern void QAudioDecoder_AudioFormat(void* c_this);
	[LinkName("QAudioDecoder_SetAudioFormat")]
	public static extern void QAudioDecoder_SetAudioFormat(void* c_this, void* format);
	[LinkName("QAudioDecoder_Error")]
	public static extern int64 QAudioDecoder_Error(void* c_this);
	[LinkName("QAudioDecoder_ErrorString")]
	public static extern libqt_string QAudioDecoder_ErrorString(void* c_this);
	[LinkName("QAudioDecoder_Read")]
	public static extern void QAudioDecoder_Read(void* c_this);
	[LinkName("QAudioDecoder_BufferAvailable")]
	public static extern bool QAudioDecoder_BufferAvailable(void* c_this);
	[LinkName("QAudioDecoder_Position")]
	public static extern int64 QAudioDecoder_Position(void* c_this);
	[LinkName("QAudioDecoder_Duration")]
	public static extern int64 QAudioDecoder_Duration(void* c_this);
	[LinkName("QAudioDecoder_Start")]
	public static extern void QAudioDecoder_Start(void* c_this);
	[LinkName("QAudioDecoder_Stop")]
	public static extern void QAudioDecoder_Stop(void* c_this);
	[LinkName("QAudioDecoder_Tr2")]
	public static extern libqt_string QAudioDecoder_Tr2(char8* s, char8* c);
	[LinkName("QAudioDecoder_Tr3")]
	public static extern libqt_string QAudioDecoder_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QAudioDecoder_Delete")]
	public static extern void QAudioDecoder_Delete(void* self);
}