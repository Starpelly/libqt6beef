using System;
using System.Interop;
namespace Qt;

public struct QLabel : QFrame
{
	[LinkName("QLabel_new")]
	public static extern QLabel* QLabel_new(QWidget* parent);
	[LinkName("QLabel_new2")]
	public static extern QLabel* QLabel_new2();
	[LinkName("QLabel_new3")]
	public static extern QLabel* QLabel_new3(libqt_string text);
	[LinkName("QLabel_new4")]
	public static extern QLabel* QLabel_new4(QWidget* parent, int64 f);
	[LinkName("QLabel_new5")]
	public static extern QLabel* QLabel_new5(libqt_string text, QWidget* parent);
	[LinkName("QLabel_new6")]
	public static extern QLabel* QLabel_new6(libqt_string text, QWidget* parent, int64 f);
	[LinkName("QLabel_MetaObject")]
	public static extern QMetaObject* QLabel_MetaObject(Self* c_this);
	[LinkName("QLabel_Metacast")]
	public static extern void* QLabel_Metacast(Self* c_this, char8[] param1);
	[LinkName("QLabel_Metacall")]
	public static extern int32 QLabel_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QLabel_Tr")]
	public static extern libqt_string QLabel_Tr(char8[] s);
	[LinkName("QLabel_Text")]
	public static extern libqt_string QLabel_Text(Self* c_this);
	[LinkName("QLabel_Pixmap")]
	public static extern QPixmap QLabel_Pixmap(Self* c_this, int64 param1);
	[LinkName("QLabel_Pixmap2")]
	public static extern QPixmap QLabel_Pixmap2(Self* c_this);
	[LinkName("QLabel_Picture")]
	public static extern QPicture QLabel_Picture(Self* c_this, int64 param1);
	[LinkName("QLabel_Picture2")]
	public static extern QPicture QLabel_Picture2(Self* c_this);
	[LinkName("QLabel_Movie")]
	public static extern QMovie* QLabel_Movie(Self* c_this);
	[LinkName("QLabel_TextFormat")]
	public static extern int64 QLabel_TextFormat(Self* c_this);
	[LinkName("QLabel_SetTextFormat")]
	public static extern void QLabel_SetTextFormat(Self* c_this, int64 textFormat);
	[LinkName("QLabel_Alignment")]
	public static extern int64 QLabel_Alignment(Self* c_this);
	[LinkName("QLabel_SetAlignment")]
	public static extern void QLabel_SetAlignment(Self* c_this, int64 alignment);
	[LinkName("QLabel_SetWordWrap")]
	public static extern void QLabel_SetWordWrap(Self* c_this, bool on);
	[LinkName("QLabel_WordWrap")]
	public static extern bool QLabel_WordWrap(Self* c_this);
	[LinkName("QLabel_Indent")]
	public static extern int32 QLabel_Indent(Self* c_this);
	[LinkName("QLabel_SetIndent")]
	public static extern void QLabel_SetIndent(Self* c_this, int32 indent);
	[LinkName("QLabel_Margin")]
	public static extern int32 QLabel_Margin(Self* c_this);
	[LinkName("QLabel_SetMargin")]
	public static extern void QLabel_SetMargin(Self* c_this, int32 margin);
	[LinkName("QLabel_HasScaledContents")]
	public static extern bool QLabel_HasScaledContents(Self* c_this);
	[LinkName("QLabel_SetScaledContents")]
	public static extern void QLabel_SetScaledContents(Self* c_this, bool scaledContents);
	[LinkName("QLabel_SizeHint")]
	public static extern QSize QLabel_SizeHint(Self* c_this);
	[LinkName("QLabel_MinimumSizeHint")]
	public static extern QSize QLabel_MinimumSizeHint(Self* c_this);
	[LinkName("QLabel_SetBuddy")]
	public static extern void QLabel_SetBuddy(Self* c_this, QWidget* buddy);
	[LinkName("QLabel_Buddy")]
	public static extern QWidget* QLabel_Buddy(Self* c_this);
	[LinkName("QLabel_HeightForWidth")]
	public static extern int32 QLabel_HeightForWidth(Self* c_this, int32 param1);
	[LinkName("QLabel_OpenExternalLinks")]
	public static extern bool QLabel_OpenExternalLinks(Self* c_this);
	[LinkName("QLabel_SetOpenExternalLinks")]
	public static extern void QLabel_SetOpenExternalLinks(Self* c_this, bool open);
	[LinkName("QLabel_SetTextInteractionFlags")]
	public static extern void QLabel_SetTextInteractionFlags(Self* c_this, int64 flags);
	[LinkName("QLabel_TextInteractionFlags")]
	public static extern int64 QLabel_TextInteractionFlags(Self* c_this);
	[LinkName("QLabel_SetSelection")]
	public static extern void QLabel_SetSelection(Self* c_this, int32 param1, int32 param2);
	[LinkName("QLabel_HasSelectedText")]
	public static extern bool QLabel_HasSelectedText(Self* c_this);
	[LinkName("QLabel_SelectedText")]
	public static extern libqt_string QLabel_SelectedText(Self* c_this);
	[LinkName("QLabel_SelectionStart")]
	public static extern int32 QLabel_SelectionStart(Self* c_this);
	[LinkName("QLabel_SetText")]
	public static extern void QLabel_SetText(Self* c_this, libqt_string text);
	[LinkName("QLabel_SetPixmap")]
	public static extern void QLabel_SetPixmap(Self* c_this, QPixmap* pixmap);
	[LinkName("QLabel_SetPicture")]
	public static extern void QLabel_SetPicture(Self* c_this, QPicture* picture);
	[LinkName("QLabel_SetMovie")]
	public static extern void QLabel_SetMovie(Self* c_this, QMovie* movie);
	[LinkName("QLabel_SetNum")]
	public static extern void QLabel_SetNum(Self* c_this, int32 num);
	[LinkName("QLabel_SetNumWithNum")]
	public static extern void QLabel_SetNumWithNum(Self* c_this, double num);
	[LinkName("QLabel_Clear")]
	public static extern void QLabel_Clear(Self* c_this);
	[LinkName("QLabel_LinkActivated")]
	public static extern void QLabel_LinkActivated(Self* c_this, libqt_string link);
	[LinkName("QLabel_LinkHovered")]
	public static extern void QLabel_LinkHovered(Self* c_this, libqt_string link);
	[LinkName("QLabel_Event")]
	public static extern bool QLabel_Event(Self* c_this, QEvent* e);
	[LinkName("QLabel_KeyPressEvent")]
	public static extern void QLabel_KeyPressEvent(Self* c_this, QKeyEvent* ev);
	[LinkName("QLabel_PaintEvent")]
	public static extern void QLabel_PaintEvent(Self* c_this, QPaintEvent* param1);
	[LinkName("QLabel_ChangeEvent")]
	public static extern void QLabel_ChangeEvent(Self* c_this, QEvent* param1);
	[LinkName("QLabel_MousePressEvent")]
	public static extern void QLabel_MousePressEvent(Self* c_this, QMouseEvent* ev);
	[LinkName("QLabel_MouseMoveEvent")]
	public static extern void QLabel_MouseMoveEvent(Self* c_this, QMouseEvent* ev);
	[LinkName("QLabel_MouseReleaseEvent")]
	public static extern void QLabel_MouseReleaseEvent(Self* c_this, QMouseEvent* ev);
	[LinkName("QLabel_ContextMenuEvent")]
	public static extern void QLabel_ContextMenuEvent(Self* c_this, QContextMenuEvent* ev);
	[LinkName("QLabel_FocusInEvent")]
	public static extern void QLabel_FocusInEvent(Self* c_this, QFocusEvent* ev);
	[LinkName("QLabel_FocusOutEvent")]
	public static extern void QLabel_FocusOutEvent(Self* c_this, QFocusEvent* ev);
	[LinkName("QLabel_FocusNextPrevChild")]
	public static extern bool QLabel_FocusNextPrevChild(Self* c_this, bool next);
	[LinkName("QLabel_Tr2")]
	public static extern libqt_string QLabel_Tr2(char8[] s, char8[] c);
	[LinkName("QLabel_Tr3")]
	public static extern libqt_string QLabel_Tr3(char8[] s, char8[] c, int32 n);
}