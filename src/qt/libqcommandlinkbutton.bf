using System;
using System.Interop;
namespace Qt;

public struct QCommandLinkButton : QPushButton
{
	[LinkName("QCommandLinkButton_new")]
	public static extern QCommandLinkButton* QCommandLinkButton_new(QWidget* parent);
	[LinkName("QCommandLinkButton_new2")]
	public static extern QCommandLinkButton* QCommandLinkButton_new2();
	[LinkName("QCommandLinkButton_new3")]
	public static extern QCommandLinkButton* QCommandLinkButton_new3(libqt_string text);
	[LinkName("QCommandLinkButton_new4")]
	public static extern QCommandLinkButton* QCommandLinkButton_new4(libqt_string text, libqt_string description);
	[LinkName("QCommandLinkButton_new5")]
	public static extern QCommandLinkButton* QCommandLinkButton_new5(libqt_string text, QWidget* parent);
	[LinkName("QCommandLinkButton_new6")]
	public static extern QCommandLinkButton* QCommandLinkButton_new6(libqt_string text, libqt_string description, QWidget* parent);
	[LinkName("QCommandLinkButton_MetaObject")]
	public static extern QMetaObject* QCommandLinkButton_MetaObject(Self* c_this);
	[LinkName("QCommandLinkButton_Metacast")]
	public static extern void* QCommandLinkButton_Metacast(Self* c_this, char8[] param1);
	[LinkName("QCommandLinkButton_Metacall")]
	public static extern int32 QCommandLinkButton_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QCommandLinkButton_Tr")]
	public static extern libqt_string QCommandLinkButton_Tr(char8[] s);
	[LinkName("QCommandLinkButton_Description")]
	public static extern libqt_string QCommandLinkButton_Description(Self* c_this);
	[LinkName("QCommandLinkButton_SetDescription")]
	public static extern void QCommandLinkButton_SetDescription(Self* c_this, libqt_string description);
	[LinkName("QCommandLinkButton_SizeHint")]
	public static extern QSize QCommandLinkButton_SizeHint(Self* c_this);
	[LinkName("QCommandLinkButton_HeightForWidth")]
	public static extern int32 QCommandLinkButton_HeightForWidth(Self* c_this, int32 param1);
	[LinkName("QCommandLinkButton_MinimumSizeHint")]
	public static extern QSize QCommandLinkButton_MinimumSizeHint(Self* c_this);
	[LinkName("QCommandLinkButton_InitStyleOption")]
	public static extern void QCommandLinkButton_InitStyleOption(Self* c_this, QStyleOptionButton* option);
	[LinkName("QCommandLinkButton_Event")]
	public static extern bool QCommandLinkButton_Event(Self* c_this, QEvent* e);
	[LinkName("QCommandLinkButton_PaintEvent")]
	public static extern void QCommandLinkButton_PaintEvent(Self* c_this, QPaintEvent* param1);
	[LinkName("QCommandLinkButton_Tr2")]
	public static extern libqt_string QCommandLinkButton_Tr2(char8[] s, char8[] c);
	[LinkName("QCommandLinkButton_Tr3")]
	public static extern libqt_string QCommandLinkButton_Tr3(char8[] s, char8[] c, int32 n);
}