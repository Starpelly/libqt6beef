using System;
using System.Interop;
namespace Qt;

public interface IQDesktopServices
{
	void* NativePtr { get; }
}
public class QDesktopServices : IQDesktopServices
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQDesktopServices other)
	{
		this.nativePtr = CQt.QDesktopServices_new((other == default) ? default : (void*)other.NativePtr);
	}
	
	public ~this()
	{
		CQt.QDesktopServices_Delete(this.nativePtr);
	}
	
	public static bool OpenUrl(IQUrl url)
	{
		return CQt.QDesktopServices_OpenUrl((url == default) ? default : (void*)url.NativePtr);
	}
	
	public static void SetUrlHandler(String scheme, IQObject receiver, char8* method)
	{
		CQt.QDesktopServices_SetUrlHandler(libqt_string(scheme), (receiver == null) ? null : (void*)receiver.NativePtr, method);
	}
	
	public static void UnsetUrlHandler(String scheme)
	{
		CQt.QDesktopServices_UnsetUrlHandler(libqt_string(scheme));
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
	public static extern void QDesktopServices_SetUrlHandler(libqt_string scheme, void* receiver, char8* method);
	[LinkName("QDesktopServices_UnsetUrlHandler")]
	public static extern void QDesktopServices_UnsetUrlHandler(libqt_string scheme);
	/// Delete this object from C++ memory
	[LinkName("QDesktopServices_Delete")]
	public static extern void QDesktopServices_Delete(void* self);
}