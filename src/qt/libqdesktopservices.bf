using System;
using System.Interop;
namespace Qt;

public struct QDesktopServices
{
	[LinkName("QDesktopServices_new")]
	public static extern QDesktopServices* QDesktopServices_new(QDesktopServices* other);
	[LinkName("QDesktopServices_new2")]
	public static extern QDesktopServices* QDesktopServices_new2(QDesktopServices* other);
	[LinkName("QDesktopServices_OpenUrl")]
	public static extern bool QDesktopServices_OpenUrl(QUrl* url);
	[LinkName("QDesktopServices_SetUrlHandler")]
	public static extern void QDesktopServices_SetUrlHandler(libqt_string scheme, QObject* receiver, char8[] method);
	[LinkName("QDesktopServices_UnsetUrlHandler")]
	public static extern void QDesktopServices_UnsetUrlHandler(libqt_string scheme);
}