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
public struct QMimeDatabase
{
	[LinkName("QMimeDatabase_new")]
	public static extern void* QMimeDatabase_new();
	[LinkName("QMimeDatabase_MimeTypeForName")]
	public static extern QMimeType QMimeDatabase_MimeTypeForName(void* c_this, char8[] nameOrAlias);
	[LinkName("QMimeDatabase_MimeTypeForFile")]
	public static extern QMimeType QMimeDatabase_MimeTypeForFile(void* c_this, char8[] fileName);
	[LinkName("QMimeDatabase_MimeTypeForFileWithFileInfo")]
	public static extern QMimeType QMimeDatabase_MimeTypeForFileWithFileInfo(void* c_this, QFileInfo fileInfo);
	[LinkName("QMimeDatabase_MimeTypesForFileName")]
	public static extern QMimeType[] QMimeDatabase_MimeTypesForFileName(void* c_this, char8[] fileName);
	[LinkName("QMimeDatabase_MimeTypeForData")]
	public static extern QMimeType QMimeDatabase_MimeTypeForData(void* c_this, uint8[] data);
	[LinkName("QMimeDatabase_MimeTypeForDataWithDevice")]
	public static extern QMimeType QMimeDatabase_MimeTypeForDataWithDevice(void* c_this, QIODevice device);
	[LinkName("QMimeDatabase_MimeTypeForUrl")]
	public static extern QMimeType QMimeDatabase_MimeTypeForUrl(void* c_this, QUrl url);
	[LinkName("QMimeDatabase_MimeTypeForFileNameAndData")]
	public static extern QMimeType QMimeDatabase_MimeTypeForFileNameAndData(void* c_this, char8[] fileName, QIODevice device);
	[LinkName("QMimeDatabase_MimeTypeForFileNameAndData2")]
	public static extern QMimeType QMimeDatabase_MimeTypeForFileNameAndData2(void* c_this, char8[] fileName, uint8[] data);
	[LinkName("QMimeDatabase_SuffixForFileName")]
	public static extern char8[] QMimeDatabase_SuffixForFileName(void* c_this, char8[] fileName);
	[LinkName("QMimeDatabase_AllMimeTypes")]
	public static extern QMimeType[] QMimeDatabase_AllMimeTypes(void* c_this);
	[LinkName("QMimeDatabase_MimeTypeForFile2")]
	public static extern QMimeType QMimeDatabase_MimeTypeForFile2(void* c_this, char8[] fileName, int64 mode);
	[LinkName("QMimeDatabase_MimeTypeForFile22")]
	public static extern QMimeType QMimeDatabase_MimeTypeForFile22(void* c_this, QFileInfo fileInfo, int64 mode);
}