using System;
using System.Interop;
namespace Qt;

public struct QHttp2Configuration
{
	[LinkName("QHttp2Configuration_new")]
	public static extern void* QHttp2Configuration_new();
	[LinkName("QHttp2Configuration_new2")]
	public static extern void* QHttp2Configuration_new2(QHttp2Configuration other);
	[LinkName("QHttp2Configuration_OperatorAssign")]
	public static extern void QHttp2Configuration_OperatorAssign(void* c_this, QHttp2Configuration other);
	[LinkName("QHttp2Configuration_SetServerPushEnabled")]
	public static extern void QHttp2Configuration_SetServerPushEnabled(void* c_this, bool enable);
	[LinkName("QHttp2Configuration_ServerPushEnabled")]
	public static extern bool QHttp2Configuration_ServerPushEnabled(void* c_this);
	[LinkName("QHttp2Configuration_SetHuffmanCompressionEnabled")]
	public static extern void QHttp2Configuration_SetHuffmanCompressionEnabled(void* c_this, bool enable);
	[LinkName("QHttp2Configuration_HuffmanCompressionEnabled")]
	public static extern bool QHttp2Configuration_HuffmanCompressionEnabled(void* c_this);
	[LinkName("QHttp2Configuration_SetSessionReceiveWindowSize")]
	public static extern bool QHttp2Configuration_SetSessionReceiveWindowSize(void* c_this, uint32 size);
	[LinkName("QHttp2Configuration_SessionReceiveWindowSize")]
	public static extern uint32 QHttp2Configuration_SessionReceiveWindowSize(void* c_this);
	[LinkName("QHttp2Configuration_SetStreamReceiveWindowSize")]
	public static extern bool QHttp2Configuration_SetStreamReceiveWindowSize(void* c_this, uint32 size);
	[LinkName("QHttp2Configuration_StreamReceiveWindowSize")]
	public static extern uint32 QHttp2Configuration_StreamReceiveWindowSize(void* c_this);
	[LinkName("QHttp2Configuration_SetMaxFrameSize")]
	public static extern bool QHttp2Configuration_SetMaxFrameSize(void* c_this, uint32 size);
	[LinkName("QHttp2Configuration_MaxFrameSize")]
	public static extern uint32 QHttp2Configuration_MaxFrameSize(void* c_this);
	[LinkName("QHttp2Configuration_Swap")]
	public static extern void QHttp2Configuration_Swap(void* c_this, QHttp2Configuration other);
}