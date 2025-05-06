using System;
using System.Interop;
namespace Qt;

public struct QIODevice
{
	[LinkName("QIODevice_new")]
	public static extern void* QIODevice_new();
	[LinkName("QIODevice_new2")]
	public static extern void* QIODevice_new2(QObject parent);
	[LinkName("QIODevice_MetaObject")]
	public static extern QMetaObject QIODevice_MetaObject(void* c_this);
	[LinkName("QIODevice_Metacast")]
	public static extern void QIODevice_Metacast(void* c_this, char8[] param1);
	[LinkName("QIODevice_Metacall")]
	public static extern int32 QIODevice_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QIODevice_Tr")]
	public static extern char8[] QIODevice_Tr(char8[] s);
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
	public static extern uint8[] QIODevice_ReadWithMaxlen(void* c_this, int64 maxlen);
	[LinkName("QIODevice_ReadAll")]
	public static extern uint8[] QIODevice_ReadAll(void* c_this);
	[LinkName("QIODevice_ReadLine")]
	public static extern int64 QIODevice_ReadLine(void* c_this, char8[] data, int64 maxlen);
	[LinkName("QIODevice_ReadLine2")]
	public static extern uint8[] QIODevice_ReadLine2(void* c_this);
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
	public static extern int64 QIODevice_Write2(void* c_this, uint8[] data);
	[LinkName("QIODevice_Peek")]
	public static extern int64 QIODevice_Peek(void* c_this, char8[] data, int64 maxlen);
	[LinkName("QIODevice_PeekWithMaxlen")]
	public static extern uint8[] QIODevice_PeekWithMaxlen(void* c_this, int64 maxlen);
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
	public static extern char8[] QIODevice_ErrorString(void* c_this);
	[LinkName("QIODevice_ReadyRead")]
	public static extern void QIODevice_ReadyRead(void* c_this);
	[LinkName("QIODevice_ChannelReadyRead")]
	public static extern void QIODevice_ChannelReadyRead(void* c_this, int32 channel);
	[LinkName("QIODevice_BytesWritten")]
	public static extern void QIODevice_BytesWritten(void* c_this, int64 bytes);
	[LinkName("QIODevice_ChannelBytesWritten")]
	public static extern void QIODevice_ChannelBytesWritten(void* c_this, int32 channel, int64 bytes);
	[LinkName("QIODevice_AboutToClose")]
	public static extern void QIODevice_AboutToClose(void* c_this);
	[LinkName("QIODevice_ReadChannelFinished")]
	public static extern void QIODevice_ReadChannelFinished(void* c_this);
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
	public static extern void QIODevice_SetErrorString(void* c_this, char8[] errorString);
	[LinkName("QIODevice_Tr2")]
	public static extern char8[] QIODevice_Tr2(char8[] s, char8[] c);
	[LinkName("QIODevice_Tr3")]
	public static extern char8[] QIODevice_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QIODevice_ReadLine1")]
	public static extern uint8[] QIODevice_ReadLine1(void* c_this, int64 maxlen);
}