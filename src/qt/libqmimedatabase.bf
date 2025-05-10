using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QMimeDatabase__MatchMode
{
	MatchDefault = 0,
	MatchExtension = 1,
	MatchContent = 2,
}
public interface IQMimeDatabase
{
	void* NativePtr { get; }
}
public class QMimeDatabase : IQMimeDatabase
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QMimeDatabase_new();
	}
	
	public ~this()
	{
		CQt.QMimeDatabase_Delete(this.nativePtr);
	}
	
	public void MimeTypeForName(String nameOrAlias)
	{
		CQt.QMimeDatabase_MimeTypeForName(this.nativePtr, libqt_string(nameOrAlias));
	}
	
	public void MimeTypeForFile(String fileName)
	{
		CQt.QMimeDatabase_MimeTypeForFile(this.nativePtr, libqt_string(fileName));
	}
	
	public void MimeTypeForFileWithFileInfo(IQFileInfo fileInfo)
	{
		CQt.QMimeDatabase_MimeTypeForFileWithFileInfo(this.nativePtr, (fileInfo == default) ? default : (void*)fileInfo.NativePtr);
	}
	
	public void[] MimeTypesForFileName(String fileName)
	{
		return CQt.QMimeDatabase_MimeTypesForFileName(this.nativePtr, libqt_string(fileName));
	}
	
	public void MimeTypeForData(String data)
	{
		CQt.QMimeDatabase_MimeTypeForData(this.nativePtr, libqt_string(data));
	}
	
	public void MimeTypeForDataWithDevice(IQIODevice device)
	{
		CQt.QMimeDatabase_MimeTypeForDataWithDevice(this.nativePtr, (device == null) ? null : (void*)device.NativePtr);
	}
	
	public void MimeTypeForUrl(IQUrl url)
	{
		CQt.QMimeDatabase_MimeTypeForUrl(this.nativePtr, (url == default) ? default : (void*)url.NativePtr);
	}
	
	public void MimeTypeForFileNameAndData(String fileName, IQIODevice device)
	{
		CQt.QMimeDatabase_MimeTypeForFileNameAndData(this.nativePtr, libqt_string(fileName), (device == null) ? null : (void*)device.NativePtr);
	}
	
	public void MimeTypeForFileNameAndData2(String fileName, String data)
	{
		CQt.QMimeDatabase_MimeTypeForFileNameAndData2(this.nativePtr, libqt_string(fileName), libqt_string(data));
	}
	
	public libqt_string SuffixForFileName(String fileName)
	{
		return CQt.QMimeDatabase_SuffixForFileName(this.nativePtr, libqt_string(fileName));
	}
	
	public void[] AllMimeTypes()
	{
		return CQt.QMimeDatabase_AllMimeTypes(this.nativePtr);
	}
	
	public void MimeTypeForFile2(String fileName, int64 mode)
	{
		CQt.QMimeDatabase_MimeTypeForFile2(this.nativePtr, libqt_string(fileName), mode);
	}
	
	public void MimeTypeForFile22(IQFileInfo fileInfo, int64 mode)
	{
		CQt.QMimeDatabase_MimeTypeForFile22(this.nativePtr, (fileInfo == default) ? default : (void*)fileInfo.NativePtr, mode);
	}
	
}
extension CQt
{
	[LinkName("QMimeDatabase_new")]
	public static extern void* QMimeDatabase_new();
	[LinkName("QMimeDatabase_MimeTypeForName")]
	public static extern void QMimeDatabase_MimeTypeForName(void* c_this, libqt_string nameOrAlias);
	[LinkName("QMimeDatabase_MimeTypeForFile")]
	public static extern void QMimeDatabase_MimeTypeForFile(void* c_this, libqt_string fileName);
	[LinkName("QMimeDatabase_MimeTypeForFileWithFileInfo")]
	public static extern void QMimeDatabase_MimeTypeForFileWithFileInfo(void* c_this, void* fileInfo);
	[LinkName("QMimeDatabase_MimeTypesForFileName")]
	public static extern void[] QMimeDatabase_MimeTypesForFileName(void* c_this, libqt_string fileName);
	[LinkName("QMimeDatabase_MimeTypeForData")]
	public static extern void QMimeDatabase_MimeTypeForData(void* c_this, libqt_string data);
	[LinkName("QMimeDatabase_MimeTypeForDataWithDevice")]
	public static extern void QMimeDatabase_MimeTypeForDataWithDevice(void* c_this, void* device);
	[LinkName("QMimeDatabase_MimeTypeForUrl")]
	public static extern void QMimeDatabase_MimeTypeForUrl(void* c_this, void* url);
	[LinkName("QMimeDatabase_MimeTypeForFileNameAndData")]
	public static extern void QMimeDatabase_MimeTypeForFileNameAndData(void* c_this, libqt_string fileName, void* device);
	[LinkName("QMimeDatabase_MimeTypeForFileNameAndData2")]
	public static extern void QMimeDatabase_MimeTypeForFileNameAndData2(void* c_this, libqt_string fileName, libqt_string data);
	[LinkName("QMimeDatabase_SuffixForFileName")]
	public static extern libqt_string QMimeDatabase_SuffixForFileName(void* c_this, libqt_string fileName);
	[LinkName("QMimeDatabase_AllMimeTypes")]
	public static extern void[] QMimeDatabase_AllMimeTypes(void* c_this);
	[LinkName("QMimeDatabase_MimeTypeForFile2")]
	public static extern void QMimeDatabase_MimeTypeForFile2(void* c_this, libqt_string fileName, int64 mode);
	[LinkName("QMimeDatabase_MimeTypeForFile22")]
	public static extern void QMimeDatabase_MimeTypeForFile22(void* c_this, void* fileInfo, int64 mode);
	/// Delete this object from C++ memory
	[LinkName("QMimeDatabase_Delete")]
	public static extern void QMimeDatabase_Delete(void* self);
}