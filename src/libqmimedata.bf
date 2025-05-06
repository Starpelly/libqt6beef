using System;
using System.Interop;
namespace Qt;

public struct QMimeData
{
	[LinkName("QMimeData_new")]
	public static extern void* QMimeData_new();
	[LinkName("QMimeData_MetaObject")]
	public static extern QMetaObject QMimeData_MetaObject(void* c_this);
	[LinkName("QMimeData_Metacast")]
	public static extern void QMimeData_Metacast(void* c_this, char8[] param1);
	[LinkName("QMimeData_Metacall")]
	public static extern int32 QMimeData_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QMimeData_Tr")]
	public static extern char8[] QMimeData_Tr(char8[] s);
	[LinkName("QMimeData_Urls")]
	public static extern QUrl[] QMimeData_Urls(void* c_this);
	[LinkName("QMimeData_SetUrls")]
	public static extern void QMimeData_SetUrls(void* c_this, QUrl[] urls);
	[LinkName("QMimeData_HasUrls")]
	public static extern bool QMimeData_HasUrls(void* c_this);
	[LinkName("QMimeData_Text")]
	public static extern char8[] QMimeData_Text(void* c_this);
	[LinkName("QMimeData_SetText")]
	public static extern void QMimeData_SetText(void* c_this, char8[] text);
	[LinkName("QMimeData_HasText")]
	public static extern bool QMimeData_HasText(void* c_this);
	[LinkName("QMimeData_Html")]
	public static extern char8[] QMimeData_Html(void* c_this);
	[LinkName("QMimeData_SetHtml")]
	public static extern void QMimeData_SetHtml(void* c_this, char8[] html);
	[LinkName("QMimeData_HasHtml")]
	public static extern bool QMimeData_HasHtml(void* c_this);
	[LinkName("QMimeData_ImageData")]
	public static extern QVariant QMimeData_ImageData(void* c_this);
	[LinkName("QMimeData_SetImageData")]
	public static extern void QMimeData_SetImageData(void* c_this, QVariant image);
	[LinkName("QMimeData_HasImage")]
	public static extern bool QMimeData_HasImage(void* c_this);
	[LinkName("QMimeData_ColorData")]
	public static extern QVariant QMimeData_ColorData(void* c_this);
	[LinkName("QMimeData_SetColorData")]
	public static extern void QMimeData_SetColorData(void* c_this, QVariant color);
	[LinkName("QMimeData_HasColor")]
	public static extern bool QMimeData_HasColor(void* c_this);
	[LinkName("QMimeData_Data")]
	public static extern uint8[] QMimeData_Data(void* c_this, char8[] mimetype);
	[LinkName("QMimeData_SetData")]
	public static extern void QMimeData_SetData(void* c_this, char8[] mimetype, uint8[] data);
	[LinkName("QMimeData_RemoveFormat")]
	public static extern void QMimeData_RemoveFormat(void* c_this, char8[] mimetype);
	[LinkName("QMimeData_HasFormat")]
	public static extern bool QMimeData_HasFormat(void* c_this, char8[] mimetype);
	[LinkName("QMimeData_Formats")]
	public static extern char8[][] QMimeData_Formats(void* c_this);
	[LinkName("QMimeData_Clear")]
	public static extern void QMimeData_Clear(void* c_this);
	[LinkName("QMimeData_RetrieveData")]
	public static extern QVariant QMimeData_RetrieveData(void* c_this, char8[] mimetype, QMetaType preferredType);
	[LinkName("QMimeData_Tr2")]
	public static extern char8[] QMimeData_Tr2(char8[] s, char8[] c);
	[LinkName("QMimeData_Tr3")]
	public static extern char8[] QMimeData_Tr3(char8[] s, char8[] c, int32 n);
}