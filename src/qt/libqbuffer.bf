using System;
using System.Interop;
namespace Qt;

public struct QBuffer : QIODevice
{
	[LinkName("QBuffer_new")]
	public static extern QBuffer* QBuffer_new();
	[LinkName("QBuffer_new2")]
	public static extern QBuffer* QBuffer_new2(QObject* parent);
	[LinkName("QBuffer_MetaObject")]
	public static extern QMetaObject* QBuffer_MetaObject(Self* c_this);
	[LinkName("QBuffer_Metacast")]
	public static extern void* QBuffer_Metacast(Self* c_this, char8[] param1);
	[LinkName("QBuffer_Metacall")]
	public static extern int32 QBuffer_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QBuffer_Tr")]
	public static extern libqt_string QBuffer_Tr(char8[] s);
	[LinkName("QBuffer_Buffer")]
	public static extern libqt_string QBuffer_Buffer(Self* c_this);
	[LinkName("QBuffer_Buffer2")]
	public static extern libqt_string QBuffer_Buffer2(Self* c_this);
	[LinkName("QBuffer_SetData")]
	public static extern void QBuffer_SetData(Self* c_this, libqt_string data);
	[LinkName("QBuffer_SetData2")]
	public static extern void QBuffer_SetData2(Self* c_this, char8[] data, int32 lenVal);
	[LinkName("QBuffer_Data")]
	public static extern libqt_string QBuffer_Data(Self* c_this);
	[LinkName("QBuffer_Open")]
	public static extern bool QBuffer_Open(Self* c_this, int64 openMode);
	[LinkName("QBuffer_Close")]
	public static extern void QBuffer_Close(Self* c_this);
	[LinkName("QBuffer_Size")]
	public static extern int64 QBuffer_Size(Self* c_this);
	[LinkName("QBuffer_Pos")]
	public static extern int64 QBuffer_Pos(Self* c_this);
	[LinkName("QBuffer_Seek")]
	public static extern bool QBuffer_Seek(Self* c_this, int64 off);
	[LinkName("QBuffer_AtEnd")]
	public static extern bool QBuffer_AtEnd(Self* c_this);
	[LinkName("QBuffer_CanReadLine")]
	public static extern bool QBuffer_CanReadLine(Self* c_this);
	[LinkName("QBuffer_ConnectNotify")]
	public static extern void QBuffer_ConnectNotify(Self* c_this, QMetaMethod* param1);
	[LinkName("QBuffer_DisconnectNotify")]
	public static extern void QBuffer_DisconnectNotify(Self* c_this, QMetaMethod* param1);
	[LinkName("QBuffer_ReadData")]
	public static extern int64 QBuffer_ReadData(Self* c_this, char8[] data, int64 maxlen);
	[LinkName("QBuffer_WriteData")]
	public static extern int64 QBuffer_WriteData(Self* c_this, char8[] data, int64 lenVal);
	[LinkName("QBuffer_Tr2")]
	public static extern libqt_string QBuffer_Tr2(char8[] s, char8[] c);
	[LinkName("QBuffer_Tr3")]
	public static extern libqt_string QBuffer_Tr3(char8[] s, char8[] c, int32 n);
}