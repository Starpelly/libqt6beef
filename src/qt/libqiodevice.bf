using System;
using System.Interop;
namespace Qt;

public struct QIODevice : QIODeviceBase
{
	[LinkName("QIODevice_new")]
	public static extern QIODevice* QIODevice_new();
	[LinkName("QIODevice_new2")]
	public static extern QIODevice* QIODevice_new2(QObject* parent);
	[LinkName("QIODevice_MetaObject")]
	public static extern QMetaObject* QIODevice_MetaObject(Self* c_this);
	[LinkName("QIODevice_Metacast")]
	public static extern void* QIODevice_Metacast(Self* c_this, char8[] param1);
	[LinkName("QIODevice_Metacall")]
	public static extern int32 QIODevice_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QIODevice_Tr")]
	public static extern libqt_string QIODevice_Tr(char8[] s);
	[LinkName("QIODevice_OpenMode")]
	public static extern int64 QIODevice_OpenMode(Self* c_this);
	[LinkName("QIODevice_SetTextModeEnabled")]
	public static extern void QIODevice_SetTextModeEnabled(Self* c_this, bool enabled);
	[LinkName("QIODevice_IsTextModeEnabled")]
	public static extern bool QIODevice_IsTextModeEnabled(Self* c_this);
	[LinkName("QIODevice_IsOpen")]
	public static extern bool QIODevice_IsOpen(Self* c_this);
	[LinkName("QIODevice_IsReadable")]
	public static extern bool QIODevice_IsReadable(Self* c_this);
	[LinkName("QIODevice_IsWritable")]
	public static extern bool QIODevice_IsWritable(Self* c_this);
	[LinkName("QIODevice_IsSequential")]
	public static extern bool QIODevice_IsSequential(Self* c_this);
	[LinkName("QIODevice_ReadChannelCount")]
	public static extern int32 QIODevice_ReadChannelCount(Self* c_this);
	[LinkName("QIODevice_WriteChannelCount")]
	public static extern int32 QIODevice_WriteChannelCount(Self* c_this);
	[LinkName("QIODevice_CurrentReadChannel")]
	public static extern int32 QIODevice_CurrentReadChannel(Self* c_this);
	[LinkName("QIODevice_SetCurrentReadChannel")]
	public static extern void QIODevice_SetCurrentReadChannel(Self* c_this, int32 channel);
	[LinkName("QIODevice_CurrentWriteChannel")]
	public static extern int32 QIODevice_CurrentWriteChannel(Self* c_this);
	[LinkName("QIODevice_SetCurrentWriteChannel")]
	public static extern void QIODevice_SetCurrentWriteChannel(Self* c_this, int32 channel);
	[LinkName("QIODevice_Open")]
	public static extern bool QIODevice_Open(Self* c_this, int64 mode);
	[LinkName("QIODevice_Close")]
	public static extern void QIODevice_Close(Self* c_this);
	[LinkName("QIODevice_Pos")]
	public static extern int64 QIODevice_Pos(Self* c_this);
	[LinkName("QIODevice_Size")]
	public static extern int64 QIODevice_Size(Self* c_this);
	[LinkName("QIODevice_Seek")]
	public static extern bool QIODevice_Seek(Self* c_this, int64 pos);
	[LinkName("QIODevice_AtEnd")]
	public static extern bool QIODevice_AtEnd(Self* c_this);
	[LinkName("QIODevice_Reset")]
	public static extern bool QIODevice_Reset(Self* c_this);
	[LinkName("QIODevice_BytesAvailable")]
	public static extern int64 QIODevice_BytesAvailable(Self* c_this);
	[LinkName("QIODevice_BytesToWrite")]
	public static extern int64 QIODevice_BytesToWrite(Self* c_this);
	[LinkName("QIODevice_Read")]
	public static extern int64 QIODevice_Read(Self* c_this, char8[] data, int64 maxlen);
	[LinkName("QIODevice_ReadWithMaxlen")]
	public static extern libqt_string QIODevice_ReadWithMaxlen(Self* c_this, int64 maxlen);
	[LinkName("QIODevice_ReadAll")]
	public static extern libqt_string QIODevice_ReadAll(Self* c_this);
	[LinkName("QIODevice_ReadLine")]
	public static extern int64 QIODevice_ReadLine(Self* c_this, char8[] data, int64 maxlen);
	[LinkName("QIODevice_ReadLine2")]
	public static extern libqt_string QIODevice_ReadLine2(Self* c_this);
	[LinkName("QIODevice_CanReadLine")]
	public static extern bool QIODevice_CanReadLine(Self* c_this);
	[LinkName("QIODevice_StartTransaction")]
	public static extern void QIODevice_StartTransaction(Self* c_this);
	[LinkName("QIODevice_CommitTransaction")]
	public static extern void QIODevice_CommitTransaction(Self* c_this);
	[LinkName("QIODevice_RollbackTransaction")]
	public static extern void QIODevice_RollbackTransaction(Self* c_this);
	[LinkName("QIODevice_IsTransactionStarted")]
	public static extern bool QIODevice_IsTransactionStarted(Self* c_this);
	[LinkName("QIODevice_Write")]
	public static extern int64 QIODevice_Write(Self* c_this, char8[] data, int64 lenVal);
	[LinkName("QIODevice_WriteWithData")]
	public static extern int64 QIODevice_WriteWithData(Self* c_this, char8[] data);
	[LinkName("QIODevice_Write2")]
	public static extern int64 QIODevice_Write2(Self* c_this, libqt_string data);
	[LinkName("QIODevice_Peek")]
	public static extern int64 QIODevice_Peek(Self* c_this, char8[] data, int64 maxlen);
	[LinkName("QIODevice_PeekWithMaxlen")]
	public static extern libqt_string QIODevice_PeekWithMaxlen(Self* c_this, int64 maxlen);
	[LinkName("QIODevice_Skip")]
	public static extern int64 QIODevice_Skip(Self* c_this, int64 maxSize);
	[LinkName("QIODevice_WaitForReadyRead")]
	public static extern bool QIODevice_WaitForReadyRead(Self* c_this, int32 msecs);
	[LinkName("QIODevice_WaitForBytesWritten")]
	public static extern bool QIODevice_WaitForBytesWritten(Self* c_this, int32 msecs);
	[LinkName("QIODevice_UngetChar")]
	public static extern void QIODevice_UngetChar(Self* c_this, int8 c);
	[LinkName("QIODevice_PutChar")]
	public static extern bool QIODevice_PutChar(Self* c_this, int8 c);
	[LinkName("QIODevice_GetChar")]
	public static extern bool QIODevice_GetChar(Self* c_this, char8[] c);
	[LinkName("QIODevice_ErrorString")]
	public static extern libqt_string QIODevice_ErrorString(Self* c_this);
	[LinkName("QIODevice_Connect_ReadyRead")]
	public static extern void QIODevice_Connect_ReadyRead(Self* c_this, c_intptr slot);
	[LinkName("QIODevice_Connect_ChannelReadyRead")]
	public static extern void QIODevice_Connect_ChannelReadyRead(Self* c_this, c_intptr slot);
	[LinkName("QIODevice_Connect_BytesWritten")]
	public static extern void QIODevice_Connect_BytesWritten(Self* c_this, c_intptr slot);
	[LinkName("QIODevice_Connect_ChannelBytesWritten")]
	public static extern void QIODevice_Connect_ChannelBytesWritten(Self* c_this, c_intptr slot);
	[LinkName("QIODevice_Connect_AboutToClose")]
	public static extern void QIODevice_Connect_AboutToClose(Self* c_this, c_intptr slot);
	[LinkName("QIODevice_Connect_ReadChannelFinished")]
	public static extern void QIODevice_Connect_ReadChannelFinished(Self* c_this, c_intptr slot);
	[LinkName("QIODevice_ReadData")]
	public static extern int64 QIODevice_ReadData(Self* c_this, char8[] data, int64 maxlen);
	[LinkName("QIODevice_ReadLineData")]
	public static extern int64 QIODevice_ReadLineData(Self* c_this, char8[] data, int64 maxlen);
	[LinkName("QIODevice_SkipData")]
	public static extern int64 QIODevice_SkipData(Self* c_this, int64 maxSize);
	[LinkName("QIODevice_WriteData")]
	public static extern int64 QIODevice_WriteData(Self* c_this, char8[] data, int64 lenVal);
	[LinkName("QIODevice_SetOpenMode")]
	public static extern void QIODevice_SetOpenMode(Self* c_this, int64 openMode);
	[LinkName("QIODevice_SetErrorString")]
	public static extern void QIODevice_SetErrorString(Self* c_this, libqt_string errorString);
	[LinkName("QIODevice_Tr2")]
	public static extern libqt_string QIODevice_Tr2(char8[] s, char8[] c);
	[LinkName("QIODevice_Tr3")]
	public static extern libqt_string QIODevice_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QIODevice_ReadLine1")]
	public static extern libqt_string QIODevice_ReadLine1(Self* c_this, int64 maxlen);
}