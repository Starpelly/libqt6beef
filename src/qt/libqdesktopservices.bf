using System;
using System.Interop;
namespace Qt;

public interface IQDesktopServices
{
	void* NativePtr { get; }
}
public struct QDesktopServicesPtr : IQDesktopServices, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQDesktopServices other)
	{
		return .(CQt.QDesktopServices_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QDesktopServices_Delete(this.nativePtr);
	}
	
	public static bool OpenUrl(IQUrl url)
	{
		return CQt.QDesktopServices_OpenUrl((url == default || url.NativePtr == default) ? default : url.NativePtr);
	}
	
	public static void SetUrlHandler(String scheme, IQObject receiver, char8* method)
	{
		CQt.QDesktopServices_SetUrlHandler(libqt_string(scheme), (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, method);
	}
	
	public static void UnsetUrlHandler(String scheme)
	{
		CQt.QDesktopServices_UnsetUrlHandler(libqt_string(scheme));
	}
	
}
public class QDesktopServices
{
	public QDesktopServicesPtr handle;
	
	public static implicit operator QDesktopServicesPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQDesktopServices other)
	{
		this.handle = QDesktopServicesPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public static bool OpenUrl(IQUrl url)
	{
		return QDesktopServicesPtr.OpenUrl(url);
	}
	
	public static void SetUrlHandler(String scheme, IQObject receiver, char8* method)
	{
		QDesktopServicesPtr.SetUrlHandler(scheme, receiver, method);
	}
	
	public static void UnsetUrlHandler(String scheme)
	{
		QDesktopServicesPtr.UnsetUrlHandler(scheme);
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