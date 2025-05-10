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
public class QAudioDecoder
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QAudioDecoder_new();
	}
	
	public ~this()
	{
		CQt.QAudioDecoder_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QAudioDecoder_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QAudioDecoder_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QAudioDecoder_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
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
	
	public void SetSource(void* fileName)
	{
		CQt.QAudioDecoder_SetSource(this.nativePtr, fileName);
	}
	
	public void* SourceDevice()
	{
		return CQt.QAudioDecoder_SourceDevice(this.nativePtr);
	}
	
	public void SetSourceDevice(void* device)
	{
		CQt.QAudioDecoder_SetSourceDevice(this.nativePtr, device);
	}
	
	public void AudioFormat()
	{
		CQt.QAudioDecoder_AudioFormat(this.nativePtr);
	}
	
	public void SetAudioFormat(void* format)
	{
		CQt.QAudioDecoder_SetAudioFormat(this.nativePtr, format);
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
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QAudioDecoder_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QAudioDecoder_Tr3(s, c, n);
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
	[LinkName("QAudioDecoder_new")]
	public static extern void* QAudioDecoder_new();
	[LinkName("QAudioDecoder_new2")]
	public static extern void* QAudioDecoder_new2(void* parent);
	[LinkName("QAudioDecoder_MetaObject")]
	public static extern void* QAudioDecoder_MetaObject(void* c_this);
	[LinkName("QAudioDecoder_Metacast")]
	public static extern void* QAudioDecoder_Metacast(void* c_this, char8[] param1);
	[LinkName("QAudioDecoder_Metacall")]
	public static extern int32 QAudioDecoder_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QAudioDecoder_Tr")]
	public static extern libqt_string QAudioDecoder_Tr(char8[] s);
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
	public static extern libqt_string QAudioDecoder_Tr2(char8[] s, char8[] c);
	[LinkName("QAudioDecoder_Tr3")]
	public static extern libqt_string QAudioDecoder_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QAudioDecoder_Delete")]
	public static extern void QAudioDecoder_Delete(void* self);
}