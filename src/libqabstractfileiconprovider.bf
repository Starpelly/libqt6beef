using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QAbstractFileIconProvider__IconType
{
	Computer = 0,
	Desktop = 1,
	Trashcan = 2,
	Network = 3,
	Drive = 4,
	Folder = 5,
	File = 6,
}
[AllowDuplicates]
public enum QAbstractFileIconProvider__Option
{
	DontUseCustomDirectoryIcons = 1,
}
public struct QAbstractFileIconProvider
{
	[LinkName("QAbstractFileIconProvider_new")]
	public static extern void* QAbstractFileIconProvider_new();
	[LinkName("QAbstractFileIconProvider_Icon")]
	public static extern QIcon QAbstractFileIconProvider_Icon(void* c_this, int64 param1);
	[LinkName("QAbstractFileIconProvider_IconWithQFileInfo")]
	public static extern QIcon QAbstractFileIconProvider_IconWithQFileInfo(void* c_this, QFileInfo param1);
	[LinkName("QAbstractFileIconProvider_Type")]
	public static extern char8[] QAbstractFileIconProvider_Type(void* c_this, QFileInfo param1);
	[LinkName("QAbstractFileIconProvider_SetOptions")]
	public static extern void QAbstractFileIconProvider_SetOptions(void* c_this, int64 options);
	[LinkName("QAbstractFileIconProvider_Options")]
	public static extern int64 QAbstractFileIconProvider_Options(void* c_this);
}