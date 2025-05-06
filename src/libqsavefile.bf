using System;
using System.Interop;
namespace Qt;

public struct QSaveFile
{
	[LinkName("QSaveFile_new")]
	public static extern void* QSaveFile_new(char8[] name);
	[LinkName("QSaveFile_new2")]
	public static extern void* QSaveFile_new2();
	[LinkName("QSaveFile_new3")]
	public static extern void* QSaveFile_new3(char8[] name, QObject parent);
	[LinkName("QSaveFile_new4")]
	public static extern void* QSaveFile_new4(QObject parent);
	[LinkName("QSaveFile_MetaObject")]
	public static extern QMetaObject QSaveFile_MetaObject(void* c_this);
	[LinkName("QSaveFile_Metacast")]
	public static extern void QSaveFile_Metacast(void* c_this, char8[] param1);
	[LinkName("QSaveFile_Metacall")]
	public static extern int32 QSaveFile_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QSaveFile_Tr")]
	public static extern char8[] QSaveFile_Tr(char8[] s);
	[LinkName("QSaveFile_FileName")]
	public static extern char8[] QSaveFile_FileName(void* c_this);
	[LinkName("QSaveFile_SetFileName")]
	public static extern void QSaveFile_SetFileName(void* c_this, char8[] name);
	[LinkName("QSaveFile_Open")]
	public static extern bool QSaveFile_Open(void* c_this, int64 flags);
	[LinkName("QSaveFile_Commit")]
	public static extern bool QSaveFile_Commit(void* c_this);
	[LinkName("QSaveFile_CancelWriting")]
	public static extern void QSaveFile_CancelWriting(void* c_this);
	[LinkName("QSaveFile_SetDirectWriteFallback")]
	public static extern void QSaveFile_SetDirectWriteFallback(void* c_this, bool enabled);
	[LinkName("QSaveFile_DirectWriteFallback")]
	public static extern bool QSaveFile_DirectWriteFallback(void* c_this);
	[LinkName("QSaveFile_WriteData")]
	public static extern int64 QSaveFile_WriteData(void* c_this, char8[] data, int64 lenVal);
	[LinkName("QSaveFile_Tr2")]
	public static extern char8[] QSaveFile_Tr2(char8[] s, char8[] c);
	[LinkName("QSaveFile_Tr3")]
	public static extern char8[] QSaveFile_Tr3(char8[] s, char8[] c, int32 n);
}