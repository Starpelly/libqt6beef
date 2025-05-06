using System;
using System.Interop;
namespace Qt;

public struct QFileInfo
{
	[LinkName("QFileInfo_new")]
	public static extern QFileInfo* QFileInfo_new();
	[LinkName("QFileInfo_new2")]
	public static extern QFileInfo* QFileInfo_new2(libqt_string file);
	[LinkName("QFileInfo_new3")]
	public static extern QFileInfo* QFileInfo_new3(QFileDevice* file);
	[LinkName("QFileInfo_new4")]
	public static extern QFileInfo* QFileInfo_new4(QDir* dir, libqt_string file);
	[LinkName("QFileInfo_new5")]
	public static extern QFileInfo* QFileInfo_new5(QFileInfo* fileinfo);
	[LinkName("QFileInfo_OperatorAssign")]
	public static extern void QFileInfo_OperatorAssign(Self* c_this, QFileInfo* fileinfo);
	[LinkName("QFileInfo_Swap")]
	public static extern void QFileInfo_Swap(Self* c_this, QFileInfo* other);
	[LinkName("QFileInfo_OperatorEqual")]
	public static extern bool QFileInfo_OperatorEqual(Self* c_this, QFileInfo* fileinfo);
	[LinkName("QFileInfo_OperatorNotEqual")]
	public static extern bool QFileInfo_OperatorNotEqual(Self* c_this, QFileInfo* fileinfo);
	[LinkName("QFileInfo_SetFile")]
	public static extern void QFileInfo_SetFile(Self* c_this, libqt_string file);
	[LinkName("QFileInfo_SetFileWithFile")]
	public static extern void QFileInfo_SetFileWithFile(Self* c_this, QFileDevice* file);
	[LinkName("QFileInfo_SetFile2")]
	public static extern void QFileInfo_SetFile2(Self* c_this, QDir* dir, libqt_string file);
	[LinkName("QFileInfo_Exists")]
	public static extern bool QFileInfo_Exists(Self* c_this);
	[LinkName("QFileInfo_ExistsWithFile")]
	public static extern bool QFileInfo_ExistsWithFile(libqt_string file);
	[LinkName("QFileInfo_Refresh")]
	public static extern void QFileInfo_Refresh(Self* c_this);
	[LinkName("QFileInfo_FilePath")]
	public static extern libqt_string QFileInfo_FilePath(Self* c_this);
	[LinkName("QFileInfo_AbsoluteFilePath")]
	public static extern libqt_string QFileInfo_AbsoluteFilePath(Self* c_this);
	[LinkName("QFileInfo_CanonicalFilePath")]
	public static extern libqt_string QFileInfo_CanonicalFilePath(Self* c_this);
	[LinkName("QFileInfo_FileName")]
	public static extern libqt_string QFileInfo_FileName(Self* c_this);
	[LinkName("QFileInfo_BaseName")]
	public static extern libqt_string QFileInfo_BaseName(Self* c_this);
	[LinkName("QFileInfo_CompleteBaseName")]
	public static extern libqt_string QFileInfo_CompleteBaseName(Self* c_this);
	[LinkName("QFileInfo_Suffix")]
	public static extern libqt_string QFileInfo_Suffix(Self* c_this);
	[LinkName("QFileInfo_BundleName")]
	public static extern libqt_string QFileInfo_BundleName(Self* c_this);
	[LinkName("QFileInfo_CompleteSuffix")]
	public static extern libqt_string QFileInfo_CompleteSuffix(Self* c_this);
	[LinkName("QFileInfo_Path")]
	public static extern libqt_string QFileInfo_Path(Self* c_this);
	[LinkName("QFileInfo_AbsolutePath")]
	public static extern libqt_string QFileInfo_AbsolutePath(Self* c_this);
	[LinkName("QFileInfo_CanonicalPath")]
	public static extern libqt_string QFileInfo_CanonicalPath(Self* c_this);
	[LinkName("QFileInfo_Dir")]
	public static extern QDir QFileInfo_Dir(Self* c_this);
	[LinkName("QFileInfo_AbsoluteDir")]
	public static extern QDir QFileInfo_AbsoluteDir(Self* c_this);
	[LinkName("QFileInfo_IsReadable")]
	public static extern bool QFileInfo_IsReadable(Self* c_this);
	[LinkName("QFileInfo_IsWritable")]
	public static extern bool QFileInfo_IsWritable(Self* c_this);
	[LinkName("QFileInfo_IsExecutable")]
	public static extern bool QFileInfo_IsExecutable(Self* c_this);
	[LinkName("QFileInfo_IsHidden")]
	public static extern bool QFileInfo_IsHidden(Self* c_this);
	[LinkName("QFileInfo_IsNativePath")]
	public static extern bool QFileInfo_IsNativePath(Self* c_this);
	[LinkName("QFileInfo_IsRelative")]
	public static extern bool QFileInfo_IsRelative(Self* c_this);
	[LinkName("QFileInfo_IsAbsolute")]
	public static extern bool QFileInfo_IsAbsolute(Self* c_this);
	[LinkName("QFileInfo_MakeAbsolute")]
	public static extern bool QFileInfo_MakeAbsolute(Self* c_this);
	[LinkName("QFileInfo_IsFile")]
	public static extern bool QFileInfo_IsFile(Self* c_this);
	[LinkName("QFileInfo_IsDir")]
	public static extern bool QFileInfo_IsDir(Self* c_this);
	[LinkName("QFileInfo_IsSymLink")]
	public static extern bool QFileInfo_IsSymLink(Self* c_this);
	[LinkName("QFileInfo_IsSymbolicLink")]
	public static extern bool QFileInfo_IsSymbolicLink(Self* c_this);
	[LinkName("QFileInfo_IsShortcut")]
	public static extern bool QFileInfo_IsShortcut(Self* c_this);
	[LinkName("QFileInfo_IsAlias")]
	public static extern bool QFileInfo_IsAlias(Self* c_this);
	[LinkName("QFileInfo_IsJunction")]
	public static extern bool QFileInfo_IsJunction(Self* c_this);
	[LinkName("QFileInfo_IsRoot")]
	public static extern bool QFileInfo_IsRoot(Self* c_this);
	[LinkName("QFileInfo_IsBundle")]
	public static extern bool QFileInfo_IsBundle(Self* c_this);
	[LinkName("QFileInfo_SymLinkTarget")]
	public static extern libqt_string QFileInfo_SymLinkTarget(Self* c_this);
	[LinkName("QFileInfo_JunctionTarget")]
	public static extern libqt_string QFileInfo_JunctionTarget(Self* c_this);
	[LinkName("QFileInfo_Owner")]
	public static extern libqt_string QFileInfo_Owner(Self* c_this);
	[LinkName("QFileInfo_OwnerId")]
	public static extern uint32 QFileInfo_OwnerId(Self* c_this);
	[LinkName("QFileInfo_Group")]
	public static extern libqt_string QFileInfo_Group(Self* c_this);
	[LinkName("QFileInfo_GroupId")]
	public static extern uint32 QFileInfo_GroupId(Self* c_this);
	[LinkName("QFileInfo_Permission")]
	public static extern bool QFileInfo_Permission(Self* c_this, int64 permissions);
	[LinkName("QFileInfo_Permissions")]
	public static extern int64 QFileInfo_Permissions(Self* c_this);
	[LinkName("QFileInfo_Size")]
	public static extern int64 QFileInfo_Size(Self* c_this);
	[LinkName("QFileInfo_BirthTime")]
	public static extern QDateTime QFileInfo_BirthTime(Self* c_this);
	[LinkName("QFileInfo_MetadataChangeTime")]
	public static extern QDateTime QFileInfo_MetadataChangeTime(Self* c_this);
	[LinkName("QFileInfo_LastModified")]
	public static extern QDateTime QFileInfo_LastModified(Self* c_this);
	[LinkName("QFileInfo_LastRead")]
	public static extern QDateTime QFileInfo_LastRead(Self* c_this);
	[LinkName("QFileInfo_FileTime")]
	public static extern QDateTime QFileInfo_FileTime(Self* c_this, int64 time);
	[LinkName("QFileInfo_Caching")]
	public static extern bool QFileInfo_Caching(Self* c_this);
	[LinkName("QFileInfo_SetCaching")]
	public static extern void QFileInfo_SetCaching(Self* c_this, bool on);
	[LinkName("QFileInfo_Stat")]
	public static extern void QFileInfo_Stat(Self* c_this);
}