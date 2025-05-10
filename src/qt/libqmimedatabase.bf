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
public class QMimeDatabase
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QMimeDatabase_new();
	}
	
	public ~this()
	{
		CQt.QMimeDatabase_Delete(this.nativePtr);
	}
	
	public void MimeTypeForName(libqt_string nameOrAlias)
	{
		CQt.QMimeDatabase_MimeTypeForName(this.nativePtr, nameOrAlias);
	}
	
	public void MimeTypeForFile(libqt_string fileName)
	{
		CQt.QMimeDatabase_MimeTypeForFile(this.nativePtr, fileName);
	}
	
	public void MimeTypeForFileWithFileInfo(void* fileInfo)
	{
		CQt.QMimeDatabase_MimeTypeForFileWithFileInfo(this.nativePtr, fileInfo);
	}
	
	public void[] MimeTypesForFileName(libqt_string fileName)
	{
		return CQt.QMimeDatabase_MimeTypesForFileName(this.nativePtr, fileName);
	}
	
	public void MimeTypeForData(libqt_string data)
	{
		CQt.QMimeDatabase_MimeTypeForData(this.nativePtr, data);
	}
	
	public void MimeTypeForDataWithDevice(void* device)
	{
		CQt.QMimeDatabase_MimeTypeForDataWithDevice(this.nativePtr, device);
	}
	
	public void MimeTypeForUrl(void* url)
	{
		CQt.QMimeDatabase_MimeTypeForUrl(this.nativePtr, url);
	}
	
	public void MimeTypeForFileNameAndData(libqt_string fileName, void* device)
	{
		CQt.QMimeDatabase_MimeTypeForFileNameAndData(this.nativePtr, fileName, device);
	}
	
	public void MimeTypeForFileNameAndData2(libqt_string fileName, libqt_string data)
	{
		CQt.QMimeDatabase_MimeTypeForFileNameAndData2(this.nativePtr, fileName, data);
	}
	
	public libqt_string SuffixForFileName(libqt_string fileName)
	{
		return CQt.QMimeDatabase_SuffixForFileName(this.nativePtr, fileName);
	}
	
	public void[] AllMimeTypes()
	{
		return CQt.QMimeDatabase_AllMimeTypes(this.nativePtr);
	}
	
	public void MimeTypeForFile2(libqt_string fileName, int64 mode)
	{
		CQt.QMimeDatabase_MimeTypeForFile2(this.nativePtr, fileName, mode);
	}
	
	public void MimeTypeForFile22(void* fileInfo, int64 mode)
	{
		CQt.QMimeDatabase_MimeTypeForFile22(this.nativePtr, fileInfo, mode);
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