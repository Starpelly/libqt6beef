using System;
using System.Interop;
namespace Qt;

public struct QTemporaryFile
{
	[LinkName("QTemporaryFile_new")]
	public static extern void* QTemporaryFile_new();
	[LinkName("QTemporaryFile_new2")]
	public static extern void* QTemporaryFile_new2(char8[] templateName);
	[LinkName("QTemporaryFile_new3")]
	public static extern void* QTemporaryFile_new3(QObject parent);
	[LinkName("QTemporaryFile_new4")]
	public static extern void* QTemporaryFile_new4(char8[] templateName, QObject parent);
	[LinkName("QTemporaryFile_MetaObject")]
	public static extern QMetaObject QTemporaryFile_MetaObject(void* c_this);
	[LinkName("QTemporaryFile_Metacast")]
	public static extern void QTemporaryFile_Metacast(void* c_this, char8[] param1);
	[LinkName("QTemporaryFile_Metacall")]
	public static extern int32 QTemporaryFile_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QTemporaryFile_Tr")]
	public static extern char8[] QTemporaryFile_Tr(char8[] s);
	[LinkName("QTemporaryFile_AutoRemove")]
	public static extern bool QTemporaryFile_AutoRemove(void* c_this);
	[LinkName("QTemporaryFile_SetAutoRemove")]
	public static extern void QTemporaryFile_SetAutoRemove(void* c_this, bool b);
	[LinkName("QTemporaryFile_Open")]
	public static extern bool QTemporaryFile_Open(void* c_this);
	[LinkName("QTemporaryFile_FileName")]
	public static extern char8[] QTemporaryFile_FileName(void* c_this);
	[LinkName("QTemporaryFile_FileTemplate")]
	public static extern char8[] QTemporaryFile_FileTemplate(void* c_this);
	[LinkName("QTemporaryFile_SetFileTemplate")]
	public static extern void QTemporaryFile_SetFileTemplate(void* c_this, char8[] name);
	[LinkName("QTemporaryFile_Rename")]
	public static extern bool QTemporaryFile_Rename(void* c_this, char8[] newName);
	[LinkName("QTemporaryFile_CreateNativeFile")]
	public static extern QTemporaryFile QTemporaryFile_CreateNativeFile(char8[] fileName);
	[LinkName("QTemporaryFile_CreateNativeFileWithFile")]
	public static extern QTemporaryFile QTemporaryFile_CreateNativeFileWithFile(QFile file);
	[LinkName("QTemporaryFile_OpenWithFlags")]
	public static extern bool QTemporaryFile_OpenWithFlags(void* c_this, int64 flags);
	[LinkName("QTemporaryFile_Tr2")]
	public static extern char8[] QTemporaryFile_Tr2(char8[] s, char8[] c);
	[LinkName("QTemporaryFile_Tr3")]
	public static extern char8[] QTemporaryFile_Tr3(char8[] s, char8[] c, int32 n);
}