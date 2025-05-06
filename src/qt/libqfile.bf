using System;
using System.Interop;
namespace Qt;

public struct QFile : QFileDevice
{
	[LinkName("QFile_new")]
	public static extern QFile* QFile_new();
	[LinkName("QFile_new2")]
	public static extern QFile* QFile_new2(libqt_string name);
	[LinkName("QFile_new3")]
	public static extern QFile* QFile_new3(QObject* parent);
	[LinkName("QFile_new4")]
	public static extern QFile* QFile_new4(libqt_string name, QObject* parent);
	[LinkName("QFile_MetaObject")]
	public static extern QMetaObject* QFile_MetaObject(Self* c_this);
	[LinkName("QFile_Metacast")]
	public static extern void* QFile_Metacast(Self* c_this, char8[] param1);
	[LinkName("QFile_Metacall")]
	public static extern int32 QFile_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QFile_Tr")]
	public static extern libqt_string QFile_Tr(char8[] s);
	[LinkName("QFile_FileName")]
	public static extern libqt_string QFile_FileName(Self* c_this);
	[LinkName("QFile_SetFileName")]
	public static extern void QFile_SetFileName(Self* c_this, libqt_string name);
	[LinkName("QFile_EncodeName")]
	public static extern libqt_string QFile_EncodeName(libqt_string fileName);
	[LinkName("QFile_DecodeName")]
	public static extern libqt_string QFile_DecodeName(libqt_string localFileName);
	[LinkName("QFile_DecodeNameWithLocalFileName")]
	public static extern libqt_string QFile_DecodeNameWithLocalFileName(char8[] localFileName);
	[LinkName("QFile_Exists")]
	public static extern bool QFile_Exists(Self* c_this);
	[LinkName("QFile_ExistsWithFileName")]
	public static extern bool QFile_ExistsWithFileName(libqt_string fileName);
	[LinkName("QFile_SymLinkTarget")]
	public static extern libqt_string QFile_SymLinkTarget(Self* c_this);
	[LinkName("QFile_SymLinkTargetWithFileName")]
	public static extern libqt_string QFile_SymLinkTargetWithFileName(libqt_string fileName);
	[LinkName("QFile_Remove")]
	public static extern bool QFile_Remove(Self* c_this);
	[LinkName("QFile_RemoveWithFileName")]
	public static extern bool QFile_RemoveWithFileName(libqt_string fileName);
	[LinkName("QFile_MoveToTrash")]
	public static extern bool QFile_MoveToTrash(Self* c_this);
	[LinkName("QFile_MoveToTrashWithFileName")]
	public static extern bool QFile_MoveToTrashWithFileName(libqt_string fileName);
	[LinkName("QFile_Rename")]
	public static extern bool QFile_Rename(Self* c_this, libqt_string newName);
	[LinkName("QFile_Rename2")]
	public static extern bool QFile_Rename2(libqt_string oldName, libqt_string newName);
	[LinkName("QFile_Link")]
	public static extern bool QFile_Link(Self* c_this, libqt_string newName);
	[LinkName("QFile_Link2")]
	public static extern bool QFile_Link2(libqt_string fileName, libqt_string newName);
	[LinkName("QFile_Copy")]
	public static extern bool QFile_Copy(Self* c_this, libqt_string newName);
	[LinkName("QFile_Copy2")]
	public static extern bool QFile_Copy2(libqt_string fileName, libqt_string newName);
	[LinkName("QFile_Open")]
	public static extern bool QFile_Open(Self* c_this, int64 flags);
	[LinkName("QFile_Open2")]
	public static extern bool QFile_Open2(Self* c_this, int64 flags, int64 permissions);
	[LinkName("QFile_Open4")]
	public static extern bool QFile_Open4(Self* c_this, int32 fd, int64 ioFlags);
	[LinkName("QFile_Size")]
	public static extern int64 QFile_Size(Self* c_this);
	[LinkName("QFile_Resize")]
	public static extern bool QFile_Resize(Self* c_this, int64 sz);
	[LinkName("QFile_Resize2")]
	public static extern bool QFile_Resize2(libqt_string filename, int64 sz);
	[LinkName("QFile_Permissions")]
	public static extern int64 QFile_Permissions(Self* c_this);
	[LinkName("QFile_PermissionsWithFilename")]
	public static extern int64 QFile_PermissionsWithFilename(libqt_string filename);
	[LinkName("QFile_SetPermissions")]
	public static extern bool QFile_SetPermissions(Self* c_this, int64 permissionSpec);
	[LinkName("QFile_SetPermissions2")]
	public static extern bool QFile_SetPermissions2(libqt_string filename, int64 permissionSpec);
	[LinkName("QFile_Tr2")]
	public static extern libqt_string QFile_Tr2(char8[] s, char8[] c);
	[LinkName("QFile_Tr3")]
	public static extern libqt_string QFile_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QFile_Open33")]
	public static extern bool QFile_Open33(Self* c_this, int32 fd, int64 ioFlags, int64 handleFlags);
}