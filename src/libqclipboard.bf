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
public struct QClipboard
{
	[LinkName("QClipboard_MetaObject")]
	public static extern QMetaObject QClipboard_MetaObject(void* c_this);
	[LinkName("QClipboard_Metacast")]
	public static extern void QClipboard_Metacast(void* c_this, char8[] param1);
	[LinkName("QClipboard_Metacall")]
	public static extern int32 QClipboard_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QClipboard_Tr")]
	public static extern char8[] QClipboard_Tr(char8[] s);
	[LinkName("QClipboard_Clear")]
	public static extern void QClipboard_Clear(void* c_this);
	[LinkName("QClipboard_SupportsSelection")]
	public static extern bool QClipboard_SupportsSelection(void* c_this);
	[LinkName("QClipboard_SupportsFindBuffer")]
	public static extern bool QClipboard_SupportsFindBuffer(void* c_this);
	[LinkName("QClipboard_OwnsSelection")]
	public static extern bool QClipboard_OwnsSelection(void* c_this);
	[LinkName("QClipboard_OwnsClipboard")]
	public static extern bool QClipboard_OwnsClipboard(void* c_this);
	[LinkName("QClipboard_OwnsFindBuffer")]
	public static extern bool QClipboard_OwnsFindBuffer(void* c_this);
	[LinkName("QClipboard_Text")]
	public static extern char8[] QClipboard_Text(void* c_this);
	[LinkName("QClipboard_TextWithSubtype")]
	public static extern char8[] QClipboard_TextWithSubtype(void* c_this, char8[] subtype);
	[LinkName("QClipboard_SetText")]
	public static extern void QClipboard_SetText(void* c_this, char8[] param1);
	[LinkName("QClipboard_MimeData")]
	public static extern QMimeData QClipboard_MimeData(void* c_this);
	[LinkName("QClipboard_SetMimeData")]
	public static extern void QClipboard_SetMimeData(void* c_this, QMimeData data);
	[LinkName("QClipboard_Image")]
	public static extern QImage QClipboard_Image(void* c_this);
	[LinkName("QClipboard_Pixmap")]
	public static extern QPixmap QClipboard_Pixmap(void* c_this);
	[LinkName("QClipboard_SetImage")]
	public static extern void QClipboard_SetImage(void* c_this, QImage param1);
	[LinkName("QClipboard_SetPixmap")]
	public static extern void QClipboard_SetPixmap(void* c_this, QPixmap param1);
	[LinkName("QClipboard_Changed")]
	public static extern void QClipboard_Changed(void* c_this, int64 mode);
	[LinkName("QClipboard_SelectionChanged")]
	public static extern void QClipboard_SelectionChanged(void* c_this);
	[LinkName("QClipboard_FindBufferChanged")]
	public static extern void QClipboard_FindBufferChanged(void* c_this);
	[LinkName("QClipboard_DataChanged")]
	public static extern void QClipboard_DataChanged(void* c_this);
	[LinkName("QClipboard_Tr2")]
	public static extern char8[] QClipboard_Tr2(char8[] s, char8[] c);
	[LinkName("QClipboard_Tr3")]
	public static extern char8[] QClipboard_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QClipboard_Clear1")]
	public static extern void QClipboard_Clear1(void* c_this, int64 mode);
	[LinkName("QClipboard_Text1")]
	public static extern char8[] QClipboard_Text1(void* c_this, int64 mode);
	[LinkName("QClipboard_Text2")]
	public static extern char8[] QClipboard_Text2(void* c_this, char8[] subtype, int64 mode);
	[LinkName("QClipboard_SetText2")]
	public static extern void QClipboard_SetText2(void* c_this, char8[] param1, int64 mode);
	[LinkName("QClipboard_MimeData1")]
	public static extern QMimeData QClipboard_MimeData1(void* c_this, int64 mode);
	[LinkName("QClipboard_SetMimeData2")]
	public static extern void QClipboard_SetMimeData2(void* c_this, QMimeData data, int64 mode);
	[LinkName("QClipboard_Image1")]
	public static extern QImage QClipboard_Image1(void* c_this, int64 mode);
	[LinkName("QClipboard_Pixmap1")]
	public static extern QPixmap QClipboard_Pixmap1(void* c_this, int64 mode);
	[LinkName("QClipboard_SetImage2")]
	public static extern void QClipboard_SetImage2(void* c_this, QImage param1, int64 mode);
	[LinkName("QClipboard_SetPixmap2")]
	public static extern void QClipboard_SetPixmap2(void* c_this, QPixmap param1, int64 mode);
}