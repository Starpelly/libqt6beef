using System;
using System.Interop;
namespace Qt;

public struct QSplashScreen : QWidget
{
	[LinkName("QSplashScreen_new")]
	public static extern QSplashScreen* QSplashScreen_new();
	[LinkName("QSplashScreen_new2")]
	public static extern QSplashScreen* QSplashScreen_new2(QScreen* screen);
	[LinkName("QSplashScreen_new3")]
	public static extern QSplashScreen* QSplashScreen_new3(QPixmap* pixmap);
	[LinkName("QSplashScreen_new4")]
	public static extern QSplashScreen* QSplashScreen_new4(QPixmap* pixmap, int64 f);
	[LinkName("QSplashScreen_new5")]
	public static extern QSplashScreen* QSplashScreen_new5(QScreen* screen, QPixmap* pixmap);
	[LinkName("QSplashScreen_new6")]
	public static extern QSplashScreen* QSplashScreen_new6(QScreen* screen, QPixmap* pixmap, int64 f);
	[LinkName("QSplashScreen_MetaObject")]
	public static extern QMetaObject* QSplashScreen_MetaObject(Self* c_this);
	[LinkName("QSplashScreen_Metacast")]
	public static extern void* QSplashScreen_Metacast(Self* c_this, char8[] param1);
	[LinkName("QSplashScreen_Metacall")]
	public static extern int32 QSplashScreen_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QSplashScreen_Tr")]
	public static extern libqt_string QSplashScreen_Tr(char8[] s);
	[LinkName("QSplashScreen_SetPixmap")]
	public static extern void QSplashScreen_SetPixmap(Self* c_this, QPixmap* pixmap);
	[LinkName("QSplashScreen_Pixmap")]
	public static extern QPixmap QSplashScreen_Pixmap(Self* c_this);
	[LinkName("QSplashScreen_Finish")]
	public static extern void QSplashScreen_Finish(Self* c_this, QWidget* w);
	[LinkName("QSplashScreen_Repaint")]
	public static extern void QSplashScreen_Repaint(Self* c_this);
	[LinkName("QSplashScreen_Message")]
	public static extern libqt_string QSplashScreen_Message(Self* c_this);
	[LinkName("QSplashScreen_ShowMessage")]
	public static extern void QSplashScreen_ShowMessage(Self* c_this, libqt_string message);
	[LinkName("QSplashScreen_ClearMessage")]
	public static extern void QSplashScreen_ClearMessage(Self* c_this);
	[LinkName("QSplashScreen_Connect_MessageChanged")]
	public static extern void QSplashScreen_Connect_MessageChanged(Self* c_this, c_intptr slot);
	[LinkName("QSplashScreen_Event")]
	public static extern bool QSplashScreen_Event(Self* c_this, QEvent* e);
	[LinkName("QSplashScreen_DrawContents")]
	public static extern void QSplashScreen_DrawContents(Self* c_this, QPainter* painter);
	[LinkName("QSplashScreen_MousePressEvent")]
	public static extern void QSplashScreen_MousePressEvent(Self* c_this, QMouseEvent* param1);
	[LinkName("QSplashScreen_Tr2")]
	public static extern libqt_string QSplashScreen_Tr2(char8[] s, char8[] c);
	[LinkName("QSplashScreen_Tr3")]
	public static extern libqt_string QSplashScreen_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QSplashScreen_ShowMessage2")]
	public static extern void QSplashScreen_ShowMessage2(Self* c_this, libqt_string message, int32 alignment);
	[LinkName("QSplashScreen_ShowMessage3")]
	public static extern void QSplashScreen_ShowMessage3(Self* c_this, libqt_string message, int32 alignment, QColor* color);
}