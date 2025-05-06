using System;
using System.Interop;
namespace Qt;

public struct QNetworkDatagram
{
	[LinkName("QNetworkDatagram_new")]
	public static extern void* QNetworkDatagram_new();
	[LinkName("QNetworkDatagram_new2")]
	public static extern void* QNetworkDatagram_new2(uint8[] data);
	[LinkName("QNetworkDatagram_new3")]
	public static extern void* QNetworkDatagram_new3(QNetworkDatagram other);
	[LinkName("QNetworkDatagram_new4")]
	public static extern void* QNetworkDatagram_new4(uint8[] data, QHostAddress destinationAddress);
	[LinkName("QNetworkDatagram_new5")]
	public static extern void* QNetworkDatagram_new5(uint8[] data, QHostAddress destinationAddress, uint16 port);
	[LinkName("QNetworkDatagram_OperatorAssign")]
	public static extern void QNetworkDatagram_OperatorAssign(void* c_this, QNetworkDatagram other);
	[LinkName("QNetworkDatagram_Swap")]
	public static extern void QNetworkDatagram_Swap(void* c_this, QNetworkDatagram other);
	[LinkName("QNetworkDatagram_Clear")]
	public static extern void QNetworkDatagram_Clear(void* c_this);
	[LinkName("QNetworkDatagram_IsValid")]
	public static extern bool QNetworkDatagram_IsValid(void* c_this);
	[LinkName("QNetworkDatagram_IsNull")]
	public static extern bool QNetworkDatagram_IsNull(void* c_this);
	[LinkName("QNetworkDatagram_InterfaceIndex")]
	public static extern uint32 QNetworkDatagram_InterfaceIndex(void* c_this);
	[LinkName("QNetworkDatagram_SetInterfaceIndex")]
	public static extern void QNetworkDatagram_SetInterfaceIndex(void* c_this, uint32 index);
	[LinkName("QNetworkDatagram_SenderAddress")]
	public static extern QHostAddress QNetworkDatagram_SenderAddress(void* c_this);
	[LinkName("QNetworkDatagram_DestinationAddress")]
	public static extern QHostAddress QNetworkDatagram_DestinationAddress(void* c_this);
	[LinkName("QNetworkDatagram_SenderPort")]
	public static extern int32 QNetworkDatagram_SenderPort(void* c_this);
	[LinkName("QNetworkDatagram_DestinationPort")]
	public static extern int32 QNetworkDatagram_DestinationPort(void* c_this);
	[LinkName("QNetworkDatagram_SetSender")]
	public static extern void QNetworkDatagram_SetSender(void* c_this, QHostAddress address);
	[LinkName("QNetworkDatagram_SetDestination")]
	public static extern void QNetworkDatagram_SetDestination(void* c_this, QHostAddress address, uint16 port);
	[LinkName("QNetworkDatagram_HopLimit")]
	public static extern int32 QNetworkDatagram_HopLimit(void* c_this);
	[LinkName("QNetworkDatagram_SetHopLimit")]
	public static extern void QNetworkDatagram_SetHopLimit(void* c_this, int32 count);
	[LinkName("QNetworkDatagram_Data")]
	public static extern uint8[] QNetworkDatagram_Data(void* c_this);
	[LinkName("QNetworkDatagram_SetData")]
	public static extern void QNetworkDatagram_SetData(void* c_this, uint8[] data);
	[LinkName("QNetworkDatagram_MakeReply")]
	public static extern QNetworkDatagram QNetworkDatagram_MakeReply(void* c_this, uint8[] payload);
	[LinkName("QNetworkDatagram_SetSender2")]
	public static extern void QNetworkDatagram_SetSender2(void* c_this, QHostAddress address, uint16 port);
}