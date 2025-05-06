using System;
using System.Interop;
namespace Qt;

public struct QFileInfo
{
	[LinkName("QFileInfo_new")]
	public static extern void* QFileInfo_new();
	[LinkName("QFileInfo_new2")]
	public static extern void* QFileInfo_new2(char8[] file);
	[LinkName("QFileInfo_new3")]
	public static extern void* QFileInfo_new3(QFileDevice file);
	[LinkName("QFileInfo_new4")]
	public static extern void* QFileInfo_new4(QDir dir, char8[] file);
	[LinkName("QFileInfo_new5")]
	public static extern void* QFileInfo_new5(QFileInfo fileinfo);
	[LinkName("QFileInfo_OperatorAssign")]
	public static extern void QFileInfo_OperatorAssign(void* c_this, QFileInfo fileinfo);
	[LinkName("QFileInfo_Swap")]
	public static extern void QFileInfo_Swap(void* c_this, QFileInfo other);
	[LinkName("QFileInfo_OperatorEqual")]
	public static extern bool QFileInfo_OperatorEqual(void* c_this, QFileInfo fileinfo);
	[LinkName("QFileInfo_OperatorNotEqual")]
	public static extern bool QFileInfo_OperatorNotEqual(void* c_this, QFileInfo fileinfo);
	[LinkName("QFileInfo_SetFile")]
	public static extern void QFileInfo_SetFile(void* c_this, char8[] file);
	[LinkName("QFileInfo_SetFileWithFile")]
	public static extern void QFileInfo_SetFileWithFile(void* c_this, QFileDevice file);
	[LinkName("QFileInfo_SetFile2")]
	public static extern void QFileInfo_SetFile2(void* c_this, QDir dir, char8[] file);
	[LinkName("QFileInfo_Exists")]
	public static extern bool QFileInfo_Exists(void* c_this);
	[LinkName("QFileInfo_ExistsWithFile")]
	public static extern bool QFileInfo_ExistsWithFile(char8[] file);
	[LinkName("QFileInfo_Refresh")]
	public static extern void QFileInfo_Refresh(void* c_this);
	[LinkName("QFileInfo_FilePath")]
	public static extern char8[] QFileInfo_FilePath(void* c_this);
	[LinkName("QFileInfo_AbsoluteFilePath")]
	public static extern char8[] QFileInfo_AbsoluteFilePath(void* c_this);
	[LinkName("QFileInfo_CanonicalFilePath")]
	public static extern char8[] QFileInfo_CanonicalFilePath(void* c_this);
	[LinkName("QFileInfo_FileName")]
	public static extern char8[] QFileInfo_FileName(void* c_this);
	[LinkName("QFileInfo_BaseName")]
	public static extern char8[] QFileInfo_BaseName(void* c_this);
	[LinkName("QFileInfo_CompleteBaseName")]
	public static extern char8[] QFileInfo_CompleteBaseName(void* c_this);
	[LinkName("QFileInfo_Suffix")]
	public static extern char8[] QFileInfo_Suffix(void* c_this);
	[LinkName("QFileInfo_BundleName")]
	public static extern char8[] QFileInfo_BundleName(void* c_this);
	[LinkName("QFileInfo_CompleteSuffix")]
	public static extern char8[] QFileInfo_CompleteSuffix(void* c_this);
	[LinkName("QFileInfo_Path")]
	public static extern char8[] QFileInfo_Path(void* c_this);
	[LinkName("QFileInfo_AbsolutePath")]
	public static extern char8[] QFileInfo_AbsolutePath(void* c_this);
	[LinkName("QFileInfo_CanonicalPath")]
	public static extern char8[] QFileInfo_CanonicalPath(void* c_this);
	[LinkName("QFileInfo_Dir")]
	public static extern QDir QFileInfo_Dir(void* c_this);
	[LinkName("QFileInfo_AbsoluteDir")]
	public static extern QDir QFileInfo_AbsoluteDir(void* c_this);
	[LinkName("QFileInfo_IsReadable")]
	public static extern bool QFileInfo_IsReadable(void* c_this);
	[LinkName("QFileInfo_IsWritable")]
	public static extern bool QFileInfo_IsWritable(void* c_this);
	[LinkName("QFileInfo_IsExecutable")]
	public static extern bool QFileInfo_IsExecutable(void* c_this);
	[LinkName("QFileInfo_IsHidden")]
	public static extern bool QFileInfo_IsHidden(void* c_this);
	[LinkName("QFileInfo_IsNativePath")]
	public static extern bool QFileInfo_IsNativePath(void* c_this);
	[LinkName("QFileInfo_IsRelative")]
	public static extern bool QFileInfo_IsRelative(void* c_this);
	[LinkName("QFileInfo_IsAbsolute")]
	public static extern bool QFileInfo_IsAbsolute(void* c_this);
	[LinkName("QFileInfo_MakeAbsolute")]
	public static extern bool QFileInfo_MakeAbsolute(void* c_this);
	[LinkName("QFileInfo_IsFile")]
	public static extern bool QFileInfo_IsFile(void* c_this);
	[LinkName("QFileInfo_IsDir")]
	public static extern bool QFileInfo_IsDir(void* c_this);
	[LinkName("QFileInfo_IsSymLink")]
	public static extern bool QFileInfo_IsSymLink(void* c_this);
	[LinkName("QFileInfo_IsSymbolicLink")]
	public static extern bool QFileInfo_IsSymbolicLink(void* c_this);
	[LinkName("QFileInfo_IsShortcut")]
	public static extern bool QFileInfo_IsShortcut(void* c_this);
	[LinkName("QFileInfo_IsAlias")]
	public static extern bool QFileInfo_IsAlias(void* c_this);
	[LinkName("QFileInfo_IsJunction")]
	public static extern bool QFileInfo_IsJunction(void* c_this);
	[LinkName("QFileInfo_IsRoot")]
	public static extern bool QFileInfo_IsRoot(void* c_this);
	[LinkName("QFileInfo_IsBundle")]
	public static extern bool QFileInfo_IsBundle(void* c_this);
	[LinkName("QFileInfo_SymLinkTarget")]
	public static extern char8[] QFileInfo_SymLinkTarget(void* c_this);
	[LinkName("QFileInfo_JunctionTarget")]
	public static extern char8[] QFileInfo_JunctionTarget(void* c_this);
	[LinkName("QFileInfo_Owner")]
	public static extern char8[] QFileInfo_Owner(void* c_this);
	[LinkName("QFileInfo_OwnerId")]
	public static extern uint32 QFileInfo_OwnerId(void* c_this);
	[LinkName("QFileInfo_Group")]
	public static extern char8[] QFileInfo_Group(void* c_this);
	[LinkName("QFileInfo_GroupId")]
	public static extern uint32 QFileInfo_GroupId(void* c_this);
	[LinkName("QFileInfo_Permission")]
	public static extern bool QFileInfo_Permission(void* c_this, int64 permissions);
	[LinkName("QFileInfo_Permissions")]
	public static extern int64 QFileInfo_Permissions(void* c_this);
	[LinkName("QFileInfo_Size")]
	public static extern int64 QFileInfo_Size(void* c_this);
	[LinkName("QFileInfo_BirthTime")]
	public static extern QDateTime QFileInfo_BirthTime(void* c_this);
	[LinkName("QFileInfo_MetadataChangeTime")]
	public static extern QDateTime QFileInfo_MetadataChangeTime(void* c_this);
	[LinkName("QFileInfo_LastModified")]
	public static extern QDateTime QFileInfo_LastModified(void* c_this);
	[LinkName("QFileInfo_LastRead")]
	public static extern QDateTime QFileInfo_LastRead(void* c_this);
	[LinkName("QFileInfo_FileTime")]
	public static extern QDateTime QFileInfo_FileTime(void* c_this, int64 time);
	[LinkName("QFileInfo_Caching")]
	public static extern bool QFileInfo_Caching(void* c_this);
	[LinkName("QFileInfo_SetCaching")]
	public static extern void QFileInfo_SetCaching(void* c_this, bool on);
	[LinkName("QFileInfo_Stat")]
	public static extern void QFileInfo_Stat(void* c_this);
}