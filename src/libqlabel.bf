using System;
using System.Interop;
namespace Qt;

public struct QLabel
{
	[LinkName("QLabel_new")]
	public static extern void* QLabel_new(QWidget parent);
	[LinkName("QLabel_new2")]
	public static extern void* QLabel_new2();
	[LinkName("QLabel_new3")]
	public static extern void* QLabel_new3(char8[] text);
	[LinkName("QLabel_new4")]
	public static extern void* QLabel_new4(QWidget parent, int64 f);
	[LinkName("QLabel_new5")]
	public static extern void* QLabel_new5(char8[] text, QWidget parent);
	[LinkName("QLabel_new6")]
	public static extern void* QLabel_new6(char8[] text, QWidget parent, int64 f);
	[LinkName("QLabel_MetaObject")]
	public static extern QMetaObject QLabel_MetaObject(void* c_this);
	[LinkName("QLabel_Metacast")]
	public static extern void QLabel_Metacast(void* c_this, char8[] param1);
	[LinkName("QLabel_Metacall")]
	public static extern int32 QLabel_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QLabel_Tr")]
	public static extern char8[] QLabel_Tr(char8[] s);
	[LinkName("QLabel_Text")]
	public static extern char8[] QLabel_Text(void* c_this);
	[LinkName("QLabel_Pixmap")]
	public static extern QPixmap QLabel_Pixmap(void* c_this, int64 param1);
	[LinkName("QLabel_Pixmap2")]
	public static extern QPixmap QLabel_Pixmap2(void* c_this);
	[LinkName("QLabel_Picture")]
	public static extern QPicture QLabel_Picture(void* c_this, int64 param1);
	[LinkName("QLabel_Picture2")]
	public static extern QPicture QLabel_Picture2(void* c_this);
	[LinkName("QLabel_Movie")]
	public static extern QMovie QLabel_Movie(void* c_this);
	[LinkName("QLabel_TextFormat")]
	public static extern int64 QLabel_TextFormat(void* c_this);
	[LinkName("QLabel_SetTextFormat")]
	public static extern void QLabel_SetTextFormat(void* c_this, int64 textFormat);
	[LinkName("QLabel_Alignment")]
	public static extern int64 QLabel_Alignment(void* c_this);
	[LinkName("QLabel_SetAlignment")]
	public static extern void QLabel_SetAlignment(void* c_this, int64 alignment);
	[LinkName("QLabel_SetWordWrap")]
	public static extern void QLabel_SetWordWrap(void* c_this, bool on);
	[LinkName("QLabel_WordWrap")]
	public static extern bool QLabel_WordWrap(void* c_this);
	[LinkName("QLabel_Indent")]
	public static extern int32 QLabel_Indent(void* c_this);
	[LinkName("QLabel_SetIndent")]
	public static extern void QLabel_SetIndent(void* c_this, int32 indent);
	[LinkName("QLabel_Margin")]
	public static extern int32 QLabel_Margin(void* c_this);
	[LinkName("QLabel_SetMargin")]
	public static extern void QLabel_SetMargin(void* c_this, int32 margin);
	[LinkName("QLabel_HasScaledContents")]
	public static extern bool QLabel_HasScaledContents(void* c_this);
	[LinkName("QLabel_SetScaledContents")]
	public static extern void QLabel_SetScaledContents(void* c_this, bool scaledContents);
	[LinkName("QLabel_SizeHint")]
	public static extern QSize QLabel_SizeHint(void* c_this);
	[LinkName("QLabel_MinimumSizeHint")]
	public static extern QSize QLabel_MinimumSizeHint(void* c_this);
	[LinkName("QLabel_SetBuddy")]
	public static extern void QLabel_SetBuddy(void* c_this, QWidget buddy);
	[LinkName("QLabel_Buddy")]
	public static extern QWidget QLabel_Buddy(void* c_this);
	[LinkName("QLabel_HeightForWidth")]
	public static extern int32 QLabel_HeightForWidth(void* c_this, int32 param1);
	[LinkName("QLabel_OpenExternalLinks")]
	public static extern bool QLabel_OpenExternalLinks(void* c_this);
	[LinkName("QLabel_SetOpenExternalLinks")]
	public static extern void QLabel_SetOpenExternalLinks(void* c_this, bool open);
	[LinkName("QLabel_SetTextInteractionFlags")]
	public static extern void QLabel_SetTextInteractionFlags(void* c_this, int64 flags);
	[LinkName("QLabel_TextInteractionFlags")]
	public static extern int64 QLabel_TextInteractionFlags(void* c_this);
	[LinkName("QLabel_SetSelection")]
	public static extern void QLabel_SetSelection(void* c_this, int32 param1, int32 param2);
	[LinkName("QLabel_HasSelectedText")]
	public static extern bool QLabel_HasSelectedText(void* c_this);
	[LinkName("QLabel_SelectedText")]
	public static extern char8[] QLabel_SelectedText(void* c_this);
	[LinkName("QLabel_SelectionStart")]
	public static extern int32 QLabel_SelectionStart(void* c_this);
	[LinkName("QLabel_SetText")]
	public static extern void QLabel_SetText(void* c_this, char8[] text);
	[LinkName("QLabel_SetPixmap")]
	public static extern void QLabel_SetPixmap(void* c_this, QPixmap pixmap);
	[LinkName("QLabel_SetPicture")]
	public static extern void QLabel_SetPicture(void* c_this, QPicture picture);
	[LinkName("QLabel_SetMovie")]
	public static extern void QLabel_SetMovie(void* c_this, QMovie movie);
	[LinkName("QLabel_SetNum")]
	public static extern void QLabel_SetNum(void* c_this, int32 num);
	[LinkName("QLabel_SetNumWithNum")]
	public static extern void QLabel_SetNumWithNum(void* c_this, double num);
	[LinkName("QLabel_Clear")]
	public static extern void QLabel_Clear(void* c_this);
	[LinkName("QLabel_LinkActivated")]
	public static extern void QLabel_LinkActivated(void* c_this, char8[] link);
	[LinkName("QLabel_LinkHovered")]
	public static extern void QLabel_LinkHovered(void* c_this, char8[] link);
	[LinkName("QLabel_Event")]
	public static extern bool QLabel_Event(void* c_this, QEvent e);
	[LinkName("QLabel_KeyPressEvent")]
	public static extern void QLabel_KeyPressEvent(void* c_this, QKeyEvent ev);
	[LinkName("QLabel_PaintEvent")]
	public static extern void QLabel_PaintEvent(void* c_this, QPaintEvent param1);
	[LinkName("QLabel_ChangeEvent")]
	public static extern void QLabel_ChangeEvent(void* c_this, QEvent param1);
	[LinkName("QLabel_MousePressEvent")]
	public static extern void QLabel_MousePressEvent(void* c_this, QMouseEvent ev);
	[LinkName("QLabel_MouseMoveEvent")]
	public static extern void QLabel_MouseMoveEvent(void* c_this, QMouseEvent ev);
	[LinkName("QLabel_MouseReleaseEvent")]
	public static extern void QLabel_MouseReleaseEvent(void* c_this, QMouseEvent ev);
	[LinkName("QLabel_ContextMenuEvent")]
	public static extern void QLabel_ContextMenuEvent(void* c_this, QContextMenuEvent ev);
	[LinkName("QLabel_FocusInEvent")]
	public static extern void QLabel_FocusInEvent(void* c_this, QFocusEvent ev);
	[LinkName("QLabel_FocusOutEvent")]
	public static extern void QLabel_FocusOutEvent(void* c_this, QFocusEvent ev);
	[LinkName("QLabel_FocusNextPrevChild")]
	public static extern bool QLabel_FocusNextPrevChild(void* c_this, bool next);
	[LinkName("QLabel_Tr2")]
	public static extern char8[] QLabel_Tr2(char8[] s, char8[] c);
	[LinkName("QLabel_Tr3")]
	public static extern char8[] QLabel_Tr3(char8[] s, char8[] c, int32 n);
}