using System;
using System.Interop;
namespace Qt;

public struct QMimeData : QObject
{
	[LinkName("QMimeData_new")]
	public static extern QMimeData* QMimeData_new();
	[LinkName("QMimeData_MetaObject")]
	public static extern QMetaObject* QMimeData_MetaObject(Self* c_this);
	[LinkName("QMimeData_Metacast")]
	public static extern void* QMimeData_Metacast(Self* c_this, char8[] param1);
	[LinkName("QMimeData_Metacall")]
	public static extern int32 QMimeData_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QMimeData_Tr")]
	public static extern libqt_string QMimeData_Tr(char8[] s);
	[LinkName("QMimeData_Urls")]
	public static extern QUrl[] QMimeData_Urls(Self* c_this);
	[LinkName("QMimeData_SetUrls")]
	public static extern void QMimeData_SetUrls(Self* c_this, QUrl[] urls);
	[LinkName("QMimeData_HasUrls")]
	public static extern bool QMimeData_HasUrls(Self* c_this);
	[LinkName("QMimeData_Text")]
	public static extern libqt_string QMimeData_Text(Self* c_this);
	[LinkName("QMimeData_SetText")]
	public static extern void QMimeData_SetText(Self* c_this, libqt_string text);
	[LinkName("QMimeData_HasText")]
	public static extern bool QMimeData_HasText(Self* c_this);
	[LinkName("QMimeData_Html")]
	public static extern libqt_string QMimeData_Html(Self* c_this);
	[LinkName("QMimeData_SetHtml")]
	public static extern void QMimeData_SetHtml(Self* c_this, libqt_string html);
	[LinkName("QMimeData_HasHtml")]
	public static extern bool QMimeData_HasHtml(Self* c_this);
	[LinkName("QMimeData_ImageData")]
	public static extern QVariant QMimeData_ImageData(Self* c_this);
	[LinkName("QMimeData_SetImageData")]
	public static extern void QMimeData_SetImageData(Self* c_this, QVariant* image);
	[LinkName("QMimeData_HasImage")]
	public static extern bool QMimeData_HasImage(Self* c_this);
	[LinkName("QMimeData_ColorData")]
	public static extern QVariant QMimeData_ColorData(Self* c_this);
	[LinkName("QMimeData_SetColorData")]
	public static extern void QMimeData_SetColorData(Self* c_this, QVariant* color);
	[LinkName("QMimeData_HasColor")]
	public static extern bool QMimeData_HasColor(Self* c_this);
	[LinkName("QMimeData_Data")]
	public static extern libqt_string QMimeData_Data(Self* c_this, libqt_string mimetype);
	[LinkName("QMimeData_SetData")]
	public static extern void QMimeData_SetData(Self* c_this, libqt_string mimetype, libqt_string data);
	[LinkName("QMimeData_RemoveFormat")]
	public static extern void QMimeData_RemoveFormat(Self* c_this, libqt_string mimetype);
	[LinkName("QMimeData_HasFormat")]
	public static extern bool QMimeData_HasFormat(Self* c_this, libqt_string mimetype);
	[LinkName("QMimeData_Formats")]
	public static extern libqt_string[] QMimeData_Formats(Self* c_this);
	[LinkName("QMimeData_Clear")]
	public static extern void QMimeData_Clear(Self* c_this);
	[LinkName("QMimeData_RetrieveData")]
	public static extern QVariant QMimeData_RetrieveData(Self* c_this, libqt_string mimetype, QMetaType preferredType);
	[LinkName("QMimeData_Tr2")]
	public static extern libqt_string QMimeData_Tr2(char8[] s, char8[] c);
	[LinkName("QMimeData_Tr3")]
	public static extern libqt_string QMimeData_Tr3(char8[] s, char8[] c, int32 n);
}