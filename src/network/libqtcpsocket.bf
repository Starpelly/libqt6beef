using System;
using System.Interop;
namespace Qt;

public struct QTcpSocket
{
	[LinkName("QTcpSocket_new")]
	public static extern void* QTcpSocket_new();
	[LinkName("QTcpSocket_new2")]
	public static extern void* QTcpSocket_new2(QObject parent);
	[LinkName("QTcpSocket_MetaObject")]
	public static extern QMetaObject QTcpSocket_MetaObject(void* c_this);
	[LinkName("QTcpSocket_Metacast")]
	public static extern void QTcpSocket_Metacast(void* c_this, char8[] param1);
	[LinkName("QTcpSocket_Metacall")]
	public static extern int32 QTcpSocket_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QTcpSocket_Tr")]
	public static extern char8[] QTcpSocket_Tr(char8[] s);
	[LinkName("QTcpSocket_Bind")]
	public static extern bool QTcpSocket_Bind(void* c_this, int64 addr);
	[LinkName("QTcpSocket_Tr2")]
	public static extern char8[] QTcpSocket_Tr2(char8[] s, char8[] c);
	[LinkName("QTcpSocket_Tr3")]
	public static extern char8[] QTcpSocket_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QTcpSocket_Bind2")]
	public static extern bool QTcpSocket_Bind2(void* c_this, int64 addr, uint16 port);
	[LinkName("QTcpSocket_Bind3")]
	public static extern bool QTcpSocket_Bind3(void* c_this, int64 addr, uint16 port, int64 mode);
}