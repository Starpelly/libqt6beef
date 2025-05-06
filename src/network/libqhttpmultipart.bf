using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QHttpMultiPart__ContentType
{
	MixedType = 0,
	RelatedType = 1,
	FormDataType = 2,
	AlternativeType = 3,
}
public struct QHttpPart
{
	[LinkName("QHttpPart_new")]
	public static extern void* QHttpPart_new();
	[LinkName("QHttpPart_new2")]
	public static extern void* QHttpPart_new2(QHttpPart other);
	[LinkName("QHttpPart_OperatorAssign")]
	public static extern void QHttpPart_OperatorAssign(void* c_this, QHttpPart other);
	[LinkName("QHttpPart_Swap")]
	public static extern void QHttpPart_Swap(void* c_this, QHttpPart other);
	[LinkName("QHttpPart_OperatorEqual")]
	public static extern bool QHttpPart_OperatorEqual(void* c_this, QHttpPart other);
	[LinkName("QHttpPart_OperatorNotEqual")]
	public static extern bool QHttpPart_OperatorNotEqual(void* c_this, QHttpPart other);
	[LinkName("QHttpPart_SetHeader")]
	public static extern void QHttpPart_SetHeader(void* c_this, int64 header, QVariant value);
	[LinkName("QHttpPart_SetRawHeader")]
	public static extern void QHttpPart_SetRawHeader(void* c_this, uint8[] headerName, uint8[] headerValue);
	[LinkName("QHttpPart_SetBody")]
	public static extern void QHttpPart_SetBody(void* c_this, uint8[] body);
	[LinkName("QHttpPart_SetBodyDevice")]
	public static extern void QHttpPart_SetBodyDevice(void* c_this, QIODevice device);
}
public struct QHttpMultiPart
{
	[LinkName("QHttpMultiPart_new")]
	public static extern void* QHttpMultiPart_new();
	[LinkName("QHttpMultiPart_new2")]
	public static extern void* QHttpMultiPart_new2(int64 contentType);
	[LinkName("QHttpMultiPart_new3")]
	public static extern void* QHttpMultiPart_new3(QObject parent);
	[LinkName("QHttpMultiPart_new4")]
	public static extern void* QHttpMultiPart_new4(int64 contentType, QObject parent);
	[LinkName("QHttpMultiPart_MetaObject")]
	public static extern QMetaObject QHttpMultiPart_MetaObject(void* c_this);
	[LinkName("QHttpMultiPart_Metacast")]
	public static extern void QHttpMultiPart_Metacast(void* c_this, char8[] param1);
	[LinkName("QHttpMultiPart_Metacall")]
	public static extern int32 QHttpMultiPart_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QHttpMultiPart_Tr")]
	public static extern char8[] QHttpMultiPart_Tr(char8[] s);
	[LinkName("QHttpMultiPart_Append")]
	public static extern void QHttpMultiPart_Append(void* c_this, QHttpPart httpPart);
	[LinkName("QHttpMultiPart_SetContentType")]
	public static extern void QHttpMultiPart_SetContentType(void* c_this, int64 contentType);
	[LinkName("QHttpMultiPart_Boundary")]
	public static extern uint8[] QHttpMultiPart_Boundary(void* c_this);
	[LinkName("QHttpMultiPart_SetBoundary")]
	public static extern void QHttpMultiPart_SetBoundary(void* c_this, uint8[] boundary);
	[LinkName("QHttpMultiPart_Tr2")]
	public static extern char8[] QHttpMultiPart_Tr2(char8[] s, char8[] c);
	[LinkName("QHttpMultiPart_Tr3")]
	public static extern char8[] QHttpMultiPart_Tr3(char8[] s, char8[] c, int32 n);
}