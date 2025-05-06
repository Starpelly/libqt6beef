using System;
using System.Interop;
namespace Qt;

public struct QUdpSocket
{
	[LinkName("QUdpSocket_new")]
	public static extern void* QUdpSocket_new();
	[LinkName("QUdpSocket_new2")]
	public static extern void* QUdpSocket_new2(QObject parent);
	[LinkName("QUdpSocket_MetaObject")]
	public static extern QMetaObject QUdpSocket_MetaObject(void* c_this);
	[LinkName("QUdpSocket_Metacast")]
	public static extern void QUdpSocket_Metacast(void* c_this, char8[] param1);
	[LinkName("QUdpSocket_Metacall")]
	public static extern int32 QUdpSocket_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QUdpSocket_Tr")]
	public static extern char8[] QUdpSocket_Tr(char8[] s);
	[LinkName("QUdpSocket_Bind")]
	public static extern bool QUdpSocket_Bind(void* c_this, int64 addr);
	[LinkName("QUdpSocket_JoinMulticastGroup")]
	public static extern bool QUdpSocket_JoinMulticastGroup(void* c_this, QHostAddress groupAddress);
	[LinkName("QUdpSocket_JoinMulticastGroup2")]
	public static extern bool QUdpSocket_JoinMulticastGroup2(void* c_this, QHostAddress groupAddress, QNetworkInterface iface);
	[LinkName("QUdpSocket_LeaveMulticastGroup")]
	public static extern bool QUdpSocket_LeaveMulticastGroup(void* c_this, QHostAddress groupAddress);
	[LinkName("QUdpSocket_LeaveMulticastGroup2")]
	public static extern bool QUdpSocket_LeaveMulticastGroup2(void* c_this, QHostAddress groupAddress, QNetworkInterface iface);
	[LinkName("QUdpSocket_MulticastInterface")]
	public static extern QNetworkInterface QUdpSocket_MulticastInterface(void* c_this);
	[LinkName("QUdpSocket_SetMulticastInterface")]
	public static extern void QUdpSocket_SetMulticastInterface(void* c_this, QNetworkInterface iface);
	[LinkName("QUdpSocket_HasPendingDatagrams")]
	public static extern bool QUdpSocket_HasPendingDatagrams(void* c_this);
	[LinkName("QUdpSocket_PendingDatagramSize")]
	public static extern int64 QUdpSocket_PendingDatagramSize(void* c_this);
	[LinkName("QUdpSocket_ReceiveDatagram")]
	public static extern QNetworkDatagram QUdpSocket_ReceiveDatagram(void* c_this);
	[LinkName("QUdpSocket_ReadDatagram")]
	public static extern int64 QUdpSocket_ReadDatagram(void* c_this, char8[] data, int64 maxlen);
	[LinkName("QUdpSocket_WriteDatagram")]
	public static extern int64 QUdpSocket_WriteDatagram(void* c_this, QNetworkDatagram datagram);
	[LinkName("QUdpSocket_WriteDatagram2")]
	public static extern int64 QUdpSocket_WriteDatagram2(void* c_this, char8[] data, int64 lenVal, QHostAddress host, uint16 port);
	[LinkName("QUdpSocket_WriteDatagram3")]
	public static extern int64 QUdpSocket_WriteDatagram3(void* c_this, uint8[] datagram, QHostAddress host, uint16 port);
	[LinkName("QUdpSocket_Tr2")]
	public static extern char8[] QUdpSocket_Tr2(char8[] s, char8[] c);
	[LinkName("QUdpSocket_Tr3")]
	public static extern char8[] QUdpSocket_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QUdpSocket_Bind2")]
	public static extern bool QUdpSocket_Bind2(void* c_this, int64 addr, uint16 port);
	[LinkName("QUdpSocket_Bind3")]
	public static extern bool QUdpSocket_Bind3(void* c_this, int64 addr, uint16 port, int64 mode);
	[LinkName("QUdpSocket_ReceiveDatagram1")]
	public static extern QNetworkDatagram QUdpSocket_ReceiveDatagram1(void* c_this, int64 maxSize);
	[LinkName("QUdpSocket_ReadDatagram3")]
	public static extern int64 QUdpSocket_ReadDatagram3(void* c_this, char8[] data, int64 maxlen, QHostAddress host);
	[LinkName("QUdpSocket_ReadDatagram4")]
	public static extern int64 QUdpSocket_ReadDatagram4(void* c_this, char8[] data, int64 maxlen, QHostAddress host, uint16 port);
}