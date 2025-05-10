using System;
using System.Interop;
namespace Qt;

public class QIODevice
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QIODevice_new();
	}
	
	public ~this()
	{
		CQt.QIODevice_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QIODevice_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QIODevice_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QIODevice_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QIODevice_Tr(s);
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
	
	public virtual bool IsSequential()
	{
		return CQt.QIODevice_IsSequential(this.nativePtr);
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
	
	public virtual bool Open(int64 mode)
	{
		return CQt.QIODevice_Open(this.nativePtr, mode);
	}
	
	public virtual void Close()
	{
		CQt.QIODevice_Close(this.nativePtr);
	}
	
	public virtual int64 Pos()
	{
		return CQt.QIODevice_Pos(this.nativePtr);
	}
	
	public virtual int64 Size()
	{
		return CQt.QIODevice_Size(this.nativePtr);
	}
	
	public virtual bool Seek(int64 pos)
	{
		return CQt.QIODevice_Seek(this.nativePtr, pos);
	}
	
	public virtual bool AtEnd()
	{
		return CQt.QIODevice_AtEnd(this.nativePtr);
	}
	
	public virtual bool Reset()
	{
		return CQt.QIODevice_Reset(this.nativePtr);
	}
	
	public virtual int64 BytesAvailable()
	{
		return CQt.QIODevice_BytesAvailable(this.nativePtr);
	}
	
	public virtual int64 BytesToWrite()
	{
		return CQt.QIODevice_BytesToWrite(this.nativePtr);
	}
	
	public int64 Read(char8[] data, int64 maxlen)
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
	
	public int64 ReadLine(char8[] data, int64 maxlen)
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
	
	public int64 Write(char8[] data, int64 lenVal)
	{
		return CQt.QIODevice_Write(this.nativePtr, data, lenVal);
	}
	
	public int64 WriteWithData(char8[] data)
	{
		return CQt.QIODevice_WriteWithData(this.nativePtr, data);
	}
	
	public int64 Write2(libqt_string data)
	{
		return CQt.QIODevice_Write2(this.nativePtr, data);
	}
	
	public int64 Peek(char8[] data, int64 maxlen)
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
	
	public bool GetChar(char8[] c)
	{
		return CQt.QIODevice_GetChar(this.nativePtr, c);
	}
	
	public libqt_string ErrorString()
	{
		return CQt.QIODevice_ErrorString(this.nativePtr);
	}
	
	public virtual int64 ReadData(char8[] data, int64 maxlen)
	{
		return CQt.QIODevice_ReadData(this.nativePtr, data, maxlen);
	}
	
	public virtual int64 ReadLineData(char8[] data, int64 maxlen)
	{
		return CQt.QIODevice_ReadLineData(this.nativePtr, data, maxlen);
	}
	
	public virtual int64 SkipData(int64 maxSize)
	{
		return CQt.QIODevice_SkipData(this.nativePtr, maxSize);
	}
	
	public virtual int64 WriteData(char8[] data, int64 lenVal)
	{
		return CQt.QIODevice_WriteData(this.nativePtr, data, lenVal);
	}
	
	public void SetOpenMode(int64 openMode)
	{
		CQt.QIODevice_SetOpenMode(this.nativePtr, openMode);
	}
	
	public void SetErrorString(libqt_string errorString)
	{
		CQt.QIODevice_SetErrorString(this.nativePtr, errorString);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QIODevice_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QIODevice_Tr3(s, c, n);
	}
	
	public libqt_string ReadLine1(int64 maxlen)
	{
		return CQt.QIODevice_ReadLine1(this.nativePtr, maxlen);
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
	[LinkName("QIODevice_new")]
	public static extern void* QIODevice_new();
	[LinkName("QIODevice_new2")]
	public static extern void* QIODevice_new2(void* parent);
	[LinkName("QIODevice_MetaObject")]
	public static extern void* QIODevice_MetaObject(void* c_this);
	[LinkName("QIODevice_Metacast")]
	public static extern void* QIODevice_Metacast(void* c_this, char8[] param1);
	[LinkName("QIODevice_Metacall")]
	public static extern int32 QIODevice_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QIODevice_Tr")]
	public static extern libqt_string QIODevice_Tr(char8[] s);
	[LinkName("QIODevice_OpenMode")]
	public static extern int64 QIODevice_OpenMode(void* c_this);
	[LinkName("QIODevice_SetTextModeEnabled")]
	public static extern void QIODevice_SetTextModeEnabled(void* c_this, bool enabled);
	[LinkName("QIODevice_IsTextModeEnabled")]
	public static extern bool QIODevice_IsTextModeEnabled(void* c_this);
	[LinkName("QIODevice_IsOpen")]
	public static extern bool QIODevice_IsOpen(void* c_this);
	[LinkName("QIODevice_IsReadable")]
	public static extern bool QIODevice_IsReadable(void* c_this);
	[LinkName("QIODevice_IsWritable")]
	public static extern bool QIODevice_IsWritable(void* c_this);
	[LinkName("QIODevice_IsSequential")]
	public static extern bool QIODevice_IsSequential(void* c_this);
	[LinkName("QIODevice_ReadChannelCount")]
	public static extern int32 QIODevice_ReadChannelCount(void* c_this);
	[LinkName("QIODevice_WriteChannelCount")]
	public static extern int32 QIODevice_WriteChannelCount(void* c_this);
	[LinkName("QIODevice_CurrentReadChannel")]
	public static extern int32 QIODevice_CurrentReadChannel(void* c_this);
	[LinkName("QIODevice_SetCurrentReadChannel")]
	public static extern void QIODevice_SetCurrentReadChannel(void* c_this, int32 channel);
	[LinkName("QIODevice_CurrentWriteChannel")]
	public static extern int32 QIODevice_CurrentWriteChannel(void* c_this);
	[LinkName("QIODevice_SetCurrentWriteChannel")]
	public static extern void QIODevice_SetCurrentWriteChannel(void* c_this, int32 channel);
	[LinkName("QIODevice_Open")]
	public static extern bool QIODevice_Open(void* c_this, int64 mode);
	[LinkName("QIODevice_Close")]
	public static extern void QIODevice_Close(void* c_this);
	[LinkName("QIODevice_Pos")]
	public static extern int64 QIODevice_Pos(void* c_this);
	[LinkName("QIODevice_Size")]
	public static extern int64 QIODevice_Size(void* c_this);
	[LinkName("QIODevice_Seek")]
	public static extern bool QIODevice_Seek(void* c_this, int64 pos);
	[LinkName("QIODevice_AtEnd")]
	public static extern bool QIODevice_AtEnd(void* c_this);
	[LinkName("QIODevice_Reset")]
	public static extern bool QIODevice_Reset(void* c_this);
	[LinkName("QIODevice_BytesAvailable")]
	public static extern int64 QIODevice_BytesAvailable(void* c_this);
	[LinkName("QIODevice_BytesToWrite")]
	public static extern int64 QIODevice_BytesToWrite(void* c_this);
	[LinkName("QIODevice_Read")]
	public static extern int64 QIODevice_Read(void* c_this, char8[] data, int64 maxlen);
	[LinkName("QIODevice_ReadWithMaxlen")]
	public static extern libqt_string QIODevice_ReadWithMaxlen(void* c_this, int64 maxlen);
	[LinkName("QIODevice_ReadAll")]
	public static extern libqt_string QIODevice_ReadAll(void* c_this);
	[LinkName("QIODevice_ReadLine")]
	public static extern int64 QIODevice_ReadLine(void* c_this, char8[] data, int64 maxlen);
	[LinkName("QIODevice_ReadLine2")]
	public static extern libqt_string QIODevice_ReadLine2(void* c_this);
	[LinkName("QIODevice_CanReadLine")]
	public static extern bool QIODevice_CanReadLine(void* c_this);
	[LinkName("QIODevice_StartTransaction")]
	public static extern void QIODevice_StartTransaction(void* c_this);
	[LinkName("QIODevice_CommitTransaction")]
	public static extern void QIODevice_CommitTransaction(void* c_this);
	[LinkName("QIODevice_RollbackTransaction")]
	public static extern void QIODevice_RollbackTransaction(void* c_this);
	[LinkName("QIODevice_IsTransactionStarted")]
	public static extern bool QIODevice_IsTransactionStarted(void* c_this);
	[LinkName("QIODevice_Write")]
	public static extern int64 QIODevice_Write(void* c_this, char8[] data, int64 lenVal);
	[LinkName("QIODevice_WriteWithData")]
	public static extern int64 QIODevice_WriteWithData(void* c_this, char8[] data);
	[LinkName("QIODevice_Write2")]
	public static extern int64 QIODevice_Write2(void* c_this, libqt_string data);
	[LinkName("QIODevice_Peek")]
	public static extern int64 QIODevice_Peek(void* c_this, char8[] data, int64 maxlen);
	[LinkName("QIODevice_PeekWithMaxlen")]
	public static extern libqt_string QIODevice_PeekWithMaxlen(void* c_this, int64 maxlen);
	[LinkName("QIODevice_Skip")]
	public static extern int64 QIODevice_Skip(void* c_this, int64 maxSize);
	[LinkName("QIODevice_WaitForReadyRead")]
	public static extern bool QIODevice_WaitForReadyRead(void* c_this, int32 msecs);
	[LinkName("QIODevice_WaitForBytesWritten")]
	public static extern bool QIODevice_WaitForBytesWritten(void* c_this, int32 msecs);
	[LinkName("QIODevice_UngetChar")]
	public static extern void QIODevice_UngetChar(void* c_this, int8 c);
	[LinkName("QIODevice_PutChar")]
	public static extern bool QIODevice_PutChar(void* c_this, int8 c);
	[LinkName("QIODevice_GetChar")]
	public static extern bool QIODevice_GetChar(void* c_this, char8[] c);
	[LinkName("QIODevice_ErrorString")]
	public static extern libqt_string QIODevice_ErrorString(void* c_this);
	[LinkName("QIODevice_Connect_ReadyRead")]
	public static extern void QIODevice_Connect_ReadyRead(void* c_this, c_intptr slot);
	[LinkName("QIODevice_Connect_ChannelReadyRead")]
	public static extern void QIODevice_Connect_ChannelReadyRead(void* c_this, c_intptr slot);
	[LinkName("QIODevice_Connect_BytesWritten")]
	public static extern void QIODevice_Connect_BytesWritten(void* c_this, c_intptr slot);
	[LinkName("QIODevice_Connect_ChannelBytesWritten")]
	public static extern void QIODevice_Connect_ChannelBytesWritten(void* c_this, c_intptr slot);
	[LinkName("QIODevice_Connect_AboutToClose")]
	public static extern void QIODevice_Connect_AboutToClose(void* c_this, c_intptr slot);
	[LinkName("QIODevice_Connect_ReadChannelFinished")]
	public static extern void QIODevice_Connect_ReadChannelFinished(void* c_this, c_intptr slot);
	[LinkName("QIODevice_ReadData")]
	public static extern int64 QIODevice_ReadData(void* c_this, char8[] data, int64 maxlen);
	[LinkName("QIODevice_ReadLineData")]
	public static extern int64 QIODevice_ReadLineData(void* c_this, char8[] data, int64 maxlen);
	[LinkName("QIODevice_SkipData")]
	public static extern int64 QIODevice_SkipData(void* c_this, int64 maxSize);
	[LinkName("QIODevice_WriteData")]
	public static extern int64 QIODevice_WriteData(void* c_this, char8[] data, int64 lenVal);
	[LinkName("QIODevice_SetOpenMode")]
	public static extern void QIODevice_SetOpenMode(void* c_this, int64 openMode);
	[LinkName("QIODevice_SetErrorString")]
	public static extern void QIODevice_SetErrorString(void* c_this, libqt_string errorString);
	[LinkName("QIODevice_Tr2")]
	public static extern libqt_string QIODevice_Tr2(char8[] s, char8[] c);
	[LinkName("QIODevice_Tr3")]
	public static extern libqt_string QIODevice_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QIODevice_ReadLine1")]
	public static extern libqt_string QIODevice_ReadLine1(void* c_this, int64 maxlen);
	/// Delete this object from C++ memory
	[LinkName("QIODevice_Delete")]
	public static extern void QIODevice_Delete(void* self);
}