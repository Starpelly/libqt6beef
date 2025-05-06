using System;
using System.Interop;
namespace Qt;

public struct QCommandLinkButton
{
	[LinkName("QCommandLinkButton_new")]
	public static extern void* QCommandLinkButton_new(QWidget parent);
	[LinkName("QCommandLinkButton_new2")]
	public static extern void* QCommandLinkButton_new2();
	[LinkName("QCommandLinkButton_new3")]
	public static extern void* QCommandLinkButton_new3(char8[] text);
	[LinkName("QCommandLinkButton_new4")]
	public static extern void* QCommandLinkButton_new4(char8[] text, char8[] description);
	[LinkName("QCommandLinkButton_new5")]
	public static extern void* QCommandLinkButton_new5(char8[] text, QWidget parent);
	[LinkName("QCommandLinkButton_new6")]
	public static extern void* QCommandLinkButton_new6(char8[] text, char8[] description, QWidget parent);
	[LinkName("QCommandLinkButton_MetaObject")]
	public static extern QMetaObject QCommandLinkButton_MetaObject(void* c_this);
	[LinkName("QCommandLinkButton_Metacast")]
	public static extern void QCommandLinkButton_Metacast(void* c_this, char8[] param1);
	[LinkName("QCommandLinkButton_Metacall")]
	public static extern int32 QCommandLinkButton_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QCommandLinkButton_Tr")]
	public static extern char8[] QCommandLinkButton_Tr(char8[] s);
	[LinkName("QCommandLinkButton_Description")]
	public static extern char8[] QCommandLinkButton_Description(void* c_this);
	[LinkName("QCommandLinkButton_SetDescription")]
	public static extern void QCommandLinkButton_SetDescription(void* c_this, char8[] description);
	[LinkName("QCommandLinkButton_SizeHint")]
	public static extern QSize QCommandLinkButton_SizeHint(void* c_this);
	[LinkName("QCommandLinkButton_HeightForWidth")]
	public static extern int32 QCommandLinkButton_HeightForWidth(void* c_this, int32 param1);
	[LinkName("QCommandLinkButton_MinimumSizeHint")]
	public static extern QSize QCommandLinkButton_MinimumSizeHint(void* c_this);
	[LinkName("QCommandLinkButton_InitStyleOption")]
	public static extern void QCommandLinkButton_InitStyleOption(void* c_this, QStyleOptionButton option);
	[LinkName("QCommandLinkButton_Event")]
	public static extern bool QCommandLinkButton_Event(void* c_this, QEvent e);
	[LinkName("QCommandLinkButton_PaintEvent")]
	public static extern void QCommandLinkButton_PaintEvent(void* c_this, QPaintEvent param1);
	[LinkName("QCommandLinkButton_Tr2")]
	public static extern char8[] QCommandLinkButton_Tr2(char8[] s, char8[] c);
	[LinkName("QCommandLinkButton_Tr3")]
	public static extern char8[] QCommandLinkButton_Tr3(char8[] s, char8[] c, int32 n);
}