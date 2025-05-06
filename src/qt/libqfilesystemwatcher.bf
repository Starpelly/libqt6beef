using System;
using System.Interop;
namespace Qt;

public struct QFileSystemWatcher : QObject
{
	[LinkName("QFileSystemWatcher_new")]
	public static extern QFileSystemWatcher* QFileSystemWatcher_new();
	[LinkName("QFileSystemWatcher_new2")]
	public static extern QFileSystemWatcher* QFileSystemWatcher_new2(libqt_string[] paths);
	[LinkName("QFileSystemWatcher_new3")]
	public static extern QFileSystemWatcher* QFileSystemWatcher_new3(QObject* parent);
	[LinkName("QFileSystemWatcher_new4")]
	public static extern QFileSystemWatcher* QFileSystemWatcher_new4(libqt_string[] paths, QObject* parent);
	[LinkName("QFileSystemWatcher_MetaObject")]
	public static extern QMetaObject* QFileSystemWatcher_MetaObject(Self* c_this);
	[LinkName("QFileSystemWatcher_Metacast")]
	public static extern void* QFileSystemWatcher_Metacast(Self* c_this, char8[] param1);
	[LinkName("QFileSystemWatcher_Metacall")]
	public static extern int32 QFileSystemWatcher_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QFileSystemWatcher_Tr")]
	public static extern libqt_string QFileSystemWatcher_Tr(char8[] s);
	[LinkName("QFileSystemWatcher_AddPath")]
	public static extern bool QFileSystemWatcher_AddPath(Self* c_this, libqt_string file);
	[LinkName("QFileSystemWatcher_AddPaths")]
	public static extern libqt_string[] QFileSystemWatcher_AddPaths(Self* c_this, libqt_string[] files);
	[LinkName("QFileSystemWatcher_RemovePath")]
	public static extern bool QFileSystemWatcher_RemovePath(Self* c_this, libqt_string file);
	[LinkName("QFileSystemWatcher_RemovePaths")]
	public static extern libqt_string[] QFileSystemWatcher_RemovePaths(Self* c_this, libqt_string[] files);
	[LinkName("QFileSystemWatcher_Files")]
	public static extern libqt_string[] QFileSystemWatcher_Files(Self* c_this);
	[LinkName("QFileSystemWatcher_Directories")]
	public static extern libqt_string[] QFileSystemWatcher_Directories(Self* c_this);
	[LinkName("QFileSystemWatcher_Tr2")]
	public static extern libqt_string QFileSystemWatcher_Tr2(char8[] s, char8[] c);
	[LinkName("QFileSystemWatcher_Tr3")]
	public static extern libqt_string QFileSystemWatcher_Tr3(char8[] s, char8[] c, int32 n);
}