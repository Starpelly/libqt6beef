using System;
using System.Interop;
namespace Qt;

public interface IQFileInfo
{
	void* NativePtr { get; }
}
public struct QFileInfoPtr : IQFileInfo, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QFileInfo_new());
	}
	
	public void Dispose()
	{
		CQt.QFileInfo_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQFileInfo fileinfo)
	{
		CQt.QFileInfo_OperatorAssign(this.nativePtr, (fileinfo == default || fileinfo.NativePtr == default) ? default : fileinfo.NativePtr);
	}
	
	public void Swap(IQFileInfo other)
	{
		CQt.QFileInfo_Swap(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorEqual(IQFileInfo fileinfo)
	{
		return CQt.QFileInfo_OperatorEqual(this.nativePtr, (fileinfo == default || fileinfo.NativePtr == default) ? default : fileinfo.NativePtr);
	}
	
	public bool OperatorNotEqual(IQFileInfo fileinfo)
	{
		return CQt.QFileInfo_OperatorNotEqual(this.nativePtr, (fileinfo == default || fileinfo.NativePtr == default) ? default : fileinfo.NativePtr);
	}
	
	public void SetFile(String file)
	{
		CQt.QFileInfo_SetFile(this.nativePtr, libqt_string(file));
	}
	
	public void SetFileWithFile(IQFileDevice file)
	{
		CQt.QFileInfo_SetFileWithFile(this.nativePtr, (file == default || file.NativePtr == default) ? default : file.NativePtr);
	}
	
	public void SetFile2(IQDir dir, String file)
	{
		CQt.QFileInfo_SetFile2(this.nativePtr, (dir == default || dir.NativePtr == default) ? default : dir.NativePtr, libqt_string(file));
	}
	
	public bool Exists()
	{
		return CQt.QFileInfo_Exists(this.nativePtr);
	}
	
	public static bool ExistsWithFile(String file)
	{
		return CQt.QFileInfo_ExistsWithFile(libqt_string(file));
	}
	
	public void Refresh()
	{
		CQt.QFileInfo_Refresh(this.nativePtr);
	}
	
	public libqt_string FilePath()
	{
		return CQt.QFileInfo_FilePath(this.nativePtr);
	}
	
	public libqt_string AbsoluteFilePath()
	{
		return CQt.QFileInfo_AbsoluteFilePath(this.nativePtr);
	}
	
	public libqt_string CanonicalFilePath()
	{
		return CQt.QFileInfo_CanonicalFilePath(this.nativePtr);
	}
	
	public libqt_string FileName()
	{
		return CQt.QFileInfo_FileName(this.nativePtr);
	}
	
	public libqt_string BaseName()
	{
		return CQt.QFileInfo_BaseName(this.nativePtr);
	}
	
	public libqt_string CompleteBaseName()
	{
		return CQt.QFileInfo_CompleteBaseName(this.nativePtr);
	}
	
	public libqt_string Suffix()
	{
		return CQt.QFileInfo_Suffix(this.nativePtr);
	}
	
	public libqt_string BundleName()
	{
		return CQt.QFileInfo_BundleName(this.nativePtr);
	}
	
	public libqt_string CompleteSuffix()
	{
		return CQt.QFileInfo_CompleteSuffix(this.nativePtr);
	}
	
	public libqt_string Path()
	{
		return CQt.QFileInfo_Path(this.nativePtr);
	}
	
	public libqt_string AbsolutePath()
	{
		return CQt.QFileInfo_AbsolutePath(this.nativePtr);
	}
	
	public libqt_string CanonicalPath()
	{
		return CQt.QFileInfo_CanonicalPath(this.nativePtr);
	}
	
	public void Dir()
	{
		CQt.QFileInfo_Dir(this.nativePtr);
	}
	
	public void AbsoluteDir()
	{
		CQt.QFileInfo_AbsoluteDir(this.nativePtr);
	}
	
	public bool IsReadable()
	{
		return CQt.QFileInfo_IsReadable(this.nativePtr);
	}
	
	public bool IsWritable()
	{
		return CQt.QFileInfo_IsWritable(this.nativePtr);
	}
	
	public bool IsExecutable()
	{
		return CQt.QFileInfo_IsExecutable(this.nativePtr);
	}
	
	public bool IsHidden()
	{
		return CQt.QFileInfo_IsHidden(this.nativePtr);
	}
	
	public bool IsNativePath()
	{
		return CQt.QFileInfo_IsNativePath(this.nativePtr);
	}
	
	public bool IsRelative()
	{
		return CQt.QFileInfo_IsRelative(this.nativePtr);
	}
	
	public bool IsAbsolute()
	{
		return CQt.QFileInfo_IsAbsolute(this.nativePtr);
	}
	
	public bool MakeAbsolute()
	{
		return CQt.QFileInfo_MakeAbsolute(this.nativePtr);
	}
	
	public bool IsFile()
	{
		return CQt.QFileInfo_IsFile(this.nativePtr);
	}
	
	public bool IsDir()
	{
		return CQt.QFileInfo_IsDir(this.nativePtr);
	}
	
	public bool IsSymLink()
	{
		return CQt.QFileInfo_IsSymLink(this.nativePtr);
	}
	
	public bool IsSymbolicLink()
	{
		return CQt.QFileInfo_IsSymbolicLink(this.nativePtr);
	}
	
	public bool IsShortcut()
	{
		return CQt.QFileInfo_IsShortcut(this.nativePtr);
	}
	
	public bool IsAlias()
	{
		return CQt.QFileInfo_IsAlias(this.nativePtr);
	}
	
	public bool IsJunction()
	{
		return CQt.QFileInfo_IsJunction(this.nativePtr);
	}
	
	public bool IsRoot()
	{
		return CQt.QFileInfo_IsRoot(this.nativePtr);
	}
	
	public bool IsBundle()
	{
		return CQt.QFileInfo_IsBundle(this.nativePtr);
	}
	
	public libqt_string SymLinkTarget()
	{
		return CQt.QFileInfo_SymLinkTarget(this.nativePtr);
	}
	
	public libqt_string JunctionTarget()
	{
		return CQt.QFileInfo_JunctionTarget(this.nativePtr);
	}
	
	public libqt_string Owner()
	{
		return CQt.QFileInfo_Owner(this.nativePtr);
	}
	
	public uint32 OwnerId()
	{
		return CQt.QFileInfo_OwnerId(this.nativePtr);
	}
	
	public libqt_string Group()
	{
		return CQt.QFileInfo_Group(this.nativePtr);
	}
	
	public uint32 GroupId()
	{
		return CQt.QFileInfo_GroupId(this.nativePtr);
	}
	
	public bool Permission(int64 permissions)
	{
		return CQt.QFileInfo_Permission(this.nativePtr, permissions);
	}
	
	public int64 Permissions()
	{
		return CQt.QFileInfo_Permissions(this.nativePtr);
	}
	
	public int64 Size()
	{
		return CQt.QFileInfo_Size(this.nativePtr);
	}
	
	public void BirthTime()
	{
		CQt.QFileInfo_BirthTime(this.nativePtr);
	}
	
	public void MetadataChangeTime()
	{
		CQt.QFileInfo_MetadataChangeTime(this.nativePtr);
	}
	
	public void LastModified()
	{
		CQt.QFileInfo_LastModified(this.nativePtr);
	}
	
	public void LastRead()
	{
		CQt.QFileInfo_LastRead(this.nativePtr);
	}
	
	public void FileTime(int64 time)
	{
		CQt.QFileInfo_FileTime(this.nativePtr, (int64)time);
	}
	
	public bool Caching()
	{
		return CQt.QFileInfo_Caching(this.nativePtr);
	}
	
	public void SetCaching(bool on)
	{
		CQt.QFileInfo_SetCaching(this.nativePtr, on);
	}
	
	public void Stat()
	{
		CQt.QFileInfo_Stat(this.nativePtr);
	}
	
}
public class QFileInfo
{
	public QFileInfoPtr handle;
	
	public static implicit operator QFileInfoPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QFileInfoPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQFileInfo fileinfo)
	{
		this.handle.OperatorAssign(fileinfo);
	}
	
	public void Swap(IQFileInfo other)
	{
		this.handle.Swap(other);
	}
	
	public bool OperatorEqual(IQFileInfo fileinfo)
	{
		return this.handle.OperatorEqual(fileinfo);
	}
	
	public bool OperatorNotEqual(IQFileInfo fileinfo)
	{
		return this.handle.OperatorNotEqual(fileinfo);
	}
	
	public void SetFile(String file)
	{
		this.handle.SetFile(file);
	}
	
	public void SetFileWithFile(IQFileDevice file)
	{
		this.handle.SetFileWithFile(file);
	}
	
	public void SetFile2(IQDir dir, String file)
	{
		this.handle.SetFile2(dir, file);
	}
	
	public bool Exists()
	{
		return this.handle.Exists();
	}
	
	public static bool ExistsWithFile(String file)
	{
		return QFileInfoPtr.ExistsWithFile(file);
	}
	
	public void Refresh()
	{
		this.handle.Refresh();
	}
	
	public libqt_string FilePath()
	{
		return this.handle.FilePath();
	}
	
	public libqt_string AbsoluteFilePath()
	{
		return this.handle.AbsoluteFilePath();
	}
	
	public libqt_string CanonicalFilePath()
	{
		return this.handle.CanonicalFilePath();
	}
	
	public libqt_string FileName()
	{
		return this.handle.FileName();
	}
	
	public libqt_string BaseName()
	{
		return this.handle.BaseName();
	}
	
	public libqt_string CompleteBaseName()
	{
		return this.handle.CompleteBaseName();
	}
	
	public libqt_string Suffix()
	{
		return this.handle.Suffix();
	}
	
	public libqt_string BundleName()
	{
		return this.handle.BundleName();
	}
	
	public libqt_string CompleteSuffix()
	{
		return this.handle.CompleteSuffix();
	}
	
	public libqt_string Path()
	{
		return this.handle.Path();
	}
	
	public libqt_string AbsolutePath()
	{
		return this.handle.AbsolutePath();
	}
	
	public libqt_string CanonicalPath()
	{
		return this.handle.CanonicalPath();
	}
	
	public void Dir()
	{
		this.handle.Dir();
	}
	
	public void AbsoluteDir()
	{
		this.handle.AbsoluteDir();
	}
	
	public bool IsReadable()
	{
		return this.handle.IsReadable();
	}
	
	public bool IsWritable()
	{
		return this.handle.IsWritable();
	}
	
	public bool IsExecutable()
	{
		return this.handle.IsExecutable();
	}
	
	public bool IsHidden()
	{
		return this.handle.IsHidden();
	}
	
	public bool IsNativePath()
	{
		return this.handle.IsNativePath();
	}
	
	public bool IsRelative()
	{
		return this.handle.IsRelative();
	}
	
	public bool IsAbsolute()
	{
		return this.handle.IsAbsolute();
	}
	
	public bool MakeAbsolute()
	{
		return this.handle.MakeAbsolute();
	}
	
	public bool IsFile()
	{
		return this.handle.IsFile();
	}
	
	public bool IsDir()
	{
		return this.handle.IsDir();
	}
	
	public bool IsSymLink()
	{
		return this.handle.IsSymLink();
	}
	
	public bool IsSymbolicLink()
	{
		return this.handle.IsSymbolicLink();
	}
	
	public bool IsShortcut()
	{
		return this.handle.IsShortcut();
	}
	
	public bool IsAlias()
	{
		return this.handle.IsAlias();
	}
	
	public bool IsJunction()
	{
		return this.handle.IsJunction();
	}
	
	public bool IsRoot()
	{
		return this.handle.IsRoot();
	}
	
	public bool IsBundle()
	{
		return this.handle.IsBundle();
	}
	
	public libqt_string SymLinkTarget()
	{
		return this.handle.SymLinkTarget();
	}
	
	public libqt_string JunctionTarget()
	{
		return this.handle.JunctionTarget();
	}
	
	public libqt_string Owner()
	{
		return this.handle.Owner();
	}
	
	public uint32 OwnerId()
	{
		return this.handle.OwnerId();
	}
	
	public libqt_string Group()
	{
		return this.handle.Group();
	}
	
	public uint32 GroupId()
	{
		return this.handle.GroupId();
	}
	
	public bool Permission(int64 permissions)
	{
		return this.handle.Permission(permissions);
	}
	
	public int64 Permissions()
	{
		return this.handle.Permissions();
	}
	
	public int64 Size()
	{
		return this.handle.Size();
	}
	
	public void BirthTime()
	{
		this.handle.BirthTime();
	}
	
	public void MetadataChangeTime()
	{
		this.handle.MetadataChangeTime();
	}
	
	public void LastModified()
	{
		this.handle.LastModified();
	}
	
	public void LastRead()
	{
		this.handle.LastRead();
	}
	
	public void FileTime(int64 time)
	{
		this.handle.FileTime(time);
	}
	
	public bool Caching()
	{
		return this.handle.Caching();
	}
	
	public void SetCaching(bool on)
	{
		this.handle.SetCaching(on);
	}
	
	public void Stat()
	{
		this.handle.Stat();
	}
	
}
extension CQt
{
	[LinkName("QFileInfo_new")]
	public static extern void* QFileInfo_new();
	[LinkName("QFileInfo_new2")]
	public static extern void* QFileInfo_new2(libqt_string file);
	[LinkName("QFileInfo_new3")]
	public static extern void* QFileInfo_new3(void* file);
	[LinkName("QFileInfo_new4")]
	public static extern void* QFileInfo_new4(void* dir, libqt_string file);
	[LinkName("QFileInfo_new5")]
	public static extern void* QFileInfo_new5(void* fileinfo);
	[LinkName("QFileInfo_OperatorAssign")]
	public static extern void QFileInfo_OperatorAssign(void* c_this, void* fileinfo);
	[LinkName("QFileInfo_Swap")]
	public static extern void QFileInfo_Swap(void* c_this, void* other);
	[LinkName("QFileInfo_OperatorEqual")]
	public static extern bool QFileInfo_OperatorEqual(void* c_this, void* fileinfo);
	[LinkName("QFileInfo_OperatorNotEqual")]
	public static extern bool QFileInfo_OperatorNotEqual(void* c_this, void* fileinfo);
	[LinkName("QFileInfo_SetFile")]
	public static extern void QFileInfo_SetFile(void* c_this, libqt_string file);
	[LinkName("QFileInfo_SetFileWithFile")]
	public static extern void QFileInfo_SetFileWithFile(void* c_this, void* file);
	[LinkName("QFileInfo_SetFile2")]
	public static extern void QFileInfo_SetFile2(void* c_this, void* dir, libqt_string file);
	[LinkName("QFileInfo_Exists")]
	public static extern bool QFileInfo_Exists(void* c_this);
	[LinkName("QFileInfo_ExistsWithFile")]
	public static extern bool QFileInfo_ExistsWithFile(libqt_string file);
	[LinkName("QFileInfo_Refresh")]
	public static extern void QFileInfo_Refresh(void* c_this);
	[LinkName("QFileInfo_FilePath")]
	public static extern libqt_string QFileInfo_FilePath(void* c_this);
	[LinkName("QFileInfo_AbsoluteFilePath")]
	public static extern libqt_string QFileInfo_AbsoluteFilePath(void* c_this);
	[LinkName("QFileInfo_CanonicalFilePath")]
	public static extern libqt_string QFileInfo_CanonicalFilePath(void* c_this);
	[LinkName("QFileInfo_FileName")]
	public static extern libqt_string QFileInfo_FileName(void* c_this);
	[LinkName("QFileInfo_BaseName")]
	public static extern libqt_string QFileInfo_BaseName(void* c_this);
	[LinkName("QFileInfo_CompleteBaseName")]
	public static extern libqt_string QFileInfo_CompleteBaseName(void* c_this);
	[LinkName("QFileInfo_Suffix")]
	public static extern libqt_string QFileInfo_Suffix(void* c_this);
	[LinkName("QFileInfo_BundleName")]
	public static extern libqt_string QFileInfo_BundleName(void* c_this);
	[LinkName("QFileInfo_CompleteSuffix")]
	public static extern libqt_string QFileInfo_CompleteSuffix(void* c_this);
	[LinkName("QFileInfo_Path")]
	public static extern libqt_string QFileInfo_Path(void* c_this);
	[LinkName("QFileInfo_AbsolutePath")]
	public static extern libqt_string QFileInfo_AbsolutePath(void* c_this);
	[LinkName("QFileInfo_CanonicalPath")]
	public static extern libqt_string QFileInfo_CanonicalPath(void* c_this);
	[LinkName("QFileInfo_Dir")]
	public static extern void QFileInfo_Dir(void* c_this);
	[LinkName("QFileInfo_AbsoluteDir")]
	public static extern void QFileInfo_AbsoluteDir(void* c_this);
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
	public static extern libqt_string QFileInfo_SymLinkTarget(void* c_this);
	[LinkName("QFileInfo_JunctionTarget")]
	public static extern libqt_string QFileInfo_JunctionTarget(void* c_this);
	[LinkName("QFileInfo_Owner")]
	public static extern libqt_string QFileInfo_Owner(void* c_this);
	[LinkName("QFileInfo_OwnerId")]
	public static extern uint32 QFileInfo_OwnerId(void* c_this);
	[LinkName("QFileInfo_Group")]
	public static extern libqt_string QFileInfo_Group(void* c_this);
	[LinkName("QFileInfo_GroupId")]
	public static extern uint32 QFileInfo_GroupId(void* c_this);
	[LinkName("QFileInfo_Permission")]
	public static extern bool QFileInfo_Permission(void* c_this, int64 permissions);
	[LinkName("QFileInfo_Permissions")]
	public static extern int64 QFileInfo_Permissions(void* c_this);
	[LinkName("QFileInfo_Size")]
	public static extern int64 QFileInfo_Size(void* c_this);
	[LinkName("QFileInfo_BirthTime")]
	public static extern void QFileInfo_BirthTime(void* c_this);
	[LinkName("QFileInfo_MetadataChangeTime")]
	public static extern void QFileInfo_MetadataChangeTime(void* c_this);
	[LinkName("QFileInfo_LastModified")]
	public static extern void QFileInfo_LastModified(void* c_this);
	[LinkName("QFileInfo_LastRead")]
	public static extern void QFileInfo_LastRead(void* c_this);
	[LinkName("QFileInfo_FileTime")]
	public static extern void QFileInfo_FileTime(void* c_this, int64 time);
	[LinkName("QFileInfo_Caching")]
	public static extern bool QFileInfo_Caching(void* c_this);
	[LinkName("QFileInfo_SetCaching")]
	public static extern void QFileInfo_SetCaching(void* c_this, bool on);
	[LinkName("QFileInfo_Stat")]
	public static extern void QFileInfo_Stat(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QFileInfo_Delete")]
	public static extern void QFileInfo_Delete(void* self);
}