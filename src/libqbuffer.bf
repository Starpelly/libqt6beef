using System;
using System.Interop;
namespace Qt;

public struct QBuffer
{
	[LinkName("QBuffer_new")]
	public static extern void* QBuffer_new();
	[LinkName("QBuffer_new2")]
	public static extern void* QBuffer_new2(QObject parent);
	[LinkName("QBuffer_MetaObject")]
	public static extern QMetaObject QBuffer_MetaObject(void* c_this);
	[LinkName("QBuffer_Metacast")]
	public static extern void QBuffer_Metacast(void* c_this, char8[] param1);
	[LinkName("QBuffer_Metacall")]
	public static extern int32 QBuffer_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QBuffer_Tr")]
	public static extern char8[] QBuffer_Tr(char8[] s);
	[LinkName("QBuffer_Buffer")]
	public static extern uint8[] QBuffer_Buffer(void* c_this);
	[LinkName("QBuffer_Buffer2")]
	public static extern uint8[] QBuffer_Buffer2(void* c_this);
	[LinkName("QBuffer_SetData")]
	public static extern void QBuffer_SetData(void* c_this, uint8[] data);
	[LinkName("QBuffer_SetData2")]
	public static extern void QBuffer_SetData2(void* c_this, char8[] data, int32 lenVal);
	[LinkName("QBuffer_Data")]
	public static extern uint8[] QBuffer_Data(void* c_this);
	[LinkName("QBuffer_Open")]
	public static extern bool QBuffer_Open(void* c_this, int64 openMode);
	[LinkName("QBuffer_Close")]
	public static extern void QBuffer_Close(void* c_this);
	[LinkName("QBuffer_Size")]
	public static extern int64 QBuffer_Size(void* c_this);
	[LinkName("QBuffer_Pos")]
	public static extern int64 QBuffer_Pos(void* c_this);
	[LinkName("QBuffer_Seek")]
	public static extern bool QBuffer_Seek(void* c_this, int64 off);
	[LinkName("QBuffer_AtEnd")]
	public static extern bool QBuffer_AtEnd(void* c_this);
	[LinkName("QBuffer_CanReadLine")]
	public static extern bool QBuffer_CanReadLine(void* c_this);
	[LinkName("QBuffer_ConnectNotify")]
	public static extern void QBuffer_ConnectNotify(void* c_this, QMetaMethod param1);
	[LinkName("QBuffer_DisconnectNotify")]
	public static extern void QBuffer_DisconnectNotify(void* c_this, QMetaMethod param1);
	[LinkName("QBuffer_ReadData")]
	public static extern int64 QBuffer_ReadData(void* c_this, char8[] data, int64 maxlen);
	[LinkName("QBuffer_WriteData")]
	public static extern int64 QBuffer_WriteData(void* c_this, char8[] data, int64 lenVal);
	[LinkName("QBuffer_Tr2")]
	public static extern char8[] QBuffer_Tr2(char8[] s, char8[] c);
	[LinkName("QBuffer_Tr3")]
	public static extern char8[] QBuffer_Tr3(char8[] s, char8[] c, int32 n);
}