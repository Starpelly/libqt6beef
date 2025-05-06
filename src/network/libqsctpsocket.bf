using System;
using System.Interop;
namespace Qt;

public struct QSctpSocket
{
	[LinkName("QSctpSocket_new")]
	public static extern void* QSctpSocket_new();
	[LinkName("QSctpSocket_new2")]
	public static extern void* QSctpSocket_new2(QObject parent);
	[LinkName("QSctpSocket_MetaObject")]
	public static extern QMetaObject QSctpSocket_MetaObject(void* c_this);
	[LinkName("QSctpSocket_Metacast")]
	public static extern void QSctpSocket_Metacast(void* c_this, char8[] param1);
	[LinkName("QSctpSocket_Metacall")]
	public static extern int32 QSctpSocket_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QSctpSocket_Tr")]
	public static extern char8[] QSctpSocket_Tr(char8[] s);
	[LinkName("QSctpSocket_Close")]
	public static extern void QSctpSocket_Close(void* c_this);
	[LinkName("QSctpSocket_DisconnectFromHost")]
	public static extern void QSctpSocket_DisconnectFromHost(void* c_this);
	[LinkName("QSctpSocket_SetMaximumChannelCount")]
	public static extern void QSctpSocket_SetMaximumChannelCount(void* c_this, int32 count);
	[LinkName("QSctpSocket_MaximumChannelCount")]
	public static extern int32 QSctpSocket_MaximumChannelCount(void* c_this);
	[LinkName("QSctpSocket_IsInDatagramMode")]
	public static extern bool QSctpSocket_IsInDatagramMode(void* c_this);
	[LinkName("QSctpSocket_ReadDatagram")]
	public static extern QNetworkDatagram QSctpSocket_ReadDatagram(void* c_this);
	[LinkName("QSctpSocket_WriteDatagram")]
	public static extern bool QSctpSocket_WriteDatagram(void* c_this, QNetworkDatagram datagram);
	[LinkName("QSctpSocket_ReadData")]
	public static extern int64 QSctpSocket_ReadData(void* c_this, char8[] data, int64 maxlen);
	[LinkName("QSctpSocket_ReadLineData")]
	public static extern int64 QSctpSocket_ReadLineData(void* c_this, char8[] data, int64 maxlen);
	[LinkName("QSctpSocket_Tr2")]
	public static extern char8[] QSctpSocket_Tr2(char8[] s, char8[] c);
	[LinkName("QSctpSocket_Tr3")]
	public static extern char8[] QSctpSocket_Tr3(char8[] s, char8[] c, int32 n);
}