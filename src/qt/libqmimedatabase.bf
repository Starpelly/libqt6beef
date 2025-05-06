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
	public static extern QMimeDatabase* QMimeDatabase_new();
	[LinkName("QMimeDatabase_MimeTypeForName")]
	public static extern QMimeType QMimeDatabase_MimeTypeForName(Self* c_this, libqt_string nameOrAlias);
	[LinkName("QMimeDatabase_MimeTypeForFile")]
	public static extern QMimeType QMimeDatabase_MimeTypeForFile(Self* c_this, libqt_string fileName);
	[LinkName("QMimeDatabase_MimeTypeForFileWithFileInfo")]
	public static extern QMimeType QMimeDatabase_MimeTypeForFileWithFileInfo(Self* c_this, QFileInfo* fileInfo);
	[LinkName("QMimeDatabase_MimeTypesForFileName")]
	public static extern QMimeType[] QMimeDatabase_MimeTypesForFileName(Self* c_this, libqt_string fileName);
	[LinkName("QMimeDatabase_MimeTypeForData")]
	public static extern QMimeType QMimeDatabase_MimeTypeForData(Self* c_this, libqt_string data);
	[LinkName("QMimeDatabase_MimeTypeForDataWithDevice")]
	public static extern QMimeType QMimeDatabase_MimeTypeForDataWithDevice(Self* c_this, QIODevice* device);
	[LinkName("QMimeDatabase_MimeTypeForUrl")]
	public static extern QMimeType QMimeDatabase_MimeTypeForUrl(Self* c_this, QUrl* url);
	[LinkName("QMimeDatabase_MimeTypeForFileNameAndData")]
	public static extern QMimeType QMimeDatabase_MimeTypeForFileNameAndData(Self* c_this, libqt_string fileName, QIODevice* device);
	[LinkName("QMimeDatabase_MimeTypeForFileNameAndData2")]
	public static extern QMimeType QMimeDatabase_MimeTypeForFileNameAndData2(Self* c_this, libqt_string fileName, libqt_string data);
	[LinkName("QMimeDatabase_SuffixForFileName")]
	public static extern libqt_string QMimeDatabase_SuffixForFileName(Self* c_this, libqt_string fileName);
	[LinkName("QMimeDatabase_AllMimeTypes")]
	public static extern QMimeType[] QMimeDatabase_AllMimeTypes(Self* c_this);
	[LinkName("QMimeDatabase_MimeTypeForFile2")]
	public static extern QMimeType QMimeDatabase_MimeTypeForFile2(Self* c_this, libqt_string fileName, int64 mode);
	[LinkName("QMimeDatabase_MimeTypeForFile22")]
	public static extern QMimeType QMimeDatabase_MimeTypeForFile22(Self* c_this, QFileInfo* fileInfo, int64 mode);
}