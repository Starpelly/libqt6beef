using System;
using System.Interop;
namespace Qt;

public struct QSplashScreen
{
	[LinkName("QSplashScreen_new")]
	public static extern void* QSplashScreen_new();
	[LinkName("QSplashScreen_new2")]
	public static extern void* QSplashScreen_new2(QScreen screen);
	[LinkName("QSplashScreen_new3")]
	public static extern void* QSplashScreen_new3(QPixmap pixmap);
	[LinkName("QSplashScreen_new4")]
	public static extern void* QSplashScreen_new4(QPixmap pixmap, int64 f);
	[LinkName("QSplashScreen_new5")]
	public static extern void* QSplashScreen_new5(QScreen screen, QPixmap pixmap);
	[LinkName("QSplashScreen_new6")]
	public static extern void* QSplashScreen_new6(QScreen screen, QPixmap pixmap, int64 f);
	[LinkName("QSplashScreen_MetaObject")]
	public static extern QMetaObject QSplashScreen_MetaObject(void* c_this);
	[LinkName("QSplashScreen_Metacast")]
	public static extern void QSplashScreen_Metacast(void* c_this, char8[] param1);
	[LinkName("QSplashScreen_Metacall")]
	public static extern int32 QSplashScreen_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QSplashScreen_Tr")]
	public static extern char8[] QSplashScreen_Tr(char8[] s);
	[LinkName("QSplashScreen_SetPixmap")]
	public static extern void QSplashScreen_SetPixmap(void* c_this, QPixmap pixmap);
	[LinkName("QSplashScreen_Pixmap")]
	public static extern QPixmap QSplashScreen_Pixmap(void* c_this);
	[LinkName("QSplashScreen_Finish")]
	public static extern void QSplashScreen_Finish(void* c_this, QWidget w);
	[LinkName("QSplashScreen_Repaint")]
	public static extern void QSplashScreen_Repaint(void* c_this);
	[LinkName("QSplashScreen_Message")]
	public static extern char8[] QSplashScreen_Message(void* c_this);
	[LinkName("QSplashScreen_ShowMessage")]
	public static extern void QSplashScreen_ShowMessage(void* c_this, char8[] message);
	[LinkName("QSplashScreen_ClearMessage")]
	public static extern void QSplashScreen_ClearMessage(void* c_this);
	[LinkName("QSplashScreen_MessageChanged")]
	public static extern void QSplashScreen_MessageChanged(void* c_this, char8[] message);
	[LinkName("QSplashScreen_Event")]
	public static extern bool QSplashScreen_Event(void* c_this, QEvent e);
	[LinkName("QSplashScreen_DrawContents")]
	public static extern void QSplashScreen_DrawContents(void* c_this, QPainter painter);
	[LinkName("QSplashScreen_MousePressEvent")]
	public static extern void QSplashScreen_MousePressEvent(void* c_this, QMouseEvent param1);
	[LinkName("QSplashScreen_Tr2")]
	public static extern char8[] QSplashScreen_Tr2(char8[] s, char8[] c);
	[LinkName("QSplashScreen_Tr3")]
	public static extern char8[] QSplashScreen_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QSplashScreen_ShowMessage2")]
	public static extern void QSplashScreen_ShowMessage2(void* c_this, char8[] message, int32 alignment);
	[LinkName("QSplashScreen_ShowMessage3")]
	public static extern void QSplashScreen_ShowMessage3(void* c_this, char8[] message, int32 alignment, QColor color);
}