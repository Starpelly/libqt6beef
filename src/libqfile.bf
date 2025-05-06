using System;
using System.Interop;
namespace Qt;

public struct QFile
{
	[LinkName("QFile_new")]
	public static extern void* QFile_new();
	[LinkName("QFile_new2")]
	public static extern void* QFile_new2(char8[] name);
	[LinkName("QFile_new3")]
	public static extern void* QFile_new3(QObject parent);
	[LinkName("QFile_new4")]
	public static extern void* QFile_new4(char8[] name, QObject parent);
	[LinkName("QFile_MetaObject")]
	public static extern QMetaObject QFile_MetaObject(void* c_this);
	[LinkName("QFile_Metacast")]
	public static extern void QFile_Metacast(void* c_this, char8[] param1);
	[LinkName("QFile_Metacall")]
	public static extern int32 QFile_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QFile_Tr")]
	public static extern char8[] QFile_Tr(char8[] s);
	[LinkName("QFile_FileName")]
	public static extern char8[] QFile_FileName(void* c_this);
	[LinkName("QFile_SetFileName")]
	public static extern void QFile_SetFileName(void* c_this, char8[] name);
	[LinkName("QFile_EncodeName")]
	public static extern uint8[] QFile_EncodeName(char8[] fileName);
	[LinkName("QFile_DecodeName")]
	public static extern char8[] QFile_DecodeName(uint8[] localFileName);
	[LinkName("QFile_DecodeNameWithLocalFileName")]
	public static extern char8[] QFile_DecodeNameWithLocalFileName(char8[] localFileName);
	[LinkName("QFile_Exists")]
	public static extern bool QFile_Exists(void* c_this);
	[LinkName("QFile_ExistsWithFileName")]
	public static extern bool QFile_ExistsWithFileName(char8[] fileName);
	[LinkName("QFile_SymLinkTarget")]
	public static extern char8[] QFile_SymLinkTarget(void* c_this);
	[LinkName("QFile_SymLinkTargetWithFileName")]
	public static extern char8[] QFile_SymLinkTargetWithFileName(char8[] fileName);
	[LinkName("QFile_Remove")]
	public static extern bool QFile_Remove(void* c_this);
	[LinkName("QFile_RemoveWithFileName")]
	public static extern bool QFile_RemoveWithFileName(char8[] fileName);
	[LinkName("QFile_MoveToTrash")]
	public static extern bool QFile_MoveToTrash(void* c_this);
	[LinkName("QFile_MoveToTrashWithFileName")]
	public static extern bool QFile_MoveToTrashWithFileName(char8[] fileName);
	[LinkName("QFile_Rename")]
	public static extern bool QFile_Rename(void* c_this, char8[] newName);
	[LinkName("QFile_Rename2")]
	public static extern bool QFile_Rename2(char8[] oldName, char8[] newName);
	[LinkName("QFile_Link")]
	public static extern bool QFile_Link(void* c_this, char8[] newName);
	[LinkName("QFile_Link2")]
	public static extern bool QFile_Link2(char8[] fileName, char8[] newName);
	[LinkName("QFile_Copy")]
	public static extern bool QFile_Copy(void* c_this, char8[] newName);
	[LinkName("QFile_Copy2")]
	public static extern bool QFile_Copy2(char8[] fileName, char8[] newName);
	[LinkName("QFile_Open")]
	public static extern bool QFile_Open(void* c_this, int64 flags);
	[LinkName("QFile_Open2")]
	public static extern bool QFile_Open2(void* c_this, int64 flags, int64 permissions);
	[LinkName("QFile_Open4")]
	public static extern bool QFile_Open4(void* c_this, int32 fd, int64 ioFlags);
	[LinkName("QFile_Size")]
	public static extern int64 QFile_Size(void* c_this);
	[LinkName("QFile_Resize")]
	public static extern bool QFile_Resize(void* c_this, int64 sz);
	[LinkName("QFile_Resize2")]
	public static extern bool QFile_Resize2(char8[] filename, int64 sz);
	[LinkName("QFile_Permissions")]
	public static extern int64 QFile_Permissions(void* c_this);
	[LinkName("QFile_PermissionsWithFilename")]
	public static extern int64 QFile_PermissionsWithFilename(char8[] filename);
	[LinkName("QFile_SetPermissions")]
	public static extern bool QFile_SetPermissions(void* c_this, int64 permissionSpec);
	[LinkName("QFile_SetPermissions2")]
	public static extern bool QFile_SetPermissions2(char8[] filename, int64 permissionSpec);
	[LinkName("QFile_Tr2")]
	public static extern char8[] QFile_Tr2(char8[] s, char8[] c);
	[LinkName("QFile_Tr3")]
	public static extern char8[] QFile_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QFile_Open33")]
	public static extern bool QFile_Open33(void* c_this, int32 fd, int64 ioFlags, int64 handleFlags);
}