using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QLibrary__LoadHint
{
	ResolveAllSymbolsHint = 1,
	ExportExternalSymbolsHint = 2,
	LoadArchiveMemberHint = 4,
	PreventUnloadHint = 8,
	DeepBindHint = 16,
}
public struct QLibrary
{
	[LinkName("QLibrary_new")]
	public static extern void* QLibrary_new();
	[LinkName("QLibrary_new2")]
	public static extern void* QLibrary_new2(char8[] fileName);
	[LinkName("QLibrary_new3")]
	public static extern void* QLibrary_new3(char8[] fileName, int32 verNum);
	[LinkName("QLibrary_new4")]
	public static extern void* QLibrary_new4(char8[] fileName, char8[] version);
	[LinkName("QLibrary_new5")]
	public static extern void* QLibrary_new5(QObject parent);
	[LinkName("QLibrary_new6")]
	public static extern void* QLibrary_new6(char8[] fileName, QObject parent);
	[LinkName("QLibrary_new7")]
	public static extern void* QLibrary_new7(char8[] fileName, int32 verNum, QObject parent);
	[LinkName("QLibrary_new8")]
	public static extern void* QLibrary_new8(char8[] fileName, char8[] version, QObject parent);
	[LinkName("QLibrary_MetaObject")]
	public static extern QMetaObject QLibrary_MetaObject(void* c_this);
	[LinkName("QLibrary_Metacast")]
	public static extern void QLibrary_Metacast(void* c_this, char8[] param1);
	[LinkName("QLibrary_Metacall")]
	public static extern int32 QLibrary_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QLibrary_Tr")]
	public static extern char8[] QLibrary_Tr(char8[] s);
	[LinkName("QLibrary_Load")]
	public static extern bool QLibrary_Load(void* c_this);
	[LinkName("QLibrary_Unload")]
	public static extern bool QLibrary_Unload(void* c_this);
	[LinkName("QLibrary_IsLoaded")]
	public static extern bool QLibrary_IsLoaded(void* c_this);
	[LinkName("QLibrary_IsLibrary")]
	public static extern bool QLibrary_IsLibrary(char8[] fileName);
	[LinkName("QLibrary_SetFileName")]
	public static extern void QLibrary_SetFileName(void* c_this, char8[] fileName);
	[LinkName("QLibrary_FileName")]
	public static extern char8[] QLibrary_FileName(void* c_this);
	[LinkName("QLibrary_SetFileNameAndVersion")]
	public static extern void QLibrary_SetFileNameAndVersion(void* c_this, char8[] fileName, int32 verNum);
	[LinkName("QLibrary_SetFileNameAndVersion2")]
	public static extern void QLibrary_SetFileNameAndVersion2(void* c_this, char8[] fileName, char8[] version);
	[LinkName("QLibrary_ErrorString")]
	public static extern char8[] QLibrary_ErrorString(void* c_this);
	[LinkName("QLibrary_SetLoadHints")]
	public static extern void QLibrary_SetLoadHints(void* c_this, int64 hints);
	[LinkName("QLibrary_LoadHints")]
	public static extern int64 QLibrary_LoadHints(void* c_this);
	[LinkName("QLibrary_Tr2")]
	public static extern char8[] QLibrary_Tr2(char8[] s, char8[] c);
	[LinkName("QLibrary_Tr3")]
	public static extern char8[] QLibrary_Tr3(char8[] s, char8[] c, int32 n);
}