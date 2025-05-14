using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QResource__Compression
{
	NoCompression = 0,
	ZlibCompression = 1,
	ZstdCompression = 2,
}
public interface IQResource
{
	void* NativePtr { get; }
}
public struct QResourcePtr : IQResource, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QResource_new());
	}
	
	public void Dispose()
	{
		CQt.QResource_Delete(this.nativePtr);
	}
	
	public void SetFileName(String file)
	{
		CQt.QResource_SetFileName(this.nativePtr, libqt_string(file));
	}
	
	public libqt_string FileName()
	{
		return CQt.QResource_FileName(this.nativePtr);
	}
	
	public libqt_string AbsoluteFilePath()
	{
		return CQt.QResource_AbsoluteFilePath(this.nativePtr);
	}
	
	public void SetLocale(IQLocale locale)
	{
		CQt.QResource_SetLocale(this.nativePtr, (locale == default || locale.NativePtr == default) ? default : locale.NativePtr);
	}
	
	public void Locale()
	{
		CQt.QResource_Locale(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QResource_IsValid(this.nativePtr);
	}
	
	public int64 CompressionAlgorithm()
	{
		return CQt.QResource_CompressionAlgorithm(this.nativePtr);
	}
	
	public int64 Size()
	{
		return CQt.QResource_Size(this.nativePtr);
	}
	
	public uint8* Data()
	{
		return CQt.QResource_Data(this.nativePtr);
	}
	
	public int64 UncompressedSize()
	{
		return CQt.QResource_UncompressedSize(this.nativePtr);
	}
	
	public libqt_string UncompressedData()
	{
		return CQt.QResource_UncompressedData(this.nativePtr);
	}
	
	public void LastModified()
	{
		CQt.QResource_LastModified(this.nativePtr);
	}
	
	public static bool RegisterResource(String rccFilename)
	{
		return CQt.QResource_RegisterResource(libqt_string(rccFilename));
	}
	
	public static bool UnregisterResource(String rccFilename)
	{
		return CQt.QResource_UnregisterResource(libqt_string(rccFilename));
	}
	
	public static bool RegisterResourceWithRccData(uint8* rccData)
	{
		return CQt.QResource_RegisterResourceWithRccData(rccData);
	}
	
	public static bool UnregisterResourceWithRccData(uint8* rccData)
	{
		return CQt.QResource_UnregisterResourceWithRccData(rccData);
	}
	
	public static bool RegisterResource2(String rccFilename, String resourceRoot)
	{
		return CQt.QResource_RegisterResource2(libqt_string(rccFilename), libqt_string(resourceRoot));
	}
	
	public static bool UnregisterResource2(String rccFilename, String resourceRoot)
	{
		return CQt.QResource_UnregisterResource2(libqt_string(rccFilename), libqt_string(resourceRoot));
	}
	
	public static bool RegisterResource22(uint8* rccData, String resourceRoot)
	{
		return CQt.QResource_RegisterResource22(rccData, libqt_string(resourceRoot));
	}
	
	public static bool UnregisterResource22(uint8* rccData, String resourceRoot)
	{
		return CQt.QResource_UnregisterResource22(rccData, libqt_string(resourceRoot));
	}
	
}
public class QResource
{
	public QResourcePtr handle;
	
	public static implicit operator QResourcePtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QResourcePtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void SetFileName(String file)
	{
		this.handle.SetFileName(file);
	}
	
	public libqt_string FileName()
	{
		return this.handle.FileName();
	}
	
	public libqt_string AbsoluteFilePath()
	{
		return this.handle.AbsoluteFilePath();
	}
	
	public void SetLocale(IQLocale locale)
	{
		this.handle.SetLocale(locale);
	}
	
	public void Locale()
	{
		this.handle.Locale();
	}
	
	public bool IsValid()
	{
		return this.handle.IsValid();
	}
	
	public int64 CompressionAlgorithm()
	{
		return this.handle.CompressionAlgorithm();
	}
	
	public int64 Size()
	{
		return this.handle.Size();
	}
	
	public uint8* Data()
	{
		return this.handle.Data();
	}
	
	public int64 UncompressedSize()
	{
		return this.handle.UncompressedSize();
	}
	
	public libqt_string UncompressedData()
	{
		return this.handle.UncompressedData();
	}
	
	public void LastModified()
	{
		this.handle.LastModified();
	}
	
	public static bool RegisterResource(String rccFilename)
	{
		return QResourcePtr.RegisterResource(rccFilename);
	}
	
	public static bool UnregisterResource(String rccFilename)
	{
		return QResourcePtr.UnregisterResource(rccFilename);
	}
	
	public static bool RegisterResourceWithRccData(uint8* rccData)
	{
		return QResourcePtr.RegisterResourceWithRccData(rccData);
	}
	
	public static bool UnregisterResourceWithRccData(uint8* rccData)
	{
		return QResourcePtr.UnregisterResourceWithRccData(rccData);
	}
	
	public static bool RegisterResource2(String rccFilename, String resourceRoot)
	{
		return QResourcePtr.RegisterResource2(rccFilename, resourceRoot);
	}
	
	public static bool UnregisterResource2(String rccFilename, String resourceRoot)
	{
		return QResourcePtr.UnregisterResource2(rccFilename, resourceRoot);
	}
	
	public static bool RegisterResource22(uint8* rccData, String resourceRoot)
	{
		return QResourcePtr.RegisterResource22(rccData, resourceRoot);
	}
	
	public static bool UnregisterResource22(uint8* rccData, String resourceRoot)
	{
		return QResourcePtr.UnregisterResource22(rccData, resourceRoot);
	}
	
}
extension CQt
{
	[LinkName("QResource_new")]
	public static extern void* QResource_new();
	[LinkName("QResource_new2")]
	public static extern void* QResource_new2(libqt_string file);
	[LinkName("QResource_new3")]
	public static extern void* QResource_new3(libqt_string file, void* locale);
	[LinkName("QResource_SetFileName")]
	public static extern void QResource_SetFileName(void* c_this, libqt_string file);
	[LinkName("QResource_FileName")]
	public static extern libqt_string QResource_FileName(void* c_this);
	[LinkName("QResource_AbsoluteFilePath")]
	public static extern libqt_string QResource_AbsoluteFilePath(void* c_this);
	[LinkName("QResource_SetLocale")]
	public static extern void QResource_SetLocale(void* c_this, void* locale);
	[LinkName("QResource_Locale")]
	public static extern void QResource_Locale(void* c_this);
	[LinkName("QResource_IsValid")]
	public static extern bool QResource_IsValid(void* c_this);
	[LinkName("QResource_CompressionAlgorithm")]
	public static extern int64 QResource_CompressionAlgorithm(void* c_this);
	[LinkName("QResource_Size")]
	public static extern int64 QResource_Size(void* c_this);
	[LinkName("QResource_Data")]
	public static extern uint8* QResource_Data(void* c_this);
	[LinkName("QResource_UncompressedSize")]
	public static extern int64 QResource_UncompressedSize(void* c_this);
	[LinkName("QResource_UncompressedData")]
	public static extern libqt_string QResource_UncompressedData(void* c_this);
	[LinkName("QResource_LastModified")]
	public static extern void QResource_LastModified(void* c_this);
	[LinkName("QResource_RegisterResource")]
	public static extern bool QResource_RegisterResource(libqt_string rccFilename);
	[LinkName("QResource_UnregisterResource")]
	public static extern bool QResource_UnregisterResource(libqt_string rccFilename);
	[LinkName("QResource_RegisterResourceWithRccData")]
	public static extern bool QResource_RegisterResourceWithRccData(uint8* rccData);
	[LinkName("QResource_UnregisterResourceWithRccData")]
	public static extern bool QResource_UnregisterResourceWithRccData(uint8* rccData);
	[LinkName("QResource_RegisterResource2")]
	public static extern bool QResource_RegisterResource2(libqt_string rccFilename, libqt_string resourceRoot);
	[LinkName("QResource_UnregisterResource2")]
	public static extern bool QResource_UnregisterResource2(libqt_string rccFilename, libqt_string resourceRoot);
	[LinkName("QResource_RegisterResource22")]
	public static extern bool QResource_RegisterResource22(uint8* rccData, libqt_string resourceRoot);
	[LinkName("QResource_UnregisterResource22")]
	public static extern bool QResource_UnregisterResource22(uint8* rccData, libqt_string resourceRoot);
	/// Delete this object from C++ memory
	[LinkName("QResource_Delete")]
	public static extern void QResource_Delete(void* self);
}