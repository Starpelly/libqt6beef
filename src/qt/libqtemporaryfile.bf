using System;
using System.Interop;
namespace Qt;

public struct QTemporaryFile : QFile
{
	[LinkName("QTemporaryFile_new")]
	public static extern QTemporaryFile* QTemporaryFile_new();
	[LinkName("QTemporaryFile_new2")]
	public static extern QTemporaryFile* QTemporaryFile_new2(libqt_string templateName);
	[LinkName("QTemporaryFile_new3")]
	public static extern QTemporaryFile* QTemporaryFile_new3(QObject* parent);
	[LinkName("QTemporaryFile_new4")]
	public static extern QTemporaryFile* QTemporaryFile_new4(libqt_string templateName, QObject* parent);
	[LinkName("QTemporaryFile_MetaObject")]
	public static extern QMetaObject* QTemporaryFile_MetaObject(Self* c_this);
	[LinkName("QTemporaryFile_Metacast")]
	public static extern void* QTemporaryFile_Metacast(Self* c_this, char8[] param1);
	[LinkName("QTemporaryFile_Metacall")]
	public static extern int32 QTemporaryFile_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QTemporaryFile_Tr")]
	public static extern libqt_string QTemporaryFile_Tr(char8[] s);
	[LinkName("QTemporaryFile_AutoRemove")]
	public static extern bool QTemporaryFile_AutoRemove(Self* c_this);
	[LinkName("QTemporaryFile_SetAutoRemove")]
	public static extern void QTemporaryFile_SetAutoRemove(Self* c_this, bool b);
	[LinkName("QTemporaryFile_Open")]
	public static extern bool QTemporaryFile_Open(Self* c_this);
	[LinkName("QTemporaryFile_FileName")]
	public static extern libqt_string QTemporaryFile_FileName(Self* c_this);
	[LinkName("QTemporaryFile_FileTemplate")]
	public static extern libqt_string QTemporaryFile_FileTemplate(Self* c_this);
	[LinkName("QTemporaryFile_SetFileTemplate")]
	public static extern void QTemporaryFile_SetFileTemplate(Self* c_this, libqt_string name);
	[LinkName("QTemporaryFile_Rename")]
	public static extern bool QTemporaryFile_Rename(Self* c_this, libqt_string newName);
	[LinkName("QTemporaryFile_CreateNativeFile")]
	public static extern QTemporaryFile* QTemporaryFile_CreateNativeFile(libqt_string fileName);
	[LinkName("QTemporaryFile_CreateNativeFileWithFile")]
	public static extern QTemporaryFile* QTemporaryFile_CreateNativeFileWithFile(QFile* file);
	[LinkName("QTemporaryFile_OpenWithFlags")]
	public static extern bool QTemporaryFile_OpenWithFlags(Self* c_this, int64 flags);
	[LinkName("QTemporaryFile_Tr2")]
	public static extern libqt_string QTemporaryFile_Tr2(char8[] s, char8[] c);
	[LinkName("QTemporaryFile_Tr3")]
	public static extern libqt_string QTemporaryFile_Tr3(char8[] s, char8[] c, int32 n);
}