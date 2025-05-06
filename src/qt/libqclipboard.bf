using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QClipboard__Mode
{
	Clipboard = 0,
	Selection = 1,
	FindBuffer = 2,
	LastMode = 2,
}
public struct QClipboard : QObject
{
	[LinkName("QClipboard_MetaObject")]
	public static extern QMetaObject* QClipboard_MetaObject(Self* c_this);
	[LinkName("QClipboard_Metacast")]
	public static extern void* QClipboard_Metacast(Self* c_this, char8[] param1);
	[LinkName("QClipboard_Metacall")]
	public static extern int32 QClipboard_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QClipboard_Tr")]
	public static extern libqt_string QClipboard_Tr(char8[] s);
	[LinkName("QClipboard_Clear")]
	public static extern void QClipboard_Clear(Self* c_this);
	[LinkName("QClipboard_SupportsSelection")]
	public static extern bool QClipboard_SupportsSelection(Self* c_this);
	[LinkName("QClipboard_SupportsFindBuffer")]
	public static extern bool QClipboard_SupportsFindBuffer(Self* c_this);
	[LinkName("QClipboard_OwnsSelection")]
	public static extern bool QClipboard_OwnsSelection(Self* c_this);
	[LinkName("QClipboard_OwnsClipboard")]
	public static extern bool QClipboard_OwnsClipboard(Self* c_this);
	[LinkName("QClipboard_OwnsFindBuffer")]
	public static extern bool QClipboard_OwnsFindBuffer(Self* c_this);
	[LinkName("QClipboard_Text")]
	public static extern libqt_string QClipboard_Text(Self* c_this);
	[LinkName("QClipboard_TextWithSubtype")]
	public static extern libqt_string QClipboard_TextWithSubtype(Self* c_this, libqt_string subtype);
	[LinkName("QClipboard_SetText")]
	public static extern void QClipboard_SetText(Self* c_this, libqt_string param1);
	[LinkName("QClipboard_MimeData")]
	public static extern QMimeData* QClipboard_MimeData(Self* c_this);
	[LinkName("QClipboard_SetMimeData")]
	public static extern void QClipboard_SetMimeData(Self* c_this, QMimeData* data);
	[LinkName("QClipboard_Image")]
	public static extern QImage QClipboard_Image(Self* c_this);
	[LinkName("QClipboard_Pixmap")]
	public static extern QPixmap QClipboard_Pixmap(Self* c_this);
	[LinkName("QClipboard_SetImage")]
	public static extern void QClipboard_SetImage(Self* c_this, QImage* param1);
	[LinkName("QClipboard_SetPixmap")]
	public static extern void QClipboard_SetPixmap(Self* c_this, QPixmap* param1);
	[LinkName("QClipboard_Changed")]
	public static extern void QClipboard_Changed(Self* c_this, int64 mode);
	[LinkName("QClipboard_SelectionChanged")]
	public static extern void QClipboard_SelectionChanged(Self* c_this);
	[LinkName("QClipboard_FindBufferChanged")]
	public static extern void QClipboard_FindBufferChanged(Self* c_this);
	[LinkName("QClipboard_DataChanged")]
	public static extern void QClipboard_DataChanged(Self* c_this);
	[LinkName("QClipboard_Tr2")]
	public static extern libqt_string QClipboard_Tr2(char8[] s, char8[] c);
	[LinkName("QClipboard_Tr3")]
	public static extern libqt_string QClipboard_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QClipboard_Clear1")]
	public static extern void QClipboard_Clear1(Self* c_this, int64 mode);
	[LinkName("QClipboard_Text1")]
	public static extern libqt_string QClipboard_Text1(Self* c_this, int64 mode);
	[LinkName("QClipboard_Text2")]
	public static extern libqt_string QClipboard_Text2(Self* c_this, libqt_string subtype, int64 mode);
	[LinkName("QClipboard_SetText2")]
	public static extern void QClipboard_SetText2(Self* c_this, libqt_string param1, int64 mode);
	[LinkName("QClipboard_MimeData1")]
	public static extern QMimeData* QClipboard_MimeData1(Self* c_this, int64 mode);
	[LinkName("QClipboard_SetMimeData2")]
	public static extern void QClipboard_SetMimeData2(Self* c_this, QMimeData* data, int64 mode);
	[LinkName("QClipboard_Image1")]
	public static extern QImage QClipboard_Image1(Self* c_this, int64 mode);
	[LinkName("QClipboard_Pixmap1")]
	public static extern QPixmap QClipboard_Pixmap1(Self* c_this, int64 mode);
	[LinkName("QClipboard_SetImage2")]
	public static extern void QClipboard_SetImage2(Self* c_this, QImage* param1, int64 mode);
	[LinkName("QClipboard_SetPixmap2")]
	public static extern void QClipboard_SetPixmap2(Self* c_this, QPixmap* param1, int64 mode);
}