using System;
using System.Interop;
namespace Qt;

public struct QFileSystemWatcher
{
	[LinkName("QFileSystemWatcher_new")]
	public static extern void* QFileSystemWatcher_new();
	[LinkName("QFileSystemWatcher_new2")]
	public static extern void* QFileSystemWatcher_new2(char8[][] paths);
	[LinkName("QFileSystemWatcher_new3")]
	public static extern void* QFileSystemWatcher_new3(QObject parent);
	[LinkName("QFileSystemWatcher_new4")]
	public static extern void* QFileSystemWatcher_new4(char8[][] paths, QObject parent);
	[LinkName("QFileSystemWatcher_MetaObject")]
	public static extern QMetaObject QFileSystemWatcher_MetaObject(void* c_this);
	[LinkName("QFileSystemWatcher_Metacast")]
	public static extern void QFileSystemWatcher_Metacast(void* c_this, char8[] param1);
	[LinkName("QFileSystemWatcher_Metacall")]
	public static extern int32 QFileSystemWatcher_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QFileSystemWatcher_Tr")]
	public static extern char8[] QFileSystemWatcher_Tr(char8[] s);
	[LinkName("QFileSystemWatcher_AddPath")]
	public static extern bool QFileSystemWatcher_AddPath(void* c_this, char8[] file);
	[LinkName("QFileSystemWatcher_AddPaths")]
	public static extern char8[][] QFileSystemWatcher_AddPaths(void* c_this, char8[][] files);
	[LinkName("QFileSystemWatcher_RemovePath")]
	public static extern bool QFileSystemWatcher_RemovePath(void* c_this, char8[] file);
	[LinkName("QFileSystemWatcher_RemovePaths")]
	public static extern char8[][] QFileSystemWatcher_RemovePaths(void* c_this, char8[][] files);
	[LinkName("QFileSystemWatcher_Files")]
	public static extern char8[][] QFileSystemWatcher_Files(void* c_this);
	[LinkName("QFileSystemWatcher_Directories")]
	public static extern char8[][] QFileSystemWatcher_Directories(void* c_this);
	[LinkName("QFileSystemWatcher_Tr2")]
	public static extern char8[] QFileSystemWatcher_Tr2(char8[] s, char8[] c);
	[LinkName("QFileSystemWatcher_Tr3")]
	public static extern char8[] QFileSystemWatcher_Tr3(char8[] s, char8[] c, int32 n);
}