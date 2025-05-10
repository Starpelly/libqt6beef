using System;
using System.Interop;
namespace Qt;

public class QDesktopServices
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QDesktopServices_new(other);
	}
	
	public ~this()
	{
		CQt.QDesktopServices_Delete(this.nativePtr);
	}
	
	public static bool OpenUrl(void* url)
	{
		return CQt.QDesktopServices_OpenUrl(url);
	}
	
	public static void SetUrlHandler(libqt_string scheme, void* receiver, char8[] method)
	{
		CQt.QDesktopServices_SetUrlHandler(scheme, receiver, method);
	}
	
	public static void UnsetUrlHandler(libqt_string scheme)
	{
		CQt.QDesktopServices_UnsetUrlHandler(scheme);
	}
	
}
extension CQt
{
	[LinkName("QDesktopServices_new")]
	public static extern void* QDesktopServices_new(void* other);
	[LinkName("QDesktopServices_new2")]
	public static extern void* QDesktopServices_new2(void* other);
	[LinkName("QDesktopServices_OpenUrl")]
	public static extern bool QDesktopServices_OpenUrl(void* url);
	[LinkName("QDesktopServices_SetUrlHandler")]
	public static extern void QDesktopServices_SetUrlHandler(libqt_string scheme, void* receiver, char8[] method);
	[LinkName("QDesktopServices_UnsetUrlHandler")]
	public static extern void QDesktopServices_UnsetUrlHandler(libqt_string scheme);
	/// Delete this object from C++ memory
	[LinkName("QDesktopServices_Delete")]
	public static extern void QDesktopServices_Delete(void* self);
}