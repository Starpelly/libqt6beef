using System;
using System.Interop;
namespace Qt;

public interface IQWaveDecoder
{
	void* NativePtr { get; }
}
public class QWaveDecoder : IQWaveDecoder, IQIODevice
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQIODevice device)
	{
		this.nativePtr = CQt.QWaveDecoder_new((device == null) ? null : (void*)device.NativePtr);
	}
	
	public ~this()
	{
		CQt.QWaveDecoder_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QWaveDecoder_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QWaveDecoder_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QWaveDecoder_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QWaveDecoder_Tr(s);
	}
	
	public void AudioFormat()
	{
		CQt.QWaveDecoder_AudioFormat(this.nativePtr);
	}
	
	public void* GetDevice()
	{
		return CQt.QWaveDecoder_GetDevice(this.nativePtr);
	}
	
	public int32 Duration()
	{
		return CQt.QWaveDecoder_Duration(this.nativePtr);
	}
	
	public static int64 HeaderLength()
	{
		return CQt.QWaveDecoder_HeaderLength();
	}
	
	public virtual bool Open(int64 mode)
	{
		return CQt.QWaveDecoder_Open(this.nativePtr, mode);
	}
	
	public virtual void Close()
	{
		CQt.QWaveDecoder_Close(this.nativePtr);
	}
	
	public virtual bool Seek(int64 pos)
	{
		return CQt.QWaveDecoder_Seek(this.nativePtr, pos);
	}
	
	public virtual int64 Pos()
	{
		return CQt.QWaveDecoder_Pos(this.nativePtr);
	}
	
	public virtual int64 Size()
	{
		return CQt.QWaveDecoder_Size(this.nativePtr);
	}
	
	public virtual bool IsSequential()
	{
		return CQt.QWaveDecoder_IsSequential(this.nativePtr);
	}
	
	public virtual int64 BytesAvailable()
	{
		return CQt.QWaveDecoder_BytesAvailable(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QWaveDecoder_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QWaveDecoder_Tr3(s, c, n);
	}
	
	public int64 OpenMode()
	{
		return CQt.QIODevice_OpenMode(this.nativePtr);
	}
	
	public void SetTextModeEnabled(bool enabled)
	{
		CQt.QIODevice_SetTextModeEnabled(this.nativePtr, enabled);
	}
	
	public bool IsTextModeEnabled()
	{
		return CQt.QIODevice_IsTextModeEnabled(this.nativePtr);
	}
	
	public bool IsOpen()
	{
		return CQt.QIODevice_IsOpen(this.nativePtr);
	}
	
	public bool IsReadable()
	{
		return CQt.QIODevice_IsReadable(this.nativePtr);
	}
	
	public bool IsWritable()
	{
		return CQt.QIODevice_IsWritable(this.nativePtr);
	}
	
	public int32 ReadChannelCount()
	{
		return CQt.QIODevice_ReadChannelCount(this.nativePtr);
	}
	
	public int32 WriteChannelCount()
	{
		return CQt.QIODevice_WriteChannelCount(this.nativePtr);
	}
	
	public int32 CurrentReadChannel()
	{
		return CQt.QIODevice_CurrentReadChannel(this.nativePtr);
	}
	
	public void SetCurrentReadChannel(int32 channel)
	{
		CQt.QIODevice_SetCurrentReadChannel(this.nativePtr, channel);
	}
	
	public int32 CurrentWriteChannel()
	{
		return CQt.QIODevice_CurrentWriteChannel(this.nativePtr);
	}
	
	public void SetCurrentWriteChannel(int32 channel)
	{
		CQt.QIODevice_SetCurrentWriteChannel(this.nativePtr, channel);
	}
	
	public virtual bool AtEnd()
	{
		return CQt.QIODevice_AtEnd(this.nativePtr);
	}
	
	public virtual bool Reset()
	{
		return CQt.QIODevice_Reset(this.nativePtr);
	}
	
	public virtual int64 BytesToWrite()
	{
		return CQt.QIODevice_BytesToWrite(this.nativePtr);
	}
	
	public int64 Read(char8* data, int64 maxlen)
	{
		return CQt.QIODevice_Read(this.nativePtr, data, maxlen);
	}
	
	public libqt_string ReadWithMaxlen(int64 maxlen)
	{
		return CQt.QIODevice_ReadWithMaxlen(this.nativePtr, maxlen);
	}
	
	public libqt_string ReadAll()
	{
		return CQt.QIODevice_ReadAll(this.nativePtr);
	}
	
	public int64 ReadLine(char8* data, int64 maxlen)
	{
		return CQt.QIODevice_ReadLine(this.nativePtr, data, maxlen);
	}
	
	public libqt_string ReadLine2()
	{
		return CQt.QIODevice_ReadLine2(this.nativePtr);
	}
	
	public virtual bool CanReadLine()
	{
		return CQt.QIODevice_CanReadLine(this.nativePtr);
	}
	
	public void StartTransaction()
	{
		CQt.QIODevice_StartTransaction(this.nativePtr);
	}
	
	public void CommitTransaction()
	{
		CQt.QIODevice_CommitTransaction(this.nativePtr);
	}
	
	public void RollbackTransaction()
	{
		CQt.QIODevice_RollbackTransaction(this.nativePtr);
	}
	
	public bool IsTransactionStarted()
	{
		return CQt.QIODevice_IsTransactionStarted(this.nativePtr);
	}
	
	public int64 Write(char8* data, int64 lenVal)
	{
		return CQt.QIODevice_Write(this.nativePtr, data, lenVal);
	}
	
	public int64 WriteWithData(char8* data)
	{
		return CQt.QIODevice_WriteWithData(this.nativePtr, data);
	}
	
	public int64 Write2(String data)
	{
		return CQt.QIODevice_Write2(this.nativePtr, libqt_string(data));
	}
	
	public int64 Peek(char8* data, int64 maxlen)
	{
		return CQt.QIODevice_Peek(this.nativePtr, data, maxlen);
	}
	
	public libqt_string PeekWithMaxlen(int64 maxlen)
	{
		return CQt.QIODevice_PeekWithMaxlen(this.nativePtr, maxlen);
	}
	
	public int64 Skip(int64 maxSize)
	{
		return CQt.QIODevice_Skip(this.nativePtr, maxSize);
	}
	
	public virtual bool WaitForReadyRead(int32 msecs)
	{
		return CQt.QIODevice_WaitForReadyRead(this.nativePtr, msecs);
	}
	
	public virtual bool WaitForBytesWritten(int32 msecs)
	{
		return CQt.QIODevice_WaitForBytesWritten(this.nativePtr, msecs);
	}
	
	public void UngetChar(int8 c)
	{
		CQt.QIODevice_UngetChar(this.nativePtr, c);
	}
	
	public bool PutChar(int8 c)
	{
		return CQt.QIODevice_PutChar(this.nativePtr, c);
	}
	
	public bool GetChar(char8* c)
	{
		return CQt.QIODevice_GetChar(this.nativePtr, c);
	}
	
	public libqt_string ErrorString()
	{
		return CQt.QIODevice_ErrorString(this.nativePtr);
	}
	
	public libqt_string ReadLine1(int64 maxlen)
	{
		return CQt.QIODevice_ReadLine1(this.nativePtr, maxlen);
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
	[LinkName("QWaveDecoder_new")]
	public static extern void* QWaveDecoder_new(void* device);
	[LinkName("QWaveDecoder_new2")]
	public static extern void* QWaveDecoder_new2(void* device, void* format);
	[LinkName("QWaveDecoder_new3")]
	public static extern void* QWaveDecoder_new3(void* device, void* parent);
	[LinkName("QWaveDecoder_new4")]
	public static extern void* QWaveDecoder_new4(void* device, void* format, void* parent);
	[LinkName("QWaveDecoder_MetaObject")]
	public static extern void* QWaveDecoder_MetaObject(void* c_this);
	[LinkName("QWaveDecoder_Metacast")]
	public static extern void* QWaveDecoder_Metacast(void* c_this, char8* param1);
	[LinkName("QWaveDecoder_Metacall")]
	public static extern int32 QWaveDecoder_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QWaveDecoder_Tr")]
	public static extern libqt_string QWaveDecoder_Tr(char8* s);
	[LinkName("QWaveDecoder_AudioFormat")]
	public static extern void QWaveDecoder_AudioFormat(void* c_this);
	[LinkName("QWaveDecoder_GetDevice")]
	public static extern void* QWaveDecoder_GetDevice(void* c_this);
	[LinkName("QWaveDecoder_Duration")]
	public static extern int32 QWaveDecoder_Duration(void* c_this);
	[LinkName("QWaveDecoder_HeaderLength")]
	public static extern int64 QWaveDecoder_HeaderLength();
	[LinkName("QWaveDecoder_Open")]
	public static extern bool QWaveDecoder_Open(void* c_this, int64 mode);
	[LinkName("QWaveDecoder_Close")]
	public static extern void QWaveDecoder_Close(void* c_this);
	[LinkName("QWaveDecoder_Seek")]
	public static extern bool QWaveDecoder_Seek(void* c_this, int64 pos);
	[LinkName("QWaveDecoder_Pos")]
	public static extern int64 QWaveDecoder_Pos(void* c_this);
	[LinkName("QWaveDecoder_Size")]
	public static extern int64 QWaveDecoder_Size(void* c_this);
	[LinkName("QWaveDecoder_IsSequential")]
	public static extern bool QWaveDecoder_IsSequential(void* c_this);
	[LinkName("QWaveDecoder_BytesAvailable")]
	public static extern int64 QWaveDecoder_BytesAvailable(void* c_this);
	[LinkName("QWaveDecoder_Connect_FormatKnown")]
	public static extern void QWaveDecoder_Connect_FormatKnown(void* c_this, c_intptr slot);
	[LinkName("QWaveDecoder_Connect_ParsingError")]
	public static extern void QWaveDecoder_Connect_ParsingError(void* c_this, c_intptr slot);
	[LinkName("QWaveDecoder_Tr2")]
	public static extern libqt_string QWaveDecoder_Tr2(char8* s, char8* c);
	[LinkName("QWaveDecoder_Tr3")]
	public static extern libqt_string QWaveDecoder_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QWaveDecoder_Delete")]
	public static extern void QWaveDecoder_Delete(void* self);
}