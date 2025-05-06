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
public struct QLibrary : QObject
{
	[LinkName("QLibrary_new")]
	public static extern QLibrary* QLibrary_new();
	[LinkName("QLibrary_new2")]
	public static extern QLibrary* QLibrary_new2(libqt_string fileName);
	[LinkName("QLibrary_new3")]
	public static extern QLibrary* QLibrary_new3(libqt_string fileName, int32 verNum);
	[LinkName("QLibrary_new4")]
	public static extern QLibrary* QLibrary_new4(libqt_string fileName, libqt_string version);
	[LinkName("QLibrary_new5")]
	public static extern QLibrary* QLibrary_new5(QObject* parent);
	[LinkName("QLibrary_new6")]
	public static extern QLibrary* QLibrary_new6(libqt_string fileName, QObject* parent);
	[LinkName("QLibrary_new7")]
	public static extern QLibrary* QLibrary_new7(libqt_string fileName, int32 verNum, QObject* parent);
	[LinkName("QLibrary_new8")]
	public static extern QLibrary* QLibrary_new8(libqt_string fileName, libqt_string version, QObject* parent);
	[LinkName("QLibrary_MetaObject")]
	public static extern QMetaObject* QLibrary_MetaObject(Self* c_this);
	[LinkName("QLibrary_Metacast")]
	public static extern void* QLibrary_Metacast(Self* c_this, char8[] param1);
	[LinkName("QLibrary_Metacall")]
	public static extern int32 QLibrary_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QLibrary_Tr")]
	public static extern libqt_string QLibrary_Tr(char8[] s);
	[LinkName("QLibrary_Load")]
	public static extern bool QLibrary_Load(Self* c_this);
	[LinkName("QLibrary_Unload")]
	public static extern bool QLibrary_Unload(Self* c_this);
	[LinkName("QLibrary_IsLoaded")]
	public static extern bool QLibrary_IsLoaded(Self* c_this);
	[LinkName("QLibrary_IsLibrary")]
	public static extern bool QLibrary_IsLibrary(libqt_string fileName);
	[LinkName("QLibrary_SetFileName")]
	public static extern void QLibrary_SetFileName(Self* c_this, libqt_string fileName);
	[LinkName("QLibrary_FileName")]
	public static extern libqt_string QLibrary_FileName(Self* c_this);
	[LinkName("QLibrary_SetFileNameAndVersion")]
	public static extern void QLibrary_SetFileNameAndVersion(Self* c_this, libqt_string fileName, int32 verNum);
	[LinkName("QLibrary_SetFileNameAndVersion2")]
	public static extern void QLibrary_SetFileNameAndVersion2(Self* c_this, libqt_string fileName, libqt_string version);
	[LinkName("QLibrary_ErrorString")]
	public static extern libqt_string QLibrary_ErrorString(Self* c_this);
	[LinkName("QLibrary_SetLoadHints")]
	public static extern void QLibrary_SetLoadHints(Self* c_this, int64 hints);
	[LinkName("QLibrary_LoadHints")]
	public static extern int64 QLibrary_LoadHints(Self* c_this);
	[LinkName("QLibrary_Tr2")]
	public static extern libqt_string QLibrary_Tr2(char8[] s, char8[] c);
	[LinkName("QLibrary_Tr3")]
	public static extern libqt_string QLibrary_Tr3(char8[] s, char8[] c, int32 n);
}